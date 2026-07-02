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

('b0000000-0000-4000-8000-060400000000', 'Flat Type', '**Definisi:** Flat Type adalah istilah untuk soal penalaran analitis dengan premis-premis yang SETARA/SEJAJAR, tanpa hierarki atau tingkatan.

**Pengenalan:** Semua objek berada pada "level" yang sama, dan hubungan antar-objek umumnya berupa kesamaan, perbedaan, atau keterkaitan langsung (searah/berlawanan), bukan urutan berjenjang. Contoh pola: "Ani dan Budi menyukai warna yang sama. Budi tidak menyukai warna merah. Ani menyukai warna biru." Dari premis setara ini, tanpa jenjang, bisa disimpulkan Budi juga menyukai warna biru (karena "sama" dengan Ani), dan keduanya sama-sama tidak menyukai merah.

*Catatan: istilah "Flat Type" di sini adalah generalisasi dari pola soal penalaran analitis berhubungan setara/sejajar; lihat catatan sumber di awal file.*

**Poin yang Harus Diketahui:**
- Ciri pengenal: kata kunci seperti "sama dengan", "berbeda dengan", "sejenis", atau pengelompokan ciri tanpa embel-embel "lebih tinggi/lebih rendah dari".
- Pada level lanjutan (setara OTO Bappenas), soal Flat Type jarang berdiri sendiri: premis kesetaraan/perbedaan sering DIGABUNG sekaligus dengan premis berjenjang (Strata Type) atau premis atribut tambahan (Dimensional Type) dalam satu soal.
- Strategi paling efektif untuk kasus gabungan ini adalah membuat TABEL BANTU (matriks objek x atribut/urutan) sehingga premis yang setara maupun yang berjenjang bisa dipetakan bersama tanpa ada informasi yang terlewat.

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

('b0000000-0000-4000-8000-060400000000', 'Strata Type', '**Definisi:** Strata Type adalah istilah untuk soal penalaran analitis dengan premis-premis yang BERJENJANG/BERTINGKAT (strata = lapisan/tingkatan).

**Pengenalan:** Objek-objek disusun dalam urutan, peringkat, atau posisi (misalnya lebih tinggi, lebih tua, lebih besar, lebih dulu), sehingga kesimpulan diperoleh dengan menyusun urutan penuh dari semua petunjuk lalu membaca posisi relatif antarobjek. Contoh pola: "A lebih tinggi dari B. B lebih tinggi dari C. D lebih pendek dari C." Dari tiga premis berjenjang ini, dapat disusun urutan tinggi ke pendek: A - B - C - D, sehingga bisa disimpulkan A adalah yang tertinggi dan D yang terpendek.

*Catatan: istilah "Strata Type" di sini adalah generalisasi dari pola soal penalaran analitis berhubungan berjenjang/hierarkis (ranking, urutan, posisi bertingkat); lihat catatan sumber di awal file.*

**Poin yang Harus Diketahui:**
- Pada level lanjutan, soal Strata Type sering DIGABUNG dengan Dimensional Type: selain urutan/peringkat, setiap objek juga punya atribut tambahan (instansi, kategori, kelompok, dsb.) yang harus dicocokkan bersamaan.
- Strategi paling efektif adalah membuat TABEL BANTU berupa matriks urutan x atribut, diisi bertahap dari petunjuk yang paling pasti (misalnya posisi tetap seperti "paling awal"/"paling akhir") ke petunjuk relatif.

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

**Pengenalan:** Tingkat kesulitannya lebih tinggi dari Flat Type maupun Strata Type karena harus mencocokkan (matching) kombinasi antar-dimensi menggunakan tabel bantu, bukan sekadar urutan satu arah. Contoh pola: "Ada 3 orang: Rani, Sinta, Tia. Masing-masing bekerja sebagai guru, dokter, atau insinyur, dan tinggal di Bogor, Bekasi, atau Bandung. Rani bukan dokter dan tidak tinggal di Bandung. Yang tinggal di Bekasi adalah insinyur. Sinta tinggal di Bogor." Soal seperti ini butuh tabel silang profesi x kota x nama untuk menyimpulkan pasangan yang tepat untuk tiap orang.

*Catatan: istilah "Dimensional Type" di sini adalah generalisasi dari pola soal penalaran analitis multi-atribut/kombinasi data; lihat catatan sumber di awal file.*

**Poin yang Harus Diketahui:**
- Pada level lanjutan, soal Dimensional Type sering DIGABUNG dengan Strata Type: selain mencocokkan kombinasi atribut (nama x jabatan x unit, dsb.), soal juga meminta menyusun URUTAN/PERINGKAT salah satu atributnya (misalnya gaji, senioritas, atau skor).
- Strategi paling efektif tetap tabel bantu (matriks), hanya saja salah satu "kolom" matriksnya berisi urutan/peringkat, bukan sekadar kategori.

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

('b0000000-0000-4000-8000-060400000000', 'Konjungsi', '**Definisi:** Konjungsi adalah pernyataan majemuk berbentuk "p dan q" (dilambangkan $p \land q$). Nilai kebenarannya BENAR hanya jika kedua pernyataan tunggal (p dan q) sama-sama benar; jika salah satu saja salah, seluruh konjungsi bernilai salah.

**Pengenalan:** Contoh: "Jakarta adalah ibu kota Indonesia dan 2 + 2 = 4" bernilai BENAR karena kedua bagian benar. "Jakarta adalah ibu kota Indonesia dan 2 + 2 = 5" bernilai SALAH karena bagian kedua salah.

**Poin yang Harus Diketahui:**
- Tabel kebenaran:

| p | q | $p \land q$ |
|---|---|-------|
| B | B | B |
| B | S | S |
| S | B | S |
| S | S | S |

- Pada level lanjutan, konjungsi sering muncul sebagai bagian dari pernyataan majemuk BERLAPIS, misalnya $(p \land q) \rightarrow r$ (bukan sekadar $p \land q$ berdiri sendiri).
- Untuk menentukan nilai kebenaran keseluruhan, evaluasi dulu nilai kebenaran konjungsi $(p \land q)$ di dalam kurung, baru gunakan hasilnya sebagai anteseden pada implikasi terluar.

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

('b0000000-0000-4000-8000-060400000000', 'Disjungsi', '**Definisi:** Disjungsi adalah pernyataan majemuk berbentuk "p atau q" (dilambangkan $p \lor q$). Nilai kebenarannya BENAR jika salah satu ATAU kedua pernyataan tunggal benar; hanya bernilai salah jika kedua-duanya salah.

**Pengenalan:** Contoh: "Ibu kota Indonesia adalah Jakarta atau 2 + 2 = 5" tetap bernilai BENAR karena bagian pertama benar, walau bagian kedua salah.

**Poin yang Harus Diketahui:**
- Tabel kebenaran:

| p | q | $p \lor q$ |
|---|---|-------|
| B | B | B |
| B | S | B |
| S | B | B |
| S | S | S |

- Pada level lanjutan, disjungsi sering digabungkan ke dalam pernyataan berlapis, misalnya $p \rightarrow (q \lor r)$, yaitu satu anteseden yang berimplikasi pada disjungsi dua konsekuen sekaligus.
- Untuk mengevaluasi, tentukan dulu nilai $(q \lor r)$, baru terapkan aturan implikasi terhadap p.

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

('b0000000-0000-4000-8000-060400000000', 'Implikasi', '**Definisi:** Implikasi adalah pernyataan majemuk berbentuk "jika p maka q" (dilambangkan $p \rightarrow q$), dengan p disebut anteseden/sebab dan q disebut konsekuen/akibat. Implikasi hanya bernilai SALAH pada satu kondisi saja: ketika p benar tetapi q salah (janji diingkari); pada kondisi lain, implikasi bernilai benar.

**Pengenalan:** Contoh: "Jika hari hujan, maka jalanan basah." Pernyataan ini hanya salah jika ternyata hari hujan (p benar) tetapi jalanan tidak basah (q salah).

**Poin yang Harus Diketahui:**
- Tabel kebenaran:

| p | q | $p \rightarrow q$ |
|---|---|-------|
| B | B | B |
| B | S | S |
| S | B | B |
| S | S | B |

- Pada level lanjutan, implikasi juga sering muncul dalam bentuk BERSARANG, misalnya $(p \rightarrow q) \rightarrow r$, di mana anteseden pada implikasi terluar adalah implikasi lain, bukan pernyataan tunggal.
- Evaluasi dulu nilai $(p \rightarrow q)$ menggunakan aturan implikasi biasa, baru gunakan hasilnya sebagai anteseden implikasi terluar.

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

('b0000000-0000-4000-8000-060400000000', 'Biimplikasi', '**Definisi:** Biimplikasi adalah pernyataan majemuk berbentuk "p jika dan hanya jika q" (dilambangkan $p \leftrightarrow q$). Nilai kebenarannya BENAR jika p dan q memiliki nilai kebenaran yang SAMA (sama-sama benar atau sama-sama salah), dan bernilai salah jika nilai kebenarannya berbeda.

**Pengenalan:** Contoh: "Segitiga adalah sama sisi jika dan hanya jika ketiga sisinya sama panjang" bernilai benar karena kedua pernyataan selalu senilai (sama-sama benar atau sama-sama salah untuk segitiga yang sama).

**Poin yang Harus Diketahui:**
- Tabel kebenaran:

| p | q | $p \leftrightarrow q$ |
|---|---|-------|
| B | B | B |
| B | S | S |
| S | B | S |
| S | S | B |

- Pada level lanjutan, biimplikasi juga sering muncul dalam pernyataan berlapis, misalnya $(p \land q) \leftrightarrow r$.
- Evaluasi dulu nilai $(p \land q)$ di dalam kurung, baru bandingkan nilai kebenarannya dengan r menggunakan aturan biimplikasi (benar jika kedua ruas bernilai SAMA).

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

('b0000000-0000-4000-8000-060400000000', 'Konvers, Invers, dan Kontraposisi', '**Definisi:** Dari sebuah implikasi asli $p \rightarrow q$, dapat dibentuk tiga pernyataan turunan:

- **Konvers**: menukar posisi p dan q, menjadi $q \rightarrow p$.
- **Invers**: menegasikan p dan q, menjadi $\neg p \rightarrow \neg q$.
- **Kontraposisi**: menukar sekaligus menegasikan, menjadi $\neg q \rightarrow \neg p$.

**Pengenalan:** Contoh: implikasi asli "Jika hujan (p), maka jalan basah (q)" [$p \rightarrow q$].
- Konvers: "Jika jalan basah, maka hujan" ($q \rightarrow p$) — belum tentu benar, sebab jalan bisa basah karena disiram.
- Invers: "Jika tidak hujan, maka jalan tidak basah" ($\neg p \rightarrow \neg q$) — juga belum tentu benar dengan alasan yang sama.
- Kontraposisi: "Jika jalan tidak basah, maka tidak hujan" ($\neg q \rightarrow \neg p$) — nilai kebenarannya PASTI sama dengan pernyataan asli.

**Poin yang Harus Diketahui:**
- Yang PALING PENTING untuk diingat: kontraposisi SELALU senilai (ekuivalen secara logis) dengan implikasi aslinya, sedangkan konvers dan invers TIDAK ekuivalen dengan implikasi aslinya (meski konvers dan invers ekuivalen satu sama lain).
- Level lanjutan sering meminta penerapan kontraposisi secara BERANTAI pada implikasi bersyarat MAJEMUK, yaitu implikasi yang anteseden atau konsekuennya berupa konjungsi/disjungsi. Misalnya dari $(p \land q) \rightarrow r$, kontraposisi pertamanya adalah $\neg r \rightarrow \neg(p \land q)$, yang menurut hukum De Morgan setara dengan $\neg r \rightarrow (\neg p \lor \neg q)$.
- Jika hasil ini dikontraposisikan SEKALI LAGI, hasilnya akan kembali ekuivalen dengan pernyataan asal $(p \land q) \rightarrow r$ — sebab kontraposisi dari kontraposisi selalu kembali ke pernyataan semula (rantai ekuivalensi ganda).

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

**Pengenalan:** Contoh: ingkaran dari "Semua siswa hadir dan tepat waktu" adalah "Ada siswa yang tidak hadir atau tidak tepat waktu". Ingkaran dari "Jika saya lulus, maka saya akan wisuda" adalah "Saya lulus, tetapi saya tidak wisuda" (bukan "Jika saya lulus, maka saya tidak wisuda").

**Poin yang Harus Diketahui:**
- Ingkaran KONJUNGSI: $\neg(p \land q) = \neg p \lor \neg q$. (Ingkaran "p dan q" adalah "~p atau ~q".)
- Ingkaran DISJUNGSI: $\neg(p \lor q) = \neg p \land \neg q$. (Ingkaran "p atau q" adalah "~p dan ~q".)
- Ingkaran IMPLIKASI: $\neg(p \rightarrow q) = p \land \neg q$. (Ingkaran "jika p maka q" adalah "p dan ~q", BUKAN "jika p maka ~q".)
- Ingkaran BIIMPLIKASI: $\neg(p \leftrightarrow q) = (p \land \neg q) \lor (\neg p \land q)$. (Ingkaran "p jika dan hanya jika q" adalah "p dan bukan-q, atau bukan-p dan q" — dengan kata lain, p dan q memiliki nilai kebenaran yang BERBEDA.)

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

('b0000000-0000-4000-8000-060400000000', 'Silogisme', '**Definisi:** Silogisme adalah penarikan kesimpulan dari dua premis implikasi yang saling berkaitan lewat suku tengah (istilah penghubung) yang sama. Bentuk umum:

Premis 1: $p \rightarrow q$
Premis 2: $q \rightarrow r$
Kesimpulan yang SAH: $p \rightarrow r$

**Pengenalan:** Suku tengah "q" pada premis 1 dan 2 saling menghubungkan p dengan r, sehingga kesimpulan sah adalah implikasi langsung dari p ke r, tanpa perlu menyebut q lagi. Contoh: "Jika Andi rajin belajar (p), maka Andi naik kelas (q). Jika Andi naik kelas (q), maka Andi dibelikan sepeda (r)." Kesimpulan sah: "Jika Andi rajin belajar, maka Andi dibelikan sepeda" ($p \rightarrow r$).

**Poin yang Harus Diketahui:**
- Level lanjutan sering menguji RANTAI silogisme dengan TIGA premis atau lebih yang saling bersambung lewat suku tengah yang berbeda-beda, misalnya $p \rightarrow q$, $q \rightarrow r$, $r \rightarrow s$.
- Dari rantai tersebut, kesimpulan sah yang dapat ditarik adalah $p \rightarrow s$ — menyambungkan p langsung ke s, melompati seluruh suku tengah (q dan r) di tengah rantai.

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

('b0000000-0000-4000-8000-060400000000', 'Modus Ponens', '**Definisi:** Modus Ponens adalah aturan penarikan kesimpulan dengan pola:

Premis 1: $p \rightarrow q$ (benar)
Premis 2: p (benar, anteseden terpenuhi)
Kesimpulan yang SAH: q

**Pengenalan:** Intinya, jika implikasi benar dan syarat/sebabnya (p) terbukti terjadi, maka akibatnya (q) pasti berlaku. Contoh: "Jika hari ini hujan (p), maka saya membawa payung (q). Hari ini hujan (p benar)." Kesimpulan sah secara modus ponens: "Saya membawa payung" (q).

**Poin yang Harus Diketahui:**
- Modus Ponens membutuhkan DUA premis: implikasi yang bernilai benar, dan kepastian bahwa anteseden (p) terjadi.
- Kesimpulan sah hanya berupa konsekuen (q), bukan pernyataan lain.
- Pola ini adalah pola penalaran maju (dari sebab ke akibat), berbeda arah dengan Modus Tollens yang menalar dari akibat ke sebab.

**Kesimpulan:** Jika $p \rightarrow q$ benar dan p benar, maka q pasti benar — itulah inti Modus Ponens.', 12),

('b0000000-0000-4000-8000-060400000000', 'Modus Tollens', '**Definisi:** Modus Tollens adalah aturan penarikan kesimpulan dengan pola:

Premis 1: $p \rightarrow q$ (benar)
Premis 2: $\neg q$ (bukan q, akibat terbukti tidak terjadi)
Kesimpulan yang SAH: $\neg p$ (bukan p)

**Pengenalan:** Intinya, jika implikasi benar tetapi akibatnya (q) terbukti TIDAK terjadi, maka sebabnya (p) pasti juga tidak terjadi. Contoh: "Jika hari ini hujan (p), maka jalan basah (q). Ternyata jalan tidak basah (~q)." Kesimpulan sah secara modus tollens: "Hari ini tidak hujan" ($\neg p$).

**Poin yang Harus Diketahui:**
- Aturan ini kebalikan arah penalarannya dari Modus Ponens: Modus Ponens menalar dari sebab ke akibat, sedangkan Modus Tollens menalar dari TIDAK ADANYA akibat ke TIDAK ADANYA sebab.
- Modus Tollens tetap valid karena berpijak pada kontraposisi ($\neg q \rightarrow \neg p$ yang ekuivalen dengan $p \rightarrow q$).
- Syarat sah: implikasi $p \rightarrow q$ harus benar, dan $\neg q$ (konsekuen terbukti tidak terjadi) harus benar.

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

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060400000000', 'Premis 1: Jika Rian rajin berlatih, maka Rian menjadi atlet andal.
Premis 2: Rian rajin berlatih.
Kesimpulan yang sah adalah...', 'Rian tidak rajin berlatih', 'Rian tidak menjadi atlet andal', 'Rian mungkin menjadi atlet andal', 'Tidak ada kesimpulan yang sah', 'Rian menjadi atlet andal', 'E', 'Ini adalah pola Modus Ponens: p → q (benar) dan p (benar), maka kesimpulan sah adalah q, yaitu "Rian menjadi atlet andal".', 'easy'),

('b0000000-0000-4000-8000-060400000000', 'Premis 1: Jika harga BBM naik, maka biaya transportasi naik.
Premis 2: Biaya transportasi tidak naik.
Kesimpulan yang sah adalah...', 'Harga BBM naik', 'Harga BBM tidak naik', 'Biaya transportasi naik', 'Harga BBM mungkin naik', 'Tidak dapat disimpulkan', 'B', 'Ini adalah pola Modus Tollens: p → q (benar) dan ~q (akibat terbukti tidak terjadi), maka kesimpulan sah adalah ~p, yaitu "Harga BBM tidak naik".', 'medium'),

('b0000000-0000-4000-8000-060400000000', 'Ada 3 pegawai: Dedi, Eka, dan Fitri, masing-masing memiliki jenjang jabatan berbeda. Dedi jabatannya lebih tinggi dari Eka. Fitri jabatannya lebih rendah dari Eka. Soal seperti ini termasuk tipe penalaran analitis...', 'Flat Type, karena semua premis setara', 'Dimensional Type, karena melibatkan banyak atribut', 'Silogisme, karena ada dua implikasi', 'Modus Tollens, karena ada penyangkalan akibat', 'Strata Type, karena premis membentuk urutan bertingkat', 'E', 'Soal ini menyusun jenjang/tingkatan jabatan (lebih tinggi - lebih rendah) antar tiga orang, sehingga termasuk Strata Type: premis berjenjang yang perlu disusun menjadi satu urutan penuh (Dedi - Eka - Fitri).', 'medium'),

('b0000000-0000-4000-8000-060400000000', 'Diketahui pernyataan implikasi "Jika p maka q" (p → q) bernilai benar. Pernyataan yang PASTI ikut bernilai benar (ekuivalen) dengan implikasi tersebut adalah...', 'Konversnya: q → p', 'Inversnya: ~p → ~q', 'Kontraposisinya: ~q → ~p', 'Negasinya: p → ~q', 'Disjungsinya: p ˅ q', 'C', 'Dari implikasi p → q, hanya KONTRAPOSISI (~q → ~p) yang selalu ekuivalen/senilai dengan pernyataan aslinya. Konvers (q → p) dan invers (~p → ~q) tidak dijamin ekuivalen dengan implikasi asli.', 'medium'),

('b0000000-0000-4000-8000-060400000000', 'Premis 1: Semua pegawai yang disiplin akan mendapat penilaian kinerja baik.
Premis 2: Semua pegawai yang mendapat penilaian kinerja baik berpeluang naik pangkat.
Kesimpulan yang sah berdasarkan prinsip silogisme adalah...', 'Semua pegawai yang naik pangkat adalah pegawai yang disiplin', 'Semua pegawai yang disiplin berpeluang naik pangkat', 'Semua pegawai yang tidak disiplin tidak naik pangkat', 'Sebagian pegawai yang disiplin tidak naik pangkat', 'Tidak ada kesimpulan yang bisa ditarik', 'B', 'Ini pola silogisme: p → q (disiplin → kinerja baik) dan q → r (kinerja baik → berpeluang naik pangkat), maka kesimpulan sah adalah p → r, yaitu "Semua pegawai yang disiplin berpeluang naik pangkat".', 'hard');

insert into questions (chapter_id, question, option_a, option_b, option_c, option_d, option_e, correct_option, explanation, difficulty) values
('b0000000-0000-4000-8000-060400000000', 'Empat orang, yaitu Bagas, Citra, Dimas, dan Erna, dibandingkan usianya. Bagas lebih tua dari Citra. Citra lebih tua dari Dimas. Erna lebih tua dari Bagas. Berdasarkan premis-premis tersebut, urutan usia dari yang paling tua ke paling muda yang tepat adalah...', 'Erna, Bagas, Citra, Dimas', 'Bagas, Erna, Citra, Dimas', 'Erna, Citra, Bagas, Dimas', 'Dimas, Citra, Bagas, Erna', 'Bagas, Citra, Erna, Dimas', 'A', 'Soal ini termasuk Strata Type: premis berjenjang disusun menjadi satu urutan penuh. Dari "Erna lebih tua dari Bagas", "Bagas lebih tua dari Citra", dan "Citra lebih tua dari Dimas" diperoleh urutan tua ke muda: Erna - Bagas - Citra - Dimas.', 'easy'),

('b0000000-0000-4000-8000-060400000000', 'Tiga orang, yaitu Farhan, Gita, dan Hendra, masing-masing berprofesi sebagai arsitek, dokter, atau guru, dan masing-masing tinggal di kota berbeda: Solo, Malang, atau Manado. Farhan bukan dokter. Orang yang tinggal di Malang berprofesi sebagai guru. Hendra tinggal di Manado. Gita bukan tinggal di Solo. Berdasarkan premis-premis tersebut, profesi dan kota tempat tinggal Farhan yang tepat adalah...', 'Guru, tinggal di Malang', 'Dokter, tinggal di Manado', 'Guru, tinggal di Solo', 'Arsitek, tinggal di Solo', 'Dokter, tinggal di Solo', 'D', 'Soal ini termasuk Dimensional Type sehingga perlu tabel silang nama x profesi x kota. Karena Hendra tinggal di Manado dan Gita bukan di Solo, maka Gita tinggal di Malang (otomatis berprofesi guru) sehingga Farhan tinggal di Solo. Karena Farhan bukan dokter dan guru sudah menjadi Gita, maka Farhan adalah arsitek, dan Hendra adalah dokter.', 'hard'),

('b0000000-0000-4000-8000-060400000000', 'Tiga siswa, yaitu Indra, Joko, dan Kirana, dibandingkan hobi olahraganya. Indra dan Joko menyukai olahraga yang sama. Joko tidak menyukai bulu tangkis. Kirana menyukai renang, sama seperti Indra. Berdasarkan premis-premis tersebut, olahraga yang disukai Joko adalah...', 'Sepak bola', 'Renang', 'Bulu tangkis', 'Basket', 'Tidak dapat ditentukan', 'B', 'Soal ini termasuk Flat Type karena hubungan antarobjek bersifat setara/sejajar ("sama dengan"), tanpa jenjang. Karena Kirana sama dengan Indra (menyukai renang) dan Indra sama dengan Joko, maka Joko juga menyukai renang.', 'easy'),

('b0000000-0000-4000-8000-060400000000', 'Lima pegawai, yaitu Umar, Vina, Wati, Xena, dan Yoga, mengikuti lomba lari kantor dan finis tanpa ada yang bersamaan. Umar finis sebelum Vina. Vina finis sebelum Wati. Xena finis setelah Wati. Yoga finis paling awal, sebelum Umar. Berdasarkan premis-premis tersebut, urutan finis dari yang paling awal hingga paling akhir yang tepat adalah...', 'Umar, Yoga, Vina, Wati, Xena', 'Yoga, Umar, Wati, Vina, Xena', 'Xena, Wati, Vina, Umar, Yoga', 'Yoga, Umar, Vina, Wati, Xena', 'Yoga, Vina, Umar, Wati, Xena', 'D', 'Soal ini termasuk Strata Type: susun urutan penuh dari petunjuk berjenjang. Karena Yoga sebelum Umar, Umar sebelum Vina, Vina sebelum Wati, dan Wati sebelum Xena, diperoleh urutan finis: Yoga - Umar - Vina - Wati - Xena.', 'medium'),

('b0000000-0000-4000-8000-060400000000', 'Premis 1: Jika seorang PNS lulus ujian dinas, maka PNS tersebut naik pangkat.
Premis 2: Nadia adalah PNS yang lulus ujian dinas.
Kesimpulan yang sah adalah...', 'Nadia naik pangkat', 'Nadia tidak naik pangkat', 'Nadia tidak lulus ujian dinas', 'Nadia mungkin naik pangkat', 'Tidak ada kesimpulan yang sah', 'A', 'Ini adalah pola Modus Ponens: p → q (benar) dan p (benar, Nadia lulus ujian dinas), maka kesimpulan sah adalah q, yaitu "Nadia naik pangkat".', 'easy'),

('b0000000-0000-4000-8000-060400000000', 'Premis 1: Jika suatu laporan keuangan disusun sesuai standar akuntansi, maka laporan tersebut lolos audit tanpa catatan.
Premis 2: Laporan keuangan milik PT Sejahtera tidak lolos audit tanpa catatan.
Kesimpulan yang sah adalah...', 'Laporan keuangan PT Sejahtera disusun sesuai standar akuntansi', 'Laporan keuangan PT Sejahtera lolos audit tanpa catatan', 'Laporan keuangan PT Sejahtera tidak disusun sesuai standar akuntansi', 'Laporan keuangan PT Sejahtera mungkin disusun sesuai standar akuntansi', 'Tidak dapat ditarik kesimpulan apa pun', 'C', 'Ini adalah pola Modus Tollens: p → q (benar) dan ~q (tidak lolos audit tanpa catatan, akibat terbukti tidak terjadi), maka kesimpulan sah adalah ~p, yaitu "Laporan keuangan PT Sejahtera tidak disusun sesuai standar akuntansi".', 'medium'),

('b0000000-0000-4000-8000-060400000000', 'Premis 1: Jika suatu proyek pemerintah direncanakan dengan matang, maka proyek tersebut selesai tepat waktu.
Premis 2: Jika suatu proyek pemerintah selesai tepat waktu, maka anggaran proyek tersebut tidak membengkak.
Kesimpulan yang sah berdasarkan prinsip silogisme adalah...', 'Jika anggaran proyek tidak membengkak, maka proyek direncanakan dengan matang', 'Jika proyek selesai tepat waktu, maka proyek direncanakan dengan matang', 'Jika proyek tidak direncanakan dengan matang, maka anggaran membengkak', 'Jika suatu proyek pemerintah direncanakan dengan matang, maka anggaran proyek tersebut tidak membengkak', 'Tidak ada kesimpulan yang bisa ditarik', 'D', 'Ini pola Silogisme: p → q (direncanakan matang → selesai tepat waktu) dan q → r (selesai tepat waktu → anggaran tidak membengkak), maka kesimpulan sah adalah p → r, yaitu "Jika suatu proyek pemerintah direncanakan dengan matang, maka anggaran proyek tersebut tidak membengkak".', 'medium'),

('b0000000-0000-4000-8000-060400000000', 'Diketahui pernyataan "Jika suatu dokumen memiliki tanda tangan basah (p), maka dokumen tersebut sah secara hukum (q)" bernilai benar. Pernyataan berikut yang PASTI bernilai benar (ekuivalen secara logis) dengan pernyataan tersebut adalah...', 'Jika dokumen sah secara hukum, maka dokumen tersebut memiliki tanda tangan basah', 'Jika dokumen tidak memiliki tanda tangan basah, maka dokumen tersebut tidak sah secara hukum', 'Jika dokumen tidak sah secara hukum, maka dokumen tersebut tidak memiliki tanda tangan basah', 'Dokumen memiliki tanda tangan basah dan dokumen tersebut tidak sah secara hukum', 'Dokumen sah secara hukum atau dokumen memiliki tanda tangan basah', 'C', 'Dari implikasi p → q, hanya KONTRAPOSISI (~q → ~p) yang selalu ekuivalen dengan pernyataan aslinya, yaitu "Jika dokumen tidak sah secara hukum, maka dokumen tersebut tidak memiliki tanda tangan basah". Opsi A adalah konvers (q → p) dan opsi B adalah invers (~p → ~q), keduanya tidak dijamin ekuivalen dengan implikasi asli.', 'hard'),

('b0000000-0000-4000-8000-060400000000', 'Ingkaran (negasi) yang tepat dari pernyataan "Anggaran disetujui dan proyek dapat dimulai bulan ini" adalah...', 'Anggaran tidak disetujui atau proyek tidak dapat dimulai bulan ini', 'Anggaran tidak disetujui dan proyek tidak dapat dimulai bulan ini', 'Jika anggaran disetujui, maka proyek tidak dapat dimulai bulan ini', 'Anggaran disetujui atau proyek dapat dimulai bulan ini', 'Anggaran disetujui dan proyek tidak dapat dimulai bulan ini', 'A', 'Ingkaran konjungsi mengikuti kaidah ¬(p ∧ q) = ¬p ∨ ¬q. Jadi ingkaran dari "p dan q" adalah "~p atau ~q", yaitu "Anggaran tidak disetujui atau proyek tidak dapat dimulai bulan ini".', 'easy'),

('b0000000-0000-4000-8000-060400000000', 'Ingkaran (negasi) yang tepat dari pernyataan "Jika seorang peserta mendaftar sebelum batas waktu, maka peserta tersebut berhak mengikuti seleksi" adalah...', 'Jika peserta tidak mendaftar sebelum batas waktu, maka peserta tidak berhak mengikuti seleksi', 'Peserta tidak mendaftar sebelum batas waktu dan tidak berhak mengikuti seleksi', 'Jika peserta berhak mengikuti seleksi, maka peserta mendaftar sebelum batas waktu', 'Peserta tidak mendaftar sebelum batas waktu atau berhak mengikuti seleksi', 'Peserta mendaftar sebelum batas waktu, tetapi peserta tersebut tidak berhak mengikuti seleksi', 'E', 'Ingkaran implikasi mengikuti kaidah ¬(p → q) = p ∧ ¬q, BUKAN implikasi baru. Jadi ingkarannya adalah "p tetapi ~q", yaitu "Peserta mendaftar sebelum batas waktu, tetapi peserta tersebut tidak berhak mengikuti seleksi".', 'hard');
