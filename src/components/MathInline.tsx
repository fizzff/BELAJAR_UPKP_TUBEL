"use client";

import type { ReactNode } from "react";
import ReactMarkdown from "react-markdown";
import rehypeKatex from "rehype-katex";
import remarkBreaks from "remark-breaks";
import remarkMath from "remark-math";
import "katex/dist/katex.min.css";

// Renderer ringkas untuk teks soal/opsi/pembahasan pada kuis & misi: mendukung
// rumus $...$ (KaTeX) dan format inline (tebal/miring) serta 1x Enter = ganti
// baris — TANPA membungkus paragraf block, sehingga gaya teks dari pemanggil
// (ukuran font, warna, dsb.) tetap dipakai. Dipakai di QuizRunner,
// DailyQuestRunner, dan QuizResultView.
export function MathInline({ children }: { children: ReactNode }) {
  const text = typeof children === "string" ? children : String(children ?? "");
  return (
    <ReactMarkdown
      remarkPlugins={[remarkMath, remarkBreaks]}
      rehypePlugins={[rehypeKatex]}
      components={{
        p: ({ children: c }) => <>{c}</>,
      }}
    >
      {text}
    </ReactMarkdown>
  );
}
