import Link from "next/link";

const RANGES = [
  { label: "All Prices", min: undefined, max: undefined },
  { label: "Under ₹1,500", min: undefined, max: 1500 },
  { label: "₹1,500 - ₹3,000", min: 1500, max: 3000 },
  { label: "Above ₹3,000", min: 3000, max: undefined },
];

export function PriceRangeFilter({
  basePath,
  activeMin,
  activeMax,
}: {
  basePath: string;
  activeMin?: number;
  activeMax?: number;
}) {
  return (
    <div className="flex flex-wrap gap-2">
      {RANGES.map((r) => {
        const params = new URLSearchParams();
        if (r.min) params.set("min", String(r.min));
        if (r.max) params.set("max", String(r.max));
        const href = params.toString() ? `${basePath}?${params.toString()}` : basePath;
        const isActive = (activeMin ?? undefined) === r.min && (activeMax ?? undefined) === r.max;

        return (
          <Link
            key={r.label}
            href={href}
            className={`rounded-full border px-3 py-1.5 text-xs font-medium transition ${
              isActive ? "border-accent bg-accent text-accent-foreground" : "border-border text-muted hover:border-accent hover:text-foreground"
            }`}
          >
            {r.label}
          </Link>
        );
      })}
    </div>
  );
}
