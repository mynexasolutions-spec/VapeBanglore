"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useState } from "react";
import { Container } from "@/components/ui/Container";
import { Logo } from "@/components/layout/Logo";
import { SearchBar } from "@/components/layout/SearchBar";
import { NAV_LINKS } from "@/lib/site-config";
import { buildWhatsAppGenericLink } from "@/lib/whatsapp";

export function Navbar() {
  const [open, setOpen] = useState(false);
  const pathname = usePathname();

  return (
    <header className="sticky top-0 z-40 border-b border-border bg-background/95 backdrop-blur">
      <Container className="flex h-16 items-center justify-between gap-4">
        <Logo />

        <nav className="hidden items-center gap-6 md:flex">
          {NAV_LINKS.map((link) => {
            const isQueryLink = link.href.includes("?");
            const active = isQueryLink
              ? false
              : link.href === "/"
                ? pathname === "/"
                : pathname.startsWith(link.href);
            return (
              <Link
                key={link.href}
                href={link.href}
                className={`text-xs font-semibold uppercase tracking-widest transition-colors ${
                  active ? "text-brand" : "text-muted hover:text-foreground"
                }`}
              >
                {link.label}
              </Link>
            );
          })}
        </nav>

        <div className="flex items-center gap-1 sm:gap-2">
          <SearchBar />
          <a
            href={buildWhatsAppGenericLink("Hi, I have a question about your products.")}
            target="_blank"
            rel="noopener noreferrer"
            className="hidden rounded-full bg-sale px-4 py-2 text-sm font-semibold text-background transition hover:opacity-90 sm:inline-flex"
          >
            WhatsApp
          </a>

          <button
            type="button"
            onClick={() => setOpen((v) => !v)}
            className="flex h-9 w-9 items-center justify-center rounded-md border border-border text-foreground md:hidden"
            aria-label="Toggle menu"
            aria-expanded={open}
          >
            <span className="sr-only">Menu</span>
            {open ? (
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                <path d="M18 6 6 18M6 6l12 12" />
              </svg>
            ) : (
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                <path d="M3 6h18M3 12h18M3 18h18" />
              </svg>
            )}
          </button>
        </div>
      </Container>

      {open && (
        <div className="border-t border-border bg-background md:hidden">
          <Container className="flex flex-col gap-1 py-3">
            {NAV_LINKS.map((link) => (
              <Link
                key={link.href}
                href={link.href}
                onClick={() => setOpen(false)}
                className="rounded-md px-2 py-2 text-sm font-semibold uppercase tracking-wide text-muted hover:bg-surface hover:text-foreground"
              >
                {link.label}
              </Link>
            ))}
            <a
              href={buildWhatsAppGenericLink("Hi, I have a question about your products.")}
              target="_blank"
              rel="noopener noreferrer"
              className="mt-2 rounded-full bg-sale px-4 py-2 text-center text-sm font-semibold text-background"
            >
              Chat on WhatsApp
            </a>
          </Container>
        </div>
      )}
    </header>
  );
}
