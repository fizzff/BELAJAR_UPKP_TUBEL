"use client";

import { useState } from "react";
import { ChapterGrid } from "@/components/ChapterGrid";
import { Chapter } from "@/lib/types";

export function TpaChapterMenu({
  moduleId,
  groups,
}: {
  moduleId: string;
  groups: { label: string; chapters: Chapter[] }[];
}) {
  const [active, setActive] = useState(groups[0]?.label ?? "");
  const activeGroup = groups.find((g) => g.label === active);

  return (
    <div className="md:flex md:items-start md:gap-6">
      <div className="mb-4 shrink-0 space-y-2 md:sticky md:top-6 md:mb-0 md:w-48">
        {groups.map((group) => (
          <button
            key={group.label}
            type="button"
            onClick={() => setActive(group.label)}
            className={`w-full rounded-2xl px-5 py-3 text-left font-semibold text-white shadow-sm transition ${
              active === group.label ? "bg-navy-900" : "bg-navy-700 hover:bg-navy-800"
            }`}
          >
            {group.label}
          </button>
        ))}
      </div>

      {activeGroup && (
        <div key={activeGroup.label} className="page-transition min-w-0 flex-1">
          <ChapterGrid moduleId={moduleId} chapters={activeGroup.chapters} />
        </div>
      )}
    </div>
  );
}
