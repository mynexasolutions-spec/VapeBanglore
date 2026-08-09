"use client";

import type { ProductVariant } from "@/lib/types";

export function VariantSelector({
  variants,
  selectedId,
  onSelect,
}: {
  variants: ProductVariant[];
  selectedId: string | null;
  onSelect: (variant: ProductVariant) => void;
}) {
  if (variants.length === 0) return null;

  return (
    <div>
      <p className="mb-2 text-sm font-medium text-foreground">Choose an option</p>
      <div className="flex flex-wrap gap-2">
        {variants.map((v) => {
          const active = v.id === selectedId;
          return (
            <button
              key={v.id}
              type="button"
              disabled={!v.in_stock}
              onClick={() => onSelect(v)}
              className={`rounded-full border px-4 py-2 text-sm font-medium transition ${
                active
                  ? "border-accent bg-accent text-accent-foreground"
                  : "border-border text-foreground hover:border-accent"
              } ${!v.in_stock ? "cursor-not-allowed opacity-40" : ""}`}
            >
              {v.name}
              {!v.in_stock && " (Out of stock)"}
            </button>
          );
        })}
      </div>
    </div>
  );
}
