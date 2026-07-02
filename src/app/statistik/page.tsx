import { StatistikView } from "@/components/StatistikView";

export default function StatistikPage() {
  return (
    <div>
      <div className="bg-navy-900">
        <div className="mx-auto max-w-4xl px-4 py-12">
          <h1 className="text-3xl font-bold tracking-tight text-white">Statistik & Analisis</h1>
          <p className="mt-2 max-w-xl text-navy-200">
            Pantau skor Try Out dan Quiz kamu dari waktu ke waktu untuk mengukur sudah sejauh
            mana kesiapanmu. Data tersimpan di perangkat ini saja.
          </p>
        </div>
      </div>

      <div className="mx-auto max-w-4xl px-4 py-10">
        <StatistikView />
      </div>
    </div>
  );
}
