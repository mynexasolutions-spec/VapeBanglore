import Image from "next/image";
import Link from "next/link";
import { Container } from "@/components/ui/Container";

const CATEGORIES = [
  { image: "/category/cate-1.png", label: "Pod Systems" },
  { image: "/category/cate-2.png", label: "Box Mods" },
  { image: "/category/cate-3.png", label: "Vape Pens" },
  { image: "/category/cate-4.png", label: "Pod Kits" },
  { image: "/category/cate-5.png", label: "Disposables" },
  { image: "/category/cate-6.png", label: "Sub-Ohm Kits" },
  { image: "/category/cate-7.png", label: "Starter Kits" },
];

export function CategorySection() {
  return (
    <section className="pt-6 pb-14 sm:pt-14">
      <Container className="text-center">
        <h2 className="text-2xl font-extrabold uppercase tracking-wide text-foreground sm:text-3xl">
          Shop by Category
        </h2>
        <p className="mt-2 text-sm text-muted">Explore our vape collection</p>

        <div className="mt-8 grid grid-cols-3 gap-3 sm:grid-cols-4 sm:gap-4 lg:grid-cols-7">
          {CATEGORIES.map((c) => (
            <Link
              key={c.label}
              href="/shop"
              className="group relative block aspect-3/4 overflow-hidden rounded-xl border border-accent/40 bg-black transition hover:border-accent hover:shadow-lg hover:shadow-accent/10"
            >
              <Image
                src={c.image}
                alt={c.label}
                fill
                sizes="(min-width: 1024px) 14vw, (min-width: 640px) 22vw, 30vw"
                className="object-cover transition duration-300 group-hover:scale-105"
              />
              <div className="absolute inset-0 bg-linear-to-t from-black/90 via-black/0 to-black/10" />
              <span className="absolute inset-x-0 bottom-0 px-1.5 pb-2 text-center text-[10px] font-bold uppercase tracking-wide text-foreground sm:text-xs">
                {c.label}
              </span>
            </Link>
          ))}
        </div>
      </Container>
    </section>
  );
}
