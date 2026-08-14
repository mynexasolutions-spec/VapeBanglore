"use client";

import type { ProductSpecification } from "@/lib/types";

export function SpecificationsEditor({
  specifications,
  onChange,
}: {
  specifications: ProductSpecification[];
  onChange: (specifications: ProductSpecification[]) => void;
}) {
  function update(index: number, patch: Partial<ProductSpecification>) {
    onChange(specifications.map((s, i) => (i === index ? { ...s, ...patch } : s)));
  }

  function remove(index: number) {
    onChange(specifications.filter((_, i) => i !== index));
  }

  function add() {
    onChange([...specifications, { label: "", value: "" }]);
  }

  return (
    <div>
      <p className="mb-2 text-sm font-medium text-foreground">Specifications</p>
      <div className="space-y-2">
        {specifications.map((s, i) => (
          <div key={i} className="flex flex-wrap items-center gap-2 rounded-lg border border-border p-2">
            <input
              type="text"
              placeholder="Label, e.g. Nicotine Strength"
              value={s.label}
              onChange={(e) => update(i, { label: e.target.value })}
              className="min-w-[140px] flex-1 rounded-md border border-border bg-background px-2 py-1.5 text-sm text-foreground outline-none focus:border-accent"
            />
            <input
              type="text"
              placeholder="Value, e.g. 5%"
              value={s.value}
              onChange={(e) => update(i, { value: e.target.value })}
              className="min-w-[140px] flex-1 rounded-md border border-border bg-background px-2 py-1.5 text-sm text-foreground outline-none focus:border-accent"
            />
            <button type="button" onClick={() => remove(i)} className="text-xs font-medium text-danger hover:underline">
              Remove
            </button>
          </div>
        ))}
        {specifications.length === 0 && <p className="text-xs text-muted">No specifications yet.</p>}
      </div>
      <button type="button" onClick={add} className="mt-2 text-sm font-medium text-accent hover:underline">
        + Add specification
      </button>
    </div>
  );
}
