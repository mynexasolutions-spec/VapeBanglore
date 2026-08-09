import type { Metadata } from "next";
import { ProductForm } from "@/components/admin/ProductForm";
import { createProduct } from "../actions";

export const metadata: Metadata = { title: "Add Product" };

export default function NewProductPage() {
  return (
    <div>
      <h1 className="text-2xl font-bold text-foreground">Add Product</h1>
      <div className="mt-6">
        <ProductForm mode="create" onSubmit={createProduct} />
      </div>
    </div>
  );
}
