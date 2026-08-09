import { Container } from "@/components/ui/Container";
import { ProductGridSkeleton } from "@/components/product/ProductGridSkeleton";

export default function Loading() {
  return (
    <Container className="py-10">
      <div className="h-8 w-48 animate-pulse rounded bg-surface-2" />
      <div className="mt-8">
        <ProductGridSkeleton />
      </div>
    </Container>
  );
}
