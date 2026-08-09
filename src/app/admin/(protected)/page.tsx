import type { Metadata } from "next";
import Link from "next/link";
import { getProducts } from "@/lib/products";

export const metadata: Metadata = { title: "Admin Dashboard" };

export default async function AdminDashboardPage() {
  const products = await getProducts();
  const active = products.filter((p) => p.status === "active").length;
  const draft = products.filter((p) => p.status === "draft").length;

  const stats = [
    { label: "Total Products", value: products.length },
    { label: "Active", value: active },
    { label: "Draft", value: draft },
  ];

  return (
    <div>
      <h1 className="text-2xl font-bold text-foreground">Dashboard</h1>
      <div className="mt-6 grid grid-cols-3 gap-4">
        {stats.map((s) => (
          <div key={s.label} className="rounded-2xl border border-border bg-surface p-4">
            <p className="text-2xl font-bold text-foreground">{s.value}</p>
            <p className="text-sm text-muted">{s.label}</p>
          </div>
        ))}
      </div>

      <div className="mt-8 flex gap-3">
        <Link href="/admin/products" className="rounded-full border border-border px-4 py-2 text-sm font-medium text-foreground hover:border-accent hover:text-accent">
          Manage Products
        </Link>
        <Link href="/admin/products/new" className="rounded-full bg-accent px-4 py-2 text-sm font-semibold text-accent-foreground hover:opacity-90">
          Add Product
        </Link>
      </div>
    </div>
  );
}
