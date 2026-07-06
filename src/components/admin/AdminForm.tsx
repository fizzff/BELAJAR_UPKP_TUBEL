"use client";

import { useActionState, type ReactNode } from "react";
import { useFormStatus } from "react-dom";
import type { ActionState } from "@/lib/admin-actions";

// Tombol simpan yang tahu status kirim: menampilkan "Menyimpan…" saat proses.
function SubmitButton({ label }: { label: string }) {
  const { pending } = useFormStatus();
  return (
    <button
      type="submit"
      disabled={pending}
      className="rounded-lg bg-navy-900 px-4 py-2 text-sm font-semibold text-white transition hover:bg-navy-700 disabled:opacity-60"
    >
      {pending ? "Menyimpan…" : label}
    </button>
  );
}

// Form admin yang menampilkan notifikasi hasil (berhasil/gagal) di sebelah
// tombol simpan, tanpa pindah halaman. `children` = field-field form.
export function AdminForm({
  action,
  submitLabel,
  children,
  className,
}: {
  action: (prev: ActionState, formData: FormData) => Promise<ActionState>;
  submitLabel: string;
  children: ReactNode;
  className?: string;
}) {
  const [state, formAction] = useActionState(action, null);
  return (
    <form action={formAction} className={className}>
      {children}
      <div className="flex flex-wrap items-center gap-3">
        <SubmitButton label={submitLabel} />
        {state && (
          <span
            role="status"
            className={`text-sm font-medium ${
              state.ok ? "text-emerald-600" : "text-rose-600"
            }`}
          >
            {state.ok ? "✓ " : "⚠ "}
            {state.message}
          </span>
        )}
      </div>
    </form>
  );
}
