import Link from "next/link";
import { signOutAction } from "@/app/admin/actions";

const LINKS = [
  { href: "/admin", label: "Dashboard" },
  { href: "/admin/products", label: "Products" },
  { href: "/admin/products/new", label: "Add Product" },
];

export function AdminNav() {
  return (
    <header className="border-b border-border bg-surface">
      <div className="mx-auto flex max-w-6xl items-center justify-between px-4 py-4 sm:px-6">
        <div className="flex items-center gap-6">
          <span className="font-bold text-foreground">Admin</span>
          <nav className="flex gap-4">
            {LINKS.map((l) => (
              <Link key={l.href} href={l.href} className="text-sm text-muted hover:text-foreground">
                {l.label}
              </Link>
            ))}
          </nav>
        </div>
        <div className="flex items-center gap-4">
          <Link href="/" className="text-sm text-muted hover:text-foreground">
            View site
          </Link>
          <form action={signOutAction}>
            <button type="submit" className="text-sm font-medium text-danger hover:underline">
              Sign out
            </button>
          </form>
        </div>
      </div>
    </header>
  );
}
