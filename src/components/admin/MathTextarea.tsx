"use client";

import { useRef, useState } from "react";
import { Markdown } from "@/components/Markdown";

// Tombol sisip rumus. `caret` = posisi kursor relatif terhadap awal `snip`
// (mis. di dalam kurung pertama). Kalau tak diisi, kursor ditaruh di akhir.
interface Snippet {
  label: string;
  title: string;
  snip: string;
  caret?: number;
}

const MATH_SNIPPETS: Snippet[] = [
  { label: "a/b", title: "Pecahan", snip: "$\\frac{}{}$", caret: 7 },
  { label: "x²", title: "Pangkat", snip: "$x^{}$", caret: 4 },
  { label: "xₙ", title: "Indeks / subskrip", snip: "$x_{}$", caret: 4 },
  { label: "√", title: "Akar kuadrat", snip: "$\\sqrt{}$", caret: 7 },
  { label: "ⁿ√", title: "Akar pangkat n", snip: "$\\sqrt[]{}$", caret: 7 },
  { label: "×", title: "Kali", snip: "\\times " },
  { label: "÷", title: "Bagi", snip: "\\div " },
  { label: "±", title: "Plus-minus", snip: "\\pm " },
  { label: "≤", title: "Kurang dari sama dengan", snip: "\\leq " },
  { label: "≥", title: "Lebih dari sama dengan", snip: "\\geq " },
  { label: "≠", title: "Tidak sama dengan", snip: "\\neq " },
  { label: "π", title: "Pi", snip: "\\pi " },
  { label: "°", title: "Derajat", snip: "^\\circ " },
  { label: "∑", title: "Sigma", snip: "\\sum " },
  { label: "→", title: "Panah", snip: "\\rightarrow " },
  { label: "$…$", title: "Rumus sebaris", snip: "$$", caret: 1 },
];

function BtnBold() {
  return <span className="font-bold">B</span>;
}
function BtnItalic() {
  return <span className="italic">I</span>;
}

export function MathTextarea({
  name,
  defaultValue,
  rows = 4,
  placeholder,
  required,
}: {
  name: string;
  defaultValue?: string;
  rows?: number;
  placeholder?: string;
  required?: boolean;
}) {
  const [value, setValue] = useState(defaultValue ?? "");
  const [showPreview, setShowPreview] = useState(true);
  const ref = useRef<HTMLTextAreaElement>(null);

  // Ganti teks pada rentang [start,end] dengan `text`, lalu taruh kursor/seleksi
  // di [selA,selB]. Memakai execCommand("insertText") supaya perubahan dari
  // toolbar ikut tercatat di riwayat undo bawaan browser — jadi Ctrl+Z / Ctrl+Y
  // berfungsi untuk tombol format maupun ketikan biasa.
  function edit(start: number, end: number, text: string, selA: number, selB: number) {
    const el = ref.current;
    if (!el) return;
    el.focus();
    el.setSelectionRange(start, end);
    let ok = false;
    try {
      ok = document.execCommand("insertText", false, text);
    } catch {
      ok = false;
    }
    if (!ok) {
      // Fallback (undo bawaan tak tersedia): sisip manual via state.
      const next = el.value.slice(0, start) + text + el.value.slice(end);
      setValue(next);
    }
    requestAnimationFrame(() => {
      const node = ref.current;
      if (node) node.setSelectionRange(selA, selB);
    });
  }

  // Sisip potongan teks di posisi kursor (untuk simbol rumus).
  function insertSnippet({ snip, caret }: Snippet) {
    const el = ref.current;
    const start = el?.selectionStart ?? value.length;
    const end = el?.selectionEnd ?? value.length;
    const pos = start + (caret ?? snip.length);
    edit(start, end, snip, pos, pos);
  }

  // Bungkus teks terpilih (bold/italic/link). Kalau tak ada seleksi, pakai
  // placeholder lalu seleksi bagian dalamnya supaya mudah diketik ulang.
  function wrap(before: string, after: string, placeholderText: string) {
    const el = ref.current;
    const start = el?.selectionStart ?? value.length;
    const end = el?.selectionEnd ?? value.length;
    const inner = (el?.value ?? value).slice(start, end) || placeholderText;
    const selStart = start + before.length;
    edit(start, end, before + inner + after, selStart, selStart + inner.length);
  }

  // Tambah penanda di awal baris tempat kursor (heading, list, kutipan).
  function linePrefix(prefix: string) {
    const el = ref.current;
    const start = el?.selectionStart ?? 0;
    const lineStart = (el?.value ?? value).lastIndexOf("\n", start - 1) + 1;
    const pos = start + prefix.length;
    edit(lineStart, lineStart, prefix, pos, pos);
  }

  const btnClass =
    "rounded-md border border-navy-200 bg-white px-2 py-1 text-xs font-medium text-navy-700 transition hover:border-navy-400 hover:bg-navy-50";

  return (
    <div className="rounded-lg border border-navy-200">
      {/* Baris 1: format teks (Word-like) */}
      <div className="flex flex-wrap items-center gap-1 border-b border-navy-100 bg-navy-50/60 px-2 py-1.5">
        <button type="button" title="Tebal" onClick={() => wrap("**", "**", "tebal")} className={btnClass}>
          <BtnBold />
        </button>
        <button type="button" title="Miring" onClick={() => wrap("*", "*", "miring")} className={btnClass}>
          <BtnItalic />
        </button>
        <span className="mx-1 h-4 w-px bg-navy-200" />
        <button type="button" title="Judul bagian" onClick={() => linePrefix("### ")} className={btnClass}>
          H
        </button>
        <button type="button" title="Daftar berpoin" onClick={() => linePrefix("- ")} className={btnClass}>
          • List
        </button>
        <button type="button" title="Daftar bernomor" onClick={() => linePrefix("1. ")} className={btnClass}>
          1. List
        </button>
        <button type="button" title="Kutipan" onClick={() => linePrefix("> ")} className={btnClass}>
          ❝
        </button>
        <button
          type="button"
          title="Sisipkan tautan"
          onClick={() => wrap("[", "](https://)", "teks")}
          className={btnClass}
        >
          🔗
        </button>
        <button
          type="button"
          onClick={() => setShowPreview((v) => !v)}
          className="ml-auto rounded-md px-2 py-1 text-xs font-medium text-navy-500 hover:text-navy-800"
        >
          {showPreview ? "Sembunyikan pratinjau" : "Tampilkan pratinjau"}
        </button>
      </div>

      {/* Baris 2: simbol matematis */}
      <div className="flex flex-wrap items-center gap-1 border-b border-navy-100 bg-navy-50/40 px-2 py-1.5">
        <span className="mr-1 text-[11px] font-semibold uppercase tracking-wide text-navy-400">
          Rumus
        </span>
        {MATH_SNIPPETS.map((s) => (
          <button key={s.label} type="button" title={s.title} onClick={() => insertSnippet(s)} className={btnClass}>
            {s.label}
          </button>
        ))}
      </div>

      <textarea
        ref={ref}
        name={name}
        value={value}
        onChange={(e) => setValue(e.target.value)}
        rows={rows}
        placeholder={placeholder}
        required={required}
        className="w-full resize-y px-3 py-2 text-sm outline-none"
      />

      {showPreview && (
        <div className="border-t border-navy-100 bg-white px-3 py-2">
          <p className="mb-1 text-[11px] font-semibold uppercase tracking-wide text-navy-400">
            Pratinjau
          </p>
          {value.trim() ? (
            <div className="text-sm">
              <Markdown>{value}</Markdown>
            </div>
          ) : (
            <p className="text-sm text-navy-300">
              Ketik teks/rumus, hasilnya muncul di sini. Tebal <b>**teks**</b>, miring{" "}
              <i>*teks*</i>, rumus di antara <code>$…$</code>. Satu kali Enter sudah ganti
              baris. Salah? Tekan <kbd>Ctrl</kbd>+<kbd>Z</kbd> untuk urungkan.
            </p>
          )}
        </div>
      )}
    </div>
  );
}
