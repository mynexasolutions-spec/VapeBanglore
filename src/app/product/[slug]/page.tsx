import type { Metadata } from "next";
import { notFound } from "next/navigation";
import Link from "next/link";
import { Container } from "@/components/ui/Container";
import { ProductDetail } from "@/components/product/ProductDetail";
import { ProductGrid } from "@/components/product/ProductGrid";
import { getProductBySlug, getProducts } from "@/lib/products";
import { buildProductSeo } from "@/lib/seo";
import type { Product } from "@/lib/types";

export const revalidate = 60;

function getRelatedProducts(product: Product, all: Product[], limit = 4): Product[] {
  const others = all.filter((p) => p.id !== product.id && p.status === "active");
  const brand = product.name.split(/[\s–-]/)[0]?.toLowerCase();
  const sameBrand = brand ? others.filter((p) => p.name.toLowerCase().startsWith(brand)) : [];
  const rest = others.filter((p) => !sameBrand.includes(p));
  return [...sameBrand, ...rest].slice(0, limit);
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug: string }>;
}): Promise<Metadata> {
  const { slug } = await params;
  const product = await getProductBySlug(slug);
  if (!product) return { title: "Product not found" };

  const seo = buildProductSeo(product);
  const image = product.images[0]?.url;

  return {
    title: seo.title,
    description: seo.description,
    keywords: seo.keywords,
    openGraph: {
      title: seo.title,
      description: seo.description,
      type: "website",
      images: image ? [{ url: image }] : undefined,
    },
    twitter: {
      card: "summary_large_image",
      title: seo.title,
      description: seo.description,
      images: image ? [image] : undefined,
    },
  };
}

export default async function ProductPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  const product = await getProductBySlug(slug);
  if (!product || product.status !== "active") notFound();

  const allProducts = await getProducts({ status: "active" });
  const related = getRelatedProducts(product, allProducts);

  return (
    <Container className="py-10">
      <ProductDetail product={product} />

      {related.length > 0 && (
        <section className="mt-16">
          <div className="flex items-center justify-between">
            <h2 className="text-2xl font-bold text-foreground">You May Also Like</h2>
            <Link href="/shop" className="text-sm font-medium text-accent hover:underline">
              View all
            </Link>
          </div>
          <div className="mt-6">
            <ProductGrid products={related} />
          </div>
        </section>
      )}
    </Container>
  );
}
