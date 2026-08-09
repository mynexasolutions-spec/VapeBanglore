"use server";

import { z } from "zod";
import { redirect } from "next/navigation";
import { revalidatePath } from "next/cache";
import { requireAdmin } from "@/lib/admin-auth";
import { getProductById, replaceProductImages, replaceProductVariants } from "@/lib/products";

const variantSchema = z.object({
  name: z.string().min(1, "Variant name is required"),
  price_override: z.number().min(0).nullable(),
  in_stock: z.boolean(),
});

const imageSchema = z.object({
  url: z.string().url(),
  public_id: z.string().min(1),
  width: z.number().nullable(),
  height: z.number().nullable(),
  format: z.string().nullable(),
});

const productInputSchema = z.object({
  name: z.string().min(1, "Name is required"),
  slug: z
    .string()
    .min(1, "Slug is required")
    .regex(/^[a-z0-9]+(-[a-z0-9]+)*$/, "Slug must be lowercase, hyphen-separated"),
  category: z.enum(["vape"]),
  description: z.string().nullable(),
  base_price: z.number().min(0),
  sale_price: z.number().min(0).nullable(),
  tags: z.array(z.enum(["trending", "bestseller", "new-arrival"])),
  status: z.enum(["active", "draft"]),
  variants: z.array(variantSchema),
  images: z.array(imageSchema),
});

export type ProductInput = z.infer<typeof productInputSchema>;

function revalidateStorefront(slug: string, previousSlug?: string) {
  revalidatePath("/");
  revalidatePath("/shop");
  revalidatePath(`/product/${slug}`);
  if (previousSlug && previousSlug !== slug) revalidatePath(`/product/${previousSlug}`);
  revalidatePath("/admin/products");
}

export async function createProduct(input: ProductInput): Promise<{ error?: string }> {
  const { authorized, supabase } = await requireAdmin();
  if (!authorized) return { error: "Unauthorized" };

  const parsed = productInputSchema.safeParse(input);
  if (!parsed.success) return { error: parsed.error.issues[0]?.message ?? "Invalid input" };
  const data = parsed.data;

  const { data: product, error } = await supabase
    .from("products")
    .insert({
      name: data.name,
      slug: data.slug,
      category: data.category,
      description: data.description,
      base_price: data.base_price,
      sale_price: data.sale_price,
      tags: data.tags,
      status: data.status,
    })
    .select("id")
    .single();

  if (error) return { error: error.message };

  await replaceProductVariants(
    product.id,
    data.variants.map((v, i) => ({ ...v, sort_order: i }))
  );
  await replaceProductImages(
    product.id,
    data.images.map((img, i) => ({ ...img, sort_order: i }))
  );

  revalidateStorefront(data.slug);
  redirect("/admin/products");
}

export async function updateProduct(id: string, input: ProductInput): Promise<{ error?: string }> {
  const { authorized, supabase } = await requireAdmin();
  if (!authorized) return { error: "Unauthorized" };

  const parsed = productInputSchema.safeParse(input);
  if (!parsed.success) return { error: parsed.error.issues[0]?.message ?? "Invalid input" };
  const data = parsed.data;

  const existing = await getProductById(id);

  const { error } = await supabase
    .from("products")
    .update({
      name: data.name,
      slug: data.slug,
      category: data.category,
      description: data.description,
      base_price: data.base_price,
      sale_price: data.sale_price,
      tags: data.tags,
      status: data.status,
    })
    .eq("id", id);

  if (error) return { error: error.message };

  await replaceProductVariants(
    id,
    data.variants.map((v, i) => ({ ...v, sort_order: i }))
  );
  await replaceProductImages(
    id,
    data.images.map((img, i) => ({ ...img, sort_order: i }))
  );

  revalidateStorefront(data.slug, existing?.slug);
  redirect("/admin/products");
}

export async function deleteProduct(id: string): Promise<{ error?: string }> {
  const { authorized, supabase } = await requireAdmin();
  if (!authorized) return { error: "Unauthorized" };

  const existing = await getProductById(id);
  const { error } = await supabase.from("products").delete().eq("id", id);
  if (error) return { error: error.message };

  if (existing) revalidateStorefront(existing.slug);
  return {};
}
