"use client";

import { useState } from "react";
import { Container } from "@/components/ui/Container";

const FAQS = [
  { q: "Are your products 100% authentic?", a: "Yes, every product is sourced directly from authorized brand partners and distributors." },
  { q: "Which areas in Bangalore do you deliver to?", a: "We deliver across Central Bangalore, Whitefield/ORR, North & West Bangalore, and Electronic City & the outskirts." },
  { q: "How fast is delivery?", a: "Most orders are delivered within a few hours of confirmation, subject to your location and stock availability." },
  { q: "How do I place an order?", a: "Pick a product and variant, then tap 'Order on WhatsApp' — we'll confirm availability and delivery details there." },
  { q: "What nicotine strengths are available?", a: "Strengths vary by product; check the product page or ask us on WhatsApp for the exact options." },
  { q: "Is the packaging discreet?", a: "Yes, all orders are shipped in plain, unmarked packaging." },
  { q: "Can I ask questions before ordering?", a: "Absolutely — tap the WhatsApp button anywhere on the site and we'll help you choose." },
];

export function FaqAccordion() {
  const [openIndex, setOpenIndex] = useState<number | null>(0);

  return (
    <section className="py-14">
      <Container className="max-w-3xl">
        <h2 className="text-2xl font-bold text-foreground">Frequently Asked Questions</h2>
        <div className="mt-6 divide-y divide-border rounded-2xl border border-border bg-surface">
          {FAQS.map((faq, i) => {
            const open = openIndex === i;
            return (
              <div key={faq.q}>
                <button
                  type="button"
                  onClick={() => setOpenIndex(open ? null : i)}
                  className="flex w-full items-center justify-between gap-4 px-5 py-4 text-left"
                  aria-expanded={open}
                >
                  <span className="text-sm font-medium text-foreground">{faq.q}</span>
                  <span className="text-lg text-muted">{open ? "−" : "+"}</span>
                </button>
                {open && <p className="px-5 pb-4 text-sm text-muted">{faq.a}</p>}
              </div>
            );
          })}
        </div>
      </Container>
    </section>
  );
}
