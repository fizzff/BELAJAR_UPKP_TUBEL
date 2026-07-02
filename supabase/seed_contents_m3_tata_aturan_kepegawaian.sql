-- Materi lengkap Modul Tata Aturan Kepegawaian (M3), diparse dari materi/3. Tata Aturan Kepegawaian.pdf
-- Menggantikan placeholder yang dibuat di seed.sql

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
('b0000000-0000-4000-8000-030100000000', 'Pendahuluan', 'Setelah disetujui oleh DPR-RI pada Rapat Paripurna tanggal 3 Oktober 2023, Rancangan Undang-Undang (RUU) Aparatur Sipil Negara (ASN) pada 31 Oktober telah disahkan oleh Presiden Joko Widodo menjadi **Undang-Undang Nomor 20 Tahun 2023 Tentang Aparatur Sipil Negara**.

Undang-undang ini menggantikan Undang-Undang Nomor 5 Tahun 2014 tentang Aparatur Sipil Negara. Undang-Undang ASN ini mulai berlaku pada tanggal diundangkan (Pasal 77 UU Nomor 20 Tahun 2023).

Sebagaimana telah disebutkan dalam ketentuan penutup Undang-Undang Nomor 20 Tahun 2023, semua peraturan perundang-undangan yang merupakan peraturan pelaksanaan dari Undang-Undang Nomor 5 Tahun 2014 tentang Aparatur Sipil Negara dinyatakan masih tetap berlaku sepanjang tidak bertentangan dan belum diganti berdasarkan Undang-Undang ini.', 1),
('b0000000-0000-4000-8000-030100000000', 'A. Pengertian Aparatur Sipil Negara', 'Aparatur Sipil Negara (disingkat **ASN**) adalah profesi bagi Pegawai Negeri Sipil dan pegawai pemerintah dengan perjanjian kerja yang bekerja pada instansi pemerintah. Pegawai ASN terdiri dari Pegawai Negeri Sipil (PNS) dan Pegawai Pemerintah dengan Perjanjian Kerja (PPPK) yang diangkat oleh pejabat pembina kepegawaian dan diserahi tugas dalam suatu jabatan pemerintahan atau diserahi tugas negara lainnya dan diberikan penghasilan berdasarkan peraturan perundang-undangan.

**Pegawai Negeri Sipil** yang selanjutnya disingkat **PNS** adalah warga negara Indonesia yang memenuhi syarat tertentu, diangkat sebagai Pegawai ASN secara tetap oleh pejabat pembina kepegawaian untuk menduduki jabatan pemerintahan.

Adapun **PPPK** merupakan warga negara Indonesia yang memenuhi syarat tertentu yang diangkat berdasarkan perjanjian kerja untuk jangka waktu tertentu dalam rangka melaksanakan tugas pemerintahan dan/atau menduduki jabatan pemerintahan.

Pegawai ASN berkedudukan sebagai unsur aparatur negara, yang melaksanakan kebijakan yang ditetapkan oleh pimpinan Instansi Pemerintah, harus bebas dari pengaruh dan intervensi semua golongan dan partai politik (**Pasal 8 dan 9 UU Nomor 20 Tahun 2023**).', 2),
('b0000000-0000-4000-8000-030100000000', 'B. Jabatan Aparatur Sipil Negara', 'Jabatan dalam ASN terdiri atas 2 (dua) jabatan yaitu jabatan manajerial dan jabatan nonmanajerial.', 3),
('b0000000-0000-4000-8000-030100000000', '1. Jabatan Manajerial', 'Jabatan Manajerial adalah sekelompok jabatan yang memiliki fungsi memimpin unit organisasi dan memiliki pegawai yang berkedudukan langsung di bawahnya untuk mencapai tujuan organisasi. Jabatan Manajerial terdiri atas:

a. **Jabatan Pimpinan Tinggi (JPT)**
Jabatan Pimpinan Tinggi terdiri atas JPT Utama, JPT Madya, dan JPT Pratama yang merupakan jabatan manajerial tingkat tinggi yang bertanggung jawab dan berperan dalam mengelola, memotivasi, dan mendukung pengembangan Pegawai ASN, mendayagunakan sumber daya serta mengambil keputusan menurut tingkatan jabatannya untuk mencapai tujuan organisasi.

b. **Jabatan Administrator**
Merupakan Jabatan Manajerial tingkat menengah yang bertanggung jawab dan berperan dalam mengelola, memotivasi, dan mendukung pengembangan Pegawai ASN, memimpin dan mengoordinasikan pelaksanaan strategi pencapaian tujuan organisasi serta pelayanan publik dan administrasi.

c. **Jabatan Pengawas**
Merupakan Jabatan Manajerial tingkat dasar yang bertanggung jawab dan berperan dalam mengelola, memotivasi, dan mendukung pengembangan Pegawai ASN, memimpin, dan mengoordinasikan pelaksanaan strategi pencapaian tujuan organisasi serta pelayanan publik dan administrasi.

Setiap jabatan sebagaimana dimaksud ditetapkan sesuai dengan kompetensi dan persyaratan jabatan (**Pasal 16 UU Nomor 20 Tahun 2023**). Dalam **Peraturan Pemerintah Republik Indonesia Nomor 11 Tahun 2017** Tentang Manajemen Pegawai Negeri Sipil sebagaimana telah diubah dengan **Peraturan Pemerintah Republik Indonesia Nomor 17 Tahun 2020** Tentang Perubahan Atas Peraturan Pemerintah Nomor 11 Tahun 2017 Tentang Manajemen Pegawai Negeri Sipil (yang selanjutnya disebut PP 11/2017 stdd PP 17/2020) disebutkan beberapa ketentuan tentang jabatan administrasi yaitu bahwa setiap pejabat administrasi tidak diperbolehkan merangkap jabatan dengan Jabatan Fungsional dan harus menjamin Akuntabilitas Jabatan, yaitu meliputi terlaksananya:

a. seluruh kegiatan yang sudah direncanakan dengan baik dan efisien sesuai standar operasional prosedur dan terselenggaranya peningkatan kinerja secara berkesinambungan, bagi Jabatan administrator;
b. pengendalian seluruh kegiatan pelaksanaan yang dilakukan oleh pejabat pelaksana sesuai standar operasional prosedur, bagi Jabatan pengawas; dan
c. kegiatan sesuai dengan standar operasional prosedur, bagi Jabatan pelaksana.

Untuk dapat diangkat dalam jabatan administrasi, PNS harus memenuhi beberapa persyaratan. Salah satu persyaratan yaitu memiliki Kompetensi Teknis, Kompetensi Manajerial, dan Kompetensi Sosial Kultural sesuai dengan standar kompetensi yang ditetapkan. Kompetensi Teknis diukur dari tingkat dan spesialisasi pendidikan, pelatihan teknis fungsional, dan pengalaman bekerja secara teknis. Kompetensi Manajerial diukur dari tingkat pendidikan, pelatihan struktural atau manajemen, dan pengalaman kepemimpinan. Kompetensi Sosial Kultural diukur dari pengalaman kerja berkaitan dengan masyarakat majemuk dalam hal agama, suku, dan budaya sehingga memiliki wawasan kebangsaan.

Dalam PP 11/2017 stdd PP 17/2020 dijelaskan bahwa PNS dapat diberhentikan dari jabatan administrasi apabila:

a. mengundurkan diri dari Jabatan;
b. diberhentikan sementara sebagai PNS;
c. menjalani cuti di luar tanggungan negara;
d. menjalani tugas belajar lebih dari 6 (enam) bulan;
e. ditugaskan secara penuh di luar Jabatan Administrasi; atau
f. tidak memenuhi persyaratan Jabatan.', 4),
('b0000000-0000-4000-8000-030100000000', '2. Jabatan Nonmanajerial', 'Jabatan nonmanajerial adalah sekelompok jabatan yang mengutamakan kompetensi yang bersifat teknis sesuai bidangnya dan tidak memiliki tanggung jawab langsung dalam mengelola dan mengawasi kinerja pegawai. Jabatan nonmanajerial terdiri atas:

a. **Jabatan Fungsional**
Jabatan Fungsional (JF) adalah sekelompok jabatan yang berisi fungsi dan tugas berkaitan dengan pelayanan fungsional yang berdasarkan pada keahlian dan keterampilan tertentu. Jabatan fungsional dalam ASN terdiri atas jabatan fungsional keahlian dan jabatan fungsional keterampilan. Untuk jabatan fungsional keahlian terdiri atas Ahli utama, Ahli madya, Ahli muda dan Ahli pertama. Sementara jabatan fungsional keterampilan terdiri atas Penyelia, Mahir, Terampil, dan Pemula.

Berbeda dengan Jabatan Administrasi, Jabatan Fungsional ditetapkan dengan kriteria sebagai berikut.

1) fungsi dan tugasnya berkaitan dengan pelaksanaan fungsi dan tugas Instansi Pemerintah;
2) mensyaratkan keahlian atau keterampilan tertentu yang dibuktikan dengan sertifikasi dan/atau penilaian tertentu;
3) dapat disusun dalam suatu jenjang Jabatan berdasarkan tingkat kesulitan dan kompetensi;
4) pelaksanaan tugas yang bersifat mandiri dalam menjalankan tugas profesinya; dan
5) kegiatannya dapat diukur dengan satuan nilai atau akumulasi nilai butir-butir kegiatan dalam bentuk angka kredit.

Pengangkatan PNS ke dalam Jabatan Fungsional keahlian maupun Jabatan Fungsional keterampilan dilakukan melalui mekanisme pengangkatan pertama, perpindahan dari Jabatan lain, penyesuaian dan/atau promosi dengan memperhatikan pemenuhan syarat-syarat pengangkatan dalam jabatan fungsional.

Demikian pula PNS dapat diberhentikan dari Jabatan Fungsional apabila:

1) mengundurkan diri dari Jabatan;
2) diberhentikan sementara sebagai PNS;
3) menjalani cuti di luar tanggungan negara;
4) menjalani tugas belajar lebih dari 6 (enam) bulan;
5) ditugaskan secara penuh di luar JF; atau
6) tidak memenuhi persyaratan Jabatan.

PNS yang diberhentikan dari Jabatan Fungsional karena alasan huruf (b) s.d. huruf (e) dapat diangkat kembali sesuai dengan jenjang Jabatan Fungsional terakhir apabila tersedia lowongan Jabatan.

b. **Jabatan Pelaksana**
Bertanggung jawab memberikan pelayanan dan melaksanakan pekerjaan yang bersifat rutin dan sederhana.', 5),
('b0000000-0000-4000-8000-030100000000', 'C. Penyetaraan Jabatan PNS', 'Penyetaraan jabatan PNS adalah sebagai berikut:

1. Pada saat UU Nomor 5 Tahun 2014 tentang Aparatur Sipil Negara mulai berlaku, terhadap jabatan PNS dilakukan penyetaraan:
   a. jabatan eselon Ia kepala lembaga pemerintah nonkementerian setara dengan jabatan pimpinan tinggi utama;
   b. jabatan eselon Ia dan eselon Ib setara dengan jabatan pimpinan tinggi madya;
   c. jabatan eselon II setara dengan jabatan pimpinan tinggi pratama;
   d. jabatan eselon III setara dengan jabatan administrator;
   e. jabatan eselon IV setara dengan jabatan pengawas; dan
   f. jabatan eselon V dan fungsional umum setara dengan jabatan pelaksana.
2. Pada saat Peraturan Pemerintah Nomor 17 Tahun 2020 mulai berlaku, dalam hal diperlukan penataan birokrasi penyesuaian jabatan ke dalam Jabatan Fungsional dapat dilakukan penyetaraan jabatan. Penyetaraan jabatan dimaksud adalah pengangkatan Pejabat Administrasi ke dalam Jabatan Fungsional melalui Penyesuaian/Inpassing pada jabatan fungsional yang setara. Penyetaraan jabatan diatur dengan Peraturan Menteri.', 6);

-- =========================================================
-- Bab II: Hak dan Kewajiban ASN
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-030200000000', 'A. Hak pegawai ASN', 'Pegawai ASN berhak memperoleh penghargaan dan pengakuan berupa materiel dan/atau nonmateriel yang terdiri atas:

1. Penghasilan;
2. Penghargaan yang bersifat motivasi;
3. Tunjangan dan fasilitas;
4. Jaminan sosial;
5. Lingkungan kerja;
6. Pengembangan diri; dan
7. Bantuan hukum.', 1),
('b0000000-0000-4000-8000-030200000000', 'B. Kewajiban Aparatur Sipil Negara (ASN)', 'Kewajiban ASN adalah:

1. setia dan taat kepada Pancasila, UUD Tahun 1945, NKRI, dan pemerintah yang sah;
2. menaati ketentuan peraturan perundang-undangan;
3. melaksanakan nilai dasar ASN dan kode etik dan kode perilaku ASN;
4. menjaga netralitas;
5. bersedia ditempatkan di seluruh wilayah NKRI dan perwakilan NKRI yang berkedudukan di luar wilayah Indonesia.', 2);

-- =========================================================
-- Bab III: Kelembagaan
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-030300000000', null, 'Presiden merupakan pemegang kekuasaan pemerintahan tertinggi dalam kebijakan, pembinaan profesi, dan Manajemen Aparatur Sipil Negara (ASN). Untuk menyelenggarakan kekuasaan dimaksud, Presiden mendelegasikan kepada **Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi (PAN-RB)**. Pendelegasian tersebut berkaitan dengan kewenangan perumusan dan penetapan kebijakan strategis, koordinasi dan sinkronisasi kebijakan, dan pengendalian kebijakan Manajemen ASN secara nasional.

Secara lebih detil, Kementerian PAN-RB mengoordinasikan rencana kerja lembaga yang berkaitan dengan penyelenggaraan Manajemen ASN serta melakukan sinkronisasi pengendalian tugas dan fungsi pengembangan kapasitas dan pembelajaran ASN. Kementerian PAN-RB juga melakukan pengendalian pelaksanaan kebijakan teknis Manajemen ASN. Selain hal di atas, Kementerian PAN-RB juga melakukan pengawasan penerapan Sistem Merit pada Kementerian/Lembaga.', 1);
