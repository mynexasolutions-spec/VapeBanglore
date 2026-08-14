import type { Product } from "@/lib/types";

// Lightweight brand classification for the homepage's brand sections
// ("Elf Bar Vape", "IGET Vape", "Nic Salts Vape"). Derived from the product
// name rather than a stored field, since every product already encodes its
// brand in its name (matching how the source catalog itself is organised).

export function isElfBar(p: Product): boolean {
  return /^elf bar/i.test(p.name);
}

export function isIget(p: Product): boolean {
  return /^iget/i.test(p.name);
}

// Nic-salt e-liquids plus the pod/coil/device accessories that are sold
// alongside them (the reference site's "Nic Salts" collection groups both).
export function isNicSaltsOrAccessory(p: Product): boolean {
  return /nic\s*salt|nicotine salt|pod salt|replacement (pod|coil)|caliburn|\bjuul|\biqos\b|\bterea\b|\bnasty\b/i.test(p.name);
}
