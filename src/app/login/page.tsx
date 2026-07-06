import { AuthForm } from "@/components/AuthForm";
import { loginAction } from "@/lib/auth-actions";

export const dynamic = "force-dynamic";

export default async function LoginPage({
  searchParams,
}: {
  searchParams: Promise<{ next?: string; pesan?: string }>;
}) {
  const { next, pesan } = await searchParams;

  return (
    <div className="mx-auto flex min-h-[70vh] max-w-md flex-col justify-center px-4 py-12">
      <div className="text-center">
        <h1 className="text-2xl font-bold tracking-tight text-navy-900">Masuk</h1>
        <span className="mx-auto mt-3 block h-px w-10 bg-gold-300" />
        <p className="mt-3 text-sm text-navy-500">
          Kumpulan Materi, Try Out dan Latihan Soal.
        </p>
      </div>

      {pesan === "konfirmasi" && (
        <p className="mt-6 rounded-lg bg-gold-50 px-4 py-3 text-sm text-gold-700 ring-1 ring-gold-200">
          Akun berhasil dibuat. Jika belum bisa masuk, akun perlu dikonfirmasi dulu —
          matikan &quot;Confirm email&quot; di dashboard Supabase atau konfirmasi lewat
          Authentication → Users.
        </p>
      )}

      <div className="mt-8 rounded-2xl border border-navy-100 bg-white p-6 shadow-sm">
        <AuthForm mode="login" action={loginAction} next={next} />
      </div>
    </div>
  );
}
