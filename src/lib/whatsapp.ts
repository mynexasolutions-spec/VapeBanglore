const WHATSAPP_NUMBER = process.env.NEXT_PUBLIC_WHATSAPP_NUMBER ?? "";

interface WhatsAppOrderParams {
  productName: string;
  variantName?: string | null;
  quantity: number;
  price: number;
}

export function buildWhatsAppOrderLink({
  productName,
  variantName,
  quantity,
  price,
}: WhatsAppOrderParams): string {
  const lines = [
    "Hi, I'd like to order:",
    `Product: ${productName}`,
    variantName ? `Variant: ${variantName}` : null,
    `Quantity: ${quantity}`,
    `Price: ₹${price.toFixed(0)} each`,
    `Total: ₹${(price * quantity).toFixed(0)}`,
  ].filter(Boolean);

  return buildWhatsAppGenericLink(lines.join("\n"));
}

export function buildWhatsAppGenericLink(message: string): string {
  return `https://wa.me/${WHATSAPP_NUMBER}?text=${encodeURIComponent(message)}`;
}
