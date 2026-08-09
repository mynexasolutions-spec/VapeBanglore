import Image from "next/image";
import Link from "next/link";
import { Container } from "@/components/ui/Container";
import { SITE_CONFIG } from "@/lib/site-config";
import { buildWhatsAppGenericLink } from "@/lib/whatsapp";

export function Hero() {
  return (
    <section className="relative border-b border-border bg-background">
      <h1 className="sr-only">{SITE_CONFIG.name} Vape Shop &mdash; Premium Vapes in Bangalore</h1>

      <div className="relative aspect-5/2 w-full overflow-hidden sm:aspect-auto sm:h-72 md:h-96 lg:h-110">
        <Image
          src="/images/banner-mobile.png"
          alt="Vaporé Vape Shop — premium quality, trusted brands, fast & safe delivery"
          fill
          priority
          sizes="100vw"
          className="block object-cover sm:hidden"
        />
        <Image
          src="/images/banner.png"
          alt="Vaporé Vape Shop — premium quality, trusted brands, fast & safe delivery"
          fill
          priority
          sizes="100vw"
          className="hidden object-cover object-[25%_center] sm:block lg:object-[35%_center]"
        />

        <div className="absolute inset-0 bg-linear-to-b from-black/60 via-transparent to-black/20" />

        <span className="absolute left-3 top-3 inline-flex items-center gap-1.5 rounded-full border border-accent/50 bg-black/50 px-2.5 py-1 text-[10px] font-bold uppercase tracking-wide text-accent backdrop-blur sm:left-6 sm:top-6 sm:px-3 sm:text-xs">
          🏆 #1 Rated Shop in Bangalore
        </span>

        <div className="absolute right-0 top-1/2 z-10 hidden -translate-y-1/2 flex-col items-end gap-3 sm:flex">
          <Link
            href="/shop?tag=trending"
            className="rounded-l-lg bg-danger px-3 py-3 text-[11px] font-bold uppercase leading-tight tracking-wide text-white shadow-lg transition hover:pr-4"
            style={{ writingMode: "vertical-rl" }}
          >
            Hot Offers %
          </Link>
          <Link
            href="/shop"
            className="rounded-l-lg bg-brand px-3 py-3 text-[11px] font-bold uppercase leading-tight tracking-wide text-background shadow-lg transition hover:pr-4"
            style={{ writingMode: "vertical-rl" }}
          >
            Choose Price
          </Link>
        </div>
      </div>

      <div className="relative">
        <Container className="flex flex-wrap items-center justify-center gap-2 py-4 sm:gap-3 sm:py-9">
          <a
            href={buildWhatsAppGenericLink("Hi, I'd like to place an order.")}
            target="_blank"
            rel="noopener noreferrer"
            className="inline-flex items-center gap-1.5 rounded-full bg-sale px-4 py-2 text-xs font-bold text-background shadow-lg transition hover:opacity-90 sm:gap-2 sm:px-6 sm:py-3 sm:text-sm"
          >
            <Image src="/whatsapp.png" alt="" width={16} height={16} className="h-4 w-4" />
            WhatsApp
          </a>
          <Link
            href="/shop"
            className="inline-flex items-center gap-1.5 rounded-full bg-danger px-4 py-2 text-xs font-bold text-white shadow-lg transition hover:opacity-90 sm:gap-2 sm:px-6 sm:py-3 sm:text-sm"
          >
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
              <circle cx="9" cy="21" r="1" />
              <circle cx="20" cy="21" r="1" />
              <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6" />
            </svg>
            Shop Now
          </Link>
        </Container>

        <div className="fixed right-0 top-1/2 z-30 flex -translate-y-1/2 flex-col items-end gap-2 sm:hidden">
          <Link
            href="/shop?tag=trending"
            className="rounded-r-md bg-danger px-2 py-2.5 text-[9px] font-bold uppercase leading-tight tracking-wide text-white shadow-lg transition hover:pr-3"
            style={{ writingMode: "vertical-rl", transform: "rotate(180deg)" }}
          >
            Hot Offers %
          </Link>
          <Link
            href="/shop"
            className="rounded-r-md bg-brand px-2 py-2.5 text-[9px] font-bold uppercase leading-tight tracking-wide text-background shadow-lg transition hover:pr-3"
            style={{ writingMode: "vertical-rl", transform: "rotate(180deg)" }}
          >
            Choose Price
          </Link>
        </div>
      </div>
    </section>
  );
}
