import type { Product } from "@/lib/types";
import { ProductCard } from "./ProductCard";

export function ProductGrid({ products, emptyMessage = "No products found." }: { products: Product[]; emptyMessage?: string }) {
  if (products.length === 0) {
    return <p className="py-16 text-center text-sm text-muted">{emptyMessage}</p>;
  }

  return (
    <div className="grid grid-cols-2 gap-4 sm:grid-cols-3 lg:grid-cols-4">
      {products.map((product) => (
        <ProductCard key={product.id} product={product} />
      ))}
    </div>
  );
}
