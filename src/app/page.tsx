import Link from "next/link";
import { Container } from "@/components/ui/Container";
import { ProductGrid } from "@/components/product/ProductGrid";
import { Hero } from "@/components/home/Hero";
import { CategorySection } from "@/components/home/CategorySection";
import { HotOffersBanner } from "@/components/home/HotOffersBanner";
import { WhyShopWithUs } from "@/components/home/WhyShopWithUs";
import { FaqAccordion } from "@/components/home/FaqAccordion";
import { ContactDeliveryInfo } from "@/components/home/ContactDeliveryInfo";
import { getProducts } from "@/lib/products";
import type { ProductTag } from "@/lib/types";

export const revalidate = 60;

async function ProductSection({ title, tag, href }: { title: string; tag: ProductTag; href: string }) {
  const products = await getProducts({ status: "active", tag });
  if (products.length === 0) return null;

  return (
    <section className="py-10">
      <Container>
        <div className="flex items-center justify-between">
          <h2 className="text-2xl font-bold text-foreground">{title}</h2>
          <Link href={href} className="text-sm font-medium text-accent hover:underline">
            View all
          </Link>
        </div>
        <div className="mt-6">
          <ProductGrid products={products} />
        </div>
      </Container>
    </section>
  );
}

export default function Home() {
  return (
    <>
      <Hero />
      <CategorySection />
      <ProductSection title="New Arrivals" tag="new-arrival" href="/shop?tag=new-arrival" />
      <ProductSection title="Trending Now" tag="trending" href="/shop?tag=trending" />
      <ProductSection title="Bestseller Now" tag="bestseller" href="/shop?tag=bestseller" />
      <HotOffersBanner />
      <WhyShopWithUs />
      <FaqAccordion />
      <ContactDeliveryInfo />
    </>
  );
}
