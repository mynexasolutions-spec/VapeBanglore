import type { Metadata } from "next";
import { notFound } from "next/navigation";
import { ProductForm } from "@/components/admin/ProductForm";
import { getProductById } from "@/lib/products";
import { updateProduct } from "../../actions";

export const metadata: Metadata = { title: "Edit Product" };

export default async function EditProductPage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const product = await getProductById(id);
  if (!product) notFound();

  const boundUpdate = updateProduct.bind(null, id);

  return (
    <div>
      <h1 className="text-2xl font-bold text-foreground">Edit Product</h1>
      <div className="mt-6">
        <ProductForm mode="edit" product={product} onSubmit={boundUpdate} />
      </div>
    </div>
  );
}
