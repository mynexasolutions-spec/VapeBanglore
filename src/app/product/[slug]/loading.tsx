import { Container } from "@/components/ui/Container";

export default function Loading() {
  return (
    <Container className="py-10">
      <div className="grid animate-pulse gap-10 lg:grid-cols-2">
        <div className="aspect-square rounded-2xl bg-surface-2" />
        <div className="space-y-4">
          <div className="h-8 w-2/3 rounded bg-surface-2" />
          <div className="h-6 w-1/3 rounded bg-surface-2" />
          <div className="h-4 w-full rounded bg-surface-2" />
          <div className="h-4 w-5/6 rounded bg-surface-2" />
          <div className="h-10 w-1/2 rounded-full bg-surface-2" />
        </div>
      </div>
    </Container>
  );
}
