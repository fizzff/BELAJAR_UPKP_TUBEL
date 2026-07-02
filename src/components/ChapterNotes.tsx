"use client";

import { useCallback, useRef, useState, useSyncExternalStore } from "react";

function subscribe() {
  return () => {};
}

function getServerSnapshot() {
  return "";
}

export function ChapterNotes({ chapterId }: { chapterId: string }) {
  const storageKey = `chapter-note:${chapterId}`;
  const cachedRawRef = useRef<string | null>(null);
  const cachedValueRef = useRef<string>("");

  const getSnapshot = useCallback(() => {
    const raw = localStorage.getItem(storageKey);
    if (raw !== cachedRawRef.current) {
      cachedRawRef.current = raw;
      cachedValueRef.current = raw ?? "";
    }
    return cachedValueRef.current;
  }, [storageKey]);

  const savedNote = useSyncExternalStore(subscribe, getSnapshot, getServerSnapshot);
  const [draft, setDraft] = useState<string | null>(null);
  const [savedAt, setSavedAt] = useState<string | null>(null);

  const value = draft ?? savedNote;

  function handleChange(next: string) {
    setDraft(next);
    localStorage.setItem(storageKey, next);
    setSavedAt(new Date().toLocaleTimeString("id-ID", { hour: "2-digit", minute: "2-digit" }));
  }

  function handleClear() {
    handleChange("");
  }

  return (
    <section className="mt-8 rounded-xl border border-navy-100 bg-white p-5 shadow-sm">
      <div className="flex items-center justify-between gap-3">
        <h2 className="text-lg font-semibold text-navy-900">Catatan Pembaca</h2>
        {value && (
          <button
            type="button"
            onClick={handleClear}
            className="text-xs text-navy-400 hover:text-navy-700 hover:underline"
          >
            Hapus catatan
          </button>
        )}
      </div>
      <p className="mt-1 text-xs text-navy-400">
        Catatan ini tersimpan otomatis di browser/perangkat ini saja (localStorage) — tidak
        dikirim ke server, tidak tersinkron ke perangkat lain, dan bisa hilang kalau kamu
        membersihkan data situs di browser ini.
      </p>
      <textarea
        value={value}
        onChange={(e) => handleChange(e.target.value)}
        placeholder="Tulis catatan atau ringkasanmu sendiri di sini..."
        rows={5}
        className="mt-3 w-full rounded-lg border border-navy-100 p-3 text-sm text-navy-900 outline-none focus:border-navy-400"
      />
      {savedAt && <p className="mt-1 text-xs text-navy-400">Tersimpan {savedAt}</p>}
    </section>
  );
}
