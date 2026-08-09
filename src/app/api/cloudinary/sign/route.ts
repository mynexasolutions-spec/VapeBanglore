import { NextResponse } from "next/server";
import cloudinary from "@/lib/cloudinary/server";
import { requireAdmin } from "@/lib/admin-auth";

export async function POST(request: Request) {
  const { authorized } = await requireAdmin();
  if (!authorized) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const body = await request.json().catch(() => ({}));
  const requestedFolder = typeof body.folder === "string" ? body.folder : "";
  const folder = requestedFolder.startsWith("vapeshop/") ? requestedFolder : "vapeshop/_unsaved";

  const timestamp = Math.round(Date.now() / 1000);
  const paramsToSign = { timestamp, folder };
  const signature = cloudinary.utils.api_sign_request(paramsToSign, process.env.CLOUDINARY_API_SECRET!);

  return NextResponse.json({
    signature,
    timestamp,
    apiKey: process.env.CLOUDINARY_API_KEY,
    cloudName: process.env.CLOUDINARY_CLOUD_NAME,
    folder,
  });
}
