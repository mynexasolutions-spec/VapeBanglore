import Link from "next/link";
import { Container } from "@/components/ui/Container";

const PRICE_RANGES = [
  { label: "Under ₹1,500", href: "/shop?max=1500" },
  { label: "₹1,500 - ₹3,000", href: "/shop?min=1500&max=3000" },
  { label: "Above ₹3,000", href: "/shop?min=3000" },
];

export function HotOffersBanner() {
  return (
    <section className="py-14">
      <Container>
        <div className="overflow-hidden rounded-2xl border border-accent/30 bg-linear-to-r from-accent/15 via-surface to-surface p-6 sm:p-10">
          <p className="text-xs font-semibold uppercase tracking-wide text-accent">Hot Offers</p>
          <h2 className="mt-2 text-2xl font-bold text-foreground sm:text-3xl">
            Buy 2 Get 20% Off &middot; Buy 3 Get 30% Off &middot; Buy 5 Get 1 Free
          </h2>
          <p className="mt-2 text-sm text-muted">Message us on WhatsApp with your order to claim a bundle offer.</p>

          <div className="mt-6 flex flex-wrap gap-2">
            {PRICE_RANGES.map((r) => (
              <Link
                key={r.href}
                href={r.href}
                className="rounded-full border border-border bg-background px-4 py-2 text-sm font-medium text-foreground transition hover:border-accent hover:text-accent"
              >
                {r.label}
              </Link>
            ))}
          </div>
        </div>
      </Container>
    </section>
  );
}
