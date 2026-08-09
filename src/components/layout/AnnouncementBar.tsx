import { SITE_CONFIG } from "@/lib/site-config";

const TICKER_ITEMS = [
  "🚚 Fast 2-Hour Delivery",
  "✅ 100% Authentic Brands",
  "⭐ #1 Rated Vape Shop in Bangalore",
  "❄️ Premium Flavors & Mesh Coils",
  "🔒 Discreet Packaging",
  "💬 Instant WhatsApp Support",
];

export function AnnouncementBar() {
  const items = [...TICKER_ITEMS, ...TICKER_ITEMS];

  return (
    <div className="border-b border-border bg-background">
      <div className="border-b border-border py-2 text-center">
        <p className="bg-linear-to-r from-brand via-sky-300 to-brand bg-clip-text px-4 text-sm font-bold text-transparent sm:text-base">
          {SITE_CONFIG.tagline}
        </p>
      </div>

      <div className="overflow-hidden py-2">
        <div className="animate-marquee flex w-max gap-8 whitespace-nowrap">
          {items.map((item, i) => (
            <span key={i} className="text-xs font-semibold uppercase tracking-wide text-muted">
              {item}
            </span>
          ))}
        </div>
      </div>
    </div>
  );
}
