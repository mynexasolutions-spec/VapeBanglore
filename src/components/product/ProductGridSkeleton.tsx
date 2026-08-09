export function ProductGridSkeleton({ count = 8 }: { count?: number }) {
  return (
    <div className="grid grid-cols-2 gap-4 sm:grid-cols-3 lg:grid-cols-4">
      {Array.from({ length: count }).map((_, i) => (
        <div key={i} className="animate-pulse overflow-hidden rounded-2xl border border-border bg-surface">
          <div className="aspect-square bg-surface-2" />
          <div className="space-y-2 p-4">
            <div className="h-4 w-3/4 rounded bg-surface-2" />
            <div className="h-4 w-1/2 rounded bg-surface-2" />
          </div>
        </div>
      ))}
    </div>
  );
}
