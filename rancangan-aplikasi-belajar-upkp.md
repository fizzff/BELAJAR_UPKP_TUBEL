# Rancangan Aplikasi Belajar & Bank Soal UPKP

## 1. Konteks
Seri modul "E-Learning Persiapan Tes Substansi Kemenkeu & Wawasan Kebangsaan UPKP", total 5 materi. Progres yang sudah diterima:

| # | Modul | Status |
|---|---|---|
| 1 | Etika PNS | ✅ Diterima (32 hal, 9 bab A–I + Penutup) |
| 2 | Nilai-Nilai Kementerian Keuangan | ✅ Diterima (50 hal, 5 bab) |
| 3 | Tata Aturan Kepegawaian | ✅ Diterima (73 hal, 5 bab) |
| 4 | Pengelolaan Keuangan Negara | ✅ Diterima (78 hal, 6 bab) |
| 5 | Wawasan Kebangsaan | ✅ Diterima (80 hal, 5 bab) |

**Status: Semua 5 materi UPKP sudah lengkap diterima, ditambah 1 modul tambahan (TPA) yang digenerate mengikuti standar OTO Bappenas.**

| 6 | TPA (Standar OTO Bappenas) | ✅ Dibuat — materi + bank soal (bukan upload user) |

Skema di bawah dirancang **scalable** untuk banyak modul sejak awal.

## 2. Skema Database (Supabase / PostgreSQL)

```sql
-- Modul / mata pelajaran besar
create table modules (
  id uuid primary key default gen_random_uuid(),
  title text not null,               -- "Etika PNS"
  description text,
  order_index int,
  created_at timestamptz default now()
);

-- Bab di dalam modul
create table chapters (
  id uuid primary key default gen_random_uuid(),
  module_id uuid references modules(id) on delete cascade,
  code text,                          -- "A", "B", "C" ...
  title text not null,                -- "Prinsip-Prinsip Moral PNS"
  order_index int,
  created_at timestamptz default now()
);

-- Konten materi per bab (bisa dipecah per sub-bagian biar tidak terlalu panjang satu halaman)
create table contents (
  id uuid primary key default gen_random_uuid(),
  chapter_id uuid references chapters(id) on delete cascade,
  heading text,                       -- "1. Profesionalisme"
  body text not null,                 -- isi materi (markdown)
  order_index int,
  created_at timestamptz default now()
);

-- Bank soal
create table questions (
  id uuid primary key default gen_random_uuid(),
  chapter_id uuid references chapters(id) on delete set null,
  question text not null,
  option_a text not null,
  option_b text not null,
  option_c text not null,
  option_d text not null,
  option_e text,                      -- opsional kalau soal 5 pilihan
  correct_option char(1) not null,    -- 'A' | 'B' | 'C' | 'D' | 'E'
  explanation text,                   -- pembahasan jawaban
  difficulty text default 'medium',   -- easy | medium | hard
  created_at timestamptz default now()
);
```

Tanpa login, riwayat pengerjaan cukup disimpan sementara di **state browser** (tidak perlu tabel `user_answers`). Kalau nanti berubah pikiran ingin fitur simpan progres, tinggal tambah tabel itu belakangan.

## 3. Struktur Halaman Aplikasi (Next.js App Router)

```
/                      -> Landing page, daftar modul
/modul/[moduleId]      -> Daftar bab dalam modul (mis. Etika PNS)
/modul/[moduleId]/[chapterId]  -> Halaman baca materi per bab
/kuis/[moduleId]       -> Mode latihan soal (random dari semua bab dalam modul)
/kuis/[moduleId]/[chapterId]   -> Latihan soal per bab spesifik
/kuis/hasil            -> Halaman skor & pembahasan setelah selesai kuis
```

## 4. Pemetaan Bab Modul "Etika PNS" ke `chapters`

| Kode | Judul Bab |
|---|---|
| A | Pengantar |
| B | Prinsip-Prinsip Moral PNS |
| C | Pengertian Etika |
| D | Kode Etik PNS |
| E | Kode Etik Instansi dan Kode Etik Profesi |
| F | Implementasi Etika dalam Organisasi Pemerintah |
| G | Implementasi Nilai Dasar PNS, Kode Etik & Kode Perilaku di Kemenkeu |
| H | Penegakan Kode Etik dan Kode Perilaku PNS di Kemenkeu |
| I | Implementasi Kode Etik pada Era Sistem Kerja Fleksibel |

## 4b. Pemetaan Bab Modul "Nilai-Nilai Kementerian Keuangan"

| Bab | Judul |
|---|---|
| I | Pendahuluan |
| II | Nilai dan Budaya Organisasi (pengertian nilai, nilai organisasi, proses pembentukan, fungsi, internalisasi, budaya organisasi) |
| III | Nilai-Nilai Dasar Aparatur Sipil Negara (BerAKHLAK) |
| IV | Nilai-Nilai Kementerian Keuangan (Integritas, Profesionalisme, Sinergi, Pelayanan, Kesempurnaan — makna, perilaku utama, sejarah pembentukan, internalisasi) |
| V | Penutup |

Catatan: modul ini juga punya tabel keterkaitan BerAKHLAK ↔ Nilai Kemenkeu dan tabel Sikap Dasar/Perilaku Efektif per jenjang jabatan — bagus untuk dijadikan soal tipe "pasangan/jodohkan" atau studi kasus.

## 4c. Pemetaan Bab Modul "Tata Aturan Kepegawaian"

| Bab | Judul |
|---|---|
| I | Pengertian dan Jabatan Aparatur Sipil Negara (ASN, Jabatan Manajerial/Nonmanajerial, Penyetaraan Jabatan) |
| II | Hak dan Kewajiban ASN |
| III | Kelembagaan (peran Kementerian PAN-RB) |
| IV | Manajemen Aparatur Sipil Negara (Manajemen PNS, PPPK, Pejabat Negara, Mutasi, Penggajian, Pemberhentian, Pensiun) |
| V | Implementasi UU 20/2023 di Kementerian Keuangan (Sistem Merit, Manajemen ASN Kemenkeu, Pangkat/Jabatan, Pengembangan Karier, Mutasi/Promosi, Penilaian Kinerja, Penggajian, Penghargaan, Disiplin, Cuti, Kesejahteraan, Gaji, Pengembangan Kompetensi) |

Catatan: modul ini sangat kaya angka dan ketentuan teknis (batas usia pensiun, jenis hukuman disiplin, jumlah hari cuti, dsb) — sangat cocok untuk soal hitungan/hafalan angka yang sering keluar di tes UPKP.

## 4d. Pemetaan Bab Modul "Pengelolaan Keuangan Negara"

| Bab | Judul |
|---|---|
| I | Pendahuluan |
| II | Pengertian Pengelolaan Keuangan Negara (definisi, bidang fiskal/moneter/kekayaan dipisahkan, tujuan, kekuasaan pengelolaan, asas umum) |
| III | Anggaran Pendapatan dan Belanja Negara (pengertian APBN, kebijakan fiskal, siklus APBN, struktur/format, reformasi penyusunan & pelaksanaan) |
| IV | Pengelolaan Pendapatan Negara (perpajakan, PNBP, hibah) |
| V | Pengelolaan Belanja Pemerintah dan Pembiayaan Defisit Anggaran (belanja pusat/daerah/TKD, pembiayaan dalam & luar negeri) |
| VI | Pengawasan atas Pelaksanaan APBN dan Pertanggungjawaban (DPR, BPK, masyarakat, APIP, laporan keuangan) |

Catatan: modul ini padat angka & regulasi (batas defisit 3% PDB, jenis-jenis pajak, komponen laporan keuangan LRA/LO/Neraca/LAK/LPE/CaLK) — bagus dikombinasikan dengan soal studi kasus fiskal.

## 4e. Pemetaan Bab Modul "Wawasan Kebangsaan"

| Bab | Judul |
|---|---|
| I | Pendahuluan |
| II | Pancasila (arti kata & asal usul, kedudukan & fungsi, Pancasila sebagai falsafah bangsa, sejarah perumusan BPUPKI/PPKI, Piagam Jakarta, pengamalan Pancasila) |
| III | Undang-Undang Dasar 1945 (pengertian, isi UUD 1945, pokok pikiran Pembukaan, sistem pemerintahan, kelembagaan negara, pelaksanaan UUD 1945 dari masa ke masa, amandemen) |
| IV | Wawasan Kebangsaan dalam NKRI (pengertian, makna, nilai dasar, wawasan kebangsaan sebagai kekuatan bangsa, fungsi ASN sebagai perekat dan pemersatu bangsa) |
| V | Penutup |

Catatan: modul ini padat sejarah & hafalan (tokoh, tanggal sidang BPUPKI/PPKI, jumlah pasal amandemen UUD 1945, tugas & wewenang lembaga negara MPR/DPR/DPD/MA/MK/BPK/KY) — sangat cocok untuk soal pilihan ganda hafalan yang sering muncul di tes wawasan kebangsaan.

## 4g. Pemetaan Bab Modul "TPA (Standar OTO Bappenas)"

| Bab | Judul |
|---|---|
| A | Tes Verbal (Padanan Kata, Lawan Kata, Padanan Hubungan/Analogi, Pengelompokan Kata) |
| B | Tes Kuantitatif/Numerik (Aritmetika Dasar, Seri Angka & Huruf, Aljabar & Perbandingan, Soal Cerita) |
| C | Tes Logika/Penalaran (Logika Umum/Silogisme, Analisis Logis, Logika Diagram/Hubungan Antar Kelompok) |

Catatan penting: Modul ini **berbeda sifatnya** dari 5 modul UPKP lainnya — bukan hasil upload dokumen resmi, melainkan materi + bank soal yang disusun mengikuti format dan gaya standar TPA OTO Bappenas (jenis soal yang umum dipakai di seleksi CPNS/ujian dinas Indonesia). Soal-soal bersifat original, bukan reproduksi dari bank soal resmi manapun. Cocok untuk kategori "latihan kemampuan dasar" terpisah dari kategori "substansi Kemenkeu & wawasan kebangsaan".

Berbeda dengan modul UPKP yang soalnya hafalan/faktual, modul TPA butuh sedikit penyesuaian skema soal karena kadang 1 soal butuh gambar/tabel sederhana (soal analisis logis) — untuk versi web sederhana, pertahankan dalam bentuk teks naratif dengan tabel Markdown jika perlu.

## 4h. Rincian tabel `modules` final (6 modul)

| Kode | Modul | Jml Bab | Sumber |
|---|---|---|---|
| M1 | Etika PNS | 9 (A–I) + Penutup | Upload user |
| M2 | Nilai-Nilai Kementerian Keuangan | 5 | Upload user |
| M3 | Tata Aturan Kepegawaian | 5 | Upload user |
| M4 | Pengelolaan Keuangan Negara | 6 | Upload user |
| M5 | Wawasan Kebangsaan | 5 | Upload user |
| M6 | TPA (Standar OTO Bappenas) | 3 (A–C) | Digenerate mengikuti standar TPA |

## 5. Contoh Soal Preview (hasil olah dari materi)

Ini contoh gaya soal yang bisa digenerate dari materi — nanti proses generate soal massal (dari seluruh isi PDF) lebih baik dikerjakan lewat Claude Code karena bisa proses seluruh dokumen sekaligus.

**Soal 1**
Menurut Dr. A. Sonny Keraf, prinsip moral PNS yang menegaskan bahwa kepentingan publik tidak boleh dikalahkan oleh uang atau jabatan yang lebih tinggi disebut prinsip...
A. Profesionalisme
B. Tanggung jawab terhadap kepentingan publik
C. Bertindak secara adil
D. Integritas moral yang tinggi

*Jawaban: B*

**Soal 2**
Berapa jumlah nilai dasar ASN (BerAKHLAK) yang diatur dalam Pasal 3 UU Nomor 20 Tahun 2023?
A. 5
B. 6
C. 7
D. 8

*Jawaban: C (Berorientasi pelayanan, Akuntabel, Kompeten, Harmonis, Loyal, Adaptif, Kolaboratif)*

**Soal 3**
Aturan mengenai Kode Etik dan Kode Perilaku PNS di lingkungan Kementerian Keuangan diatur dalam...
A. PP No. 42 Tahun 2004
B. UU No. 20 Tahun 2023
C. PMK No. 190/PMK.01/2018
D. KMK No. 416/KMK.01/2023

*Jawaban: C*

**Soal 4 (dari Modul Nilai-Nilai Kemenkeu)**
Nilai-Nilai Kementerian Keuangan ditetapkan melalui Keputusan Menteri Keuangan Nomor...
A. 190/PMK.01/2018
B. 312/KMK.01/2011
C. 429/KMK.01/2022
D. 416/KMK.01/2023

*Jawaban: B*

**Soal 5**
Dalam Nilai-Nilai Kementerian Keuangan, nilai "Sinergi" memiliki dua perilaku utama, yaitu memiliki sangka baik/saling percaya/menghormati, serta...
A. Bekerja dengan hati
B. Menemukan dan melaksanakan solusi terbaik
C. Bersikap proaktif dan cepat tanggap
D. Melakukan perbaikan terus menerus

*Jawaban: B*

**Soal 6**
Core Values ASN "Adaptif" selaras dengan Nilai Kemenkeu...
A. Integritas
B. Sinergi
C. Kesempurnaan
D. Pelayanan

*Jawaban: C*

**Soal 7 (dari Modul Tata Aturan Kepegawaian)**
Batas usia pensiun bagi Pejabat Pimpinan Tinggi dan Pejabat Fungsional Madya adalah...
A. 58 tahun
B. 60 tahun
C. 65 tahun
D. 70 tahun

*Jawaban: B*

**Soal 8**
Masa percobaan bagi calon PNS dilaksanakan selama...
A. 6 bulan
B. 1 tahun
C. 2 tahun
D. 3 tahun

*Jawaban: B*

**Soal 9**
PNS yang tidak masuk kerja tanpa alasan sah secara kumulatif selama 28 hari kerja atau lebih dalam 1 tahun dikenakan hukuman disiplin berupa...
A. Pemotongan tunjangan kinerja 25% selama 12 bulan
B. Penurunan jabatan setingkat lebih rendah selama 12 bulan
C. Pembebasan dari jabatannya menjadi jabatan pelaksana selama 12 bulan
D. Pemberhentian dengan hormat tidak atas permintaan sendiri sebagai PNS

*Jawaban: D*

**Soal 10 (dari Modul Pengelolaan Keuangan Negara)**
Berdasarkan UU Nomor 17 Tahun 2003, batas maksimal defisit APBN terhadap Produk Domestik Bruto (PDB) ditetapkan sebesar...
A. 2%
B. 3%
C. 5%
D. 60%

*Jawaban: B*

**Soal 11**
Menteri Keuangan sebagai pembantu Presiden dalam bidang keuangan pada hakikatnya berperan sebagai...
A. Chief Operational Officer (COO)
B. Chief Financial Officer (CFO)
C. Chief Executive Officer (CEO)
D. Chief Audit Officer (CAO)

*Jawaban: B*

**Soal 12**
Badan yang bertugas memeriksa pengelolaan dan tanggung jawab keuangan negara sesuai Pasal 23E UUD 1945 adalah...
A. Inspektorat Jenderal
B. BPKP
C. BPK
D. KPK

*Jawaban: C*

**Soal 13 (dari Modul Wawasan Kebangsaan)**
Nama "Pancasila" pertama kali diusulkan oleh Ir. Soekarno dalam pidatonya pada sidang BPUPKI tanggal...
A. 29 Mei 1945
B. 31 Mei 1945
C. 1 Juni 1945
D. 18 Agustus 1945

*Jawaban: C*

**Soal 14**
Lembaga negara yang dihapus melalui amandemen UUD 1945 adalah...
A. Dewan Perwakilan Daerah (DPD)
B. Mahkamah Konstitusi (MK)
C. Dewan Pertimbangan Agung (DPA)
D. Komisi Yudisial (KY)

*Jawaban: C*

**Soal 15**
UUD 1945 telah diamandemen sebanyak berapa kali sejak tahun 1999–2002?
A. 2 kali
B. 3 kali
C. 4 kali
D. 5 kali

*Jawaban: C*

## 6. Langkah Selanjutnya
1. ~~Kirim modul-modul lain (kalau ada)~~ — **Selesai, 5/5 modul UPKP sudah masuk + 1 modul TPA sudah dibuat.**
2. Bawa file rancangan ini + kelima teks materi UPKP + file `materi-latihan-tpa-oto-bappenas.md` ke project Next.js di VS Code.
3. Minta Claude Code untuk:
   - Setup project Next.js + Supabase sesuai skema di bagian 2
   - Insert data ke tabel `modules` sesuai bagian 4h (6 baris, termasuk TPA)
   - Insert `chapters` sesuai pemetaan bab tiap modul (bagian 4a–4g)
   - Generate isi `contents` (materi per bab, dalam markdown) dari teks lengkap tiap modul — untuk modul TPA, langsung parse dari file materi TPA yang sudah jadi
   - Generate soal-soal pilihan ganda (`questions`) per bab — gunakan contoh soal di bagian 5 dan di file TPA sebagai acuan gaya/format
   - Build komponen UI: daftar modul → daftar bab → baca materi, dan mode kuis per bab/per modul
   - Pertimbangkan menandai modul TPA dengan kategori berbeda di UI (misal "Latihan Kemampuan Dasar" vs "Substansi Kemenkeu")
4. Setelah kerangka jadi, deploy ke Vercel (`vercel --prod` atau connect repo GitHub ke Vercel dashboard).
