"use client";

import {
  Children,
  createContext,
  isValidElement,
  useCallback,
  useContext,
  useState,
  type ReactElement,
  type ReactNode,
} from "react";
import ReactMarkdown from "react-markdown";
import rehypeKatex from "rehype-katex";
import remarkBreaks from "remark-breaks";
import remarkGfm from "remark-gfm";
import remarkMath from "remark-math";
import "katex/dist/katex.min.css";

const QUICK_TIP_PATTERN = /^(tips cara cepat|catatan penting \(cara cepat\)|langkah cepat)\s*:?/i;
const CONTOH_SOAL_PATTERN = /^contoh soal/i;
const JAWAB_PATTERN = /^jawab\s*:?/i;
const OPTION_ITEM_PATTERN = /^[A-E]\.\s/;
const CORRECT_ANSWER_PATTERN = /jawabannya adalah\s+([A-E])\b/i;

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

function isOptionsList(children: ReactNode): boolean {
  const items = Children.toArray(children).filter(isValidElement) as ReactElement<{
    children?: ReactNode;
  }>[];
  if (items.length === 0) return false;
  return items.every((item) => OPTION_ITEM_PATTERN.test(extractText(item.props.children).trim()));
}

function hasClassName(node: ReactNode, name: string): node is ReactElement<{ className?: string }> {
  return isValidElement(node) && (node as ReactElement<{ className?: string }>).props.className === name;
}

// mdast node shape kept loose on purpose -- this plugin only reads `type`/`children`
// of paragraph and strong nodes, it never needs the full mdast type surface.
type LooseNode = {
  type: string;
  children?: LooseNode[];
  value?: string;
  data?: Record<string, unknown>;
};

function looseNodeText(node: LooseNode): string {
  if (node.type === "text" && typeof node.value === "string") return node.value;
  if (Array.isArray(node.children)) return node.children.map(looseNodeText).join("");
  return "";
}

function startsWithBoldLabel(node: LooseNode | undefined, pattern: RegExp): boolean {
  if (!node || node.type !== "paragraph" || !Array.isArray(node.children) || node.children.length === 0) {
    return false;
  }
  const first = node.children[0];
  if (first.type !== "strong") return false;
  return pattern.test(looseNodeText(first).trim());
}

function extractCorrectLetter(nodes: LooseNode[]): string {
  const text = nodes.map(looseNodeText).join(" ");
  const match = text.match(CORRECT_ANSWER_PATTERN);
  return match ? match[1].toUpperCase() : "";
}

function wrapPart(className: string, nodes: LooseNode[]): LooseNode {
  return {
    type: "contohSoalPart",
    data: { hName: "div", hProperties: { className: [className] } },
    children: nodes,
  };
}

// Groups a "**Contoh Soal:** ... options ... **Pembahasan:** ... **Jawab:** ..."
// run of top-level nodes into one wrapper div, split into question/options/pembahasan
// sub-wrappers so ContohSoalCard can render them as an interactive quiz instead of static text.
function remarkContohSoalBlock() {
  return (tree: { children: LooseNode[] }) => {
    if (!Array.isArray(tree.children)) return;
    const output: LooseNode[] = [];
    let i = 0;
    while (i < tree.children.length) {
      const node = tree.children[i];
      if (startsWithBoldLabel(node, CONTOH_SOAL_PATTERN)) {
        const group: LooseNode[] = [node];
        let j = i + 1;
        while (j < tree.children.length) {
          const next = tree.children[j];
          if (startsWithBoldLabel(next, CONTOH_SOAL_PATTERN) || next.type === "heading") break;
          group.push(next);
          j++;
          if (startsWithBoldLabel(next, JAWAB_PATTERN)) break;
        }

        const questionNode = group[0];
        const optionsNode = group.find((n) => n.type === "list");
        const pembahasanNodes = group.filter((n) => n !== questionNode && n !== optionsNode);
        const correctLetter = extractCorrectLetter(pembahasanNodes);

        output.push({
          type: "contohSoalBlock",
          data: {
            hName: "div",
            hProperties: { className: ["contoh-soal-block"], "data-correct": correctLetter },
          },
          children: [
            wrapPart("contoh-soal-question", [questionNode]),
            ...(optionsNode ? [wrapPart("contoh-soal-options", [optionsNode])] : []),
            wrapPart("contoh-soal-pembahasan", pembahasanNodes),
          ],
        });
        i = j;
      } else {
        output.push(node);
        i++;
      }
    }
    tree.children = output;
  };
}

type ContohSoalContextValue = {
  selected: string | null;
  correctLetter: string;
  onSelect: (letter: string) => void;
};

const ContohSoalOptionsContext = createContext<ContohSoalContextValue | null>(null);

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

function PencilIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.6" className="h-4 w-4 shrink-0">
      <path
        d="M4 20h4L18.5 9.5a2.1 2.1 0 0 0-3-3L5 17l-1 3Z"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path d="m14 6 3 3" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

function CheckIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" className="h-4 w-4 shrink-0">
      <path d="M5 13l4 4L19 7" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

function XIcon() {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" className="h-4 w-4 shrink-0">
      <path d="M6 6l12 12M18 6L6 18" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

function ContohSoalOption({
  letter,
  ctx,
  children,
}: {
  letter: string;
  ctx: ContohSoalContextValue;
  children: ReactNode;
}) {
  const { selected, correctLetter, onSelect } = ctx;
  const answered = selected !== null;
  const isCorrectOption = letter === correctLetter;
  const isPickedOption = letter === selected;

  let stateClasses = "border-slate-200 bg-white text-navy-800 hover:border-sky-300 hover:bg-sky-50";
  if (answered) {
    if (isCorrectOption) {
      stateClasses = "border-emerald-400 bg-emerald-50 text-emerald-900";
    } else if (isPickedOption) {
      stateClasses = "border-rose-400 bg-rose-50 text-rose-900";
    } else {
      stateClasses = "border-slate-200 bg-white text-navy-400 opacity-60";
    }
  }

  return (
    <li className="list-none">
      <button
        type="button"
        onClick={() => onSelect(letter)}
        disabled={answered}
        className={`flex w-full items-center gap-2 rounded-lg border px-3 py-2 text-left text-sm leading-relaxed transition ${stateClasses} ${answered ? "cursor-default" : "cursor-pointer"}`}
      >
        <span className="flex-1">{children}</span>
        {answered && isCorrectOption && (
          <span className="text-emerald-600">
            <CheckIcon />
          </span>
        )}
        {answered && isPickedOption && !isCorrectOption && (
          <span className="text-rose-600">
            <XIcon />
          </span>
        )}
      </button>
    </li>
  );
}

function MarkdownListItem({ children: liChildren }: { children?: ReactNode }) {
  const ctx = useContext(ContohSoalOptionsContext);
  const text = extractText(liChildren).trim();
  const isOption = OPTION_ITEM_PATTERN.test(text);
  if (isOption && ctx) {
    return (
      <ContohSoalOption letter={text[0].toUpperCase()} ctx={ctx}>
        {liChildren}
      </ContohSoalOption>
    );
  }
  if (isOption) {
    return (
      <li className="rounded-lg border border-slate-200 bg-white px-3 py-2 text-sm leading-relaxed text-navy-800">
        {liChildren}
      </li>
    );
  }
  return <li>{liChildren}</li>;
}

function ContohSoalCard({ correctLetter, children }: { correctLetter: string; children: ReactNode }) {
  const [selected, setSelected] = useState<string | null>(null);

  const parts = Children.toArray(children);
  const questionPart = parts.find((part) => hasClassName(part, "contoh-soal-question"));
  const optionsPart = parts.find((part) => hasClassName(part, "contoh-soal-options"));
  const pembahasanPart = parts.find((part) => hasClassName(part, "contoh-soal-pembahasan"));

  const handleSelect = useCallback((letter: string) => {
    setSelected((prev) => prev ?? letter);
  }, []);

  const answered = selected !== null;
  const isCorrect = answered && selected === correctLetter;

  return (
    <div className="not-prose my-5 overflow-hidden rounded-2xl border border-sky-200 bg-sky-50 shadow-sm">
      <div className="flex items-center justify-between gap-2 border-b border-sky-200 bg-sky-100/70 px-4 py-2">
        <span className="flex items-center gap-2 text-xs font-semibold uppercase tracking-wide text-sky-700">
          <PencilIcon />
          Contoh Soal
        </span>
        {answered && (
          <span
            className={`rounded-full px-2 py-0.5 text-xs font-semibold ${
              isCorrect ? "bg-emerald-100 text-emerald-700" : "bg-rose-100 text-rose-700"
            }`}
          >
            {isCorrect ? "Terjawab benar" : "Terjawab salah"}
          </span>
        )}
      </div>
      <div className="prose max-w-none px-4 py-4 text-sm leading-relaxed prose-p:text-navy-800 prose-strong:text-navy-900">
        {questionPart}
        <ContohSoalOptionsContext.Provider value={{ selected, correctLetter, onSelect: handleSelect }}>
          {optionsPart}
        </ContohSoalOptionsContext.Provider>
      </div>
      <div
        className={`grid transition-all duration-500 ease-in-out ${
          answered ? "grid-rows-[1fr] opacity-100" : "grid-rows-[0fr] opacity-0"
        }`}
      >
        <div className="overflow-hidden">
          <div className="border-t border-sky-200 px-4 py-4">
            <div
              className={`mb-3 flex items-center gap-2 rounded-lg px-3 py-2 text-sm font-semibold ${
                isCorrect ? "bg-emerald-50 text-emerald-900" : "bg-rose-50 text-rose-900"
              }`}
            >
              <span className={isCorrect ? "text-emerald-600" : "text-rose-600"}>
                {isCorrect ? <CheckIcon /> : <XIcon />}
              </span>
              <span>
                {isCorrect
                  ? "Jawabanmu benar!"
                  : `Jawabanmu kurang tepat, jawaban yang benar adalah ${correctLetter}.`}
              </span>
            </div>
            <div className="prose max-w-none text-sm leading-relaxed prose-p:text-justify prose-p:text-navy-800 prose-strong:text-navy-900">
              {pembahasanPart}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export function Markdown({ children }: { children: string }) {
  return (
    <div className="prose max-w-none prose-headings:font-semibold prose-headings:text-navy-900 prose-p:text-justify prose-p:text-navy-800 prose-li:text-navy-800 prose-a:text-navy-700 prose-strong:text-navy-900 prose-blockquote:border-navy-300 prose-blockquote:text-navy-500 prose-th:text-navy-900 prose-td:text-navy-800">
      <ReactMarkdown
        remarkPlugins={[remarkGfm, remarkBreaks, remarkMath, remarkContohSoalBlock]}
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
          ul({ children: ulChildren }) {
            if (isOptionsList(ulChildren)) {
              return (
                <ul className="not-prose my-3 flex list-none flex-col gap-2 pl-0">{ulChildren}</ul>
              );
            }
            return <ul>{ulChildren}</ul>;
          },
          li: MarkdownListItem,
          img({ node, ...props }) {
            void node;
            return (
              // eslint-disable-next-line @next/next/no-img-element
              <img
                {...props}
                alt={props.alt ?? ""}
                className="not-prose mx-auto my-3 block max-w-full rounded-lg border border-navy-100 bg-white"
              />
            );
          },
          div({
            className,
            children: divChildren,
            "data-correct": correctAttr,
          }: {
            className?: string;
            children?: ReactNode;
            "data-correct"?: string;
          }) {
            if (className === "contoh-soal-block") {
              return <ContohSoalCard correctLetter={correctAttr ?? ""}>{divChildren}</ContohSoalCard>;
            }
            return <div className={className}>{divChildren}</div>;
          },
        }}
      >
        {children}
      </ReactMarkdown>
    </div>
  );
}
