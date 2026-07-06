"use client";

import Link from "next/link";
import { useActionState } from "react";
import { AuthState } from "@/lib/auth-actions";

type Action = (state: AuthState, formData: FormData) => Promise<AuthState>;

export function AuthForm({
  mode,
  action,
  next,
}: {
  mode: "login" | "register";
  action: Action;
  next?: string;
}) {
  const [state, formAction, pending] = useActionState<AuthState, FormData>(action, {});
  const isLogin = mode === "login";

  return (
    <form action={formAction} className="space-y-4">
      {next && <input type="hidden" name="next" value={next} />}

      {!isLogin && (
        <div>
          <label htmlFor="nama" className="block text-sm font-medium text-navy-700">
            Nama
          </label>
          <input
            id="nama"
            name="nama"
            type="text"
            autoComplete="name"
            required
            className="mt-1 w-full rounded-lg border border-navy-200 px-3 py-2 text-sm text-navy-900 outline-none focus:border-navy-500 focus:ring-1 focus:ring-navy-500"
          />
        </div>
      )}

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
          className="mt-1 w-full rounded-lg border border-navy-200 px-3 py-2 text-sm text-navy-900 outline-none focus:border-navy-500 focus:ring-1 focus:ring-navy-500"
        />
      </div>

      <div>
        <label htmlFor="password" className="block text-sm font-medium text-navy-700">
          Password
        </label>
        <input
          id="password"
          name="password"
          type="password"
          autoComplete={isLogin ? "current-password" : "new-password"}
          required
          minLength={6}
          className="mt-1 w-full rounded-lg border border-navy-200 px-3 py-2 text-sm text-navy-900 outline-none focus:border-navy-500 focus:ring-1 focus:ring-navy-500"
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
        {pending ? "Memproses…" : isLogin ? "Masuk" : "Daftar"}
      </button>

      {isLogin && (
        <p className="text-center text-sm">
          <Link href="/lupa-password" className="text-navy-500 hover:text-navy-800 hover:underline">
            Lupa password?
          </Link>
        </p>
      )}

      <p className="text-center text-sm text-navy-500">
        {isLogin ? (
          <>
            Belum punya akun?{" "}
            <Link href="/daftar" className="font-semibold text-navy-800 hover:underline">
              Daftar
            </Link>
          </>
        ) : (
          <>
            Sudah punya akun?{" "}
            <Link href="/login" className="font-semibold text-navy-800 hover:underline">
              Masuk
            </Link>
          </>
        )}
      </p>
    </form>
  );
}
