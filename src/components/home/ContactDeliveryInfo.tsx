import { Container } from "@/components/ui/Container";
import { SITE_CONFIG } from "@/lib/site-config";
import { buildWhatsAppGenericLink } from "@/lib/whatsapp";

const ZONES = [
  { zone: "Central Bangalore", eta: "Same day" },
  { zone: "Whitefield / ORR", eta: "Same day" },
  { zone: "North & West Bangalore", eta: "Next day" },
  { zone: "Electronic City & Outskirts", eta: "1-2 days" },
];

export function ContactDeliveryInfo() {
  return (
    <section className="border-t border-border bg-surface py-14">
      <Container className="grid gap-8 sm:grid-cols-2">
        <div>
          <h2 className="text-2xl font-bold text-foreground">Delivery Coverage</h2>
          <ul className="mt-4 space-y-2">
            {ZONES.map((z) => (
              <li key={z.zone} className="flex items-center justify-between rounded-lg bg-background px-4 py-3 text-sm">
                <span className="text-foreground">{z.zone}</span>
                <span className="text-muted">{z.eta}</span>
              </li>
            ))}
          </ul>
        </div>

        <div>
          <h2 className="text-2xl font-bold text-foreground">Talk to Us</h2>
          <p className="mt-4 text-sm text-muted">
            Have a question about a flavor or delivery? Message us directly on WhatsApp and we&rsquo;ll get back to
            you right away.
          </p>
          {SITE_CONFIG.whatsappDisplay && (
            <p className="mt-3 text-sm font-medium text-foreground">{SITE_CONFIG.whatsappDisplay}</p>
          )}
          <a
            href={buildWhatsAppGenericLink("Hi, I have a question.")}
            target="_blank"
            rel="noopener noreferrer"
            className="mt-4 inline-flex rounded-full bg-sale px-5 py-2.5 text-sm font-semibold text-background transition hover:opacity-90"
          >
            Chat on WhatsApp
          </a>
        </div>
      </Container>
    </section>
  );
}
