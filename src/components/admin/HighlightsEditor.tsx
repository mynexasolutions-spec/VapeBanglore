"use client";

export function HighlightsEditor({
  highlights,
  onChange,
}: {
  highlights: string[];
  onChange: (highlights: string[]) => void;
}) {
  function update(index: number, value: string) {
    onChange(highlights.map((h, i) => (i === index ? value : h)));
  }

  function remove(index: number) {
    onChange(highlights.filter((_, i) => i !== index));
  }

  function add() {
    onChange([...highlights, ""]);
  }

  return (
    <div>
      <p className="mb-2 text-sm font-medium text-foreground">Key Features</p>
      <div className="space-y-2">
        {highlights.map((h, i) => (
          <div key={i} className="flex items-center gap-2">
            <input
              type="text"
              placeholder="e.g. Up to 13,000 puffs"
              value={h}
              onChange={(e) => update(i, e.target.value)}
              className="flex-1 rounded-md border border-border bg-background px-2 py-1.5 text-sm text-foreground outline-none focus:border-accent"
            />
            <button type="button" onClick={() => remove(i)} className="text-xs font-medium text-danger hover:underline">
              Remove
            </button>
          </div>
        ))}
        {highlights.length === 0 && <p className="text-xs text-muted">No key features yet.</p>}
      </div>
      <button type="button" onClick={add} className="mt-2 text-sm font-medium text-accent hover:underline">
        + Add feature
      </button>
    </div>
  );
}
