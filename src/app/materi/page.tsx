import { getModules, isTpaModule } from "@/lib/data";
import { ModuleTabs } from "@/components/ModuleTabs";

export const dynamic = "force-dynamic";

export default async function MateriPage() {
  const modules = await getModules();
  const substansiModules = modules.filter((mod) => !isTpaModule(mod));
  const tpaModules = modules.filter((mod) => isTpaModule(mod));

  return (
    <div>
      <div className="relative overflow-hidden bg-linear-to-br from-navy-950 via-navy-900 to-navy-700">
        <div className="pointer-events-none absolute -top-20 -right-20 h-72 w-72 rounded-full bg-navy-500/30 blur-3xl" />
        <div className="pointer-events-none absolute -bottom-28 -left-16 h-72 w-72 rounded-full bg-navy-400/20 blur-3xl" />
        <div className="relative mx-auto max-w-4xl px-4 py-16">
          <span className="inline-block rounded-full border border-white/20 bg-white/10 px-3 py-1 text-xs font-medium text-navy-100 backdrop-blur-sm">
            E-Learning Persiapan UPKP
          </span>
          <h1 className="mt-4 text-3xl font-bold tracking-tight text-white sm:text-4xl">
            Bahan Materi
          </h1>
          <p className="mt-2 max-w-xl text-navy-200">
            Belajar materi dan latihan soal persiapan Tes Substansi Kemenkeu & Wawasan
            Kebangsaan UPKP, tanpa perlu login.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        {modules.length > 0 ? (
          <ModuleTabs substansiModules={substansiModules} tpaModules={tpaModules} />
        ) : (
          <p className="text-sm text-navy-400">
            Belum ada modul. Jalankan migration dan seed di folder{" "}
            <code className="rounded bg-navy-100 px-1 text-navy-700">supabase/</code> pada
            project Supabase kamu.
          </p>
        )}
      </div>
    </div>
  );
}
