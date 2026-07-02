-- Seed data awal Belajar UPKP dan Tubel PKN STAN
-- Sumber: rancangan-aplikasi-belajar-upkp.md (bagian 4h, 5) & materi-latihan-tpa-oto-bappenas.md
--
-- Catatan penting:
-- - Untuk modul M1-M5 (Etika PNS, Nilai Kemenkeu, Tata Aturan Kepegawaian,
--   Pengelolaan Keuangan Negara, Wawasan Kebangsaan), teks lengkap materi tiap bab
--   BELUM tersedia di folder ini (hanya judul bab + beberapa contoh soal di rancangan).
--   Baris `contents` untuk modul-modul ini diisi placeholder agar struktur halaman
--   sudah bisa dipakai; ganti isinya begitu teks asli tiap bab sudah ada.
-- - Untuk modul M6 (TPA), teks materi & seluruh contoh soal diambil utuh dari
--   materi-latihan-tpa-oto-bappenas.md karena file itu sudah lengkap.

-- =========================================================
-- 1. MODULES
-- =========================================================
insert into modules (id, title, description, order_index) values
('a0000000-0000-4000-8000-000000000001', 'Etika PNS', 'Prinsip moral, kode etik, dan kode perilaku PNS di lingkungan Kementerian Keuangan.', 1),
('a0000000-0000-4000-8000-000000000002', 'Nilai-Nilai Kementerian Keuangan', 'Nilai dan budaya organisasi, BerAKHLAK, serta lima Nilai-Nilai Kementerian Keuangan.', 2),
('a0000000-0000-4000-8000-000000000003', 'Tata Aturan Kepegawaian', 'Jabatan ASN, hak dan kewajiban, manajemen ASN, serta implementasi UU 20/2023 di Kemenkeu.', 3),
('a0000000-0000-4000-8000-000000000004', 'Pengelolaan Keuangan Negara', 'APBN, pendapatan dan belanja negara, pembiayaan, serta pengawasan keuangan negara.', 4),
('a0000000-0000-4000-8000-000000000005', 'Wawasan Kebangsaan', 'Pancasila, UUD 1945, dan wawasan kebangsaan dalam NKRI.', 5),
('a0000000-0000-4000-8000-000000000006', 'TPA (Tes Potensi Akademik)', 'Latihan kemampuan dasar: tes verbal, kuantitatif, dan logika bergaya OTO Bappenas.', 6)
on conflict (id) do nothing;

-- =========================================================
-- 2. CHAPTERS
-- =========================================================

-- M1: Etika PNS (9 bab A-I + Penutup)
insert into chapters (id, module_id, code, title, order_index) values
('b0000000-0000-4000-8000-010100000000', 'a0000000-0000-4000-8000-000000000001', 'A', 'Pengantar', 1),
('b0000000-0000-4000-8000-010200000000', 'a0000000-0000-4000-8000-000000000001', 'B', 'Prinsip-Prinsip Moral PNS', 2),
('b0000000-0000-4000-8000-010300000000', 'a0000000-0000-4000-8000-000000000001', 'C', 'Pengertian Etika', 3),
('b0000000-0000-4000-8000-010400000000', 'a0000000-0000-4000-8000-000000000001', 'D', 'Kode Etik PNS', 4),
('b0000000-0000-4000-8000-010500000000', 'a0000000-0000-4000-8000-000000000001', 'E', 'Kode Etik Instansi dan Kode Etik Profesi', 5),
('b0000000-0000-4000-8000-010600000000', 'a0000000-0000-4000-8000-000000000001', 'F', 'Implementasi Etika dalam Organisasi Pemerintah', 6),
('b0000000-0000-4000-8000-010700000000', 'a0000000-0000-4000-8000-000000000001', 'G', 'Implementasi Nilai Dasar PNS, Kode Etik & Kode Perilaku di Kemenkeu', 7),
('b0000000-0000-4000-8000-010800000000', 'a0000000-0000-4000-8000-000000000001', 'H', 'Penegakan Kode Etik dan Kode Perilaku PNS di Kemenkeu', 8),
('b0000000-0000-4000-8000-010900000000', 'a0000000-0000-4000-8000-000000000001', 'I', 'Implementasi Kode Etik pada Era Sistem Kerja Fleksibel', 9),
('b0000000-0000-4000-8000-011000000000', 'a0000000-0000-4000-8000-000000000001', 'Penutup', 'Penutup', 10)
on conflict (id) do nothing;

-- M2: Nilai-Nilai Kementerian Keuangan (5 bab I-V)
insert into chapters (id, module_id, code, title, order_index) values
('b0000000-0000-4000-8000-020100000000', 'a0000000-0000-4000-8000-000000000002', 'I', 'Pendahuluan', 1),
('b0000000-0000-4000-8000-020200000000', 'a0000000-0000-4000-8000-000000000002', 'II', 'Nilai dan Budaya Organisasi', 2),
('b0000000-0000-4000-8000-020300000000', 'a0000000-0000-4000-8000-000000000002', 'III', 'Nilai-Nilai Dasar Aparatur Sipil Negara (BerAKHLAK)', 3),
('b0000000-0000-4000-8000-020400000000', 'a0000000-0000-4000-8000-000000000002', 'IV', 'Nilai-Nilai Kementerian Keuangan', 4),
('b0000000-0000-4000-8000-020500000000', 'a0000000-0000-4000-8000-000000000002', 'V', 'Penutup', 5)
on conflict (id) do nothing;

-- M3: Tata Aturan Kepegawaian (5 bab I-V)
insert into chapters (id, module_id, code, title, order_index) values
('b0000000-0000-4000-8000-030100000000', 'a0000000-0000-4000-8000-000000000003', 'I', 'Pengertian dan Jabatan Aparatur Sipil Negara', 1),
('b0000000-0000-4000-8000-030200000000', 'a0000000-0000-4000-8000-000000000003', 'II', 'Hak dan Kewajiban ASN', 2),
('b0000000-0000-4000-8000-030300000000', 'a0000000-0000-4000-8000-000000000003', 'III', 'Kelembagaan', 3),
('b0000000-0000-4000-8000-030400000000', 'a0000000-0000-4000-8000-000000000003', 'IV', 'Manajemen Aparatur Sipil Negara', 4),
('b0000000-0000-4000-8000-030500000000', 'a0000000-0000-4000-8000-000000000003', 'V', 'Implementasi UU 20/2023 di Kementerian Keuangan', 5)
on conflict (id) do nothing;

-- M4: Pengelolaan Keuangan Negara (6 bab I-VI)
insert into chapters (id, module_id, code, title, order_index) values
('b0000000-0000-4000-8000-040100000000', 'a0000000-0000-4000-8000-000000000004', 'I', 'Pendahuluan', 1),
('b0000000-0000-4000-8000-040200000000', 'a0000000-0000-4000-8000-000000000004', 'II', 'Pengertian Pengelolaan Keuangan Negara', 2),
('b0000000-0000-4000-8000-040300000000', 'a0000000-0000-4000-8000-000000000004', 'III', 'Anggaran Pendapatan dan Belanja Negara', 3),
('b0000000-0000-4000-8000-040400000000', 'a0000000-0000-4000-8000-000000000004', 'IV', 'Pengelolaan Pendapatan Negara', 4),
('b0000000-0000-4000-8000-040500000000', 'a0000000-0000-4000-8000-000000000004', 'V', 'Pengelolaan Belanja Pemerintah dan Pembiayaan Defisit Anggaran', 5),
('b0000000-0000-4000-8000-040600000000', 'a0000000-0000-4000-8000-000000000004', 'VI', 'Pengawasan atas Pelaksanaan APBN dan Pertanggungjawaban', 6)
on conflict (id) do nothing;

-- M5: Wawasan Kebangsaan (5 bab I-V)
insert into chapters (id, module_id, code, title, order_index) values
('b0000000-0000-4000-8000-050100000000', 'a0000000-0000-4000-8000-000000000005', 'I', 'Pendahuluan', 1),
('b0000000-0000-4000-8000-050200000000', 'a0000000-0000-4000-8000-000000000005', 'II', 'Pancasila', 2),
('b0000000-0000-4000-8000-050300000000', 'a0000000-0000-4000-8000-000000000005', 'III', 'Undang-Undang Dasar 1945', 3),
('b0000000-0000-4000-8000-050400000000', 'a0000000-0000-4000-8000-000000000005', 'IV', 'Wawasan Kebangsaan dalam NKRI', 4),
('b0000000-0000-4000-8000-050500000000', 'a0000000-0000-4000-8000-000000000005', 'V', 'Penutup', 5)
on conflict (id) do nothing;

-- M6: TPA (Tes Potensi Akademik) (3 bab A-C)
insert into chapters (id, module_id, code, title, order_index) values
('b0000000-0000-4000-8000-060100000000', 'a0000000-0000-4000-8000-000000000006', 'A', 'Tes Verbal', 1),
('b0000000-0000-4000-8000-060200000000', 'a0000000-0000-4000-8000-000000000006', 'B', 'Tes Kuantitatif/Numerik', 2),
('b0000000-0000-4000-8000-060300000000', 'a0000000-0000-4000-8000-000000000006', 'C', 'Tes Logika/Penalaran', 3)
on conflict (id) do nothing;

-- =========================================================
-- 3. CONTENTS
-- =========================================================

-- M1-M5: placeholder per bab (materi lengkap belum diimpor)
insert into contents (chapter_id, heading, body, order_index)
select id, title, '> Materi lengkap bab ini belum diimpor ke aplikasi. Tempatkan teks asli dari dokumen sumber di sini.', 1
from chapters
where module_id in (
  'a0000000-0000-4000-8000-000000000001',
  'a0000000-0000-4000-8000-000000000002',
  'a0000000-0000-4000-8000-000000000003',
  'a0000000-0000-4000-8000-000000000004',
  'a0000000-0000-4000-8000-000000000005'
);

-- M6: TPA - materi lengkap dari materi-latihan-tpa-oto-bappenas.md

-- Bab A: Tes Verbal
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060100000000', 'Pengantar TPA', 'Tes Potensi Akademik (TPA) model OTO Bappenas adalah tes kemampuan dasar yang mengukur potensi intelektual seseorang, umum dipakai dalam seleksi CPNS, ujian dinas, dan tes masuk pascasarjana di Indonesia. TPA terdiri dari tiga kelompok besar: **Tes Verbal** (kemampuan berbahasa dan penalaran kata), **Tes Kuantitatif/Numerik** (kemampuan berhitung dan penalaran angka), dan **Tes Logika/Penalaran** (kemampuan berpikir logis dan analitis).

Setiap sesi biasanya dibatasi waktu ketat (rata-rata 30-60 detik per soal), sehingga kecepatan dan ketepatan sama pentingnya.', 1),
('b0000000-0000-4000-8000-060100000000', 'A1. Padanan Kata (Sinonim)', 'Mencari kata yang artinya paling dekat/sama dengan kata yang diberikan.

**Tips:** Jangan terpaku pada kata yang "familiar" — banyak soal TPA memakai kata serapan atau istilah jarang dipakai sehari-hari. Perbanyak kosakata baku (KBBI).', 2),
('b0000000-0000-4000-8000-060100000000', 'A2. Lawan Kata (Antonim)', 'Mencari kata dengan makna berlawanan dari kata yang diberikan.', 3),
('b0000000-0000-4000-8000-060100000000', 'A3. Padanan Hubungan (Analogi)', 'Menemukan hubungan logis antara sepasang kata, lalu mencari pasangan lain dengan pola hubungan yang sama.

**Tips:** Rumuskan hubungan kata pertama dalam satu kalimat pendek, lalu uji kalimat itu ke pilihan jawaban.', 4),
('b0000000-0000-4000-8000-060100000000', 'A4. Pengelompokan Kata', 'Mencari satu kata yang tidak sekelompok/tidak memiliki kesamaan kategori dengan kata-kata lain.', 5);

-- Bab B: Tes Kuantitatif/Numerik
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060200000000', 'B1. Aritmetika Dasar', 'Operasi hitung, persentase, pecahan, dan perbandingan sederhana.', 1),
('b0000000-0000-4000-8000-060200000000', 'B2. Seri Angka & Huruf', 'Menemukan pola dalam deret angka atau huruf, lalu melanjutkan atau mengisi bagian yang kosong.', 2),
('b0000000-0000-4000-8000-060200000000', 'B3. Aljabar & Perbandingan', 'Soal berbasis persamaan sederhana atau rasio/perbandingan.', 3),
('b0000000-0000-4000-8000-060200000000', 'B4. Soal Cerita (Logika Angka)', 'Soal cerita yang menggabungkan aritmetika dengan penalaran situasi sehari-hari (jual-beli, kecepatan kerja, dll).', 4);

-- Bab C: Tes Logika/Penalaran
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060300000000', 'C1. Logika Umum (Silogisme)', 'Menarik kesimpulan sah dari dua premis.

**Tips:** Perhatikan kata kunci "semua", "sebagian", "tidak ada" — ini menentukan validitas kesimpulan.', 1),
('b0000000-0000-4000-8000-060300000000', 'C2. Analisis Logis (Penalaran Analitis)', 'Menganalisis beberapa pernyataan/kondisi untuk menjawab pertanyaan spesifik — biasanya berupa urutan, posisi, atau kelompok. Soal analisis logis di TPA asli sering datang berupa satu narasi dengan beberapa pertanyaan turunan.

**Tips:** Latih dengan membuat tabel posisi/kondisi secara sistematis dan coba-coba (trial and error terstruktur) agar tidak salah eliminasi.', 2),
('b0000000-0000-4000-8000-060300000000', 'C3. Logika Diagram / Hubungan Antar Kelompok', 'Menentukan hubungan antar kategori (identik, tumpang tindih, terpisah, atau bagian dari) — biasanya digambarkan dengan diagram lingkaran (diagram Venn).', 3),
('b0000000-0000-4000-8000-060300000000', 'Tips Strategi Mengerjakan TPA', '1. **Kerjakan yang mudah dulu** — lewati soal yang terasa berat di awal, kembali lagi jika masih ada waktu.
2. **Kelola waktu per soal** — jangan terpaku lebih dari 1 menit di satu soal analitis yang rumit.
3. **Untuk soal verbal**, perbanyak paparan kosakata baku (KBBI) karena banyak soal memakai kata yang jarang dipakai sehari-hari.
4. **Untuk soal numerik**, hafalkan perkalian, pembagian, dan konversi persen-pecahan dasar agar hitung cepat tanpa kalkulator.
5. **Untuk soal logika**, selalu coret-coret/buat tabel saat mengerjakan soal analitis dengan banyak syarat — jangan hanya membayangkan di kepala.
6. **Baca soal 2 kali** sebelum menjawab, terutama soal logika yang mengandung kata "tidak", "kecuali", "semua", "sebagian" — kata-kata ini sering jadi jebakan.', 4);

-- =========================================================
-- 4. QUESTIONS
-- =========================================================

-- M1 Etika PNS
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-010200000000', 'Menurut Dr. A. Sonny Keraf, prinsip moral PNS yang menegaskan bahwa kepentingan publik tidak boleh dikalahkan oleh uang atau jabatan yang lebih tinggi disebut prinsip...', 'Profesionalisme', 'Tanggung jawab terhadap kepentingan publik', 'Bertindak secara adil', 'Integritas moral yang tinggi', 'B', null, 'medium'),
('b0000000-0000-4000-8000-010700000000', 'Aturan mengenai Kode Etik dan Kode Perilaku PNS di lingkungan Kementerian Keuangan diatur dalam...', 'PP No. 42 Tahun 2004', 'UU No. 20 Tahun 2023', 'PMK No. 190/PMK.01/2018', 'KMK No. 416/KMK.01/2023', 'C', null, 'medium');

-- M2 Nilai-Nilai Kementerian Keuangan
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-020300000000', 'Berapa jumlah nilai dasar ASN (BerAKHLAK) yang diatur dalam Pasal 3 UU Nomor 20 Tahun 2023?', '5', '6', '7', '8', 'C', 'Berorientasi pelayanan, Akuntabel, Kompeten, Harmonis, Loyal, Adaptif, Kolaboratif.', 'medium'),
('b0000000-0000-4000-8000-020400000000', 'Nilai-Nilai Kementerian Keuangan ditetapkan melalui Keputusan Menteri Keuangan Nomor...', '190/PMK.01/2018', '312/KMK.01/2011', '429/KMK.01/2022', '416/KMK.01/2023', 'B', null, 'medium'),
('b0000000-0000-4000-8000-020400000000', 'Dalam Nilai-Nilai Kementerian Keuangan, nilai "Sinergi" memiliki dua perilaku utama, yaitu memiliki sangka baik/saling percaya/menghormati, serta...', 'Bekerja dengan hati', 'Menemukan dan melaksanakan solusi terbaik', 'Bersikap proaktif dan cepat tanggap', 'Melakukan perbaikan terus menerus', 'B', null, 'medium'),
('b0000000-0000-4000-8000-020400000000', 'Core Values ASN "Adaptif" selaras dengan Nilai Kemenkeu...', 'Integritas', 'Sinergi', 'Kesempurnaan', 'Pelayanan', 'C', null, 'medium');

-- M3 Tata Aturan Kepegawaian
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-030400000000', 'Batas usia pensiun bagi Pejabat Pimpinan Tinggi dan Pejabat Fungsional Madya adalah...', '58 tahun', '60 tahun', '65 tahun', '70 tahun', 'B', null, 'medium'),
('b0000000-0000-4000-8000-030400000000', 'Masa percobaan bagi calon PNS dilaksanakan selama...', '6 bulan', '1 tahun', '2 tahun', '3 tahun', 'B', null, 'medium'),
('b0000000-0000-4000-8000-030500000000', 'PNS yang tidak masuk kerja tanpa alasan sah secara kumulatif selama 28 hari kerja atau lebih dalam 1 tahun dikenakan hukuman disiplin berupa...', 'Pemotongan tunjangan kinerja 25% selama 12 bulan', 'Penurunan jabatan setingkat lebih rendah selama 12 bulan', 'Pembebasan dari jabatannya menjadi jabatan pelaksana selama 12 bulan', 'Pemberhentian dengan hormat tidak atas permintaan sendiri sebagai PNS', 'D', null, 'medium');

-- M4 Pengelolaan Keuangan Negara
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-040300000000', 'Berdasarkan UU Nomor 17 Tahun 2003, batas maksimal defisit APBN terhadap Produk Domestik Bruto (PDB) ditetapkan sebesar...', '2%', '3%', '5%', '60%', 'B', null, 'medium'),
('b0000000-0000-4000-8000-040200000000', 'Menteri Keuangan sebagai pembantu Presiden dalam bidang keuangan pada hakikatnya berperan sebagai...', 'Chief Operational Officer (COO)', 'Chief Financial Officer (CFO)', 'Chief Executive Officer (CEO)', 'Chief Audit Officer (CAO)', 'B', null, 'medium'),
('b0000000-0000-4000-8000-040600000000', 'Badan yang bertugas memeriksa pengelolaan dan tanggung jawab keuangan negara sesuai Pasal 23E UUD 1945 adalah...', 'Inspektorat Jenderal', 'BPKP', 'BPK', 'KPK', 'C', null, 'medium');

-- M5 Wawasan Kebangsaan
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-050200000000', 'Nama "Pancasila" pertama kali diusulkan oleh Ir. Soekarno dalam pidatonya pada sidang BPUPKI tanggal...', '29 Mei 1945', '31 Mei 1945', '1 Juni 1945', '18 Agustus 1945', 'C', null, 'medium'),
('b0000000-0000-4000-8000-050300000000', 'Lembaga negara yang dihapus melalui amandemen UUD 1945 adalah...', 'Dewan Perwakilan Daerah (DPD)', 'Mahkamah Konstitusi (MK)', 'Dewan Pertimbangan Agung (DPA)', 'Komisi Yudisial (KY)', 'C', null, 'medium'),
('b0000000-0000-4000-8000-050300000000', 'UUD 1945 telah diamandemen sebanyak berapa kali sejak tahun 1999-2002?', '2 kali', '3 kali', '4 kali', '5 kali', 'C', null, 'medium');

-- M6 TPA - Bab A: Tes Verbal

-- A1. Padanan Kata (Sinonim)
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060100000000', 'AGENDA = ...', 'Buku catatan', 'Rencana kegiatan', 'Kalender', 'Jadwal', 'Notulen', 'D', 'Agenda berarti daftar/rencana acara yang akan dibahas.', 'easy'),
('b0000000-0000-4000-8000-060100000000', 'BAKU = ...', 'Asli', 'Standar', 'Murni', 'Utama', 'Pokok', 'B', null, 'easy'),
('b0000000-0000-4000-8000-060100000000', 'GAYUT = ...', 'Bergantung', 'Terkait', 'Mengambang', 'Berayun', 'Terikat', 'B', 'Gayut = berkaitan/berhubungan.', 'easy'),
('b0000000-0000-4000-8000-060100000000', 'INSINUASI = ...', 'Pujian', 'Sindiran', 'Ancaman', 'Nasihat', 'Kritik terbuka', 'B', null, 'easy'),
('b0000000-0000-4000-8000-060100000000', 'TENDENSI = ...', 'Kecenderungan', 'Ketegangan', 'Dorongan', 'Tekanan', 'Tuntutan', 'A', null, 'easy');

-- A2. Lawan Kata (Antonim)
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060100000000', 'ABSTRAK >< ...', 'Rumit', 'Konkret', 'Umum', 'Teoretis', 'Samar', 'B', null, 'easy'),
('b0000000-0000-4000-8000-060100000000', 'MUNAFIK >< ...', 'Jujur', 'Sombong', 'Pemarah', 'Pendiam', 'Sederhana', 'A', null, 'easy'),
('b0000000-0000-4000-8000-060100000000', 'SEKULER >< ...', 'Duniawi', 'Agamis', 'Modern', 'Kuno', 'Netral', 'B', null, 'easy'),
('b0000000-0000-4000-8000-060100000000', 'LANGKA >< ...', 'Mahal', 'Berharga', 'Berlimpah', 'Unik', 'Terbatas', 'C', null, 'easy'),
('b0000000-0000-4000-8000-060100000000', 'EKSPANSI >< ...', 'Perluasan', 'Penyempitan', 'Pertumbuhan', 'Perubahan', 'Penambahan', 'B', null, 'easy');

-- A3. Padanan Hubungan (Analogi)
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060100000000', 'GURU : MURID = DOKTER : ...', 'Rumah Sakit', 'Obat', 'Pasien', 'Perawat', 'Resep', 'C', 'Guru mengajar murid, dokter mengobati pasien.', 'medium'),
('b0000000-0000-4000-8000-060100000000', 'PADI : BERAS = ... : TEPUNG', 'Sawah', 'Gandum', 'Roti', 'Kue', 'Gilingan', 'B', 'Padi diolah jadi beras, gandum diolah jadi tepung.', 'medium'),
('b0000000-0000-4000-8000-060100000000', 'AIR : DAHAGA = MAKANAN : ...', 'Enak', 'Lapar', 'Restoran', 'Piring', 'Gizi', 'B', 'Air menghilangkan dahaga, makanan menghilangkan lapar.', 'medium'),
('b0000000-0000-4000-8000-060100000000', 'KOMPAS : ARAH = TERMOMETER : ...', 'Panas', 'Suhu', 'Cuaca', 'Air Raksa', 'Derajat', 'B', 'Kompas mengukur arah, termometer mengukur suhu.', 'medium'),
('b0000000-0000-4000-8000-060100000000', 'ULAT : KEPOMPONG : KUPU-KUPU = ... : REMAJA : DEWASA', 'Bayi', 'Anak-anak', 'Tua', 'Lahir', 'Muda', 'B', 'Tahapan pertumbuhan berurutan.', 'medium');

-- A4. Pengelompokan Kata
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060100000000', 'Manakah yang tidak sekelompok?', 'Mangga', 'Apel', 'Wortel', 'Jeruk', 'Pisang', 'C', 'Wortel = sayuran, sisanya buah.', 'medium'),
('b0000000-0000-4000-8000-060100000000', 'Manakah yang tidak sekelompok?', 'Piano', 'Gitar', 'Biola', 'Seruling', 'Drum', 'D', 'Seruling = alat tiup, sisanya alat petik/gesek/pukul senar — variasi soal bisa menguji kategori berbeda, selalu cek dasar pengelompokan yang paling konsisten.', 'medium'),
('b0000000-0000-4000-8000-060100000000', 'Manakah yang tidak sekelompok?', 'Provinsi', 'Kabupaten', 'Kecamatan', 'Desa', 'Negara', 'E', 'Negara bukan bagian dari struktur pemerintahan daerah Indonesia, sisanya adalah tingkatan wilayah administratif di bawah negara.', 'medium');

-- M6 TPA - Bab B: Tes Kuantitatif/Numerik

-- B1. Aritmetika Dasar
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060200000000', '25% dari 480 adalah...', '100', '110', '120', '130', '140', 'C', '480 x 0,25 = 120.', 'easy'),
('b0000000-0000-4000-8000-060200000000', 'Jika 3/4 dari suatu bilangan adalah 60, maka bilangan tersebut adalah...', '75', '80', '85', '90', '95', 'B', '60 : 3/4 = 60 x 4/3 = 80.', 'easy'),
('b0000000-0000-4000-8000-060200000000', 'Harga sebuah barang setelah diskon 20% adalah Rp 160.000. Harga awal barang tersebut adalah...', 'Rp 180.000', 'Rp 190.000', 'Rp 200.000', 'Rp 210.000', 'Rp 220.000', 'C', '160.000 : 0,8 = 200.000.', 'easy');

-- B2. Seri Angka & Huruf
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060200000000', '2, 5, 10, 17, 26, ...', '35', '36', '37', '38', '39', 'C', 'Selisih: +3, +5, +7, +9, +11 -> 26+11=37.', 'medium'),
('b0000000-0000-4000-8000-060200000000', '3, 6, 12, 24, 48, ...', '72', '84', '90', '96', '100', 'D', 'Pola kali 2.', 'medium'),
('b0000000-0000-4000-8000-060200000000', 'A, C, F, J, O, ...', 'T', 'U', 'S', 'V', 'R', 'B', 'Loncatan huruf bertambah: +2, +3, +4, +5, +6 -> O+6=U.', 'medium'),
('b0000000-0000-4000-8000-060200000000', '100, 95, 85, 70, 50, ...', '20', '25', '30', '35', '40', 'B', 'Selisih pengurangan bertambah: -5, -10, -15, -20, -25 -> 50-25=25.', 'medium');

-- B3. Aljabar & Perbandingan
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060200000000', 'Jika 2x + 5 = 17, maka nilai x adalah...', '4', '5', '6', '7', '8', 'C', null, 'medium'),
('b0000000-0000-4000-8000-060200000000', 'Perbandingan usia A dan B adalah 3:5. Jika usia B adalah 25 tahun, usia A adalah...', '12 tahun', '13 tahun', '14 tahun', '15 tahun', '16 tahun', 'D', '25:5=5, 3x5=15.', 'medium'),
('b0000000-0000-4000-8000-060200000000', 'Sebuah mobil menempuh 240 km dalam 4 jam. Kecepatan rata-ratanya adalah...', '50 km/jam', '55 km/jam', '60 km/jam', '65 km/jam', '70 km/jam', 'C', null, 'medium');

-- B4. Soal Cerita (Logika Angka)
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060200000000', 'Seorang pedagang membeli 50 kg beras dengan harga Rp 500.000, kemudian menjualnya dengan keuntungan 20%. Harga jual per kg adalah...', 'Rp 10.000', 'Rp 11.000', 'Rp 12.000', 'Rp 13.000', 'Rp 14.000', 'C', 'Total jual = 500.000x1,2=600.000, per kg = 600.000:50=12.000.', 'hard'),
('b0000000-0000-4000-8000-060200000000', 'Tiga orang pekerja dapat menyelesaikan pekerjaan dalam 12 hari. Jika ditambah 2 pekerja lagi (total 5 pekerja) dengan kecepatan kerja sama, pekerjaan tersebut selesai dalam...', '6,2 hari', '6,8 hari', '7,0 hari', '7,2 hari', '7,5 hari', 'D', '3x12 = 36 hari-orang; 36:5 = 7,2 hari.', 'hard');

-- M6 TPA - Bab C: Tes Logika/Penalaran

-- C1. Logika Umum (Silogisme)
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060300000000', 'Premis 1: Semua pegawai negeri wajib mengikuti apel pagi. Premis 2: Budi adalah pegawai negeri. Kesimpulan: ...', 'Budi tidak wajib apel pagi', 'Budi wajib mengikuti apel pagi', 'Sebagian pegawai negeri adalah Budi', 'Apel pagi hanya untuk Budi', 'Tidak dapat disimpulkan', 'B', null, 'medium'),
('b0000000-0000-4000-8000-060300000000', 'Premis 1: Semua siswa yang rajin belajar akan lulus ujian. Premis 2: Sebagian siswa kelas A rajin belajar. Kesimpulan: ...', 'Semua siswa kelas A lulus ujian', 'Sebagian siswa kelas A lulus ujian', 'Semua siswa kelas A tidak lulus ujian', 'Siswa kelas A pasti tidak rajin belajar', 'Tidak ada siswa kelas A yang lulus', 'B', null, 'medium'),
('b0000000-0000-4000-8000-060300000000', 'Premis 1: Tidak ada kucing yang bisa terbang. Premis 2: Semua hewan peliharaan Tono adalah kucing. Kesimpulan: ...', 'Semua hewan peliharaan Tono bisa terbang', 'Sebagian hewan peliharaan Tono bisa terbang', 'Tidak ada hewan peliharaan Tono yang bisa terbang', 'Tono tidak punya hewan peliharaan', 'Tidak dapat disimpulkan', 'C', null, 'medium');

-- C2. Analisis Logis (Penalaran Analitis) - satu set narasi, dua pertanyaan
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060300000000', 'Lima orang: Andi, Budi, Citra, Dewi, dan Eka duduk berjajar menghadap ke depan dalam satu baris kursi bernomor 1-5 dari kiri ke kanan. Diketahui: Citra duduk tepat di sebelah kanan Andi; Budi duduk tepat di tengah (kursi nomor 3); Eka tidak duduk bersebelahan dengan Budi; Dewi tidak duduk di kursi paling ujung (nomor 1 atau nomor 5); Andi tidak duduk di kursi nomor 1.

Siapa yang duduk di kursi nomor 5?', 'Andi', 'Budi', 'Citra', 'Dewi', 'Eka', 'C', 'Budi pasti di kursi 3. Eka tidak boleh bersebelahan dengan Budi (bukan kursi 2/4) sehingga Eka di kursi 1 atau 5. Dewi tidak boleh di kursi ujung sehingga Dewi di kursi 2 atau 4. Andi-Citra harus berurutan dan Andi tidak boleh di kursi 1. Satu-satunya susunan yang konsisten: Eka=1, Dewi=2, Budi=3, Andi=4, Citra=5.', 'hard'),
('b0000000-0000-4000-8000-060300000000', 'Lima orang: Andi, Budi, Citra, Dewi, dan Eka duduk berjajar menghadap ke depan dalam satu baris kursi bernomor 1-5 dari kiri ke kanan. Diketahui: Citra duduk tepat di sebelah kanan Andi; Budi duduk tepat di tengah (kursi nomor 3); Eka tidak duduk bersebelahan dengan Budi; Dewi tidak duduk di kursi paling ujung (nomor 1 atau nomor 5); Andi tidak duduk di kursi nomor 1.

Siapa yang duduk tepat di sebelah kiri Budi?', 'Andi', 'Citra', 'Dewi', 'Eka', 'Tidak ada yang duduk di sebelah kiri Budi', 'C', 'Susunan yang konsisten dengan semua syarat: Eka=1, Dewi=2, Budi=3, Andi=4, Citra=5. Sebelah kiri Budi (kursi 2) adalah Dewi.', 'hard');

-- C3. Logika Diagram / Hubungan Antar Kelompok
insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060300000000', 'Manakah diagram yang paling tepat menggambarkan hubungan antara "Mamalia", "Kucing", dan "Kendaraan"?', 'Tiga lingkaran terpisah', 'Lingkaran "Kucing" di dalam lingkaran "Mamalia", "Kendaraan" terpisah', 'Ketiganya beririsan', '"Kendaraan" di dalam "Mamalia"', 'Ketiganya identik', 'B', 'Kucing adalah bagian dari Mamalia; Kendaraan tidak berhubungan dengan keduanya.', 'medium'),
('b0000000-0000-4000-8000-060300000000', 'Hubungan antara "Dokter", "Manusia", dan "Perempuan" paling tepat digambarkan sebagai...', 'Tiga lingkaran terpisah total', '"Dokter" dan "Perempuan" beririsan, keduanya berada di dalam "Manusia"', '"Manusia" berada di dalam "Dokter"', '"Perempuan" berada di dalam "Dokter"', 'Ketiganya identik', 'B', 'Ada dokter perempuan dan dokter laki-laki, ada perempuan yang bukan dokter — keduanya subset dari manusia dan saling beririsan.', 'medium');
