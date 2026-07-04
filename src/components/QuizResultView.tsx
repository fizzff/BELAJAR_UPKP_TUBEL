import { QuizResult } from "@/lib/quiz";

export function QuizResultView({ result }: { result: QuizResult }) {
  const percentage = Math.round((result.correct / result.total) * 100);

  return (
    <div>
      <p className="text-sm text-navy-400">{result.title}</p>
      <h1 className="mt-1 text-2xl font-bold tracking-tight text-navy-900">Hasil Kuis</h1>

      <div className="mt-6 rounded-lg border border-navy-100 bg-white p-6 text-center">
        <p className="text-4xl font-bold text-navy-900">
          {result.correct}/{result.total}
        </p>
        <p className="mt-1 text-sm text-navy-400">{percentage}% jawaban benar</p>
        {result.xpEarned !== undefined && result.xpEarned > 0 && (
          <p className="mx-auto mt-3 inline-block rounded-full bg-gold-50 px-3 py-1 text-sm font-semibold text-gold-700 ring-1 ring-gold-200">
            +{result.xpEarned} XP
          </p>
        )}
      </div>

      <h2 className="mt-8 text-lg font-semibold text-navy-900">Pembahasan</h2>
      <div className="mt-4 space-y-4">
        {result.items.map((item, i) => {
          const isCorrect = item.selected === item.correctOption;
          return (
            <div
              key={i}
              className={`rounded-lg border p-4 text-sm ${
                isCorrect ? "border-emerald-200 bg-emerald-50" : "border-red-200 bg-red-50"
              }`}
            >
              <p className="whitespace-pre-line font-medium text-navy-900">
                {i + 1}. {item.question}
              </p>
              <ul className="mt-2 space-y-1">
                {(Object.keys(item.options) as Array<keyof typeof item.options>).map((key) => (
                  <li
                    key={key}
                    className={
                      key === item.correctOption
                        ? "font-semibold text-emerald-700"
                        : key === item.selected
                        ? "font-semibold text-red-700"
                        : "text-navy-500"
                    }
                  >
                    {key}. {item.options[key]}
                    {key === item.correctOption && " (jawaban benar)"}
                    {key === item.selected && key !== item.correctOption && " (jawabanmu)"}
                  </li>
                ))}
              </ul>
              {item.selected === null && <p className="mt-2 text-navy-400">Tidak dijawab.</p>}
              {item.explanation && (
                <p className="mt-2 text-navy-500">
                  <span className="font-medium">Pembahasan: </span>
                  {item.explanation}
                </p>
              )}
            </div>
          );
        })}
      </div>
    </div>
  );
}
