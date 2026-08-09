import Image from "next/image";
import { buildWhatsAppGenericLink } from "@/lib/whatsapp";

export function WhatsAppFloatingButton() {
  return (
    <a
      href={buildWhatsAppGenericLink("Hi, I'd like to know more about your products.")}
      target="_blank"
      rel="noopener noreferrer"
      aria-label="Chat on WhatsApp"
      className="fixed bottom-4 right-4 z-50 flex h-11 w-11 items-center justify-center rounded-full bg-white p-2 shadow-lg shadow-black/30 transition hover:scale-105 sm:bottom-5 sm:right-5 sm:h-14 sm:w-14 sm:p-2.5"
    >
      <Image src="/whatsapp.png" alt="Chat on WhatsApp" width={40} height={40} className="h-full w-full object-contain" />
    </a>
  );
}
