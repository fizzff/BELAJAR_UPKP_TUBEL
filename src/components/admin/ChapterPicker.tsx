"use client";

import { useRouter } from "next/navigation";
import { ChapterGroup } from "@/lib/chapter-groups";

// Dropdown pemilih bab, dikelompokkan per modul (TSKWK) / sub-tes (TPA).
// Begitu dipilih, navigasi ke ?chapter=<id>.
export function ChapterPicker({
  groups,
  selected,
  basePath,
}: {
  groups: ChapterGroup[];
  selected?: string;
  basePath: string;
}) {
  const router = useRouter();
  return (
    <select
      value={selected ?? ""}
      onChange={(e) => {
        const id = e.target.value;
        router.push(id ? `${basePath}?chapter=${id}` : basePath);
      }}
      className="w-full max-w-md rounded-lg border border-navy-200 px-3 py-2 text-sm outline-none focus:border-navy-500 sm:w-auto"
    >
      <option value="">— Pilih bab —</option>
      {groups.map((group) => (
        <optgroup key={group.label} label={group.label}>
          {group.chapters.map((c) => (
            <option key={c.id} value={c.id}>
              {c.code ? `${c.code}. ` : ""}
              {c.title}
            </option>
          ))}
        </optgroup>
      ))}
    </select>
  );
}
