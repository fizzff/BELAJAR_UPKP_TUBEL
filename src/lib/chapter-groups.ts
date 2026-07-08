import { Chapter, Module, TPA_MODULE_ID } from "@/lib/types";

export interface ChapterGroup {
  label: string;
  chapters: Chapter[];
}

// Mengelompokkan bab untuk dropdown admin: tiap modul TSKWK jadi satu grup,
// sedangkan modul TPA dipecah lagi jadi Verbal (A-D), Numerikal (E1-E10), dan
// Figural (F) supaya lebih mudah dinavigasi.
export function groupChapters(modules: Module[], chapters: Chapter[]): ChapterGroup[] {
  const groups: ChapterGroup[] = [];
  const inModule = (id: string) => chapters.filter((c) => c.module_id === id);

  // Modul substansi (TSKWK) mengikuti urutan modul.
  for (const m of modules.filter((m) => m.id !== TPA_MODULE_ID)) {
    const cs = inModule(m.id);
    if (cs.length) groups.push({ label: m.title, chapters: cs });
  }

  // Modul TPA dipecah berdasarkan kode bab.
  const tpa = inModule(TPA_MODULE_ID);
  if (tpa.length) {
    const verbal = tpa.filter((c) => ["A", "B", "C", "D", "AN", "DL"].includes(c.code ?? ""));
    const numerik = tpa.filter((c) => (c.code ?? "").startsWith("E"));
    const figural = tpa.filter((c) => c.code === "F");
    if (verbal.length) groups.push({ label: "TPA — Verbal", chapters: verbal });
    if (numerik.length) groups.push({ label: "TPA — Numerikal", chapters: numerik });
    if (figural.length) groups.push({ label: "TPA — Figural", chapters: figural });
  }

  return groups;
}
