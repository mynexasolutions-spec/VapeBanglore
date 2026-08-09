"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";

export function SearchBar() {
  const router = useRouter();
  const [open, setOpen] = useState(false);
  const [value, setValue] = useState("");

  function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const q = value.trim();
    router.push(q ? `/shop?q=${encodeURIComponent(q)}` : "/shop");
    setOpen(false);
    setValue("");
  }

  return (
    <div className="relative flex items-center">
      {open && (
        <form onSubmit={handleSubmit} className="absolute right-9 top-1/2 -translate-y-1/2">
          <input
            autoFocus
            type="text"
            value={value}
            onChange={(e) => setValue(e.target.value)}
            onBlur={() => !value && setOpen(false)}
            placeholder="Search products…"
            className="w-40 rounded-full border border-border bg-surface-2 px-3 py-1.5 text-sm text-foreground outline-none focus:border-brand sm:w-56"
          />
        </form>
      )}
      <button
        type="button"
        onClick={() => setOpen((v) => !v)}
        aria-label="Search products"
        className="flex h-9 w-9 items-center justify-center rounded-full text-muted transition hover:bg-surface-2 hover:text-foreground"
      >
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
          <circle cx="11" cy="11" r="7" />
          <path d="m20 20-3.5-3.5" />
        </svg>
      </button>
    </div>
  );
}
