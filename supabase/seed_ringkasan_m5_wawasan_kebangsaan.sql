-- Ringkasan poin-poin + mind map Modul Wawasan Kebangsaan (M5)
-- Menggantikan versi verbatim lama (seed_contents_m5_wawasan_kebangsaan.sql, tidak lengkap)
-- Sumber: materi/lengkap/5-wawasan-kebangsaan.txt (81 halaman, 5 bab)

delete from contents where chapter_id in (
  'b0000000-0000-4000-8000-050100000000',
  'b0000000-0000-4000-8000-050200000000',
  'b0000000-0000-4000-8000-050300000000',
  'b0000000-0000-4000-8000-050400000000',
  'b0000000-0000-4000-8000-050500000000'
);

-- =========================================================
-- BAB I: PENDAHULUAN
-- =========================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-050100000000', 'Latar Belakang', '- Tujuan negara RI (Pembukaan UUD 1945): memajukan kesejahteraan umum & mencerdaskan kehidupan bangsa.
- Indonesia merdeka sejak Proklamasi **17 Agustus 1945**; lebih dari 72 tahun perjalanan diwarnai dinamika/kemelut politik yang mengganggu stabilitas nasional.
- Benturan politik elit dapat merambah ke masyarakat bawah, melemahkan persatuan & kesatuan, menghambat kesejahteraan rakyat.
- Kesadaran kebangsaan lahir dari kehendak bersama seluruh komponen masyarakat budaya se-Nusantara untuk menjadi satu bangsa Indonesia berdasar Pancasila.
- Bangsa = masyarakat dengan kesatuan spirit/karakter (Karakter Gemeinschaft); keberagaman budaya/adat/bahasa/agama tetap dipertahankan, bukan diseragamkan.
- Wilayah negara berupa kepulauan (realita geografik) menuntut kehendak bersatu dipelihara terus sebagai faktor perekat utama.
- Para pendiri bangsa (**the Founding Fathers**) merumuskan nilai-nilai kebangsaan sebagai landasan pembentukan & penyelenggaraan negara.
- Reformasi = proses reinventing, rebuilding, dan konsolidasi demokrasi bangsa Indonesia, dari prosedural menuju kultural & substantif.
- Konsensus Dasar Nasional yang perlu diangkat kembali: falsafah **Pancasila**, **UUD Negara RI Tahun 1945**, semboyan **Bhinneka Tunggal Ika**, prinsip **Negara Kesatuan Republik Indonesia (NKRI)**.', 1),
('b0000000-0000-4000-8000-050100000000', 'Deskripsi Singkat, Materi Pokok, dan Manfaat', '- **Deskripsi Singkat**: modul menjelaskan arti penting wawasan kebangsaan; komitmen pemerintahan stabil & dinamis melalui sistem pemerintahan yang mendukung pembangunan menuju tujuan nasional; perlunya mengangkat kembali nilai kebangsaan dalam Pancasila, UUD 1945, Bhinneka Tunggal Ika, dan NKRI.
- **Materi Pokok**: falsafah Pancasila, Undang-Undang Dasar 1945, semboyan Bhinneka Tunggal Ika, prinsip Negara Kesatuan Republik Indonesia.
- **Manfaat**: peserta diklat memahami arti Pancasila, UUD 1945, dan wawasan kebangsaan NKRI.', 2);

-- =========================================================
-- BAB II: PANCASILA
-- =========================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-050200000000', 'Arti Kata, Asal Usul, dan Pengertian Pokok Pancasila', '- Istilah Pancasila sudah dikenal sejak zaman **Sriwijaya dan Majapahit** (nilai-nilainya diterapkan meski sila belum dirumuskan konkret); tertulis dalam buku **Negara Kertagama** (Mpu Prapanca) dan **Sutasoma** (Mpu Tantular) — dalam Sutasoma, Pancasila berarti "berbatu sendi yang lima, pelaksanaan kesusilaan yang lima".
- Kata Pancasila dari bahasa Sansekerta: **Panca** = lima, **Sila** = dasar/asas.
- Nama "Pancasila" sebagai dasar negara diusulkan **Ir. Soekarno** pada sidang pertama BPUPKI tanggal **1 Juni 1945**, disetujui peserta sidang.
- Pancasila dirumuskan oleh **BPUPKI** (1 Juni 1945) dan disahkan sebagai dasar negara oleh **PPKI** pada **18 Agustus 1945**.
- Rumusan sah Pancasila yang wajib diamalkan = rumusan dalam **alinea keempat Pembukaan UUD 1945**.
- Dua pengertian pokok Pancasila: sebagai **pandangan hidup** dan sebagai **dasar negara**.
- Fungsi Pancasila: dasar yang statis/fundamental; tuntunan yang dinamis; ikatan pemersatu bangsa.
- Fungsi lain: **yuridis ketatanegaraan** (fungsi pokok/utama sebagai dasar negara), **sosiologis** (pengatur hidup kemasyarakatan), **etis dan filosofis** (pengatur tingkah laku pribadi/philosophical way of thinking).
- Kedudukan hukum: Pancasila = sumber dari segala sumber hukum negara, sesuai **UU No. 12 Tahun 2011** sebagaimana diubah **UU No. 13 Tahun 2022** (Perubahan Kedua UU No. 12/2011 tentang Pembentukan Peraturan Perundang-undangan).
- Pembukaan UUD 1945 terdiri dari **4 alinea**, memuat: (a) pernyataan hak kemerdekaan setiap bangsa; (b) pernyataan hasil perjuangan kemerdekaan Indonesia; (c) pernyataan merdeka; (d) dasar kerohanian (falsafah) Pancasila sebagai dasar negara.
- Butir keempat (dasar kerohanian Pancasila) punya hubungan kausal-organis dengan pasal-pasal UUD 1945 — merupakan semangat kejiwaan UUD 1945 (**Prof. Dr. Soepomo, SH**: memahami hukum dasar perlu memahami suasana kebatinannya, tidak cukup pasal-pasalnya saja).', 1),
('b0000000-0000-4000-8000-050200000000', 'Kedudukan dan Fungsi Pancasila', '- 4 pokok pikiran suasana kebatinan UUD 1945:
  1. Negara melindungi segenap bangsa Indonesia berdasar **persatuan** (sila ketiga).
  2. Negara mewujudkan **keadilan sosial** bagi seluruh rakyat (sila kelima).
  3. Negara berkedaulatan rakyat, berdasar **kerakyatan dan permusyawaratan/perwakilan** (sila keempat).
  4. Negara berdasar **Ketuhanan Yang Maha Esa**, menurut kemanusiaan yang adil dan beradab (sila kesatu & kedua).
- Fungsi Pancasila menurut kedudukannya: (a) dasar statis/fundamental (fungsi pokok, tercantum di Pembukaan UUD 1945); (b) tuntunan dinamis (cita-cita & tujuan bangsa); (c) ikatan pemersatu bangsa (menjamin hak hidup layak tanpa perbedaan).
- Fungsi menurut jangkauan sasaran: **Yuridis Ketatanegaraan** (fungsi utama dasar negara), **Sosiologis** (pengatur hidup kemasyarakatan), **Etis dan Filosofis** (pengatur tingkah laku pribadi/philosophical system).', 2),
('b0000000-0000-4000-8000-050200000000', 'Pancasila sebagai Falsafah Bangsa', '- **Filsafat Pancasila**: istilah filsafat dari bahasa Arab "falsafah", dari Yunani "philosophia" (philein = mencari/mencintai, sophia = kebenaran/kebijaksanaan). Filsafat Pancasila = ilmu pengetahuan mendalam tentang Pancasila.
- Pokok pikiran filsafat Pancasila: (1) Pancasila sebagai pandangan hidup bangsa; (2) Pancasila sebagai dasar negara (diatur praktis dalam **UU No. 12 Tahun 2011** sebagaimana diubah **UU No. 13 Tahun 2022**, UUD 1945 menempati tata urutan tertinggi); (3) falsafah Pancasila tercermin dalam Pembukaan UUD 1945, uraian terperinci Proklamasi **17 Agustus 1945**; (4) Pancasila dalam Pembukaan UUD 1945 adalah kebulatan utuh tak terpisahkan; (5) jiwa Pancasila tercetus jadi Proklamasi Kemerdekaan; (6) pasal-pasal UUD 1945 adalah penjelmaan pokok pikiran Pembukaan; (7) penafsiran sila-sila harus bersumber dari Pembukaan & pasal UUD 1945.
- **Nilai-nilai dalam Pancasila**: nilai = hasil penilaian baik/tidak baik, dasar motivasi bertindak. Norma (agama, kesusilaan, sopan santun, hukum) punya sanksi masing-masing (Tuhan, rasa malu/menyesal, sosial masyarakat, pemerintah).
- **Prof. Dr. Notonegoro** membagi nilai jadi 3: **Material** (berguna bagi unsur manusia), **Vital** (berguna untuk aktivitas), **Kerohanian** (berguna bagi rohani, terbagi 4: kebenaran/akal, keindahan/rasa, kebaikan-moral/kodrat manusia, religius/kepercayaan).
- Pancasila tergolong nilai kerohanian yang mengakui nilai material & vital secara seimbang, tersusun hierarkis dari sila 1 s.d. sila 5.
- Nilai tiap sila: sila 1 (Ketuhanan YME) = nilai religius; sila 2 (Kemanusiaan Adil Beradab) = nilai kemanusiaan; sila 3 (Persatuan Indonesia) = nilai persatuan; sila 4 (Kerakyatan/Hikmat Kebijaksanaan/Permusyawaratan) = nilai kerakyatan; sila 5 (Keadilan Sosial) = nilai keadilan sosial.
- **Pandangan Integralistik**: dikemukakan **Soepomo** dalam pidato **31 Mei 1945** di BPUPKI. Negara integralistik = negara bersatu dengan seluruh rakyat, mengatasi semua golongan; tidak ada pertentangan negara vs individu (individu = bagian organik negara). Mengacu teori B. Spinosa, Adam Muller, Hegel.
- **Pancasila sebagai Ideologi Negara**: ideologi dari Yunani (idein=melihat, idea=gagasan, logia=ajaran). **Mubyarto**: ideologi = doktrin/kepercayaan/simbol pedoman mencapai tujuan bangsa. **Padmo Wahjono**: ideologi = kesatuan bulat ide-ide dasar, kelanjutan pandangan hidup bangsa.
- Pancasila sebagai ideologi bersifat terbuka, luwes, fleksibel, dikembangkan kreatif-dinamis sesuai kebutuhan masyarakat.
- Pancasila berbeda dari kapitalisme-liberal & sosialisme-komunis: mengakui hak individu & masyarakat secara selaras (kolektivisme + individualisme), demokrasi politik + demokrasi ekonomi (**Jimly Asshiddiqie**).', 3),
('b0000000-0000-4000-8000-050200000000', 'Pemahaman Pancasila dari Segi Sejarah', '- Zaman Sriwijaya & Majapahit: negara berdaulat, bersatu, meliputi seluruh Nusantara; nilai ketuhanan, kemanusiaan, persatuan, musyawarah, keadilan sosial sudah dihayati (dibuktikan prasasti Telaga Batu, Kedukan Bukit, Karang Brahi, Talang Tua, Kota Kapur).
- Awal 1900-an: rintisan gagasan lewat organisasi (Boedi Oetomo, SDI, SI, Muhammadiyah, NU, Perhimpunan Indonesia dll), partai politik (Indische Partij, PNI, PSII dll), dan Sumpah Pemuda.
- **7 September 1944**: Jepang janji kemerdekaan Indonesia kelak. **1 Maret 1945**: Jepang ulangi janji tanpa syarat + umumkan pembentukan **BPUPKI** (Dokuritsu Junbi Choosakai).
- **29 April 1945**: BPUPKI dibentuk, diketuai **Dr. K.R.T. Radjiman Wediodiningrat**, 2 Ketua Muda (Itibangase & R.P. Soeroso), 60 anggota biasa + 7 anggota istimewa Jepang (tanpa hak suara) + 6 anggota tambahan Indonesia = total **76 orang**.
- **28 Mei 1945**: BPUPKI dilantik. **Sidang pertama**: 29 Mei - 1 Juni 1945. **Sidang kedua**: 10-16 Juli 1945.
- Pidato dasar negara: **Mr. Moh. Yamin (29 Mei 1945)** — pidato: Peri Kebangsaan, Peri Kemanusiaan, Peri Ketuhanan, Peri Kerakyatan, Kesejahteraan Rakyat; usulan tertulis (rancangan UUD): Ketuhanan YME, Kebangsaan Persatuan Indonesia, Rasa Kemanusiaan Adil Beradab, Kerakyatan yang Dipimpin Hikmat Kebijaksanaan dalam Permusyawaratan Perwakilan, Keadilan Sosial bagi Seluruh Rakyat Indonesia.
- **Prof. R. Soepomo (31 Mei 1945)**: Persatuan, Kekeluargaan, Keseimbangan Lahir Batin, Musyawarah, Keadilan Rakyat.
- **Ir. Soekarno (1 Juni 1945)**: Kebangsaan Indonesia, Internasionalisme/Perikemanusiaan, Mufakat/Demokrasi, Kesejahteraan Sosial, Ketuhanan yang Berkebudayaan — mengusulkan nama "Pancasila". Diperas jadi **Trisila** (Sosio Nasionalisme, Sosio Demokrasi, Ketuhanan), lalu **Ekasila** (Gotong Royong).
- Pidato Soekarno dibukukan 1947 berjudul "Lahirnya Pancasila" — sumber anggapan umum lahirnya Pancasila **1 Juni 1945**.
- Akhir sidang pertama: dibentuk **Panitia Delapan** (ketua Ir. Soekarno). **22 Juni 1945**: pertemuan bentuk **Panitia Sembilan** (Ir. Soekarno, Drs. Moh. Hatta, Mr. A.A. Maramis, Abikoesno Tjokrosoejoso, Abdul Kahar Muzakir, H. Agus Salim, Mr. Achmad Soebardjo, Wachid Hasjim, Mr. Muhammad Yamin) — hasilkan **Piagam Jakarta (Jakarta Charter)** = Rancangan Preambule Hukum Dasar.
- Rumusan Pancasila dalam **Piagam Jakarta**: (1) Ketuhanan dengan kewajiban menjalankan syariat Islam bagi pemeluk-pemeluknya; (2) Kemanusiaan yang Adil dan Beradab; (3) Persatuan Indonesia; (4) Kerakyatan yang Dipimpin oleh Hikmat Kebijaksanaan dalam Permusyawaratan/Perwakilan; (5) Keadilan Sosial bagi Seluruh Rakyat Indonesia.
- **11 Juli 1945**: BPUPKI bentuk 3 panitia — Panitia Perancang UUD (Ir. Soekarno), Panitia Pembelaan Tanah Air (Abikoesno Tjokrosoejoso), Panitia Soal Keuangan & Perekonomian (Dr. Moh. Hatta).
- **14 Juli 1945**: hasil Panitia Perancang UUD dilaporkan ke sidang kedua BPUPKI (teks proklamasi, Rancangan Pembukaan UUD, Rancangan Batang Tubuh UUD). **16 Juli 1945**: rancangan diterima sidang.
- **7 Agustus 1945**: BPUPKI dibubarkan, dibentuk **PPKI** (ketua Ir. Soekarno, wakil Drs. Moh. Hatta, 21 anggota).
- **9 Agustus 1945**: Soekarno-Hatta-Radjiman dipanggil Jenderal Terauchi di Dalath; Jepang setujui kemerdekaan diserahkan ke PPKI.
- **14 Agustus 1945**: Jepang minta damai ke Sekutu. **15 Agustus 1945**: Jepang menyerah tanpa syarat. **16 Agustus 1945**: Jepang larang PPKI persiapkan kemerdekaan.
- **17 Agustus 1945**: Proklamasi Kemerdekaan oleh Ir. Soekarno & Drs. Moh. Hatta.
- Utusan Indonesia Timur keberatan atas 7 kata "kewajiban menjalankan syariat Islam bagi pemeluk-pemeluknya" di sila pertama Piagam Jakarta.
- **18 Agustus 1945**: sidang PPKI — Drs. Moh. Hatta berunding dengan K.H. Wachid Hasyim, Ki Bagus Hadikusumo, Mr. Kasman Singadimedjo, Mr. Teuku M. Hasan — sepakat hapus 7 kata, sila pertama jadi "**Ketuhanan Yang Maha Esa**". Sidang PPKI menetapkan: (1) mengesahkan UUD 1945 (dasar negara Pancasila tanpa 7 kata); (2) memilih **Ir. Soekarno** sebagai Presiden dan **Drs. Moh. Hatta** sebagai Wakil Presiden pertama NKRI.
- Rumusan sah Pancasila (alinea IV Pembukaan UUD 1945): Ketuhanan Yang Maha Esa; Kemanusiaan yang Adil dan Beradab; Persatuan Indonesia; Kerakyatan yang Dipimpin oleh Hikmat Kebijaksanaan dalam Permusyawaratan/Perwakilan; Keadilan Sosial bagi Seluruh Rakyat Indonesia.
- Alasan rumusan ini sah: (1) kedudukan yuridis konstitusional (bagian UUD); (2) disahkan PPKI yang mewakili seluruh bangsa Indonesia.', 4),
('b0000000-0000-4000-8000-050200000000', 'Pengamalan Pancasila', '- Pengamalan Pancasila = dasar penyelenggaraan negara mewujudkan masyarakat adil makmur, meliputi pengamalan pokok pikiran Pembukaan UUD 1945 + prinsip pasal-pasal UUD 1945.
- **Pengamalan Pokok Pikiran Pembukaan UUD 1945** (4 pokok pikiran, alinea IV): (a) negara persatuan (sila ketiga); (b) keadilan sosial (sila kelima); (c) kedaulatan rakyat/permusyawaratan-perwakilan (sila keempat, Demokrasi Pancasila); (d) Ketuhanan YME menurut kemanusiaan adil beradab (sila 1 & 2, negara bukan theokrasi maupun sekuler).
- Alinea I & II Pembukaan: negara merdeka anti-penjajahan; negara merdeka, bersatu, berdaulat, adil, makmur berdasar Pancasila. Sifat negara = "**monodualistis**" (makhluk individu sekaligus sosial).
- **Pengamalan Prinsip Pasal-pasal UUD 1945** (7 sistem):
  1. **Sistem Politik/NKRI**: Pasal 1 ayat (1) — negara kesatuan berbentuk republik; Wawasan Nusantara = satu kesatuan politik, ekonomi, sosbud, hankam (Ipoleksosbud Hankamnas). Pasal 26, 27 ayat (1) tentang warga negara & kesamaan kedudukan hukum.
  2. **HAM berdasar Pancasila**: hak asasi seimbang kewajiban asasi; diatur Pembukaan UUD 1945 dan Pasal 27, 28, 28A-28J, 29, 30, 31, 33, 34.
  3. **Sistem Ekonomi** (Pasal 33): usaha bersama asas kekeluargaan; cabang produksi penting & hajat hidup orang banyak dikuasai negara; bumi-air-kekayaan alam dikuasai negara untuk kemakmuran rakyat; demokrasi ekonomi (kebersamaan, efisiensi, berkeadilan, berkelanjutan, berwawasan lingkungan, kemandirian).
  4. **Sistem Sosial Budaya** (Pasal 32): negara memajukan kebudayaan nasional, menghormati bahasa daerah; semboyan **Bhinneka Tunggal Ika**.
  5. **Sistem Pembelaan Negara**: Pasal 27 ayat (3) & Pasal 30 ayat (1)-(2) — tiap warga negara berhak & wajib bela negara; sistem hankamrata oleh TNI-Polri (kekuatan utama) + rakyat (kekuatan pendukung).
  6. **Sistem Pemerintahan Negara**: Indonesia negara hukum/rechtsstaat (Pasal 1 ayat 3); sistem konstitusional (Pasal 4 ayat 1); kedaulatan di tangan rakyat (Pasal 1 ayat 2); Presiden dipilih langsung & bertanggung jawab ke rakyat (Pasal 6A ayat 1).
  7. **Kekuasaan Presiden Tidak Tak Terbatas**: perlu persetujuan DPR untuk UU & APBN; **Fungsi Pengawasan DPR** (Pasal 20A ayat 1); **Kekuasaan Kehakiman Merdeka** (Pasal 24 ayat 1-2, dilaksanakan MA & badan bawahnya + MK); **Pemerintah Daerah** (Pasal 18, 18A, 18B) — otonomi daerah, DPRD provinsi/kabupaten/kota.', 5);

-- =========================================================
-- BAB III: UNDANG-UNDANG DASAR 1945
-- =========================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-050300000000', 'Pengertian dan Kedudukan UUD 1945', '- UUD 1945 (setelah amandemen) = Pembukaan (4 alinea) + pasal-pasal (Pasal II Aturan Tambahan). Pasal-pasal terdiri **20 Bab (Bab I-XVI)** dan **73 pasal (Pasal 1-37)**, ditambah **3 pasal Aturan Peralihan** dan **2 pasal Aturan Tambahan**. Bab IV tentang DPA dihapus. Penjelasan UUD 1945 tidak lagi bagian dari UUD sejak amandemen keempat.
- Naskah resmi UUD 1945 dimuat dalam "Berita Republik Indonesia" Tahun II No. 7, terbit **15 Februari 1946**. Ditetapkan PPKI, mulai berlaku **18 Agustus 1945**. Rancangan disiapkan **BPUPKI/Dokuritsu Zyunbi Tjoosakai**.
- Konstitusi = hukum tertinggi & paling fundamental, sumber legitimasi peraturan di bawahnya; menegakkan konstitusionalisme (the limited state, rule of law).
- Fungsi UUD 1945: mengikat pemerintah, lembaga negara, lembaga masyarakat, warga negara, dan penduduk wilayah RI; sumber hukum tertinggi & alat kontrol norma hukum di bawahnya; Pancasila = sumber dari segala sumber hukum negara (Pasal 2 UU No. 12/2011 sebagaimana diubah UU No. 13/2022).
- Tata urutan peraturan perundang-undangan pertama diatur **TAP MPRS No. XX/MPRS/1966**, diperbaharui **TAP MPR No. III/MPR/2000**, terakhir **UU No. 12 Tahun 2011** sebagaimana diubah **UU No. 13 Tahun 2022** (Pasal 7): (1) UUD NRI 1945; (2) Ketetapan MPR; (3) UU/Perpu; (4) Peraturan Pemerintah; (5) Peraturan Presiden; (6) Perda Provinsi; (7) Perda Kabupaten/Kota.
- Hukum dasar tidak tertulis = **Konvensi** (kebiasaan ketatanegaraan), tidak boleh bertentangan UUD 1945; contoh: pidato kenegaraan Presiden tiap **16 Agustus** di hadapan DPR.', 1),
('b0000000-0000-4000-8000-050300000000', 'Isi UUD 1945: Pokok Pikiran Pembukaan dan Hubungannya dengan Pasal-Pasal', '- **4 Pokok Pikiran Pembukaan UUD 1945**:
  1. **Persatuan** — negara melindungi segenap bangsa & seluruh tumpah darah Indonesia berdasar persatuan; negara mengatasi paham golongan/perseorangan.
  2. **Keadilan sosial** — negara mewujudkan keadilan sosial bagi seluruh rakyat Indonesia.
  3. **Kedaulatan rakyat** — negara berkedaulatan rakyat berdasar kerakyatan & permusyawaratan/perwakilan (dilakukan MPR).
  4. **Ketuhanan Yang Maha Esa** menurut dasar kemanusiaan yang adil dan beradab — pemerintah wajib memelihara budi pekerti luhur.
- Keempat pokok pikiran adalah pancaran falsafah Pancasila; dijelmakan lebih lanjut dalam pasal-pasal UUD 1945.
- **Sistem Pemerintahan (bentuk negara)**: Pasal 1 ayat (1) — "Negara Indonesia ialah Negara Kesatuan, yang berbentuk Republik". Pasal 37 ayat (5): bentuk NKRI **tidak dapat diubah**.
- Asas sistem pemerintahan pasca-amandemen (empat kali, 1999-2002): negara hukum (rechtsstaat, Pasal 1 ayat 3); kedaulatan di tangan rakyat menurut UUD (Pasal 1 ayat 2), sistem konstitusional; Presiden pemegang kekuasaan pemerintahan (Pasal 4 ayat 1); masa jabatan Presiden-Wapres **5 tahun**, maksimal **2 kali periode** (Pasal 7); pemberhentian Presiden/Wapres oleh MPR atas usul DPR via putusan MK (Pasal 7B ayat 1); Presiden dibantu menteri yang diangkat/diberhentikan Presiden — sistem **Presidensial** (Pasal 17).', 2),
('b0000000-0000-4000-8000-050300000000', 'Kelembagaan Negara: Tugas dan Wewenang', 'Setelah UUD 1945 diamandemen 4 kali, lembaga negara: MPR, Presiden, DPR, DPD, MA, MK, BPK, KY (DPA dihapus). Lembaga baru hasil amandemen: **DPD, MK, KY**.

| Lembaga | Kedudukan Singkat | Tugas & Wewenang Utama |
|---|---|---|
| **MPR** | Anggota = DPR + DPD hasil pemilu; fungsi konstitutif | Bersidang min. 1x/5 tahun; mengubah & menetapkan UUD (usul 1/3 anggota, kuorum 2/3 anggota, putusan >=50%+1); melantik Presiden/Wapres; memberhentikan Presiden/Wapres atas usul DPR berdasar putusan MK; melantik Wapres jadi Presiden jika Presiden berhenti; memilih Wapres pengganti (maks 60 hari) atau Presiden-Wapres pengganti (maks 30 hari) jika kosong bersamaan |
| **Presiden** | Kepala pemerintahan (eksekutif) & kepala negara; dipilih langsung rakyat; masa jabatan 5 tahun, maks 2 periode | Menjalankan pemerintahan menurut UUD; tetapkan PP & Perpu; ajukan RUU & RAPBN bersama DPR; panglima tertinggi AD/AL/AU; nyatakan perang/damai/perjanjian internasional (persetujuan DPR); nyatakan keadaan bahaya; angkat duta/konsul (pertimbangan DPR); beri grasi/rehabilitasi (pertimbangan MA); beri amnesti/abolisi (pertimbangan DPR); angkat/berhentikan menteri; tidak dapat membekukan/membubarkan DPR |
| **DPR** | Anggota dipilih pemilu, sekaligus anggota MPR; tidak dapat dibekukan Presiden | Fungsi: legislasi, anggaran, pengawasan. Bersidang min 1x/tahun; bentuk UU bersama Presiden; bahas Perpu; tetapkan APBN bersama Presiden (pertimbangan DPD); awasi pelaksanaan UU/APBN/kebijakan pemerintah; pilih anggota BPK (pertimbangan DPD); setujui pengangkatan anggota KY & calon hakim agung usul KY; pilih 3 calon hakim MK; setujui Presiden nyatakan perang/damai. Hak: interpelasi, angket, menyatakan pendapat |
| **DPD** | Wakil tiap provinsi via pemilu; jumlah maks 1/3 anggota DPR; anggota DPD = anggota MPR | Bersidang min 1x/tahun; ajukan RUU ke DPR (otonomi daerah, hubungan pusat-daerah, pemekaran daerah, SDA, perimbangan keuangan); bahas RUU tsb bersama DPR; awasi pelaksanaan UU terkait & APBN; beri pertimbangan RUU APBN/pajak/pendidikan/agama & pemilihan anggota BPK |
| **MA** | Pengadilan tertinggi, bebas dari pengaruh pemerintah; calon Hakim Agung diusulkan KY ke DPR, ditetapkan Presiden | Periksa & putus PK tingkat pertama-terakhir; putus kasasi; uji materiil peraturan di bawah UU terhadap UU; beri pertimbangan grasi/rehabilitasi ke Presiden |
| **MK** | 9 hakim konstitusi (3 dari Presiden, 3 DPR, 3 MA) | Uji UU terhadap UUD; putus sengketa kewenangan lembaga negara; putus pembubaran parpol; putus perselisihan hasil pemilu; putus pendapat DPR soal pelanggaran hukum Presiden/Wapres (maks 90 hari) |
| **BPK** | Lembaga bebas & mandiri; berkedudukan di ibu kota + perwakilan tiap provinsi; anggota dipilih DPR (pertimbangan DPD), diresmikan Presiden | Periksa pengelolaan & tanggung jawab keuangan negara; serahkan hasil pemeriksaan ke DPR, DPD, DPRD |
| **KY** | Bersifat mandiri; diangkat/diberhentikan Presiden dengan persetujuan DPR | Usulkan pengangkatan Hakim Agung; jaga & tegakkan kehormatan/keluhuran martabat/perilaku hakim |
| **KPU** | Bersifat nasional, tetap, mandiri | Selenggarakan pemilu (langsung, umum, bebas, rahasia, jujur, adil) tiap 5 tahun untuk DPR, DPRD, Presiden-Wapres, DPD; peserta pemilu DPR/DPRD = parpol, peserta pemilu DPD = perseorangan |
| **Pemerintah Daerah** | NKRI dibagi provinsi -> kabupaten/kota, punya DPRD | Jalankan otonomi seluas-luasnya kecuali urusan pusat; Gubernur/Bupati/Walikota dipilih demokratis; negara akui daerah khusus/istimewa & masyarakat hukum adat |', 3),
('b0000000-0000-4000-8000-050300000000', 'UUD 1945 dalam Pelaksanaannya (Periodisasi & Amandemen)', '- **Kurun waktu pertama** (**18 Agustus 1945 - 27 Desember 1949**): lembaga negara (MPR/DPR/DPA) belum terbentuk -> berlaku **Pasal IV Aturan Peralihan** (kekuasaan dijalankan Presiden dibantu Komite Nasional). Konvensi: Maklumat Wapres No. X (**16 Oktober 1945**) ubah fungsi KNIP jadi pemegang kekuasaan legislatif; usul BPKNIP (**11 November 1945**) + Maklumat Pemerintah (**14 November 1945**) ubah Kabinet Presidensial jadi **Kabinet Parlementer**.
- **Konstitusi RIS** berlaku **27 Desember 1949 - 17 Agustus 1950** (hanya 8 bulan); tidak berlaku di RI-Jogjakarta yang tetap pakai UUD 1945. Piagam persetujuan bentuk negara kesatuan: **19 Mei 1950**. **17 Agustus 1950**: RIS jadi negara kesatuan.
- **UUDS 1950** berlaku **17 Agustus 1950 - 5 Juli 1959**: Presiden hanya "konstitusional", kekuasaan di tangan kabinet/PM (sistem parlementer, Demokrasi Liberal); terjadi **7 kali** pergantian kabinet karena dijatuhkan DPR -> sistem parlementer tidak stabil.
- **Dekrit Presiden 5 Juli 1959**: berlakukan kembali UUD 1945 (kurun waktu kedua), dibagi 4 periode:
  a. **5 Juli 1959 - sebelum 11 Maret 1966**: pemberontakan G-30-S/PKI; TRITURA (bubarkan PKI, bersihkan kabinet dari unsur G-30-S/PKI, turunkan harga); **11 Maret 1966** keluar **Supersemar** ke Letjen Soeharto (dianggap lahirnya Orde Baru); lembaga negara belum berjalan optimal (Presiden diangkat MPRS seumur hidup, DPR dibubarkan Presiden 1960 karena tolak RAPBN).
  b. **11 Maret 1966 - 21 Mei 1998** (Orde Baru): Sidang Istimewa MPRS 1967 (tarik mandat Soekarno, angkat Soeharto jadi pejabat Presiden, TAP MPRS No. XXXIII/MPRS/1967); Sidang Umum MPRS 1968 (Soeharto jadi Presiden tetap, TAP MPRS No. XLIV/MPRS/1968); pemilu pertama Orde Baru 1971; Sidang Umum MPR 1973 tetapkan GBHN & pilih Presiden-Wapres. TAP MPR No. I/MPR/1983 (larangan ubah UUD 1945) & TAP MPR No. IV/MPR/1983 (referendum) dicabut oleh **TAP MPR No. VII & VIII/MPR/1998 (13 November 1998)**. **21 Mei 1998**: Orde Baru berakhir.
  c. **21 Mei 1998 - 22 Oktober 1999** (Pasca Orde Baru): Sidang Istimewa MPR **10-13 November 1998**; Sidang Umum MPR hasil pemilu 7 Juni 1999 (14-22 Oktober 1999) — Perubahan Pertama UUD 1945 ditetapkan **19 Oktober 1999** (batasi masa jabatan Presiden maks 2 periode, DPR pemegang kekuasaan bentuk UU bukan Presiden lagi); pilih & angkat Presiden-Wapres.
  d. **22 Oktober 1999 - sekarang**: proses amandemen lanjutan.
- **Amandemen UUD 1945** — 5 kesepakatan MPR (TAP MPR No. IX/MPR/1999): tidak mengubah Pembukaan; pertahankan NKRI; pertahankan sistem presidensiil; pindahkan hal normatif Penjelasan UUD ke pasal-pasal; tempuh cara adendum.
  - **Perubahan Pertama** (Sidang Tahunan MPR 1999, ditetapkan **19 Oktober 1999**): Pasal 5(1), 7, 9, 13(2), 14, 15, 17(2)&(3), 20, 22 — batasi kekuasaan Presiden & perkuat DPR.
  - **Perubahan Kedua** (ditetapkan **18 Agustus 2000**): Pasal 18, 18A, 18B, 19, 20(5), 20A, 22A, 22B, Bab IXA, Pasal 28A-28J (HAM), Bab XII, Pasal 30, Bab XV, Pasal 36A-36C — fungsi DPR (legislasi/anggaran/pengawasan) & hak DPR (interpelasi/angket/menyatakan pendapat), pemda, HAM, hankam.
  - **Perubahan Ketiga** (Sidang Tahunan MPR 2001, ditetapkan **9 November 2001**): Pasal 1(2)&(3), 3, 6, 6A, 7A, 7B, 7C, 8, 17(4), Bab VIIA (DPD), Bab VIIB (Pemilu), Bab VIIIA (BPK), Pasal 23-24C — MPR tidak lagi lembaga tertinggi negara, tidak lagi tetapkan GBHN, tidak lagi pilih Presiden-Wapres (hanya melantik); Presiden-Wapres dipilih langsung rakyat; lahir DPD, MK, KY.
  - **Perubahan Keempat** (Sidang Tahunan MPR 2002, ditetapkan **10 Agustus 2002**): Pasal 2(1), 6A(4), 8(3), 11(1), 16, 23B-23D, 24(3), Bab XIII, Pasal 31-32 (pendidikan/kebudayaan), Bab IV dihapus (DPA), Pasal 33(4)&(5), 34, 37, Aturan Peralihan I-III, Aturan Tambahan I-II — hapus DPA, susunan MPR = DPR+DPD, dst.
  - Total materi: naskah asli UUD 1945 = **71 butir ketentuan** -> setelah 4 amandemen = **199 butir ketentuan**. Pembukaan UUD 1945 **tidak diubah**.
- Amandemen memperkokoh NKRI: Pasal 1 ayat (1) tetap seperti naskah asli (tekad Sumpah Pemuda 1928); Pasal 37 ayat (5) tegaskan bentuk NKRI final, tidak dapat diubah.', 4);

-- =========================================================
-- BAB IV: WAWASAN KEBANGSAAN DALAM NKRI
-- =========================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-050400000000', 'Wawasan Kebangsaan dan Pengertiannya', '- UUD 1945 mengandung semangat persatuan dalam Pembukaan & pasal-pasal yang menyebut NKRI: Pasal 1 ayat (1), 18 ayat (1), 18B ayat (2), 25A, 37 ayat (5).
- Tonggak sejarah kesadaran kebangsaan: **Budi Utomo (20 Mei 1908)** — awal Kebangkitan Nasional; **Sumpah Pemuda (28 Oktober 1928)** — "Satu Nusa, Satu Bangsa, Bahasa Persatuan Bahasa Indonesia"; **Proklamasi 17 Agustus 1945**.
- **Wawasan** (KBBI 2002) = hasil mewawas/tinjauan/pandangan, atau konsepsi cara pandang. **Kebangsaan** = ciri golongan bangsa, perihal bangsa, kesadaran diri sebagai warga negara.
- **Wawasan Kebangsaan** = konsepsi cara pandang dilandasi kesadaran diri sebagai warga negara akan diri & lingkungannya dalam kehidupan berbangsa-bernegara.
- **Prof. Muladi** (mantan Gubernur Lemhannas): wawasan kebangsaan = cara pandang bangsa Indonesia mengenai diri & lingkungannya, mengutamakan kesatuan & persatuan wilayah; integrasi nasional bersifat kultural, mencakup kesatuan ideologi, politik, sosbud, ekonomi, hankam.
- Wawasan kebangsaan sangat identik dengan **Wawasan Nusantara**: cara pandang bangsa Indonesia mencapai tujuan nasional mencakup kepulauan Nusantara sebagai kesatuan politik, sosial budaya, ekonomi, pertahanan keamanan, berpedoman Pancasila & UUD 1945 (kesatuan POLEKSOSBUD dan HANKAM).', 1),
('b0000000-0000-4000-8000-050400000000', 'Wawasan Kebangsaan Indonesia, Makna, dan Nilai Dasarnya', '- Wawasan kebangsaan Indonesia menolak segala diskriminasi (suku, ras, asal-usul, keturunan, warna kulit, kedaerahan, golongan, agama/kepercayaan, status sosial); bertujuan membangun & mengembangkan persatuan-kesatuan.
- Budi Utomo (1908) = tonggak proses Bhinneka Tunggal Ika; Sumpah Pemuda memadukan kebhinekaan dengan ketunggalikaan — kemajemukan (suku, adat, budaya, bahasa daerah, agama) tetap dihormati.
- Bukti tidak ada warga kelas satu/dua: bahasa nasional dipilih bahasa Melayu (berkembang jadi Bahasa Indonesia), bukan bahasa Jawa (mayoritas).
- Paham nasionalisme = loyalitas tertinggi warga bangsa ditujukan pada negara & bangsa.
- **Makna Wawasan Kebangsaan** bagi bangsa Indonesia:
  1. Mengamanatkan menempatkan persatuan, kesatuan, kepentingan & keselamatan bangsa-negara di atas kepentingan pribadi/golongan;
  2. Mengembangkan persatuan Indonesia agar asas Bhinneka Tunggal Ika dipertahankan;
  3. Tidak memberi tempat pada patriotisme yang licik/picik;
  4. Dilandasi pandangan hidup Pancasila, berhasil merintis jalan misinya di tata kehidupan dunia;
  5. NKRI merdeka-bersatu-berdaulat-adil-makmur bertekad wujudkan bangsa maju, mandiri, sejahtera lahir batin.
- **Nilai Dasar Wawasan Kebangsaan** (6 dimensi mendasar):
  1. Penghargaan harkat & martabat manusia sebagai makhluk ciptaan Tuhan YME;
  2. Tekad bersama berkehidupan kebangsaan bebas, merdeka, bersatu;
  3. Cinta tanah air dan bangsa;
  4. Demokrasi/kedaulatan rakyat;
  5. Kesetiakawanan sosial;
  6. Masyarakat adil-makmur.', 2),
('b0000000-0000-4000-8000-050400000000', 'Wawasan Kebangsaan sebagai Kekuatan Bangsa dan Fungsi ASN', '- Indonesia diproklamasikan **17 Agustus 1945** sebagai negara kesatuan berbentuk Republik. Keanekaragaman suku/bahasa/agama/adat = kekuatan bila hidup harmonis, kelemahan bila penuh kecurigaan/pertentangan.
- Sistem kenegaraan: pemerintahan pusat kuat (jaga stabilitas & kesatuan bangsa) + desentralisasi/otonomi daerah yang dewasa-mandiri-demokratis, harus proporsional agar tidak memicu disintegrasi.
- Paham nasionalisme = paham modern lahir akhir abad 18/awal abad 19.
- **Fungsi ASN sebagai Perekat dan Pemersatu Bangsa**: dasar hukum **UU No. 5 Tahun 2014 Pasal 66 ayat 1-2** — ASN sumpah setia & taat pada Pancasila, UUD 1945, negara, pemerintah; utamakan kepentingan negara di atas pribadi/golongan. Pancasila-UUD 1945-NKRI = final/harga mati bagi ASN.
- Kompetensi sosial kultural ASN diatur **PP No. 11 Tahun 2017** (Manajemen ASN) dan **Permenpan-RB No. 38 Tahun 2017** — terkait interaksi masyarakat majemuk (agama, suku, budaya, wawasan kebangsaan, etika, moral).
- Kemenkeu menetapkan **KMK No. 954/KMK.01/2019** tentang Kompetensi Sosio Kultural — perekat & pemersatu bangsa = kemampuan promosikan toleransi/keterbukaan, jadi perpanjangan tangan pemerintah, jaga persatuan-kesatuan.
- **5 Level Profisiensi Kompetensi Sosial Kultural** (Permenpan-RB 38/2017 & KMK 954/2019):
  - Level 1 (paham/dalam pengembangan) — pelaksana & jab. fungsional pemula: peka memahami & menerima kemajemukan.
  - Level 2 (dasar) — jab. pengawas & fungsional pertama: aktif kembangkan sikap saling menghargai, tekankan persamaan & persatuan.
  - Level 3 (menengah) — jab. administrator & fungsional muda: promosikan & kembangkan sikap toleransi dan persatuan.
  - Level 4 (mumpuni) — eselon II & fungsional madya: dayagunakan perbedaan secara konstruktif-kreatif untuk efektivitas organisasi.
  - Level 5 (ahli) — eselon I & fungsional utama: jadi wakil pemerintah membangun hubungan sosial psikologis dengan masyarakat.', 3);

-- =========================================================
-- BAB V: PENUTUP
-- =========================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-050500000000', 'Penutup', '- Wawasan kebangsaan mengutamakan persatuan, kesatuan, kepentingan & keselamatan bangsa-negara di atas kepentingan pribadi/golongan; manusia Indonesia harus rela berkorban demi bangsa.
- Perlu dipupuk: penghargaan martabat manusia, cinta tanah air & bangsa, demokrasi, kesetiakawanan sosial.
- Wawasan kebangsaan mengembangkan persatuan Indonesia agar asas **Bhinneka Tunggal Ika** dipertahankan — keanekaan tidak boleh jadi pemecah belah, justru memperkaya persatuan.
- Wawasan kebangsaan tidak memberi tempat pada patriotisme picik; cinta tanah air diarahkan pula pada kepentingan seluruh umat manusia (hubungan antar ras/bangsa/negara).
- Wawasan Kebangsaan Indonesia dilandasi Pancasila sebagai falsafah & pandangan hidup bangsa.
- Pasal 1 ayat (1) UUD 1945 tidak pernah diubah sejak amandemen — komitmen MPR pertahankan NKRI; Pasal 37 ayat (5) menegaskan bentuk negara kesatuan tidak dapat diubah = bentuk final.
- **Makna NKRI**: satu kesatuan teritori (sesuai **UNCLOS 1982**, dari Sabang-Merauke, Miangas-Rote); satu kesatuan bangsa (**Sumpah Pemuda 1928**); satu kesatuan kepemilikan sumber kekayaan alam untuk kesejahteraan rakyat; satu kesatuan ideologi (**Pancasila**); satu kesatuan politik nasional berpihak kepentingan nasional; satu kesatuan perekonomian nasional; satu kesatuan budaya nasional (jati diri Indonesia); satu sistem pertahanan keamanan nasional yang khas.', 1);

-- =========================================================
-- MIND MAP PER BAB
-- =========================================================

update chapters set mindmap = '# Bab I: Pendahuluan
## Latar Belakang
- Tujuan negara: sejahtera & cerdaskan bangsa
- Proklamasi 17 Agustus 1945
- Dinamika politik pasca-72 tahun merdeka
- Kesadaran kebangsaan dari kehendak bersama
- Karakter Gemeinschaft (kesatuan spirit)
- Keragaman budaya dipertahankan, bukan diseragamkan
- Realita geografik kepulauan -> faktor perekat
- Founding Fathers rumuskan nilai kebangsaan
- Reformasi = konsolidasi demokrasi
- Konsensus Dasar Nasional
  - Pancasila
  - UUD 1945
  - Bhinneka Tunggal Ika
  - NKRI
## Deskripsi Singkat
- Arti penting wawasan kebangsaan
- Pemerintahan stabil & dinamis
## Materi Pokok
- Pancasila
- UUD 1945
- Bhinneka Tunggal Ika
- NKRI
## Manfaat
- Memahami Pancasila, UUD 1945, wawasan kebangsaan NKRI'
where id = 'b0000000-0000-4000-8000-050100000000';

update chapters set mindmap = '# Bab II: Pancasila
## Arti Kata & Asal Usul
- Zaman Sriwijaya & Majapahit
- Kitab Negara Kertagama, Sutasoma
- Panca = lima, Sila = dasar/asas
- Diusulkan Ir. Soekarno, 1 Juni 1945 (BPUPKI)
- Disahkan PPKI, 18 Agustus 1945
## Pengertian Pokok
- Pandangan hidup vs dasar negara
- Fungsi: statis, tuntunan dinamis, ikatan pemersatu
- Sumber segala sumber hukum (UU 12/2011 jo UU 13/2022)
- Pembukaan UUD 1945: 4 alinea
## Kedudukan & Fungsi
- 4 pokok pikiran suasana kebatinan UUD 1945
- Fungsi Yuridis Ketatanegaraan
- Fungsi Sosiologis
- Fungsi Etis dan Filosofis
## Pancasila sebagai Falsafah Bangsa
- Filsafat Pancasila
- Nilai (Notonegoro): Material, Vital, Kerohanian
- Nilai tiap sila
- Pandangan Integralistik (Soepomo, 31 Mei 1945)
- Pancasila sebagai Ideologi Negara
  - Terbuka, luwes, fleksibel
  - Beda dgn kapitalisme-liberal & sosialisme-komunis
## Sejarah Perumusan
- BPUPKI dibentuk 29 April 1945 (76 anggota)
- Sidang I BPUPKI (29 Mei - 1 Juni 1945)
  - Moh. Yamin (29 Mei)
  - Soepomo (31 Mei)
  - Soekarno (1 Juni) - usul nama Pancasila
- Panitia Sembilan -> Piagam Jakarta (22 Juni 1945)
- Sidang II BPUPKI (10-16 Juli 1945)
- PPKI dibentuk 7 Agustus 1945
- Proklamasi 17 Agustus 1945
- Sidang PPKI 18 Agustus 1945
  - Hapus 7 kata sila pertama
  - Sahkan UUD 1945
  - Pilih Soekarno-Hatta
## Pengamalan Pancasila
- Pokok pikiran Pembukaan UUD 1945
- Sistem Politik/NKRI
- HAM berdasar Pancasila
- Sistem Ekonomi (Pasal 33)
- Sistem Sosial Budaya (Pasal 32)
- Sistem Pembelaan Negara
- Sistem Pemerintahan Negara
- Kekuasaan Presiden Tidak Tak Terbatas'
where id = 'b0000000-0000-4000-8000-050200000000';

update chapters set mindmap = '# Bab III: Undang-Undang Dasar 1945
## Pengertian & Kedudukan
- Konstitusi = hukum tertinggi
- 20 Bab, 73 pasal + Aturan Peralihan & Tambahan
- Berlaku sejak 18 Agustus 1945
- Tata urutan perundang-undangan (UU 12/2011 jo UU 13/2022)
- Konvensi (hukum dasar tidak tertulis)
## Isi UUD 1945
- 4 Pokok Pikiran Pembukaan
  - Persatuan
  - Keadilan sosial
  - Kedaulatan rakyat
  - Ketuhanan YME
- Sistem Pemerintahan
  - Negara kesatuan berbentuk republik
  - Presidensial
  - Masa jabatan Presiden 5 tahun x2
## Kelembagaan Negara
- MPR
- Presiden
- DPR
- DPD
- MA
- MK
- BPK
- KY
- KPU
- Pemerintah Daerah
## UUD 1945 dalam Pelaksanaannya
- Kurun waktu I (1945-1949)
- Konstitusi RIS (1949-1950)
- UUDS 1950 (1950-1959)
- Dekrit Presiden 5 Juli 1959
- Kurun waktu II
  - Orde Lama (1959-1966)
  - Orde Baru (1966-1998)
  - Pasca Orde Baru (1998-1999)
  - Era Reformasi (1999-sekarang)
## Amandemen UUD 1945
- Perubahan I (1999)
- Perubahan II (2000)
- Perubahan III (2001)
- Perubahan IV (2002)
- 71 -> 199 butir ketentuan
- Pembukaan tidak diubah'
where id = 'b0000000-0000-4000-8000-050300000000';

update chapters set mindmap = '# Bab IV: Wawasan Kebangsaan dalam NKRI
## Pengertian Wawasan Kebangsaan
- Wawasan = cara pandang
- Kebangsaan = kesadaran sebagai warga negara
- Identik dengan Wawasan Nusantara
- Prof. Muladi: integrasi nasional kultural
- Tonggak sejarah
  - Budi Utomo 1908
  - Sumpah Pemuda 1928
  - Proklamasi 1945
## Wawasan Kebangsaan Indonesia
- Menolak diskriminasi
- Bhinneka Tunggal Ika
- Bahasa Indonesia dari bahasa Melayu
## Makna Wawasan Kebangsaan
- Utamakan persatuan & kesatuan
- Pertahankan Bhinneka Tunggal Ika
- Tolak patriotisme licik
- Dilandasi Pancasila
- NKRI maju, mandiri, sejahtera
## Nilai Dasar (6 Dimensi)
- Harkat martabat manusia
- Kebangsaan bebas merdeka bersatu
- Cinta tanah air
- Demokrasi/kedaulatan rakyat
- Kesetiakawanan sosial
- Masyarakat adil makmur
## Wawasan Kebangsaan sebagai Kekuatan Bangsa
- Keanekaragaman: kekuatan vs kelemahan
- Pusat kuat + desentralisasi seimbang
## Fungsi ASN Perekat Pemersatu Bangsa
- UU No. 5/2014 Pasal 66
- Kompetensi sosial kultural (Permenpan-RB 38/2017)
- KMK 954/KMK.01/2019
- 5 Level Profisiensi
  - Level 1: Peka memahami
  - Level 2: Kembangkan sikap menghargai
  - Level 3: Promosikan toleransi
  - Level 4: Dayagunakan perbedaan
  - Level 5: Wakil pemerintah'
where id = 'b0000000-0000-4000-8000-050400000000';

update chapters set mindmap = '# Bab V: Penutup
## Wawasan Kebangsaan
- Utamakan persatuan & kesatuan bangsa
- Rela berkorban demi bangsa
## Nilai yang Dipupuk
- Penghargaan martabat manusia
- Cinta tanah air & bangsa
- Demokrasi
- Kesetiakawanan sosial
## Bhinneka Tunggal Ika
- Keanekaan memperkaya persatuan
- Tolak patriotisme picik
## Landasan
- Pancasila sebagai falsafah & pandangan hidup
- Pasal 1 ayat (1) UUD 1945 tidak diubah
- Pasal 37 ayat (5): bentuk negara final
## Makna NKRI
- Kesatuan teritori (UNCLOS 1982, Sabang-Merauke)
- Kesatuan bangsa (Sumpah Pemuda 1928)
- Kesatuan kekayaan alam
- Kesatuan ideologi Pancasila
- Kesatuan politik nasional
- Kesatuan perekonomian nasional
- Kesatuan budaya nasional
- Kesatuan sistem hankam'
where id = 'b0000000-0000-4000-8000-050500000000';
