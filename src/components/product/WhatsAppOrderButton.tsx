import { buildWhatsAppOrderLink } from "@/lib/whatsapp";

export function WhatsAppOrderButton({
  productName,
  variantName,
  quantity = 1,
  price,
  className = "",
  children = "Order on WhatsApp",
}: {
  productName: string;
  variantName?: string | null;
  quantity?: number;
  price: number;
  className?: string;
  children?: React.ReactNode;
}) {
  const href = buildWhatsAppOrderLink({ productName, variantName, quantity, price });

  return (
    <a
      href={href}
      target="_blank"
      rel="noopener noreferrer"
      className={
        className ||
        "inline-flex items-center justify-center rounded-full bg-sale px-5 py-2.5 text-sm font-semibold text-background transition hover:opacity-90"
      }
    >
      {children}
    </a>
  );
}
