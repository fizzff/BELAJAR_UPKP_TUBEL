"use client";

import Link from "next/link";
import { useActionState } from "react";
import { AuthState, forgotPasswordAction } from "@/lib/auth-actions";

export function ForgotPasswordForm() {
  const [state, formAction, pending] = useActionState<
    AuthState & { sent?: boolean },
    FormData
  >(forgotPasswordAction, {});

  if (state.sent) {
    return (
      <p className="rounded-lg bg-emerald-50 px-4 py-3 text-sm text-emerald-800">
        Jika email tersebut terdaftar, kami sudah mengirim tautan untuk mengatur ulang
        password. Cek kotak masuk (dan folder spam) email kamu.
      </p>
    );
  }

  return (
    <form action={formAction} className="space-y-4">
      <div>
        <label htmlFor="email" className="block text-sm font-medium text-navy-700">
          Email
        </label>
        <input
          id="email"
          name="email"
          type="email"
          autoComplete="email"
          required
          className="mt-1 w-full rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500 focus:ring-1 focus:ring-navy-500"
        />
      </div>
      {state.error && (
        <p className="rounded-lg bg-rose-50 px-3 py-2 text-sm text-rose-700">{state.error}</p>
      )}
      <button
        type="submit"
        disabled={pending}
        className="w-full rounded-lg bg-navy-900 px-4 py-2.5 text-sm font-semibold text-white transition hover:bg-navy-700 disabled:opacity-60"
      >
        {pending ? "Mengirim…" : "Kirim Tautan Reset"}
      </button>
      <p className="text-center text-sm text-navy-500">
        <Link href="/login" className="font-semibold text-navy-800 hover:underline">
          Kembali ke halaman masuk
        </Link>
      </p>
    </form>
  );
}
