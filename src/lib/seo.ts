import type { Product } from "@/lib/types";
import { SITE_CONFIG } from "@/lib/site-config";
import { isElfBar, isIget, isNicSaltsOrAccessory } from "@/lib/brands";
import { formatPrice } from "@/lib/format";

const STOPWORDS = new Set([
  "with", "and", "the", "in", "of", "for", "a", "an", "to", "your", "our",
  "is", "are", "on", "at", "by", "from",
]);

function nameKeywords(name: string): string[] {
  return name
    .split(/[\s\-–,()|]+/)
    .map((w) => w.trim())
    .filter((w) => w.length > 1 && !STOPWORDS.has(w.toLowerCase()))
    .map((w) => w.toLowerCase());
}

function truncate(text: string, max: number): string {
  if (text.length <= max) return text;
  const cut = text.slice(0, max);
  const lastSpace = cut.lastIndexOf(" ");
  return `${(lastSpace > 40 ? cut.slice(0, lastSpace) : cut).trim()}…`;
}

export interface ProductSeo {
  title: string;
  description: string;
  keywords: string[];
}

export function buildProductSeo(product: Product): ProductSeo {
  const description = truncate(
    product.description?.trim() ||
      `Buy ${product.name} online at ${SITE_CONFIG.name} — ${formatPrice(product.sale_price ?? product.base_price)}, fast delivery across Bangalore. Order on WhatsApp.`,
    160
  );

  const brand = isElfBar(product) ? "Elf Bar" : isIget(product) ? "IGET" : isNicSaltsOrAccessory(product) ? "Nic Salts" : null;

  const keywords = Array.from(
    new Set(
      [
        ...nameKeywords(product.name),
        brand?.toLowerCase(),
        brand ? `${brand.toLowerCase()} vape` : null,
        "vape",
        "vape online",
        "buy vape online india",
        "vape shop bangalore",
        SITE_CONFIG.name.toLowerCase(),
      ].filter((k): k is string => Boolean(k))
    )
  ).slice(0, 15);

  return { title: product.name, description, keywords };
}
