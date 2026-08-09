"use client";

import Image from "next/image";
import { useState } from "react";
import type { ProductImage } from "@/lib/types";

export function ImageGallery({ images, alt }: { images: ProductImage[]; alt: string }) {
  const [activeIndex, setActiveIndex] = useState(0);
  const active = images[activeIndex];

  return (
    <div>
      <div className="relative aspect-square overflow-hidden rounded-2xl border border-border bg-surface-2">
        {active ? (
          <Image src={active.url} alt={alt} fill sizes="(min-width: 1024px) 40vw, 100vw" className="object-cover" priority />
        ) : (
          <div className="flex h-full items-center justify-center text-muted">No image</div>
        )}
      </div>

      {images.length > 1 && (
        <div className="mt-3 flex gap-2 overflow-x-auto">
          {images.map((img, i) => (
            <button
              key={img.id}
              type="button"
              onClick={() => setActiveIndex(i)}
              className={`relative h-16 w-16 shrink-0 overflow-hidden rounded-lg border transition ${
                i === activeIndex ? "border-accent" : "border-border opacity-70 hover:opacity-100"
              }`}
            >
              <Image src={img.url} alt={`${alt} thumbnail ${i + 1}`} fill sizes="64px" className="object-cover" />
            </button>
          ))}
        </div>
      )}
    </div>
  );
}
