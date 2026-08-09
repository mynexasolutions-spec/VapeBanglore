import Link from "next/link";
import { Container } from "@/components/ui/Container";
import { SITE_CONFIG } from "@/lib/site-config";

const QUICK_LINKS = [
  { href: "/", label: "Home" },
  { href: "/shop", label: "Shop All Vapes" },
  { href: "/about", label: "FAQ & Contact" },
];

const TAG_LINKS = [
  { href: "/shop?tag=trending", label: "Trending" },
  { href: "/shop?tag=bestseller", label: "Bestsellers" },
  { href: "/shop?tag=new-arrival", label: "New Arrivals" },
];

const DELIVERY_ZONES = [
  "Central Bangalore",
  "Whitefield / ORR",
  "North & West Bangalore",
  "Electronic City & Outskirts",
];

export function Footer() {
  return (
    <footer className="border-t border-border bg-surface">
      <Container className="grid gap-10 py-12 sm:grid-cols-2 lg:grid-cols-4">
        <div>
          <h3 className="text-base font-semibold text-foreground">{SITE_CONFIG.name}</h3>
          <p className="mt-3 text-sm text-muted">{SITE_CONFIG.tagline}</p>
          {SITE_CONFIG.whatsappDisplay && (
            <p className="mt-3 text-sm text-muted">
              WhatsApp:{" "}
              <span className="font-medium text-foreground">{SITE_CONFIG.whatsappDisplay}</span>
            </p>
          )}
        </div>

        <div>
          <h4 className="text-sm font-semibold text-foreground">Quick Links</h4>
          <ul className="mt-3 space-y-2">
            {QUICK_LINKS.map((l) => (
              <li key={l.href}>
                <Link href={l.href} className="text-sm text-muted hover:text-foreground">
                  {l.label}
                </Link>
              </li>
            ))}
          </ul>
        </div>

        <div>
          <h4 className="text-sm font-semibold text-foreground">Popular Tags</h4>
          <ul className="mt-3 space-y-2">
            {TAG_LINKS.map((l) => (
              <li key={l.href}>
                <Link href={l.href} className="text-sm text-muted hover:text-foreground">
                  {l.label}
                </Link>
              </li>
            ))}
          </ul>
        </div>

        <div>
          <h4 className="text-sm font-semibold text-foreground">We Deliver To</h4>
          <ul className="mt-3 space-y-2">
            {DELIVERY_ZONES.map((z) => (
              <li key={z} className="text-sm text-muted">
                {z}
              </li>
            ))}
          </ul>
        </div>
      </Container>

      <div className="border-t border-border py-6">
        <Container className="flex flex-col items-center justify-between gap-2 text-xs text-muted sm:flex-row">
          <p>
            &copy; {new Date().getFullYear()} {SITE_CONFIG.name}. All rights reserved.
          </p>
          <Link href="/about" className="hover:text-foreground">
            FAQ &amp; Contact
          </Link>
        </Container>
      </div>
    </footer>
  );
}
