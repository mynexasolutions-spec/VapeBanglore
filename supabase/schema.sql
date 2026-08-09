-- Run this file in the Supabase SQL editor (or via `supabase db execute`) once,
-- against a fresh project. Idempotent-ish: re-running will error on existing
-- types/tables, which is fine for a one-time setup.

-- ============ ENUMS ============
create type product_category as enum ('vape');
create type product_status as enum ('active', 'draft');
create type product_tag as enum ('trending', 'bestseller', 'new-arrival');

-- ============ ADMIN ALLOWLIST ============
create table admin_users (
  id uuid primary key references auth.users(id) on delete cascade,
  email text not null,
  created_at timestamptz not null default now()
);

-- ============ PRODUCTS ============
create table products (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  name text not null,
  category product_category not null,
  description text,
  base_price numeric(10,2) not null check (base_price >= 0),
  sale_price numeric(10,2) check (sale_price >= 0 and sale_price <= base_price),
  tags product_tag[] not null default '{}',
  status product_status not null default 'draft',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index products_category_status_idx on products (category, status);
create index products_tags_idx on products using gin (tags);
create index products_slug_idx on products (slug);

-- ============ PRODUCT VARIANTS (flavor / scent+size) ============
create table product_variants (
  id uuid primary key default gen_random_uuid(),
  product_id uuid not null references products(id) on delete cascade,
  name text not null,
  price_override numeric(10,2) check (price_override >= 0),
  in_stock boolean not null default true,
  sort_order int not null default 0,
  created_at timestamptz not null default now()
);

create index product_variants_product_id_idx on product_variants (product_id);

-- ============ PRODUCT IMAGES ============
create table product_images (
  id uuid primary key default gen_random_uuid(),
  product_id uuid not null references products(id) on delete cascade,
  url text not null,
  public_id text not null,
  width int,
  height int,
  format text,
  sort_order int not null default 0,
  created_at timestamptz not null default now()
);

create index product_images_product_id_idx on product_images (product_id);

-- ============ updated_at trigger ============
create or replace function set_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

create trigger products_set_updated_at
before update on products
for each row execute function set_updated_at();

-- ============ ROW LEVEL SECURITY ============
alter table products enable row level security;
alter table product_variants enable row level security;
alter table product_images enable row level security;
alter table admin_users enable row level security;

-- Helper: is the current JWT's uid an admin?
create or replace function is_admin()
returns boolean as $$
  select exists (
    select 1 from admin_users where id = auth.uid()
  );
$$ language sql security definer stable;

-- Let application code call this via supabase.rpc("is_admin") to check the
-- current session without needing direct (RLS-blocked) access to admin_users.
grant execute on function is_admin() to anon, authenticated;

-- ---- products ----
create policy "public_read_active_products"
on products for select
to anon, authenticated
using (status = 'active');

create policy "admin_read_all_products"
on products for select
to authenticated
using (is_admin());

create policy "admin_insert_products"
on products for insert
to authenticated
with check (is_admin());

create policy "admin_update_products"
on products for update
to authenticated
using (is_admin())
with check (is_admin());

create policy "admin_delete_products"
on products for delete
to authenticated
using (is_admin());

-- ---- product_variants ----
create policy "public_read_variants"
on product_variants for select
to anon, authenticated
using (
  exists (select 1 from products p where p.id = product_id and p.status = 'active')
  or is_admin()
);

create policy "admin_write_variants"
on product_variants for all
to authenticated
using (is_admin())
with check (is_admin());

-- ---- product_images ----
create policy "public_read_images"
on product_images for select
to anon, authenticated
using (
  exists (select 1 from products p where p.id = product_id and p.status = 'active')
  or is_admin()
);

create policy "admin_write_images"
on product_images for all
to authenticated
using (is_admin())
with check (is_admin());

-- ---- admin_users: no client-facing policies at all ----
-- Only reachable via the Supabase Dashboard or the service_role key
-- (used once, to seed the admin account after creating it in Auth).

-- ============ ONE-TIME SEED (run manually after creating the admin auth user) ============
-- 1. Create the admin user in Authentication > Users (or supabase.auth.admin.createUser).
-- 2. Then run, substituting the real user id and email:
-- insert into admin_users (id, email) values ('<auth-user-uuid>', 'you@example.com');
