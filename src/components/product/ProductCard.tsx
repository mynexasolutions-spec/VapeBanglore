import Image from "next/image";
import Link from "next/link";
import type { Product } from "@/lib/types";
import { formatPrice, discountPercent } from "@/lib/format";
import { WhatsAppOrderButton } from "./WhatsAppOrderButton";

const FEATURES = [
  { label: "Rich Flavor", icon: CloudIcon },
  { label: "Long Lasting", icon: BatteryIcon },
  { label: "Mesh Coil", icon: MeshIcon },
];

export function ProductCard({ product }: { product: Product }) {
  const cover = product.images[0];
  const effectivePrice = product.sale_price ?? product.base_price;
  const discount = discountPercent(product.base_price, product.sale_price);
  const isNew = product.tags.includes("new-arrival");
  const ribbon = isNew ? { label: "New", tone: "gold" as const } : discount ? { label: `${discount}% Off`, tone: "red" as const } : null;

  return (
    <div className="group relative flex flex-col overflow-hidden rounded-2xl border-2 border-accent/60 bg-linear-to-b from-surface to-background shadow-lg shadow-black/40 transition hover:border-accent">
      {ribbon && (
        <span
          className={`absolute left-0 top-4 z-20 rounded-r-full py-1 pl-3 pr-4 text-[10px] font-extrabold uppercase tracking-wide shadow ${
            ribbon.tone === "gold" ? "bg-linear-to-r from-accent to-yellow-300 text-accent-foreground" : "bg-linear-to-r from-danger to-red-400 text-white"
          }`}
        >
          {ribbon.label}
        </span>
      )}

      <span className="absolute right-3 top-3 z-20 flex h-9 w-9 items-center justify-center overflow-hidden rounded-lg border border-accent/50 bg-black/80">
        <Image src="/images/fevicon.png" alt="" fill sizes="36px" className="object-cover" />
      </span>

      <Link href={`/product/${product.slug}`} className="relative mx-4 mt-4 block aspect-3/4 overflow-hidden rounded-xl border border-accent/25 bg-black/40">
        <div aria-hidden className="pointer-events-none absolute -left-6 top-1/3 h-24 w-24 rounded-full bg-white/5 blur-2xl" />
        <div aria-hidden className="pointer-events-none absolute -right-6 bottom-1/4 h-24 w-24 rounded-full bg-accent/10 blur-2xl" />
        {cover ? (
          <Image
            src={cover.url}
            alt={product.name}
            fill
            sizes="(min-width: 1024px) 25vw, (min-width: 640px) 33vw, 50vw"
            className="object-cover object-[center_35%] transition duration-300 group-hover:scale-105"
          />
        ) : (
          <div className="flex h-full items-center justify-center text-xs text-muted">No image</div>
        )}
      </Link>

      <div className="flex flex-1 flex-col px-4 pb-4 pt-3 text-center">
        <Link href={`/product/${product.slug}`}>
          <h3 className="line-clamp-1 text-lg font-extrabold uppercase tracking-tight text-foreground hover:text-accent">
            {product.name}
          </h3>
        </Link>
        <p className="mt-0.5 text-[11px] font-semibold uppercase tracking-[0.15em] text-accent">Disposable Device</p>

        <div className="my-3 flex items-center gap-2">
          <span className="h-px flex-1 bg-border" />
          <span className="h-1.5 w-1.5 rounded-full bg-accent" />
          <span className="h-px flex-1 bg-border" />
        </div>

        <div className="hidden grid-cols-3 gap-1 sm:grid">
          {FEATURES.map(({ label, icon: Icon }) => (
            <div key={label} className="flex flex-col items-center gap-1">
              <Icon className="h-5 w-5 text-accent" />
              <span className="text-[9px] font-semibold uppercase tracking-wide text-muted">{label}</span>
            </div>
          ))}
        </div>

        <div className="mt-4 hidden border-t border-border pt-3 sm:block" />

        <div className="mt-auto flex items-center justify-between gap-2">
          <div className="text-left">
            <p className="text-lg font-extrabold text-foreground">{formatPrice(effectivePrice)}</p>
            <p className="text-[10px] text-muted">(incl. of tax)</p>
          </div>
          <WhatsAppOrderButton
            productName={product.name}
            price={effectivePrice}
            className="inline-flex h-9 w-9 shrink-0 items-center justify-center gap-1.5 rounded-full border border-accent text-accent transition hover:bg-accent hover:text-accent-foreground sm:h-auto sm:w-auto sm:px-3 sm:py-2"
          >
            <Image src="/whatsapp.png" alt="Order on WhatsApp" width={16} height={16} className="h-4 w-4 shrink-0" />
            <span className="hidden text-[10px] font-bold uppercase tracking-wide sm:inline">Order Now</span>
          </WhatsAppOrderButton>
        </div>
      </div>
    </div>
  );
}

function CloudIcon({ className }: { className?: string }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8" className={className}>
      <path d="M7 18a4 4 0 1 1 .7-7.94 5 5 0 0 1 9.6 1.2A3.5 3.5 0 0 1 17 18H7Z" />
    </svg>
  );
}

function BatteryIcon({ className }: { className?: string }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8" className={className}>
      <rect x="2" y="8" width="17" height="8" rx="1.5" />
      <path d="M21 10.5v3" />
      <path d="M6 11v2M9 11v2M12 11v2" />
    </svg>
  );
}

function MeshIcon({ className }: { className?: string }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" className={className}>
      <circle cx="12" cy="12" r="9" />
      <path d="M12 3v18M3 12h18M5.6 5.6l12.8 12.8M18.4 5.6 5.6 18.4" />
    </svg>
  );
}
