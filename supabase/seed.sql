-- Seed data for the initial vape catalog (33 products).
-- Generated from public/vapes/*.jpeg filenames (price) + curated names.
-- Run AFTER schema.sql, in the Supabase SQL editor.
-- Re-running is safe: it upserts by slug.

with p as (
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('frost-blaze-6000', 'Frost Blaze 6000', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 1000, 850, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('arctic-storm-x', 'Arctic Storm X', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 1450, null, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('nimbus-cloud-pro', 'Nimbus Cloud Pro', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 1500, null, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('velocity-ice-7000', 'Velocity Ice 7000', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 1550, 1320, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('thunder-vault', 'Thunder Vault', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 1600, null, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('midnight-mirage', 'Midnight Mirage', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 1700, null, ARRAY['new-arrival']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('solar-flare-8000', 'Solar Flare 8000', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 1750, 1490, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('crimson-surge', 'Crimson Surge', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 1800, null, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('glacier-peak', 'Glacier Peak', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 1801, null, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('obsidian-rush', 'Obsidian Rush', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 2000, 1700, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('electra-storm', 'Electra Storm', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 2250, null, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('quantum-puff', 'Quantum Puff', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 2300, null, ARRAY['trending']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('neon-cascade', 'Neon Cascade', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 2400, 2040, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('titan-vortex', 'Titan Vortex', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 2500, null, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('aurora-blast', 'Aurora Blast', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 2501, null, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('phantom-ice', 'Phantom Ice', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 2502, 2130, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('volcano-ember', 'Volcano Ember', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 2600, null, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('stormrider-9000', 'Stormrider 9000', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 2800, null, ARRAY['bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('lunar-frost', 'Lunar Frost', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 2900, 2470, ARRAY['trending', 'bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('radiant-nova', 'Radiant Nova', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 3000, null, ARRAY['trending', 'bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('shadow-cyclone', 'Shadow Cyclone', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 3001, null, ARRAY['trending', 'bestseller']::product_tag[], 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('blizzard-edge', 'Blizzard Edge', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 3002, 2550, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('ember-rush', 'Ember Rush', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 3003, null, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('comet-chill', 'Comet Chill', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 3004, null, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('zenith-storm', 'Zenith Storm', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 3005, 2550, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('prism-fusion', 'Prism Fusion', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 3006, null, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('onyx-vapor-x', 'Onyx Vapor X', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 3007, null, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('cyclone-frost', 'Cyclone Frost', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 3008, 2560, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('meteor-blast', 'Meteor Blast', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 3009, null, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('twilight-surge', 'Twilight Surge', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 3010, null, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('inferno-ice', 'Inferno Ice', 'vape', 'A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.', 3011, 2560, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('galaxy-mist', 'Galaxy Mist', 'vape', 'Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.', 5000, null, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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
  insert into products (slug, name, category, description, base_price, sale_price, tags, status)
  values ('infinity-9000', 'Infinity 9000', 'vape', 'Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.', 5001, null, '{}', 'active')
  on conflict (slug) do update set
    name = excluded.name,
    description = excluded.description,
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

