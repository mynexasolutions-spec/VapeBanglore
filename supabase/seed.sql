-- Seed data: the original demo catalog (33 products) followed by the
-- real catalog scraped from the shop's live storefront (90 products).
-- Run AFTER schema.sql, in the Supabase SQL editor. Re-running is safe: it upserts by slug.

-- ============ DEMO CATALOG (original placeholder products) ============

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('frost-blaze-6000', 'Frost Blaze 6000', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 1000, 850, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/1000.jpeg', 'local/vapes/1000.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('arctic-storm-x', 'Arctic Storm X', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 1450, null, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/1450.jpeg', 'local/vapes/1450.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nimbus-cloud-pro', 'Nimbus Cloud Pro', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 1500, null, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/1500.jpeg', 'local/vapes/1500.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('velocity-ice-7000', 'Velocity Ice 7000', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 1550, 1320, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/1550.jpeg', 'local/vapes/1550.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('thunder-vault', 'Thunder Vault', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 1600, null, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/1600.jpeg', 'local/vapes/1600.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('midnight-mirage', 'Midnight Mirage', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 1700, null, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/1700.jpeg', 'local/vapes/1700.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('solar-flare-8000', 'Solar Flare 8000', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 1750, 1490, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/1750.jpeg', 'local/vapes/1750.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('crimson-surge', 'Crimson Surge', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 1800, null, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/1800.jpeg', 'local/vapes/1800.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('glacier-peak', 'Glacier Peak', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 1801, null, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/1801.jpeg', 'local/vapes/1801.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('obsidian-rush', 'Obsidian Rush', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 2000, 1700, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/2000.jpeg', 'local/vapes/2000.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('electra-storm', 'Electra Storm', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 2250, null, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/2250.jpeg', 'local/vapes/2250.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('quantum-puff', 'Quantum Puff', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 2300, null, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/2300.jpeg', 'local/vapes/2300.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('neon-cascade', 'Neon Cascade', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 2400, 2040, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/2400.jpeg', 'local/vapes/2400.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('titan-vortex', 'Titan Vortex', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 2500, null, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/2500.jpeg', 'local/vapes/2500.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('aurora-blast', 'Aurora Blast', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 2501, null, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/2501.jpeg', 'local/vapes/2501.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('phantom-ice', 'Phantom Ice', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 2502, 2130, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/2502.jpeg', 'local/vapes/2502.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('volcano-ember', 'Volcano Ember', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 2600, null, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/2600.jpeg', 'local/vapes/2600.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('stormrider-9000', 'Stormrider 9000', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 2800, null, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/2800.jpeg', 'local/vapes/2800.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('lunar-frost', 'Lunar Frost', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 2900, 2470, ARRAY['trending', 'bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/2900.jpeg', 'local/vapes/2900.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('radiant-nova', 'Radiant Nova', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 3000, null, ARRAY['trending', 'bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3000.jpeg', 'local/vapes/3000.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('shadow-cyclone', 'Shadow Cyclone', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 3001, null, ARRAY['trending', 'bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3001.jpeg', 'local/vapes/3001.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('blizzard-edge', 'Blizzard Edge', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 3002, 2550, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3002.jpeg', 'local/vapes/3002.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('ember-rush', 'Ember Rush', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 3003, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3003.jpeg', 'local/vapes/3003.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('comet-chill', 'Comet Chill', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 3004, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3004.jpeg', 'local/vapes/3004.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('zenith-storm', 'Zenith Storm', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 3005, 2550, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3005.jpeg', 'local/vapes/3005.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('prism-fusion', 'Prism Fusion', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 3006, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3006.jpeg', 'local/vapes/3006.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('onyx-vapor-x', 'Onyx Vapor X', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 3007, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3007.jpeg', 'local/vapes/3007.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('cyclone-frost', 'Cyclone Frost', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 3008, 2560, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3008.jpeg', 'local/vapes/3008.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('meteor-blast', 'Meteor Blast', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 3009, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3009.jpeg', 'local/vapes/3009.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('twilight-surge', 'Twilight Surge', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 3010, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3010.jpeg', 'local/vapes/3010.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('inferno-ice', 'Inferno Ice', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', ARRAY['Rich, authentic flavour', 'Smooth mesh-coil draw', 'Consistent vapour from first puff to last']::text[], '[]'::jsonb, 3011, 2560, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/3011.jpeg', 'local/vapes/3011.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('galaxy-mist', 'Galaxy Mist', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', ARRAY['Long-lasting battery', 'Dense, satisfying clouds', 'Sleek, pocket-friendly design']::text[], '[]'::jsonb, 5000, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/5000.jpeg', 'local/vapes/5000.jpeg', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('infinity-9000', 'Infinity 9000', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', ARRAY['Bold flavour', 'Consistent airflow', 'Satisfying throat hit']::text[], '[]'::jsonb, 5001, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/vapes/5001.jpeg', 'local/vapes/5001.jpeg', 0 from p;

-- ============ REAL CATALOG (scraped) ============

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-coffee', 'Nasty Burst Nic salts - Coffee', 'vape', 'Experience the rich aroma of freshly brewed coffee with Nasty Burst Nic Salts – Coffee, a premium nicotine salt e-liquid crafted for vapers who enjoy bold, authentic coffee flavours. Every puff delivers the deep taste of roasted coffee beans, balanced with a silky-smooth nicotine hit and a refreshing icy finish for an enjoyable all-day vape. Made using high-quality nicotine salts, this e-liquid offers faster nicotine absorption and a smoother throat hit than traditional freebase nicotine.', ARRAY['Rich roasted coffee flavour with a smooth icy finish', 'Premium nicotine salt formulation for faster absorption', 'Smooth throat hit with satisfying nicotine delivery', 'Designed for pod kits and MTL vaping devices', 'Available in 30ml bottles', 'Nicotine strengths: 35mg (3.5%) and 50mg (5%)', 'Manufactured by Nasty, one of the most trusted names in premium e-liquids', 'Perfect for coffee lovers seeking a bold all-day vape']::text[], '[{"label":"Brand","value":"Nasty"},{"label":"Product","value":"Burst Nic Salts – Coffee"},{"label":"Flavour","value":"Roasted Coffee with Cooling Finish"},{"label":"Bottle Size","value":"30ml"},{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Nicotine Type","value":"Nicotine Salts"},{"label":"Device Compatibility","value":"Pod Systems & MTL Devices"},{"label":"Suitable For","value":"Adult Vapers"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-coffee.webp', 'local/products/nasty-burst-nic-salts-coffee', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-grape-ice', 'Nasty Burst Nic salts - Grape ice', 'vape', 'Experience the bold and refreshing taste of Nasty Burst Nic Salts – Grape Ice. This premium nicotine salt e-liquid combines the sweet, juicy flavour of ripe grapes with a powerful icy menthol finish for a smooth, refreshing vaping experience. Made with high-quality nicotine salts, Nasty Grape Ice Nic Salts deliver a smooth inhale, quick nicotine satisfaction, and a satisfying throat hit. Perfect for ex-smokers and MTL vapers, this fruity and icy vape juice is an excellent choice for anyone looking for premium nicotine salts.', ARRAY['Sweet and juicy grape flavour with a refreshing icy kick', 'Smooth nicotine salt formula for fast nicotine satisfaction', 'Ideal for MTL vapes and pod systems', 'Available in 30ml bottle', 'Nicotine strengths: 35mg (3.5%) and 50mg (5.0%)', 'Manufactured by Nasty for premium quality', 'Perfect for fruity and icy flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Grape + Ice"},{"label":"Device Compatibility","value":"Pod Systems & MTL Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-grape-ice.webp', 'local/products/nasty-burst-nic-salts-grape-ice', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-watermelon-apple', 'Nasty Burst Nic salts - Watermelon Apple', 'vape', 'Experience the bold and refreshing taste of Nasty Burst Nic Salts – Watermelon Apple. This premium nicotine salt e-liquid blends the sweet, juicy flavour of ripe watermelon with the crisp and tangy taste of fresh apple for a perfectly balanced fruity vape. Formulated with high-quality nicotine salts, Nasty Watermelon Apple Nic Salts provide a smooth inhale, satisfying throat hit, and fast nicotine satisfaction. Designed for MTL pod systems and low-wattage devices, this 30ml vape juice is an excellent choice for vapers looking for premium nic salts.', ARRAY['Sweet and juicy watermelon flavour', 'Crisp and tangy fresh apple taste', 'Smooth nicotine salt formula', 'Fast nicotine satisfaction', 'Ideal for MTL pod systems', 'Perfect for fruity vape lovers', 'Available in 30ml bottle', 'Nicotine strengths: 35mg (3.5%) and 50mg (5.0%)', 'Manufactured by Nasty for premium quality']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Watermelon + Apple"},{"label":"Device Compatibility","value":"MTL Pod Systems & Low-Wattage Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-watermelon-apple.webp', 'local/products/nasty-burst-nic-salts-watermelon-apple', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-cola-ice', 'Nasty Burst Nic salts - Cola ice', 'vape', 'Experience the classic taste of fizzy cola with a refreshing icy menthol twist in NASTY Burst Nic Salts – Cola Ice. This premium nicotine salt e-liquid delivers an authentic cola flavour combined with a cool menthol exhale for a smooth and refreshing vaping experience. Crafted with high-quality nicotine salts, Nasty Cola Ice Nic Salts offer a smooth throat hit, fast nicotine satisfaction, and long-lasting flavour with every puff. Designed for pod systems and low-wattage MTL devices, this 30ml vape juice is perfect for vapers looking for a bold, cool, and refreshing flavour.', ARRAY['Classic fizzy cola flavour with an icy menthol twist', 'Smooth nicotine salt formula', 'Refreshing and satisfying throat hit', 'Fast nicotine satisfaction', 'Ideal for pod systems and low-wattage devices', '30ml bottle for long-lasting flavour', 'Available in 35mg and 50mg nicotine strengths', 'Manufactured by NASTY Burst', 'Perfect for cola and icy flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-cola-ice.webp', 'local/products/nasty-burst-nic-salts-cola-ice', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-berry-bomb', 'Nasty Burst Nic Salts - Berry Bomb', 'vape', 'Experience an explosion of bold and delicious mixed berry flavours with NASTY Burst Nic Salts – Berry Bomb. This premium nicotine salt e-liquid combines sweet and tangy berry notes to deliver a rich, fruity, and satisfying vaping experience with every puff. Crafted with a smooth nicotine salt formula, Nasty Berry Bomb Nic Salts offer a satisfying throat hit and quick nicotine satisfaction. Designed for pod systems and low-wattage MTL devices, this 30ml vape juice is perfect for vapers who love bold, sweet, and tangy fruit flavours.', ARRAY['Bold mixed berry flavour explosion', 'Sweet and tangy fruit flavour profile', 'Smooth nicotine salt formula', 'Satisfying throat hit and quick nicotine satisfaction', 'Ideal for pod systems and low-wattage MTL devices', 'Available in a 30ml bottle', 'Nicotine strengths: 35mg (3.5%) and 50mg (5.0%)', 'Manufactured by NASTY Burst', 'Perfect for fruity flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Mixed Berries – Sweet & Tangy"},{"label":"Type","value":"Nicotine Salt"},{"label":"Device Compatibility","value":"Pod Systems & Low-Wattage MTL Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-berry-bomb.webp', 'local/products/nasty-burst-nic-salts-berry-bomb', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-pineapple-kiwi', 'Nasty Burst Nic salts - Pineapple Kiwi', 'vape', 'Enjoy a refreshing tropical flavour combination with NASTY Burst Nic Salts – Pineapple Kiwi. This premium nicotine salt e-liquid combines the sweet and juicy taste of ripe pineapple with the fresh, tangy flavour of kiwi for a perfectly balanced tropical vaping experience. Formulated with high-quality nicotine salts, Nasty Pineapple Kiwi Nic Salts deliver a smooth throat hit, fast nicotine satisfaction, and consistent flavour with every puff. Designed for pod systems and low-wattage MTL devices, this 30ml vape juice is ideal for vapers who love sweet, tangy, and refreshing fruit flavours.', ARRAY['Sweet and juicy pineapple flavour', 'Fresh and tangy kiwi taste', 'Tropical fruity flavour combination', 'Smooth nicotine salt formula', 'Satisfying throat hit and fast nicotine satisfaction', 'Ideal for pod systems and low-wattage MTL devices', 'Available in a 30ml bottle', 'Nicotine strengths: 35mg (3.5%) and 50mg (5.0%)', 'Manufactured by NASTY Burst', 'Perfect for tropical fruit flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Sweet Pineapple + Tangy Kiwi"},{"label":"Type","value":"Nicotine Salt"},{"label":"Device Compatibility","value":"Pod Systems & Low-Wattage MTL Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-pineapple-kiwi.webp', 'local/products/nasty-burst-nic-salts-pineapple-kiwi', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-pineapple-ice', 'Nasty Burst Nic Salts - Pineapple ice', 'vape', 'Enjoy the tropical sweetness of ripe pineapple with a refreshing icy menthol finish in NASTY Burst Nic Salts – Pineapple Ice. This premium nicotine salt e-liquid delivers a bold tropical flavour with a cool and refreshing exhale for a satisfying vaping experience. Made with a smooth nicotine salt formula, Nasty Pineapple Ice Nic Salts provide a satisfying throat hit and fast nicotine satisfaction. Designed for pod systems and low-wattage MTL devices, this 30ml vape juice is perfect for vapers who enjoy sweet tropical flavours with a cool icy twist.', ARRAY['Sweet and juicy ripe pineapple flavour', 'Refreshing icy menthol finish', 'Smooth nicotine salt formula', 'Cool and satisfying throat hit', 'Fast nicotine satisfaction', 'Ideal for pod systems and low-wattage MTL devices', 'Available in a 30ml bottle', 'Nicotine strengths: 35mg (3.5%) and 50mg (5.0%)', 'Manufactured by NASTY Burst', 'Perfect for tropical and icy flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Sweet Pineapple + Icy Menthol"},{"label":"Type","value":"Nicotine Salt"},{"label":"Device Compatibility","value":"Pod Systems & Low-Wattage MTL Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-pineapple-ice.webp', 'local/products/nasty-burst-nic-salts-pineapple-ice', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-blue-razz-ice', 'Nasty Burst Nic Salts - Blue Razz ice', 'vape', 'Experience the bold and tangy taste of blue raspberry with a refreshing icy menthol finish in NASTY Burst Nic Salts – Blue Razz Ice. This premium nicotine salt e-liquid combines sweet and tangy blue razz flavour with a cool icy exhale for a smooth and satisfying vaping experience. Formulated with a high-quality nicotine salt blend, Nasty Blue Razz Ice Nic Salts deliver a smooth throat hit and fast nicotine satisfaction with every puff. Designed for pod systems and low-wattage MTL devices, this 30ml vape juice is perfect for vapers who enjoy fruity and icy flavour combinations.', ARRAY['Sweet and tangy blue raspberry flavour', 'Refreshing icy menthol exhale', 'Smooth nicotine salt formula', 'Cool and satisfying throat hit', 'Fast nicotine satisfaction', 'Ideal for pod systems and low-wattage MTL devices', 'Available in a 30ml bottle', 'Nicotine strengths: 35mg (3.5%) and 50mg (5.0%)', 'Manufactured by NASTY Burst', 'Perfect for fruity and icy flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Blue Raspberry + Icy Menthol"},{"label":"Type","value":"Nicotine Salt"},{"label":"Device Compatibility","value":"Pod Systems & Low-Wattage MTL Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-blue-razz-ice.webp', 'local/products/nasty-burst-nic-salts-blue-razz-ice', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-passion-fruit', 'Nasty Burst Nic Salts - Passion Fruit', 'vape', 'Experience the bold and tangy taste of blue raspberry with a refreshing icy menthol finish in NASTY Burst Nic Salts – Blue Razz Ice. This premium nicotine salt e-liquid combines sweet and tangy blue razz flavour with a cool icy exhale for a smooth and satisfying vaping experience. Formulated with a high-quality nicotine salt blend, Nasty Blue Razz Ice Nic Salts deliver a smooth throat hit and fast nicotine satisfaction with every puff. Designed for pod systems and low-wattage MTL devices, this 30ml vape juice is perfect for vapers who enjoy fruity and icy flavour combinations.', ARRAY['Sweet and tangy blue raspberry flavour', 'Refreshing icy menthol exhale', 'Smooth nicotine salt formula', 'Cool and satisfying throat hit', 'Fast nicotine satisfaction', 'Ideal for pod systems and low-wattage MTL devices', 'Available in a 30ml bottle', 'Nicotine strengths: 35mg (3.5%) and 50mg (5.0%)', 'Manufactured by NASTY Burst', 'Perfect for fruity and icy flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Blue Raspberry + Icy Menthol"},{"label":"Type","value":"Nicotine Salt"},{"label":"Device Compatibility","value":"Pod Systems & Low-Wattage MTL Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-passion-fruit.webp', 'local/products/nasty-burst-nic-salts-passion-fruit', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-strawberry-milkshake', 'Nasty Burst Nic salts - Strawberry Milkshake', 'vape', 'Enjoy the rich and creamy taste of a classic strawberry milkshake with NASTY Burst Nic Salts – Strawberry Milkshake. This premium nicotine salt e-liquid blends sweet, juicy strawberries with a smooth and creamy milkshake flavour for a delicious and indulgent vaping experience. Formulated with a high-quality nicotine salt blend, Nasty Strawberry Milkshake Nic Salts deliver a smooth throat hit and satisfying nicotine satisfaction with every puff. Designed for pod systems and low-wattage MTL devices, this 30ml vape juice is perfect for vapers who enjoy sweet, creamy, and dessert-inspired flavours.', ARRAY['Sweet and juicy strawberry flavour', 'Rich and creamy milkshake taste', 'Smooth dessert-inspired flavour profile', 'High-quality nicotine salt formula', 'Smooth and satisfying throat hit', 'Fast nicotine satisfaction', 'Ideal for pod systems and low-wattage MTL devices', 'Available in a 30ml bottle', 'Nicotine strengths: 35mg (3.5%) and 50mg (5.0%)', 'Manufactured by NASTY Burst', 'Perfect for sweet and creamy flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Sweet Strawberry + Creamy Milkshake"},{"label":"Type","value":"Nicotine Salt"},{"label":"Device Compatibility","value":"Pod Systems & Low-Wattage MTL Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-strawberry-milkshake.webp', 'local/products/nasty-burst-nic-salts-strawberry-milkshake', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-green-mango', 'Nasty Burst Nic salts - Green Mango', 'vape', 'Experience the bold and tangy taste of authentic raw mango with NASTY Burst Nic Salts – Green Mango. This premium nicotine salt e-liquid captures the sharp, sour, and juicy flavour of fresh green mango for a powerful tropical vaping experience with every puff. Nasty Green Mango Nic Salts are crafted with a smooth nicotine salt formula to deliver fast nicotine satisfaction, consistent flavour, and a clean throat hit. Designed for pod systems and low-wattage MTL vape devices, this 30ml vape juice is perfect for vapers who love bold, tangy, and refreshing fruit flavours.', ARRAY['Authentic tangy green mango flavour', 'Sharp, sour, and sweet tropical taste', 'Juicy mango finish with bold flavour', 'Smooth nicotine salt formula', 'Fast nicotine satisfaction', 'Clean and satisfying throat hit', 'Ideal for pod systems and low-wattage MTL devices', 'Available in a 30ml bottle', 'Nicotine strengths: 35mg (3.5%) and 50mg (5.0%)', 'Manufactured by Nasty Burst by Nasty Juice', 'Perfect for tropical and raw mango flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Tangy Green Mango + Sweet Juicy Finish"},{"label":"Type","value":"Nicotine Salt"},{"label":"Device Compatibility","value":"Pod Systems & Low-Wattage MTL Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-green-mango.webp', 'local/products/nasty-burst-nic-salts-green-mango', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-burst-nic-salts-strawberry-ice', 'Nasty Burst Nic salts - Strawberry ice', 'vape', 'Enjoy the perfect combination of sweet ripe strawberries and a refreshing icy menthol finish with NASTY Burst Nic Salts – Strawberry Ice. This premium nicotine salt e-liquid delivers a delicious fruity flavour with a cool and refreshing exhale in every puff. Formulated for a smooth and satisfying nicotine experience, Nasty Strawberry Ice Nic Salts offer fast nicotine satisfaction, strong flavour, and a clean chilled finish. Designed for pod systems and low-wattage MTL vape devices, this 30ml vape juice is ideal for vapers who love the perfect balance of sweet strawberry and cool menthol.', ARRAY['Sweet and juicy ripe strawberry flavour', 'Refreshing icy menthol twist', 'Perfect balance of sweet and cold', 'Smooth nicotine salt formula', 'Fast nicotine satisfaction', 'Clean and satisfying throat hit', 'Ideal for pod systems and low-wattage MTL devices', 'Available in a 30ml bottle', 'Nicotine strengths: 35mg (3.5%) and 50mg (5.0%)', 'Manufactured by NASTY Burst', 'Perfect for strawberry and icy flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Sweet Strawberry + Icy Menthol"},{"label":"Type","value":"Nicotine Salt"},{"label":"Device Compatibility","value":"Pod Devices & Low-Wattage MTL Vape Kits"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-burst-nic-salts-strawberry-ice.webp', 'local/products/nasty-burst-nic-salts-strawberry-ice', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-nic-salt-vanilla-tobacco', 'Nasty Nic Salt - Vanilla Tobacco', 'vape', 'Experience the rich and aromatic blend of bold tobacco and smooth vanilla with Nasty Nic Salt – Vanilla Tobacco. This premium nicotine salt e-liquid combines the deep, robust taste of tobacco with a sweet and creamy vanilla finish for a warm and satisfying flavour experience. Crafted for a smooth vaping experience, Nasty Vanilla Tobacco Nic Salt delivers a clean throat hit and fast nicotine satisfaction. With its balanced 50/50 VG/PG blend, this 30ml nicotine salt is designed for pod systems and low-wattage vape devices.', ARRAY['Rich and bold tobacco flavour', 'Smooth, sweet, and creamy vanilla finish', 'Premium nicotine salt formula', 'Smooth nicotine delivery with fast satisfaction', 'Ideal for pod systems and low-wattage devices', '30ml Chubby Gorilla bottle', '50/50 VG/PG blend', 'Available in 35mg (3.5%) and 50mg (5.0%) nicotine strengths', 'Manufactured by Nasty', 'Perfect for tobacco and dessert flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Rich Tobacco + Creamy Vanilla"},{"label":"Type","value":"Nicotine Salt"},{"label":"VG/PG","value":"50/50"},{"label":"Device Compatibility","value":"Pod Systems & Low-Wattage Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-nic-salt-vanilla-tobacco.webp', 'local/products/nasty-nic-salt-vanilla-tobacco', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-liq-watermelon-strawberry-nic-salt', 'Nasty Liq Watermelon Strawberry Nic Salt', 'vape', 'Enjoy the refreshing taste of summer with Nasty Liq Watermelon Strawberry Nic Salts. This delicious fruit blend combines the juicy sweetness of ripe watermelon with the rich and succulent flavour of sun-ripened strawberries for a smooth and refreshing vaping experience. Designed for Mouth-to-Lung (MTL) vaping, Nasty Liq Watermelon Strawberry Nic Salt delivers a balanced flavour with every inhale and exhale. The 50/50 VG/PG blend is ideal for pod kits and low-wattage MTL devices, providing excellent flavour and a smooth vaping experience.', ARRAY['Juicy watermelon and sweet strawberry flavour', 'Refreshing summer fruit blend', 'Smooth nicotine salt formula', 'Available in 35mg (3.5%) and 50mg (5.0%) strengths', '30ml bottle size', '50/50 VG/PG ratio for balanced flavour', 'Designed for Mouth-to-Lung (MTL) vaping', 'Ideal for pod kits and low-wattage MTL devices', 'TPD compliant', 'Perfect for fruity flavour lovers']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Watermelon + Strawberry"},{"label":"VG/PG Ratio","value":"50/50"},{"label":"Vaping Style","value":"MTL"},{"label":"Device Compatibility","value":"Pod Kits & Low-Wattage Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-liq-watermelon-strawberry-nic-salt.webp', 'local/products/nasty-liq-watermelon-strawberry-nic-salt', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-liq-spearmint-nic-salt', 'Nasty Liq Spearmint Nic Salt', 'vape', 'Experience a powerful burst of cool and refreshing mint with Nasty Liq Spearmint Nic Salts. Crafted for vapers who love crisp and invigorating flavours, this premium spearmint nicotine salt delivers a smooth, fresh, and satisfying vaping experience with every puff. Nasty Liq Spearmint Nic Salt features a bold spearmint flavour that leaves a cool and refreshing sensation on the exhale. The balanced 50/50 VG/PG formula provides consistent flavour and vapour production, making it an ideal choice for Mouth-to-Lung (MTL) vaping.', ARRAY['Bold and refreshing spearmint flavour', 'Crisp, cool, and invigorating minty taste', 'Smooth nicotine salt vaping experience', 'Available in 35mg (3.5%) and 50mg (5.0%) strengths', 'Convenient 30ml bottle', 'Balanced 50/50 VG/PG ratio', 'Designed for Mouth-to-Lung (MTL) vaping', 'Ideal for pod kits and low-wattage devices', 'TPD compliant', 'Perfect for refreshing all-day flavour']::text[], '[{"label":"Nicotine Strength","value":"3.5% (35mg), 5.0% (50mg)"},{"label":"Bottle Size","value":"30ml"},{"label":"Flavour Profile","value":"Refreshing Spearmint"},{"label":"VG/PG Ratio","value":"50/50"},{"label":"Vaping Style","value":"MTL"},{"label":"Device Compatibility","value":"Pod Kits & Low-Wattage Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-liq-spearmint-nic-salt.webp', 'local/products/nasty-liq-spearmint-nic-salt', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('vaporesso-luxe-x-replacement-pods', 'VAPORESSO LUXE X REPLACEMENT PODS', 'vape', 'Looking for genuine Vaporesso LUXE X Replacement Pods? Get authentic Vaporesso LUXE X Replacement Pods. Designed for smooth airflow, excellent flavour, and reliable everyday performance, these original replacement pods are perfect for Vaporesso LUXE X users. Featuring advanced COREX heating technology, Vaporesso LUXE X pods offer faster heating, improved flavour accuracy, and enhanced pod performance. With a convenient 5ml refillable e-liquid capacity and a leak-resistant bottom-fill design, these replacement pods are easy to refill and ideal for regular vaping.', ARRAY['Genuine Vaporesso LUXE X replacement pods', 'COREX heating technology for enhanced flavour', 'Integrated mesh coil design', '5ml refillable pod capacity', 'Leak-resistant bottom-fill system', 'Suitable for MTL, RDL, and DTL vaping', 'Compatible with nicotine salts and freebase e-liquids', 'Built-in non-replaceable coil', 'Ideal for Vaporesso pod system users']::text[], '[{"label":"Pod Type","value":"Refillable Mesh Pod"},{"label":"Capacity","value":"5ml"},{"label":"Technology","value":"COREX 2.0"},{"label":"Available Resistances","value":"0.4Ω, 0.6Ω & 0.8Ω"},{"label":"Coil Type","value":"Integrated Mesh Coil"},{"label":"Pack Size","value":"2 Replacement Pods"},{"label":"Packaging","value":"Factory-Sealed Original Packaging"}]'::jsonb, 1249, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/vaporesso-luxe-x-replacement-pods.webp', 'local/products/vaporesso-luxe-x-replacement-pods', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('vaporesso-gtx-replacement-coil-series-5-pack', 'Vaporesso GTX Replacement Coil Series (5-Pack)', 'vape', 'Looking for genuine Vaporesso GTX Replacement Coils? Upgrade your vaping experience with the Vaporesso GTX Replacement Coil Series, available. These original replacement coils are designed to deliver enhanced flavour, smooth vapour production, and reliable performance across a wide range of Vaporesso devices. Featuring advanced mesh heating technology, Vaporesso GTX coils provide faster heating and consistent flavour with every puff. With multiple resistance options available, you can easily choose the perfect coil for your preferred vaping style, from smooth MTL and restricted direct lung vaping to richer vapour production.', ARRAY['Original Vaporesso GTX replacement coils', 'Enhanced flavour and vapour production', 'Mesh and regular coil options available', 'Wide range of resistance options', 'Ideal for different vaping styles', 'Compatible with selected Vaporesso devices', 'Available in a convenient 5-pack', 'Perfect for vape users searching for Vaporesso coils']::text[], '[{"label":"Pack Size","value":"5 Replacement Coils"},{"label":"Available Resistance","value":"GTX 0.2Ω, 0.3Ω, 0.4Ω, 0.6Ω, 0.8Ω & 1.2Ω Mesh Coils"},{"label":"Coil Type","value":"Mesh & Regular Options"},{"label":"Brand","value":"Vaporesso"},{"label":"Product Type","value":"Replacement Vape Coils"}]'::jsonb, 1740, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/vaporesso-gtx-replacement-coil-series-5-pack.webp', 'local/products/vaporesso-gtx-replacement-coil-series-5-pack', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('uwell-caliburn-gpp-replacement-pod-0-6ω', 'Uwell Caliburn GPP Replacement Pod (0.6Ω)', 'vape', 'Looking for a genuine Uwell Caliburn GPP Replacement Pod? The Uwell Caliburn GPP Replacement Pod (0.6Ω) is designed to deliver smooth airflow, rich flavour, and consistent vapour production for a satisfying everyday vaping experience., this refillable pod is a reliable replacement for compatible Uwell Caliburn devices. Featuring a built-in 0.6Ω coil, this pod provides a smooth and balanced vaping experience with excellent flavour performance. It is suitable for both nicotine salts and freebase e-liquids, making it a versatile choice for different vaping preferences.', ARRAY['Built-in 0.6Ω coil for smooth vaping', 'Rich flavour and consistent vapour output', 'Refillable pod cartridge', 'Leak-resistant and durable design', 'Suitable for nicotine salts and freebase e-liquids', 'Ideal for everyday vaping', 'Genuine Uwell replacement pod', 'Perfect for Caliburn pod users']::text[], '[{"label":"Resistance","value":"0.6Ω"},{"label":"Pod Type","value":"Refillable Replacement Pod"},{"label":"Coil Type","value":"Built-in Coil"},{"label":"Compatibility","value":"Uwell Caliburn G3, GK3 & G4 Series Devices"},{"label":"E-Liquid Compatibility","value":"Nicotine Salts & Freebase E-Liquids"}]'::jsonb, 1950, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/uwell-caliburn-gpp-replacement-pod-0-6ω.webp', 'local/products/uwell-caliburn-gpp-replacement-pod-0-6ω', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('uwell-caliburn-gpp-replacement-pod-1-2ω-1', 'Uwell Caliburn GPP Replacement Pod (1.2Ω)', 'vape', 'The Uwell Caliburn GPP Replacement Pod (1.2Ω) delivers a classic mouth-to-lung vape with smooth airflow and pure flavour. Made for Caliburn GPP devices, this refillable pod includes a built-in 1.2Ω coil that works perfectly with nic salts and high-PG e-liquids. Its secure, leak-resistant design ensures dependable performance all day. Caliburn GPP pods are compatible with all Uwell Caliburn G3 series, GK3 series, and G4 series devices (including Lite, Pro, KOKO, ECO, Mini, and Tenet models', ARRAY['Integrated 1.2Ω coil for MTL vaping', 'Tight draw with smooth throat hit', 'Compatible with Uwell Caliburn GPP devices', 'Refillable pod cartridge', 'Leak-resistant and durable construction', 'Optimised for nic salts & high-PG liquids']::text[], '[]'::jsonb, 1950, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/uwell-caliburn-gpp-replacement-pod-1-2ω-1.webp', 'local/products/uwell-caliburn-gpp-replacement-pod-1-2ω-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('uwell-caliburn-a2s-pod-system-1', 'Uwell Caliburn A2S Pod System', 'vape', 'Looking for a compact and reliable pod system? The Uwell Caliburn A2S Pod System is a lightweight and powerful vaping device. Designed for portability and everyday convenience, the Caliburn A2S combines a built-in 520mAh battery, smooth draw-activated firing, and excellent flavour performance in a compact design. Built with a durable aluminium-alloy chassis, the Uwell Caliburn A2S is lightweight and easy to carry in your pocket or bag. Its 2ml side-fill pod features an integrated 1.2Ω meshed coil, delivering smooth flavour and satisfying vapour production with your favourite e-liquid or nicotine salts.', ARRAY['Compact and lightweight pod system', 'Integrated 520mAh battery', 'Maximum 15W output', 'Smooth draw-activated firing mechanism', 'Durable aluminium-alloy chassis', '2ml refillable pod capacity', 'Side-fill system with silicone stopper', 'Integrated 1.2Ω meshed coil', 'Magnetic pod connection', 'Compatible with 0.9Ω A2 Pods', 'Juice viewing window', 'Convenient Type-C charging port', 'Ideal for everyday vaping']::text[], '[{"label":"Dimensions","value":"110.1mm × 21.3mm × 11.7mm"},{"label":"Battery","value":"Integrated 520mAh"},{"label":"Maximum Output","value":"15W"},{"label":"Pod Capacity","value":"2ml"},{"label":"Coil","value":"Integrated 1.2Ω A2S Mesh Coil"},{"label":"Firing Mechanism","value":"Draw Activated"},{"label":"Charging","value":"Type-C"},{"label":"Pod Connection","value":"Magnetic"},{"label":"Compatible Pods","value":"0.9Ω A2 Pods"}]'::jsonb, 3199, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/uwell-caliburn-a2s-pod-system-1.webp', 'local/products/uwell-caliburn-a2s-pod-system-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('uwell-caliburn-g2-gk2-replacement-coils-1', 'Uwell Caliburn G2/GK2 Replacement Coils', 'vape', 'Looking for genuine Uwell Caliburn G2 or GK2 Replacement Coils? The Uwell Caliburn Replacement Coils are designed to deliver clean flavour, smooth throat hits, and reliable everyday performance., these easy-to-install plug-and-play coils are perfect for vapers who want consistent flavour and vapour production. Available in 0.8Ω, 1.0Ω, and 1.2Ω resistance options, these Uwell Caliburn coils let you customise your vaping experience. Whether you prefer a tight cigarette-style MTL draw or a slightly more open vape, there is a coil option to suit your preferred vaping style.', ARRAY['Authentic Uwell Caliburn replacement coils', 'Available in 0.8Ω, 1.0Ω, and 1.2Ω options', 'Easy push-fit installation', 'No threading required', 'Excellent flavour accuracy', 'Smooth and consistent vapour production', 'Suitable for nicotine salts and freebase e-liquids', 'Reliable and stable performance', 'Ideal for everyday MTL vaping']::text[], '[{"label":"Available Resistance","value":"0.8Ω, 1.0Ω & 1.2Ω"},{"label":"Coil Type","value":"Push-Fit Replacement Coil"},{"label":"Compatible With","value":"Uwell Caliburn G Series & Selected Caliburn Devices"},{"label":"Best For","value":"MTL & Restricted Vaping"}]'::jsonb, 1799, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/uwell-caliburn-g2-gk2-replacement-coils-1.webp', 'local/products/uwell-caliburn-g2-gk2-replacement-coils-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('uwell-caliburn-g-replacement-coils-1', 'Uwell Caliburn G Replacement Coils', 'vape', 'Looking for genuine Uwell Caliburn G Replacement Coils? Upgrade your vaping experience with Uwell Caliburn G Coils, designed to deliver rich flavour, smooth airflow, and reliable long-lasting performance., these replacement coils are perfect for vapers who want consistent flavour and a satisfying draw. Available in 0.8Ω Mesh and 1.0Ω resistance options, Uwell Caliburn G Coils allow you to choose your preferred vaping style. The 0.8Ω Mesh Coil is ideal for a warmer and more flavourful RDL experience, while the 1.0Ω Coil provides a smooth and tight MTL draw.', ARRAY['Genuine Uwell Caliburn G replacement coils', 'Available in 0.8Ω Mesh and 1.0Ω options', 'Rich flavour and smooth airflow', 'Excellent coil performance and reliability', 'Ideal for MTL and RDL vaping styles', 'Compatible with 50/50 e-liquids and nicotine salts', 'Easy replacement coil design', 'Perfect for everyday vaping']::text[], '[{"label":"Available Resistance","value":"0.8Ω Mesh & 1.0Ω"},{"label":"Coil Type","value":"Mesh & MTL Coil"},{"label":"Compatible Devices","value":"Caliburn G, G2 & KOKO Prime"},{"label":"Best For","value":"MTL & RDL Vaping"}]'::jsonb, 1799, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/uwell-caliburn-g-replacement-coils-1.webp', 'local/products/uwell-caliburn-g-replacement-coils-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('juul2-mango-pods-2-pods', 'JUUL2 Mango Pods (2 Pods)', 'vape', 'Experience the bold and tropical sweetness of JUUL2 Mango Pods. Designed for vapers who enjoy rich and fruity flavours, JUUL2 Mango delivers a smooth mango inhale with a satisfying nicotine experience in every puff. Optimised exclusively for the JUUL2 Device, these premium mango pods feature advanced pod technology for consistent flavour and reliable performance. The sweet tropical mango flavour creates a refreshing and enjoyable vaping experience, making it a great choice for mango flavour lovers. Each pod contains 1.2ml of e-liquid with 18mg nicotine salts, providing a smooth inhale and satisfying flavour.', ARRAY['Sweet and tropical mango flavour', 'Smooth mango inhale with rich flavour', '18mg nicotine salt strength', '1.2ml e-liquid per pod', 'Pack includes 2 pods', 'Designed exclusively for JUUL2 Device', 'Consistent flavour and reliable performance', 'Leak-resistant pod design', 'Perfect for fruity flavour lovers']::text[], '[{"label":"Flavour","value":"Sweet Tropical Mango"},{"label":"Nicotine Strength","value":"18mg Nicotine Salts"},{"label":"Pod Capacity","value":"1.2ml per Pod"},{"label":"Pack Size","value":"2 Pods"},{"label":"Compatibility","value":"JUUL2 Device Only"},{"label":"Flavour Profile","value":"Rich, Sweet & Fruity Mango"}]'::jsonb, 1899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/juul2-mango-pods-2-pods.webp', 'local/products/juul2-mango-pods-2-pods', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('juul2-watermelon-pods-2-pods-1-899-00', 'JUUL2 Watermelon Pods (2 Pods)', 'vape', 'Enjoy the cool and refreshing taste of juicy watermelon with JUUL2 Watermelon Pods (2 Pods). These premium watermelon pods deliver a sweet, fruity, and refreshing flavour with a smooth inhale and satisfying nicotine experience. Designed exclusively for the JUUL2 Device, JUUL2 Watermelon Pods provide consistent vapour production, enhanced flavour performance, and reliable everyday use. The bold watermelon taste offers a refreshing vaping experience for vapers who enjoy sweet and fruity flavours. Each pod contains 1.2ml e-liquid and features 18mg nicotine salts, delivering a smooth and satisfying vape.', ARRAY['Sweet and juicy watermelon flavour', 'Cool and refreshing fruity taste', '18mg nicotine salt strength', '1.2ml capacity per pod', 'Pack includes 2 pods', 'Compatible exclusively with JUUL2 Device', 'Smooth inhale with enhanced vapour production', 'Leak-resistant pod design', 'Long-lasting and consistent performance', 'Perfect for fruity flavour lovers']::text[], '[{"label":"Price","value":"₹1,899.00"},{"label":"Flavour","value":"Sweet & Juicy Watermelon"},{"label":"Nicotine Strength","value":"18mg Nicotine Salts"},{"label":"Pod Capacity","value":"1.2ml per Pod"},{"label":"Pack Size","value":"2 Pods"},{"label":"Compatibility","value":"JUUL2 Device Only"},{"label":"Flavour Profile","value":"Sweet, Juicy & Refreshing Watermelon"}]'::jsonb, 1899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/juul2-watermelon-pods-2-pods-1-899-00.webp', 'local/products/juul2-watermelon-pods-2-pods-1-899-00', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('juul2-starter-kit-with-2-pods', 'JUUL2 Starter Kit with 2 Pods', 'vape', 'Discover the next-generation JUUL2 Starter Kit with 2 Pods. Designed for adult smokers looking for a simple and convenient alternative to cigarettes, JUUL2 delivers a smooth, cigarette-like vaping experience in a compact and easy-to-use device. The JUUL2 Starter Kit includes a JUUL2 device, USB charging dock, and two authentic JUUL2 pods featuring Virginia Tobacco and Crisp Menthol flavours. Each pod contains 18mg/ml nicotine salts, providing a smooth and satisfying vaping experience for adult users. With its built-in 250mAh battery and smart indicator lights, the JUUL2 device makes everyday vaping simple and convenient.', ARRAY['1 × JUUL2 Device', '1 × USB Charging Dock', '1 × JUUL2 Virginia Tobacco Pod', '1 × JUUL2 Crisp Menthol Pod']::text[], '[{"label":"Pod Nicotine Strength","value":"18mg/ml Nicotine Salts"},{"label":"Battery","value":"Built-in 250mAh"},{"label":"Pod Compatibility","value":"JUUL2 Pods Only"},{"label":"App Compatibility","value":"JUUL App for Android™"},{"label":"Flavours Included","value":"Virginia Tobacco & Crisp Menthol"}]'::jsonb, 4499, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/juul2-starter-kit-with-2-pods.webp', 'local/products/juul2-starter-kit-with-2-pods', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('uwell-caliburn-gpp-replacement-pod-1-2ω', 'Uwell Caliburn GPP Replacement Pod (1.2Ω)', 'vape', 'The Uwell Caliburn GPP Replacement Pod (1.2Ω) delivers a classic mouth-to-lung vape with smooth airflow and pure flavour. Made for Caliburn GPP devices, this refillable pod includes a built-in 1.2Ω coil that works perfectly with nic salts and high-PG e-liquids. Its secure, leak-resistant design ensures dependable performance all day. Caliburn GPP pods are compatible with all Uwell Caliburn G3 series, GK3 series, and G4 series devices (including Lite, Pro, KOKO, ECO, Mini, and Tenet models).', ARRAY['Integrated 1.2Ω coil for MTL vaping', 'Tight draw with smooth throat hit', 'Compatible with Uwell Caliburn GPP devices', 'Refillable pod cartridge', 'Leak-resistant and durable construction', 'Optimised for nic salts & high-PG liquids']::text[], '[]'::jsonb, 1950, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/uwell-caliburn-gpp-replacement-pod-1-2ω.webp', 'local/products/uwell-caliburn-gpp-replacement-pod-1-2ω', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('uwell-caliburn-a2s-pod-system', 'Uwell Caliburn A2S Pod System', 'vape', 'Check out the Uwell Caliburn A2S Pod System, featuring an integrated 520mAh battery, 2mL side-filled pod capacity, and integrated 1.2ohm meshed coil. Cross-compatible with the original Caliburn A2 Pods. Constructed from durable aluminum-alloy, the chassis of the Caliburn A2S Pod System delivers a highly portable form-factor that can easily be Shopd within the pocket, purse, or bookbag. Equipped with a 2mL pod, the A2S refills via a silicone stoppered side fill system. Within the clear pod is an integrated 1.2ohm coil that delivers amazing flavor and vapor that will excite the taste buds, all from your favorite eJuice or nicotine salts.', ARRAY['Dimensions – 110.1mm by 21.3mm by 11.7mm', 'Integrated 520mAh Battery', 'Max Wattage Output: 15W', 'Aluminum-Alloy Chassis Construction', 'Draw-Activated Firing Mechanism', 'Juice Viewing Window', '2mL Pod Capacity', 'Side Fill System – Silicone Stoppered', 'Integrated 1.2ohm A2S Coils', 'Magnetic Pod Connection', 'Compatible with 0.9ohm A2 Pods', 'Type-C Port']::text[], '[{"label":"Color","value":"Black, Grey, Iris Purple, Gradient"}]'::jsonb, 3199, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/uwell-caliburn-a2s-pod-system.webp', 'local/products/uwell-caliburn-a2s-pod-system', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('uwell-caliburn-g2-gk2-replacement-coils', 'Uwell Caliburn G2/GK2 Replacement Coils', 'vape', 'Product Description Uwell Caliburn Replacement Coils are designed for vapers who want clean flavour, smooth throat hit, and reliable performance from their Caliburn device. These plug-and-play coils are easy to install and deliver consistent vapour whether you prefer a tight cigarette-style draw or a slightly airier restricted vape. Available in 0.8Ω, 1.0Ω, and 1.2Ω, these coils allow you to customise your vaping style while maintaining excellent flavour quality and longer coil life.', ARRAY['Authentic Uwell Caliburn replacement coils', 'Easy push-fit installation (no threading required)', 'Optimised for flavour accuracy and coil longevity', 'Suitable for nicotine salts & freebase e-liquids', 'Leak-resistant and stable performance', 'Ideal for everyday MTL vapers']::text[], '[{"label":"OHM","value":"0.8 ohm,1.0 ohm,1.2 ohm"}]'::jsonb, 1799, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/uwell-caliburn-g2-gk2-replacement-coils.webp', 'local/products/uwell-caliburn-g2-gk2-replacement-coils', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('uwell-caliburn-g-replacement-coils', 'Uwell Caliburn G Replacement Coils', 'vape', 'Uwell Caliburn G Replacement Coils deliver rich flavour, smooth airflow, and long-lasting performance. Available in 0.8Ω Mesh for warm RDL vaping and 1.0Ω for a tight, smooth MTL draw. Compatible with Caliburn G, G2, and Koko Prime devices. Perfect for 50/50 e-liquids and nic salts. 0.8 ohm,1.0 ohm', '{}'::text[], '[{"label":"OHM","value":"0.8 ohm,1.0 ohm"}]'::jsonb, 1799, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/uwell-caliburn-g-replacement-coils.webp', 'local/products/uwell-caliburn-g-replacement-coils', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('pod-salt-cuban-creme-nicotine-salt-1', 'POD SALT CUBAN CREME - Nicotine Salt', 'vape', 'Experience the rich and luxurious taste of POD SALT Cuban Crème Nicotine Salt. This premium nicotine salt e-liquid combines the deep, bold flavour of Cuban tobacco with smooth vanilla cream, creating a perfectly balanced tobacco and dessert-inspired vaping experience. Designed for vapers who enjoy full-bodied tobacco flavours with a creamy finish, POD SALT Cuban Crème delivers a smooth inhale, satisfying throat hit, and fast nicotine absorption. Its premium nicotine salt formula makes it ideal for pod systems, MTL devices, and low-wattage vape kits.', ARRAY['Rich Cuban tobacco and smooth vanilla cream flavour', 'Premium nicotine salt e-liquid', 'Smooth and satisfying vaping experience', 'Fast nicotine absorption', 'Full-bodied tobacco flavour with a creamy finish', 'Ideal for pod systems and MTL vape kits', 'Suitable for low-wattage devices', 'Premium British-made e-liquid', 'Perfect for tobacco and dessert flavour lovers']::text[], '[{"label":"Flavour Profile","value":"Cuban Tobacco + Vanilla Cream"},{"label":"Bottle Size","value":"30ml"},{"label":"Product Type","value":"Nicotine Salt E-Liquid"},{"label":"Best For","value":"Pod Systems, MTL Devices & Low-Wattage Vape Kits"},{"label":"Origin","value":"British-Made E-Liquid"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/pod-salt-cuban-creme-nicotine-salt-1.webp', 'local/products/pod-salt-cuban-creme-nicotine-salt-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('pod-salt-cuban-creme-nicotine-salt', 'POD SALT CUBAN CREME - Nicotine Salt', 'vape', 'Indulge in the luxurious blend of rich Cuban tobacco and smooth vanilla cream with POD SALT Cuban Crème 20mg Nicotine Salt (30ml). Crafted for vapers who enjoy a bold yet creamy profile, this e-liquid delivers a perfectly balanced flavor—deep, smoky tobacco with a silky dessert finish. Designed using premium nicotine salts, it ensures fast nicotine absorption, a satisfying throat hit, and ultra-smooth vaping, even at higher strengths. Ideal for MTL devices, pod systems, and low-wattage kits. Flavor Profile: Cuban tobacco + vanilla cream', ARRAY['Flavor Profile: Cuban tobacco + vanilla cream', 'Nicotine Strength: 20mg Nicotine Salt', 'Bottle Size: 30ML', 'Type: Nicotine Salt E-Liquid', 'Recommended For: Pod systems & MTL vape kits', 'Satisfying, smooth, and full-bodied flavor']::text[], '[{"label":"Nicotine Strength","value":"2.5% (25mg), 2% (20mg), 5.0% (50mg)"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/pod-salt-cuban-creme-nicotine-salt.webp', 'local/products/pod-salt-cuban-creme-nicotine-salt', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-podmate-strawberry-kiwi-nic-salts', 'NASTY PODMATE - STRAWBERRY & KIWI NIC SALTS', 'vape', 'Experience a delicious blend of sweet strawberries and fresh, zingy kiwi with NASTY PODMATE Strawberry & Kiwi Nic Salts. This fruity nicotine salt e-liquid combines juicy strawberry sweetness with the refreshing tang of kiwi for a perfectly balanced and flavourful vaping experience. The Nasty Podmate Strawberry & Kiwi flavour is ideal for vapers who enjoy fresh, fruity, and refreshing vape flavours. Crafted for a smooth vaping experience, this blend delivers consistent flavour and satisfying nicotine performance with every puff.', ARRAY['Sweet strawberry and fresh kiwi flavour', 'Fresh, fruity, and zingy flavour profile', 'Smooth nicotine salt vaping experience', 'Ideal for pod systems and low-wattage devices', 'Perfect for fruity flavour lovers', 'Premium NASTY PODMATE e-liquid', 'Available in multiple nicotine strengths']::text[], '[{"label":"Available Strengths","value":"0mg, 3mg, 3.5% (35mg), 5.0% (50mg) & 6mg"},{"label":"Flavour","value":"Strawberry & Kiwi"},{"label":"Product Type","value":"Nicotine Salt E-Liquid"},{"label":"Best For","value":"Pod Systems & Low-Wattage Devices"}]'::jsonb, 1600, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-podmate-strawberry-kiwi-nic-salts.webp', 'local/products/nasty-podmate-strawberry-kiwi-nic-salts', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-moonnight-40k-coconut-toasty-1', 'Elf Bar MoonNight 40k - Coconut Toasty', 'vape', 'Experience a rich and creamy tropical flavour with Elf Bar MoonNight 40K – Coconut Toasty. This premium disposable vape combines the smooth sweetness of coconut with warm toasted and lightly roasted notes, creating a delicious dessert-style vaping experience. The Elf Bar MoonNight Coconut Toasty is perfect for vapers who enjoy creamy, tropical, and mildly sweet flavours. Designed for consistent vapour production and long-lasting performance, this high-puff disposable vape delivers a smooth and satisfying flavour experience from the first puff to the last.', ARRAY['Rich toasted coconut flavour profile', 'Creamy, smooth, and mildly sweet taste', 'Warm roasted coconut notes', 'High-puff disposable vape', 'Consistent vapour performance', 'Long-lasting vaping experience', 'No charging or refilling required', 'Compact and stylish design', 'Easy-to-use disposable vape']::text[], '[{"label":"Flavour","value":"Toasted Coconut"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Vaping Experience","value":"Creamy, Smooth & Mildly Sweet"},{"label":"Best For","value":"Tropical & Dessert Flavour Lovers"}]'::jsonb, 3199, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-moonnight-40k-coconut-toasty-1.webp', 'local/products/elf-bar-moonnight-40k-coconut-toasty-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-moonnight-40k-sikanji-1', 'Elf Bar MoonNight 40k - Sikanji', 'vape', 'Experience a rich and creamy tropical flavour with Elf Bar MoonNight 40K – Coconut Toasty. This premium disposable vape combines the smooth sweetness of coconut with warm toasted and lightly roasted notes, creating a delicious dessert-style vaping experience. The Elf Bar MoonNight Coconut Toasty is perfect for vapers who enjoy creamy, tropical, and mildly sweet flavours. Designed for consistent vapour production and long-lasting performance, this high-puff disposable vape delivers a smooth and satisfying flavour experience from the first puff to the last.', ARRAY['Rich toasted coconut flavour profile', 'Creamy, smooth, and mildly sweet taste', 'Warm roasted coconut notes', 'High-puff disposable vape', 'Consistent vapour performance', 'Long-lasting vaping experience', 'No charging or refilling required', 'Compact and stylish design', 'Easy-to-use disposable vape']::text[], '[{"label":"Flavour","value":"Toasted Coconut"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Vaping Experience","value":"Creamy, Smooth & Mildly Sweet"},{"label":"Best For","value":"Tropical & Dessert Flavour Lovers"}]'::jsonb, 3199, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-moonnight-40k-sikanji-1.webp', 'local/products/elf-bar-moonnight-40k-sikanji-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-moon-night-blueberry-raspberry-watermelon-1', 'Elf Bar Moon Night - Blueberry Raspberry Watermelon', 'vape', 'Experience a rich and creamy tropical flavour with Elf Bar MoonNight 40K – Coconut Toasty. This premium disposable vape combines the smooth sweetness of coconut with warm toasted and lightly roasted notes, creating a delicious dessert-style vaping experience. The Elf Bar MoonNight Coconut Toasty is perfect for vapers who enjoy creamy, tropical, and mildly sweet flavours. Designed for consistent vapour production and long-lasting performance, this high-puff disposable vape delivers a smooth and satisfying flavour experience from the first puff to the last.', ARRAY['Rich toasted coconut flavour profile', 'Creamy, smooth, and mildly sweet taste', 'Warm roasted coconut notes', 'High-puff disposable vape', 'Consistent vapour performance', 'Long-lasting vaping experience', 'No charging or refilling required', 'Compact and stylish design', 'Easy-to-use disposable vape']::text[], '[{"label":"Flavour","value":"Toasted Coconut"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Vaping Experience","value":"Creamy, Smooth & Mildly Sweet"},{"label":"Best For","value":"Tropical & Dessert Flavour Lovers"}]'::jsonb, 3399, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-moon-night-blueberry-raspberry-watermelon-1.webp', 'local/products/elf-bar-moon-night-blueberry-raspberry-watermelon-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-moonnight-40k-blackberry-cranberry-1', 'Elf Bar MoonNight 40k - Blackberry Cranberry', 'vape', 'Experience a bold and delicious berry fusion with Elf Bar MoonNight 40K – Blackberry Cranberry. This premium high-puff disposable vape combines the rich sweetness of blackberry with the sharp and tangy taste of cranberry for a perfectly balanced fruity vaping experience. With up to 40,000 puffs, the Elf Bar MoonNight 40K Blackberry Cranberry is designed for long-lasting flavour and consistent vapour performance. Its ready-to-use disposable design requires no charging, refilling, or regular maintenance, making it a convenient choice for adult vapers who enjoy bold fruit flavours.', ARRAY['Bold blackberry and cranberry flavour fusion', 'Sweet blackberry with a tangy cranberry kick', 'Up to 40,000 puffs', 'Long-lasting fruity vaping experience', 'Disposable and ready to use', 'No charging or refilling required', 'Strong battery performance', 'Smooth and consistent vapour delivery', 'Slim and modern design', 'Easy to carry and use']::text[], '[{"label":"Flavour","value":"Blackberry & Cranberry"},{"label":"Puff Capacity","value":"Up to 40,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Flavour Profile","value":"Sweet, Tangy & Fruity"},{"label":"Design","value":"Slim & Modern"}]'::jsonb, 3199, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-moonnight-40k-blackberry-cranberry-1.webp', 'local/products/elf-bar-moonnight-40k-blackberry-cranberry-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-moon-night-40k-peach-ice-1', 'Elf Bar Moon Night 40K - Peach Ice', 'vape', 'Experience a bold and delicious berry fusion with Elf Bar MoonNight 40K – Blackberry Cranberry. This premium high-puff disposable vape combines the rich sweetness of blackberry with the sharp and tangy taste of cranberry for a perfectly balanced fruity vaping experience. With up to 40,000 puffs, the Elf Bar MoonNight 40K Blackberry Cranberry is designed for long-lasting flavour and consistent vapour performance. Its ready-to-use disposable design requires no charging, refilling, or regular maintenance, making it a convenient choice for adult vapers who enjoy bold fruit flavours.', ARRAY['Bold blackberry and cranberry flavour fusion', 'Sweet blackberry with a tangy cranberry kick', 'Up to 40,000 puffs', 'Long-lasting fruity vaping experience', 'Disposable and ready to use', 'No charging or refilling required', 'Strong battery performance', 'Smooth and consistent vapour delivery', 'Slim and modern design', 'Easy to carry and use']::text[], '[{"label":"Flavour","value":"Blackberry & Cranberry"},{"label":"Puff Capacity","value":"Up to 40,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Flavour Profile","value":"Sweet, Tangy & Fruity"},{"label":"Design","value":"Slim & Modern"}]'::jsonb, 3199, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-moon-night-40k-peach-ice-1.webp', 'local/products/elf-bar-moon-night-40k-peach-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-moon-night-40k-blackberry-ice-1', 'Elf Bar Moon Night 40k - Blackberry Ice', 'vape', 'Experience a bold and delicious berry fusion with Elf Bar MoonNight 40K – Blackberry Cranberry. This premium high-puff disposable vape combines the rich sweetness of blackberry with the sharp and tangy taste of cranberry for a perfectly balanced fruity vaping experience. With up to 40,000 puffs, the Elf Bar MoonNight 40K Blackberry Cranberry is designed for long-lasting flavour and consistent vapour performance. Its ready-to-use disposable design requires no charging, refilling, or regular maintenance, making it a convenient choice for adult vapers who enjoy bold fruit flavours.', ARRAY['Bold blackberry and cranberry flavour fusion', 'Sweet blackberry with a tangy cranberry kick', 'Up to 40,000 puffs', 'Long-lasting fruity vaping experience', 'Disposable and ready to use', 'No charging or refilling required', 'Strong battery performance', 'Smooth and consistent vapour delivery', 'Slim and modern design', 'Easy to carry and use']::text[], '[{"label":"Flavour","value":"Blackberry & Cranberry"},{"label":"Puff Capacity","value":"Up to 40,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Flavour Profile","value":"Sweet, Tangy & Fruity"},{"label":"Design","value":"Slim & Modern"}]'::jsonb, 3199, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-moon-night-40k-blackberry-ice-1.webp', 'local/products/elf-bar-moon-night-40k-blackberry-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d3-pro-strawberry-watermelon-1', 'Elf Bar Raya D3 Pro - Strawberry Watermelon', 'vape', 'Enjoy a refreshing and delicious fruit blend with Elf Bar Raya D3 Pro – Strawberry Watermelon. This premium disposable vape combines the sweet taste of ripe strawberries with the juicy freshness of watermelon, creating a smooth and balanced fruity flavour in every puff. The Elf Bar Raya D3 Pro Strawberry Watermelon is designed for adult vapers who enjoy refreshing and fruity vape flavours. With its sleek design, compact build, and reliable performance, this disposable vape is easy to carry and perfect for everyday use.', ARRAY['Delicious strawberry and watermelon flavour blend', 'Sweet and juicy fruity taste', 'Smooth flavour with every inhale', 'High-performance Elf Bar Raya D3 Pro device', 'Compact and sleek design', 'Easy to carry and use', 'Perfect for everyday vaping', 'Ideal for fruity flavour lovers']::text[], '[{"label":"Flavour","value":"Strawberry & Watermelon"},{"label":"Product Type","value":"Disposable Vape"},{"label":"Flavour Profile","value":"Sweet, Juicy & Fruity"},{"label":"Design","value":"Compact & Sleek"},{"label":"Best For","value":"Fruity Vape Lovers"}]'::jsonb, 2999, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d3-pro-strawberry-watermelon-1.webp', 'local/products/elf-bar-raya-d3-pro-strawberry-watermelon-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-sweet-king-30k-kala-khata-syrup-1', 'Elf bar Sweet king 30k - Kala khata syrup', 'vape', 'Experience the bold and unique taste of Elf Bar Sweet King 30K – Kala Khata Syrup. This premium high-puff disposable vape delivers the distinctive flavour of tangy and sweet Kala Khata syrup, creating a refreshing and flavourful vaping experience with every puff. The Elf Bar Sweet King 30K Kala Khata Syrup is perfect for adult vapers who enjoy bold, Indian-inspired, sweet, and tangy flavour profiles. With up to 30,000 puffs, this long-lasting disposable vape offers consistent flavour and smooth vapour performance for extended use.', ARRAY['Bold Kala Khata syrup flavour', 'Sweet, tangy, and refreshing taste', 'Up to 30,000 puffs', 'Long-lasting disposable vape', 'Smooth and consistent vaping experience', 'Premium flavour performance', 'Lightweight and portable design', 'Easy to use with no regular maintenance', 'Perfect for unique flavour lovers']::text[], '[{"label":"Flavour","value":"Kala Khata Syrup"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Flavour Profile","value":"Sweet, Tangy & Refreshing"},{"label":"Design","value":"Lightweight & Portable"}]'::jsonb, 2899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-sweet-king-30k-kala-khata-syrup-1.webp', 'local/products/elf-bar-sweet-king-30k-kala-khata-syrup-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-sweet-king-30k-strawberry-ice-1', 'Elf bar Sweet king 30k - Strawberry ice', 'vape', 'Enjoy the perfect combination of sweet strawberry flavour and a refreshing icy finish with Elf Bar Sweet King 30K – Strawberry Ice. This premium high-puff disposable vape delivers the juicy taste of ripe strawberries with a cool menthol-inspired finish for a smooth and refreshing vaping experience. With up to 30,000 puffs, the Elf Bar Sweet King 30K Strawberry Ice is designed for long-lasting flavour and consistent vapour performance. Its compact and portable design makes it easy to carry, perfect for adult vapers who enjoy fruity and icy flavours on the go.', ARRAY['Sweet and ripe strawberry flavour', 'Refreshing icy finish', 'Up to 30,000 puffs', 'Long-lasting vaping experience', 'Smooth and consistent vapour performance', 'Compact and portable design', 'Lightweight and easy to carry', 'Premium flavour quality', 'Perfect for fruity and icy flavour lovers']::text[], '[{"label":"Flavour","value":"Strawberry Ice"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Flavour Profile","value":"Sweet, Fruity & Icy"},{"label":"Design","value":"Compact & Portable"}]'::jsonb, 2899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-sweet-king-30k-strawberry-ice-1.webp', 'local/products/elf-bar-sweet-king-30k-strawberry-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-sweet-king-30k-blackberry-cranberry-1', 'Elf bar Sweet king 30k - Blackberry cranberry', 'vape', 'Experience a bold and refreshing berry blend with Elf Bar Sweet King 30K – Blackberry Cranberry. This premium high-puff disposable vape combines the rich sweetness of blackberries with the tangy flavour of cranberries, creating a perfectly balanced fruity vaping experience. With up to 30,000 puffs, the Elf Bar Sweet King 30K Blackberry Cranberry delivers long-lasting flavour and consistent vapour performance. Its compact and portable design makes it easy to carry, making it a convenient choice for adult vapers who enjoy sweet and tangy fruit flavours.', ARRAY['Sweet blackberry and tangy cranberry flavour', 'Bold and refreshing berry taste', 'Up to 30,000 puffs', 'Long-lasting disposable vape', 'Smooth and consistent vaping experience', 'Reliable flavour performance', 'Compact and portable design', 'Easy to carry and use', 'Perfect for fruity flavour lovers']::text[], '[{"label":"Flavour","value":"Blackberry & Cranberry"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Flavour Profile","value":"Sweet, Tangy & Fruity"},{"label":"Design","value":"Compact & Portable"}]'::jsonb, 2899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-sweet-king-30k-blackberry-cranberry-1.webp', 'local/products/elf-bar-sweet-king-30k-blackberry-cranberry-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-sweet-king-30k-miami-mint-1', 'Elf bar Sweet king 30k -Miami mint', 'vape', 'Experience a cool and refreshing flavour blend with Elf Bar Sweet King 30K – Miami Mint. This premium high-puff disposable vape combines refreshing cool mint with tropical-inspired flavours, creating a smooth and invigorating vaping experience with every puff. With up to 30,000 puffs, the Elf Bar Sweet King 30K Miami Mint delivers long-lasting flavour and consistent vapour performance. Its compact and portable design makes it easy to carry, making it an ideal choice for adult vapers who enjoy cool, fresh, and refreshing vape flavours.', ARRAY['Cool mint and tropical flavour blend', 'Refreshing and invigorating taste', 'Up to 30,000 puffs', 'Long-lasting disposable vape', 'Smooth and consistent vapour delivery', 'Reliable flavour performance', 'Compact and portable design', 'Easy to carry and use', 'Perfect for mint and tropical flavour lovers']::text[], '[{"label":"Flavour","value":"Miami Mint"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Flavour Profile","value":"Cool, Refreshing & Tropical"},{"label":"Design","value":"Compact & Portable"}]'::jsonb, 2899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-sweet-king-30k-miami-mint-1.webp', 'local/products/elf-bar-sweet-king-30k-miami-mint-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d3-pro-30k-peach-ice-1', 'Elf bar Raya d3 pro -30k Peach ice', 'vape', 'Experience the perfect blend of sweet peach flavour and refreshing icy coolness with Elf Bar Raya D3 Pro 30K – Peach Ice. This premium high-capacity disposable vape delivers the juicy taste of ripe peaches combined with a cool finish for a smooth and refreshing vaping experience. With up to 30,000 puffs, the Elf Bar Raya D3 Pro 30K Peach Ice is designed for long-lasting flavour and consistent vapour performance. Its rechargeable high-capacity design offers extended use, while the sleek and compact body makes it easy to carry wherever you go.', ARRAY['Sweet and juicy ripe peach flavour', 'Refreshing icy cool finish', 'Up to 30,000 puffs', 'Rechargeable high-capacity disposable vape', 'Smooth draw and consistent vapour delivery', 'Rich and long-lasting flavour', 'Sleek and compact design', 'Travel-friendly and easy to carry', '100% genuine Elf Bar product']::text[], '[{"label":"Flavour","value":"Peach Ice"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"Rechargeable High-Capacity Disposable Vape"},{"label":"Flavour Profile","value":"Sweet, Juicy & Icy"},{"label":"Design","value":"Sleek, Compact & Travel-Friendly"}]'::jsonb, 2999, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d3-pro-30k-peach-ice-1.webp', 'local/products/elf-bar-raya-d3-pro-30k-peach-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d3-pro-30k-grape-ice-1', 'Elf bar Raya d3 pro -30k Grape ice', 'vape', 'Experience the bold and juicy taste of ripe grapes with a refreshing icy finish in Elf Bar Raya D3 Pro 30K – Grape Ice. This premium high-capacity disposable vape delivers a sweet and fruity grape flavour combined with a cool finish for a smooth and refreshing vaping experience. With up to 30,000 puffs, the Elf Bar Raya D3 Pro 30K Grape Ice is designed for extended vaping sessions and consistent flavour performance. Its rechargeable disposable design offers maximum capacity, while the sleek and compact body makes it easy to carry and use on the go.', ARRAY['Bold and juicy ripe grape flavour', 'Sweet fruity taste with a refreshing icy finish', 'Up to 30,000 puffs', 'Rechargeable high-capacity disposable vape', 'Smooth and consistent vapour delivery', 'Rich flavour with every draw', 'Sleek, compact, and portable design', '100% authentic Elf Bar product', 'Perfect for extended vaping sessions']::text[], '[{"label":"Flavour","value":"Grape Ice"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"Rechargeable High-Capacity Disposable Vape"},{"label":"Flavour Profile","value":"Sweet, Fruity & Icy"},{"label":"Design","value":"Sleek, Compact & Portable"}]'::jsonb, 2999, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d3-pro-30k-grape-ice-1.webp', 'local/products/elf-bar-raya-d3-pro-30k-grape-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d3-pro-30k-double-mango-1', 'Elf bar Raya d3 pro -30k Double mango', 'vape', 'Indulge in the rich and tropical taste of mango with Elf Bar Raya D3 Pro 30K – Double Mango. This premium high-capacity disposable vape delivers an intense double mango flavour with a sweet, juicy, and tropical taste in every puff. With up to 30,000 puffs, the Elf Bar Raya D3 Pro 30K Double Mango is designed for long-lasting flavour and consistent vapour performance. Its rechargeable disposable design offers maximum capacity, while the sleek and compact body makes it easy to carry and enjoy on the go.', ARRAY['Rich and intense double mango flavour', 'Sweet, juicy, and tropical taste', 'Up to 30,000 puffs', 'Rechargeable high-capacity disposable vape', 'Smooth and consistent vapour delivery', 'Long-lasting flavour performance', 'Sleek, compact, and portable design', '100% genuine Elf Bar product', 'Perfect for mango flavour lovers']::text[], '[{"label":"Flavour","value":"Double Mango"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"Rechargeable High-Capacity Disposable Vape"},{"label":"Flavour Profile","value":"Rich, Sweet & Tropical"},{"label":"Design","value":"Sleek, Compact & Portable"}]'::jsonb, 2999, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d3-pro-30k-double-mango-1.webp', 'local/products/elf-bar-raya-d3-pro-30k-double-mango-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d3-pro-30k-lychee-juicy-peach-1', 'Elf Bar Raya D3 Pro 30K - Lychee Juicy Peach', 'vape', 'Experience a delicious tropical fruit fusion with Elf Bar Raya D3 Pro 30K – Lychee Juicy Peach. This premium disposable vape combines the exotic sweetness of lychee with the juicy flavour of ripe peach, creating a smooth and refreshing fruity vaping experience. With up to 30,000 puffs, the Elf Bar Raya D3 Pro 30K Lychee Juicy Peach delivers long-lasting flavour and consistent vapour performance. Its stylish and compact design makes it easy to carry, while the disposable design offers a hassle-free vaping experience with no charging or refilling required.', ARRAY['Exotic lychee and juicy peach flavour blend', 'Sweet, tropical, and refreshing taste', 'Up to 30,000 puffs', 'Smooth draw with rich vapour clouds', 'Disposable and hassle-free design', 'No charging or refilling required', 'Stylish, compact, and portable', 'Long-lasting fruity flavour', 'Premium Elf Bar vape experience']::text[], '[{"label":"Flavour","value":"Lychee & Juicy Peach"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Flavour Profile","value":"Sweet, Juicy & Tropical"},{"label":"Design","value":"Stylish, Compact & Portable"}]'::jsonb, 2999, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d3-pro-30k-lychee-juicy-peach-1.webp', 'local/products/elf-bar-raya-d3-pro-30k-lychee-juicy-peach-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d3-pro-30k-strawberry-kiwi-ice-1', 'Elf Bar Raya D3 Pro 30K - Strawberry Kiwi Ice', 'vape', 'Enjoy the fruity refreshment of Elf Bar Raya D3 Pro 30K Strawberry Kiwi Ice from India Vape Shop! This premium disposable vape blends sweet, juicy strawberries with tangy kiwi and a cool menthol finish for a crisp, invigorating experience. With a smooth draw and long-lasting performance, it’s the perfect choice for a flavorful, all-day refreshing vape!', ARRAY['Sweet & Tangy Blend – Juicy strawberries mixed with zesty kiwi', 'Refreshing Icy Finish – A cool menthol kick for a crisp vaping experience', 'Smooth & Satisfying – Designed for a seamless and enjoyable inhale', 'Long-Lasting Performance – High-capacity for extended vaping pleasure', 'Convenient & Portable – Easy-to-use disposable vape for on-the-go use']::text[], '[]'::jsonb, 2999, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d3-pro-30k-strawberry-kiwi-ice-1.webp', 'local/products/elf-bar-raya-d3-pro-30k-strawberry-kiwi-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-ice-king-blue-razz-ice-30k-2', 'Elf Bar Ice King - Blue Razz Ice - 30K', 'vape', 'Experience a bold and refreshing flavour combination with Elf Bar Ice King 30K – Blue Razz Ice. This premium high-puff disposable vape combines the tangy sweetness of blue raspberry with a refreshing icy menthol finish, delivering a vibrant fruity and cool vaping experience with every puff. Designed for adult vapers who love fruity and icy flavours, the Elf Bar Ice King 30K Blue Razz Ice offers up to 30,000 puffs along with adjustable coolness, power, and airflow settings. With 5 levels of adjustable coolness, you can customise your vaping experience according to your preferred cooling intensity.', ARRAY['Tangy blue raspberry flavour', 'Refreshing icy menthol finish', 'Up to 30,000 puffs', 'Adjustable coolness control', '5 levels of adjustable coolness', 'Adjustable power and airflow', 'Smooth and consistent vapour delivery', 'Premium Elf Bar Ice King design', 'Perfect for fruity and icy flavour lovers']::text[], '[{"label":"Flavour","value":"Blue Raspberry & Icy Menthol"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Coolness","value":"5-Level Adjustable Coolness"},{"label":"Controls","value":"Adjustable Power & Airflow"}]'::jsonb, 2899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-ice-king-blue-razz-ice-30k-2.webp', 'local/products/elf-bar-ice-king-blue-razz-ice-30k-2', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-ice-king-cola-ice-30k-2', 'Elf Bar Ice King - Cola Ice - 30K', 'vape', 'Experience the nostalgic taste of classic cola with a refreshing icy finish in Elf Bar Ice King 30K – Cola Ice. This premium high-puff disposable vape combines fizzy cola sweetness with a cool and crisp finish, delivering a smooth and refreshing vaping experience with every puff. With up to 30,000 puffs, the Elf Bar Ice King 30K Cola Ice offers long-lasting flavour and consistent vapour performance. Its sleek and portable design makes it easy to carry, while the hassle-free disposable format requires no charging or refilling.', ARRAY['Classic cola flavour with an icy finish', 'Fizzy, sweet, and refreshing taste', 'Up to 30,000 puffs', 'Long-lasting vaping performance', 'Smooth and consistent vapour delivery', 'Sleek and portable design', 'Easy to use and carry', 'No charging or refilling required', 'Premium Elf Bar Ice King experience']::text[], '[{"label":"Flavour","value":"Classic Cola & Icy Finish"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"}]'::jsonb, 2899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-ice-king-cola-ice-30k-2.webp', 'local/products/elf-bar-ice-king-cola-ice-30k-2', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-ice-king-strawberry-watermelon-30k-1', 'Elf Bar Ice King - Strawberry Watermelon - 30K', 'vape', 'Dive into a juicy and refreshing fruit fusion with Elf Bar Ice King 30K – Strawberry Watermelon. This premium high-puff disposable vape combines the sweet taste of ripe strawberries with the juicy freshness of watermelon, delivering a vibrant and flavourful vaping experience with every puff. Designed for adult vapers who enjoy sweet and fruity flavours, the Elf Bar Ice King 30K Strawberry Watermelon offers up to 30,000 puffs with adjustable coolness, power, and airflow controls. With 5 levels of adjustable coolness, you can customise your vaping experience and choose your preferred cooling intensity.', ARRAY['Sweet strawberry and juicy watermelon flavour', 'Vibrant and refreshing fruity taste', 'Up to 30,000 puffs', 'Adjustable coolness control', '5 levels of adjustable coolness', 'Adjustable power and airflow', 'Smooth and consistent vapour delivery', 'Premium Elf Bar Ice King design', 'Perfect for fruity flavour lovers']::text[], '[{"label":"Flavour","value":"Strawberry & Watermelon"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Coolness","value":"5-Level Adjustable Coolness"},{"label":"Controls","value":"Adjustable Power & Airflow"}]'::jsonb, 2899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-ice-king-strawberry-watermelon-30k-1.webp', 'local/products/elf-bar-ice-king-strawberry-watermelon-30k-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-ice-king-strawberry-kiwi-ice-30k-1', 'Elf Bar Ice King - Strawberry Kiwi Ice - 30K', 'vape', 'Experience the perfect balance of sweet, tangy, and refreshing flavours with Elf Bar Ice King 30K – Strawberry Kiwi Ice. This premium high-puff disposable vape combines juicy strawberries with ripe kiwi and a cool menthol finish, delivering a smooth and refreshing vaping experience with every puff. Designed for adult vapers who enjoy fruity and icy flavours, the Elf Bar Ice King 30K Strawberry Kiwi Ice offers up to 30,000 puffs with adjustable coolness, power, and airflow controls. With 5 levels of adjustable coolness, you can customise your vaping experience according to your preferred cooling intensity.', ARRAY['Sweet strawberry and tangy kiwi flavour', 'Refreshing icy menthol finish', 'Smooth and balanced fruity taste', 'Up to 30,000 puffs', 'Adjustable coolness control', '5 levels of adjustable coolness', 'Adjustable power and airflow', 'Consistent vapour delivery', 'Premium Elf Bar Ice King design']::text[], '[{"label":"Flavour","value":"Strawberry, Kiwi & Icy Menthol"},{"label":"Puff Capacity","value":"Up to 30,000 Puffs"},{"label":"Product Type","value":"High-Puff Disposable Vape"},{"label":"Coolness","value":"5-Level Adjustable Coolness"},{"label":"Controls","value":"Adjustable Power & Airflow"}]'::jsonb, 2899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-ice-king-strawberry-kiwi-ice-30k-1.webp', 'local/products/elf-bar-ice-king-strawberry-kiwi-ice-30k-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d3-alpine-mint-25000', 'Elf Bar Raya D3 - Alpine Mint - 25000', 'vape', 'Experience a crisp, cool, and refreshing vaping experience with Elf Bar Raya D3 25K – Alpine Mint. This premium disposable vape combines a refreshing mint flavour with subtle alpine herbal notes, delivering a clean and invigorating taste with every puff. The Elf Bar Raya D3 Alpine Mint 25K offers up to 25,000 puffs and features three adjustable power modes to customise your vaping experience. Choose Lite Mode for maximum puff capacity, Smooth Mode for a balanced experience, or Turbo Mode for a more powerful and intense vape.', ARRAY['Crisp and refreshing Alpine Mint flavour', 'Subtle alpine herbal notes', 'Up to 25,000 puffs', '5% nicotine strength (50mg/ml)', '3 adjustable power modes', 'Lite Mode: 12W – up to 25,000 puffs', 'Smooth Mode: 17W – up to 20,000 puffs', 'Turbo Mode: 30W – up to 15,000 puffs', 'Rechargeable 850mAh battery', 'Type-C charging support', 'Premium Elf Bar Raya D3 design']::text[], '[{"label":"Flavour","value":"Alpine Mint"},{"label":"Nicotine Strength","value":"5% (50mg/ml)"},{"label":"Puff Capacity","value":"Up to 25,000 Puffs"},{"label":"Battery","value":"Rechargeable 850mAh"},{"label":"Charging","value":"Type-C"},{"label":"Modes","value":"Lite, Smooth & Turbo"}]'::jsonb, 2499, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d3-alpine-mint-25000.webp', 'local/products/elf-bar-raya-d3-alpine-mint-25000', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d3-apple-peach-25000', 'Elf Bar Raya D3 Apple peach - 25000', 'vape', 'Find the Elf Bar Raya D3 Apple Peach at India Vape Shop. This vape provides 25,000 puffs of vibrant apple and juicy peach flavors, creating a sweet, fruity experience. It is ideal for those who want a long-lasting and refreshing vape, thanks to its large puff capacity and convenient Type-C charging.', ARRAY['Product Information: Massive Vape Juice Capacity: Comes with a substantial 23ml e-liquid capacity.', 'Triple Mesh Coil System: Ensures excellent flavor and vapor production.', 'Variable Puff Settings: Three gear settings to adjust puff count – 25K, 20K, and 15K.', 'High-Capacity Battery: Equipped with an 850mAh battery and Type-C charging.', 'Sophisticated Side Screen: Large digital tube display for easy monitoring.', 'Airflow and Pressure Customization: Integrated system allowing for a tailored vaping experience.', 'Stylish Design: Features an outer ring with a monochrome blue light.', 'Extensive Flavor Selection: Choose from 15 exquisite flavors.']::text[], '[]'::jsonb, 2499, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d3-apple-peach-25000.webp', 'local/products/elf-bar-raya-d3-apple-peach-25000', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d1-blueberry-mint-1', 'ELF BAR RAYA D1 - Blueberry Mint', 'vape', 'Experience a refreshing blend of sweet blueberries and cool mint with Elf Bar Raya D1 – Blueberry Mint. Designed for long-lasting vaping satisfaction, this premium high-puff vape delivers a smooth and flavourful experience with every draw. With up to 13,000 puffs, the Elf Bar Raya D1 Blueberry Mint is designed for extended use and consistent flavour performance. Its rechargeable 650mAh battery and convenient Type-C charging provide reliable performance and hassle-free usage. If you''re searching for Elf Bar Raya D1, Blueberry Mint vape, or a premium 13K puff vape, this fruity and refreshing flavour is an excellent choice.', ARRAY['Sweet blueberry and refreshing mint flavour', 'Smooth and flavourful vaping experience', 'Up to 13,000 puffs', '5% nicotine strength', '18ml e-liquid capacity', 'Rechargeable 650mAh battery', 'Type-C charging support', 'Long-lasting flavour performance', 'Convenient and easy-to-use design', 'Premium Elf Bar Raya D1 vape']::text[], '[{"label":"Flavour","value":"Blueberry & Mint"},{"label":"Puff Capacity","value":"Up to 13,000 Puffs"},{"label":"Nicotine Strength","value":"5%"},{"label":"E-Liquid Capacity","value":"18ml"},{"label":"Battery","value":"Rechargeable 650mAh"},{"label":"Charging","value":"Type-C"}]'::jsonb, 2200, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d1-blueberry-mint-1.webp', 'local/products/elf-bar-raya-d1-blueberry-mint-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d1-peach-lychee-blackcurrant-1', 'ELF BAR RAYA D1 - Peach Lychee Blackcurrant', 'vape', 'Experience a delicious blend of juicy peach, exotic lychee, and rich blackcurrant with Elf Bar Raya D1 – Peach Lychee Blackcurrant. This premium high-puff vape delivers a smooth, fruity, and flavour-packed vaping experience with every draw. Designed for convenience and long-lasting performance, the Elf Bar Raya D1 Peach Lychee Blackcurrant comes with approximately 13,000 puffs, an 18ml pre-filled e-liquid capacity, and a rechargeable 650mAh battery. The convenient Type-C charging port ensures easy recharging, while the e-liquid and power display helps you monitor your device.', ARRAY['Peach, lychee, and blackcurrant flavour blend', 'Sweet, juicy, and fruity taste', 'Approximately 13,000 puffs', '18ml pre-filled vape juice', '5% nicotine salt (50mg)', 'Rechargeable 650mAh battery', 'Type-C charging port', 'Anti-dry technology', 'E-liquid and power display', 'Lightweight and convenient design', 'Premium Elf Bar Raya D1 vape']::text[], '[{"label":"Flavour","value":"Peach, Lychee & Blackcurrant"},{"label":"Puff Capacity","value":"Approximately 13,000 Puffs"},{"label":"Nicotine Strength","value":"5% (50mg Nic Salt)"},{"label":"E-Liquid Capacity","value":"18ml"},{"label":"Battery","value":"Rechargeable 650mAh"},{"label":"Charging","value":"Type-C"},{"label":"Technology","value":"Anti-Dry & E-Liquid/Power Display"}]'::jsonb, 2200, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d1-peach-lychee-blackcurrant-1.webp', 'local/products/elf-bar-raya-d1-peach-lychee-blackcurrant-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d1-kiwi-guava-grape-1', 'ELF BAR RAYA D1 - Kiwi Guava Grape', 'vape', 'Experience a refreshing tropical fruit fusion with Elf Bar Raya D1 – Kiwi Guava Grape. This premium high-puff vape combines the tangy freshness of kiwi, the tropical sweetness of guava, and the juicy taste of grape to deliver a smooth and flavour-packed vaping experience with every draw. Designed for maximum portability and convenience, the Elf Bar Raya D1 Kiwi Guava Grape offers approximately 13,000 puffs and features an 18ml pre-filled e-liquid capacity. The rechargeable 650mAh battery with Type-C charging ensures reliable performance, while anti-dry technology and the e-liquid and power display add extra convenience.', ARRAY['Kiwi, guava, and grape flavour blend', 'Sweet, tangy, and tropical fruit taste', 'Approximately 13,000 puffs', '18ml pre-filled vape juice', '5% nicotine salt (50mg)', 'Rechargeable 650mAh battery', 'Type-C charging port', 'Anti-dry technology', 'E-liquid and power display', 'Lightweight, portable, and durable design', 'Perfect travel-friendly vape']::text[], '[{"label":"Flavour","value":"Kiwi, Guava & Grape"},{"label":"Puff Capacity","value":"Approximately 13,000 Puffs"},{"label":"Nicotine Strength","value":"5% (50mg Nic Salt)"},{"label":"E-Liquid Capacity","value":"18ml"},{"label":"Battery","value":"Rechargeable 650mAh"},{"label":"Charging","value":"Type-C"},{"label":"Technology","value":"Anti-Dry & E-Liquid/Power Display"}]'::jsonb, 2200, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d1-kiwi-guava-grape-1.webp', 'local/products/elf-bar-raya-d1-kiwi-guava-grape-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d1-cola-1', 'ELF BAR RAYA D1 - Cola', 'vape', 'Enjoy the classic and refreshing taste of cola with Elf Bar Raya D1 – Cola. Designed for convenience, portability, and long-lasting performance, this premium disposable vape delivers a smooth and flavourful vaping experience with every draw. The Elf Bar Raya D1 Cola 13K offers approximately 13,000 puffs and comes with 18ml of pre-filled vape juice. Its rechargeable 650mAh battery and convenient Type-C charging port provide reliable performance, while anti-dry technology helps deliver a consistent vaping experience. If you''re searching for Elf Bar Raya D1, Cola vape, or a premium 13K puff vape, this classic cola flavour is an excellent choice.', ARRAY['Classic and refreshing cola flavour', 'Smooth and flavourful vaping experience', 'Approximately 13,000 puffs', '18ml pre-filled vape juice', '5% nicotine salt (50mg)', 'Rechargeable 650mAh battery', 'Type-C charging support', 'Anti-dry technology', 'E-liquid and power display', 'Lightweight, sturdy, and portable design', 'Ideal for travel and everyday use']::text[], '[{"label":"Flavour","value":"Classic Cola"},{"label":"Puff Capacity","value":"Approximately 13,000 Puffs"},{"label":"Nicotine Strength","value":"5% (50mg Nic Salt)"},{"label":"E-Liquid Capacity","value":"18ml"},{"label":"Battery","value":"Rechargeable 650mAh"},{"label":"Charging","value":"Type-C"},{"label":"Technology","value":"Anti-Dry & E-Liquid/Power Display"}]'::jsonb, 2200, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d1-cola-1.webp', 'local/products/elf-bar-raya-d1-cola-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-move-b50000-50k-puffs-2-flavours-in-1-device-1', 'IGET MOVE B50000 (50k Puffs - 2 Flavours in 1 device)', 'vape', 'Experience next-level vaping with the IGET MOVE B50000 50K Puffs Disposable Vape. Designed for long-lasting performance and flavour variety, this premium rechargeable vape offers up to 50,000 puffs and features an innovative 2-flavour-in-1 device design. The IGET MOVE B50000 Dual Flavour Vape allows you to switch between two flavours by simply rotating the device. With up to 18 flavour combinations, you can enjoy more variety in one premium vape and reduce flavour fatigue. If you''re searching for IGET MOVE B50000, a 50K puff vape, or a dual flavour rechargeable disposable vape, this advanced device is an excellent choice.', ARRAY['Up to 50,000 puffs', '2 flavours in 1 device', 'Easy rotating dual-flavour technology', 'Up to 18 flavour combinations', 'Smart digital display', 'Battery and e-liquid level indicator', '0.9Ω mesh coil', 'Smooth and consistent vapour delivery', 'Rechargeable 850mAh battery', 'Type-C charging port', 'Premium and portable design']::text[], '[{"label":"Puff Capacity","value":"Up to 50,000 Puffs"},{"label":"Flavour System","value":"2 Flavours in 1 Device"},{"label":"Coil","value":"0.9Ω Mesh Coil"},{"label":"Battery","value":"Rechargeable 850mAh"},{"label":"Charging","value":"Type-C"},{"label":"Display","value":"Battery & E-Liquid Level Indicator"}]'::jsonb, 3499, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-move-b50000-50k-puffs-2-flavours-in-1-device-1.webp', 'local/products/iget-move-b50000-50k-puffs-2-flavours-in-1-device-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-soul-b40000-cherry-pomegranate-1', 'IGET SOUL B40000 - Cherry Pomegranate', 'vape', 'Experience next-level vaping with the IGET MOVE B50000 50K Puffs Disposable Vape. Designed for long-lasting performance and flavour variety, this premium rechargeable vape offers up to 50,000 puffs and features an innovative 2-flavour-in-1 device design. The IGET MOVE B50000 Dual Flavour Vape allows you to switch between two flavours by simply rotating the device. With up to 18 flavour combinations, you can enjoy more variety in one premium vape and reduce flavour fatigue. If you''re searching for IGET MOVE B50000, a 50K puff vape, or a dual flavour rechargeable disposable vape, this advanced device is an excellent choice.', ARRAY['Up to 50,000 puffs', '2 flavours in 1 device', 'Easy rotating dual-flavour technology', 'Up to 18 flavour combinations', 'Smart digital display', 'Battery and e-liquid level indicator', '0.9Ω mesh coil', 'Smooth and consistent vapour delivery', 'Rechargeable 850mAh battery', 'Type-C charging port', 'Premium and portable design']::text[], '[{"label":"Puff Capacity","value":"Up to 50,000 Puffs"},{"label":"Flavour System","value":"2 Flavours in 1 Device"},{"label":"Coil","value":"0.9Ω Mesh Coil"},{"label":"Battery","value":"Rechargeable 850mAh"},{"label":"Charging","value":"Type-C"},{"label":"Display","value":"Battery & E-Liquid Level Indicator"}]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-soul-b40000-cherry-pomegranate-1.webp', 'local/products/iget-soul-b40000-cherry-pomegranate-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-flare-b10000-grape-berry-1', 'IGET FLARE B10000 - Grape Berry', 'vape', 'Enjoy a rich and juicy fruit blend with IGET FLARE B10000 – Grape Berry. This premium disposable vape combines the sweet taste of ripe grapes with a delicious mixed berry blend, delivering bold flavour and a smooth vaping experience with every puff. With up to 10,000 puffs, the IGET FLARE B10000 Grape Berry is designed for long-lasting flavour and consistent vapour performance. The device comes pre-filled and pre-charged, making it ready to use straight out of the box with no charging or refilling required.', ARRAY['Sweet grape and mixed berry flavour', 'Rich, juicy, and fruity taste', 'Up to 10,000 puffs', 'Pre-filled and pre-charged', 'Smooth and consistent vapour delivery', 'Ready-to-use disposable vape', 'Sleek and pocket-friendly design', 'No charging or refilling required', 'Perfect for fruity flavour lovers']::text[], '[{"label":"Flavour","value":"Grape & Mixed Berries"},{"label":"Puff Capacity","value":"Up to 10,000 Puffs"},{"label":"Product Type","value":"Disposable Vape"},{"label":"Status","value":"Pre-Filled & Pre-Charged"},{"label":"Design","value":"Sleek & Pocket-Friendly"}]'::jsonb, 1895, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-flare-b10000-grape-berry-1.webp', 'local/products/iget-flare-b10000-grape-berry-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-flare-b10000-mountain-spring-mint-1', 'IGET FLARE B10000 - Mountain Spring Mint', 'vape', 'Experience a crisp and refreshing burst of icy mint with IGET FLARE B10000 – Mountain Spring Mint. Inspired by the clean freshness of mountain air, this premium disposable vape delivers a cool mint flavour, smooth vapour, and a satisfying throat hit with every puff. With up to 10,000 puffs, the IGET FLARE B10000 Mountain Spring Mint offers long-lasting freshness and consistent performance. The device comes pre-filled and pre-charged, making it ready to use without any charging, refilling, or maintenance.', ARRAY['Crisp and refreshing mountain mint flavour', 'Pure icy and cooling taste', 'Up to 10,000 puffs', 'Pre-filled and pre-charged', 'Smooth cooling throat hit', 'Consistent vapour performance', 'Lightweight and portable design', 'No charging or refilling required', 'No maintenance needed']::text[], '[{"label":"Flavour","value":"Mountain Spring Mint"},{"label":"Puff Capacity","value":"Up to 10,000 Puffs"},{"label":"Product Type","value":"Disposable Vape"},{"label":"Status","value":"Pre-Filled & Pre-Charged"},{"label":"Design","value":"Lightweight & Portable"}]'::jsonb, 1895, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-flare-b10000-mountain-spring-mint-1.webp', 'local/products/iget-flare-b10000-mountain-spring-mint-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-soul-b40000-strawberry-kiwi-ice-1', 'IGET SOUL B40000 - Strawberry Kiwi Ice', 'vape', 'Experience a refreshing blend of sweet strawberries, tangy kiwi, and a cool icy finish with IGET SOUL B40000 – Strawberry Kiwi Ice. This premium high-puff vape delivers a balanced fruity flavour with a refreshing menthol hit for a smooth and satisfying vaping experience. With up to 40,000 puffs, the IGET SOUL B40000 Strawberry Kiwi Ice is designed for long-lasting flavour and consistent performance. Its mesh coil delivers smooth vapour and rich flavour, while the rechargeable design offers extended convenience for adult vapers.', '{}'::text[], '[{"label":"Flavour","value":"Strawberry, Kiwi & Ice"},{"label":"Puff Capacity","value":"Up to 40,000 Puffs"},{"label":"Product Type","value":"High-Puff Rechargeable Vape"},{"label":"Coil","value":"Mesh Coil"},{"label":"Flavour Profile","value":"Sweet, Tangy & Refreshing"},{"label":"Design","value":"Leak-Resistant & Travel-Friendly"}]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-soul-b40000-strawberry-kiwi-ice-1.webp', 'local/products/iget-soul-b40000-strawberry-kiwi-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-soul-b40000-passion-fruit-mango-ice-1', 'IGET Soul B40000 - Passion Fruit Mango ice', 'vape', 'Enjoy a tropical fusion of juicy mango and tangy passion fruit with the IGET Soul B40000 Passion Fruit Mango. The mesh coil ensures rich flavour, smooth vapour and a satisfying hit with every puff. With a powerful rechargeable battery and up to 40000 puffs, this disposable vape offers long-lasting performance and premium taste perfect for vape lovers in India who enjoy fruity blends.', ARRAY['✔ Up to 40000 puffs', '✔ Tropical blend of mango + passion fruit', '✔ Mesh coil for rich flavour and smooth vapour', '✔ Rechargeable long-lasting battery', '✔ Leak-proof compact premium design', '✔ Strong throat hit with smooth airflow']::text[], '[]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-soul-b40000-passion-fruit-mango-ice-1.webp', 'local/products/iget-soul-b40000-passion-fruit-mango-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-soul-b40000-mountain-spring-mint-1', 'IGET Soul B40000 - Mountain Spring Mint', 'vape', 'Experience a crisp and icy burst of refreshing mint with IGET SOUL B40000 – Mountain Spring Mint. Inspired by the clean freshness of mountain air, this premium high-puff vape delivers a cool mint flavour, smooth airflow, and rich vapour with every draw. With an impressive 40,000 puff capacity, the IGET SOUL B40000 Mountain Spring Mint is designed for long-lasting performance. Its advanced mesh coil technology helps deliver smooth vapour and consistent flavour, while the rechargeable high-capacity battery offers extended convenience for adult vapers.', ARRAY['Fresh and icy mountain mint flavour', 'Crisp, cool, and refreshing taste', 'Up to 40,000 puffs', 'Advanced mesh coil technology', 'Smooth vapour and consistent flavour', 'Rechargeable high-capacity battery', 'Consistent airflow performance', 'Leak-resistant and compact design', 'Long-lasting premium vape experience']::text[], '[{"label":"Flavour","value":"Mountain Spring Mint"},{"label":"Puff Capacity","value":"Up to 40,000 Puffs"},{"label":"Product Type","value":"High-Puff Rechargeable Vape"},{"label":"Coil","value":"Mesh Coil"},{"label":"Flavour Profile","value":"Cool, Crisp & Refreshing"},{"label":"Design","value":"Compact & Leak-Resistant"}]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-soul-b40000-mountain-spring-mint-1.webp', 'local/products/iget-soul-b40000-mountain-spring-mint-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-soul-b40000-strawberry-raspberry-1', 'IGET Soul B40000 - Strawberry Raspberry', 'vape', 'Enjoy a perfect balance of sweet strawberries and tangy raspberries with the IGET Soul B40000 Strawberry Raspberry disposable vape. Powered with advanced mesh coil technology and a rechargeable long-lasting battery, it delivers consistent flavour, smooth throat hit and dense vapour production. With up to 40000 puffs, it’s ideal for flavour lovers and daily vaping in India.', ARRAY['✔ Up to 40000 puffs', '✔ Sweet strawberry & tangy raspberry blend', '✔ Mesh coil for superior flavour delivery', '✔ Rechargeable high-capacity battery', '✔ Smooth airflow and strong throat hit', '✔ Leak-proof premium build']::text[], '[]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-soul-b40000-strawberry-raspberry-1.webp', 'local/products/iget-soul-b40000-strawberry-raspberry-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-soul-b40000-grape-ice-1', 'IGET Soul B40000 - Grape Ice', 'vape', 'Enjoy a bold burst of sweet purple grape flavour with a refreshing icy finish in IGET SOUL B40000 – Grape Ice. This premium high-puff vape combines rich fruity taste with a cool menthol touch, delivering a smooth and refreshing vaping experience with every draw. With a massive 40,000 puff capacity, the IGET SOUL B40000 Grape Ice is designed for long-lasting performance and consistent flavour. Its advanced mesh coil system provides rich flavour output and dense vapour, while the powerful rechargeable battery ensures reliable performance for extended use.', ARRAY['Sweet purple grape flavour with an icy finish', 'Refreshing menthol cooling sensation', 'Massive 40,000 puff capacity', 'Advanced mesh coil system', 'Rich flavour and dense vapour output', 'Powerful rechargeable battery', 'Smooth and consistent airflow', 'Stable nicotine delivery', 'Compact and portable design', 'Leak-resistant premium build']::text[], '[{"label":"Flavour","value":"Sweet Grape & Ice"},{"label":"Puff Capacity","value":"Up to 40,000 Puffs"},{"label":"Product Type","value":"High-Puff Rechargeable Vape"},{"label":"Coil","value":"Mesh Coil"},{"label":"Flavour Profile","value":"Sweet, Fruity & Refreshing"},{"label":"Design","value":"Compact & Leak-Resistant"}]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-soul-b40000-grape-ice-1.webp', 'local/products/iget-soul-b40000-grape-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-flare-b10000-strawberry-watermelon-kiwi-1', 'IGET FLARE B10000 - Strawberry Watermelon Kiwi', 'vape', 'Enjoy a refreshing burst of fruity flavour with IGET FLARE B10000 – Strawberry Watermelon Kiwi. This premium rechargeable vape combines sweet strawberry, juicy watermelon, and tangy kiwi to deliver a smooth and flavourful vaping experience with every draw. Designed for convenience and long-lasting performance, the IGET FLARE B10000 Strawberry Watermelon Kiwi offers up to 10,000 puffs with consistent vapour delivery. The rechargeable design and Type-C charging interface make it a convenient choice for adult vapers looking for a portable and reliable high-puff vape.', ARRAY['Strawberry, watermelon, and kiwi flavour blend', 'Sweet, juicy, and refreshing fruity taste', 'Up to 10,000 puffs', 'Rechargeable vape device', '5% nicotine by volume', 'Type-C charging interface', 'Smooth and consistent vapour delivery', 'Sleek and stylish design', 'Compact and travel-friendly', 'Long-lasting performance']::text[], '[{"label":"Flavour","value":"Strawberry, Watermelon & Kiwi"},{"label":"Puff Capacity","value":"Up to 10,000 Puffs"},{"label":"Nicotine Strength","value":"5%"},{"label":"Product Type","value":"Rechargeable Vape"},{"label":"Charging","value":"Type-C"},{"label":"Design","value":"Sleek, Compact & Stylish"}]'::jsonb, 1895, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-flare-b10000-strawberry-watermelon-kiwi-1.webp', 'local/products/iget-flare-b10000-strawberry-watermelon-kiwi-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-flare-b10000-strawberry-ice-1', 'IGET FLARE B10000 - Strawberry ice', 'vape', 'Experience unparalleled satisfaction with the IGET FLARE B10000 – Strawberry ice is Rechargeable Device, delivering 10000 puffs of smooth and consistent vapor infused with 5% Nicotine by Volume. Say goodbye to cumbersome devices and hello to the future of vaping. Designed for effortless convenience, the IGET FLARE B10000 – Strawberry ice features a Rechargeable Type-C power interface, ensuring quick and convenient charging whenever needed. Elevate your vaping experience with unmatched performance and style. Key Features:', ARRAY['10000 puffs capacity', '5% Nicotine by Volume for satisfying hits', 'Sleek and stylish design', 'Effortless recharging with Type-C power interface']::text[], '[]'::jsonb, 1895, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-flare-b10000-strawberry-ice-1.webp', 'local/products/iget-flare-b10000-strawberry-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-flare-b10000-cranberry-raspberry-ice-1', 'IGET FLARE B10000 - Cranberry Raspberry ice', 'vape', 'The IGET FLARE B10000 – Cranberry Raspberry ice is Rechargeable Device sounds like a game-changer in the vaping world!', '{}'::text[], '[]'::jsonb, 1895, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-flare-b10000-cranberry-raspberry-ice-1.webp', 'local/products/iget-flare-b10000-cranberry-raspberry-ice-1', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-moonnight-40k-sikanji', 'Elf Bar MoonNight 40k - Sikanji', 'vape', 'Elf Bar Moon Night Sikanji offers a refreshing vaping experience inspired by the classic Indian lemon drink. Blending zesty lemon, subtle sweetness, and cooling notes, this disposable vape delivers smooth draws and consistent vapour. Ideal for users who enjoy tangy, refreshing flavours with long-lasting performance and a premium disposable design.', ARRAY['Authentic Sikanji (lemon drink) flavour', 'Refreshing, tangy & mildly sweet taste', 'Smooth airflow with rich vapour', 'High-puff disposable vape', 'No refilling or charging needed', 'Compact, stylish & easy to carry']::text[], '[]'::jsonb, 3199, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-moonnight-40k-sikanji.webp', 'local/products/elf-bar-moonnight-40k-sikanji', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-soul-b40000-jasmine-mint', 'IGET SOUL B40000 - Jasmine Mint', 'vape', 'The Iget Soul Jasmine Mint disposable vape combines elegant jasmine notes with a cool mint finish for a perfectly balanced flavour. Powered by a high-capacity battery and premium e-liquid, this IGET vape ensures smooth draws and consistent taste till the last puff. Ideal for beginners and experienced vapers, iGet Soul delivers reliability, style, and refreshing satisfaction.', ARRAY['Authentic iGet disposable vape', 'Floral jasmine with cooling mint flavour', 'Smooth throat hit & rich vapour', 'Long-lasting battery life', 'Leak-proof & portable design', 'No refilling or charging required']::text[], '[]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-soul-b40000-jasmine-mint.webp', 'local/products/iget-soul-b40000-jasmine-mint', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-moon-night-blueberry-raspberry-watermelon', 'Elf Bar Moon Night - Blueberry Raspberry Watermelon', 'vape', 'Elf Bar Moon Night Blueberry Raspberry Watermelon offers a refreshing fusion of sweet blueberry, tangy raspberry, and juicy watermelon. This premium disposable vape delivers smooth airflow, rich vapour, and consistent flavour in every puff. Its sleek design and hassle-free use make it perfect for everyday vaping without charging or refilling.', ARRAY['Triple fruit flavour: Blueberry, Raspberry & Watermelon', 'Smooth airflow with dense vapour output', 'Ready-to-use disposable vape device', 'No charging or refilling required', 'Compact, lightweight & portable design', 'Premium Elf Bar Moon Night quality']::text[], '[]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-moon-night-blueberry-raspberry-watermelon.webp', 'local/products/elf-bar-moon-night-blueberry-raspberry-watermelon', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-flare-b10000-tropical-fruit', 'IGET FLARE B10000 - Tropical Fruit', 'vape', 'IGET FLARE B10000 Tropical Fruit Disposable Vape delivers a bold mix of juicy tropical flavors for a sweet and refreshing vaping experience. Designed for durability, it offers up to 10,000 smooth puffs with rich taste and consistent vapor. This pre-filled, pre-charged disposable vape is perfect for fruit lovers seeking vibrant flavor and easy vaping.', ARRAY['Up to 10,000 Puffs', 'Tropical Fruit Flavor Blend', 'Pre-filled & Pre-charged', 'Smooth and rich vapor', 'Compact & travel-friendly', 'No buttons or refills']::text[], '[]'::jsonb, 1895, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-flare-b10000-tropical-fruit.webp', 'local/products/iget-flare-b10000-tropical-fruit', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-flare-b10000-strawberry-lemon', 'IGET FLARE B10000 - Strawberry Lemon', 'vape', 'Experience the refreshing blend of sweet strawberries and tangy lemon with the IGET FLARE B10000 – Strawberry Lemon. Designed for long-lasting performance and bold flavour lovers, this high-capacity disposable vape delivers up to 10,000 smooth puffs, making it an ideal choice for everyday vapers who want reliability, taste, and convenience in one device. Crafted with an upgraded 1.05Ω mesh coil, the FLARE B10000 enhances flavour purity and vapor production, giving you a clean, juicy hit from start to finish.', ARRAY['Flavour: Strawberry Lemon – sweet berries with a crisp lemon twist', 'Puff Capacity: Up to 10,000 puffs', 'E-Liquid: 18ml pre-filled e-juice', 'Battery: 550mAh Rechargeable', 'Charging: USB Type-C fast charging', 'Coil: Advanced 1.05Ω mesh coil for richer flavour', 'Design: Transparent pod, elegant LED light effect', 'Usage: Draw-activated, no buttons or maintenance']::text[], '[]'::jsonb, 1895, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-flare-b10000-strawberry-lemon.webp', 'local/products/iget-flare-b10000-strawberry-lemon', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-soul-b40000-passion-fruit-mango-ice', 'IGET Soul B40000 - Passion Fruit Mango ice', 'vape', 'Enjoy a tropical fusion of juicy mango and tangy passion fruit with the IGET Soul B40000 Passion Fruit Mango. The mesh coil ensures rich flavour, smooth vapour and a satisfying hit with every puff. With a powerful rechargeable battery and up to 40000 puffs, this disposable vape offers long-lasting performance and premium taste perfect for vape lovers in India who enjoy fruity blends.', ARRAY['✔ Up to 40000 puffs', '✔ Tropical blend of mango + passion fruit', '✔ Mesh coil for rich flavour and smooth vapour', '✔ Rechargeable long-lasting battery', '✔ Leak-proof compact premium design', '✔ Strong throat hit with smooth airflow']::text[], '[]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-soul-b40000-passion-fruit-mango-ice.webp', 'local/products/iget-soul-b40000-passion-fruit-mango-ice', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-soul-b40000-strawberry-raspberry', 'IGET Soul B40000 - Strawberry Raspberry', 'vape', 'Enjoy the perfect blend of sweet strawberries and tangy raspberries with IGET SOUL B40000 – Strawberry Raspberry. This premium high-puff vape delivers a rich fruity flavour, smooth airflow, and satisfying vapour with every draw. With up to 40,000 puffs, the IGET SOUL B40000 Strawberry Raspberry is designed for long-lasting performance and consistent flavour. Its advanced mesh coil technology enhances flavour delivery, while the rechargeable high-capacity battery provides extended convenience for adult vapers.', ARRAY['Sweet strawberry and tangy raspberry flavour', 'Rich and balanced fruity taste', 'Up to 40,000 puffs', 'Advanced mesh coil technology', 'Superior flavour delivery', 'Smooth airflow and satisfying throat hit', 'Rechargeable high-capacity battery', 'Dense and consistent vapour', 'Leak-resistant premium build', 'Long-lasting vape performance']::text[], '[{"label":"Flavour","value":"Strawberry & Raspberry"},{"label":"Puff Capacity","value":"Up to 40,000 Puffs"},{"label":"Product Type","value":"High-Puff Rechargeable Vape"},{"label":"Coil","value":"Advanced Mesh Coil"},{"label":"Flavour Profile","value":"Sweet & Tangy"},{"label":"Design","value":"Premium & Leak-Resistant"}]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-soul-b40000-strawberry-raspberry.webp', 'local/products/iget-soul-b40000-strawberry-raspberry', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-soul-b40000-blueberry-ice', 'IGET SOUL B40000 - Blueberry ice', 'vape', 'Experience the refreshing and fruity flavour of IGET SOUL B40000 Blueberry ice, designed for smooth airflow, strong nicotine satisfaction, and long-lasting performance. With a powerful rechargeable battery and mesh coil system, it delivers consistent taste, dense vapour, and a perfect balance of sweet blueberries with a cool icy finish—ideal for everyday vaping in India.', ARRAY['✔️ Massive 40000 puff capacity', '✔️ Rich blueberry flavour with icy finish', '✔️ Mesh coil for premium vapour and taste', '✔️ Rechargeable long-life battery', '✔️ Leak-proof and portable design', '✔️ Smooth airflow and strong hit']::text[], '[]'::jsonb, 3299, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-soul-b40000-blueberry-ice.webp', 'local/products/iget-soul-b40000-blueberry-ice', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-moon-night-40k-strawberry-kiwi-ice', 'Elf Bar Moon Night 40k - Strawberry Kiwi Ice', 'vape', 'A timeless fruit fusion with a frosty edge! Elf Bar Moon Night 40k Strawberry Kiwi Ice blends the sweetness of ripe strawberries and tangy kiwi with a cool menthol finish. Mesh coil technology ensures every puff is smooth and full of flavor. With up to 40,000 puffs, this Type-C rechargeable vape is perfect for fruity menthol fans seeking long-lasting satisfaction. Features:', ARRAY['Sweet strawberry & tart kiwi', 'Menthol kick on every puff', 'Up to 40,000 puffs', 'Smooth mesh coil vapor', 'Type-C rechargeable & leak-proof']::text[], '[]'::jsonb, 3199, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-moon-night-40k-strawberry-kiwi-ice.webp', 'local/products/elf-bar-moon-night-40k-strawberry-kiwi-ice', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-sweet-king-30k-miami-mint', 'Elf bar Sweet king 30k -Miami mint', 'vape', 'Shop Elf bar Sweet king 30k Miami mint at India Vape Shop. Experience the perfect blend of cool mint and refreshing tropical flavors in every puff. This premium disposable vape offers up to 30,000 puffs, ensuring long-lasting satisfaction. Compact, portable, and designed for smooth, flavorful vaping. Order now for a cool, tropical escape!', ARRAY['Miami Mint Flavor: A refreshing blend of cool mint and tropical flavors.', '30,000 Puffs: Long-lasting disposable vape for extended use.', 'Smooth Vaping: Consistent, refreshing flavor with every puff.', 'Portable Design: Compact and easy to carry for on-the-go vaping.', 'Premium Quality: Reliable performance with lasting flavor.', 'Available at India Vape Shop: Shop now for a cool, tropical vaping experience!']::text[], '[]'::jsonb, 2899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-sweet-king-30k-miami-mint.webp', 'local/products/elf-bar-sweet-king-30k-miami-mint', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d3-pro-30k-blueberry-ice', 'Elf Bar Raya D3 Pro 30K - Blueberry Ice', 'vape', 'Enjoy the cool, fruity burst of Elf Bar Raya D3 Pro 30K Blueberry Ice from India Vape Shop! This premium disposable vape blends the sweet, juicy flavor of ripe blueberries with an icy menthol kick for a refreshing and smooth experience. With a satisfying draw and long-lasting performance, it’s the perfect choice for a crisp, flavorful all-day vape!', ARRAY['Sweet & Juicy Flavor – Ripe blueberry taste with a refreshing twist', 'Cooling Menthol Finish – A crisp icy kick for a smooth, invigorating vape', 'Smooth & Satisfying – Designed for a seamless and enjoyable inhale', 'Long-Lasting Performance – High-capacity for extended vaping pleasure', 'Convenient & Portable – Easy-to-use disposable vape for on-the-go use']::text[], '[]'::jsonb, 2999, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d3-pro-30k-blueberry-ice.webp', 'local/products/elf-bar-raya-d3-pro-30k-blueberry-ice', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d3-pro-30-k-miami-mint', 'Elf Bar Raya D3 Pro 30 K - Miami Mint', 'vape', 'Experience the crisp, refreshing taste of Elf Bar Raya D3 Pro 30K Miami Mint from India Vape Shop! This premium disposable vape delivers a cool and invigorating minty blast with a smooth, icy finish. Perfect for a clean, refreshing all-day vape, it offers a satisfying draw and long-lasting performance, making every puff a burst of pure minty freshness!', ARRAY['Cool & Refreshing – Crisp, icy mint flavor for a revitalizing vape', 'Smooth & Satisfying – Designed for a seamless and enjoyable inhale', 'Long-Lasting Performance – High-capacity for extended vaping pleasure', 'Clean & Invigorating – Perfect for a fresh, all-day vaping experience', 'Convenient & Portable – Easy-to-use disposable vape for on-the-go use']::text[], '[]'::jsonb, 2999, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d3-pro-30-k-miami-mint.webp', 'local/products/elf-bar-raya-d3-pro-30-k-miami-mint', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-ice-king-mixed-berries-30k', 'Elf Bar Ice King - Mixed Berries - 30K', 'vape', 'Dive into a medley of delicious fruit flavors with Mixed Berries by Elf Bar Ice King – 30K. This vape offers a vibrant blend of ripe strawberries, blueberries, and raspberries with a touch of icy coolness. Perfect for berry enthusiasts, enjoy a smooth, flavorful experience with every puff. Key Features', ARRAY['ELFBAR ICE KING', 'upto 30,000 puffs', 'ADJUSTABLE COOLNESS', 'ADJUSTABLE POWER & AIRFLOW', '5 LEVEL ADJUSTABLE COOLNESS']::text[], '[]'::jsonb, 2899, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-ice-king-mixed-berries-30k.webp', 'local/products/elf-bar-ice-king-mixed-berries-30k', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iget-flare-b10000-strawberry-watermelon-kiwi', 'IGET FLARE B10000 - Strawberry Watermelon Kiwi', 'vape', 'Experience unparalleled satisfaction with the IGET FLARE B10000 – Strawberry Watermelon Kiwi is Rechargeable Device, delivering 10000 puffs of smooth and consistent vapor infused with 5% Nicotine by Volume. Say goodbye to cumbersome devices and hello to the future of vaping. Designed for effortless convenience, the IGET FLARE B10000 – Strawberry Watermelon Kiwi features a Rechargeable Type-C power interface, ensuring quick and convenient charging whenever needed. Elevate your vaping experience with unmatched performance and style. Key Features:', ARRAY['10000 puffs capacity', '5% Nicotine by Volume for satisfying hits', 'Sleek and stylish design', 'Effortless recharging with Type-C power interface']::text[], '[]'::jsonb, 1895, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iget-flare-b10000-strawberry-watermelon-kiwi.webp', 'local/products/iget-flare-b10000-strawberry-watermelon-kiwi', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('elf-bar-raya-d1-mango-strawberry-ice-cream', 'ELF BAR RAYA D1 - Mango Strawberry Ice Cream', 'vape', 'The ELF BAR RAYA D1 offers ultimate portability and convenience for e-cigarette users. Its lightweight design, durable construction, and premium materials make it an ideal travel companion. Plus, India Vape Shop stands out as a top choice for vapers in India. Features Elf Bar RAYA D1 Disposable Vape PACKAGE LIST', ARRAY['18ml Pre-Filled Vape Juice', '5%(50mg) Nic Salt', 'Rechargeable 650mAh Battery', 'Type-C Port', 'Approximately 13000 Puffs', 'ANTI-DRY', 'E-Liquid & Power Display', 'Charging Port: Type – C']::text[], '[]'::jsonb, 2200, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/elf-bar-raya-d1-mango-strawberry-ice-cream.webp', 'local/products/elf-bar-raya-d1-mango-strawberry-ice-cream', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-bar-berry-grape-8500-puffs', 'Nasty Bar Berry & Grape - (8500 Puffs)', 'vape', 'Enjoy a delicious blend of juicy berries and rich grape flavour with Nasty Bar Berry & Grape – 8500 Puffs. Designed for convenience and consistent performance, this premium high-puff vape delivers smooth flavour and satisfying vapour with every draw. The Nasty Bar Berry & Grape 8500 Puffs features a built-in liquid and battery indicator screen, allowing you to easily monitor your device throughout the day. Powered by a mesh coil and a built-in rechargeable battery, it delivers a smooth and flavourful vaping experience for adult vapers who enjoy fruity blends.', ARRAY['Delicious Berry & Grape flavour blend', 'Rich, juicy, and fruity taste', 'Up to 8,500 puffs', '5% nicotine salts (50mg)', 'Advanced mesh coil technology', 'Built-in liquid and battery indicator', '650mAh built-in battery', 'USB Type-C charging port', 'Smooth and consistent vapour delivery', 'Compact and convenient design']::text[], '[{"label":"Flavour","value":"Berry & Grape"},{"label":"Puff Capacity","value":"Up to 8,500 Puffs"},{"label":"Nicotine Strength","value":"5% (50mg Nicotine Salts)"},{"label":"Coil","value":"Mesh Coil"},{"label":"Battery","value":"650mAh Built-In Battery"},{"label":"Charging","value":"USB Type-C"},{"label":"Display","value":"Liquid & Battery Indicator"}]'::jsonb, 1850, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-bar-berry-grape-8500-puffs.webp', 'local/products/nasty-bar-berry-grape-8500-puffs', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('nasty-bar-red-energy-8500-puffs', 'Nasty Bar Red Energy - (8500 Puffs)', 'vape', 'Experience the bold and refreshing taste of Nasty Bar Red Energy – 8500 Puffs. Designed for adult vapers who enjoy an energising and flavourful vape experience, this premium high-puff vape delivers smooth vapour and consistent performance with every draw. The Nasty Bar Red Energy 8500 Puffs features a smart liquid and battery indicator screen, helping you easily monitor your device throughout the day. Powered by a mesh coil and a built-in rechargeable battery, it provides smooth flavour and reliable performance for a convenient vaping experience.', ARRAY['Bold and refreshing Red Energy flavour', 'Up to 8,500 puffs', '5% nicotine salts (50mg)', 'Advanced mesh coil technology', 'Built-in liquid and battery indicator', '650mAh built-in battery', 'USB Type-C charging port', 'Smooth and consistent vapour delivery', 'Convenient and portable design', 'Premium high-puff vape experience']::text[], '[{"label":"Flavour","value":"Red Energy"},{"label":"Puff Capacity","value":"Up to 8,500 Puffs"},{"label":"Nicotine Strength","value":"5% (50mg Nicotine Salts)"},{"label":"Coil","value":"Mesh Coil"},{"label":"Battery","value":"650mAh Built-In Battery"},{"label":"Charging","value":"USB Type-C"},{"label":"Display","value":"Liquid & Battery Indicator"}]'::jsonb, 1850, null, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/nasty-bar-red-energy-8500-puffs.webp', 'local/products/nasty-bar-red-energy-8500-puffs', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iqos-terea-twilight-pearl-vape-shop-chennai', 'IQOS TEREA - Twilight Pearl', 'vape', 'Discover the refined experience of IQOS TEREA Twilight Pearl. Designed exclusively for compatible IQOS ILUMA devices, TEREA Twilight Pearl offers a rich and smooth tobacco experience with a refreshing aromatic finish. Crafted for adult users who prefer a modern tobacco-heating experience, IQOS TEREA Twilight Pearl delivers consistent flavour and a clean, convenient alternative to traditional cigarette use. Its specially designed tobacco sticks provide a balanced taste with every session.', ARRAY['Rich and smooth tobacco flavour', 'Refreshing aromatic finish', 'Designed for IQOS ILUMA compatible devices', 'Consistent flavour experience', 'Convenient stick format', 'Modern heated tobacco experience', 'Easy to carry and use', 'Premium TEREA quality']::text[], '[{"label":"Product","value":"IQOS TEREA Twilight Pearl"},{"label":"Product Type","value":"Heated Tobacco Sticks"},{"label":"Compatibility","value":"IQOS ILUMA Compatible Devices"},{"label":"Flavour Profile","value":"Smooth Tobacco & Aromatic Notes"},{"label":"Category","value":"Premium TEREA Tobacco Sticks"}]'::jsonb, 8000, 5000, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iqos-terea-twilight-pearl-vape-shop-chennai.jpeg', 'local/products/iqos-terea-twilight-pearl-vape-shop-chennai', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iqos-terea-silver-vape-shop-chennai', 'IQOS TEREA - SILVER', 'vape', 'IQOS TEREA - SILVER — a premium vape product with consistent flavour and reliable performance, puff after puff.', '{}'::text[], '[]'::jsonb, 8000, 5000, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iqos-terea-silver-vape-shop-chennai.jpeg', 'local/products/iqos-terea-silver-vape-shop-chennai', 0 from p;

with p as (
  insert into products (slug, name, category, description, highlights, specifications, base_price, sale_price, tags, status)
  values ('iqos-terea-bronze-vape-shop-chennai', 'IQOS TEREA - BRONZE', 'vape', 'IQOS TEREA - BRONZE — a premium vape product with consistent flavour and reliable performance, puff after puff.', ARRAY['Rich and smooth tobacco flavour', 'Refreshing aromatic finish', 'Designed for IQOS ILUMA compatible devices', 'Consistent flavour experience', 'Convenient stick format', 'Modern heated tobacco experience', 'Easy to carry and use', 'Premium TEREA quality']::text[], '[{"label":"Product","value":"IQOS TEREA Twilight Pearl"},{"label":"Product Type","value":"Heated Tobacco Sticks"},{"label":"Compatibility","value":"IQOS ILUMA Compatible Devices"},{"label":"Flavour Profile","value":"Smooth Tobacco & Aromatic Notes"},{"label":"Category","value":"Premium TEREA Tobacco Sticks"}]'::jsonb, 8000, 5000, '{}'::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
    highlights = excluded.highlights,
    specifications = excluded.specifications,
    base_price = excluded.base_price,
    sale_price = excluded.sale_price,
    tags = excluded.tags,
    status = excluded.status
  returning id
), del as (
  delete from product_images where product_id in (select id from p) returning 1
)
insert into product_images (product_id, url, public_id, sort_order)
select id, '/products/iqos-terea-bronze-vape-shop-chennai.jpeg', 'local/products/iqos-terea-bronze-vape-shop-chennai', 0 from p;
