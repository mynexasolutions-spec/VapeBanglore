import type { Metadata } from "next";
import { Container } from "@/components/ui/Container";
import { FaqAccordion } from "@/components/home/FaqAccordion";
import { ContactDeliveryInfo } from "@/components/home/ContactDeliveryInfo";

export const metadata: Metadata = { title: "FAQ & Contact" };

export default function AboutPage() {
  return (
    <>
      <Container className="pt-10">
        <h1 className="text-3xl font-bold text-foreground">FAQ &amp; Contact</h1>
        <p className="mt-2 max-w-2xl text-sm text-muted">
          Everything you need to know about ordering, delivery, and getting in touch with us.
        </p>
      </Container>
      <FaqAccordion />
      <ContactDeliveryInfo />
    </>
  );
}
