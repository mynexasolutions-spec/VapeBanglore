import { createClient } from "@/lib/supabase/server";
import type { Product, ProductCategory, ProductTag, ProductStatus, ProductVariant, ProductImage } from "@/lib/types";
import { VAPE_CATALOG } from "@/lib/vape-catalog";

const PRODUCT_SELECT = "*, variants:product_variants(*), images:product_images(*)";

interface ProductRow {
  id: string;
  slug: string;
  name: string;
  category: ProductCategory;
  description: string | null;
  base_price: number;
  sale_price: number | null;
  tags: ProductTag[];
  status: ProductStatus;
  created_at: string;
  updated_at: string;
  variants: ProductVariant[];
  images: ProductImage[];
}

function mapRow(row: ProductRow): Product {
  return {
    ...row,
    variants: [...row.variants].sort((a, b) => a.sort_order - b.sort_order),
    images: [...row.images].sort((a, b) => a.sort_order - b.sort_order),
  };
}

export interface ProductQuery {
  tag?: ProductTag;
  status?: ProductStatus;
}

function fallbackToSeed(query: ProductQuery): Product[] {
  return VAPE_CATALOG.filter((p) => {
    if (query.status && p.status !== query.status) return false;
    if (query.tag && !p.tags.includes(query.tag)) return false;
    return true;
  });
}

// Supabase isn't configured/reachable yet in this environment (e.g. before
// .env.local has real credentials) — fall back to the local seed catalog so
// the storefront still renders during development instead of erroring.
export async function getProducts(query: ProductQuery = {}): Promise<Product[]> {
  try {
    const supabase = await createClient();
    let q = supabase.from("products").select(PRODUCT_SELECT).order("created_at", { ascending: false });

    if (query.status) q = q.eq("status", query.status);
    if (query.tag) q = q.contains("tags", [query.tag]);

    const { data, error } = await q;
    if (error) throw error;
    return (data as unknown as ProductRow[]).map(mapRow);
  } catch {
    return fallbackToSeed(query);
  }
}

export async function getProductBySlug(slug: string): Promise<Product | null> {
  try {
    const supabase = await createClient();
    const { data, error } = await supabase.from("products").select(PRODUCT_SELECT).eq("slug", slug).maybeSingle();
    if (error) throw error;
    return data ? mapRow(data as unknown as ProductRow) : null;
  } catch {
    return VAPE_CATALOG.find((p) => p.slug === slug) ?? null;
  }
}

export async function getProductById(id: string): Promise<Product | null> {
  try {
    const supabase = await createClient();
    const { data, error } = await supabase.from("products").select(PRODUCT_SELECT).eq("id", id).maybeSingle();
    if (error) throw error;
    return data ? mapRow(data as unknown as ProductRow) : null;
  } catch {
    return VAPE_CATALOG.find((p) => p.id === id) ?? null;
  }
}

export interface VariantInput {
  name: string;
  price_override: number | null;
  in_stock: boolean;
  sort_order: number;
}

export async function replaceProductVariants(productId: string, variants: VariantInput[]) {
  const supabase = await createClient();
  const { error: deleteError } = await supabase.from("product_variants").delete().eq("product_id", productId);
  if (deleteError) throw deleteError;

  if (variants.length > 0) {
    const { error } = await supabase
      .from("product_variants")
      .insert(variants.map((v) => ({ ...v, product_id: productId })));
    if (error) throw error;
  }
}

export interface ImageInput {
  url: string;
  public_id: string;
  width: number | null;
  height: number | null;
  format: string | null;
  sort_order: number;
}

export async function replaceProductImages(productId: string, images: ImageInput[]) {
  const supabase = await createClient();
  const { error: deleteError } = await supabase.from("product_images").delete().eq("product_id", productId);
  if (deleteError) throw deleteError;

  if (images.length > 0) {
    const { error } = await supabase
      .from("product_images")
      .insert(images.map((img) => ({ ...img, product_id: productId })));
    if (error) throw error;
  }
}
