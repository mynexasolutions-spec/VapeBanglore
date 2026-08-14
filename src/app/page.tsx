import Link from "next/link";
import { Container } from "@/components/ui/Container";
import { ProductGrid } from "@/components/product/ProductGrid";
import { Hero } from "@/components/home/Hero";
import { CategorySection } from "@/components/home/CategorySection";
import { TopCollectionsSection } from "@/components/home/TopCollectionsSection";
import { HotOffersBanner } from "@/components/home/HotOffersBanner";
import { WhyShopWithUs } from "@/components/home/WhyShopWithUs";
import { FaqAccordion } from "@/components/home/FaqAccordion";
import { ContactDeliveryInfo } from "@/components/home/ContactDeliveryInfo";
import { getProducts } from "@/lib/products";
import { isElfBar, isIget, isNicSaltsOrAccessory } from "@/lib/brands";
import type { Product } from "@/lib/types";

export const revalidate = 60;

function ProductRow({ title, products, href, limit = 8 }: { title: string; products: Product[]; href: string; limit?: number }) {
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
          <ProductGrid products={products.slice(0, limit)} />
        </div>
      </Container>
    </section>
  );
}

export default async function Home() {
  const products = await getProducts({ status: "active" });

  const newArrivals = products.filter((p) => p.tags.includes("new-arrival"));
  const trending = products.filter((p) => p.tags.includes("trending"));
  const bestsellers = products.filter((p) => p.tags.includes("bestseller"));
  const elfBar = products.filter(isElfBar);
  const iget = products.filter(isIget);
  const nicSalts = products.filter(isNicSaltsOrAccessory);

  return (
    <>
      <Hero />
      <CategorySection />
      <ProductRow title="New Arrivals" products={newArrivals} href="/shop?tag=new-arrival" />
      <ProductRow title="Trending Now" products={trending} href="/shop?tag=trending" />
      <ProductRow title="Bestseller Now" products={bestsellers} href="/shop?tag=bestseller" />

      <ProductRow title="Elf Bar Vape" products={elfBar} href="/shop?q=elf+bar" />

      <TopCollectionsSection
        tiles={[
          { label: "Elf Bar", href: "/shop?q=elf+bar", image: elfBar[0]?.images[0]?.url },
          { label: "IGET Vape", href: "/shop?q=iget", image: iget[0]?.images[0]?.url },
          { label: "Nic Salts", href: "/shop?q=nic+salt", image: nicSalts[0]?.images[0]?.url },
          { label: "New Arrivals", href: "/shop?tag=new-arrival", image: newArrivals[0]?.images[0]?.url },
        ]}
      />

      <ProductRow title="IGET Vape" products={iget} href="/shop?q=iget" />
      <ProductRow title="Nic Salts Vape" products={nicSalts} href="/shop?q=nic+salt" />

      <HotOffersBanner />
      <WhyShopWithUs />
      <FaqAccordion />
      <ContactDeliveryInfo />
    </>
  );
}
