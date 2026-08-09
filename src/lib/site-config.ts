export const SITE_NAME = "Vaporé";

export const SITE_CONFIG = {
  name: SITE_NAME,
  tagline: "100% Authentic Vapes, Delivered Fast",
  whatsappNumber: process.env.NEXT_PUBLIC_WHATSAPP_NUMBER ?? "",
  whatsappDisplay: process.env.NEXT_PUBLIC_WHATSAPP_DISPLAY ?? "",
  siteUrl: process.env.NEXT_PUBLIC_SITE_URL ?? "http://localhost:3000",
};

export const NAV_LINKS = [
  { href: "/", label: "Home" },
  { href: "/shop", label: "Shop" },
  { href: "/shop?tag=trending", label: "Trending" },
  { href: "/shop?tag=bestseller", label: "Bestsellers" },
  { href: "/about", label: "FAQ & Contact" },
];
