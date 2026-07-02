"use client";

import { useEffect, useRef } from "react";
import { Markmap } from "markmap-view";
import { Transformer } from "markmap-lib";
import { toPng } from "html-to-image";
import "katex/dist/katex.min.css";

const transformer = new Transformer();

function ZoomInIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8" className="h-4 w-4">
      <circle cx="11" cy="11" r="7" />
      <path d="M11 8v6M8 11h6M21 21l-4.35-4.35" strokeLinecap="round" />
    </svg>
  );
}

function ZoomOutIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8" className="h-4 w-4">
      <circle cx="11" cy="11" r="7" />
      <path d="M8 11h6M21 21l-4.35-4.35" strokeLinecap="round" />
    </svg>
  );
}

function FitIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8" className="h-4 w-4">
      <path
        d="M9 4H5a1 1 0 0 0-1 1v4M15 4h4a1 1 0 0 1 1 1v4M9 20H5a1 1 0 0 1-1-1v-4M15 20h4a1 1 0 0 0 1-1v-4"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
    </svg>
  );
}

function DownloadIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8" className="h-4 w-4">
      <path d="M12 4v11M8 11l4 4 4-4M5 20h14" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

async function exportMindMapAsPng(containerEl: HTMLElement, filename: string) {
  // Rasterizing the raw <svg> via new Image()+drawImage() taints the canvas in
  // every major browser, because markmap renders node text (KaTeX formulas
  // included) inside <foreignObject>. html-to-image works around this: it
  // fetches referenced webfonts and inlines them as base64 data URIs before
  // rasterizing, which is what avoids the taint check.
  const dataUrl = await toPng(containerEl, {
    backgroundColor: "#ffffff",
    pixelRatio: 2,
  });
  const link = document.createElement("a");
  link.href = dataUrl;
  link.download = `${filename}.png`;
  link.click();
}

export function MindMap({ markdown, title }: { markdown: string; title?: string }) {
  const svgRef = useRef<SVGSVGElement>(null);
  const captureRef = useRef<HTMLDivElement>(null);
  const markmapRef = useRef<Markmap | null>(null);

  useEffect(() => {
    if (!svgRef.current) return;
    const { root } = transformer.transform(markdown);
    if (!markmapRef.current) {
      // autoFit lets markmap call fit() itself right after rendering finishes,
      // instead of us calling it too early (before setData's async render completes).
      markmapRef.current = Markmap.create(svgRef.current, { autoFit: true });
    }
    void markmapRef.current.setData(root);
  }, [markdown]);

  return (
    <div className="relative">
      <div ref={captureRef}>
        <svg
          ref={svgRef}
          className="h-100 w-full rounded-lg border border-navy-100 bg-white"
        />
      </div>
      <div className="absolute right-2 top-2 flex gap-1 rounded-lg border border-navy-100 bg-white/95 p-1 shadow-sm backdrop-blur">
        <button
          type="button"
          title="Perbesar"
          aria-label="Perbesar"
          onClick={() => void markmapRef.current?.rescale(1.25)}
          className="rounded-md p-1.5 text-navy-700 transition hover:bg-navy-50"
        >
          <ZoomInIcon />
        </button>
        <button
          type="button"
          title="Perkecil"
          aria-label="Perkecil"
          onClick={() => void markmapRef.current?.rescale(0.8)}
          className="rounded-md p-1.5 text-navy-700 transition hover:bg-navy-50"
        >
          <ZoomOutIcon />
        </button>
        <button
          type="button"
          title="Sesuaikan ke layar"
          aria-label="Sesuaikan ke layar"
          onClick={() => void markmapRef.current?.fit()}
          className="rounded-md p-1.5 text-navy-700 transition hover:bg-navy-50"
        >
          <FitIcon />
        </button>
        <button
          type="button"
          title="Simpan sebagai gambar"
          aria-label="Simpan sebagai gambar"
          onClick={() => {
            if (captureRef.current) {
              void exportMindMapAsPng(captureRef.current, title ?? "mindmap");
            }
          }}
          className="rounded-md p-1.5 text-navy-700 transition hover:bg-navy-50"
        >
          <DownloadIcon />
        </button>
      </div>
    </div>
  );
}
