import type { Product, ProductTag } from "./types";

export interface ProductFilters {
  tag?: ProductTag;
  min?: number;
  max?: number;
  q?: string;
}

export function filterProducts(products: Product[], filters: ProductFilters): Product[] {
  const q = filters.q?.trim().toLowerCase();

  return products.filter((p) => {
    if (filters.tag && !p.tags.includes(filters.tag)) return false;
    const price = p.sale_price ?? p.base_price;
    if (filters.min != null && price < filters.min) return false;
    if (filters.max != null && price > filters.max) return false;
    if (q && !p.name.toLowerCase().includes(q) && !(p.description ?? "").toLowerCase().includes(q)) return false;
    return true;
  });
}

export function parseFiltersFromSearchParams(searchParams: Record<string, string | string[] | undefined>): ProductFilters {
  const tag = typeof searchParams.tag === "string" ? (searchParams.tag as ProductTag) : undefined;
  const min = typeof searchParams.min === "string" ? Number(searchParams.min) : undefined;
  const max = typeof searchParams.max === "string" ? Number(searchParams.max) : undefined;
  const q = typeof searchParams.q === "string" ? searchParams.q : undefined;
  return {
    tag,
    min: Number.isFinite(min) ? min : undefined,
    max: Number.isFinite(max) ? max : undefined,
    q,
  };
}
