import { redirect } from "next/navigation";

// Halaman statistik lama sekarang menjadi bagian dari Profil.
export default function StatistikPage() {
  redirect("/profil");
}
