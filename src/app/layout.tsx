import type { Metadata } from "next";
import { Lora, Montserrat, Newsreader } from "next/font/google";
import NextTopLoader from "nextjs-toploader";
import { SiteHeader } from "@/components/SiteHeader";
import { MissionSidebar } from "@/components/MissionSidebar";
import { getSessionUser } from "@/lib/supabase/server";
import "./globals.css";

const montserrat = Montserrat({
  variable: "--font-montserrat",
  subsets: ["latin"],
});

const lora = Lora({
  variable: "--font-lora",
  subsets: ["latin"],
});

// Font khusus untuk teks soal — serif kontras dengan UI (Montserrat) agar soal
// lebih menonjol dan terasa seperti "naskah ujian".
const newsreader = Newsreader({
  variable: "--font-soal",
  subsets: ["latin"],
  style: ["normal", "italic"],
});

export const metadata: Metadata = {
  title: "Belajar UPKP dan Tubel PKN STAN",
  description: "E-learning & bank soal persiapan Tes Substansi Kemenkeu & Wawasan Kebangsaan UPKP",
};

export default async function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const session = await getSessionUser();

  return (
    <html
      lang="id"
      className={`${montserrat.variable} ${lora.variable} ${newsreader.variable} h-full antialiased`}
    >
      <body className="min-h-full flex flex-col bg-background text-navy-900">
        <NextTopLoader color="#c09a3e" height={3} showSpinner={false} shadow={false} />
        <SiteHeader role={session.role} nama={session.user ? (session.nama ?? null) : null} />
        <main className="flex-1">{children}</main>
        <MissionSidebar />
        <footer className="border-t border-navy-100 py-5 text-center text-xs text-navy-400">
          <span className="mx-auto mb-3 block h-px w-10 bg-gold-300" />
          Sukses UPKP Kemenkeu dan Tubel PKN-STAN.
        </footer>
      </body>
    </html>
  );
}
