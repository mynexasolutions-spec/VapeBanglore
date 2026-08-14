// Store-wide policy copy shown in the "Return Policy" / "Shipping Policy" /
// "Privacy Policy" accordion on every product page. Not per-product data —
// edit here to update the copy site-wide.
import { SITE_CONFIG } from "@/lib/site-config";

export const RETURN_POLICY_PARAGRAPHS: string[] = [
  "Please inspect your order as soon as it arrives and message us right away on WhatsApp if an item is damaged, defective, or not what you ordered — we'll sort it out quickly.",
  "Beyond that, we accept return requests within 7 days of delivery. To qualify, the item must be unused, in its original packaging, and include all accessories it shipped with. Message us on WhatsApp with your order details before sending anything back — items returned without prior confirmation can't be accepted.",
  "For hygiene and safety reasons, opened e-liquids, coils, pods, and any consumable component cannot be returned once the seal has been broken.",
  "Once a return is approved and received, refunds are issued to your original payment method within 5–7 business days. For WhatsApp/COD orders, we'll confirm the refund method with you directly.",
];

export const SHIPPING_POLICY_PARAGRAPHS: string[] = [
  "Orders are confirmed over WhatsApp and typically dispatched within 1–2 business days, excluding weekends and public holidays.",
  "Delivery across Bangalore usually takes 1–2 business days after dispatch. For other locations in India, expect 3–6 business days depending on the courier's serviceability.",
  "Shipping charges (if any) are confirmed with you on WhatsApp before your order is placed — there are no hidden fees.",
  "As with any courier service, delays from weather, regional restrictions, or courier-side issues are occasionally outside our control, but we'll keep you updated on your order status via WhatsApp.",
];

export const PRIVACY_POLICY_PARAGRAPHS: string[] = [
  "We only collect what's needed to process your order and stay in touch: your name, phone number, delivery address, and order history, mostly gathered through our WhatsApp ordering flow.",
  "This information is used solely to fulfil and deliver your order, respond to support questions, and — only if you've opted in — send occasional updates about new arrivals or offers. We don't sell your data to third parties.",
  "Basic order and delivery details are shared with our courier partners strictly to get your package to you. Payment details, where applicable, are handled directly by the payment provider and are never stored on our systems.",
  `You can ask us to access, correct, or delete your information at any time by messaging us on WhatsApp${SITE_CONFIG.whatsappDisplay ? ` at ${SITE_CONFIG.whatsappDisplay}` : ""}.`,
];
