# Belajar UPKP dan Tubel PKN STAN

E-learning & bank soal persiapan Tes Substansi Kemenkeu & Wawasan Kebangsaan UPKP, ditambah modul latihan TPA (standar OTO Bappenas). Lihat `rancangan-aplikasi-belajar-upkp.md` untuk rancangan lengkapnya.

Tidak ada login — riwayat pengerjaan kuis disimpan sementara di `sessionStorage` browser.

## Setup Supabase

Jalankan file-file berikut **secara berurutan** di **SQL Editor** dashboard Supabase:

1. Buat project baru di [supabase.com](https://supabase.com).
2. `supabase/migrations/0001_init_schema.sql` — bikin tabel `modules`, `chapters`, `contents`, `questions` + RLS read-only publik.
3. `supabase/migrations/0002_add_chapter_mindmap.sql` — tambah kolom `chapters.mindmap` (outline markdown untuk mind map).
4. `supabase/seed.sql` — isi 6 modul, bab-babnya, materi & bank soal TPA yang sudah lengkap, serta contoh soal untuk 5 modul UPKP lainnya.
5. `supabase/seed_ringkasan_m1_etika_pns.sql`
6. `supabase/seed_ringkasan_m2_nilai_kemenkeu.sql`
7. `supabase/seed_ringkasan_m3_tata_aturan_kepegawaian.sql`
8. `supabase/seed_ringkasan_m4_pengelolaan_keuangan_negara.sql`
9. `supabase/seed_ringkasan_m5_wawasan_kebangsaan.sql`

File `seed_ringkasan_*` ini mengisi ringkasan poin-poin (`contents`) dan mind map (`chapters.mindmap`) untuk kelima modul UPKP, diringkas dari materi lengkap di `materi/lengkap/*.txt` (hasil ekstraksi PDF asli, page-preserved) — angka, nomor peraturan, tanggal, dan nama tokoh disalin persis, hanya kalimat penjelasnya yang dipadatkan jadi bullet points.

10. `supabase/seed_questions_m1_etika_pns.sql`
11. `supabase/seed_questions_m2_nilai_kemenkeu.sql`
12. `supabase/seed_questions_m3_tata_aturan_kepegawaian.sql`
13. `supabase/seed_questions_m4_pengelolaan_keuangan_negara.sql`
14. `supabase/seed_questions_m5_wawasan_kebangsaan.sql`

File `seed_questions_*` ini mengisi 5 soal pilihan ganda per bab (`questions`) untuk kelima modul UPKP (155 soal total), menggantikan contoh soal lama yang cuma 2-4 per modul. Posisi jawaban benar (A/B/C/D) sudah diverifikasi merata, tidak menumpuk di satu opsi.

15. `supabase/migrate_tpa_v2_chapters.sql` — **restrukturisasi total modul TPA**: 3 bab lama (Tes Verbal/Kuantitatif/Logika) diganti jadi 15 bab yang lebih rinci. **Wajib dijalankan sebelum** file `seed_tpa_v2_*` di bawah (bab-babnya harus ada dulu sebelum diisi konten).
16. `supabase/seed_tpa_v2_verbal1.sql` — Verbal #1
17. `supabase/seed_tpa_v2_verbal2.sql` — Verbal #2
18. `supabase/seed_tpa_v2_wacana.sql` — Wacana
19. `supabase/seed_tpa_v2_penalaran.sql` — Kemampuan Penalaran
20. `supabase/seed_tpa_v2_numerikal_bilangan.sql` — Bilangan Bulat dan Pecahan
21. `supabase/seed_tpa_v2_numerikal_bangun.sql` — Bangun Datar dan Bangun Ruang
22. `supabase/seed_tpa_v2_numerikal_aritmatika_sosial.sql` — Aritmatika Sosial dan Barisan
23. `supabase/seed_tpa_v2_numerikal_sudut_himpunan.sql` — Sudut dan Himpunan
24. `supabase/seed_tpa_v2_numerikal_perbandingan.sql` — Perbandingan
25. `supabase/seed_tpa_v2_numerikal_jarak_kecepatan.sql` — Jarak, Kecepatan & Waktu
26. `supabase/seed_tpa_v2_numerikal_peluang.sql` — Peluang
27. `supabase/seed_tpa_v2_numerikal_persamaan.sql` — Persamaan dan Pertidaksamaan
28. `supabase/seed_tpa_v2_numerikal_statistika.sql` — Statistika
29. `supabase/seed_tpa_v2_numerikal_deret.sql` — Baris serta Deret Angka dan Huruf
30. `supabase/seed_tpa_v2_figural.sql` — Figural/Logika Gambar (placeholder "coming soon", tanpa soal)

File `seed_tpa_v2_*` di atas satu file = satu bab, masing-masing isi ringkasan materi + mind map + 5 soal (kecuali Figural yang masih placeholder, belum ada soal — butuh representasi visual yang belum didukung skema saat ini). Total 70 soal baru untuk 14 bab.

31. Salin `.env.local.example` ke `.env.local`, isi dengan **Project URL** dan **anon public key** dari Settings → API.

```bash
cp .env.local.example .env.local
```

32. Jalankan project:

```bash
npm run dev
```

## Catatan tentang isi materi

- **Modul TPA (M6)** sudah direstrukturisasi jadi 15 bab (lihat bagian Setup Supabase di atas): Verbal #1, Verbal #2, Wacana, Kemampuan Penalaran, 10 bab Subtest Numerikal, dan Figural/Logika Gambar (belum ada soal, coming soon). Materi disusun orisinal mengikuti gaya/kategori standar TPA, bukan reproduksi dari bank soal resmi manapun.
- **Modul M1-M5** (Etika PNS, Nilai Kemenkeu, Tata Aturan Kepegawaian, Pengelolaan Keuangan Negara, Wawasan Kebangsaan) sudah punya ringkasan poin-poin + mind map lengkap untuk semua bab, dan 5 soal pilihan ganda per bab (155 soal total), semuanya diringkas/digenerate dari materi asli PDF-nya (`materi/*.pdf` → diekstrak ke `materi/lengkap/*.txt` → diringkas ke `supabase/seed_ringkasan_m*.sql` dan `supabase/seed_questions_m*.sql`).
- File `supabase/seed_contents_m*.sql` (tanpa "ringkasan") adalah versi **verbatim lama** (sebagian belum lengkap untuk M3 & M5) — sudah digantikan oleh `seed_ringkasan_m*.sql` dan tidak perlu dijalankan. Teks lengkapnya tetap tersimpan di `materi/lengkap/*.txt` sebagai referensi akurasi.

## Try Out

`/tryout` menampilkan 10 paket, masing-masing berisi 75 soal acak gabungan dari kelima modul UPKP (M1-M5, tidak termasuk TPA). Komposisi tiap paket **deterministik** (di-seed dari nomor paketnya) — dibuka ulang kapan pun akan menampilkan 75 soal yang sama, cocok untuk latihan berulang/tracking progres. Karena total bank soal cuma 155, antar paket akan ada soal yang overlap — itu wajar untuk ukuran bank soal saat ini.

## Struktur halaman

| Route | Keterangan |
|---|---|
| `/` | Daftar modul |
| `/modul/[moduleId]` | Daftar bab dalam modul |
| `/modul/[moduleId]/[chapterId]` | Baca materi per bab |
| `/kuis/[moduleId]` | Kuis acak dari semua bab dalam modul |
| `/kuis/[moduleId]/[chapterId]` | Kuis per bab spesifik |
| `/kuis/hasil` | Skor & pembahasan setelah kuis selesai |
| `/tryout` | Daftar 10 paket Try Out |
| `/tryout/[paket]` | Kuis 75 soal gabungan (paket 1-10) |

## Deploy

```bash
vercel --prod
```

Atau hubungkan repo ke [Vercel dashboard](https://vercel.com/new) — jangan lupa set `NEXT_PUBLIC_SUPABASE_URL` dan `NEXT_PUBLIC_SUPABASE_ANON_KEY` di Environment Variables project Vercel.
