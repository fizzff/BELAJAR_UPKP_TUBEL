import type { ReactNode } from "react";
import ReactMarkdown from "react-markdown";
import rehypeKatex from "rehype-katex";
import remarkGfm from "remark-gfm";
import remarkMath from "remark-math";
import "katex/dist/katex.min.css";

const QUICK_TIP_PATTERN = /^(tips cara cepat|catatan penting \(cara cepat\)|langkah cepat)\s*:?/i;

function extractText(node: ReactNode): string {
  if (node === null || node === undefined || typeof node === "boolean") return "";
  if (typeof node === "string" || typeof node === "number") return String(node);
  if (Array.isArray(node)) return node.map(extractText).join("");
  if (typeof node === "object" && "props" in node) {
    return extractText((node as { props?: { children?: ReactNode } }).props?.children);
  }
  return "";
}

function isQuickTipParagraph(children: ReactNode): boolean {
  const first = Array.isArray(children) ? children[0] : children;
  if (!first || typeof first !== "object" || !("type" in first) || first.type !== "strong") {
    return false;
  }
  return QUICK_TIP_PATTERN.test(extractText(first).trim());
}

function LightbulbIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.6" className="h-5 w-5 shrink-0">
      <path
        d="M9 18h6M10 21h4M8 14a5 5 0 1 1 8 0c-.8.9-1.5 1.7-1.5 3h-5c0-1.3-.7-2.1-1.5-3Z"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
    </svg>
  );
}

export function Markdown({ children }: { children: string }) {
  return (
    <div className="prose max-w-none prose-headings:font-semibold prose-headings:text-navy-900 prose-p:text-navy-800 prose-li:text-navy-800 prose-a:text-navy-700 prose-strong:text-navy-900 prose-blockquote:border-navy-300 prose-blockquote:text-navy-500 prose-th:text-navy-900 prose-td:text-navy-800">
      <ReactMarkdown
        remarkPlugins={[remarkGfm, remarkMath]}
        rehypePlugins={[rehypeKatex]}
        components={{
          p({ children: pChildren }) {
            if (isQuickTipParagraph(pChildren)) {
              return (
                <div className="not-prose my-4 flex items-start gap-3 rounded-xl border border-amber-300 bg-amber-50 px-4 py-3 shadow-sm">
                  <span className="mt-0.5 text-amber-500">
                    <LightbulbIcon />
                  </span>
                  <p className="text-sm leading-relaxed text-amber-900">{pChildren}</p>
                </div>
              );
            }
            return <p>{pChildren}</p>;
          },
        }}
      >
        {children}
      </ReactMarkdown>
    </div>
  );
}
