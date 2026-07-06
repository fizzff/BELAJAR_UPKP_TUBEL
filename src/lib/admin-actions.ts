"use server";

import { revalidatePath } from "next/cache";
import { createServerSupabase, getSessionUser } from "@/lib/supabase/server";

// Semua aksi di sini menulis lewat client bercookie milik user; RLS Supabase
// yang memastikan hanya admin yang boleh. Sebagai lapis kedua, kita cek role di
// server sebelum menjalankan aksi.
async function requireAdmin() {
  const { role } = await getSessionUser();
  if (role !== "admin") throw new Error("Akses ditolak: khusus admin.");
  return createServerSupabase();
}

function str(v: FormDataEntryValue | null): string {
  return String(v ?? "").trim();
}

function intOrNull(v: FormDataEntryValue | null): number | null {
  const s = str(v);
  if (s === "") return null;
  const n = parseInt(s, 10);
  return Number.isFinite(n) ? n : null;
}

// ---------------------------------------------------------------- Pengumuman
export async function saveAnnouncement(formData: FormData) {
  const supabase = await requireAdmin();
  const id = str(formData.get("id"));
  const payload = {
    title: str(formData.get("title")),
    body: str(formData.get("body")),
    pinned: formData.get("pinned") === "on",
    published: formData.get("published") === "on",
    updated_at: new Date().toISOString(),
  };
  if (id) {
    const { error } = await supabase.from("announcements").update(payload).eq("id", id);
    if (error) throw error;
  } else {
    const { data: userData } = await supabase.auth.getUser();
    const { error } = await supabase
      .from("announcements")
      .insert({ ...payload, author_id: userData.user?.id });
    if (error) throw error;
  }
  revalidatePath("/admin/pengumuman");
  revalidatePath("/");
}

export async function deleteAnnouncement(formData: FormData) {
  const supabase = await requireAdmin();
  const { error } = await supabase
    .from("announcements")
    .delete()
    .eq("id", str(formData.get("id")));
  if (error) throw error;
  revalidatePath("/admin/pengumuman");
  revalidatePath("/");
}

// --------------------------------------------------------------------- User
// Role & akses diubah lewat fungsi RPC ber-SECURITY DEFINER (admin_set_role /
// admin_set_access) supaya lolos pembatasan kolom sekaligus tetap dicek
// is_admin() di dalam fungsi.
export async function updateUserRole(formData: FormData) {
  const supabase = await requireAdmin();
  const role = str(formData.get("role"));
  if (role !== "user" && role !== "admin") throw new Error("Role tidak valid.");
  const { error } = await supabase.rpc("admin_set_role", {
    target: str(formData.get("id")),
    new_role: role,
  });
  if (error) throw error;
  revalidatePath("/admin/users");
}

export async function setUserAccess(formData: FormData) {
  const supabase = await requireAdmin();
  const { error } = await supabase.rpc("admin_set_access", {
    target: str(formData.get("id")),
    granted: formData.get("granted") === "true",
  });
  if (error) throw error;
  revalidatePath("/admin/users");
}

// ---------------------------------------------------------------------- Soal
export async function saveQuestion(formData: FormData) {
  const supabase = await requireAdmin();
  const id = str(formData.get("id"));
  const optionE = str(formData.get("option_e"));
  const payload = {
    chapter_id: str(formData.get("chapter_id")),
    question: str(formData.get("question")),
    option_a: str(formData.get("option_a")),
    option_b: str(formData.get("option_b")),
    option_c: str(formData.get("option_c")),
    option_d: str(formData.get("option_d")),
    option_e: optionE === "" ? null : optionE,
    correct_option: str(formData.get("correct_option")),
    explanation: str(formData.get("explanation")) || null,
    difficulty: str(formData.get("difficulty")) || "medium",
    order_index: intOrNull(formData.get("order_index")),
  };
  if (id) {
    const { error } = await supabase.from("questions").update(payload).eq("id", id);
    if (error) throw error;
  } else {
    const { error } = await supabase.from("questions").insert(payload);
    if (error) throw error;
  }
  revalidatePath("/admin/soal");
}

export async function deleteQuestion(formData: FormData) {
  const supabase = await requireAdmin();
  const { error } = await supabase
    .from("questions")
    .delete()
    .eq("id", str(formData.get("id")));
  if (error) throw error;
  revalidatePath("/admin/soal");
}

// -------------------------------------------------------------------- Materi
export async function saveContent(formData: FormData) {
  const supabase = await requireAdmin();
  const id = str(formData.get("id"));
  const payload = {
    chapter_id: str(formData.get("chapter_id")),
    heading: str(formData.get("heading")) || null,
    body: str(formData.get("body")),
    order_index: intOrNull(formData.get("order_index")),
  };
  if (id) {
    const { error } = await supabase.from("contents").update(payload).eq("id", id);
    if (error) throw error;
  } else {
    const { error } = await supabase.from("contents").insert(payload);
    if (error) throw error;
  }
  revalidatePath("/admin/materi");
}

export async function deleteContent(formData: FormData) {
  const supabase = await requireAdmin();
  const { error } = await supabase
    .from("contents")
    .delete()
    .eq("id", str(formData.get("id")));
  if (error) throw error;
  revalidatePath("/admin/materi");
}

export async function saveChapterMindmap(formData: FormData) {
  const supabase = await requireAdmin();
  const { error } = await supabase
    .from("chapters")
    .update({ mindmap: str(formData.get("mindmap")) || null })
    .eq("id", str(formData.get("chapter_id")));
  if (error) throw error;
  revalidatePath("/admin/materi");
}

// ----------------------------------------------------- Struktur: Modul & Bab
// Setelah struktur berubah, dropdown di halaman Soal & Materi ikut berubah,
// jadi ketiganya di-revalidate.
function revalidateStruktur() {
  revalidatePath("/admin/struktur");
  revalidatePath("/admin/soal");
  revalidatePath("/admin/materi");
}

export async function saveModule(formData: FormData) {
  const supabase = await requireAdmin();
  const id = str(formData.get("id"));
  const title = str(formData.get("title"));
  if (!title) throw new Error("Nama modul wajib diisi.");
  const payload = {
    title,
    description: str(formData.get("description")) || null,
    order_index: intOrNull(formData.get("order_index")),
  };
  if (id) {
    const { error } = await supabase.from("modules").update(payload).eq("id", id);
    if (error) throw error;
  } else {
    const { error } = await supabase.from("modules").insert(payload);
    if (error) throw error;
  }
  revalidateStruktur();
}

export async function deleteModule(formData: FormData) {
  const supabase = await requireAdmin();
  const id = str(formData.get("id"));
  // Guard: tolak hapus kalau modul masih punya bab, cegah data yatim.
  const { count, error: countErr } = await supabase
    .from("chapters")
    .select("id", { count: "exact", head: true })
    .eq("module_id", id);
  if (countErr) throw countErr;
  if (count && count > 0) {
    throw new Error(
      `Modul masih berisi ${count} bab. Pindahkan atau hapus bab-babnya dulu sebelum menghapus modul.`,
    );
  }
  const { error } = await supabase.from("modules").delete().eq("id", id);
  if (error) throw error;
  revalidateStruktur();
}

export async function saveChapter(formData: FormData) {
  const supabase = await requireAdmin();
  const id = str(formData.get("id"));
  const module_id = str(formData.get("module_id"));
  const title = str(formData.get("title"));
  if (!module_id) throw new Error("Modul wajib dipilih.");
  if (!title) throw new Error("Judul bab wajib diisi.");
  const payload = {
    module_id,
    code: str(formData.get("code")) || null,
    title,
    order_index: intOrNull(formData.get("order_index")),
  };
  if (id) {
    const { error } = await supabase.from("chapters").update(payload).eq("id", id);
    if (error) throw error;
  } else {
    const { error } = await supabase.from("chapters").insert(payload);
    if (error) throw error;
  }
  revalidateStruktur();
}

export async function deleteChapter(formData: FormData) {
  const supabase = await requireAdmin();
  const id = str(formData.get("id"));
  // Guard: tolak hapus kalau bab masih punya materi atau soal.
  const [{ count: contentCount, error: cErr }, { count: questionCount, error: qErr }] =
    await Promise.all([
      supabase.from("contents").select("id", { count: "exact", head: true }).eq("chapter_id", id),
      supabase.from("questions").select("id", { count: "exact", head: true }).eq("chapter_id", id),
    ]);
  if (cErr) throw cErr;
  if (qErr) throw qErr;
  const total = (contentCount ?? 0) + (questionCount ?? 0);
  if (total > 0) {
    throw new Error(
      `Bab masih berisi ${questionCount ?? 0} soal dan ${contentCount ?? 0} materi. ` +
        "Pindahkan atau hapus isinya dulu sebelum menghapus bab.",
    );
  }
  const { error } = await supabase.from("chapters").delete().eq("id", id);
  if (error) throw error;
  revalidateStruktur();
}
