import { ForgotPasswordForm } from "@/components/ForgotPasswordForm";

export const dynamic = "force-dynamic";

export default function LupaPasswordPage() {
  return (
    <div className="mx-auto flex min-h-[70vh] max-w-md flex-col justify-center px-4 py-12">
      <div className="text-center">
        <h1 className="text-2xl font-bold tracking-tight text-navy-900">Lupa Password</h1>
        <span className="mx-auto mt-3 block h-px w-10 bg-gold-300" />
        <p className="mt-3 text-sm text-navy-500">
          Masukkan email akunmu, kami kirim tautan untuk membuat password baru.
        </p>
      </div>

      <div className="mt-8 rounded-2xl border border-navy-100 bg-white p-6 shadow-sm">
        <ForgotPasswordForm />
      </div>
    </div>
  );
}
