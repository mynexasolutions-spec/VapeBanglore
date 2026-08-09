import Image from "next/image";
import Link from "next/link";
import { SITE_CONFIG } from "@/lib/site-config";

export function Logo() {
  return (
    <Link href="/" className="flex shrink-0 items-center">
      <Image
        src="/images/v_logo_nav.png"
        alt={`${SITE_CONFIG.name} Vape Shop`}
        width={1540}
        height={400}
        priority
        className="h-9 w-auto sm:h-10"
      />
    </Link>
  );
}
