import { slugify } from "@/lib/format";
import type { Product, ProductTag } from "@/lib/types";

const FILES = [
  "1000.jpeg", "1450.jpeg", "1500.jpeg", "1550.jpeg", "1600.jpeg", "1700.jpeg", "1750.jpeg",
  "1800.jpeg", "1801.jpeg", "2000.jpeg", "2250.jpeg", "2300.jpeg", "2400.jpeg", "2500.jpeg",
  "2501.jpeg", "2502.jpeg", "2600.jpeg", "2800.jpeg", "2900.jpeg", "3000.jpeg", "3001.jpeg",
  "3002.jpeg", "3003.jpeg", "3004.jpeg", "3005.jpeg", "3006.jpeg", "3007.jpeg", "3008.jpeg",
  "3009.jpeg", "3010.jpeg", "3011.jpeg", "5000.jpeg", "5001.jpeg",
];

const NAMES = [
  "Frost Blaze 6000", "Arctic Storm X", "Nimbus Cloud Pro", "Velocity Ice 7000", "Thunder Vault",
  "Midnight Mirage", "Solar Flare 8000", "Crimson Surge", "Glacier Peak", "Obsidian Rush",
  "Electra Storm", "Quantum Puff", "Neon Cascade", "Titan Vortex", "Aurora Blast",
  "Phantom Ice", "Volcano Ember", "Stormrider 9000", "Lunar Frost", "Radiant Nova",
  "Shadow Cyclone", "Blizzard Edge", "Ember Rush", "Comet Chill", "Zenith Storm",
  "Prism Fusion", "Onyx Vapor X", "Cyclone Frost", "Meteor Blast", "Twilight Surge",
  "Inferno Ice", "Galaxy Mist", "Infinity 9000",
];

const DESCRIPTIONS = [
  "A premium disposable vape delivering rich, authentic flavor with a smooth mesh-coil draw from the very first puff to the last.",
  "Long-lasting battery and dense clouds in a sleek, pocket-friendly disposable built for all-day vaping.",
  "Bold flavor, consistent airflow, and a satisfying throat hit — engineered for vapers who want it all in one device.",
];

function tagsForIndex(i: number): ProductTag[] {
  if (i < 6) return ["new-arrival"];
  if (i < 12) return ["trending"];
  if (i < 18) return ["bestseller"];
  if (i < 21) return ["trending", "bestseller"];
  return [];
}

function roundTo10(value: number): number {
  return Math.round(value / 10) * 10;
}

const now = new Date().toISOString();

export const VAPE_CATALOG: Product[] = FILES.map((file, i) => {
  const price = Number(file.replace(/\.jpeg$/, ""));
  const name = NAMES[i % NAMES.length];
  const slug = slugify(name);
  const salePrice = i % 3 === 0 ? roundTo10(price * 0.85) : null;

  return {
    id: `seed-${String(i + 1).padStart(2, "0")}`,
    slug,
    name,
    category: "vape",
    description: DESCRIPTIONS[i % DESCRIPTIONS.length],
    base_price: price,
    sale_price: salePrice,
    tags: tagsForIndex(i),
    status: "active",
    created_at: now,
    updated_at: now,
    variants: [],
    images: [
      {
        id: `seed-${String(i + 1).padStart(2, "0")}-img`,
        product_id: `seed-${String(i + 1).padStart(2, "0")}`,
        url: `/vapes/${file}`,
        public_id: `local/vapes/${file}`,
        width: null,
        height: null,
        format: "jpeg",
        sort_order: 0,
      },
    ],
  };
});
