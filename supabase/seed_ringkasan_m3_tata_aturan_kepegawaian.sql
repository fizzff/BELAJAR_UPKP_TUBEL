-- Ringkasan poin-poin + mind map Modul Tata Aturan Kepegawaian (M3)
-- Menggantikan pendekatan verbatim lama (seed_contents_m3_tata_aturan_kepegawaian.sql)
-- dengan ringkasan poin-poin padat untuk kolom contents.body,
-- serta menambahkan mind map (outline markdown) di kolom chapters.mindmap.

delete from contents where chapter_id in (
  'b0000000-0000-4000-8000-030100000000',
  'b0000000-0000-4000-8000-030200000000',
  'b0000000-0000-4000-8000-030300000000',
  'b0000000-0000-4000-8000-030400000000',
  'b0000000-0000-4000-8000-030500000000'
);

-- =========================================================
-- Bab I: Pengertian dan Jabatan Aparatur Sipil Negara
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-030100000000', 'Pendahuluan & Pengertian ASN', '- UU Nomor 20 Tahun 2023 tentang Aparatur Sipil Negara disahkan 31 Oktober 2023 (disetujui DPR-RI pada Rapat Paripurna 3 Oktober 2023), menggantikan UU Nomor 5 Tahun 2014 tentang ASN.
- UU 20/2023 mulai berlaku sejak tanggal diundangkan (Pasal 77).
- Ketentuan penutup UU 20/2023: seluruh peraturan pelaksana UU 5/2014 tetap berlaku sepanjang tidak bertentangan dan belum diganti.
- **ASN** = profesi bagi PNS dan pegawai pemerintah dengan perjanjian kerja (PPPK) yang bekerja pada instansi pemerintah.
- **PNS** = WNI memenuhi syarat tertentu, diangkat sebagai Pegawai ASN secara **tetap** oleh Pejabat Pembina Kepegawaian (PPK) untuk menduduki jabatan pemerintahan.
- **PPPK** = WNI memenuhi syarat tertentu, diangkat berdasarkan perjanjian kerja untuk **jangka waktu tertentu**.
- Pegawai ASN berkedudukan sebagai unsur aparatur negara, harus bebas dari pengaruh/intervensi golongan dan partai politik (Pasal 8 dan 9 UU Nomor 20 Tahun 2023).', 1),
('b0000000-0000-4000-8000-030100000000', 'Jabatan Manajerial', '- Jabatan ASN terdiri atas 2 (dua) kelompok: **Jabatan Manajerial** dan **Jabatan Nonmanajerial**.
- Jabatan Manajerial: memimpin unit organisasi, memiliki bawahan langsung. Terdiri atas 3 (tiga) jenjang:
  1. **Jabatan Pimpinan Tinggi (JPT)** — terdiri atas JPT Utama, JPT Madya, JPT Pratama (tingkat tinggi).
  2. **Jabatan Administrator** — tingkat menengah, memimpin & mengoordinasikan strategi pencapaian tujuan organisasi.
  3. **Jabatan Pengawas** — tingkat dasar, mengendalikan pelaksanaan kegiatan.
- Dasar: Pasal 16 UU Nomor 20 Tahun 2023; PP Nomor 11 Tahun 2017 tentang Manajemen PNS stdd PP Nomor 17 Tahun 2020 (disingkat PP 11/2017 stdd PP 17/2020).
- Pejabat administrasi **tidak boleh** merangkap jabatan dengan Jabatan Fungsional; wajib menjamin Akuntabilitas Jabatan (SOP, kinerja berkesinambungan untuk administrator; pengendalian pelaksana untuk pengawas; SOP untuk pelaksana).
- Syarat diangkat dalam jabatan administrasi: memiliki **Kompetensi Teknis, Kompetensi Manajerial, dan Kompetensi Sosial Kultural**.
  - Kompetensi Teknis: tingkat/spesialisasi pendidikan, diklat teknis fungsional, pengalaman kerja teknis.
  - Kompetensi Manajerial: pendidikan, diklat struktural/manajemen, pengalaman kepemimpinan.
  - Kompetensi Sosial Kultural: pengalaman kerja terkait masyarakat majemuk (agama, suku, budaya) → wawasan kebangsaan.
- PNS diberhentikan dari **jabatan administrasi** apabila: (a) mengundurkan diri dari jabatan; (b) diberhentikan sementara sebagai PNS; (c) menjalani cuti di luar tanggungan negara; (d) menjalani tugas belajar **lebih dari 6 (enam) bulan**; (e) ditugaskan penuh di luar Jabatan Administrasi; atau (f) tidak memenuhi persyaratan Jabatan.', 2),
('b0000000-0000-4000-8000-030100000000', 'Jabatan Nonmanajerial', '- Jabatan Nonmanajerial: mengutamakan kompetensi teknis, tidak bertanggung jawab langsung mengelola/mengawasi kinerja pegawai lain. Terdiri atas:
  1. **Jabatan Fungsional (JF)** — berkaitan dengan pelayanan fungsional berbasis keahlian/keterampilan tertentu.
     - Jabatan Fungsional Keahlian: **Ahli Utama, Ahli Madya, Ahli Muda, Ahli Pertama**.
     - Jabatan Fungsional Keterampilan: **Penyelia, Mahir, Terampil, Pemula**.
     - Kriteria JF: (1) terkait fungsi/tugas Instansi Pemerintah; (2) mensyaratkan keahlian/keterampilan tertentu (sertifikasi/penilaian); (3) tersusun dalam jenjang berdasarkan tingkat kesulitan & kompetensi; (4) pelaksanaan tugas mandiri; (5) kegiatan terukur dalam angka kredit.
     - Pengangkatan ke JF: melalui pengangkatan pertama, perpindahan dari jabatan lain, penyesuaian, dan/atau promosi.
     - PNS diberhentikan dari JF apabila: (1) mengundurkan diri dari jabatan; (2) diberhentikan sementara sebagai PNS; (3) cuti di luar tanggungan negara; (4) tugas belajar lebih dari 6 bulan; (5) ditugaskan penuh di luar JF; atau (6) tidak memenuhi persyaratan jabatan.
     - PNS yang diberhentikan dari JF karena alasan (b) s.d. (e) dapat diangkat kembali sesuai jenjang JF terakhir apabila tersedia lowongan.
  2. **Jabatan Pelaksana** — memberikan pelayanan & melaksanakan pekerjaan yang bersifat rutin dan sederhana.', 3),
('b0000000-0000-4000-8000-030100000000', 'Penyetaraan Jabatan PNS', '**Penyetaraan jabatan PNS:**

1. Saat UU Nomor 5 Tahun 2014 mulai berlaku, penyetaraan eselon ke jabatan baru:

| Jabatan Lama (Eselon) | Setara Dengan |
|---|---|
| Eselon Ia (kepala LPNK) | Jabatan Pimpinan Tinggi Utama |
| Eselon Ia dan Ib | Jabatan Pimpinan Tinggi Madya |
| Eselon II | Jabatan Pimpinan Tinggi Pratama |
| Eselon III | Jabatan Administrator |
| Eselon IV | Jabatan Pengawas |
| Eselon V dan fungsional umum | Jabatan Pelaksana |

2. Saat PP Nomor 17 Tahun 2020 mulai berlaku: penyetaraan jabatan Pejabat Administrasi ke dalam Jabatan Fungsional dilakukan melalui **Penyesuaian/Inpassing** pada JF yang setara, diatur dengan Peraturan Menteri.', 4);

-- =========================================================
-- Bab II: Hak dan Kewajiban ASN
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-030200000000', 'Hak Pegawai ASN', '- Pegawai ASN berhak memperoleh penghargaan & pengakuan berupa materiel/nonmateriel, terdiri atas 7 (tujuh) hak:
  1. Penghasilan;
  2. Penghargaan yang bersifat motivasi;
  3. Tunjangan dan fasilitas;
  4. Jaminan sosial;
  5. Lingkungan kerja;
  6. Pengembangan diri; dan
  7. Bantuan hukum.', 1),
('b0000000-0000-4000-8000-030200000000', 'Kewajiban ASN', '- Kewajiban ASN, terdiri atas 5 (lima) poin:
  1. Setia dan taat kepada Pancasila, UUD 1945, NKRI, dan pemerintah yang sah;
  2. Menaati ketentuan peraturan perundang-undangan;
  3. Melaksanakan nilai dasar ASN dan kode etik/kode perilaku ASN;
  4. Menjaga netralitas;
  5. Bersedia ditempatkan di seluruh wilayah NKRI dan perwakilan NKRI di luar negeri.', 2);

-- =========================================================
-- Bab III: Kelembagaan
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-030300000000', null, '- **Presiden** = pemegang kekuasaan pemerintahan tertinggi dalam kebijakan, pembinaan profesi, dan Manajemen ASN.
- Presiden mendelegasikan kewenangan tersebut kepada **Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi (PAN-RB)**.
- Pendelegasian meliputi: perumusan & penetapan kebijakan strategis, koordinasi & sinkronisasi kebijakan, serta pengendalian kebijakan Manajemen ASN secara nasional.
- Tugas Kementerian PAN-RB secara lebih detail:
  - Mengoordinasikan rencana kerja lembaga terkait penyelenggaraan Manajemen ASN.
  - Melakukan sinkronisasi & pengendalian tugas/fungsi pengembangan kapasitas dan pembelajaran ASN.
  - Melakukan pengendalian pelaksanaan kebijakan teknis Manajemen ASN.
  - Melakukan pengawasan penerapan **Sistem Merit** pada Kementerian/Lembaga.', 1);

-- =========================================================
-- Bab IV: Manajemen Aparatur Sipil Negara
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-030400000000', 'Dasar Manajemen ASN & Pengadaan PNS', '- Manajemen ASN didasarkan pada kualifikasi, kompetensi, kinerja secara adil & wajar tanpa membedakan latar belakang politik, ras, warna kulit, agama, asal-usul, jenis kelamin, status pernikahan, umur, atau kondisi kecacatan (**Sistem Merit**).
- Manajemen ASN meliputi Manajemen PNS dan Manajemen PPPK.
- Presiden dapat mendelegasikan kewenangan pembinaan Manajemen ASN kepada Pejabat yang Berwenang (di kementerian, setjen/sekretariat lembaga negara, sekretariat lembaga nonstruktural, sekda provinsi/kabupaten/kota), yang memberi rekomendasi kepada Pejabat Pembina Kepegawaian (PPK).
- Manajemen PNS Instansi Pusat oleh pemerintah pusat; Instansi Daerah oleh pemerintah daerah.
- **Pengadaan dan Pengangkatan PNS:**
  - Menteri PAN-RB menetapkan Kebijakan Perencanaan Kebutuhan Pegawai ASN nasional berdasarkan prioritas nasional & RPJMN serta kemampuan keuangan negara.
  - Instansi Pemerintah wajib menyusun kebutuhan jumlah & jenis jabatan PNS berdasarkan analisis jabatan, analisis beban kerja, dan peta jabatan (PP 11/2017 stdd PP 17/2020).
  - Jabatan Manajerial & Nonmanajerial diutamakan diisi PNS; jabatan tertentu dapat diisi PPPK.
  - Pengadaan PNS dilakukan **secara nasional**, untuk jabatan: Jabatan Administrasi (khusus Jabatan Pelaksana), Jabatan Fungsional Keahlian (Ahli Pertama & Ahli Muda), Jabatan Fungsional Keterampilan (Pemula & Terampil).
  - Tahapan pengadaan PNS: **perencanaan → pengumuman lowongan → pelamaran → seleksi → pengumuman hasil seleksi → masa percobaan → pengangkatan menjadi PNS**.
  - Seleksi terdiri dari 3 (tiga) tahap: seleksi administrasi, seleksi kompetensi dasar (karakteristik pribadi, intelegensia umum, wawasan kebangsaan), seleksi kompetensi bidang.
  - Peserta lolos seleksi diangkat menjadi **calon PNS** (CPNS) dengan keputusan PPK.
  - **Masa percobaan CPNS = 1 (satu) tahun**, dilaksanakan melalui diklat terintegrasi.
  - Syarat CPNS diangkat jadi PNS: lulus pendidikan & pelatihan; sehat jasmani & rohani.
  - Ketentuan penting masa percobaan (PP 11/2017 stdd PP 17/2020):
    - Diklat dasar CPNS hanya dapat diikuti **1 (satu) kali**.
    - CPNS wajib mengucapkan sumpah/janji PNS setelah diangkat PNS.
    - CPNS mengundurkan diri saat masa percobaan → sanksi tidak boleh ikut seleksi PNS untuk jangka waktu tertentu.
    - CPNS dapat diberhentikan karena: mengundurkan diri, meninggal dunia, pelanggaran disiplin sedang/berat, memberi keterangan/bukti tidak benar saat melamar, dihukum penjara/kurungan (putusan berkekuatan hukum tetap), jadi anggota/pengurus parpol, atau tidak bersedia sumpah/janji.', 1),
('b0000000-0000-4000-8000-030400000000', 'Pangkat, Jabatan & Pengisian JPT', '- Jabatan ASN diisi PNS/PPPK; jabatan ASN tertentu dapat diisi prajurit TNI & anggota Polri di Instansi Pusat (UU 20/2023). Sebaliknya, Pegawai ASN dapat menduduki jabatan di lingkungan TNI/Polri sesuai kompetensi (Pasal 20 UU 20/2023).
- Pengembangan karier PNS berdasarkan kualifikasi, kompetensi, penilaian kinerja, kebutuhan instansi; Pengembangan Talenta & Karier berdasarkan Sistem Merit melalui manajemen talenta (Pasal 46 UU 20/2023).
- Promosi PNS: berdasarkan perbandingan objektif kompetensi/kualifikasi/persyaratan jabatan, penilaian prestasi kerja, kepemimpinan, kerjasama, kreativitas, tanpa membedakan gender/suku/agama/ras/golongan.
- **Pengisian Jabatan Pimpinan Tinggi (JPT)** — dasar hukum: PermenPAN-RB Nomor 15 Tahun 2019.
  - JPT Utama & Madya: terbuka & kompetitif di kalangan PNS, tingkat nasional.
  - JPT Pratama: terbuka & kompetitif, tingkat nasional atau antar-kabupaten/kota dalam 1 provinsi.
  - JPT Utama & Madya tertentu dapat dari non-PNS dengan persetujuan Presiden, ditetapkan dengan Keputusan Presiden.
  - JPT dapat diisi prajurit TNI/anggota Polri (aktif atau setelah mengundurkan diri dari dinas aktif) sesuai kebutuhan & kompetensi.
  - Pengisian JPT oleh PPK dengan membentuk panitia seleksi (unsur internal & eksternal); berkoordinasi dengan **KASN (Komite Aparatur Sipil Negara)**.
  - Dapat dikecualikan bagi Instansi Pemerintah yang telah menerapkan Sistem Merit, dengan persetujuan KASN (wajib lapor berkala untuk persetujuan baru).
- **Pengisian JPT di Instansi Pusat:**
  - JPT Utama/Madya: panitia seleksi memilih **3 (tiga) nama calon** per 1 lowongan → diusulkan PPK ke Presiden → Presiden pilih **1 (satu) nama**.
  - JPT Pratama: panitia seleksi pilih 3 nama → disampaikan ke PPK melalui Pejabat yang Berwenang → PPK pilih 1 nama.
- **Pengisian JPT di Instansi Daerah:**
  - JPT Madya (provinsi): panitia seleksi pilih 3 nama → PPK usulkan ke Presiden melalui Mendagri → Presiden pilih 1 nama.
  - JPT Pratama: panitia seleksi usulkan 3 nama ke PPK melalui Pejabat yang Berwenang → PPK pilih 1 nama; khusus sekretaris daerah kab/kota dikoordinasikan dengan gubernur sebelum ditetapkan bupati/walikota.
  - PPK dilarang mengganti pejabat pimpinan tinggi selama **2 (dua) tahun** sejak pelantikan, kecuali melanggar ketentuan/tidak memenuhi syarat; penggantian JPT Utama/Madya sebelum 2 tahun perlu persetujuan Presiden.
  - Masa jabatan JPT paling lama **5 (lima) tahun**, dapat diperpanjang berdasar kinerja, kompetensi, kebutuhan instansi (persetujuan PPK, koordinasi KASN).', 2),
('b0000000-0000-4000-8000-030400000000', 'Manajemen PPPK', '- Jenis jabatan PPPK diatur **Perpres Nomor 38 Tahun 2020**.
- Penyusunan kebutuhan jumlah PPPK: jangka waktu minimal **5 (lima) tahun**, diperinci per 1 tahun, ditetapkan Keputusan Menteri (Pasal 4 PP Nomor 49 Tahun 2018).
- Pengadaan calon PPPK: tahapan perencanaan → pengumuman lowongan → pelamaran → seleksi → pengumuman hasil seleksi → pengangkatan menjadi PPPK.
- Pengangkatan calon PPPK ditetapkan keputusan PPK; masa perjanjian kerja paling singkat **1 (satu) tahun**, dapat diperpanjang (PP Nomor 49 Tahun 2018).
- PPPK **tidak otomatis** menjadi calon PNS — harus ikuti semua proses seleksi CPNS.
- **Pemutusan hubungan perjanjian kerja (PHK) PPPK dengan hormat** karena: (a) jangka waktu perjanjian berakhir; (b) meninggal dunia; (c) permintaan sendiri; (d) perampingan organisasi/kebijakan pemerintah; atau (e) tidak cakap jasmani/rohani.
- **PHK dengan hormat tidak atas permintaan sendiri** karena: (a) dihukum penjara (putusan tetap) pidana **paling singkat 2 tahun**, tidak berencana; (b) pelanggaran disiplin PPPK tingkat berat; atau (c) tidak memenuhi target kinerja sesuai perjanjian kerja.
- **PHK tidak dengan hormat** karena: (a) menyeleweng dari Pancasila & UUD 1945; (b) dihukum penjara (putusan tetap) karena tindak pidana kejahatan jabatan/terkait jabatan/pidana umum; (c) jadi anggota/pengurus parpol; atau (d) dihukum penjara (putusan tetap) pidana **paling singkat 2 tahun atau lebih**, dilakukan berencana.
- Perlindungan wajib bagi PPPK: (a) jaminan hari tua; (b) jaminan kesehatan; (c) jaminan kecelakaan kerja; (d) jaminan kematian; (e) bantuan hukum.', 3),
('b0000000-0000-4000-8000-030400000000', 'ASN Menjadi Pejabat Negara, Mutasi, Penggajian & Penghargaan', '- **Pegawai ASN dari PNS yang diangkat menjadi pejabat negara** (Pasal 58 UU 20/2023): ketua/wakil ketua/anggota MK; ketua/wakil ketua/anggota BPK; ketua/wakil ketua/anggota Komisi Yudisial; ketua/wakil ketua/anggota KPK; Menteri & setingkat menteri; Kepala Perwakilan RI (Dubes LBBP) → **diberhentikan sementara** dari jabatan ASN-nya, **tidak kehilangan status PNS**; diaktifkan kembali bila tak lagi menjabat. Jika tak ada lowongan jabatan dalam **5 (lima) tahun**, diberhentikan dengan hormat (Pasal 60).
- PNS yang (di)calonkan jadi Presiden/Wapres, ketua/wakil ketua/anggota DPR/DPD, gubernur/wagub, bupati-walikota/wakilnya → **wajib mengundurkan diri tertulis** sebagai PNS sejak ditetapkan sebagai calon (Pasal 59 UU 20/2023).
- **Mutasi PNS** dapat dalam/antar-Instansi Pusat, dalam/antar-Instansi Daerah, antar-Pusat-Daerah, dan ke Perwakilan RI luar negeri. Pejabat yang menetapkan:
  - Dalam 1 Instansi Pusat/Daerah → PPK.
  - Antar-kabupaten/kota dalam 1 provinsi → Gubernur (dengan pertimbangan Kepala BKN).
  - Antar-kabupaten/kota antar-provinsi & antar-provinsi → Menteri PAN-RB (pertimbangan Kepala BKN).
  - Provinsi/kabupaten/kota ke Instansi Pusat atau sebaliknya → Kepala BKN.
  - Antar-Instansi Pusat → Kepala BKN.
  - Mutasi memperhatikan prinsip larangan konflik kepentingan (Peraturan BKN Nomor 5 Tahun 2019).
- Hak atas penghargaan (Pasal 21 UU 20/2023): penghasilan, penghargaan motivasi (finansial/non-finansial), tunjangan & fasilitas (jabatan/individu), jaminan sosial, dll. Tunjangan meliputi tunjangan kinerja (sesuai capaian kinerja) & tunjangan kemahalan (indeks harga daerah).
- Penghargaan bagi PNS berkinerja baik (kesetiaan, pengabdian, kecakapan, kejujuran, kedisiplinan, prestasi): tanda kehormatan; kenaikan pangkat istimewa; kesempatan prioritas pengembangan kompetensi; kesempatan hadiri acara resmi/kenegaraan.
- PNS yang dijatuhi sanksi administratif berat (pemberhentian tidak dengan hormat) → dicabut hak memakai tanda kehormatan.', 4),
('b0000000-0000-4000-8000-030400000000', 'Organisasi, Sistem Informasi & Penyelesaian Sengketa', '- Pegawai ASN berhimpun dalam **korps profesi Pegawai ASN Republik Indonesia** — menjaga kode etik & standar pelayanan profesi, mewujudkan jiwa korps ASN sebagai pemersatu bangsa.
- **Sistem Informasi ASN**: diselenggarakan nasional & terintegrasi antar-Instansi Pemerintah untuk efisiensi, efektivitas, akurasi keputusan Manajemen ASN. Memuat: data riwayat hidup; riwayat pendidikan formal/nonformal; riwayat jabatan & kepangkatan; riwayat penghargaan/tanda jasa/tanda kehormatan; riwayat pengalaman organisasi; riwayat gaji; riwayat diklat; daftar penilaian prestasi kerja; surat keputusan; dan kompetensi.
- **Penyelesaian sengketa** pegawai ASN melalui upaya administratif: **keberatan** (diajukan tertulis ke atasan pejabat yang berwenang menghukum, memuat alasan, tembusan ke pejabat berwenang menghukum) dan **banding administratif** (diajukan ke Badan Pertimbangan ASN).', 5),
('b0000000-0000-4000-8000-030400000000', 'Pemberhentian ASN', '- **PNS diberhentikan dengan hormat** karena: (a) permintaan sendiri; (b) mencapai batas usia pensiun; (c) perampingan organisasi/kebijakan pemerintah; (d) tidak cakap jasmani/rohani; atau (e) meninggal dunia, tewas, atau hilang.
- **Diberhentikan dengan hormat atau tidak diberhentikan**: dihukum penjara (putusan tetap) pidana **paling singkat 2 tahun**, tidak berencana.
- **Diberhentikan dengan hormat tidak atas permintaan sendiri** karena: (a) dipidana penjara **kurang dari 2 tahun** (putusan tetap), berencana; (b) pelanggaran disiplin PNS tingkat berat; (c) terbukti pakai ijazah palsu; atau (d) tidak lapor dalam **15 (lima belas) hari kerja** sejak berakhirnya tugas belajar kepada PPK.
- **Diberhentikan tidak dengan hormat** karena: (a) menyeleweng dari Pancasila & UUD 1945; (b) dipidana penjara/kurungan (putusan tetap) tindak pidana kejahatan jabatan/terkait jabatan/pidana umum; (c) jadi anggota/pengurus parpol; atau (d) dipidana penjara (putusan tetap) **paling singkat 2 tahun**, berencana.
- **PNS diberhentikan sementara** apabila: (a) diangkat jadi pejabat negara; (b) diangkat jadi komisioner/anggota lembaga nonstruktural; (c) cuti di luar tanggungan negara; atau (d) ditahan karena tersangka tindak pidana (Pasal 53 UU 20/2023). Pengaktifan kembali oleh PPK.
- PNS berhenti bekerja berhak atas jaminan pensiun & jaminan hari tua.
- **Jaminan pensiun** diberikan (UU 20/2023) apabila: (a) meninggal dunia; (b) permintaan sendiri (usia & masa kerja tertentu); (c) mencapai batas usia pensiun; (d) perampingan organisasi/kebijakan pemerintah (pensiun dini); atau (e) tidak cakap jasmani/rohani.', 6),
('b0000000-0000-4000-8000-030400000000', 'Pensiun ASN — Batas Usia Pensiun', 'PNS diberhentikan dengan hormat karena mencapai **Batas Usia Pensiun (BUP)**, sesuai PP 11 Tahun 2017 sebagaimana diubah PP 17 Tahun 2020:

| Batas Usia Pensiun | Berlaku Bagi |
|---|---|
| **58 (lima puluh delapan) tahun** | Pejabat Administrasi; Pejabat Fungsional Ahli Muda; Pejabat Fungsional Ahli Pertama; Pejabat Fungsional Keterampilan |
| **60 (enam puluh) tahun** | Pejabat Pimpinan Tinggi; Pejabat Fungsional Madya |
| **65 (enam puluh lima) tahun** | PNS yang memangku Pejabat Fungsional Ahli Utama |

- Bagi PNS yang menduduki Jabatan Fungsional yang BUP-nya diatur tersendiri dalam undang-undang khusus, berlaku BUP sesuai undang-undang yang bersangkutan.', 7);

-- =========================================================
-- Bab V: Implementasi UU 20/2023 di Kementerian Keuangan
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-030500000000', 'Sistem Merit & Manajemen Talenta Kemenkeu', '- Kemenkeu sejak reformasi birokrasi **tahun 2007** telah menerapkan sistem merit: rekrutmen objektif & transparan, pengukuran kompetensi, manajemen kinerja, peringkat jabatan, talent management, remunerasi berbasis peringkat jabatan & kinerja.
- **PMK Nomor 38 Tahun 2025** tentang Manajemen Talenta di Lingkungan Kemenkeu — mencabut 2 (dua) ketentuan sebelumnya: PMK Nomor 60/PMK.01/2016 stdd PMK Nomor 161/PMK.01/2017 tentang Manajemen Talenta Kemenkeu.
- Tujuan Manajemen Talenta: mewujudkan succession planning yang objektif, terencana, terbuka, tepat waktu, akuntabel guna memperkuat & mengakselerasi Sistem Merit sesuai UU 20/2023.
- Manajemen Talenta = rangkaian sistem SDM untuk mencari, mengelola, mengembangkan, mempertahankan, mengevaluasi PNS Kemenkeu terbaik sebagai calon pemimpin masa depan.
- **Manajemen ASN minimal terdiri atas 8 (delapan) komponen**: (1) perencanaan kebutuhan; (2) pengadaan; (3) penguatan budaya kerja & citra institusi; (4) pengelolaan kinerja; (5) pengembangan talenta & karier; (6) pengembangan kompetensi; (7) pemberian penghargaan & pengakuan; (8) pemberhentian.', 1),
('b0000000-0000-4000-8000-030500000000', 'Penyusunan Kebutuhan & Pengadaan ASN di Kemenkeu', '- **Penyusunan & Penetapan Kebutuhan**: Instansi Pemerintah menyusun rencana kebutuhan Pegawai ASN sesuai kebijakan perencanaan kebutuhan pegawai (Pasal 32 UU 20/2023). Perhitungan kebutuhan Jabatan Fungsional Kemenkeu diatur **PMK Nomor 37/PMK.01/2020** tentang Pedoman Penghitungan dan Pengusulan Kebutuhan Jabatan Fungsional pada Kementerian Keuangan.
- **Pengadaan ASN**: tahapan perencanaan → pengumuman lowongan → pelamaran → seleksi → pengumuman hasil seleksi → masa percobaan → pengangkatan menjadi PNS (Pasal 19 PP Nomor 11 Tahun 2017).
- Kemenkeu menerapkan pola baru pelatihan dasar ASN: **Peraturan LAN RI Nomor 1 Tahun 2021** tentang Pelatihan Dasar Calon Pegawai Negeri Sipil.', 2),
('b0000000-0000-4000-8000-030500000000', 'Pangkat dan Jabatan di Kemenkeu', '- Pengelompokan jabatan dalam **Job Family Kemenkeu**: KMK Nomor 461/KMK.01/2013.
- **Pola Mutasi Jabatan Karier** di Lingkungan Kemenkeu: jabatan karier = jabatan struktural eselon II, III, IV, V, dan jabatan fungsional.
- **KMK Nomor 7/KMK.01/2023** tentang Pedoman Pelaksanaan Mutasi dan Promosi Internal dan Antar-Unit bagi PNS di Lingkungan Kemenkeu — mutasi/promosi memperhatikan 18 hal, di antaranya: ketersediaan formasi; rumpun jabatan/klaster; kompetensi teknis-manajerial-sosial kultural; rekam jejak & disiplin (termasuk digital footprint); pengalaman kerja; peringkat/kelas jabatan (grading); kategori jabatan pemula/pengembangan/pemantapan; rencana pengembangan karier individu; masa jabatan **di atas 5 (lima) tahun** dikenai pola penyegaran; masa kerja di wilayah sulit/berisiko tinggi (pelaksana paling lama **3 (tiga) tahun**; administrator/pengawas paling lama **2 (dua) tahun**); masa penempatan unit non-eselon paling lama **3 (tiga) tahun**, diperpanjang tiap **2 (dua) tahun**; batas usia paling sedikit **3 (tiga) tahun** sebelum BUP; dsb.
- **Bentuk pola karier** (PMK 224/2020): horizontal (pindah ke jabatan setara), vertikal (pindah ke jabatan lebih tinggi dalam 1 kelompok JA/JF/JPT), diagonal (pindah ke jabatan lebih tinggi antar-kelompok). Tambahan khusus Kemenkeu: **semi horizontal** dan **semi vertikal** (Pasal 24 PMK 224/2020) — mencakup perpindahan dari/ke Unit non-Eselon.
- **Kenaikan pangkat** — 4 (empat) jenis: reguler, istimewa, pengabdian, anumerta.
  - **Reguler**: tidak menduduki jabatan struktural/fungsional tertentu; tugas belajar tanpa jabatan sebelumnya; tidak melampaui pangkat atasan; **minimal 4 tahun** dalam pangkat terakhir; nilai DP3/PPKP 2 tahun terakhir baik.
  - **Pilihan**: menduduki jabatan struktural/fungsional tertentu; jabatan via Keppres; prestasi kerja luar biasa; penemuan baru bermanfaat bagi negara; diangkat jadi pejabat negara; memperoleh STTB/Ijazah; tugas belajar; dll.
  - **Pengabdian**: bagi PNS meninggal dunia atau diberhentikan hormat (pensiun BUP), syarat masa kerja: **30 tahun** atau lebih → cukup **1 bulan** dalam pangkat terakhir; **20 tahun** atau lebih → **1 tahun** dalam pangkat terakhir; **10 tahun** atau lebih → **2 tahun** dalam pangkat terakhir. Syarat tambahan: nilai PPKP baik 1 tahun terakhir, tidak pernah dijatuhi hukuman disiplin sedang/berat 1 tahun terakhir.
  - **Anumerta**: bagi PNS tewas/meninggal saat/karena menjalankan tugas, berlaku sejak tanggal PNS tewas.
- **Daftar Urut Kepangkatan (DUK)**: daftar nama PNS satu satuan organisasi berdasar tingkatan kepangkatan. Ukuran nomor urut secara berturut-turut: **pangkat, jabatan, masa kerja, latihan jabatan, pendidikan, usia**. Tidak boleh ada 2 nama dengan nomor urut sama.', 3),
('b0000000-0000-4000-8000-030500000000', 'Pengembangan dan Pola Karier Kemenkeu', '- **Manajemen Karier** Kemenkeu: pengelolaan SDM objektif, terencana, akuntabel — mencakup pengembangan karier, pengembangan kompetensi, pola karier, mutasi, promosi berdasar Sistem Merit.
- Dasar hukum manajemen karier Kemenkeu:
  1. PP Nomor 30 Tahun 2019 tentang Penilaian Kinerja PNS.
  2. PMK Nomor 146/PMK.01/2020 tentang Manajemen SDM pada Unit Organisasi Non Eselon.
  3. PMK Nomor 216/PMK.01/2018 tentang Manajemen Pengembangan SDM di Lingkungan Kemenkeu.
  4. PMK Nomor 191/PMK.01/2018 tentang Leaders Factory di Lingkungan Kemenkeu.
  5. PMK Nomor 224/PMK.01/2020 tentang Manajemen Karier di Lingkungan Kemenkeu.
  6. PMK Nomor 38 Tahun 2025 tentang Manajemen Talenta di Lingkungan Kemenkeu.
- **Tahapan Pola Karier** (PMK 224/2020):
  1. **Masa percobaan** — saat CPNS belum diangkat PNS.
  2. **Masa branding** — **2 (dua) tahun** setelah CPNS diangkat PNS; program: penguatan nilai Kemenkeu/kode etik/disiplin, pembekalan teknis jabatan, pembekalan rencana pengembangan karier individu.
  3. **Masa pengembangan karier** — setelah branding sampai paling kurang **1 tahun** menjelang BUP; via mutasi, promosi, dan/atau penugasan.
  4. **Masa menjelang pensiun** — paling kurang **1 (satu) tahun** sebelum BUP.
- **Bentuk pola karier**: horizontal, vertikal, diagonal (umum); tambahan Kemenkeu: semi horizontal & semi vertikal (Pasal 24 PMK 224/2020).
- **Jalur karier**: (1) jalur JA dan JPT; (2) jalur JF; (3) jalur perpindahan antara JA/JPT dengan JF; (4) jalur penugasan/penempatan di Unit non-Eselon Kemenkeu atau instansi luar Kemenkeu.
- **Manajemen Talenta Kemenkeu** (proses 6 tahap): Analisis Kebutuhan Talent → Identifikasi Calon Talent → Penetapan Talent → Pengembangan Talent → Retensi Talent → Evaluasi Talent.
- Standar kompetensi jabatan diatur **PermenPAN-RB Nomor 38 Tahun 2017** tentang Standar Kompetensi Jabatan Aparatur Sipil Negara.', 4),
('b0000000-0000-4000-8000-030500000000', 'Mutasi dan Promosi Kemenkeu', '- Rencana pengembangan karier disusun untuk **5 (lima) tahun**, diperinci per tahun, oleh masing-masing unit JPT Madya, disampaikan ke Setjen c.q. Biro SDM.
- **Mutasi**: bentuk pola karier horizontal/semi horizontal; berdasar penugasan organisasi atau permintaan sendiri. Pelaksanaan mutasi dalam/antar-unit JPT Madya: bagi PNS yang telah menduduki jabatan/penugasan paling singkat **2 (dua) tahun**. Diatur Pasal 31-37 PMK Nomor 224/PMK.01/2020.
- **Promosi**: bentuk pola karier vertikal/diagonal/semi vertikal; berdasar kebutuhan jenis jabatan, ketentuan manajemen talenta, pertimbangan Tim Penilai Kinerja/Panitia Seleksi. Diatur Pasal 39-43 PMK Nomor 224/PMK.01/2020.
- Faktor pertimbangan mutasi/promosi: komposisi kebutuhan pegawai; larangan konflik kepentingan; kategori jabatan; posisi boks pemetaan/nilai kompetensi & kinerja; riwayat sanksi kode etik & hukuman disiplin; rencana pengembangan karier individu; zona kerja; waktu pelaksanaan; dll.
- **Pemberhentian dari Jabatan** (bukan dari status PNS) — PNS diberhentikan dari jabatan (JA/JF/JPT) apabila: (a) mengundurkan diri dari jabatan; (b) diberhentikan sementara sebagai PNS; (c) cuti di luar tanggungan negara; (d) tugas belajar lebih dari **6 (enam) bulan**; (e) ditugaskan penuh di luar jabatan; atau (f) tidak memenuhi persyaratan jabatan. Untuk alasan (b) s.d. (e), dapat diangkat kembali sesuai jenjang JA/JF terakhir bila ada lowongan.
- Rekam jejak kode etik & hukuman disiplin jadi bahan pertimbangan mutasi/promosi (Pasal 52 PMK Nomor 224/PMK.01/2020).
- **Pemantauan & evaluasi** dilakukan setiap tahun: menjamin ketepatan pengisian/penempatan; meningkatkan kinerja & motivasi PNS; menyempurnakan rencana pengembangan karier tahun berikutnya.', 5),
('b0000000-0000-4000-8000-030500000000', 'Penilaian Kinerja Kemenkeu', '- Penilaian kinerja PNS dapat mempertimbangkan pendapat rekan setingkat & bawahan (Pasal 37 ayat (3) PP Nomor 30 Tahun 2019).
- Kemenkeu menerapkan penilaian **360 derajat** (atasan, bawahan, peer); sanksi administrasi sesuai **PP Nomor 94 Tahun 2021** tentang Disiplin PNS.
- Dasar penilaian kinerja PNS: **PP Nomor 30 Tahun 2019** (menggantikan PP Nomor 46 Tahun 2011 yang sudah dicabut).
- **KMK Nomor 300/KMK.01/2022** tentang Manajemen Kinerja di Lingkungan Kemenkeu — mengatur metode penilaian prestasi kerja, berlaku sejak **28 Juli 2022**.
- **KMK Nomor 467/KMK.01/2014** masih berlaku selama belum ada KMK terbaru penggantinya (per penyusunan modul ini belum ada penggantinya).
- Komponen penilaian: **Capaian Kinerja Pegawai (CKP)** = capaian IKU pada Kontrak Kinerja; **Nilai Perilaku (NP)**. **Nilai Kinerja Pegawai (NKP)** = penjumlahan CKP + NP (dengan pembobotan).
- Nilai Perilaku dinilai dari **6 (enam) aspek**: orientasi pelayanan, integritas, komitmen, disiplin, kerjasama, kepemimpinan.
- Periode penilaian perilaku: **Semester I** = 1 Januari s.d. 30 Juni; **Semester II** = 1 Juli s.d. 31 Desember.
- Rekomendasi kenaikan/penurunan jabatan & peringkat: **PMK Nomor 200/PMK.01/2022**.', 6),
('b0000000-0000-4000-8000-030500000000', 'Penggajian, Penghargaan & Disiplin Kemenkeu', '- **Penggajian**: selain gaji, PNS terima tunjangan kinerja & tunjangan kemahalan (Pasal 80 ayat 1 dan 2 UU Nomor 5 Tahun 2014); di Kemenkeu dibayarkan sesuai capaian kinerja masing-masing.
- **Penghargaan**: dasar Pasal 82 & 83 UU Nomor 5 Tahun 2014 — dapat berupa tanda kehormatan, kenaikan pangkat istimewa, kesempatan prioritas pengembangan kompetensi, dan/atau kesempatan hadiri acara resmi/kenegaraan.
- Tanda kehormatan diatur PP Nomor 35 Tahun 2010 (pelaksanaan UU Nomor 20 Tahun 2009 tentang Gelar, Tanda Jasa, dan Tanda Kehormatan).
- **KMK Nomor 325/KMK.01/2022** tentang Sistem Penghargaan di Lingkungan Kemenkeu — 5 (lima) jenis penghargaan: Penghargaan Nagara Dana Rakca; Penghargaan Nagara Dana Ksatria; Penghargaan Nagara Dana Abyakta; Penghargaan Tingkat Nasional; Penghargaan Nagara Dana Abisatya.
- **Disiplin** — dasar hukum utama: **PP Nomor 94 Tahun 2021** tentang Peraturan Disiplin Pegawai Negeri Sipil (berlaku juga bagi CPNS). Fraud diancam hukuman disiplin tingkat berat.
- **Tingkat & Jenis Hukuman Disiplin:**

| Tingkat | Jenis Hukuman |
|---|---|
| Ringan | (1) Teguran lisan; (2) Teguran tertulis; (3) Pernyataan tidak puas secara tertulis |
| Sedang | (1) Pemotongan tunjangan kinerja 25% selama 6 bulan; (2) Pemotongan tunjangan kinerja 25% selama 9 bulan; (3) Pemotongan tunjangan kinerja 25% selama 12 bulan |
| Berat | (1) Penurunan jabatan setingkat lebih rendah selama 12 bulan; (2) Pembebasan dari jabatan menjadi jabatan pelaksana selama 12 bulan; (3) Pemberhentian dengan hormat tidak atas permintaan sendiri sebagai PNS |

- **Contoh ambang pelanggaran jam kerja (tidak masuk kerja tanpa alasan sah, kumulatif dalam 1 tahun) — jenjang hukuman:**

| Jumlah Hari Kerja Tidak Masuk | Jenis Hukuman |
|---|---|
| 3 hari | Teguran lisan (ringan) |
| 4–6 hari | Teguran lisan (ringan) |
| 7–10 hari | Teguran lisan (ringan) |
| 11–13 hari | Potong tukin 25% selama 6 bulan (sedang) |
| 14–16 hari | Potong tukin 25% selama 9 bulan (sedang) |
| 17–20 hari | Potong tukin 25% selama 12 bulan (sedang) |
| 21–24 hari | Penurunan jabatan setingkat lebih rendah 12 bulan (berat) |
| 25–27 hari | Pembebasan dari jabatan jadi jabatan pelaksana 12 bulan (berat) |
| 28 hari atau lebih (atau 10 hari berturut-turut) | Pemberhentian dengan hormat tidak atas permintaan sendiri (berat) |

- **Tata cara penjatuhan hukuman disiplin**: pemanggilan tertulis paling lambat **7 (tujuh) hari kerja** sebelum pemeriksaan; jika tidak hadir → pemanggilan kedua paling lambat **7 (tujuh) hari kerja** berikutnya; jika tetap tidak hadir → hukuman dijatuhkan berdasar bukti/keterangan tanpa pemeriksaan. Pemeriksaan tertutup, dituangkan dalam berita acara.
- **Upaya administratif**: **keberatan** (ke atasan pejabat yang berwenang menghukum) dan **banding administratif** (ke Badan Pertimbangan Kepegawaian, khusus untuk hukuman pemberhentian dengan hormat tidak atas permintaan sendiri atau tidak dengan hormat). Hukuman yang dijatuhkan Presiden tidak dapat diajukan upaya administratif; demikian juga hukuman ringan tertentu oleh PPK.
- **Perlindungan** (Pasal 92 ayat (1) UU Nomor 5 Tahun 2014): jaminan kesehatan, jaminan kecelakaan kerja, jaminan kematian, bantuan hukum. Di Kemenkeu: BPJS (kesehatan), tunjangan risiko (kecelakaan kerja), uang duka tewas/wafat (kematian), pendampingan Bankum (bantuan hukum).', 7),
('b0000000-0000-4000-8000-030500000000', 'Cuti PNS — Dasar Hukum & Jenis Cuti', '- **Dasar hukum cuti PNS:**
  1. PP Nomor 11 Tahun 2017 stdd PP Nomor 17 Tahun 2020.
  2. Peraturan Kepala BKN Nomor 24 Tahun 2017 tentang Tata Cara Pemberian Cuti PNS.
  3. SE Menteri Keuangan Nomor SE-15/MK.1/2018 tentang Pelaksanaan Cuti bagi PNS di Lingkungan Kemenkeu.
  4. SE Menteri Keuangan Nomor SE-4/MK.1/2019 tentang Mekanisme Cuti Secara Online di Lingkungan Kemenkeu.
- **Jenis-jenis cuti PNS:**
  1. **Cuti Tahunan** — hak PNS/CPNS bekerja terus-menerus **1 (satu) tahun**; CPNS hanya berhak cuti tahunan (kecuali pertimbangan kemanusiaan). Penggunaan paling kurang **1 (satu) hari kerja**.
  2. **Cuti Besar** — hak PNS bekerja paling kurang **5 (lima) tahun** terus-menerus; untuk ibadah keagamaan, persalinan anak keempat, atau keperluan lain.
  3. **Cuti Sakit** — hak PNS sakit dan/atau PNS/CPNS wanita gugur kandungan; sakit 1–14 hari → surat keterangan sakit ke atasan; lebih dari 1–14 hari → permintaan tertulis + surat dokter; lebih dari 14 hari → surat dokter pemerintah. Diberikan paling lama **1 (satu) tahun**, dapat ditambah **6 (enam) bulan**. Gugur kandungan → cuti sakit paling lama **1,5 bulan**.
  4. **Cuti Melahirkan (Bersalin)** — hak PNS/CPNS wanita untuk persalinan anak **pertama, kedua, ketiga**; lamanya **3 (tiga) bulan** (dapat kurang dalam kondisi tertentu); persalinan anak keempat dst. menggunakan **cuti besar**.
  5. **Cuti Karena Alasan Penting** — untuk force majeur (banjir, longsor, kebakaran, gempa), keluarga inti sakit keras/meninggal, atau perkawinan; juga suami yang istrinya melahirkan/operasi sesar. Diberikan paling lama **1 (satu) bulan**.
  6. **Cuti bagi PNS Tugas Belajar** dan **Cuti bagi PNS Selesai Tugas Belajar** — hak terbatas (cuti bersama, melahirkan, dll.); cuti tahunan baru berhak jika sudah bekerja kembali sekurang-kurangnya **3 (tiga) bulan**.
  7. **Cuti di Luar Tanggungan Negara (CLTN)** — hak PNS bekerja paling kurang **5 (lima) tahun** terus-menerus, karena alasan pribadi penting & mendesak; diberikan paling lama **3 (tiga) tahun**, dapat diperpanjang paling lama **1 (satu) tahun**. PNS wanita berhak cuti besar setelah bekerja kembali paling kurang **6 (enam) tahun** terus-menerus.', 8),
('b0000000-0000-4000-8000-030500000000', 'Penangguhan Cuti Tahunan, Kesejahteraan, Gaji & Pengembangan Kompetensi', '- **Penangguhan & sisa Cuti Tahunan:**
  - Sisa cuti tahunan tahun berjalan dapat dipakai tahun berikutnya paling lama **18 (delapan belas) hari kerja** (termasuk jatah tahun berjalan).
  - Sisa yang tidak dipakai maksimal **6 (enam) hari kerja** dapat dipakai tahun berikutnya.
  - Jika tidak dipakai **2 (dua) tahun atau lebih** berturut-turut → dapat dipakai tahun berikutnya paling lama **24 (dua puluh empat) hari kerja**.
  - Dapat ditangguhkan oleh Pejabat yang Berwenang Memberikan Cuti paling lama **1 (satu) tahun** karena kepentingan dinas mendesak; hak yang ditangguhkan dapat dipakai tahun berikutnya selama **24 (dua puluh empat) hari kerja**.
- **Kesejahteraan PNS** — dasar hukum: Keppres Nomor 56 Tahun 1974.
  - Program kesejahteraan: pensiun & hari tua; asuransi kesehatan; tabungan perumahan; asuransi pendidikan putra-putri PNS.
  - Iuran wajib PNS **10% dari penghasilan**: **4¾%** untuk iuran dana pensiun; **3¼%** untuk iuran tabungan hari tua & perumahan.
  - Iuran jaminan kesehatan PNS (Perpres Nomor 75 Tahun 2019 atas perubahan Perpres Nomor 82 Tahun 2018): **4% dibayar Pemberi Kerja**, **1% dibayar peserta**.
- **Gaji PNS**: balas jasa & penghargaan atas prestasi kerja. Tiga sistem penggajian: **skala tunggal** (gaji sama untuk pangkat sama), **skala ganda** (berdasar pangkat + sifat pekerjaan + prestasi + tanggung jawab), **skala gabungan** (gaji pokok sama untuk pangkat sama + tunjangan tambahan). Selain gaji pokok, PNS dapat menerima: tunjangan keluarga, tunjangan jabatan, tunjangan pangan, tunjangan lain-lain.
- **Hak Pengembangan Kompetensi** (PP Nomor 11 Tahun 2017): pemenuhan kebutuhan kompetensi sesuai standar jabatan & rencana karier. Dilakukan paling sedikit **20 (dua puluh) jam pelajaran dalam 1 (satu) tahun**.
  - PPK wajib: menetapkan kebutuhan & rencana pengembangan kompetensi; rencana pelaksanaan; melaksanakan; dan mengevaluasi.
  - Diatur di Kemenkeu: **PMK Nomor 216/PMK.01/2018** tentang Manajemen Pengembangan SDM di Lingkungan Kemenkeu (tidak berlaku bagi pegawai yang: ditugaskan di luar Kemenkeu, diberhentikan sementara, atau cuti di luar tanggungan negara).
  - **Desain Pembelajaran Model 10:20:70**: 10% ceramah/klasikal & pelatihan teknis/jarak jauh/belajar mandiri; 20% pembelajaran kolaboratif (coaching, mentoring, benchmarking); 70% pembelajaran terintegrasi di tempat kerja (magang, praktik kerja, detasering/secondment, pertukaran pegawai, job enlargement, job enrichment).
  - **KMK Nomor 982/KMK.01/2017** — 3 (tiga) ruang lingkup pengembangan kompetensi: program pelatihan; program pendidikan; program pemanfaatan lulusan pendidikan (re-entry program).
  - Program pelatihan melalui **Analisis Kebutuhan Pembelajaran (AKP)** (PMK Nomor 45/PMK.011/2018): 2 jenis — **AKP Reguler** (terjadwal sebelum tahun pembelajaran, terdiri atas AKP Strategis, AKP Jabatan, AKP Individu) dan **AKP Insidental** (sepanjang tahun berjalan).', 9);

-- =========================================================
-- Mind Map per Bab
-- =========================================================

update chapters set mindmap = '# Bab I: Pengertian & Jabatan ASN
## Dasar Hukum
- UU 20/2023 (ganti UU 5/2014)
- Berlaku sejak diundangkan
## Pengertian ASN
- ASN = profesi PNS + PPPK
- PNS: tetap, oleh PPK
- PPPK: perjanjian kerja, jangka waktu tertentu
- Bebas intervensi politik (Ps 8-9)
## Jabatan Manajerial
- JPT (Utama, Madya, Pratama)
- Administrator
- Pengawas
- Syarat: Kompetensi Teknis/Manajerial/Sosial Kultural
- Alasan berhenti dari jabatan administrasi
## Jabatan Nonmanajerial
- Jabatan Fungsional (JF)
  - Keahlian: Utama, Madya, Muda, Pertama
  - Keterampilan: Penyelia, Mahir, Terampil, Pemula
  - Kriteria JF
  - Alasan berhenti dari JF
- Jabatan Pelaksana
## Penyetaraan Jabatan
- Eselon ke Jabatan (tabel padanan)
- Inpassing ke JF (PP 17/2020)'
where id = 'b0000000-0000-4000-8000-030100000000';

update chapters set mindmap = '# Bab II: Hak & Kewajiban ASN
## Hak Pegawai ASN
- Penghasilan
- Penghargaan motivasi
- Tunjangan & fasilitas
- Jaminan sosial
- Lingkungan kerja
- Pengembangan diri
- Bantuan hukum
## Kewajiban ASN
- Setia & taat Pancasila/UUD 1945/NKRI
- Taat perundang-undangan
- Nilai dasar & kode etik/perilaku
- Menjaga netralitas
- Bersedia ditempatkan di seluruh NKRI'
where id = 'b0000000-0000-4000-8000-030200000000';

update chapters set mindmap = '# Bab III: Kelembagaan
## Pemegang Kekuasaan
- Presiden (tertinggi)
- Delegasi ke Kementerian PAN-RB
## Kewenangan PAN-RB
- Perumusan & penetapan kebijakan strategis
- Koordinasi & sinkronisasi kebijakan
- Pengendalian kebijakan Manajemen ASN
## Tugas Teknis PAN-RB
- Koordinasi rencana kerja lembaga
- Sinkronisasi pengembangan kapasitas ASN
- Pengendalian kebijakan teknis
- Pengawasan Sistem Merit K/L'
where id = 'b0000000-0000-4000-8000-030300000000';

update chapters set mindmap = '# Bab IV: Manajemen ASN
## Dasar & Prinsip
- Sistem Merit
- Manajemen PNS vs PPPK
- Delegasi Presiden ke Pejabat Berwenang
## Pengadaan & Pengangkatan PNS
- Tahapan pengadaan
- Seleksi (administrasi, kompetensi dasar, kompetensi bidang)
- Masa percobaan CPNS 1 tahun
- Syarat & alasan berhenti CPNS
## Pangkat & Jabatan
- Pengembangan karier & promosi
- Pengisian JPT (Utama/Madya/Pratama)
  - Instansi Pusat
  - Instansi Daerah
- Masa jabatan JPT (5 tahun)
## Manajemen PPPK
- Kebutuhan & pengadaan
- Masa perjanjian kerja
- PHK hormat / hormat tidak atas permintaan sendiri / tidak hormat
- Perlindungan PPPK
## ASN Jadi Pejabat Negara
- Diberhentikan sementara (Ps 58)
- Wajib mundur jadi calon (Ps 59)
## Mutasi, Gaji, Penghargaan
- Pejabat penetap mutasi
- Tunjangan kinerja & kemahalan
- Bentuk penghargaan
## Organisasi & Sengketa
- Korps profesi ASN
- Sistem Informasi ASN
- Keberatan & banding administratif
## Pemberhentian ASN
- Dengan hormat
- Hormat tidak atas permintaan sendiri
- Tidak dengan hormat
- Diberhentikan sementara
- Jaminan pensiun
## Pensiun ASN — BUP
- 58 tahun: administrasi, ahli muda/pertama, keterampilan
- 60 tahun: JPT, ahli madya
- 65 tahun: ahli utama'
where id = 'b0000000-0000-4000-8000-030400000000';

update chapters set mindmap = '# Bab V: Implementasi UU 20/2023 di Kemenkeu
## Sistem Merit & Talenta
- Reformasi birokrasi 2007
- PMK 38/2025 Manajemen Talenta
- 8 komponen Manajemen ASN
## Penyusunan Kebutuhan & Pengadaan
- PMK 37/PMK.01/2020 kebutuhan JF
- Diklat dasar CPNS (Perlan 1/2021)
## Pangkat & Jabatan
- Job Family (KMK 461/2013)
- Pola Mutasi Jabatan Karier (KMK 7/2023)
- Bentuk pola karier (horizontal/vertikal/diagonal/semi)
- 4 jenis kenaikan pangkat (reguler, pilihan, pengabdian, anumerta)
- DUK
## Pengembangan & Pola Karier
- Dasar hukum (PP 30/2019, PMK 146/216/191/224/2020, PMK 38/2025)
- Tahapan: percobaan, branding, pengembangan, menjelang pensiun
- Jalur karier
- Manajemen Talenta (6 tahap)
## Mutasi dan Promosi
- Rencana pengembangan karier 5 tahun
- Mekanisme mutasi (Ps 31-37 PMK 224/2020)
- Mekanisme promosi (Ps 39-43 PMK 224/2020)
- Pemberhentian dari jabatan
- Pemantauan & evaluasi
## Penilaian Kinerja
- PP 30/2019, 360 derajat
- KMK 300/2022 Manajemen Kinerja
- CKP + NP = NKP
- 6 aspek Nilai Perilaku
- Periode semester I & II
## Penggajian & Penghargaan
- Tunjangan kinerja & kemahalan
- Tanda kehormatan (PP 35/2010)
- KMK 325/2022 Sistem Penghargaan (5 jenis)
## Disiplin
- PP 94/2021
- Tingkat: ringan/sedang/berat
- Jenis hukuman & pelanggaran jam kerja
- Tata cara pemanggilan & pemeriksaan
- Upaya administratif (keberatan, banding)
- Perlindungan (BPJS, tunjangan risiko, uang duka, bankum)
## Cuti PNS
- Dasar hukum (PP 11/2017, Perka BKN 24/2017)
- Jenis: tahunan, besar, sakit, melahirkan, alasan penting, tugas belajar, CLTN
- Penangguhan & sisa cuti tahunan
## Kesejahteraan, Gaji, Kompetensi
- Keppres 56/1974 (iuran 10%: 4,75% pensiun + 3,25% THT)
- Iuran jaminan kesehatan 4%+1%
- Sistem gaji: tunggal/ganda/gabungan
- Pengembangan kompetensi 20 jam/tahun
- Model pembelajaran 10:20:70
- AKP Reguler & Insidental'
where id = 'b0000000-0000-4000-8000-030500000000';
