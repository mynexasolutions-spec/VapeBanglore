import type { Metadata } from "next";
import { redirect } from "next/navigation";
import { requireAdmin } from "@/lib/admin-auth";
import { LoginForm } from "@/components/admin/LoginForm";
import { SITE_CONFIG } from "@/lib/site-config";

export const metadata: Metadata = { title: "Admin Login" };

export default async function AdminLoginPage() {
  const { authorized } = await requireAdmin();
  if (authorized) redirect("/admin");

  return (
    <div className="flex min-h-[70vh] flex-col items-center justify-center px-4">
      <h1 className="mb-1 text-2xl font-bold text-foreground">{SITE_CONFIG.name} Admin</h1>
      <p className="mb-6 text-sm text-muted">Sign in to manage products.</p>
      <LoginForm />
    </div>
  );
}
