import type { Metadata } from "next";
import { Lora, Montserrat } from "next/font/google";
import Link from "next/link";
import NextTopLoader from "nextjs-toploader";
import { HeaderNav } from "@/components/HeaderNav";
import { MissionSidebar } from "@/components/MissionSidebar";
import "./globals.css";

const montserrat = Montserrat({
  variable: "--font-montserrat",
  subsets: ["latin"],
});

const lora = Lora({
  variable: "--font-lora",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: "Belajar UPKP dan Tubel PKN STAN",
  description: "E-learning & bank soal persiapan Tes Substansi Kemenkeu & Wawasan Kebangsaan UPKP",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="id" className={`${montserrat.variable} ${lora.variable} h-full antialiased`}>
      <body className="min-h-full flex flex-col bg-background text-navy-900">
        <NextTopLoader color="#c09a3e" height={3} showSpinner={false} shadow={false} />
        <header className="sticky top-0 z-50 border-b border-navy-100 bg-background/90 backdrop-blur-md">
          <div className="mx-auto flex max-w-4xl items-center justify-between gap-6 px-4 py-3">
            <Link
              href="/"
              className="shrink-0 font-display font-semibold tracking-tight text-navy-900"
            >
              <span className="sm:hidden">Belajar UPKP</span>
              <span className="hidden sm:inline">Belajar UPKP dan Tubel PKN STAN</span>
            </Link>
            <HeaderNav />
          </div>
        </header>
        <main className="flex-1">{children}</main>
        <MissionSidebar />
        <footer className="border-t border-navy-100 py-5 text-center text-xs text-navy-400">
          <span className="mx-auto mb-3 block h-px w-10 bg-gold-300" />
          Belajar UPKP dan Tubel PKN STAN — materi &amp; latihan soal, tanpa login
        </footer>
      </body>
    </html>
  );
}
