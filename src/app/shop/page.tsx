import type { Metadata } from "next";
import { Container } from "@/components/ui/Container";
import { ProductGrid } from "@/components/product/ProductGrid";
import { PriceRangeFilter } from "@/components/shop/PriceRangeFilter";
import { getProducts } from "@/lib/products";
import { filterProducts, parseFiltersFromSearchParams } from "@/lib/filters";

export const metadata: Metadata = { title: "Shop" };
export const revalidate = 60;

export default async function ShopPage({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
}) {
  const params = await searchParams;
  const filters = parseFiltersFromSearchParams(params);
  const products = await getProducts({ status: "active", tag: filters.tag });
  const filtered = filterProducts(products, filters);

  return (
    <Container className="py-10">
      <h1 className="text-3xl font-bold text-foreground">Shop All Vapes</h1>
      <div className="mt-6">
        <PriceRangeFilter basePath="/shop" activeMin={filters.min} activeMax={filters.max} />
      </div>
      <div className="mt-8">
        <ProductGrid products={filtered} />
      </div>
    </Container>
  );
}
