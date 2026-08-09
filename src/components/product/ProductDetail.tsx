"use client";

import { useMemo, useState } from "react";
import type { Product } from "@/lib/types";
import { ImageGallery } from "./ImageGallery";
import { VariantSelector } from "./VariantSelector";
import { QuantityStepper } from "./QuantityStepper";
import { PriceTag } from "./PriceTag";
import { WhatsAppOrderButton } from "./WhatsAppOrderButton";

export function ProductDetail({ product }: { product: Product }) {
  const [selectedVariantId, setSelectedVariantId] = useState<string | null>(product.variants[0]?.id ?? null);
  const [quantity, setQuantity] = useState(1);

  const selectedVariant = useMemo(
    () => product.variants.find((v) => v.id === selectedVariantId) ?? null,
    [product.variants, selectedVariantId]
  );

  const effectivePrice = selectedVariant?.price_override ?? product.sale_price ?? product.base_price;

  return (
    <div className="grid gap-10 lg:grid-cols-2">
      <ImageGallery images={product.images} alt={product.name} />

      <div>
        <h1 className="text-3xl font-bold text-foreground">{product.name}</h1>
        <div className="mt-3">
          <PriceTag basePrice={product.base_price} salePrice={product.sale_price} size="lg" />
        </div>

        {product.description && <p className="mt-4 text-sm leading-relaxed text-muted">{product.description}</p>}

        {product.variants.length > 0 && (
          <div className="mt-6">
            <VariantSelector
              variants={product.variants}
              selectedId={selectedVariantId}
              onSelect={(v) => setSelectedVariantId(v.id)}
            />
          </div>
        )}

        <div className="mt-6">
          <p className="mb-2 text-sm font-medium text-foreground">Quantity</p>
          <QuantityStepper value={quantity} onChange={setQuantity} />
        </div>

        <div className="mt-8 flex flex-col gap-3 sm:flex-row">
          <WhatsAppOrderButton
            productName={product.name}
            variantName={selectedVariant?.name}
            quantity={quantity}
            price={effectivePrice}
            className="inline-flex flex-1 items-center justify-center rounded-full bg-sale px-6 py-3 text-sm font-semibold text-background transition hover:opacity-90"
          >
            Order on WhatsApp &middot; ₹{(effectivePrice * quantity).toFixed(0)}
          </WhatsAppOrderButton>
        </div>
      </div>
    </div>
  );
}
