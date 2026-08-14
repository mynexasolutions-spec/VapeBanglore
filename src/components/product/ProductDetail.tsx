"use client";

import { useMemo, useState } from "react";
import type { Product } from "@/lib/types";
import { Accordion, AccordionItem } from "@/components/ui/Accordion";
import { RETURN_POLICY_PARAGRAPHS, SHIPPING_POLICY_PARAGRAPHS, PRIVACY_POLICY_PARAGRAPHS } from "@/lib/policies";
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

        <div className="mt-8">
          <Accordion>
            <AccordionItem title="Product Description" defaultOpen>
              {product.description && <p>{product.description}</p>}

              {product.highlights.length > 0 && (
                <div className={product.description ? "mt-4" : ""}>
                  <p className="text-xs font-semibold uppercase tracking-wide text-foreground">Key Features</p>
                  <ul className="mt-2 space-y-1.5">
                    {product.highlights.map((h, i) => (
                      <li key={i} className="flex items-start gap-2">
                        <span className="mt-1.5 h-1.5 w-1.5 shrink-0 rounded-full bg-accent" />
                        <span>{h}</span>
                      </li>
                    ))}
                  </ul>
                </div>
              )}

              {product.specifications.length > 0 && (
                <div className="mt-4">
                  <p className="text-xs font-semibold uppercase tracking-wide text-foreground">Specifications</p>
                  <dl className="mt-2 divide-y divide-border overflow-hidden rounded-lg border border-border">
                    {product.specifications.map((s, i) => (
                      <div key={i} className="grid grid-cols-2 gap-2 bg-surface-2 px-3 py-2 odd:bg-surface">
                        <dt className="text-muted">{s.label}</dt>
                        <dd className="font-medium text-foreground">{s.value}</dd>
                      </div>
                    ))}
                  </dl>
                </div>
              )}

              <p className="mt-4 text-xs text-muted">For adult users only. Contains nicotine.</p>
            </AccordionItem>

            <AccordionItem title="Return Policy">
              {RETURN_POLICY_PARAGRAPHS.map((para, i) => (
                <p key={i} className={i > 0 ? "mt-3" : ""}>
                  {para}
                </p>
              ))}
            </AccordionItem>

            <AccordionItem title="Shipping Policy">
              {SHIPPING_POLICY_PARAGRAPHS.map((para, i) => (
                <p key={i} className={i > 0 ? "mt-3" : ""}>
                  {para}
                </p>
              ))}
            </AccordionItem>

            <AccordionItem title="Privacy Policy">
              {PRIVACY_POLICY_PARAGRAPHS.map((para, i) => (
                <p key={i} className={i > 0 ? "mt-3" : ""}>
                  {para}
                </p>
              ))}
            </AccordionItem>
          </Accordion>
        </div>
      </div>
    </div>
  );
}
