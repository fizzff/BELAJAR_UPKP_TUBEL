"use client";

import type { ReactNode } from "react";

// Tombol submit yang memunculkan dialog peringatan dulu. Kalau admin menekan
// "Batal", submit dibatalkan sehingga data tidak jadi terhapus.
export function ConfirmSubmit({
  message,
  children,
  className,
}: {
  message: string;
  children: ReactNode;
  className?: string;
}) {
  return (
    <button
      type="submit"
      className={className}
      onClick={(e) => {
        if (!window.confirm(message)) e.preventDefault();
      }}
    >
      {children}
    </button>
  );
}
