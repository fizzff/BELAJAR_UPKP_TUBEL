-- Materi + mind map + soal: Bab "Kemampuan Penalaran" (Modul TPA v2)
-- Sub-topik: Flat Type, Strata Type, Dimensional Type (tipe struktur soal penalaran analitis),
-- Konjungsi, Disjungsi, Implikasi, Biimplikasi, Konvers/Invers/Kontraposisi,
-- Negasi Kalimat Majemuk, Silogisme, Modus Ponens, Modus Tollens.
--
-- CATATAN SUMBER untuk Flat Type / Strata Type / Dimensional Type:
-- Istilah bahasa Inggris "Flat Type", "Strata Type", "Dimensional Type" TIDAK ditemukan
-- sebagai istilah baku/terdokumentasi pada sumber-sumber TPA/TPS/CPNS Indonesia maupun
-- literatur akademik reasoning berbahasa Inggris yang tersedia (sudah dicoba beberapa variasi
-- pencarian web). Yang konsisten ditemukan di berbagai sumber materi Penalaran Analitis
-- CPNS/TPA (mis. smartcpns.id "Materi TIU Penalaran Analitis", kompas.com "10 Latihan Soal
-- dan Jawaban TIU CPNS Materi Penalaran Analitis", mathcyber1997.com "Materi, Soal, dan Kunci
-- Jawaban - Penalaran Analisis") adalah pengelompokan soal penalaran analitis berdasarkan
-- STRUKTUR HUBUNGAN antar objek dalam premis: (1) hubungan yang setara/sejajar tanpa jenjang,
-- (2) hubungan berjenjang/hierarkis (ranking, urutan, posisi bertingkat), dan (3) hubungan
-- yang melibatkan banyak atribut/dimensi sekaligus (kombinasi data multi-atribut).
-- Body di bawah menuliskan definisi Flat Type / Strata Type / Dimensional Type sebagai
-- GENERALISASI dari pola tersebut (bukan kutipan sumber tunggal yang memakai istilah Inggris
-- ini secara harfiah) sesuai catatan definisi yang diberikan dalam instruksi tugas ini.

delete from questions where chapter_id = 'b0000000-0000-4000-8000-060400000000';
delete from contents where chapter_id = 'b0000000-0000-4000-8000-060400000000';

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-060400000000', null, 'Kemampuan Penalaran menguji kemampuan berpikir logis dan sistematis: menyusun, membaca, dan menyimpulkan hubungan antar-pernyataan. Bab ini mencakup dua kelompok besar. Pertama, **penalaran analitis** (Flat Type, Strata Type, Dimensional Type) yang menguji kemampuan mengorganisir premis-premis tentang posisi/urutan/atribut objek menjadi kesimpulan yang pasti benar. Kedua, **logika proposisional/silogisme** (konjungsi, disjungsi, implikasi, biimplikasi, konvers-invers-kontraposisi, negasi kalimat majemuk, silogisme, modus ponens, modus tollens) yang menguji kemampuan menilai benar/salah suatu pernyataan majemuk serta menarik kesimpulan sah darinya.', 1),

('b0000000-0000-4000-8000-060400000000', 'Flat Type', '**Definisi:** Flat Type adalah istilah untuk soal penalaran analitis dengan premis-premis yang SETARA/SEJAJAR, tanpa hierarki atau tingkatan. Semua objek berada pada "level" yang sama, dan hubungan antarobjek umumnya berupa kesamaan, perbedaan, atau keterkaitan langsung, bukan urutan berjenjang.

**Cara Kerja / Langkah Pengerjaan:**
1. Baca seluruh premis dan tandai kata kunci kesetaraan/perbedaan seperti "sama dengan", "berbeda dengan", "sejenis", tanpa embel-embel "lebih tinggi/lebih rendah dari".
2. Kelompokkan objek yang dinyatakan setara menjadi satu "blok", dan pisahkan objek yang dinyatakan berbeda dari blok tersebut.
3. Jika premis setara digabung dengan premis berjenjang (Strata) atau atribut tambahan (Dimensional), buat TABEL BANTU (matriks objek x atribut/urutan) agar seluruh informasi terpetakan sekaligus.
4. Cocokkan hasil pengelompokan dengan pilihan jawaban untuk memastikan tidak ada kontradiksi.

**Rumus & Poin Kunci:**
- Ciri pengenal Flat Type: hubungan antarobjek bersifat setara/sejajar, tanpa jenjang.
- Contoh pola: "Ani dan Budi menyukai warna yang sama. Budi tidak menyukai warna merah. Ani menyukai warna biru." Karena Budi "sama" dengan Ani, Budi juga menyukai warna biru, dan keduanya sama-sama tidak menyukai merah.
- Pada level lanjutan, Flat Type jarang berdiri sendiri: premis kesetaraan/perbedaan sering digabung dengan premis berjenjang (Strata Type) atau atribut tambahan (Dimensional Type) dalam satu soal.
- *Catatan: istilah "Flat Type" di sini adalah generalisasi dari pola soal penalaran analitis berhubungan setara/sejajar; lihat catatan sumber di awal file.*

**Kesalahan Umum / Jebakan:**
- Menganggap "berbeda dengan" berarti berlawanan/berjenjang (lebih tinggi/rendah), padahal hanya berarti TIDAK SAMA, sehingga urutannya belum tentu bisa ditentukan.
- Lupa memetakan premis setara ke dalam tabel bantu saat soal digabung dengan Strata/Dimensional Type, sehingga ada informasi yang terlewat.

**Kesimpulan:** Kenali Flat Type dari hubungan setara/sejajar antarobjek tanpa jenjang, dan gunakan tabel bantu saat premisnya digabung dengan tipe soal lain.

**Contoh Soal:** Empat pegawai baru, yaitu Galih, Hana, Ivan, dan Jihan, mengikuti pelatihan dan dibandingkan nilai ujiannya. Nilai ujian Galih sama dengan nilai ujian Hana. Nilai ujian Ivan lebih tinggi daripada nilai ujian Galih. Nilai ujian Jihan lebih rendah daripada nilai ujian Hana. Siapa yang mendapat nilai tertinggi, dan bagaimana urutan lengkap nilai dari tertinggi ke terendah?

- A. Ivan > Jihan > Galih = Hana
- B. Galih = Hana > Ivan > Jihan
- C. Ivan > Galih > Hana > Jihan
- D. Jihan > Galih = Hana > Ivan
- E. Ivan > Galih = Hana > Jihan

**Pembahasan:**

**Diketahui:** Nilai ujian Galih sama dengan nilai ujian Hana; nilai ujian Ivan lebih tinggi daripada nilai ujian Galih; nilai ujian Jihan lebih rendah daripada nilai ujian Hana.

**Ditanya:** Siapa yang mendapat nilai tertinggi, dan bagaimana urutan lengkap nilai dari tertinggi ke terendah?

**Jawab:** Soal ini menggabungkan hubungan setara (Flat: Galih = Hana) dengan hubungan berjenjang (Strata: Ivan > Galih, dan Jihan < Hana). Karena Galih dan Hana memiliki nilai yang sama, keduanya bisa diperlakukan sebagai satu "blok" nilai yang setara. Ivan berada di atas blok tersebut (Ivan > Galih = Hana), sedangkan Jihan berada di bawah blok tersebut (Jihan < Hana = Galih). Menyusun semuanya menghasilkan urutan nilai dari tertinggi ke terendah: Ivan, kemudian Galih = Hana (setara), kemudian Jihan. Nilai tertinggi diraih oleh Ivan. Urutan ini sesuai dengan opsi Ivan > Galih = Hana > Jihan. Jadi jawabannya adalah E.', 2),

('b0000000-0000-4000-8000-060400000000', 'Strata Type', '**Definisi:** Strata Type adalah istilah untuk soal penalaran analitis dengan premis-premis yang BERJENJANG/BERTINGKAT (strata = lapisan/tingkatan): objek-objek disusun dalam urutan, peringkat, atau posisi (lebih tinggi, lebih tua, lebih besar, lebih dulu, dsb.).

**Cara Kerja / Langkah Pengerjaan:**
1. Identifikasi seluruh petunjuk berjenjang (kata kunci: lebih tinggi/rendah, lebih tua/muda, lebih besar/kecil, lebih dulu/akhir).
2. Mulai menyusun urutan dari petunjuk yang PALING PASTI, misalnya posisi tetap seperti "paling awal" atau "paling akhir".
3. Sisipkan objek lain satu per satu berdasarkan petunjuk relatif (lebih tinggi dari X, lebih rendah dari Y) sampai seluruh objek punya posisi.
4. Jika ada atribut tambahan (Dimensional Type), buat TABEL BANTU berupa matriks urutan x atribut untuk mencocokkan posisi dengan atributnya sekaligus.
5. Baca posisi relatif antarobjek dari tabel/urutan akhir untuk menjawab pertanyaan.

**Rumus & Poin Kunci:**
- Contoh pola: "A lebih tinggi dari B. B lebih tinggi dari C. D lebih pendek dari C." Disusun menjadi urutan tinggi ke pendek: A - B - C - D, sehingga A tertinggi dan D terpendek.
- Pada level lanjutan, Strata Type sering digabung dengan Dimensional Type: selain urutan/peringkat, setiap objek juga punya atribut tambahan (instansi, kategori, kelompok, dsb.) yang harus dicocokkan bersamaan.
- *Catatan: istilah "Strata Type" di sini adalah generalisasi dari pola soal penalaran analitis berhubungan berjenjang/hierarkis (ranking, urutan, posisi bertingkat); lihat catatan sumber di awal file.*

**Kesalahan Umum / Jebakan:**
- Menyusun urutan hanya dari sebagian petunjuk lalu langsung menyimpulkan, padahal masih ada petunjuk lain yang mengubah posisi relatif beberapa objek.
- Salah arah saat membaca kata pembanding (tertukar antara "lebih tinggi dari" dan "lebih rendah dari"), sehingga urutan akhir terbalik.

**Kesimpulan:** Strata Type dikenali dari premis berjenjang; susun urutan penuh menggunakan tabel bantu, terutama saat digabung dengan atribut tambahan.

**Contoh Soal:** Empat calon peserta ujian, yaitu Karin, Lutfi, Mira, dan Nanda, mengantre di depan ruang ujian. Selain nomor urut antrean, masing-masing juga berasal dari salah satu dari empat instansi berbeda: Kemenkeu, Kemendikbud, Kemenkes, atau Kemenag (masing-masing instansi hanya diwakili satu peserta). Diketahui: Karin mengantre tepat di depan Lutfi. Peserta dari Kemenkes mengantre paling akhir. Mira mengantre sebelum Nanda, tetapi setelah peserta dari Kemenag. Nanda berasal dari Kemenkes. Peserta dari Kemendikbud mengantre paling awal. Tentukan urutan antrean lengkap beserta instansi masing-masing peserta!

- A. Karin-Kemendikbud, Lutfi-Kemenag, Mira-Kemenkeu, Nanda-Kemenkes
- B. Mira-Kemendikbud, Karin-Kemenag, Lutfi-Kemenkeu, Nanda-Kemenkes
- C. Karin-Kemenag, Lutfi-Kemendikbud, Mira-Kemenkeu, Nanda-Kemenkes
- D. Karin-Kemendikbud, Lutfi-Kemenkeu, Mira-Kemenag, Nanda-Kemenkes
- E. Karin-Kemendikbud, Lutfi-Kemenag, Mira-Kemenkes, Nanda-Kemenkeu

**Pembahasan:**

**Diketahui:** Karin mengantre tepat di depan Lutfi; peserta dari Kemenkes mengantre paling akhir; Mira mengantre sebelum Nanda tetapi setelah peserta dari Kemenag; Nanda berasal dari Kemenkes; peserta dari Kemendikbud mengantre paling awal.

**Ditanya:** Urutan antrean lengkap beserta instansi masing-masing peserta.

**Jawab:** Karena Nanda berasal dari Kemenkes dan peserta Kemenkes mengantre paling akhir (posisi ke-4), maka Nanda berada di posisi 4. Karin harus tepat di depan Lutfi, sehingga di antara posisi 1-3 yang tersisa untuk Karin, Lutfi, dan Mira, pasangan Karin-Lutfi harus berurutan: kemungkinan (Karin=1, Lutfi=2, Mira=3) atau (Mira=1, Karin=2, Lutfi=3). Karena peserta Kemendikbud berada di posisi 1, dan Mira harus mengantre SETELAH peserta dari Kemenag (artinya posisi Kemenag lebih kecil dari posisi Mira, sehingga Mira tidak mungkin berada di posisi 1, sebab tidak ada posisi sebelum posisi 1), kemungkinan Mira=1 gugur. Maka susunannya adalah Karin=1, Lutfi=2, Mira=3, Nanda=4. Posisi 1 (Karin) otomatis berinstansi Kemendikbud. Karena Mira (posisi 3) harus setelah peserta Kemenag, dan posisi yang tersisa untuk Kemenag hanyalah posisi 2, maka Lutfi berinstansi Kemenag. Instansi yang tersisa, Kemenkeu, jatuh ke Mira (bukan Nanda, sebab Nanda sudah pasti Kemenkes). Urutan akhir: 1) Karin - Kemendikbud, 2) Lutfi - Kemenag, 3) Mira - Kemenkeu, 4) Nanda - Kemenkes. Jadi jawabannya adalah A.', 3),

('b0000000-0000-4000-8000-060400000000', 'Dimensional Type', '**Definisi:** Dimensional Type adalah istilah untuk soal penalaran analitis yang melibatkan BEBERAPA DIMENSI atau ATRIBUT sekaligus untuk objek yang sama (misalnya nama, pekerjaan, kota asal, warna favorit, hari kerja — semua dipasangkan dalam satu soal).

**Cara Kerja / Langkah Pengerjaan:**
1. Daftar semua dimensi/atribut yang disebut (nama, profesi, kota, dsb.) dan buat tabel silang (matriks) dengan objek sebagai baris dan atribut sebagai kolom.
2. Isi tabel dengan petunjuk yang bersifat PASTI/langsung terlebih dahulu (misalnya "Hendra tinggal di Manado").
3. Gunakan petunjuk negatif ("Rani bukan dokter", "Gita bukan tinggal di Solo") untuk mencoret kemungkinan yang tidak sesuai.
4. Gunakan petunjuk tidak langsung (misalnya "yang tinggal di Bekasi adalah insinyur") untuk menghubungkan dua kolom sekaligus.
5. Jika ada urutan/peringkat pada salah satu atribut (Strata Type tergabung), tambahkan kolom urutan pada tabel yang sama dan isi dengan cara yang sama seperti Strata Type.
6. Lengkapi tabel sampai setiap objek punya pasangan atribut yang unik dan konsisten dengan semua premis.

**Rumus & Poin Kunci:**
- Tingkat kesulitan Dimensional Type lebih tinggi dari Flat Type maupun Strata Type karena harus mencocokkan (matching) kombinasi antardimensi, bukan sekadar urutan satu arah.
- Contoh pola: "Rani bukan dokter dan tidak tinggal di Bandung. Yang tinggal di Bekasi adalah insinyur. Sinta tinggal di Bogor" → butuh tabel silang profesi x kota x nama untuk menyimpulkan pasangan yang tepat untuk tiap orang.
- Pada level lanjutan, Dimensional Type sering digabung dengan Strata Type: selain mencocokkan kombinasi atribut, soal juga meminta menyusun urutan/peringkat salah satu atributnya (misalnya gaji, senioritas, atau skor).
- *Catatan: istilah "Dimensional Type" di sini adalah generalisasi dari pola soal penalaran analitis multi-atribut/kombinasi data; lihat catatan sumber di awal file.*

**Kesalahan Umum / Jebakan:**
- Mengisi tabel hanya berdasarkan petunjuk langsung dan mengabaikan petunjuk negatif ("bukan", "tidak"), padahal petunjuk negatif sering menjadi kunci untuk mencoret kemungkinan yang salah.
- Berhenti menyimpulkan sebelum SEMUA sel tabel terisi konsisten, sehingga jawaban yang dipilih ternyata masih punya kemungkinan lain yang belum tereliminasi.

**Kesimpulan:** Dimensional Type adalah tipe paling kompleks karena menggabungkan banyak atribut sekaligus; gunakan tabel silang untuk mencocokkan seluruh kombinasi secara sistematis.

**Contoh Soal:** Tiga pejabat, yaitu Pak Broto, Bu Citra, dan Pak Dedi, masing-masing menjabat sebagai Kepala Bagian, Kepala Bidang, atau Kepala Subbagian, dan masing-masing bertugas di salah satu unit: Keuangan, SDM, atau Umum. Urutan jenjang jabatan dari tertinggi ke terendah adalah Kepala Bagian, Kepala Bidang, Kepala Subbagian, dan gaji pokok mengikuti urutan jenjang tersebut (semakin tinggi jenjang, semakin besar gaji pokok). Diketahui: Pak Broto bukan Kepala Bagian dan tidak bertugas di unit Keuangan. Bu Citra bertugas di unit SDM dan gaji pokoknya lebih besar daripada Pak Dedi. Pak Dedi bukan Kepala Subbagian. Tentukan jabatan dan unit masing-masing pejabat, serta urutan gaji dari tertinggi ke terendah!

- A. Bu Citra (Kepala Bagian, SDM) > Pak Dedi (Kepala Bidang, Keuangan) > Pak Broto (Kepala Subbagian, Umum)
- B. Pak Dedi (Kepala Bagian, Keuangan) > Bu Citra (Kepala Bidang, SDM) > Pak Broto (Kepala Subbagian, Umum)
- C. Bu Citra (Kepala Bagian, SDM) > Pak Broto (Kepala Bidang, Umum) > Pak Dedi (Kepala Subbagian, Keuangan)
- D. Pak Broto (Kepala Bagian, Umum) > Bu Citra (Kepala Bidang, SDM) > Pak Dedi (Kepala Subbagian, Keuangan)
- E. Bu Citra (Kepala Bagian, Keuangan) > Pak Dedi (Kepala Bidang, SDM) > Pak Broto (Kepala Subbagian, Umum)

**Pembahasan:**

**Diketahui:** Pak Broto bukan Kepala Bagian dan tidak bertugas di unit Keuangan; Bu Citra bertugas di unit SDM dan gaji pokoknya lebih besar daripada Pak Dedi; Pak Dedi bukan Kepala Subbagian; urutan jenjang jabatan dari tertinggi ke terendah adalah Kepala Bagian, Kepala Bidang, Kepala Subbagian, dan gaji pokok mengikuti urutan jenjang tersebut.

**Ditanya:** Jabatan dan unit masing-masing pejabat, serta urutan gaji dari tertinggi ke terendah.

**Jawab:** Karena Pak Dedi bukan Kepala Subbagian, jabatannya adalah Kepala Bagian atau Kepala Bidang. Jika Pak Dedi Kepala Bagian (jenjang tertinggi), maka tidak mungkin ada orang lain bergaji lebih besar darinya, padahal Bu Citra harus bergaji lebih besar daripada Pak Dedi — kontradiksi. Jadi Pak Dedi adalah Kepala Bidang. Karena gaji Bu Citra lebih besar daripada Pak Dedi (Kepala Bidang), jenjang Bu Citra harus di atasnya, yaitu Kepala Bagian. Sisa jabatan, Kepala Subbagian, jatuh ke Pak Broto (konsisten dengan syarat "Pak Broto bukan Kepala Bagian"). Untuk unit: Bu Citra sudah pasti di SDM. Pak Broto tidak di Keuangan, dan SDM sudah terisi Bu Citra, sehingga Pak Broto di unit Umum. Sisa unit, Keuangan, jatuh ke Pak Dedi. Kesimpulan: Bu Citra = Kepala Bagian, SDM, gaji tertinggi; Pak Dedi = Kepala Bidang, Keuangan, gaji menengah; Pak Broto = Kepala Subbagian, Umum, gaji terendah. Urutan gaji dari tertinggi ke terendah: Bu Citra, Pak Dedi, Pak Broto. Jadi jawabannya adalah A.', 4),

('b0000000-0000-4000-8000-060400000000', 'Konjungsi', '**Definisi:** Konjungsi adalah pernyataan majemuk berbentuk "p dan q" (dilambangkan $p \land q$), yang bernilai BENAR hanya jika kedua pernyataan tunggal sama-sama benar.

**Cara Kerja / Langkah Pengerjaan:**
1. Tentukan nilai kebenaran masing-masing pernyataan tunggal p dan q.
2. Terapkan aturan konjungsi: jika KEDUANYA benar, hasilnya benar; jika salah satu saja salah, hasilnya salah.
3. Jika konjungsi menjadi bagian dari pernyataan berlapis, misalnya $(p \land q) \rightarrow r$, evaluasi dulu nilai $(p \land q)$ di dalam kurung, baru gunakan hasilnya sebagai anteseden/konsekuen pada operator terluar.

**Rumus & Poin Kunci:**
- Tabel kebenaran:

| p | q | $p \land q$ |
|---|---|-------|
| B | B | B |
| B | S | S |
| S | B | S |
| S | S | S |

- Contoh: "Jakarta adalah ibu kota Indonesia dan 2 + 2 = 4" bernilai BENAR karena kedua bagian benar; "Jakarta adalah ibu kota Indonesia dan 2 + 2 = 5" bernilai SALAH karena bagian kedua salah.
- Pada level lanjutan, konjungsi sering muncul sebagai bagian dari pernyataan majemuk berlapis, misalnya $(p \land q) \rightarrow r$, bukan sekadar $p \land q$ berdiri sendiri.

**Kesalahan Umum / Jebakan:**
- Menganggap konjungsi bernilai benar jika SALAH SATU pernyataan benar (tertukar dengan aturan disjungsi), padahal konjungsi butuh KEDUANYA benar.
- Lupa mengevaluasi bagian dalam kurung terlebih dahulu pada pernyataan berlapis, sehingga langsung menebak nilai keseluruhan tanpa proses bertahap.

**Kesimpulan:** Konjungsi ($p \land q$) hanya bernilai benar jika kedua pernyataan benar sekaligus; kuasai tabel kebenarannya sebagai dasar mengevaluasi pernyataan majemuk yang lebih kompleks.

**Contoh Soal:** Diketahui p = "Anggaran proyek disetujui" bernilai BENAR, q = "Tim proyek lengkap" bernilai SALAH, dan r = "Proyek dapat dimulai" bernilai BENAR. Tentukan nilai kebenaran dari pernyataan majemuk $(p \land q) \rightarrow r$!

- A. BENAR, karena p bernilai benar maka anteseden otomatis dianggap benar
- B. SALAH, karena q bernilai salah sehingga seluruh pernyataan majemuk otomatis salah
- C. BENAR, karena $p \land q$ bernilai salah sehingga implikasi otomatis benar
- D. SALAH, karena $p \land q$ bernilai salah dan implikasi dengan anteseden salah dianggap salah
- E. SALAH, karena r bernilai benar tetapi dianggap tidak sesuai dengan $p \land q$

**Pembahasan:**

**Diketahui:** p = "Anggaran proyek disetujui" bernilai BENAR, q = "Tim proyek lengkap" bernilai SALAH, r = "Proyek dapat dimulai" bernilai BENAR.

**Ditanya:** Nilai kebenaran dari pernyataan majemuk $(p \land q) \rightarrow r$.

**Jawab:** Evaluasi dulu bagian dalam kurung: $p \land q$ dengan p = B dan q = S menghasilkan $p \land q$ = S (konjungsi hanya benar jika kedua-duanya benar; di sini salah satu salah). Selanjutnya evaluasi $(p \land q) \rightarrow r$: anteseden bernilai S dan konsekuen r = B. Berdasarkan tabel kebenaran implikasi, jika anteseden SALAH, maka implikasi otomatis BENAR terlepas dari nilai konsekuennya. Jadi $(p \land q) \rightarrow r$ bernilai BENAR. Jadi jawabannya adalah C.', 5),

('b0000000-0000-4000-8000-060400000000', 'Disjungsi', '**Definisi:** Disjungsi adalah pernyataan majemuk berbentuk "p atau q" (dilambangkan $p \lor q$), yang bernilai BENAR jika salah satu atau kedua pernyataan tunggal benar, dan hanya salah jika keduanya salah.

**Cara Kerja / Langkah Pengerjaan:**
1. Tentukan nilai kebenaran masing-masing pernyataan tunggal p dan q.
2. Terapkan aturan disjungsi: hasilnya salah HANYA jika keduanya salah; selain itu (salah satu atau keduanya benar), hasilnya benar.
3. Jika disjungsi menjadi bagian dari pernyataan berlapis, misalnya $p \rightarrow (q \lor r)$, evaluasi dulu nilai $(q \lor r)$ di dalam kurung, baru terapkan aturan operator terluar terhadap p.

**Rumus & Poin Kunci:**
- Tabel kebenaran:

| p | q | $p \lor q$ |
|---|---|-------|
| B | B | B |
| B | S | B |
| S | B | B |
| S | S | S |

- Contoh: "Ibu kota Indonesia adalah Jakarta atau 2 + 2 = 5" tetap bernilai BENAR karena bagian pertama benar, walau bagian kedua salah.
- Pada level lanjutan, disjungsi sering digabungkan ke dalam pernyataan berlapis, misalnya $p \rightarrow (q \lor r)$, yaitu satu anteseden yang berimplikasi pada disjungsi dua konsekuen sekaligus.

**Kesalahan Umum / Jebakan:**
- Menganggap disjungsi butuh KEDUA pernyataan benar agar bernilai benar (tertukar dengan aturan konjungsi), padahal cukup salah satu saja.
- Langsung menyimpulkan disjungsi salah begitu menemukan satu pernyataan salah, padahal harus dicek dulu apakah pernyataan yang lain benar.

**Kesimpulan:** Disjungsi ($p \lor q$) hanya bernilai salah jika kedua pernyataan sama-sama salah; pahami tabel kebenarannya agar mudah mengevaluasi pernyataan berlapis yang memuat disjungsi.

**Contoh Soal:** Diketahui p = "Peserta mendaftar melalui portal resmi" bernilai BENAR, q = "Peserta melampirkan ijazah" bernilai SALAH, dan r = "Peserta melampirkan transkrip nilai" bernilai BENAR. Tentukan nilai kebenaran dari pernyataan $p \rightarrow (q \lor r)$!

- A. BENAR, karena $q \lor r$ bernilai benar (sebab r benar) dan p bernilai benar, sehingga implikasi bernilai benar
- B. SALAH, karena q bernilai salah sehingga $q \lor r$ otomatis dianggap salah
- C. SALAH, karena p bernilai benar tetapi q bernilai salah dianggap membuat implikasi salah tanpa memperhitungkan r
- D. BENAR, karena p bernilai benar maka implikasi otomatis benar tanpa perlu mengevaluasi $q \lor r$
- E. Tidak dapat ditentukan karena q dan r memiliki nilai kebenaran berbeda

**Pembahasan:**

**Diketahui:** p = "Peserta mendaftar melalui portal resmi" bernilai BENAR, q = "Peserta melampirkan ijazah" bernilai SALAH, r = "Peserta melampirkan transkrip nilai" bernilai BENAR.

**Ditanya:** Nilai kebenaran dari pernyataan $p \rightarrow (q \lor r)$.

**Jawab:** Evaluasi dulu bagian dalam kurung: $q \lor r$ dengan q = S dan r = B menghasilkan $q \lor r$ = B (disjungsi bernilai benar jika salah satu saja benar). Selanjutnya evaluasi $p \rightarrow (q \lor r)$: anteseden p = B dan konsekuen $(q \lor r)$ = B. Berdasarkan tabel kebenaran implikasi, anteseden benar dan konsekuen benar menghasilkan implikasi BENAR. Jadi $p \rightarrow (q \lor r)$ bernilai BENAR. Jadi jawabannya adalah A.', 6),

('b0000000-0000-4000-8000-060400000000', 'Implikasi', '**Definisi:** Implikasi adalah pernyataan majemuk berbentuk "jika p maka q" (dilambangkan $p \rightarrow q$), dengan p sebagai anteseden/sebab dan q sebagai konsekuen/akibat. Implikasi hanya bernilai SALAH pada satu kondisi: p benar tetapi q salah (janji diingkari); pada kondisi lain, implikasi bernilai benar.

**Cara Kerja / Langkah Pengerjaan:**
1. Identifikasi mana anteseden (p) dan mana konsekuen (q) dari pernyataan "jika ... maka ...".
2. Tentukan nilai kebenaran p dan q.
3. Cek khusus kondisi p BENAR dan q SALAH — hanya kondisi ini yang membuat implikasi bernilai salah; selain itu implikasi bernilai benar.
4. Jika implikasi bersarang, misalnya $(p \rightarrow q) \rightarrow r$, evaluasi dulu $(p \rightarrow q)$ menggunakan aturan implikasi biasa, baru gunakan hasilnya sebagai anteseden implikasi terluar.

**Rumus & Poin Kunci:**
- Tabel kebenaran:

| p | q | $p \rightarrow q$ |
|---|---|-------|
| B | B | B |
| B | S | S |
| S | B | B |
| S | S | B |

- Contoh: "Jika hari hujan, maka jalanan basah" hanya salah jika ternyata hari hujan (p benar) tetapi jalanan tidak basah (q salah).
- Ingat: jika anteseden (p) SALAH, implikasi otomatis BENAR terlepas dari nilai konsekuennya ("vacuously true").

**Kesalahan Umum / Jebakan:**
- Mengira implikasi salah setiap kali p salah, padahal p salah justru membuat implikasi otomatis benar.
- Tertukar arah anteseden-konsekuen (menganggap q sebagai sebab dan p sebagai akibat), sehingga salah menerapkan aturan tabel kebenaran.

**Kesimpulan:** Implikasi ($p \rightarrow q$) hanya salah ketika anteseden benar tapi konsekuen salah; ingat pengecualian ini terutama saat mengevaluasi implikasi bersarang.

**Contoh Soal:** Diketahui p = "Peserta lulus seleksi administrasi" bernilai BENAR, q = "Peserta lulus SKD" bernilai SALAH, dan r = "Peserta berhak mengikuti SKB" bernilai SALAH. Tentukan nilai kebenaran dari pernyataan $(p \rightarrow q) \rightarrow r$!

- A. SALAH, karena $p \rightarrow q$ bernilai salah dan r juga bernilai salah, sehingga pernyataan dianggap tetap salah
- B. BENAR, karena $p \rightarrow q$ bernilai salah sehingga implikasi $(p \rightarrow q) \rightarrow r$ otomatis benar terlepas dari nilai r
- C. SALAH, karena r bernilai salah maka seluruh implikasi otomatis salah
- D. BENAR, karena p bernilai benar maka langsung disimpulkan seluruh pernyataan benar
- E. SALAH, karena $p \rightarrow q$ seharusnya dihitung benar (p benar, q salah), sehingga benar $\rightarrow$ salah menghasilkan salah

**Pembahasan:**

**Diketahui:** p = "Peserta lulus seleksi administrasi" bernilai BENAR, q = "Peserta lulus SKD" bernilai SALAH, r = "Peserta berhak mengikuti SKB" bernilai SALAH.

**Ditanya:** Nilai kebenaran dari pernyataan $(p \rightarrow q) \rightarrow r$.

**Jawab:** Evaluasi dulu bagian dalam kurung: $p \rightarrow q$ dengan p = B dan q = S menghasilkan $p \rightarrow q$ = S (satu-satunya kondisi implikasi bernilai salah adalah anteseden benar, konsekuen salah). Selanjutnya evaluasi $(p \rightarrow q) \rightarrow r$: anteseden bernilai S (hasil langkah sebelumnya) dan konsekuen r = S. Karena anteseden SALAH, implikasi otomatis BENAR terlepas dari nilai konsekuennya. Jadi $(p \rightarrow q) \rightarrow r$ bernilai BENAR. Jadi jawabannya adalah B.', 7),

('b0000000-0000-4000-8000-060400000000', 'Biimplikasi', '**Definisi:** Biimplikasi adalah pernyataan majemuk berbentuk "p jika dan hanya jika q" (dilambangkan $p \leftrightarrow q$), yang bernilai BENAR jika p dan q memiliki nilai kebenaran yang SAMA (sama-sama benar atau sama-sama salah), dan salah jika berbeda.

**Cara Kerja / Langkah Pengerjaan:**
1. Tentukan nilai kebenaran masing-masing ruas (p dan q).
2. Bandingkan kedua nilai: jika SAMA (sama-sama benar atau sama-sama salah), biimplikasi bernilai benar; jika BERBEDA, bernilai salah.
3. Jika salah satu ruas berupa pernyataan majemuk lain, misalnya $(p \land q) \leftrightarrow r$, evaluasi dulu nilai $(p \land q)$ di dalam kurung, baru bandingkan hasilnya dengan r menggunakan aturan biimplikasi.

**Rumus & Poin Kunci:**
- Tabel kebenaran:

| p | q | $p \leftrightarrow q$ |
|---|---|-------|
| B | B | B |
| B | S | S |
| S | B | S |
| S | S | B |

- Contoh: "Segitiga adalah sama sisi jika dan hanya jika ketiga sisinya sama panjang" bernilai benar karena kedua pernyataan selalu senilai.

**Kesalahan Umum / Jebakan:**
- Mengira biimplikasi butuh kedua ruas sama-sama BENAR (lupa bahwa sama-sama SALAH juga membuatnya benar).
- Salah urutan evaluasi pada pernyataan berlapis: langsung membandingkan p dengan r tanpa lebih dulu menyelesaikan $(p \land q)$ di dalam kurung.

**Kesimpulan:** Biimplikasi ($p \leftrightarrow q$) benar hanya jika kedua ruas memiliki nilai kebenaran yang sama; gunakan aturan ini juga saat salah satu ruasnya berupa pernyataan majemuk lain.

**Contoh Soal:** Diketahui p = "Nilai SKD memenuhi ambang batas" bernilai BENAR, q = "Nilai SKB memenuhi ambang batas" bernilai BENAR, dan r = "Peserta dinyatakan lulus seleksi" bernilai BENAR. Tentukan nilai kebenaran dari pernyataan $(p \land q) \leftrightarrow r$!

- A. BENAR, karena $p \land q$ bernilai benar dan r juga bernilai benar, sehingga kedua ruas biimplikasi bernilai sama
- B. SALAH, karena $p \land q$ dan r dievaluasi terpisah lalu dianggap tidak boleh sama-sama benar
- C. SALAH, karena biimplikasi dianggap butuh salah satu ruas bernilai salah agar bernilai benar
- D. BENAR, karena r bernilai benar maka biimplikasi otomatis benar tanpa perlu mengevaluasi $p \land q$
- E. Tidak dapat ditentukan karena p, q, dan r ketiganya bernilai benar dianggap membuat biimplikasi ambigu

**Pembahasan:**

**Diketahui:** p = "Nilai SKD memenuhi ambang batas" bernilai BENAR, q = "Nilai SKB memenuhi ambang batas" bernilai BENAR, r = "Peserta dinyatakan lulus seleksi" bernilai BENAR.

**Ditanya:** Nilai kebenaran dari pernyataan $(p \land q) \leftrightarrow r$.

**Jawab:** Evaluasi dulu bagian dalam kurung: $p \land q$ dengan p = B dan q = B menghasilkan $p \land q$ = B (konjungsi benar karena kedua-duanya benar). Selanjutnya evaluasi $(p \land q) \leftrightarrow r$: ruas kiri bernilai B (hasil langkah sebelumnya) dan ruas kanan r = B. Karena kedua ruas bernilai SAMA (sama-sama benar), maka biimplikasi bernilai BENAR. Jadi jawabannya adalah A.', 8),

('b0000000-0000-4000-8000-060400000000', 'Konvers, Invers, dan Kontraposisi', '**Definisi:** Dari sebuah implikasi asli $p \rightarrow q$, dapat dibentuk tiga pernyataan turunan: **Konvers** ($q \rightarrow p$, menukar posisi p dan q), **Invers** ($\neg p \rightarrow \neg q$, menegasikan p dan q), dan **Kontraposisi** ($\neg q \rightarrow \neg p$, menukar sekaligus menegasikan).

**Cara Kerja / Langkah Pengerjaan:**
1. Identifikasi anteseden (p) dan konsekuen (q) dari implikasi asli $p \rightarrow q$.
2. Untuk konvers: tukar posisi p dan q menjadi $q \rightarrow p$.
3. Untuk invers: negasikan p dan q tanpa menukar posisi, menjadi $\neg p \rightarrow \neg q$.
4. Untuk kontraposisi: tukar posisi SEKALIGUS negasikan keduanya, menjadi $\neg q \rightarrow \neg p$.
5. Jika anteseden/konsekuennya berupa konjungsi/disjungsi (implikasi majemuk, misalnya $(p \land q) \rightarrow r$), gunakan hukum De Morgan saat menegasikan bagian majemuk tersebut, misalnya $\neg(p \land q) = \neg p \lor \neg q$.
6. Jika diminta kontraposisi berantai (dikontraposisikan lebih dari sekali), ingat bahwa kontraposisi dari kontraposisi selalu kembali ke pernyataan semula.

**Rumus & Poin Kunci:**
- Yang PALING PENTING: kontraposisi ($\neg q \rightarrow \neg p$) SELALU ekuivalen secara logis dengan implikasi aslinya ($p \rightarrow q$); konvers dan invers TIDAK ekuivalen dengan implikasi aslinya (meski konvers dan invers ekuivalen satu sama lain).
- Contoh: implikasi asli "Jika hujan (p), maka jalan basah (q)". Konvers "Jika jalan basah, maka hujan" belum tentu benar (jalan bisa basah karena disiram). Invers "Jika tidak hujan, maka jalan tidak basah" juga belum tentu benar. Kontraposisi "Jika jalan tidak basah, maka tidak hujan" PASTI sama nilai kebenarannya dengan pernyataan asli.
- Untuk implikasi majemuk seperti $(p \land q) \rightarrow r$, kontraposisi pertamanya adalah $\neg r \rightarrow \neg(p \land q)$, yang menurut hukum De Morgan setara dengan $\neg r \rightarrow (\neg p \lor \neg q)$.

**Kesalahan Umum / Jebakan:**
- Mengira konvers atau invers pasti ekuivalen dengan implikasi asli, padahal hanya kontraposisi yang dijamin ekuivalen.
- Lupa menerapkan hukum De Morgan saat menegasikan anteseden/konsekuen majemuk, sehingga hasil kontraposisi dari implikasi majemuk salah bentuk.

**Kesimpulan:** Hanya kontraposisi yang selalu ekuivalen dengan implikasi asli; konvers dan invers tidak, meski keduanya ekuivalen satu sama lain.

**Contoh Soal:** Diketahui pernyataan bersyarat majemuk: "Jika seorang CPNS lulus latsar (p) dan menandatangani pakta integritas (q), maka CPNS tersebut diangkat menjadi PNS (r)", ditulis $(p \land q) \rightarrow r$, dan pernyataan ini bernilai benar. Bentuk kontraposisi pertama yang tepat dari pernyataan tersebut adalah...

- A. $\neg r \rightarrow (\neg p \lor \neg q)$
- B. $r \rightarrow (p \land q)$
- C. $\neg r \rightarrow (\neg p \land \neg q)$
- D. $(\neg p \lor \neg q) \rightarrow \neg r$
- E. $(\neg p \land \neg q) \rightarrow \neg r$

**Pembahasan:**

**Diketahui:** Pernyataan $(p \land q) \rightarrow r$ bernilai benar, dengan p = "CPNS lulus latsar", q = "CPNS menandatangani pakta integritas", r = "CPNS diangkat menjadi PNS".

**Ditanya:** Bentuk kontraposisi pertama dari pernyataan tersebut, sekaligus pembuktian bahwa mengontraposisikan hasilnya sekali lagi mengembalikan pernyataan ke bentuk semula.

**Jawab:** Kontraposisi dibentuk dengan menukar sekaligus menegasikan kedua ruas. Dari $(p \land q) \rightarrow r$, kontraposisi pertamanya adalah $\neg r \rightarrow \neg(p \land q)$. Dengan hukum De Morgan, $\neg(p \land q) = \neg p \lor \neg q$, sehingga kontraposisinya menjadi $\neg r \rightarrow (\neg p \lor \neg q)$, dibaca: "Jika CPNS tidak diangkat menjadi PNS, maka CPNS tersebut tidak lulus latsar atau tidak menandatangani pakta integritas." Sekarang kontraposisikan pernyataan baru ini sekali lagi: anteseden barunya adalah $\neg r$ dan konsekuennya $(\neg p \lor \neg q)$, sehingga kontraposisinya adalah $\neg(\neg p \lor \neg q) \rightarrow \neg(\neg r)$. Dengan hukum De Morgan, $\neg(\neg p \lor \neg q) = p \land q$, dan penegasian ganda $\neg(\neg r) = r$. Hasil akhirnya adalah $(p \land q) \rightarrow r$, persis sama dengan pernyataan asal. Ini membuktikan bahwa kontraposisi dari kontraposisi (rantai ekuivalensi ganda) selalu kembali ke pernyataan semula, sehingga rantai kontraposisi dengan jumlah langkah genap tetap ekuivalen dengan pernyataan awal. Jadi jawabannya adalah A.', 9),

('b0000000-0000-4000-8000-060400000000', 'Negasi Kalimat Majemuk', '**Definisi:** Negasi (ingkaran) kalimat majemuk adalah pernyataan yang nilai kebenarannya selalu berlawanan dengan pernyataan majemuk aslinya, dengan aturan pembentukan yang berbeda untuk tiap jenis pernyataan majemuk.

**Cara Kerja / Langkah Pengerjaan:**
1. Kenali dulu jenis pernyataan majemuk aslinya: konjungsi ("dan"), disjungsi ("atau"), implikasi ("jika...maka..."), atau biimplikasi ("jika dan hanya jika").
2. Terapkan kaidah ingkaran yang sesuai dengan jenis pernyataan tersebut (lihat Rumus & Poin Kunci).
3. Untuk implikasi, ingat bahwa ingkarannya BUKAN implikasi baru, melainkan konjungsi "p dan ~q".
4. Terjemahkan hasil ingkaran simbolik kembali ke kalimat bahasa Indonesia yang natural, lalu cocokkan dengan pilihan jawaban.

**Rumus & Poin Kunci:**
- Ingkaran KONJUNGSI: $\neg(p \land q) = \neg p \lor \neg q$ (ingkaran "p dan q" adalah "~p atau ~q").
- Ingkaran DISJUNGSI: $\neg(p \lor q) = \neg p \land \neg q$ (ingkaran "p atau q" adalah "~p dan ~q").
- Ingkaran IMPLIKASI: $\neg(p \rightarrow q) = p \land \neg q$ (ingkaran "jika p maka q" adalah "p dan ~q", BUKAN "jika p maka ~q").
- Ingkaran BIIMPLIKASI: $\neg(p \leftrightarrow q) = (p \land \neg q) \lor (\neg p \land q)$, yaitu p dan q memiliki nilai kebenaran yang BERBEDA.
- Contoh: ingkaran dari "Semua siswa hadir dan tepat waktu" adalah "Ada siswa yang tidak hadir atau tidak tepat waktu". Ingkaran dari "Jika saya lulus, maka saya akan wisuda" adalah "Saya lulus, tetapi saya tidak wisuda".

**Kesalahan Umum / Jebakan:**
- Mengira ingkaran implikasi adalah implikasi lain dengan konsekuen dinegasikan ("jika p maka ~q"), padahal ingkaran implikasi berbentuk konjungsi "p dan ~q".
- Tertukar antara ingkaran konjungsi dan disjungsi (lupa bahwa "dan" menjadi "atau" dan sebaliknya saat dinegasikan, sesuai hukum De Morgan).

**Kesimpulan:** Setiap jenis pernyataan majemuk (konjungsi, disjungsi, implikasi, biimplikasi) punya aturan ingkaran sendiri; hafalkan keempatnya karena sering tertukar, terutama ingkaran implikasi.

**Contoh Soal:** Tentukan ingkaran (negasi) yang tepat dari pernyataan: "Seorang pelamar dinyatakan lolos (p) jika dan hanya jika nilai kumulatifnya memenuhi passing grade (q)."

- A. Pelamar dinyatakan lolos tetapi nilai kumulatifnya tidak memenuhi passing grade, atau pelamar tidak dinyatakan lolos tetapi nilai kumulatifnya memenuhi passing grade
- B. Pelamar tidak dinyatakan lolos jika dan hanya jika nilai kumulatifnya tidak memenuhi passing grade
- C. Pelamar dinyatakan lolos dan nilai kumulatifnya tidak memenuhi passing grade
- D. Jika pelamar dinyatakan lolos, maka nilai kumulatifnya tidak memenuhi passing grade
- E. Pelamar dinyatakan lolos dan nilai kumulatifnya memenuhi passing grade, atau pelamar tidak dinyatakan lolos dan nilai kumulatifnya tidak memenuhi passing grade

**Pembahasan:**

**Diketahui:** Pernyataan asal "Seorang pelamar dinyatakan lolos (p) jika dan hanya jika nilai kumulatifnya memenuhi passing grade (q)", berbentuk biimplikasi $p \leftrightarrow q$.

**Ditanya:** Ingkaran (negasi) yang tepat dari pernyataan tersebut.

**Jawab:** Pernyataan asal berbentuk biimplikasi $p \leftrightarrow q$. Berdasarkan kaidah $\neg(p \leftrightarrow q) = (p \land \neg q) \lor (\neg p \land q)$, ingkarannya adalah: "Pelamar dinyatakan lolos tetapi nilai kumulatifnya tidak memenuhi passing grade, atau pelamar tidak dinyatakan lolos tetapi nilai kumulatifnya memenuhi passing grade." Secara ringkas, ingkaran ini benar tepat ketika status kelulusan dan pemenuhan passing grade TIDAK SEJALAN, yaitu ketika p dan q memiliki nilai kebenaran yang berbeda. Jadi jawabannya adalah A.', 10),

('b0000000-0000-4000-8000-060400000000', 'Silogisme', '**Definisi:** Silogisme adalah penarikan kesimpulan dari dua premis implikasi (atau lebih) yang saling berkaitan lewat suku tengah (istilah penghubung) yang sama. Bentuk umum: Premis 1 $p \rightarrow q$, Premis 2 $q \rightarrow r$, kesimpulan sah $p \rightarrow r$.

**Cara Kerja / Langkah Pengerjaan:**
1. Tulis ulang setiap premis dalam bentuk simbolik $A \rightarrow B$ dan tandai suku tengah (istilah yang muncul di dua premis berurutan).
2. Sambungkan dua premis yang berbagi suku tengah yang sama: dari $p \rightarrow q$ dan $q \rightarrow r$ diperoleh $p \rightarrow r$.
3. Jika ada premis ketiga (atau lebih) yang menyambung, ulangi langkah penyambungan secara berantai sampai seluruh suku tengah "dilompati", tersisa hanya anteseden pertama dan konsekuen terakhir.
4. Cocokkan hasil akhir dengan pilihan jawaban; pastikan tidak menyisakan suku tengah dalam kesimpulan.

**Rumus & Poin Kunci:**
- Suku tengah "q" pada premis 1 dan 2 saling menghubungkan p dengan r, sehingga kesimpulan sah adalah implikasi langsung dari p ke r, tanpa perlu menyebut q lagi.
- Contoh: "Jika Andi rajin belajar (p), maka Andi naik kelas (q). Jika Andi naik kelas (q), maka Andi dibelikan sepeda (r)." Kesimpulan sah: "Jika Andi rajin belajar, maka Andi dibelikan sepeda" ($p \rightarrow r$).
- Level lanjutan sering menguji RANTAI silogisme dengan tiga premis atau lebih yang saling bersambung lewat suku tengah berbeda-beda, misalnya $p \rightarrow q$, $q \rightarrow r$, $r \rightarrow s$, dengan kesimpulan sah $p \rightarrow s$.

**Kesalahan Umum / Jebakan:**
- Menyambungkan dua premis yang TIDAK berbagi suku tengah yang sama, sehingga kesimpulan yang ditarik tidak sah.
- Menyisakan suku tengah dalam kesimpulan akhir (misalnya menjawab $p \rightarrow q$ padahal seharusnya sudah disambungkan sampai $p \rightarrow r$).

**Kesimpulan:** Silogisme menyambungkan dua (atau lebih) implikasi lewat suku tengah yang sama menjadi satu kesimpulan langsung dari premis pertama ke premis terakhir.

**Contoh Soal:** Premis 1: Jika seorang CPNS lulus SKD (p), maka CPNS tersebut mengikuti SKB (q). Premis 2: Jika CPNS mengikuti SKB (q), maka CPNS tersebut masuk perankingan akhir (r). Premis 3: Jika CPNS masuk perankingan akhir (r), maka CPNS tersebut berpeluang diangkat menjadi PNS (s). Kesimpulan sah yang dapat ditarik dari ketiga premis tersebut adalah...

- A. Jika seorang CPNS lulus SKD, maka CPNS tersebut berpeluang diangkat menjadi PNS
- B. Jika seorang CPNS berpeluang diangkat menjadi PNS, maka CPNS tersebut lulus SKD
- C. Jika seorang CPNS mengikuti SKB, maka CPNS tersebut berpeluang diangkat menjadi PNS
- D. Jika seorang CPNS lulus SKD, maka CPNS tersebut masuk perankingan akhir
- E. Tidak ada kesimpulan sah yang dapat ditarik karena rantai premis terlalu panjang

**Pembahasan:**

**Diketahui:** Premis 1: $p \rightarrow q$ (lulus SKD maka mengikuti SKB). Premis 2: $q \rightarrow r$ (mengikuti SKB maka masuk perankingan akhir). Premis 3: $r \rightarrow s$ (masuk perankingan akhir maka berpeluang diangkat menjadi PNS).

**Ditanya:** Kesimpulan sah yang dapat ditarik dari ketiga premis tersebut.

**Jawab:** Ketiga premis membentuk rantai implikasi $p \rightarrow q$, $q \rightarrow r$, $r \rightarrow s$. Sambungkan dua langkah pertama lebih dulu: dari $p \rightarrow q$ dan $q \rightarrow r$ (suku tengah q) diperoleh $p \rightarrow r$. Kemudian sambungkan hasil ini dengan premis ketiga: dari $p \rightarrow r$ dan $r \rightarrow s$ (suku tengah r) diperoleh $p \rightarrow s$. Jadi kesimpulan sah yang dapat ditarik adalah "Jika seorang CPNS lulus SKD, maka CPNS tersebut berpeluang diangkat menjadi PNS" ($p \rightarrow s$), dengan suku tengah q dan r "dilompati" karena rantai implikasi bersifat transitif. Jadi jawabannya adalah A.', 11),

('b0000000-0000-4000-8000-060400000000', 'Modus Ponens', '**Definisi:** Modus Ponens adalah aturan penarikan kesimpulan dengan pola: Premis 1 $p \rightarrow q$ (benar), Premis 2 p (benar, anteseden terpenuhi), kesimpulan sah: q.

**Cara Kerja / Langkah Pengerjaan:**
1. Pastikan premis pertama berbentuk implikasi $p \rightarrow q$ dan bernilai benar.
2. Cek premis kedua: apakah anteseden (p) dinyatakan benar/terjadi.
3. Jika kedua syarat terpenuhi, tarik kesimpulan berupa konsekuen (q) saja, tanpa menambahkan pernyataan lain.

**Rumus & Poin Kunci:**
- Pola dasar: $p \rightarrow q$ (benar) dan p (benar) menghasilkan kesimpulan sah q.
- Contoh: "Jika hari ini hujan (p), maka saya membawa payung (q). Hari ini hujan (p benar)." Kesimpulan sah: "Saya membawa payung" (q).
- Modus Ponens adalah pola penalaran maju (dari sebab ke akibat), berbeda arah dengan Modus Tollens yang menalar dari akibat ke sebab.

**Kesalahan Umum / Jebakan:**
- Menyimpulkan p dari q (menegaskan konsekuen), padahal Modus Ponens hanya sah untuk mengambil kesimpulan q dari p, bukan sebaliknya.
- Menerapkan Modus Ponens padahal premis kedua hanya menyebut sesuatu yang MIRIP dengan p, bukan p itu sendiri secara persis, sehingga kesimpulan tidak sah.

**Kesimpulan:** Jika $p \rightarrow q$ benar dan p benar, maka q pasti benar — itulah inti Modus Ponens.', 12),

('b0000000-0000-4000-8000-060400000000', 'Modus Tollens', '**Definisi:** Modus Tollens adalah aturan penarikan kesimpulan dengan pola: Premis 1 $p \rightarrow q$ (benar), Premis 2 $\neg q$ (akibat terbukti tidak terjadi), kesimpulan sah: $\neg p$.

**Cara Kerja / Langkah Pengerjaan:**
1. Pastikan premis pertama berbentuk implikasi $p \rightarrow q$ dan bernilai benar.
2. Cek premis kedua: apakah konsekuen (q) dinyatakan tidak terjadi/salah ($\neg q$).
3. Jika kedua syarat terpenuhi, tarik kesimpulan berupa negasi anteseden ($\neg p$) saja, tanpa menambahkan pernyataan lain.

**Rumus & Poin Kunci:**
- Pola dasar: $p \rightarrow q$ (benar) dan $\neg q$ (benar) menghasilkan kesimpulan sah $\neg p$.
- Contoh: "Jika hari ini hujan (p), maka jalan basah (q). Ternyata jalan tidak basah (~q)." Kesimpulan sah: "Hari ini tidak hujan" ($\neg p$).
- Modus Tollens kebalikan arah penalarannya dari Modus Ponens: menalar dari TIDAK ADANYA akibat ke TIDAK ADANYA sebab, dan tetap valid karena berpijak pada kontraposisi ($\neg q \rightarrow \neg p$ yang ekuivalen dengan $p \rightarrow q$).

**Kesalahan Umum / Jebakan:**
- Menyimpulkan $\neg q$ dari $\neg p$ (menegasikan anteseden), padahal Modus Tollens hanya sah untuk mengambil kesimpulan $\neg p$ dari $\neg q$, bukan sebaliknya.
- Tertukar dengan Modus Ponens: lupa bahwa Modus Tollens dimulai dari negasi KONSEKUEN, bukan dari kepastian anteseden.

**Kesimpulan:** Jika $p \rightarrow q$ benar dan q terbukti tidak terjadi, maka p pasti juga tidak terjadi — itulah inti Modus Tollens, yang valid karena berpijak pada kontraposisi.', 13);

update chapters set mindmap = '# Kemampuan Penalaran

## Penalaran Analitis (struktur soal)
### Flat Type
- Premis setara/sejajar, tanpa jenjang
- Hubungan: sama/berbeda/keterkaitan langsung
- Contoh pola: "A dan B suka warna sama"

### Strata Type
- Premis berjenjang/bertingkat (strata)
- Hubungan: urutan, ranking, posisi (lebih tinggi/rendah)
- Strategi: susun urutan penuh dari semua petunjuk

### Dimensional Type
- Premis multi-dimensi/atribut (nama x profesi x kota, dst.)
- Strategi: tabel silang / matriks pencocokan
- Paling kompleks dari ketiganya

## Logika Proposisional
### Konjungsi ($p \land q$, "dan")
- Benar hanya jika KEDUA benar

### Disjungsi ($p \lor q$, "atau")
- Benar jika SALAH SATU atau kedua benar

### Implikasi ($p \rightarrow q$, "jika...maka...")
- Salah hanya jika p benar, q salah

### Biimplikasi ($p \leftrightarrow q$, "jika dan hanya jika")
- Benar jika nilai kebenaran p dan q SAMA

### Konvers / Invers / Kontraposisi
- Konvers: $q \rightarrow p$
- Invers: $\neg p \rightarrow \neg q$
- Kontraposisi: $\neg q \rightarrow \neg p$ (SELALU ekuivalen dengan $p \rightarrow q$)

### Negasi Kalimat Majemuk
- $\neg(p \land q) = \neg p \lor \neg q$
- $\neg(p \lor q) = \neg p \land \neg q$
- $\neg(p \rightarrow q) = p \land \neg q$

## Penarikan Kesimpulan
### Silogisme
- $p \rightarrow q$, $q \rightarrow r$ ⊢ $p \rightarrow r$

### Modus Ponens
- $p \rightarrow q$, $p$ ⊢ $q$

### Modus Tollens
- $p \rightarrow q$, $\neg q$ ⊢ $\neg p$' where id = 'b0000000-0000-4000-8000-060400000000';

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060400000000', 'Tiga siswa, yaitu Indra, Joko, dan Kirana, dibandingkan hobi olahraganya. Indra dan Joko menyukai olahraga yang sama. Joko tidak menyukai bulu tangkis. Kirana menyukai renang, sama seperti Indra. Berdasarkan premis-premis tersebut, olahraga yang disukai Joko adalah...', 'Sepak bola', 'Renang', 'Bulu tangkis', 'Basket', 'Tidak dapat ditentukan', 'B', 'Soal ini termasuk Flat Type karena hubungan antarobjek bersifat setara/sejajar ("sama dengan"), tanpa jenjang. Karena Kirana sama dengan Indra (menyukai renang) dan Indra sama dengan Joko, maka Joko juga menyukai renang.', 'easy', 1),

('b0000000-0000-4000-8000-060400000000', 'Empat orang, yaitu Bagas, Citra, Dimas, dan Erna, dibandingkan usianya. Bagas lebih tua dari Citra. Citra lebih tua dari Dimas. Erna lebih tua dari Bagas. Berdasarkan premis-premis tersebut, urutan usia dari yang paling tua ke paling muda yang tepat adalah...', 'Erna, Bagas, Citra, Dimas', 'Bagas, Erna, Citra, Dimas', 'Erna, Citra, Bagas, Dimas', 'Dimas, Citra, Bagas, Erna', 'Bagas, Citra, Erna, Dimas', 'A', 'Soal ini termasuk Strata Type: premis berjenjang disusun menjadi satu urutan penuh. Dari "Erna lebih tua dari Bagas", "Bagas lebih tua dari Citra", dan "Citra lebih tua dari Dimas" diperoleh urutan tua ke muda: Erna - Bagas - Citra - Dimas.', 'easy', 2),

('b0000000-0000-4000-8000-060400000000', 'Lima kandidat, yaitu Prima, Qori, Rendra, Sari, dan Tono, mengikuti tes dan dibandingkan skor akhirnya (tidak ada yang sama). Skor Prima lebih tinggi daripada skor Qori. Skor Rendra lebih rendah daripada skor Sari, tetapi lebih tinggi daripada skor Tono. Skor Sari lebih rendah daripada skor Prima. Skor Qori lebih tinggi daripada skor Tono, tetapi lebih rendah daripada skor Rendra. Berdasarkan premis-premis tersebut, urutan skor dari yang tertinggi ke terendah yang tepat adalah...', 'Prima, Sari, Rendra, Qori, Tono', 'Prima, Rendra, Sari, Qori, Tono', 'Sari, Prima, Rendra, Qori, Tono', 'Prima, Sari, Qori, Rendra, Tono', 'Prima, Sari, Rendra, Tono, Qori', 'A', 'Soal ini termasuk Strata Type dengan premis berjenjang yang perlu disusun menjadi satu urutan penuh. Dari "Rendra lebih rendah dari Sari, tetapi lebih tinggi dari Tono" diperoleh Sari > Rendra > Tono. Dari "Qori lebih tinggi dari Tono, tetapi lebih rendah dari Rendra" diperoleh Rendra > Qori > Tono, sehingga digabung menjadi Sari > Rendra > Qori > Tono. Dari "Sari lebih rendah dari Prima" diperoleh Prima > Sari. Menggabungkan seluruh urutan menghasilkan Prima > Sari > Rendra > Qori > Tono (premis "Prima lebih tinggi dari Qori" otomatis konsisten dengan urutan ini).', 'hard', 3),

('b0000000-0000-4000-8000-060400000000', 'Enam pelari, yaitu Umar, Vina, Wati, Xena, Yoga, dan Zaki, mengikuti lomba lari kantor dan finis tanpa ada yang bersamaan. Yoga finis paling awal. Zaki finis tepat setelah Yoga. Umar finis sebelum Vina, tetapi setelah Zaki. Wati finis setelah Vina. Xena finis paling akhir. Berdasarkan premis-premis tersebut, urutan finis dari yang paling awal hingga paling akhir yang tepat adalah...', 'Yoga, Zaki, Umar, Vina, Wati, Xena', 'Yoga, Zaki, Vina, Umar, Wati, Xena', 'Zaki, Yoga, Umar, Vina, Wati, Xena', 'Yoga, Zaki, Umar, Wati, Vina, Xena', 'Yoga, Umar, Zaki, Vina, Wati, Xena', 'A', 'Soal ini termasuk Strata Type: perlu menyusun urutan penuh dari petunjuk berjenjang. Yoga finis paling awal (posisi 1) dan Zaki tepat setelahnya (posisi 2). Umar finis setelah Zaki tetapi sebelum Vina, sehingga Zaki-Umar-Vina berurutan (posisi 2-3-4). Wati finis setelah Vina (posisi 5), dan Xena finis paling akhir (posisi 6). Urutan lengkap: Yoga, Zaki, Umar, Vina, Wati, Xena.', 'hard', 4),

('b0000000-0000-4000-8000-060400000000', 'Tiga orang, yaitu Farhan, Gita, dan Hendra, masing-masing berprofesi sebagai arsitek, dokter, atau guru, dan masing-masing tinggal di kota berbeda: Solo, Malang, atau Manado. Farhan bukan dokter. Orang yang tinggal di Malang berprofesi sebagai guru. Hendra tinggal di Manado. Gita bukan tinggal di Solo. Berdasarkan premis-premis tersebut, profesi dan kota tempat tinggal Farhan yang tepat adalah...', 'Guru, tinggal di Malang', 'Dokter, tinggal di Manado', 'Guru, tinggal di Solo', 'Arsitek, tinggal di Solo', 'Dokter, tinggal di Solo', 'D', 'Soal ini termasuk Dimensional Type sehingga perlu tabel silang nama x profesi x kota. Karena Hendra tinggal di Manado dan Gita bukan di Solo, maka Gita tinggal di Malang (otomatis berprofesi guru) sehingga Farhan tinggal di Solo. Karena Farhan bukan dokter dan guru sudah menjadi Gita, maka Farhan adalah arsitek, dan Hendra adalah dokter.', 'hard', 5),

('b0000000-0000-4000-8000-060400000000', 'Diketahui pernyataan "Jika suatu perusahaan memiliki laporan keuangan teraudit (p) dan tidak memiliki tunggakan pajak (q), maka perusahaan tersebut lolos prakualifikasi tender (r)", ditulis $(p \land q) \rightarrow r$, dan pernyataan ini bernilai benar. Pernyataan berikut yang PASTI ekuivalen secara logis dengan pernyataan tersebut adalah...', 'Jika perusahaan lolos prakualifikasi tender, maka perusahaan tersebut memiliki laporan keuangan teraudit dan tidak memiliki tunggakan pajak', 'Jika perusahaan tidak lolos prakualifikasi tender, maka perusahaan tersebut tidak memiliki laporan keuangan teraudit atau memiliki tunggakan pajak', 'Jika perusahaan tidak memiliki laporan keuangan teraudit dan memiliki tunggakan pajak, maka perusahaan tersebut tidak lolos prakualifikasi tender', 'Perusahaan lolos prakualifikasi tender jika dan hanya jika memiliki laporan keuangan teraudit dan tidak memiliki tunggakan pajak', 'Jika perusahaan tidak memiliki laporan keuangan teraudit, maka perusahaan tersebut tidak lolos prakualifikasi tender', 'B', 'Pernyataan asli berbentuk $(p \land q) \rightarrow r$. Kontraposisinya adalah $\neg r \rightarrow \neg(p \land q)$, yang berdasarkan hukum De Morgan setara dengan $\neg r \rightarrow (\neg p \lor \neg q)$, yaitu "Jika perusahaan tidak lolos prakualifikasi tender, maka perusahaan tersebut tidak memiliki laporan keuangan teraudit atau memiliki tunggakan pajak". Kontraposisi ini PASTI ekuivalen dengan pernyataan asli. Opsi A adalah konvers, dan opsi E hanya invers sebagian, keduanya tidak dijamin ekuivalen. Jadi jawabannya adalah B.', 'hard', 6),

('b0000000-0000-4000-8000-060400000000', 'Diketahui pernyataan "Jika suatu dokumen tidak memiliki nomor registrasi (¬p) atau tidak dibubuhi stempel basah (¬q), maka dokumen tersebut ditolak oleh bagian arsip (r)" bernilai benar, ditulis $(\neg p \lor \neg q) \rightarrow r$. Pernyataan berikut yang PASTI ekuivalen secara logis dengan pernyataan tersebut adalah...', 'Jika dokumen memiliki nomor registrasi dan dibubuhi stempel basah, maka dokumen tersebut tidak ditolak oleh bagian arsip', 'Jika dokumen tidak ditolak oleh bagian arsip, maka dokumen tersebut memiliki nomor registrasi dan dibubuhi stempel basah', 'Jika dokumen ditolak oleh bagian arsip, maka dokumen tersebut tidak memiliki nomor registrasi atau tidak dibubuhi stempel basah', 'Dokumen memiliki nomor registrasi atau dibubuhi stempel basah, atau dokumen tersebut ditolak oleh bagian arsip', 'Dokumen tidak memiliki nomor registrasi dan tidak dibubuhi stempel basah, jika dan hanya jika dokumen ditolak oleh bagian arsip', 'B', 'Pernyataan asli berbentuk $(\neg p \lor \neg q) \rightarrow r$, dengan p = "dokumen memiliki nomor registrasi", q = "dokumen dibubuhi stempel basah", r = "dokumen ditolak oleh bagian arsip". Kontraposisi dibentuk dengan menukar sekaligus menegasikan kedua ruas: $\neg r \rightarrow \neg(\neg p \lor \neg q)$. Dengan hukum De Morgan, $\neg(\neg p \lor \neg q) = p \land q$, sehingga kontraposisinya menjadi $\neg r \rightarrow (p \land q)$, yaitu "Jika dokumen tidak ditolak oleh bagian arsip, maka dokumen tersebut memiliki nomor registrasi dan dibubuhi stempel basah", dan kontraposisi ini PASTI ekuivalen dengan pernyataan asli. Opsi C adalah konvers dari pernyataan asli, tidak dijamin ekuivalen. Opsi D keliru karena mengganti konjungsi $(p \land q)$ dengan disjungsi $(p \lor q)$. Jadi jawabannya adalah B.', 'hard', 7),

('b0000000-0000-4000-8000-060400000000', 'Ingkaran (negasi) yang tepat dari pernyataan "Anggaran disetujui dan proyek dapat dimulai bulan ini" adalah...', 'Anggaran tidak disetujui atau proyek tidak dapat dimulai bulan ini', 'Anggaran tidak disetujui dan proyek tidak dapat dimulai bulan ini', 'Jika anggaran disetujui, maka proyek tidak dapat dimulai bulan ini', 'Anggaran disetujui atau proyek dapat dimulai bulan ini', 'Anggaran disetujui dan proyek tidak dapat dimulai bulan ini', 'A', 'Ingkaran konjungsi mengikuti kaidah ¬(p ∧ q) = ¬p ∨ ¬q. Jadi ingkaran dari "p dan q" adalah "~p atau ~q", yaitu "Anggaran tidak disetujui atau proyek tidak dapat dimulai bulan ini".', 'easy', 8),

('b0000000-0000-4000-8000-060400000000', 'Diketahui pernyataan majemuk berikut bernilai benar: "Tidak benar bahwa (seorang pelamar mendapat undangan wawancara (p) dan tidak melengkapi berkas administrasi (¬q))", ditulis $\neg(p \land \neg q)$. Manakah pernyataan berikut yang PASTI ekuivalen secara logis dengan pernyataan tersebut?', 'Jika pelamar mendapat undangan wawancara, maka pelamar tersebut melengkapi berkas administrasi', 'Jika pelamar melengkapi berkas administrasi, maka pelamar tersebut mendapat undangan wawancara', 'Pelamar tidak mendapat undangan wawancara dan tidak melengkapi berkas administrasi', 'Pelamar mendapat undangan wawancara dan melengkapi berkas administrasi', 'Pelamar tidak mendapat undangan wawancara atau tidak melengkapi berkas administrasi', 'A', 'Pernyataan asli adalah $\neg(p \land \neg q)$, dengan p = "pelamar mendapat undangan wawancara", q = "pelamar melengkapi berkas administrasi". Dengan hukum De Morgan, $\neg(p \land \neg q) = \neg p \lor \neg(\neg q) = \neg p \lor q$. Bentuk $\neg p \lor q$ ini secara logis ekuivalen dengan implikasi $p \rightarrow q$, yaitu "Jika pelamar mendapat undangan wawancara, maka pelamar tersebut melengkapi berkas administrasi". Opsi B adalah konvers ($q \rightarrow p$), tidak ekuivalen. Opsi E adalah kekeliruan umum: menegasikan q dianggap tetap $\neg q$, padahal $\neg(\neg q) = q$ (penegasian ganda kembali ke q). Jadi jawabannya adalah A.', 'hard', 9),

('b0000000-0000-4000-8000-060400000000', 'Premis 1: Jika suatu unit kerja menerapkan manajemen risiko yang baik (p), maka unit tersebut jarang mengalami temuan audit (q).
Premis 2: Jika suatu unit kerja jarang mengalami temuan audit (q), maka unit tersebut mendapat predikat WBK (r).
Premis 3: Unit Kerja Alpha tidak mendapat predikat WBK.
Kesimpulan yang PASTI sah dari ketiga premis tersebut adalah...', 'Unit Kerja Alpha menerapkan manajemen risiko yang baik', 'Unit Kerja Alpha tidak menerapkan manajemen risiko yang baik', 'Unit Kerja Alpha jarang mengalami temuan audit', 'Unit Kerja Alpha sering mengalami temuan audit tetapi tetap menerapkan manajemen risiko yang baik', 'Tidak ada kesimpulan yang bisa ditarik', 'B', 'Premis 1 dan Premis 2 membentuk pola silogisme: p → q (manajemen risiko baik → jarang temuan audit) dan q → r (jarang temuan audit → predikat WBK), sehingga diperoleh p → r (manajemen risiko baik → predikat WBK). Premis 3 menyatakan Unit Kerja Alpha tidak mendapat predikat WBK, yaitu ¬r. Berdasarkan Modus Tollens pada p → r dan ¬r, diperoleh ¬p: Unit Kerja Alpha tidak menerapkan manajemen risiko yang baik. Jadi jawabannya adalah B.', 'hard', 10),

('b0000000-0000-4000-8000-060400000000', 'Premis 1: Jika seorang CPNS lulus tes SKD (p), maka CPNS tersebut mengikuti tes SKB (q).
Premis 2: Jika CPNS mengikuti tes SKB (q), maka CPNS tersebut diperingkat dalam seleksi akhir (r).
Premis 3: Jika CPNS diperingkat dalam seleksi akhir (r), maka CPNS tersebut mengikuti pemberkasan (s).
Premis 4: Jika CPNS mengikuti pemberkasan (s), maka CPNS tersebut diangkat menjadi PNS (t).
Manakah kesimpulan yang PASTI valid dari keempat premis tersebut?', 'Jika CPNS lulus tes SKD, maka CPNS tersebut diangkat menjadi PNS', 'Jika CPNS diangkat menjadi PNS, maka CPNS tersebut lulus tes SKD', 'Jika CPNS mengikuti tes SKB, maka CPNS tersebut mengikuti pemberkasan, tetapi belum tentu diangkat menjadi PNS', 'Jika CPNS tidak lulus tes SKD, maka CPNS tersebut tidak diangkat menjadi PNS', 'Tidak ada kesimpulan sah karena rantai premis terlalu panjang untuk disambungkan sekaligus', 'A', 'Keempat premis membentuk rantai implikasi: p → q, q → r, r → s, s → t. Dengan sifat transitif silogisme, sambungkan bertahap: dari p → q dan q → r diperoleh p → r; dari p → r dan r → s diperoleh p → s; dari p → s dan s → t diperoleh p → t. Jadi kesimpulan sah adalah "Jika CPNS lulus tes SKD, maka CPNS tersebut diangkat menjadi PNS". Opsi B adalah konvers (t → p) yang tidak dijamin sah. Opsi D adalah invers (¬p → ¬t) yang juga tidak dijamin sah (yang dijamin sah adalah kontraposisinya, ¬t → ¬p). Opsi E keliru karena rantai silogisme tetap bisa disambungkan berapa pun panjangnya selama suku tengahnya konsisten. Jadi jawabannya adalah A.', 'hard', 11),

('b0000000-0000-4000-8000-060400000000', 'Premis 1: Jika seorang ASN mengikuti seluruh pelatihan wajib, maka ASN tersebut memenuhi syarat mengikuti uji kompetensi.
Premis 2: Bu Rahma mengikuti seluruh pelatihan wajib.
Premis 3: Pak Yusuf memenuhi syarat mengikuti uji kompetensi.
Kesimpulan yang PASTI sah berdasarkan premis-premis tersebut adalah...', 'Bu Rahma memenuhi syarat mengikuti uji kompetensi', 'Pak Yusuf mengikuti seluruh pelatihan wajib', 'Bu Rahma dan Pak Yusuf sama-sama mengikuti pelatihan wajib', 'Pak Yusuf tidak mengikuti seluruh pelatihan wajib', 'Tidak ada kesimpulan yang sah', 'A', 'Premis 1 berbentuk implikasi p → q ("mengikuti pelatihan wajib" → "memenuhi syarat uji kompetensi"). Premis 2 menyatakan Bu Rahma memenuhi p, sehingga secara Modus Ponens sah disimpulkan Bu Rahma memenuhi q (memenuhi syarat uji kompetensi). Adapun Premis 3 tentang Pak Yusuf hanya menyatakan bahwa ia memenuhi q (konsekuen), tanpa memastikan bahwa ia memenuhi p (mengikuti pelatihan wajib); menyimpulkan bahwa Pak Yusuf mengikuti pelatihan wajib dari sini adalah kekeliruan menegaskan konsekuen (affirming the consequent), bukan Modus Ponens yang sah. Jadi jawabannya adalah A.', 'medium', 12),

('b0000000-0000-4000-8000-060400000000', 'Premis 1: Jika seorang ASN lulus uji kompetensi teknis, maka ASN tersebut berhak mengikuti pelatihan kepemimpinan.
Premis 2: Pak Anton lulus uji kompetensi teknis.
Premis 3: Bu Wulan tidak lulus uji kompetensi teknis.
Manakah kesimpulan yang PASTI sah dari ketiga premis tersebut?', 'Pak Anton berhak mengikuti pelatihan kepemimpinan', 'Bu Wulan berhak mengikuti pelatihan kepemimpinan', 'Bu Wulan tidak berhak mengikuti pelatihan kepemimpinan', 'Pak Anton tidak berhak mengikuti pelatihan kepemimpinan', 'Tidak ada kesimpulan yang bisa ditarik sama sekali', 'A', 'Premis 1 berbentuk implikasi p → q ("lulus uji kompetensi teknis" → "berhak mengikuti pelatihan kepemimpinan"). Premis 2 menyatakan Pak Anton memenuhi p, sehingga secara Modus Ponens sah disimpulkan Pak Anton memenuhi q (berhak mengikuti pelatihan kepemimpinan). Adapun Premis 3 tentang Bu Wulan hanya menyatakan ¬p (tidak lulus uji kompetensi teknis); dari sini TIDAK bisa disimpulkan ¬q (tidak berhak), sebab implikasi p → q tidak memberi informasi apa pun tentang konsekuen ketika anteseden salah (menyimpulkan ¬q dari ¬p adalah kekeliruan menyangkal anteseden/denying the antecedent, bukan penalaran sah). Jadi jawabannya adalah A.', 'medium', 13),

('b0000000-0000-4000-8000-060400000000', 'Premis 1: Jika suatu instansi pemerintah menerapkan sistem tanda tangan elektronik dan mengarsipkan dokumen secara digital, maka proses birokrasi di instansi tersebut menjadi lebih cepat.
Premis 2: Proses birokrasi di Instansi X tidak menjadi lebih cepat.
Kesimpulan yang PASTI sah berdasarkan Modus Tollens adalah...', 'Instansi X tidak menerapkan sistem tanda tangan elektronik dan tidak mengarsipkan dokumen secara digital', 'Instansi X tidak menerapkan sistem tanda tangan elektronik atau tidak mengarsipkan dokumen secara digital', 'Instansi X menerapkan sistem tanda tangan elektronik tetapi tidak mengarsipkan dokumen secara digital', 'Instansi X menerapkan kedua sistem tersebut tetapi proses birokrasinya tetap lambat karena faktor lain', 'Tidak ada kesimpulan yang bisa ditarik karena anteseden berupa pernyataan majemuk', 'B', 'Premis 1 berbentuk $(p \land q) \rightarrow r$, dengan p = "menerapkan tanda tangan elektronik", q = "mengarsipkan dokumen secara digital", r = "proses birokrasi lebih cepat". Premis 2 menyatakan ¬r. Berdasarkan Modus Tollens, dari $(p \land q) \rightarrow r$ dan ¬r, diperoleh ¬(p ∧ q). Dengan hukum De Morgan, ¬(p ∧ q) = ¬p ∨ ¬q, yaitu "Instansi X tidak menerapkan sistem tanda tangan elektronik, atau tidak mengarsipkan dokumen secara digital" (bisa juga keduanya sekaligus tidak diterapkan, tetapi tidak harus). Opsi A keliru karena memaksakan KEDUANYA tidak diterapkan (konjungsi), padahal hasil De Morgan berupa disjungsi. Jadi jawabannya adalah B.', 'hard', 14),

('b0000000-0000-4000-8000-060400000000', 'Diketahui premis-premis berikut ini bernilai benar semua:
Premis 1: Jika suatu proyek infrastruktur mendapat pendanaan penuh (p), maka proyek tersebut memasuki tahap konstruksi (q).
Premis 2: Jika proyek memasuki tahap konstruksi (q), maka proyek tersebut memiliki laporan progres bulanan (r).
Premis 3: Proyek "Jembatan Merah" tidak memiliki laporan progres bulanan.
Manakah kesimpulan yang PASTI valid?', 'Proyek Jembatan Merah tidak memasuki tahap konstruksi dan tidak mendapat pendanaan penuh', 'Proyek Jembatan Merah mendapat pendanaan penuh tetapi tidak memasuki tahap konstruksi', 'Proyek Jembatan Merah tidak mendapat pendanaan penuh, tetapi mungkin saja tetap memasuki tahap konstruksi', 'Proyek Jembatan Merah memasuki tahap konstruksi meskipun tidak memiliki laporan progres bulanan', 'Tidak dapat ditarik kesimpulan apa pun mengenai status pendanaan proyek tersebut', 'A', 'Premis 1 dan Premis 2 membentuk rantai p → q dan q → r. Premis 3 menyatakan ¬r (Proyek Jembatan Merah tidak memiliki laporan progres bulanan). Terapkan Modus Tollens pada Premis 2 (q → r) dengan ¬r: diperoleh ¬q (proyek tidak memasuki tahap konstruksi). Selanjutnya terapkan Modus Tollens lagi pada Premis 1 (p → q) dengan ¬q yang baru diperoleh: didapat ¬p (proyek tidak mendapat pendanaan penuh). Karena KEDUA hasil (¬q dan ¬p) sama-sama valid dan pasti benar, kesimpulan yang PASTI valid adalah gabungan keduanya: "Proyek Jembatan Merah tidak memasuki tahap konstruksi dan tidak mendapat pendanaan penuh". Opsi C keliru karena menyangkal bahwa ¬q juga pasti berlaku, padahal Modus Tollens pada Premis 2 sudah memastikannya. Jadi jawabannya adalah A.', 'hard', 15);

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty, order_index) values
('b0000000-0000-4000-8000-060400000000', 'Sebagian sarjana adalah dosen. Semua dosen wajib mengadakan penelitian. Kesimpulan yang tepat berdasarkan kedua premis tersebut adalah...', 'Sebagian peneliti bukan dosen', 'Sebagian sarjana wajib mengadakan penelitian', 'Sebagian dosen tidak mengadakan penelitian', 'Sebagian peneliti adalah dosen', 'Tidak dapat disimpulkan', 'B', 'Premis berbentuk "sebagian S adalah M" (sebagian sarjana adalah dosen) dan "semua M adalah P" (semua dosen wajib meneliti) menghasilkan kesimpulan sah "sebagian S adalah P": sebagian sarjana (yang berprofesi dosen) wajib mengadakan penelitian. Jadi jawabannya adalah B.', 'easy', 16),

('b0000000-0000-4000-8000-060400000000', 'Jika harga LPG 12 kg naik, maka permintaan LPG 3 kg akan naik. Jika permintaan LPG 3 kg naik, maka jumlah LPG 3 kg di pasaran akan langka. Ternyata, jumlah LPG 3 kg di pasaran saat ini tidak langka. Kesimpulan yang PASTI sah adalah...', 'Harga LPG 12 kg naik', 'Harga LPG 3 kg naik', 'Permintaan LPG 3 kg naik', 'Harga LPG 12 kg tidak naik', 'Harga LPG 3 kg tidak naik', 'D', 'Kedua premis membentuk rantai implikasi: "harga LPG 12 kg naik → permintaan LPG 3 kg naik → LPG 3 kg langka". Karena faktanya LPG 3 kg tidak langka (negasi konsekuen akhir), dengan Modus Tollens pada rantai implikasi tersebut disimpulkan bahwa harga LPG 12 kg tidak naik. Jadi jawabannya adalah D.', 'medium', 17),

('b0000000-0000-4000-8000-060400000000', 'Tidak semua warga wajib memiliki Kartu Sehat. Halimah adalah warga desa. Kesimpulan yang tepat mengenai status kepemilikan Kartu Sehat Halimah adalah...', 'Halimah wajib memiliki Kartu Sehat', 'Semua warga desa harus memiliki Kartu Sehat', 'Halimah pasti memiliki Kartu Sehat', 'Halimah pasti tidak memiliki Kartu Sehat', 'Tidak dapat disimpulkan', 'E', 'Premis "tidak semua warga wajib memiliki Kartu Sehat" hanya menyatakan bahwa sebagian warga tidak wajib, tanpa menentukan secara spesifik apakah Halimah termasuk yang wajib atau tidak. Karena itu, status kewajiban Halimah terhadap Kartu Sehat tidak dapat dipastikan dari premis yang ada. Jadi jawabannya adalah E.', 'medium', 18),

('b0000000-0000-4000-8000-060400000000', 'Semua siswa sekolah luar biasa mempunyai potensi logika yang cukup baik. Marcell bukan siswa sekolah luar biasa. Kesimpulan yang tepat mengenai potensi logika Marcell adalah...', 'Marcell tidak mempunyai potensi logika yang cukup baik', 'Marcell mempunyai potensi logika yang cukup baik', 'Ada siswa sekolah luar biasa yang tidak mempunyai potensi logika yang cukup baik', 'Marcell seharusnya menjadi siswa sekolah luar biasa', 'Tidak dapat disimpulkan', 'E', 'Premis berbentuk implikasi "jika siswa sekolah luar biasa (p), maka berpotensi logika baik (q)". Karena Marcell bukan siswa sekolah luar biasa (¬p), menyimpulkan bahwa ia pasti tidak berpotensi logika baik (¬q) adalah kekeliruan menyangkal anteseden (denying the antecedent): ¬p tidak memberi informasi apa pun tentang q, sebab Marcell bisa saja tetap berpotensi logika baik dari jalur lain. Jadi jawabannya adalah E.', 'medium', 19),

('b0000000-0000-4000-8000-060400000000', 'Semua siswa kelas satu sedang mengikuti karya wisata dan memakai kaos coklat. Raka adalah siswa kelas satu. Kesimpulan yang tepat mengenai Raka adalah...', 'Semua teman Raka memakai kaos coklat', 'Raka tidak memakai kaos coklat', 'Semua siswa di sekolah tersebut memakai kaos coklat', 'Ada siswa yang mengikuti karya wisata tetapi tidak memakai kaos coklat', 'Raka sedang mengikuti karya wisata dan memakai kaos coklat', 'E', 'Karena Raka adalah siswa kelas satu, dan semua siswa kelas satu sedang mengikuti karya wisata sekaligus memakai kaos coklat, maka berdasarkan Modus Ponens, Raka pasti sedang mengikuti karya wisata dan memakai kaos coklat. Jadi jawabannya adalah E.', 'easy', 20),

('b0000000-0000-4000-8000-060400000000', 'Setiap jam 08.00 Retna minum obat asma. Setiap akan minum obat, Retna makan terlebih dahulu. Kesimpulan yang tepat mengenai waktu makan Retna adalah...', 'Setiap jam 08.00 Retna makan', 'Sebelum jam 08.00 Retna makan', 'Setelah jam 08.00 Retna makan', 'Setelah jam 08.00 Retna tidak makan', 'Retna tidak pernah makan', 'B', 'Karena minum obat selalu terjadi tepat pukul 08.00, dan makan selalu mendahului (terjadi sebelum) minum obat, maka Retna pasti makan sebelum jam 08.00. Jadi jawabannya adalah B.', 'easy', 21),

('b0000000-0000-4000-8000-060400000000', 'Seorang pemeriksa akan memeriksa 5 kantor, yaitu E, F, G, H, dan I, dengan urutan yang harus memenuhi ketentuan berikut: (1) H dapat diperiksa jika F sudah diperiksa lebih dahulu; (2) G diperiksa sebelum E; (3) I diperiksa pada urutan keempat. Jika E diperiksa pada urutan kedua, urutan pertama pasti diperiksa oleh kantor...', 'F', 'H', 'I', 'E', 'G', 'E', 'I selalu berada di urutan keempat (ketentuan 3). Karena G harus diperiksa sebelum E (ketentuan 2) dan E berada di urutan kedua, maka G harus berada sebelum urutan kedua, yaitu satu-satunya posisi yang tersisa adalah urutan pertama. Sisa posisi ketiga dan kelima untuk F dan H, dengan F harus diperiksa sebelum H (ketentuan 1), sehingga F=3 dan H=5. Susunan lengkap: G, E, F, I, H. Jadi kantor yang diperiksa pertama adalah G. Jawabannya adalah E.', 'hard', 22),

('b0000000-0000-4000-8000-060400000000', 'Sebuah jalur bus disediakan dengan enam halte: Lebak Bulus, Harmoni, Senen, Pulo Gadung, Matraman, dan Halimun, dengan rute satu arah sebagai berikut: Lebak Bulus ke Harmoni; Halimun ke Matraman; Senen ke Pulo Gadung, Senen ke Matraman, dan Senen ke Harmoni; Harmoni ke Lebak Bulus dan Harmoni ke Senen; Pulo Gadung ke Matraman dan Pulo Gadung ke Senen; Matraman ke Halimun, Matraman ke Senen, dan Matraman ke Pulo Gadung. Jika Halte Harmoni ditutup, perjalanan manakah yang menjadi TIDAK mungkin dilakukan?', 'Pulo Gadung – Senen', 'Lebak Bulus – Senen', 'Matraman – Halimun', 'Senen – Matraman', 'Senen – Halimun', 'B', 'Satu-satunya rute yang keluar dari Lebak Bulus adalah menuju Harmoni. Jika Harmoni ditutup, Lebak Bulus tidak memiliki jalur alternatif menuju halte manapun, termasuk Senen, sehingga perjalanan Lebak Bulus–Senen menjadi tidak mungkin. Opsi lain masih mempunyai rute alternatif yang tidak melalui Harmoni (Pulo Gadung–Senen dan Matraman–Halimun adalah rute langsung, dan Senen–Halimun tetap bisa lewat Senen–Matraman–Halimun). Jadi jawabannya adalah B.', 'medium', 23),

('b0000000-0000-4000-8000-060400000000', 'Semua peserta yang mengikuti ujian D4 harus sudah lulus seleksi administrasi dan membawa pensil 2B. Riyan mengikuti ujian D4. Kesimpulan yang tepat mengenai Riyan adalah...', 'Riyan tidak membawa pensil 2B', 'Semua teman Riyan membawa pensil 2B', 'Semua peserta ujian membawa pensil 2H', 'Ada peserta yang lulus seleksi administrasi tetapi tidak membawa pensil', 'Riyan sudah lulus seleksi administrasi dan membawa pensil 2B saat ujian', 'E', 'Karena Riyan mengikuti ujian D4, dan semua peserta ujian D4 harus sudah lulus seleksi administrasi serta membawa pensil 2B, maka berdasarkan Modus Ponens, Riyan pasti sudah lulus seleksi administrasi dan membawa pensil 2B. Jadi jawabannya adalah E.', 'easy', 24),

('b0000000-0000-4000-8000-060400000000', 'Tidak ada siput yang dapat berlari. Semua makhluk yang tidak dapat berlari pasti merayap. Kesimpulan yang tepat adalah...', 'Banyak siput berlari di pinggir sungai', 'Siput berlari saat cuaca panas', 'Tidak ada siput yang merayap', 'Siput sungai dapat berlari', 'Semua siput merayap', 'E', 'Karena tidak ada siput yang dapat berlari, maka semua siput termasuk kelompok "makhluk yang tidak dapat berlari". Karena semua yang tidak dapat berlari pasti merayap, maka melalui rantai silogisme, semua siput merayap. Jadi jawabannya adalah E.', 'easy', 25),

('b0000000-0000-4000-8000-060400000000', 'Sebagian balita berbadan gemuk. Tidak ada manusia berbadan gemuk yang tidak suka makan. Kesimpulan yang tepat adalah...', 'Sebagian balita suka makan', 'Semua balita tidak suka makan', 'Kebanyakan balita sangat gemuk', 'Hampir semua balita tidak gemuk', 'Tidak ada balita yang tidak suka makan', 'A', 'Pernyataan "tidak ada manusia berbadan gemuk yang tidak suka makan" secara logis berarti semua manusia berbadan gemuk suka makan (negasi ganda). Karena sebagian balita berbadan gemuk, dan semua yang berbadan gemuk suka makan, maka sebagian balita (yang gemuk itu) suka makan. Jadi jawabannya adalah A.', 'medium', 26),

('b0000000-0000-4000-8000-060400000000', 'Dalam satu tahun, kebun Pak Tono akan ditanami enam tanaman berbeda: kacang, jagung, cabai, tomat, bawang, dan semangka, dengan aturan penanaman: (1) kacang harus ditanam sebelum cabai dan sebelum semangka; (2) tomat hanya boleh ditanam jika cabai sudah ditanam lebih dahulu; (3) bawang harus ditanam setelah kacang, tetapi sebelum jagung. Jika jagung ditanam sebelum cabai, dan bawang ditanam setelah semangka, tanaman yang ditanam TERAKHIR adalah...', 'cabai', 'tomat', 'jagung', 'bawang', 'kacang', 'B', 'Dari aturan dasar diperoleh rantai kacang < bawang < jagung. Kondisi tambahan pada soal ini menyatakan jagung < cabai dan semangka < bawang, sedangkan aturan (2) menyatakan cabai < tomat. Menggabungkan seluruhnya menghasilkan urutan tunggal: kacang, semangka, bawang, jagung, cabai, tomat. Tanaman yang ditanam terakhir adalah tomat. Jadi jawabannya adalah B.', 'hard', 27),

('b0000000-0000-4000-8000-060400000000', 'Menggunakan aturan penanaman kebun Pak Tono yang sama (kacang harus ditanam sebelum cabai dan sebelum semangka; tomat hanya boleh ditanam jika cabai sudah ditanam; bawang harus ditanam setelah kacang tetapi sebelum jagung), jika semangka ditanam setelah jagung, dan tomat ditanam sebelum bawang, tanaman yang ditanam KETIGA adalah...', 'jagung', 'tomat', 'cabai', 'bawang', 'semangka', 'B', 'Dari aturan dasar diperoleh kacang < bawang < jagung dan kacang < cabai < tomat. Kondisi tambahan pada skenario ini menyatakan jagung < semangka dan tomat < bawang. Menggabungkan seluruh hubungan menghasilkan urutan tunggal: kacang, cabai, tomat, bawang, jagung, semangka. Tanaman yang ditanam ketiga adalah tomat. Jadi jawabannya adalah B.', 'hard', 28),

('b0000000-0000-4000-8000-060400000000', 'Menggunakan aturan penanaman kebun Pak Tono yang sama (kacang harus ditanam sebelum cabai dan sebelum semangka; tomat hanya boleh ditanam jika cabai sudah ditanam; bawang harus ditanam setelah kacang tetapi sebelum jagung), tanpa memandang skenario tambahan apa pun, tanaman yang PASTI ditanam PERTAMA KALI adalah...', 'kacang', 'jagung', 'bawang', 'cabai', 'tomat', 'A', 'Seluruh aturan dasar (kacang sebelum cabai, kacang sebelum semangka, kacang sebelum bawang sebelum jagung) menempatkan kacang sebagai syarat yang harus mendahului semua tanaman lain, sementara tidak ada satu pun aturan yang mengharuskan sesuatu ditanam sebelum kacang. Maka kacang pasti ditanam pertama kali, berlaku untuk skenario apa pun. Jadi jawabannya adalah A.', 'medium', 29),

('b0000000-0000-4000-8000-060400000000', 'Enam calon pegawai — Oni, Pade, Qomar, Rian, Susi, dan Tati — akan diwawancara sesuai urutan tertentu dengan ketentuan: (1) Qomar diwawancara pada urutan keempat atau terakhir; (2) Rian diwawancara setelah Oni; (3) Pade diwawancara sebelum Qomar; (4) Tati diwawancara sebelum Rian. Urutan wawancara berikut yang memenuhi SELURUH ketentuan tersebut adalah...', 'Susi, Tati, Oni, Qomar, Pade, Rian', 'Oni, Tati, Qomar, Rian, Pade, Susi', 'Susi, Tati, Oni, Pade, Qomar, Rian', 'Qomar, Pade, Oni, Rian, Tati, Susi', 'Pade, Oni, Tati, Susi, Rian, Qomar', 'E', 'Cek opsi E (Pade-1, Oni-2, Tati-3, Susi-4, Rian-5, Qomar-6): Qomar di urutan keenam (memenuhi ketentuan 1); Oni (2) sebelum Rian (5) memenuhi ketentuan 2; Pade (1) sebelum Qomar (6) memenuhi ketentuan 3; Tati (3) sebelum Rian (5) memenuhi ketentuan 4. Seluruh ketentuan terpenuhi. Opsi lain melanggar minimal satu ketentuan (misalnya opsi A: Pade berada di urutan kelima padahal Qomar di urutan keempat, melanggar ketentuan 3). Jadi jawabannya adalah E.', 'hard', 30),

('b0000000-0000-4000-8000-060400000000', 'Menggunakan skema wawancara enam calon pegawai yang sama (Qomar diwawancara pada urutan keempat atau terakhir; Rian diwawancara setelah Oni; Pade diwawancara sebelum Qomar; Tati diwawancara sebelum Rian), pernyataan berikut yang PASTI SALAH adalah...', 'Rian diwawancara pada urutan ketiga', 'Oni diwawancara pada urutan pertama', 'Susi diwawancara pada urutan keenam', 'Tati diwawancara pada urutan keenam', 'Qomar diwawancara pada urutan keenam', 'D', 'Karena Tati harus diwawancara sebelum Rian, Tati tidak mungkin berada di urutan keenam (urutan terakhir), sebab tidak akan ada posisi tersisa setelahnya untuk Rian. Pernyataan lain (A, B, C, E) masing-masing masih bisa dipenuhi oleh minimal satu susunan yang sah sesuai seluruh ketentuan yang ada. Jadi jawabannya adalah D.', 'hard', 31),

('b0000000-0000-4000-8000-060400000000', 'Tabungan A lebih banyak daripada tabungan B dan tabungan C. Tabungan B lebih banyak daripada tabungan C. Tabungan D lebih banyak daripada tabungan A, B, dan C. Kesimpulan yang tepat adalah...', 'Tabungan A lebih banyak daripada tabungan D', 'Tabungan D dan C sama dengan tabungan A dan B', 'C mempunyai tabungan paling sedikit', 'A mempunyai tabungan paling banyak', 'Tidak dapat ditentukan urutan tabungannya', 'C', 'Dari premis A>B, B>C, dan D>A,B,C diperoleh urutan lengkap dari yang terbanyak: D > A > B > C. Jadi C memiliki tabungan paling sedikit. Jawabannya adalah C.', 'medium', 32),

('b0000000-0000-4000-8000-060400000000', 'Dalam turnamen catur, Ali mengumpulkan angka kemenangan lebih banyak daripada Ahmad. Arif mengumpulkan angka kemenangan lebih sedikit daripada Andi. Angka kemenangan Ahmad dan Akbar sama besar. Angka kemenangan Akbar lebih banyak daripada angka kemenangan Arif. Kesimpulan yang PASTI benar adalah...', 'Ahmad mengumpulkan angka kemenangan lebih sedikit daripada Arif', 'Ali mengumpulkan angka kemenangan lebih banyak daripada Arif', 'Ahmad mengumpulkan angka kemenangan lebih sedikit daripada Andi', 'Andi memiliki angka kemenangan lebih banyak daripada Akbar', 'Tidak dapat ditentukan hubungan angka kemenangan siapa pun', 'B', 'Diketahui Ali > Ahmad, Ahmad = Akbar, dan Akbar > Arif. Karena Ahmad sama dengan Akbar dan Akbar lebih banyak dari Arif, maka Ahmad juga lebih banyak dari Arif (Ahmad > Arif). Karena Ali > Ahmad dan Ahmad > Arif, secara transitif diperoleh Ali > Arif. Jadi jawabannya adalah B.', 'hard', 33),

('b0000000-0000-4000-8000-060400000000', 'Enam pelari — J, K, L, M, N, dan O — mengikuti lomba maraton dengan hasil: J selalu mencapai garis finis di depan N, tetapi di belakang O. K selalu mencapai garis finis di depan L, tetapi di belakang O. M selalu mencapai garis finis di depan L, tetapi di belakang J. Tidak ada pelari yang finis bersamaan. Urutan pelari dari finis pertama hingga terakhir yang MUNGKIN terjadi adalah...', 'O, J, K, L, M, N', 'O, J, K, M, L, N', 'O, J, M, N, L, K', 'O, M, J, N, K, L', 'J, O, K, M, L, N', 'B', 'Dari ketentuan diperoleh tiga urutan parsial: O-J-N, O-K-L, dan J-M-L. Opsi A salah karena M harus di depan L, tetapi di sini M berada setelah L. Opsi C salah karena K harus di depan L, tetapi K di sini berada paling akhir. Opsi D salah karena M harus di belakang J, tetapi di sini M berada sebelum J. Opsi E salah karena O harus finis paling awal (O mendahului J dan K sekaligus), padahal di sini J berada di depan O. Opsi B (O, J, K, M, L, N) konsisten dengan seluruh urutan parsial O-J-N, O-K-L, dan J-M-L. Jadi jawabannya adalah B.', 'hard', 34),

('b0000000-0000-4000-8000-060400000000', 'Menggunakan ketentuan lomba maraton enam pelari yang sama (J selalu di depan N tetapi di belakang O; K selalu di depan L tetapi di belakang O; M selalu di depan L tetapi di belakang J), daftar pelari yang PASTI selalu mencapai garis finis di depan M pada setiap lomba adalah...', 'J, O', 'J, O, K', 'J, O, K, N', 'J, O, K, N, L', 'O saja', 'A', 'Dari ketentuan "M selalu di belakang J" diperoleh J pasti di depan M, dan karena J selalu di belakang O, maka O juga pasti di depan M (transitif O-J-M). Adapun K tidak memiliki hubungan urutan langsung maupun tidak langsung dengan M (rantai K hanya terhubung ke O dan L, terpisah dari rantai J-M), sehingga K tidak selalu berada di depan M pada setiap lomba. Karena itu, daftar yang pasti akurat hanyalah J dan O. Jadi jawabannya adalah A.', 'medium', 35),

('b0000000-0000-4000-8000-060400000000', 'Enam orang — J, K, L, M, N, dan O — duduk berjajar di kursi bernomor 1 hingga 6 menghadap panggung. Ketentuan: J tidak duduk di kursi nomor 1 atau nomor 6. L tidak duduk persis di sebelah kanan N. K tidak duduk persis di sebelah kanan N. O duduk persis di sebelah kiri N. Susunan duduk (dari kursi nomor 1 ke nomor 6) yang MEMENUHI seluruh ketentuan tersebut adalah...', 'L, M, K, O, N, J', 'L, J, M, O, N, K', 'K, J, L, O, M, N', 'M, K, O, N, J, L', 'K, M, L, O, N, J', 'D', 'Opsi A salah karena J duduk di kursi nomor 6 (melanggar ketentuan pertama). Opsi B salah karena K duduk persis di sebelah kanan N (melanggar ketentuan ketiga). Opsi C salah karena O tidak duduk persis di sebelah kiri N (melanggar ketentuan keempat). Opsi E salah karena J duduk di kursi nomor 6 (melanggar ketentuan pertama). Opsi D (M,K,O,N,J,L): O tepat di sebelah kiri N (kursi 3 dan 4) sesuai ketentuan keempat, J di kursi 5 (bukan 1 atau 6), dan tidak ada pelanggaran ketentuan lain. Jadi jawabannya adalah D.', 'hard', 36),

('b0000000-0000-4000-8000-060400000000', 'Menggunakan ketentuan susunan kursi yang sama (J tidak di kursi 1 atau 6; L tidak persis di sebelah kanan N; K tidak persis di sebelah kanan N; O persis di sebelah kiri N), susunan duduk (dari kursi nomor 1 ke nomor 6) yang TIDAK memenuhi ketentuan tersebut adalah...', 'K, J, O, N, M, L', 'K, O, N, J, M, L', 'L, O, N, J, K, M', 'M, K, O, N, L, J', 'K, J, L, O, M, N', 'D', 'Pada opsi D (M,K,O,N,L,J), L menempati kursi nomor 5, tepat di sebelah kanan N yang berada di kursi nomor 4 — ini melanggar ketentuan bahwa L tidak boleh duduk persis di sebelah kanan N. Selain itu J juga duduk di kursi nomor 6, melanggar ketentuan pertama. Opsi A, B, dan C masing-masing dapat diperiksa dan tidak melanggar satu pun ketentuan yang ada. Jadi jawabannya adalah D.', 'hard', 37),

('b0000000-0000-4000-8000-060400000000', 'Menggunakan ketentuan susunan kursi yang sama (J tidak di kursi 1 atau 6; L tidak persis di sebelah kanan N; K tidak persis di sebelah kanan N; O persis di sebelah kiri N), jika L duduk di kursi nomor 1 dan K duduk di kursi nomor 5, pernyataan yang PASTI benar adalah...', 'M duduk di kursi nomor 3', 'N duduk di kursi nomor 4', 'O duduk di kursi nomor 4', 'M duduk di kursi nomor 6', 'Tidak dapat ditentukan posisi M', 'D', 'Dengan L=1 dan K=5, posisi O dan N (berpasangan, O tepat di sebelah kiri N) hanya bisa menempati kursi (2,3) atau (3,4). Jika O,N=(3,4), sisa kursi 2 dan 6 untuk J dan M; karena J tidak boleh di kursi 6, maka J=2 dan M=6, tetapi ini membuat K (kursi 5) tepat di sebelah kanan N (kursi 4), melanggar ketentuan — sehingga kemungkinan ini gugur. Maka O,N harus di (2,3), menyisakan kursi 4 dan 6 untuk J dan M; karena J tidak boleh di kursi 6, maka J=4 dan M=6. Susunan yang sah: L, O, N, J, K, M. Jadi M pasti duduk di kursi nomor 6. Jawabannya adalah D.', 'hard', 38),

('b0000000-0000-4000-8000-060400000000', 'Kendaraan roda tiga dilarang masuk jalan tol. Becak beroda empat. Kesimpulan yang tepat adalah...', 'Becak tidak dilarang masuk jalan tol', 'Becak dilarang masuk jalan tol', 'Becak harus masuk jalan tol', 'Tidak dapat disimpulkan', 'Becak termasuk kendaraan roda tiga', 'D', 'Aturan yang ada hanya melarang kendaraan roda tiga masuk jalan tol, sementara becak dinyatakan beroda empat (bukan roda tiga), sehingga aturan tersebut tidak berlaku langsung untuk becak. Namun demikian, ketiadaan larangan bagi becak tidak otomatis berarti becak diizinkan (bisa saja ada aturan lain yang membatasinya), sehingga status becak terhadap jalan tol tidak dapat dipastikan dari premis yang ada. Jadi jawabannya adalah D.', 'medium', 39),

('b0000000-0000-4000-8000-060400000000', 'Seluruh anggota koperasi berhak menandatangani petisi kepada pengurus koperasi untuk melaksanakan rapat anggota. Amir pasti seorang anggota koperasi tersebut, karena tanda tangannya ada dalam petisi tersebut. Pernyataan berikut yang PALING DAPAT mematahkan kesimpulan di atas adalah...', 'Sebagian anggota koperasi mungkin tidak mendukung seluruh kebijakan pengurus koperasi', 'Amir mungkin dipaksa oleh anggota koperasi lain untuk menandatangani petisi tersebut', 'Sebagian orang yang menandatangani petisi tersebut bisa saja bukan anggota koperasi', 'Amir mungkin telah keluar dari keanggotaan koperasi setelah menandatangani petisi tersebut', 'Petisi tersebut mungkin belum disetujui oleh seluruh pengurus koperasi', 'D', 'Kesimpulan yang ingin dipatahkan adalah "Amir pasti (saat ini) anggota koperasi". Pernyataan yang paling langsung melemahkan kesimpulan ini adalah kemungkinan bahwa Amir memang benar menandatangani petisi tersebut saat masih menjadi anggota, tetapi kemudian keluar dari keanggotaan setelahnya — sehingga saat ini status keanggotaannya sudah tidak pasti lagi, meski tanda tangannya tetap ada dalam petisi. Pernyataan lain tidak secara langsung menyerang inti kesimpulan tersebut. Jadi jawabannya adalah D.', 'hard', 40),

('b0000000-0000-4000-8000-060400000000', 'Setiap anak jalanan tidak berpendidikan. Semua pengamen adalah anak jalanan. Kesimpulan yang tepat adalah...', 'Setiap anak yang bukan anak jalanan pasti berpendidikan', 'Anak yang berpendidikan bukan pengamen', 'Ada anak jalanan yang berpendidikan', 'Sebagian anak jalanan berpendidikan', 'Anak jalanan bukan pengamen', 'B', 'Semua pengamen adalah anak jalanan, dan setiap anak jalanan tidak berpendidikan, sehingga semua pengamen tidak berpendidikan (rantai silogisme). Berdasarkan kontraposisinya, pernyataan ini setara dengan: anak yang berpendidikan pasti bukan pengamen. Jadi jawabannya adalah B.', 'medium', 41),

('b0000000-0000-4000-8000-060400000000', 'Jika Tita memakai baju putih, maka ia memakai rok merah. Jika Tita memakai rok merah, maka Dina memakai rok hitam. Hari ini Dina memakai rok abu-abu. Kesimpulan yang tepat adalah...', 'Dina tidak memakai baju coklat', 'Tita tidak memakai baju putih', 'Dina memakai baju kuning', 'Tita memakai rok merah', 'Tidak dapat disimpulkan', 'B', 'Karena Dina memakai rok abu-abu (bukan rok hitam), dengan Modus Tollens pada premis "jika Tita memakai rok merah, maka Dina memakai rok hitam", disimpulkan Tita tidak memakai rok merah. Menerapkan Modus Tollens sekali lagi pada premis "jika Tita memakai baju putih, maka ia memakai rok merah", disimpulkan Tita tidak memakai baju putih. Jadi jawabannya adalah B.', 'medium', 42),

('b0000000-0000-4000-8000-060400000000', 'Semua binatang adalah makhluk hidup. Semua makhluk hidup akan mati. Kambing adalah binatang herbivora. Kesimpulan yang tepat mengenai kambing adalah...', 'Tidak semua binatang herbivora akan mati', 'Tidak semua kambing herbivora', 'Kambing tidak mungkin mati', 'Kambing bukan binatang', 'Kambing akan mati', 'E', 'Kambing adalah binatang herbivora, yang berarti kambing termasuk binatang. Semua binatang adalah makhluk hidup, dan semua makhluk hidup akan mati. Melalui rantai silogisme ini, disimpulkan kambing akan mati. Jadi jawabannya adalah E.', 'easy', 43),

('b0000000-0000-4000-8000-060400000000', 'Semua siswa SMA harus memilih salah satu dari tiga jurusan: IPA, IPS, atau Bahasa. Anto adalah siswa SMA. Kesimpulan yang tepat mengenai jurusan yang dipilih Anto adalah...', 'Anto memilih jurusan IPA', 'Anto memilih jurusan IPS', 'Anto memilih jurusan Bahasa', 'Anto belum menentukan pilihan jurusan', 'Tidak dapat disimpulkan', 'E', 'Premis hanya menyatakan bahwa Anto harus memilih salah satu dari tiga jurusan yang tersedia, tanpa menyebutkan jurusan spesifik mana yang benar-benar dipilihnya maupun status keputusannya saat ini. Karena itu, jurusan spesifik yang dipilih Anto (opsi A, B, C) maupun status belum memilih (opsi D) sama-sama tidak dapat dipastikan dari premis yang ada. Jadi jawabannya adalah E.', 'medium', 44),

('b0000000-0000-4000-8000-060400000000', 'Semua mahasiswa baru memiliki laptop. Sebagian mahasiswa baru memakai kemeja. Kesimpulan yang tepat adalah...', 'Semua mahasiswa baru memakai kemeja', 'Sebagian mahasiswa baru yang memakai kemeja memiliki laptop', 'Ada mahasiswa baru yang memakai kemeja dan tidak memiliki laptop', 'Semua yang memiliki laptop memakai kemeja', 'Tidak dapat disimpulkan', 'B', 'Karena semua mahasiswa baru memiliki laptop, maka mahasiswa baru manapun yang memakai kemeja (termasuk bagian dari mahasiswa baru) pasti juga memiliki laptop. Jadi sebagian mahasiswa baru yang memakai kemeja memiliki laptop. Jawabannya adalah B.', 'medium', 45),

('b0000000-0000-4000-8000-060400000000', 'Empat pemburu — Semar, Bagong, Petruk, dan Gareng — berburu di hutan selama satu hari masing-masing, dalam rentang Selasa hingga Jumat (4 hari berurutan). Setiap pemburu hanya memburu satu jenis hewan yang berbeda: Rayap, Semut, Tungau, atau Undur-undur. Aturan: (1) setiap pemburu berburu pada hari yang berbeda dari pemburu lain; (2) Semar hanya berburu Semut, sedangkan Bagong hanya berburu Undur-undur; (3) Rayap harus diburu tepat sehari sebelum Semut diburu; (4) hari berburu Bagong harus lebih awal daripada hari berburu Gareng. Jika Rayap diburu pada hari Selasa, pernyataan yang tepat adalah...', 'Semar berburu setelah Bagong', 'Semut dan Undur-undur diburu pada hari yang sama', 'Petruk berburu pada hari Kamis', 'Undur-undur adalah buruan Petruk', 'Gareng berburu binatang Tungau', 'E', 'Karena Rayap diburu Selasa (bukan oleh Semar atau Bagong yang sudah punya hewan tetap) dan Rayap harus sehari sebelum Semut, maka Semut diburu Rabu oleh Semar. Rayap pada hari Selasa hanya mungkin diburu oleh Petruk atau Gareng; jika Gareng yang berburu Selasa, maka Bagong harus berburu sebelum Selasa, padahal Selasa adalah hari pertama — kontradiksi. Jadi Rayap diburu Petruk pada hari Selasa. Dengan Bagong harus sebelum Gareng, sisa hari Kamis dan Jumat diisi Bagong (Kamis, Undur-undur) dan Gareng (Jumat, sisa hewan yaitu Tungau). Jadi Gareng berburu binatang Tungau. Jawabannya adalah E.', 'hard', 46),

('b0000000-0000-4000-8000-060400000000', 'Putaran final turnamen catur diikuti tujuh peserta: Aswatama, Burisrawa, Citraksa, Durgempa, Kartamarma, Sugrama, dan Wirabahu, yang dibagi menjadi dua grup dengan ketentuan: (1) Grup Merah beranggotakan tiga peserta dan Grup Biru beranggotakan empat peserta; (2) Aswatama tidak boleh berada di grup yang sama dengan Sugrama maupun Kartamarma; (3) Wirabahu harus berada satu grup dengan Burisrawa; (4) jika Aswatama berada di Grup Biru, maka Citraksa harus berada di Grup Merah. Jika Aswatama berada di Grup Biru, pengaturan yang PASTI benar adalah...', 'Wirabahu berada di Grup Merah', 'Citraksa tidak berada di Grup Merah', 'Durgempa berada di Grup Biru', 'Sugrama tidak berada di Grup Merah', 'Kartamarma berada di Grup Biru', 'C', 'Jika Aswatama di Grup Biru, maka Citraksa wajib di Grup Merah (ketentuan 4), dan Sugrama-Kartamarma juga wajib di Grup Merah (ketentuan 2, karena keduanya harus berbeda grup dari Aswatama). Karena Grup Merah hanya memuat 3 peserta, maka Grup Merah sudah penuh dengan Sugrama, Kartamarma, dan Citraksa. Empat peserta yang tersisa (Aswatama, Burisrawa, Durgempa, Wirabahu) otomatis masuk Grup Biru, sekaligus memenuhi ketentuan 3 (Wirabahu bersama Burisrawa). Jadi Durgempa pasti berada di Grup Biru. Jawabannya adalah C.', 'hard', 47),

('b0000000-0000-4000-8000-060400000000', 'Menggunakan ketentuan turnamen catur yang sama (Grup Merah 3 peserta, Grup Biru 4 peserta; Aswatama harus berbeda grup dari Sugrama maupun Kartamarma; Wirabahu harus satu grup dengan Burisrawa; jika Aswatama di Grup Biru maka Citraksa di Grup Merah), pengaturan berikut yang TIDAK MUNGKIN terjadi adalah...', 'Kartamarma berbeda grup dengan Sugrama', 'Aswatama dan Burisrawa berada di grup yang sama', 'Sugrama satu grup dengan Citraksa', 'Burisrawa berada di grup yang berbeda dengan Kartamarma', 'Wirabahu dan Sugrama tidak berada di grup yang sama', 'A', 'Ketentuan 2 mengharuskan Sugrama dan Kartamarma sama-sama berada di grup yang berbeda dari Aswatama. Karena hanya ada dua grup, "berbeda dari Aswatama" berarti keduanya (Sugrama dan Kartamarma) pasti berada di grup yang SAMA satu sama lain. Karena itu, pengaturan yang menyatakan Kartamarma berbeda grup dengan Sugrama tidak mungkin terjadi dalam skenario apa pun. Jadi jawabannya adalah A.', 'hard', 48),

('b0000000-0000-4000-8000-060400000000', 'Menggunakan ketentuan turnamen catur yang sama (Grup Merah 3 peserta, Grup Biru 4 peserta; Aswatama harus berbeda grup dari Sugrama maupun Kartamarma; Wirabahu harus satu grup dengan Burisrawa; jika Aswatama di Grup Biru maka Citraksa di Grup Merah), jika Burisrawa berada di Grup Merah, pengaturan yang PASTI tepat adalah...', 'Kartamarma di Grup Merah', 'Durgempa di Grup Merah', 'Citraksa di Grup Merah', 'Sugrama di Grup Biru', 'Wirabahu di Grup Biru', 'D', 'Jika Burisrawa di Grup Merah, maka Wirabahu juga di Grup Merah (ketentuan 3). Grup Merah hanya memuat 3 peserta dan sudah terisi Burisrawa dan Wirabahu, sehingga satu slot tersisa harus diisi oleh Aswatama (sebab Sugrama dan Kartamarma harus selalu berada di grup yang sama satu sama lain dan berbeda dari Aswatama, sehingga keduanya tidak mungkin cukup ruang berdua di Grup Merah bersama Burisrawa-Wirabahu). Susunan yang terbentuk: Grup Merah = {Aswatama, Burisrawa, Wirabahu}, Grup Biru = {Sugrama, Kartamarma, Citraksa, Durgempa}. Jadi Sugrama pasti berada di Grup Biru. Jawabannya adalah D.', 'hard', 49);
