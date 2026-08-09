"use client";

export interface VariantRow {
  id: string;
  name: string;
  price_override: number | null;
  in_stock: boolean;
}

export function VariantEditor({
  variants,
  onChange,
}: {
  variants: VariantRow[];
  onChange: (variants: VariantRow[]) => void;
}) {
  function update(index: number, patch: Partial<VariantRow>) {
    onChange(variants.map((v, i) => (i === index ? { ...v, ...patch } : v)));
  }

  function remove(index: number) {
    onChange(variants.filter((_, i) => i !== index));
  }

  function add() {
    onChange([...variants, { id: crypto.randomUUID(), name: "", price_override: null, in_stock: true }]);
  }

  return (
    <div>
      <p className="mb-2 text-sm font-medium text-foreground">Variants (flavor / scent &amp; size)</p>
      <div className="space-y-2">
        {variants.map((v, i) => (
          <div key={v.id} className="flex flex-wrap items-center gap-2 rounded-lg border border-border p-2">
            <input
              type="text"
              placeholder="e.g. Mango Ice or 50ml"
              value={v.name}
              onChange={(e) => update(i, { name: e.target.value })}
              className="min-w-[140px] flex-1 rounded-md border border-border bg-background px-2 py-1.5 text-sm text-foreground outline-none focus:border-accent"
            />
            <input
              type="number"
              placeholder="Price override"
              value={v.price_override ?? ""}
              onChange={(e) => update(i, { price_override: e.target.value === "" ? null : Number(e.target.value) })}
              className="w-32 rounded-md border border-border bg-background px-2 py-1.5 text-sm text-foreground outline-none focus:border-accent"
            />
            <label className="flex items-center gap-1.5 text-xs text-muted">
              <input
                type="checkbox"
                checked={v.in_stock}
                onChange={(e) => update(i, { in_stock: e.target.checked })}
              />
              In stock
            </label>
            <button type="button" onClick={() => remove(i)} className="text-xs font-medium text-danger hover:underline">
              Remove
            </button>
          </div>
        ))}
        {variants.length === 0 && <p className="text-xs text-muted">No variants yet — add at least one option.</p>}
      </div>
      <button type="button" onClick={add} className="mt-2 text-sm font-medium text-accent hover:underline">
        + Add variant
      </button>
    </div>
  );
}
