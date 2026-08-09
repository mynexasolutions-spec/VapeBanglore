import { formatPrice, discountPercent } from "@/lib/format";

export function PriceTag({
  basePrice,
  salePrice,
  size = "md",
}: {
  basePrice: number;
  salePrice: number | null;
  size?: "sm" | "md" | "lg";
}) {
  const discount = discountPercent(basePrice, salePrice);
  const priceSize = size === "lg" ? "text-2xl" : size === "sm" ? "text-sm" : "text-base";

  if (!discount) {
    return <span className={`font-semibold text-foreground ${priceSize}`}>{formatPrice(basePrice)}</span>;
  }

  return (
    <span className="flex flex-wrap items-baseline gap-2">
      <span className={`font-semibold text-accent ${priceSize}`}>{formatPrice(salePrice!)}</span>
      <span className="text-sm text-muted line-through">{formatPrice(basePrice)}</span>
      <span className="rounded-full bg-sale/15 px-2 py-0.5 text-xs font-semibold text-sale">
        {discount}% OFF
      </span>
    </span>
  );
}
