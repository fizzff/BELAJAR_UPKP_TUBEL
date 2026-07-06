import { ProfilView } from "@/components/ProfilView";
import { getUserAttempts } from "@/lib/attempts";
import { getSessionUser } from "@/lib/supabase/server";

export const dynamic = "force-dynamic";

export default async function ProfilPage() {
  const [attempts, session] = await Promise.all([getUserAttempts(), getSessionUser()]);

  return (
    <div>
      <div className="bg-navy-900">
        <div className="mx-auto max-w-4xl px-4 py-12">
          <h1 className="text-3xl font-bold tracking-tight text-white">Profil &amp; Analisa</h1>
          <p className="mt-2 max-w-xl text-navy-200">
            Level belajar, analisa kemampuan lewat grafik, dan riwayat pengerjaanmu — klik riwayat
            untuk membuka soal &amp; pembahasannya lagi.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        <ProfilView attempts={attempts} nama={session.nama ?? null} />
      </div>
    </div>
  );
}
