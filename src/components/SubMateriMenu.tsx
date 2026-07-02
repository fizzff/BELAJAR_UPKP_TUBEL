"use client";

import { createContext, useContext, useState, type ReactNode } from "react";
import { Markdown } from "@/components/Markdown";
import { Content } from "@/lib/types";

type SubMateriContextValue = {
  contents: Content[];
  activeId: string | null;
  setActiveId: (id: string) => void;
};

const SubMateriContext = createContext<SubMateriContextValue | null>(null);

function useSubMateri() {
  const ctx = useContext(SubMateriContext);
  if (!ctx) throw new Error("useSubMateri must be used within SubMateriProvider");
  return ctx;
}

export function SubMateriProvider({
  contents,
  children,
}: {
  contents: Content[];
  children: ReactNode;
}) {
  const [activeId, setActiveId] = useState<string | null>(contents[0]?.id ?? null);

  return (
    <SubMateriContext.Provider value={{ contents, activeId, setActiveId }}>
      {children}
    </SubMateriContext.Provider>
  );
}

function DocIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5" className="h-3.5 w-3.5">
      <path d="M7 3.5h7l3 3v13a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1v-15a1 1 0 0 1 1-1Z" />
      <path d="M14 3.5v3h3M8.5 12h7M8.5 15.5h7M8.5 8.5h3" />
    </svg>
  );
}

function labelFor(content: Content, index: number) {
  if (content.heading) return content.heading;
  return index === 0 ? "Pengantar" : `Bagian ${index + 1}`;
}

export function SubMateriNav() {
  const { contents, activeId, setActiveId } = useSubMateri();
  if (contents.length === 0) return null;

  return (
    <nav className="rounded-xl border border-navy-100 bg-white p-2 shadow-sm">
      <p className="mb-1 px-2 pt-1 text-xs font-semibold uppercase tracking-wide text-navy-400">
        Sub-Materi
      </p>
      <div className="flex flex-col gap-1">
        {contents.map((content, index) => (
          <button
            key={content.id}
            type="button"
            onClick={() => setActiveId(content.id)}
            className={`flex items-center gap-2 rounded-lg px-3 py-2 text-left text-sm font-medium transition ${
              activeId === content.id
                ? "bg-navy-900 text-white"
                : "text-navy-700 hover:bg-navy-50"
            }`}
          >
            <span
              className={`inline-flex h-6 w-6 shrink-0 items-center justify-center rounded-full ${
                activeId === content.id ? "bg-white/15 text-white" : "bg-navy-50 text-navy-700"
              }`}
            >
              <DocIcon />
            </span>
            <span>{labelFor(content, index)}</span>
          </button>
        ))}
      </div>
    </nav>
  );
}

export function SubMateriDisplay() {
  const { contents, activeId } = useSubMateri();
  const active = contents.find((c) => c.id === activeId);
  if (!active) return null;

  return (
    <div
      key={active.id}
      className="page-transition rounded-xl border border-navy-100 bg-white p-5 shadow-sm"
    >
      {active.heading && (
        <h2 className="mb-2 text-lg font-semibold text-navy-900">{active.heading}</h2>
      )}
      <Markdown>{active.body}</Markdown>
    </div>
  );
}
