import type { Metadata } from "next";
import { Montserrat } from "next/font/google";
import Link from "next/link";
import NextTopLoader from "nextjs-toploader";
import { HeaderNav } from "@/components/HeaderNav";
import "./globals.css";

const montserrat = Montserrat({
  variable: "--font-montserrat",
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
    <html lang="id" className={`${montserrat.variable} h-full antialiased`}>
      <body className="min-h-full flex flex-col bg-navy-50 text-navy-900">
        <NextTopLoader color="#0f2942" height={3} showSpinner={false} shadow={false} />
        <header className="sticky top-0 z-50 border-b border-gray-200/60 bg-gray-100/60 shadow-sm backdrop-blur-md backdrop-saturate-150 supports-backdrop-filter:bg-gray-100/40">
          <div className="mx-auto flex max-w-4xl items-center justify-between gap-6 px-4 py-3">
            <Link href="/" className="shrink-0 font-semibold tracking-tight text-navy-900">
              <span className="sm:hidden">Belajar UPKP</span>
              <span className="hidden sm:inline">Belajar UPKP dan Tubel PKN STAN</span>
            </Link>
            <HeaderNav />
          </div>
        </header>
        <main className="flex-1">{children}</main>
        <footer className="border-t border-navy-100 bg-white py-4 text-center text-xs text-navy-400">
          Belajar UPKP dan Tubel PKN STAN — materi & latihan soal, tanpa login
        </footer>
      </body>
    </html>
  );
}
