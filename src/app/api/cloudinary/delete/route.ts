import { NextResponse } from "next/server";
import cloudinary from "@/lib/cloudinary/server";
import { requireAdmin } from "@/lib/admin-auth";

export async function POST(request: Request) {
  const { authorized } = await requireAdmin();
  if (!authorized) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const body = await request.json().catch(() => ({}));
  const publicId = typeof body.publicId === "string" ? body.publicId : null;
  if (!publicId) {
    return NextResponse.json({ error: "publicId is required" }, { status: 400 });
  }

  await cloudinary.uploader.destroy(publicId);
  return NextResponse.json({ ok: true });
}
