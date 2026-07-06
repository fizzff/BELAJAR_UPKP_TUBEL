import { getSessionUser } from "@/lib/supabase/server";
import { logoutAction } from "@/lib/auth-actions";

export const dynamic = "force-dynamic";

export default async function MenungguPage() {
  const { nama, user } = await getSessionUser();

  return (
    <div className="mx-auto flex min-h-[70vh] max-w-md flex-col justify-center px-4 py-12 text-center">
      <span className="mx-auto text-4xl">⏳</span>
      <h1 className="mt-4 text-2xl font-bold tracking-tight text-navy-900">
        Menunggu Aktivasi Akun
      </h1>
      <span className="mx-auto mt-3 block h-px w-10 bg-gold-300" />
      <p className="mt-4 text-sm text-navy-600">
        Halo {nama ?? "Pengguna"}, akunmu ({user?.email}) sudah terdaftar tetapi belum
        diaktifkan.
      </p>
      <p className="mt-2 text-sm text-navy-500">
        Akses ke materi dan latihan soal diberikan oleh admin setelah aktivasi. Silakan
        hubungi admin untuk mengaktifkan akunmu.
      </p>

      <form action={logoutAction} className="mt-8">
        <button
          type="submit"
          className="rounded-lg border border-navy-200 px-4 py-2 text-sm font-medium text-navy-700 transition hover:border-navy-400"
        >
          Keluar
        </button>
      </form>
    </div>
  );
}
