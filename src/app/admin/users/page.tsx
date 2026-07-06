import { createServerSupabase, getSessionUser } from "@/lib/supabase/server";
import { setUserAccess, updateUserRole } from "@/lib/admin-actions";

export const dynamic = "force-dynamic";

interface Profile {
  id: string;
  email: string | null;
  nama: string | null;
  role: "user" | "admin";
  access_granted: boolean;
  created_at: string;
}

export default async function AdminUsers() {
  const supabase = await createServerSupabase();
  const { user: me } = await getSessionUser();
  const { data } = await supabase
    .from("profiles")
    .select("*")
    .order("created_at", { ascending: false });
  const users = (data ?? []) as Profile[];

  return (
    <div>
      <h2 className="text-lg font-semibold text-navy-900">Kelola User ({users.length})</h2>
      <p className="mt-1 text-sm text-navy-500">
        Beri atau cabut <span className="font-medium">akses</span> tiap user, dan atur{" "}
        <span className="font-medium">role</span>. User tanpa akses tidak bisa membuka
        materi/soal (halaman menunggu aktivasi).
      </p>

      <div className="mt-4 overflow-x-auto rounded-xl border border-navy-100 bg-white shadow-sm">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b border-navy-100 text-left text-xs uppercase tracking-wide text-navy-400">
              <th className="px-4 py-3">Nama</th>
              <th className="px-4 py-3">Email</th>
              <th className="px-4 py-3">Role</th>
              <th className="px-4 py-3">Akses</th>
              <th className="px-4 py-3">Aksi</th>
            </tr>
          </thead>
          <tbody>
            {users.map((u) => {
              const isSelf = u.id === me?.id;
              const effectiveAccess = u.role === "admin" || u.access_granted;
              return (
                <tr key={u.id} className="border-b border-navy-50 last:border-0">
                  <td className="px-4 py-3 font-medium text-navy-900">{u.nama ?? "-"}</td>
                  <td className="px-4 py-3 text-navy-600">{u.email ?? "-"}</td>
                  <td className="px-4 py-3">
                    <span
                      className={`rounded-full px-2 py-0.5 text-xs font-semibold ${
                        u.role === "admin"
                          ? "bg-navy-900 text-white"
                          : "bg-navy-100 text-navy-600"
                      }`}
                    >
                      {u.role}
                    </span>
                  </td>
                  <td className="px-4 py-3">
                    {effectiveAccess ? (
                      <span className="rounded-full bg-emerald-50 px-2 py-0.5 text-xs font-semibold text-emerald-700">
                        {u.role === "admin" ? "aktif (admin)" : "aktif"}
                      </span>
                    ) : (
                      <span className="rounded-full bg-amber-50 px-2 py-0.5 text-xs font-semibold text-amber-700">
                        belum aktif
                      </span>
                    )}
                  </td>
                  <td className="px-4 py-3">
                    {isSelf ? (
                      <span className="text-xs text-navy-400">Akun Anda</span>
                    ) : (
                      <div className="flex flex-wrap items-center gap-2">
                        {u.role !== "admin" && (
                          <form action={setUserAccess}>
                            <input type="hidden" name="id" value={u.id} />
                            <input
                              type="hidden"
                              name="granted"
                              value={u.access_granted ? "false" : "true"}
                            />
                            <button
                              type="submit"
                              className={`rounded-md px-3 py-1 text-xs font-medium text-white transition ${
                                u.access_granted
                                  ? "bg-amber-600 hover:bg-amber-700"
                                  : "bg-emerald-600 hover:bg-emerald-700"
                              }`}
                            >
                              {u.access_granted ? "Cabut akses" : "Beri akses"}
                            </button>
                          </form>
                        )}
                        <form action={updateUserRole}>
                          <input type="hidden" name="id" value={u.id} />
                          <input
                            type="hidden"
                            name="role"
                            value={u.role === "admin" ? "user" : "admin"}
                          />
                          <button
                            type="submit"
                            className="rounded-md border border-navy-200 px-3 py-1 text-xs font-medium text-navy-700 transition hover:border-navy-400"
                          >
                            {u.role === "admin" ? "Jadikan user" : "Jadikan admin"}
                          </button>
                        </form>
                      </div>
                    )}
                  </td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    </div>
  );
}
