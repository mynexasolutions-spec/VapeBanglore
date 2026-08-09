import { redirect } from "next/navigation";
import { requireAdmin } from "@/lib/admin-auth";
import { AdminNav } from "@/components/admin/AdminNav";

export default async function ProtectedAdminLayout({ children }: { children: React.ReactNode }) {
  const { authorized } = await requireAdmin();
  if (!authorized) redirect("/admin/login");

  return (
    <div className="min-h-screen bg-background">
      <AdminNav />
      <main className="mx-auto max-w-6xl px-4 py-8 sm:px-6">{children}</main>
    </div>
  );
}
