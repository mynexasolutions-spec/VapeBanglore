import Image from "next/image";
import Link from "next/link";
import { Container } from "@/components/ui/Container";

interface CollectionTile {
  label: string;
  href: string;
  image: string | undefined;
}

export function TopCollectionsSection({ tiles }: { tiles: CollectionTile[] }) {
  const visible = tiles.filter((t) => t.image);
  if (visible.length === 0) return null;

  return (
    <section className="py-10">
      <Container className="text-center">
        <h2 className="text-2xl font-extrabold uppercase tracking-wide text-foreground sm:text-3xl">
          Top Collections
        </h2>
        <p className="mt-2 text-sm text-muted">Shop by your favourite brand</p>

        <div className="mt-8 grid grid-cols-2 gap-4 lg:grid-cols-4">
          {visible.map((t) => (
            <Link
              key={t.label}
              href={t.href}
              className="group relative block aspect-square overflow-hidden rounded-2xl border border-accent/40 bg-black transition hover:border-accent hover:shadow-lg hover:shadow-accent/10"
            >
              <Image
                src={t.image!}
                alt={t.label}
                fill
                sizes="(min-width: 1024px) 22vw, 45vw"
                className="object-cover transition duration-300 group-hover:scale-105"
              />
              <div className="absolute inset-0 bg-linear-to-t from-black/90 via-black/10 to-black/10" />
              <span className="absolute inset-x-0 bottom-0 px-2 pb-4 text-center text-sm font-bold uppercase tracking-wide text-foreground sm:text-base">
                {t.label}
              </span>
            </Link>
          ))}
        </div>
      </Container>
    </section>
  );
}
