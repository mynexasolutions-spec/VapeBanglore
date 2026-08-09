"use client";

import Image from "next/image";
import { useRef, useState } from "react";

export interface UploadedImage {
  id: string;
  url: string;
  public_id: string;
  width?: number | null;
  height?: number | null;
  format?: string | null;
}

interface SignResponse {
  signature: string;
  timestamp: number;
  apiKey: string;
  cloudName: string;
  folder: string;
}

export function ImageUploader({
  folder,
  images,
  onAdd,
  onRemove,
}: {
  folder: string;
  images: UploadedImage[];
  onAdd: (image: UploadedImage) => void;
  onRemove: (image: UploadedImage) => void;
}) {
  const inputRef = useRef<HTMLInputElement>(null);
  const [uploading, setUploading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  async function uploadOne(file: File) {
    const signRes = await fetch("/api/cloudinary/sign", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ folder }),
    });
    if (!signRes.ok) throw new Error("Not authorized to upload images.");
    const sign: SignResponse = await signRes.json();

    const formData = new FormData();
    formData.append("file", file);
    formData.append("api_key", sign.apiKey);
    formData.append("timestamp", String(sign.timestamp));
    formData.append("signature", sign.signature);
    formData.append("folder", sign.folder);

    const uploadRes = await fetch(`https://api.cloudinary.com/v1_1/${sign.cloudName}/image/upload`, {
      method: "POST",
      body: formData,
    });
    if (!uploadRes.ok) throw new Error("Image upload to Cloudinary failed.");
    const uploaded = await uploadRes.json();

    onAdd({
      id: uploaded.public_id,
      url: uploaded.secure_url,
      public_id: uploaded.public_id,
      width: uploaded.width,
      height: uploaded.height,
      format: uploaded.format,
    });
  }

  async function handleFiles(files: FileList | null) {
    if (!files || files.length === 0) return;
    setUploading(true);
    setError(null);

    try {
      for (const file of Array.from(files)) {
        await uploadOne(file);
      }
    } catch (err) {
      setError(err instanceof Error ? err.message : "Upload failed.");
    } finally {
      setUploading(false);
      if (inputRef.current) inputRef.current.value = "";
    }
  }

  async function handleRemove(image: UploadedImage) {
    onRemove(image);
    try {
      await fetch("/api/cloudinary/delete", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ publicId: image.public_id }),
      });
    } catch {
      // Non-fatal: the image reference is already removed from the product either way.
    }
  }

  return (
    <div>
      <div className="flex flex-wrap gap-3">
        {images.map((img) => (
          <div key={img.id} className="relative h-24 w-24 overflow-hidden rounded-lg border border-border">
            <Image src={img.url} alt="" fill sizes="96px" className="object-cover" />
            <button
              type="button"
              onClick={() => handleRemove(img)}
              className="absolute right-1 top-1 flex h-5 w-5 items-center justify-center rounded-full bg-black/70 text-xs text-white"
              aria-label="Remove image"
            >
              ×
            </button>
          </div>
        ))}

        <button
          type="button"
          onClick={() => inputRef.current?.click()}
          disabled={uploading}
          className="flex h-24 w-24 flex-col items-center justify-center rounded-lg border border-dashed border-border text-xs text-muted transition hover:border-accent hover:text-accent disabled:opacity-50"
        >
          {uploading ? "Uploading…" : "+ Add image"}
        </button>
      </div>

      <input
        ref={inputRef}
        type="file"
        accept="image/*"
        multiple
        className="hidden"
        onChange={(e) => handleFiles(e.target.files)}
      />

      {error && <p className="mt-2 text-xs text-danger">{error}</p>}
    </div>
  );
}
