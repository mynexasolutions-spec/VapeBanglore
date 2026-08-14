export type ProductCategory = "vape";
export type ProductStatus = "active" | "draft";
export type ProductTag = "trending" | "bestseller" | "new-arrival";

export interface ProductVariant {
  id: string;
  product_id: string;
  name: string;
  price_override: number | null;
  in_stock: boolean;
  sort_order: number;
}

export interface ProductImage {
  id: string;
  product_id: string;
  url: string;
  public_id: string;
  width: number | null;
  height: number | null;
  format: string | null;
  sort_order: number;
}

export interface ProductSpecification {
  label: string;
  value: string;
}

export interface Product {
  id: string;
  slug: string;
  name: string;
  category: ProductCategory;
  description: string | null;
  highlights: string[];
  specifications: ProductSpecification[];
  base_price: number;
  sale_price: number | null;
  tags: ProductTag[];
  status: ProductStatus;
  created_at: string;
  updated_at: string;
  variants: ProductVariant[];
  images: ProductImage[];
}
