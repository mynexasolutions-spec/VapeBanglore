import { Container } from "@/components/ui/Container";

const VALUES = [
  { title: "100% Authentic", description: "Every product is sourced directly from authorized brand partners." },
  { title: "Fast & Discreet", description: "Quick delivery in plain, unmarked packaging across Bangalore." },
  { title: "Premium Range", description: "Curated flavors from the most loved brands." },
  { title: "Instant Support", description: "Real answers on WhatsApp, not bots or hold music." },
];

export function WhyShopWithUs() {
  return (
    <section className="border-y border-border bg-surface py-14">
      <Container>
        <h2 className="text-2xl font-bold text-foreground">Why Shop With Us</h2>
        <div className="mt-6 grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-4">
          {VALUES.map((v) => (
            <div key={v.title} className="rounded-2xl border border-border bg-background p-5">
              <h3 className="font-semibold text-foreground">{v.title}</h3>
              <p className="mt-2 text-sm text-muted">{v.description}</p>
            </div>
          ))}
        </div>
      </Container>
    </section>
  );
}
