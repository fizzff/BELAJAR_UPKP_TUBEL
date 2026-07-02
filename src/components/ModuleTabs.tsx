"use client";

import Link from "next/link";
import { useState } from "react";
import { Module } from "@/lib/types";

function BookIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" className="h-5 w-5">
      <path d="M4 5.5C4 4.67 4.67 4 5.5 4H11V20H5.5C4.67 20 4 19.33 4 18.5V5.5Z" />
      <path d="M20 5.5C20 4.67 19.33 4 18.5 4H13V20H18.5C19.33 20 20 19.33 20 18.5V5.5Z" />
    </svg>
  );
}

function SparkIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" className="h-5 w-5">
      <path d="M9 18h6M10 21h4M12 3a6 6 0 0 0-4 10.5c.6.6 1 1.4 1 2.5h6c0-1.1.4-1.9 1-2.5A6 6 0 0 0 12 3Z" />
    </svg>
  );
}

function ModuleCard({ mod, icon }: { mod: Module; icon: "book" | "spark" }) {
  return (
    <Link
      href={`/modul/${mod.id}`}
      className="group flex flex-col items-center gap-3 rounded-xl border border-navy-100 bg-white px-5 py-7 text-center shadow-sm transition hover:-translate-y-0.5 hover:border-navy-300 hover:shadow-md"
    >
      <span className="inline-flex h-12 w-12 items-center justify-center rounded-full bg-navy-50 text-navy-700 transition group-hover:bg-navy-900 group-hover:text-white">
        {icon === "book" ? <BookIcon /> : <SparkIcon />}
      </span>
      <h2 className="text-base font-semibold text-navy-900">{mod.title}</h2>
    </Link>
  );
}

export function ModuleTabs({
  substansiModules,
  tpaModules,
}: {
  substansiModules: Module[];
  tpaModules: Module[];
}) {
  const [active, setActive] = useState<"substansi" | "tpa">("substansi");

  return (
    <div>
      <div className="inline-flex flex-wrap gap-1 rounded-full border border-navy-100 bg-white p-1 shadow-sm">
        <button
          type="button"
          onClick={() => setActive("substansi")}
          className={`rounded-full px-4 py-2 text-sm font-medium transition ${
            active === "substansi" ? "bg-navy-900 text-white" : "text-navy-500 hover:text-navy-900"
          }`}
        >
          Substansi Kemenkeu & Wawasan Kebangsaan
        </button>
        <button
          type="button"
          onClick={() => setActive("tpa")}
          className={`rounded-full px-4 py-2 text-sm font-medium transition ${
            active === "tpa" ? "bg-navy-900 text-white" : "text-navy-500 hover:text-navy-900"
          }`}
        >
          Latihan Kemampuan Dasar (TPA)
        </button>
      </div>

      <div key={active} className="page-transition mt-6 grid gap-4 sm:grid-cols-2">
        {(active === "substansi" ? substansiModules : tpaModules).map((mod) => (
          <ModuleCard key={mod.id} mod={mod} icon={active === "substansi" ? "book" : "spark"} />
        ))}
      </div>
    </div>
  );
}
