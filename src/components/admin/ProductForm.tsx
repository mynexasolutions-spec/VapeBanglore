"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { slugify } from "@/lib/format";
import type { Product, ProductSpecification, ProductTag } from "@/lib/types";
import { VariantEditor, type VariantRow } from "./VariantEditor";
import { HighlightsEditor } from "./HighlightsEditor";
import { SpecificationsEditor } from "./SpecificationsEditor";
import { ImageUploader, type UploadedImage } from "./ImageUploader";
import type { ProductInput } from "@/app/admin/(protected)/products/actions";

const TAG_OPTIONS: { value: ProductTag; label: string }[] = [
  { value: "new-arrival", label: "New Arrival" },
  { value: "trending", label: "Trending" },
  { value: "bestseller", label: "Bestseller" },
];

interface ProductFormProps {
  mode: "create" | "edit";
  product?: Product;
  onSubmit: (input: ProductInput) => Promise<{ error?: string }>;
}

export function ProductForm({ mode, product, onSubmit }: ProductFormProps) {
  const router = useRouter();
  const [name, setName] = useState(product?.name ?? "");
  const [slug, setSlug] = useState(product?.slug ?? "");
  const [slugTouched, setSlugTouched] = useState(mode === "edit");
  const [description, setDescription] = useState(product?.description ?? "");
  const [highlights, setHighlights] = useState<string[]>(product?.highlights ?? []);
  const [specifications, setSpecifications] = useState<ProductSpecification[]>(product?.specifications ?? []);
  const [basePrice, setBasePrice] = useState(product?.base_price?.toString() ?? "");
  const [salePrice, setSalePrice] = useState(product?.sale_price?.toString() ?? "");
  const [tags, setTags] = useState<ProductTag[]>(product?.tags ?? []);
  const [status, setStatus] = useState(product?.status ?? "draft");
  const [variants, setVariants] = useState<VariantRow[]>(
    product?.variants.map((v) => ({ id: v.id, name: v.name, price_override: v.price_override, in_stock: v.in_stock })) ?? []
  );
  const [images, setImages] = useState<UploadedImage[]>(
    product?.images.map((img) => ({ id: img.id, url: img.url, public_id: img.public_id, width: img.width, height: img.height, format: img.format })) ??
      []
  );
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(null);

  function handleNameChange(value: string) {
    setName(value);
    if (!slugTouched) setSlug(slugify(value));
  }

  function toggleTag(tag: ProductTag) {
    setTags((prev) => (prev.includes(tag) ? prev.filter((t) => t !== tag) : [...prev, tag]));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setSubmitting(true);
    setError(null);

    const input: ProductInput = {
      name,
      slug,
      category: "vape",
      description: description || null,
      highlights: highlights.map((h) => h.trim()).filter(Boolean),
      specifications: specifications
        .map((s) => ({ label: s.label.trim(), value: s.value.trim() }))
        .filter((s) => s.label && s.value),
      base_price: Number(basePrice),
      sale_price: salePrice === "" ? null : Number(salePrice),
      tags,
      status,
      variants: variants.map((v) => ({ name: v.name, price_override: v.price_override, in_stock: v.in_stock })),
      images: images.map((img) => ({
        url: img.url,
        public_id: img.public_id,
        width: img.width ?? null,
        height: img.height ?? null,
        format: img.format ?? null,
      })),
    };

    const result = await onSubmit(input);
    if (result?.error) {
      setError(result.error);
      setSubmitting(false);
      return;
    }

    router.refresh();
  }

  const folder = `vapeshop/vape/${slug || "_unsaved"}`;

  return (
    <form onSubmit={handleSubmit} className="max-w-2xl space-y-6">
      <div className="grid gap-4 sm:grid-cols-2">
        <div>
          <label className="mb-1 block text-sm font-medium text-foreground">Name</label>
          <input
            required
            value={name}
            onChange={(e) => handleNameChange(e.target.value)}
            className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm text-foreground outline-none focus:border-accent"
          />
        </div>
        <div>
          <label className="mb-1 block text-sm font-medium text-foreground">Slug</label>
          <input
            required
            value={slug}
            onChange={(e) => {
              setSlugTouched(true);
              setSlug(slugify(e.target.value));
            }}
            className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm text-foreground outline-none focus:border-accent"
          />
        </div>
      </div>

      <div>
        <label className="mb-1 block text-sm font-medium text-foreground">Status</label>
        <select
          value={status}
          onChange={(e) => setStatus(e.target.value as Product["status"])}
          className="w-full max-w-xs rounded-lg border border-border bg-background px-3 py-2 text-sm text-foreground outline-none focus:border-accent"
        >
          <option value="draft">Draft (hidden from storefront)</option>
          <option value="active">Active (visible on storefront)</option>
        </select>
      </div>

      <div>
        <label className="mb-1 block text-sm font-medium text-foreground">Description</label>
        <textarea
          value={description}
          onChange={(e) => setDescription(e.target.value)}
          rows={3}
          className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm text-foreground outline-none focus:border-accent"
        />
      </div>

      <div className="grid gap-4 sm:grid-cols-2">
        <div>
          <label className="mb-1 block text-sm font-medium text-foreground">Base Price (₹)</label>
          <input
            required
            type="number"
            min={0}
            value={basePrice}
            onChange={(e) => setBasePrice(e.target.value)}
            className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm text-foreground outline-none focus:border-accent"
          />
        </div>
        <div>
          <label className="mb-1 block text-sm font-medium text-foreground">Sale Price (₹, optional)</label>
          <input
            type="number"
            min={0}
            value={salePrice}
            onChange={(e) => setSalePrice(e.target.value)}
            className="w-full rounded-lg border border-border bg-background px-3 py-2 text-sm text-foreground outline-none focus:border-accent"
          />
        </div>
      </div>

      <div>
        <p className="mb-2 text-sm font-medium text-foreground">Tags</p>
        <div className="flex flex-wrap gap-3">
          {TAG_OPTIONS.map((t) => (
            <label key={t.value} className="flex items-center gap-1.5 text-sm text-muted">
              <input type="checkbox" checked={tags.includes(t.value)} onChange={() => toggleTag(t.value)} />
              {t.label}
            </label>
          ))}
        </div>
      </div>

      <HighlightsEditor highlights={highlights} onChange={setHighlights} />

      <SpecificationsEditor specifications={specifications} onChange={setSpecifications} />

      <VariantEditor variants={variants} onChange={setVariants} />

      <div>
        <p className="mb-2 text-sm font-medium text-foreground">Images</p>
        <ImageUploader folder={folder} images={images} onAdd={(img) => setImages((prev) => [...prev, img])} onRemove={(img) => setImages((prev) => prev.filter((i) => i.id !== img.id))} />
      </div>

      {error && <p className="text-sm text-danger">{error}</p>}

      <button
        type="submit"
        disabled={submitting}
        className="rounded-full bg-accent px-6 py-2.5 text-sm font-semibold text-accent-foreground transition hover:opacity-90 disabled:opacity-60"
      >
        {submitting ? "Saving…" : mode === "create" ? "Create Product" : "Save Changes"}
      </button>
    </form>
  );
}
