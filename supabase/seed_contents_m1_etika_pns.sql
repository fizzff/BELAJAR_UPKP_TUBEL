-- Materi lengkap Modul Etika PNS (M1), diparse dari materi/1. Etika PNS.pdf
-- Menggantikan placeholder yang dibuat di seed.sql

delete from contents where chapter_id in (
  'b0000000-0000-4000-8000-010100000000',
  'b0000000-0000-4000-8000-010200000000',
  'b0000000-0000-4000-8000-010300000000',
  'b0000000-0000-4000-8000-010400000000',
  'b0000000-0000-4000-8000-010500000000',
  'b0000000-0000-4000-8000-010600000000',
  'b0000000-0000-4000-8000-010700000000',
  'b0000000-0000-4000-8000-010800000000',
  'b0000000-0000-4000-8000-010900000000',
  'b0000000-0000-4000-8000-011000000000'
);

-- =========================================================
-- Bab A: Pengantar
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-010100000000', null, 'Etika merupakan fondasi utama dalam membentuk karakter, integritas, dan profesionalisme setiap individu, terlebih bagi Pegawai Negeri Sipil (PNS) yang memegang amanah sebagai pelayan publik dan pengelola keuangan negara. Dalam menjalankan tugas dan fungsinya, PNS tidak hanya dituntut untuk bekerja secara efektif dan efisien, tetapi juga menjunjung tinggi nilai-nilai moral, hukum, dan kepatutan yang menjadi landasan perilaku di lingkungan birokrasi.', 1);

-- =========================================================
-- Bab B: Prinsip-Prinsip Moral PNS
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-010200000000', null, 'Dalam kepemerintahan yang baik (good governance), PNS bertugas untuk memberikan pelayanan prima kepada masyarakat. Untuk mewujudkan PNS yang mampu memberikan pelayanan prima, Dr. A. Sonny Keraf (2002) menyebutkan ada 7 (tujuh) prinsip moral yang harus dimiliki dan dihayati oleh PNS yaitu:', 1),
('b0000000-0000-4000-8000-010200000000', '1. Profesionalisme', 'Prinsip ini menuntut setiap pejabat publik dalam birokrasi pemerintah untuk bertindak secara profesional sesuai dengan kemampuan dan keahlian yang dimiliki, berdasarkan peraturan perundang-undangan yang berlaku, dan mempunyai komitmen moral yang tinggi untuk membela kepentingan publik. Profesionalisme juga menuntut agar pejabat publik dalam birokrasi harus konsekuen dan konsisten dalam menjalankan profesinya. Hal ini berarti kalau dengan kesadaran sendiri memilih menjadi aparat birokrat harus konsekuen dan konsisten menjalani profesinya dengan segala konsekuensinya, termasuk penghasilannya yang relatif tidak besar.', 2),
('b0000000-0000-4000-8000-010200000000', '2. Integritas Moral yang Tinggi', 'Prinsip ini menuntut setiap pejabat publik dalam birokrasi untuk bertindak sesuai dengan prinsip dan menjaga nama baik sebagai seorang pejabat publik yang wajib melaksanakan tugasnya sebaik-baiknya demi melayani kepentingan publik. Pejabat publik dituntut untuk tidak dikendalikan oleh pihak lain untuk menyalahgunakan kekuasaan dan wewenangnya dengan merugikan kepentingan publik.', 3),
('b0000000-0000-4000-8000-010200000000', '3. Tanggung Jawab terhadap Kepentingan Publik', 'Prinsip ini menegaskan bahwa kepentingan publik adalah segala-galanya karena kepentingan publik adalah nilai tertinggi yang tidak dapat digantikan dan tidak dapat dikalahkan dengan hal yang lainnya termasuk uang atau jabatan yang lebih tinggi. Seorang aparat birokrat termasuk PNS memilih profesi tersebut bukan untuk memperkaya dirinya dan mencari kedudukan dan jabatan. Setiap aparat birokrat pada dasarnya memilih profesi PNS karena didorong oleh keinginan luhur untuk melayani kepentingan publik. Menjadi aparat birokrat merupakan panggilan tugas untuk mengabdi kepada kepentingan publik, bangsa, dan negara.', 4),
('b0000000-0000-4000-8000-010200000000', '4. Berpihak kepada Kebenaran dan Kejujuran', 'Prinsip ini menuntut setiap pejabat publik untuk selalu mempunyai sikap yang salah adalah salah, yang benar adalah benar. Oleh karena itu, setiap orang harus selalu dilayani sesuai dengan prosedur dan ketentuan yang berlaku, demi mempertahankan kebenaran dan kejujuran, karena kejujuran dan kebenaran merupakan prinsip yang paling pokok yang harus melekat pada penyelenggara negara termasuk penyelenggara pemerintahan.', 5),
('b0000000-0000-4000-8000-010200000000', '5. Bertindak secara Adil', 'Prinsip ini memperlakukan semua orang secara sama tanpa membeda-bedakan, tanpa diskriminasi atas dasar agama, ras, suku, jenis kelamin, dan seterusnya. Sebagai pejabat publik harus netral dan membela yang benar sesuai dengan prosedur dan ketentuan yang berlaku. Adanya prinsip "yang datang pertama harus pertama dilayani" adalah perwujudan prinsip keadilan dalam birokrasi, karena tidak ada yang diistimewakan atau diberi perlakuan khusus. Keadilan juga menuntut agar setiap pejabat publik mengantisipasi kerugian yang ditimbulkan oleh pihak tertentu dengan baik, sehingga pelanggaran harus dikenakan sanksi sesuai dengan ketentuan yang berlaku.', 6),
('b0000000-0000-4000-8000-010200000000', '6. Jangan Menghalalkan Segala Cara untuk Mencapai Tujuan', 'Prinsip ini penting karena birokrasi kita dianggap "bisa diatur" dalam arti melakukan manipulasi untuk mencapai tujuan yang menyimpang yang merugikan kepentingan publik yang tidak sesuai dengan nilai-nilai moral. Birokrasi harus melayani publik dengan baik dan benar sesuai dengan sistem dan prosedur yang berlaku agar kepentingan masyarakat tidak dirugikan.', 7),
('b0000000-0000-4000-8000-010200000000', '7. Jangan Lakukan pada Orang Lain Apa yang Anda Sendiri Tidak Mau Perbuatan tersebut Dilakukan pada Anda', 'Prinsip ini harus dipegang teguh birokrasi karena masyarakat selalu ingin dilayani secara baik sesuai dengan sistem dan prosedur yang berlaku. Jangan mempersulit orang lain karena Anda sendiri tidak ingin dipersulit. Jangan minta sesuatu untuk pelayanan publik yang Anda berikan karena Anda sendiri tidak ingin diperlakukan demikian, karena PNS bertugas memberikan pelayanan publik yang prima kepada masyarakat.', 8);

-- =========================================================
-- Bab C: Pengertian Etika
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-010300000000', null, 'Secara etimologi, etika berasal dari bahasa Yunani kuno, yakni "ethos" yang berarti adat istiadat atau kebiasaan hidup yang dianggap baik oleh kalangan atau masyarakat tertentu. Sedangkan Kamus Besar Bahasa Indonesia mengartikan etika sebagai:

1. sistem nilai dan norma moral yang menjadi pegangan bagi seseorang atau sekelompok orang dalam mengatur tingkah lakunya;
2. ilmu tentang apa yang baik dan apa yang buruk dan tentang hak dan kewajiban moral;
3. kumpulan asas atau nilai moral (kode etik).

Etika biasanya berkaitan erat dengan kata moral yang merupakan istilah dari bahasa Latin, yaitu "Mos" dan dalam bentuk jamaknya "Mores", yang berarti juga adat kebiasaan atau cara hidup seseorang dengan melakukan perbuatan yang baik (kesusilaan), dan menghindari hal-hal tindakan yang buruk. Etika dan moral kurang lebih memiliki pengertian yang sama. Untuk pembahasan materi selanjutnya, etika PNS diartikan sebagai kode etik PNS.', 1);

-- =========================================================
-- Bab D: Kode Etik PNS
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-010400000000', null, 'Berdasarkan UU Nomor 20 tahun 2023 tentang ASN pada pasal 4 ayat (1) disebutkan bahwa kode etik dan kode perilaku bertujuan untuk menjaga martabat dan kehormatan ASN serta kepentingan bangsa dan negara.

Kode etik dan kode perilaku merupakan seperangkat norma, nilai, dan standar moral yang mengatur bagaimana seorang ASN seharusnya bersikap dan bertindak dalam menjalankan tugasnya. Tujuan utama dari keberadaan kode etik dan kode perilaku ini adalah untuk:', 1),
('b0000000-0000-4000-8000-010400000000', '1. Menjaga martabat ASN', '- ASN adalah wajah pemerintah di mata publik. Oleh karena itu, setiap tindakan, ucapan, dan keputusan ASN harus mencerminkan integritas, kejujuran, dan tanggung jawab.
- Kode etik membantu ASN memahami batas-batas moral dan profesional, sehingga tidak terjebak dalam perilaku menyimpang atau tercela yang bisa merusak reputasi pribadi maupun institusi.', 2),
('b0000000-0000-4000-8000-010400000000', '2. Menjaga kehormatan profesi ASN', '- ASN sebagai profesi harus dijalankan dengan menjunjung tinggi standar etika yang luhur. Hal ini penting agar kepercayaan masyarakat terhadap birokrasi tetap terjaga.
- Perilaku yang tidak etis dari satu ASN saja bisa berdampak buruk terhadap citra seluruh instansi pemerintah.', 3),
('b0000000-0000-4000-8000-010400000000', '3. Melindungi kepentingan bangsa dan negara', '- ASN bekerja bukan untuk kepentingan pribadi, kelompok, atau golongan tertentu, melainkan untuk melayani masyarakat dan menjaga kepentingan publik.
- Dengan berpegang pada kode etik, ASN diharapkan mampu bertindak adil, netral, bebas dari konflik kepentingan, dan tidak menyalahgunakan kewenangannya, sehingga kebijakan dan tindakan yang diambil benar-benar berpihak pada kepentingan nasional.

Pegawai Negeri Sipil disamping wajib melaksanakan dan menerapkan kode etik PNS, juga wajib menjunjung tinggi nilai-nilai dasar bagi Pegawai Negeri Sipil seperti yang diatur dalam Pasal 3 UU Nomor 20 tahun 2023, meliputi antara lain:

1. berorientasi pelayanan;
2. akuntabel;
3. kompeten;
4. harmonis;
5. loyal;
6. adaptif; dan
7. kolaboratif.

Nilai-nilai dasar bagi Pegawai Negeri Sipil merupakan pedoman, tingkah laku, dan perbuatan yang berlaku bagi seluruh Pegawai Negeri Sipil tanpa membedakan di mana Pegawai Negeri Sipil yang bersangkutan bekerja. Nilai-nilai dasar ini wajib dijunjung tinggi karena nilai-nilai yang terkandung di dalamnya merupakan nilai-nilai yang hidup dan berkembang dalam kehidupan masyarakat, bangsa, negara, dan pemerintah.', 4),
('b0000000-0000-4000-8000-010400000000', 'Penjabaran Nilai Dasar ke dalam Kode Etik dan Kode Perilaku ASN', 'Pada Pasal 4 ayat (2) UU Nomor 20 tahun 2023, Nilai dasar ASN tersebut dijabarkan dalam kode etik dan kode perilaku ASN, sebagai berikut:

1. berorientasi pelayanan, yaitu komitmen memberikan pelayanan prima demi kepuasan masyarakat, meliputi:
   - memahami dan memenuhi kebutuhan masyarakat;
   - ramah, cekatan, solutif, dan dapat diandalkan; dan
   - melakukan perbaikan tiada henti.
2. Akuntabel, yaitu bertanggung jawab atas kepercayaan yang diberikan, meliputi:
   - melaksanakan tugas dengan jujur, bertanggung jawab, cermat, disiplin, dan berintegritas tinggi;
   - menggunakan kekayaan dan barang milik negara secara bertanggung jawab, efektif, dan efisien; dan
   - tidak menyalahgunakan kewenangan jabatan.
3. kompeten, yaitu terus belajar dan mengembangkan kapabilitas; meliputi:
   - meningkatkan kompetensi diri untuk menjawab tantangan yang selalu berubah;
   - membantu orang lain belajar; dan
   - melaksanakan tugas dengan kualitas terbaik.
4. harmonis, yaitu saling peduli dan menghargai perbedaan; meliputi:
   - menghargai setiap orang tanpa membedakan latar belakang;
   - suka menolong; dan
   - membangun lingkungan kerja yang kondusif.
5. loyal, yaitu berdedikasi dan mengutamakan kepentingan bangsa dan bernegara; meliputi:
   - memegang teguh ideologi Pancasila, Undang-Undang Dasar Negara Republik Indonesia Tahun 1945, setia kepada Negara Kesatuan Republik Indonesia, dan pemerintahan yang sah;
   - menjaga nama baik ASN, instansi, dan negara; dan
   - menjaga rahasia jabatan dan negara.
6. adaptif, yaitu terus berinovasi dan antusias dalam menggerakkan serta menghadapi perubahan; meliputi:
   - cepat menyesuaikan diri menghadapi perubahan;
   - terus berinovasi dan mengembangkan kreativitas; dan
   - bertindak proaktif.
7. kolaboratif, yaitu membangun kerja sama yang sinergis, meliputi:
   - memberi kesempatan kepada berbagai pihak untuk berkontribusi;
   - terbuka dalam bekerja sama untuk menghasilkan nilai tambah; dan
   - menggerakkan pemanfaatan berbagai sumber daya untuk tujuan bersama.', 5),
('b0000000-0000-4000-8000-010400000000', 'Dasar Hukum: PP No. 42 Tahun 2004', 'Pengaturan tentang kode etik PNS juga mengacu kepada Peraturan Pemerintah No. 42 Tahun 2004 tentang Pembinaan Jiwa Korps dan Kode Etik PNS. Berdasarkan Pasal 1 ayat 2 PP tersebut, Kode Etik Pegawai Negeri Sipil adalah pedoman sikap, tingkah laku, dan perbuatan Pegawai Negeri Sipil dalam melaksanakan tugasnya dan pergaulan hidup sehari-hari. Kode etik PNS wajib dilaksanakan PNS di seluruh wilayah Indonesia.

Dalam pasal 7 PP Nomor 42 Tahun 2004 ditegaskan bahwa dalam pelaksanaan tugas kedinasan dan kehidupan sehari-hari, Pegawai Negeri Sipil wajib bersikap dan berpedoman pada etika dalam bernegara, dalam penyelenggaraan pemerintahan, dalam berorganisasi, dalam bermasyarakat, terhadap diri sendiri, dan terhadap sesama Pegawai Negeri Sipil. Adapun butir-butir Etika Pegawai Negeri Sipil tersebut adalah sebagai berikut:', 6),
('b0000000-0000-4000-8000-010400000000', '1. Etika Pegawai Negeri Sipil dalam Bernegara', '- Melaksanakan sepenuhnya Pancasila dan Undang-Undang Dasar 1945;
- Mengangkat harkat dan martabat bangsa dan Negara;
- Menjadi perekat dan pemersatu bangsa dalam Negara Kesatuan Republik Indonesia;
- Menaati semua peraturan perundang-undangan yang berlaku dalam melaksanakan tugas;
- Akuntabel dalam melaksanakan tugas penyelenggaraan pemerintahan yang bersih dan berwibawa;
- Tanggap, terbuka, jujur, dan akurat, serta tepat waktu dalam melaksanakan setiap kebijakan dan program pemerintah;
- Menggunakan atau memanfaatkan semua sumber daya negara secara efisien dan efektif;
- Tidak memberikan kesaksian palsu atau keterangan yang tidak benar.', 7),
('b0000000-0000-4000-8000-010400000000', '2. Etika Pegawai Negeri Sipil dalam Berorganisasi', '- Melaksanakan tugas dan wewenang sesuai ketentuan yang berlaku;
- Menjaga informasi yang bersifat rahasia;
- Melaksanakan setiap kebijakan yang ditetapkan oleh pejabat yang berwenang;
- Membangun etos kerja untuk meningkatkan kinerja organisasi;
- Menjalin kerja sama secara kooperatif dengan unit kerja lain yang terkait dalam rangka pencapaian tujuan;
- Memiliki kompetensi dalam pelaksanaan tugas;
- Patuh dan taat terhadap standar operasional dan tata kerja;
- Mengembangkan pemikiran secara kreatif dan inovatif dalam rangka peningkatan kinerja organisasi;
- Berorientasi pada upaya peningkatan kualitas kerja.', 8),
('b0000000-0000-4000-8000-010400000000', '3. Etika Pegawai Negeri Sipil dalam Bermasyarakat', '- Mewujudkan pola hidup sederhana;
- Memberikan pelayanan dengan empati, hormat dan santun, tanpa pamrih, dan tanpa unsur pemaksaan;
- Memberikan pelayanan secara cepat, tepat, terbuka, dan adil serta tidak diskriminatif;
- Tanggap terhadap keadaan lingkungan masyarakat;
- Berorientasi kepada peningkatan kesejahteraan masyarakat dalam melaksanakan tugas.', 9),
('b0000000-0000-4000-8000-010400000000', '4. Etika Pegawai Negeri Sipil terhadap Diri Sendiri', '- Jujur dan terbuka serta tidak memberikan informasi yang tidak benar;
- Bertindak dengan penuh kesungguhan dan ketulusan;
- Menghindari konflik kepentingan pribadi, kelompok, maupun golongan;
- Berinisiatif untuk meningkatkan kualitas pengetahuan, kemampuan, keterampilan, dan sikap;
- Memiliki daya juang yang tinggi;
- Memelihara kesehatan jasmani dan rohani;
- Menjaga keutuhan dan keharmonisan keluarga;
- Berpenampilan sederhana, rapi, dan sopan.', 10),
('b0000000-0000-4000-8000-010400000000', '5. Etika Pegawai Negeri Sipil terhadap Sesama Pegawai Negeri Sipil', '- Saling menghormati sesama warga negara yang memeluk agama/kepercayaan yang berlainan;
- Memelihara rasa persatuan dan kesatuan antarsesama Pegawai Negeri Sipil;
- Saling menghormati antara teman sejawat baik secara vertikal maupun horizontal dalam suatu unit kerja, instansi, maupun antar instansi;
- Menghargai perbedaan pendapat;
- Menjunjung tinggi harkat dan martabat Pegawai Negeri Sipil;
- Menjaga dan menjalin kerja sama yang kooperatif antar sesama Pegawai Negeri Sipil;
- Berhimpun dalam satu wadah Korps Pegawai Republik Indonesia yang menjamin terwujudnya Pegawai Negeri Sipil dalam memperjuangkan hak-haknya.', 11);

-- =========================================================
-- Bab E: Kode Etik Instansi dan Kode Etik Profesi
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-010500000000', null, 'Berdasarkan Peraturan Pemerintah No.42 Tahun 2004 tentang Pembinaan Jiwa Korps dan Kode Etik PNS, kode etik dapat disusun untuk kode etik instansi dan kode etik masing-masing organisasi profesi di lingkungan PNS. Agar kode etik itu berfungsi sebagaimana diharapkan maka ada dua syarat mutlak yang harus dipenuhi, yakni:

1. kode etik dibuat oleh masing-masing profesi sehingga kode etik itu bisa dijiwai oleh cita-cita dan nilai-nilai yang hidup dalam profesi yang bersangkutan, dengan kata lain, kode etik harus merupakan hasil pemikiran dan pengaturan anggota profesi tersebut;
2. pelaksanaan kode etik harus diawasi terus menerus, setiap kasus pelanggaran dievaluasi dan dikenakan tindakan oleh suatu komite khusus untuk itu.

Kode etik organisasi profesi di lingkungan Pegawai Negeri Sipil ditetapkan organisasi profesi masing-masing, sedangkan kode etik instansi ditetapkan oleh pejabat pembina kepegawaian masing-masing instansi berdasarkan karakteristik masing-masing instansi (Pasal 13 dan 14 PP No. 42 Tahun 2004). Peraturan Pemerintah Nomor 11 tahun 2017 tentang Manajemen Pegawai Negeri Sipil pada Paragraf 15 mengenai Organisasi Profesi, Pasal 101 mengatur antara lain bahwa:

1. Setiap Jabatan Fungsional (JF) yang telah ditetapkan wajib memiliki 1 (satu) organisasi profesi JF dalam jangka waktu paling lama 5 (lima) tahun terhitung sejak tanggal penetapan JF.
2. Organisasi profesi JF dimaksud wajib menyusun kode etik dan kode perilaku profesi.
3. Organisasi profesi JF mempunyai tugas:
   - Menyusun dan menetapkan kode etik dan kode perilaku profesi setelah mendapat persetujuan dari pimpinan instansi pembina.
   - memberikan advokasi; dan
   - memeriksa dan memberikan rekomendasi atas pelanggaran kode etik dan kode perilaku profesi.

Adapun Peraturan Pemerintah Nomor 11 Tahun 2017 telah diubah dengan Peraturan Pemerintah Nomor 17 Tahun 2020 tentang Perubahan atas Peraturan Pemerintah Nomor 11 Tahun 2017 tentang Manajemen Pegawai Negeri Sipil. Namun pasal 101 tidak mengalami perubahan.', 1);

-- =========================================================
-- Bab F: Implementasi Etika dalam Organisasi Pemerintah
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-010600000000', null, 'Implementasi etika dalam organisasi pemerintah merupakan wujud nyata dari komitmen aparatur negara untuk menjalankan tugas dan tanggung jawabnya secara profesional, berintegritas, dan berpihak pada kepentingan publik. Etika menjadi fondasi moral dalam setiap pengambilan keputusan, pelaksanaan kebijakan, serta interaksi antar pegawai maupun dengan masyarakat. Di lingkungan birokrasi, etika tidak hanya tercermin dalam kepatuhan terhadap peraturan formal, tetapi juga dalam sikap, perilaku, dan budaya kerja yang menjunjung tinggi nilai-nilai kejujuran, tanggung jawab, keadilan, dan pelayanan.

Organisasi pemerintah yang menerapkan etika secara konsisten akan menciptakan tata kelola yang bersih, akuntabel, dan terpercaya, sehingga mampu meningkatkan kinerja institusi sekaligus memperkuat legitimasi di mata masyarakat. Untuk itu, diperlukan kepemimpinan yang memberi keteladanan etis, sistem pengawasan yang efektif, serta mekanisme pembinaan dan penegakan disiplin yang adil dan transparan. Implementasi etika bukan sekadar kewajiban administratif, tetapi menjadi elemen strategis dalam membangun pemerintahan yang berintegritas dan berorientasi pada pelayanan publik yang berkualitas.

Agar etika yang baik bisa terwujud dalam suatu organisasi maka kode etik organisasi tidak cukup hanya menentukan kewajiban-kewajiban, larangan-larangan, serta sanksi-sanksi saja, tetapi dibutuhkan juga langkah-langkah nyata yang sistematis serta dilaksanakan dengan penuh kesungguhan berupa partisipasi aktif dari seluruh pihak yang berada dalam organisasi tersebut.', 1),
('b0000000-0000-4000-8000-010600000000', 'Syarat Implementasi Etika yang Baik dalam Organisasi Pemerintah', 'Menurut Keraf (2002) ada beberapa hal yang diperlukan agar implementasi praktik etika yang baik dalam organisasi pemerintah dapat terwujud, yaitu sebagai berikut:

1. adanya komitmen moral dan politik dari pimpinan Kementerian/Lembaga. Dalam hal ini, Menteri berkomitmen untuk membangun birokrasi Kementerian dengan sebuah etos, kebiasaan, serta etika yang baik demi melayani kepentingan publik;
2. komitmen moral dan politik itu lalu diterjemahkan ke dalam aturan formal internal Kementerian sebagai pegangan konkret bagi setiap pejabat dan pegawai mulai dari Menteri, Direktur Jenderal, sampai kepada pegawai paling rendah dan disusun secara rinci, termasuk sanksi-sanksi yang jelas;
3. etos/etika birokrasi dan aturan yang jelas tadi lalu disosialisasikan dan diajarkan kepada PNS pada saat pertama kali masuk, dalam pelatihan dan dalam seluruh proses pembenahan;
4. adanya sanksi yang diterapkan secara konsekuen merupakan alat "pendidikan" yang baik bagi siapa saja. Sebaliknya penghargaan, baik dalam bentuk kenaikan pangkat atau pengakuan tertulis lainnya secara jujur dan objektif akan merupakan alat motivasi yang baik bagi peningkatan etos di Kementerian tersebut;
5. adanya teladan yang nyata dari pimpinan Kementerian, khususnya Menteri dan Eselon I, dalam menghayati dan mempraktikkan secara nyata prinsip-prinsip moral di atas.', 2),
('b0000000-0000-4000-8000-010600000000', '1. Etos Kerja', 'Etos kerja merupakan sikap dasar seseorang atau sekelompok orang dalam melakukan suatu pekerjaan. Etos kerja bisa kuat atau lemah, positif atau negatif, terlihat pada saat seseorang tersebut mengalami hambatan atau tantangan dalam pekerjaannya. Etos kerja individu akan sangat dipengaruhi oleh etos kerja kelompok, yaitu etos kerja orang-orang yang berada di sekitarnya. Contoh: seorang pegawai yang pada awalnya memiliki etos kerja yang tinggi bisa berubah menjadi malas, tidak bertanggung jawab terhadap pekerjaannya, ataupun menghindari pekerjaan akibat terpengaruh oleh rekan-rekan kerjanya yang memiliki etos kerja yang rendah. Unsur-unsur penting dalam etos kerja yang bisa mendukung terciptanya suatu suasana kerja yang kondusif adalah sebagai berikut:

- dedikasi dalam melaksanakan tugas dengan sebaik-baiknya;
- semangat pengabdian kepada masyarakat;
- bersedia mempertanggungjawabkan hasil kerjanya;
- bersedia memperhatikan harapan/tuntutan/kritik masyarakat dan selanjutnya memperbaiki diri;
- dorongan untuk terus-menerus meningkatkan kompetensi dan kecakapan;
- semangat untuk tidak lari dari kemungkinan masalah, melainkan justru mengidentifikasikan masalah yang paling mengancam dan mengambil langkah untuk mengatasinya sebelum masalah tersebut semakin gawat;
- transparansi dalam segala keputusan.

(Magnis-Suseno, 2002, menyebutkan Etos Kerja sebagai salah satu dari 4 unsur utama yang mempengaruhi keberhasilan perwujudan etika dalam organisasi pemerintah.)', 3),
('b0000000-0000-4000-8000-010600000000', '2. Moralitas Pribadi', 'Moralitas pribadi merupakan kesesuaian sikap dan perilaku seseorang dengan norma-norma yang ada, yang terkait dengan baik buruknya suatu perbuatan. Moralitas pribadi menyangkut kualitas moral masing-masing orang atau individu. Ada beberapa moralitas pribadi yang penting, antara lain:

- dedikasi;
- jujur dan tidak korupsi;
- taat pada tuntutan khas etika birokrasi;
- bertanggung jawab;
- minat dan hasrat untuk terus-menerus meningkatkan kompetensi dan kecakapannya;
- menghormati hak semua pihak yang terkait.', 4),
('b0000000-0000-4000-8000-010600000000', '3. Kepemimpinan yang Bermutu', 'Dalam kaitannya dengan perwujudan etika, seorang pemimpin memikul peran sebagai panutan dan pemberi motivasi kepada para bawahannya sekaligus juga harus mampu menjaga kondisi lingkungan kerja agar tetap terjaga dalam suasana kerja yang etis. Untuk memperoleh pemimpin bermutu seperti itu maka pemimpin dituntut mempunyai 5 hal penting, yakni:

- **Kompetensi**: Seorang pemimpin harus benar-benar menguasai hal-hal yang merupakan bidang pekerjaannya sehingga dia diharapkan akan mampu mengatasi permasalahan-permasalahan yang terjadi.
- **Memastikan pelaksanaan tertib kerja**: Seorang pemimpin harus memiliki kemampuan untuk memimpin, berwibawa, mampu memberikan motivasi kepada bawahannya dan memiliki ketegasan untuk memberikan sanksi bagi pegawai yang melanggar aturan.
- **Konsistensi**: Seorang pemimpin harus bersikap konsisten dalam menerapkan aturan dan dalam memberikan sanksi ataupun penghargaan kepada para bawahannya dan tidak boleh pilih kasih terhadap bawahannya karena bisa mengakibatkan terjadinya ketidakadilan.
- **Transparansi**: Keputusan-keputusan seorang pemimpin harus jelas dan transparan bagi pihak-pihak yang terkait dengan keputusan tersebut.
- **Menjadi panutan**: Seorang pemimpin harus bisa menjadi panutan bagi para bawahannya sehingga ia harus memiliki integritas pribadi yang bisa dijadikan teladan. Sifat-sifat pemimpin yang bisa menjadi teladan, antara lain: jujur, adil, cakap, tegas, komunikatif, dan bertanggung jawab.
- **Kondisi-kondisi sistemik**: Ada 2 (dua) syarat sistemik yang berpengaruh dalam keberhasilan untuk mewujudkan suatu etika dalam organisasi pemerintah, yakni:
  1. Lingkungan kerja: dapat mendukung atau merusak watak moral seseorang. Etos kerja yang baik hanya dapat berkembang dalam lingkungan di mana orang mengalami bahwa sikap-sikap moralnya yang positif didukung, dihargai, dan diharapkan oleh orang-orang sekitarnya. Sebaliknya, lingkungan yang tidak kondusif bisa menurunkan etos kerja seseorang.
  2. Pengawasan/pengendalian: Harus ada pengawasan/pengendalian atas pelaksanaan pekerjaan sehingga penerapan etika akan selalu dapat dipantau. Pengawasan/pengendalian ini tidak cukup dari dalam organisasi saja, melainkan juga perlu ada pengawasan/pengendalian dari luar organisasi, dalam hal ini pengawasan/pengendalian oleh masyarakat harus diterima sebagai suatu hal yang positif.', 5);

-- =========================================================
-- Bab G: Implementasi Nilai Dasar PNS, Kode Etik & Kode Perilaku di Kemenkeu
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-010700000000', '1. Implementasi Nilai Dasar PNS', 'Dalam rangka meningkatkan penerapan nilai dasar ASN bagi PNS di lingkungan Kementerian Keuangan sebagaimana yang diatur dalam Pasal 3 UU Nomor 20 tahun 2023, telah diterbitkan Surat Edaran Nomor 44/MK.01/2017 tentang Himbauan Penerapan Nilai Dasar Aparatur Sipil Negera dalam rangka Penyelenggaraan Tugas Pemerintahan bagi Pegawai Negeri Sipil Kementerian Keuangan. SE ini mengatur:

a. Setiap Pegawai Kementerian Keuangan diwajibkan:
   1) Memegang teguh ideologi Pancasila; dan
   2) Setia dan mempertahankan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945 serta pemerintahan yang sah.
b. Seluruh pimpinan unit organisasi di lingkungan Kementerian Keuangan wajib melakukan pembinaan dan pengawasan penerapan nilai dasar ASN terkait penyelenggaraan tugas pemerintahan.
c. Apabila terdapat indikasi penyelewengan dalam penerapan nilai dasar sebagaimana dimaksud pada huruf a, maka masing-masing pimpinan unit organisasi dan/atau atasan langsung wajib mengambil tindakan sesuai dengan ketentuan perundang-undangan.

Dalam rangka menjalankan peran sebagai perekat bangsa, dipandang perlu lebih menggiatkan penerapan nilai-nilai Pancasila dan Bela Negara bagi PNS di lingkungan Kementerian Keuangan. Surat Edaran nomor SE: 12/MK.01/2019 tentang Penerapan Nilai-Nilai Pancasila dan Bela Negara bagi PNS di lingkungan Kementerian Keuangan diterbitkan dan mengatur hal-hal sebagai berikut:

1) Setiap pegawai Kementerian Keuangan diimbau untuk senantiasa:
   a. Memegang nilai-nilai Pancasila yaitu: Ketuhanan Yang Maha Esa, Kemanusiaan yang Adil dan Beradab, Persatuan Indonesia, Kerakyatan yang dipimpin oleh hikmat kebijaksanaan permusyawaratan/pewakilan, dan Keadilan Sosial bagi Seluruh Rakyat Indonesia.
   b. Memegang teguh nilai-nilai Bela Negara, yaitu: Kecintaan kepada Tanah Air, Kesadaran berbangsa dan bernegara, yakin kepada Pancasila sebagai Ideologi negara, rela berkorban untuk bangsa dan negara, memiliki kemampuan bela negara baik secara psikis maupun fisik dan, semangat mewujudkan negara yang berdaulat, adil dan Makmur.
   c. Menerapkan hal-hal antara lain sebagai berikut:
      a) Berinisiatif untuk mengetahui, memahami dan mengamalkan nilai-nilai Pancasila dan bela negara dalam kegiatan sehari-hari;
      b) Senantiasa memberikan inspirasi dalam memperkokoh karakter dan jati diri bangsa melalui pengamalan nilai-nilai Pancasila dan bela negara;
      c) Memahami dan melakukan peran ASN sebagai perekat bangsa dan pemersatu bangsa demi menjaga kerukunan dan keutuhan NKRI;
      d) Menumbuhkan kesadaran baru untuk mempersempit kesenjangan sosial antar pelaku ekonomi, antar daerah, antar bidang, antar sektor, dan antar wilayah.
   d. Memperingati hari lahir Pancasila setiap tanggal 1 Juni;
   e. Mentaati dan menerapkan ketentuan-ketentuan mengenai kode etik dan kode perilaku serta disiplin yang telah ditetapkan baik di lingkungan Kementerian Keuangan maupun di lingkungan unit kerja masing-masing.
2) Setiap Pimpinan Unit Kerja dan atasan langsung diimbau untuk senantiasa:
   a. Memberikan keteladanan dan dukungan program terkait upaya internalisasi dan/atau penerapan nilai-nilai Pancasila dan bela negara di lingkungan unit kerjanya masing-masing;
   b. Mendorong dan melakukan pengawasan terhadap bawahan di lingkungan unit kerjanya dalam rangka upaya internalisasi dan/atau penerapan nilai-nilai Pancasila dan bela negara.', 1),
('b0000000-0000-4000-8000-010700000000', '2. Implementasi Kode Etik dan Kode Perilaku PNS', 'Pengaturan kode etik dan kode perilaku Pegawai Negeri Sipil di lingkungan Kementerian Keuangan diatur dalam PMK nomor 190/PMK.01/2018 tentang Kode Etik dan Kode Perilaku Pegawai Negeri Sipil di lingkungan Kementerian Keuangan. Berdasarkan ketentuan PMK tersebut, Kode Etik dan Kode Perilaku adalah pedoman sikap, tingkah laku, dan perbuatan Pegawai dalam melaksanakan tugas pokok dan fungsi serta pergaulan hidup sehari-hari yang bertujuan untuk menjaga martabat dan kehormatan Pegawai, bangsa, dan negara.', 2),
('b0000000-0000-4000-8000-010700000000', 'a. Landasan Perilaku Pegawai', 'Dalam berperilaku sehari-hari, setiap Pegawai Negeri Sipil di lingkungan Kementerian Keuangan harus berlandaskan pada nilai-nilai dan Kode Etik dan Kode Perilaku.

Nilai-nilai yang dimaksud meliputi nilai dasar Aparatur Sipil Negara dan Nilai-Nilai Kementerian Keuangan:

1) Nilai dasar Aparatur Sipil Negara, meliputi nilai-nilai yang telah diatur pada Pasal 3 Undang-undang Nomor 20 Tahun 2023 seperti yang telah diuraikan di atas.
2) Nilai-Nilai Kementerian meliputi:
   - **Integritas**, yang berarti seluruh Pegawai harus berpikir, berkata, berperilaku, dan bertindak dengan baik dan benar serta selalu memegang teguh Kode Etik dan prinsip-prinsip moral;
   - **Profesionalisme**, yang berarti seluruh Pegawai harus bekerja dengan tuntas dan akurat berdasarkan kompetensi terbaik dan penuh tanggung jawab serta komitmen yang tinggi;
   - **Sinergi**, yang berarti seluruh Pegawai harus berkomitmen untuk membangun dan memastikan hubungan kerjasama internal yang produktif serta kemitraan yang harmonis dengan para pemangku kepentingan, untuk menghasilkan karya yang bermanfaat dan berkualitas;
   - **Pelayanan**, yang berarti seluruh Pegawai harus memberikan pelayanan untuk memenuhi kepuasan para pemangku kepentingan dan dilaksanakan dengan sepenuh hati, transparan, cepat, akurat, dan aman; dan
   - **Kesempurnaan**, yang berarti seluruh Pegawai harus senantiasa melakukan upaya perbaikan di segala bidang untuk menjadi dan memberikan yang terbaik.', 3),
('b0000000-0000-4000-8000-010700000000', 'b. Kode Etik dan Kode Perilaku', 'Kode Etik dan Kode Perilaku dibangun berdasarkan pada Nilai-Nilai Kementerian Keuangan yang terdiri atas:

1) Kode Etik dan Kode Perilaku Nilai Integritas, antara lain seperti:
   - menjaga citra, harkat, dan martabat Kementerian Keuangan di berbagai forum, baik formal maupun informal di dalam maupun di luar negeri;
   - menjunjung tinggi norma yang berlaku dalam masyarakat serta Kode Etik dan Kode Perilaku profesi;
   - memegang teguh sumpah jabatan Pegawai Negeri Sipil;
   - menghindari konflik kepentingan pribadi, kelompok maupun golongan;
   - bersikap netral dalam Pemilihan Calon Presiden dan Wakil Presiden, Kepala Daerah dan Wakil Kepala Daerah, serta Anggota Legislatif Pusat dan Daerah;
   - menggunakan media sosial dengan bijak;
   - berbicara dan bertindak secara jujur dan pantas sesuai dengan fakta dan kebenaran sesuai ketentuan yang berlaku;
   - menjadi teladan serta menegakkan Kode Etik dan Kode Perilaku.

2) Kode Etik dan Kode Perilaku Nilai Profesionalisme, antara lain seperti:
   - mengutamakan kepentingan bangsa dan organisasi di atas kepentingan pribadi;
   - bekerja sesuai standar operasional prosedur dan kewenangan jabatan;
   - menyelesaikan tugas atau pekerjaan secara bertanggung jawab hingga tuntas;
   - menyusun rencana atau sasaran kinerja yang hendak dicapai;
   - mengoptimalkan kompetensi yang dimiliki untuk menyelesaikan tugas atau pekerjaan;
   - menjaga informasi dan data Kementerian Keuangan yang bersifat rahasia;
   - disiplin dalam pemanfaatan waktu kerja;
   - berani mengakui kesalahan dan bertanggung jawab atas pelaksanaan tugasnya.

3) Kode Etik dan Kode Perilaku Nilai Sinergi, antara lain seperti:
   - mengakui persamaan derajat, hak, dan kewajiban setiap manusia serta mengembangkan sikap tenggang rasa antar sesama manusia;
   - menghormati dan menghargai perbedaan latar belakang, ras, warna kulit, agama, asal-usul, jenis kelamin, status pernikahan, umur atau kondisi kecacatan;
   - tidak memecah belah persatuan dan kesatuan bangsa;
   - bersikap kooperatif dengan unit kerja lain yang terkait dalam pelaksanaan tugas;
   - menghargai masukan, pendapat, dan gagasan orang lain;
   - menjaga komitmen terhadap keputusan bersama dan implementasinya;
   - bersikap untuk berbagi solusi, informasi dan/atau data sesuai kewenangan untuk menyelesaikan masalah yang terkait dengan pekerjaan;
   - memberikan kesempatan untuk menunaikan ibadah ketika rapat kerja atau tugas kedinasan sedang berlangsung.

4) Kode Etik dan Kode Perilaku Nilai Pelayanan, antara lain seperti:
   - menunjukkan kepedulian, ramah, dan santun dalam memberikan pelayanan;
   - berorientasi pada peningkatan kesejahteraan masyarakat dalam melaksanakan tugas;
   - berupaya memberikan layanan yang tepat waktu, cepat, dan transparan;
   - memberikan pelayanan sesuai kompetensi dan dalam hal terdapat permasalahan, bekerja sama dengan pihak-pihak terkait dalam penyelesaian permasalahannya;
   - menerima pihak lain yang tidak terkait dengan pekerjaan di luar jam kerja atau pada jam kerja dengan seizin atasan dan/atau sepanjang tidak mengganggu pekerjaan atau layanan; dan
   - tidak membeda-bedakan dan bersikap adil dalam memberikan pelayanan.

5) Kode Etik dan Kode Perilaku Nilai Kesempurnaan, antara lain seperti:
   - terbuka terhadap usulan perbaikan;
   - terbuka terhadap informasi atau pengetahuan baru;
   - senantiasa berupaya untuk memberikan kinerja dan/atau layanan yang terbaik;
   - berupaya menjaga dan melakukan implementasi atas keimanan dan ketakwaan terhadap Tuhan Yang Maha Esa;
   - tidak menghalangi kreativitas/gagasan/pendapat yang bernilai tambah bagi kemajuan organisasi; dan
   - tidak menghalangi upaya inovasi yang tidak bertentangan dengan peraturan perundang-undangan.', 4),
('b0000000-0000-4000-8000-010700000000', 'c. Pencegahan', 'Untuk mencegah terjadinya Pelanggaran Kode Etik dan Kode Perilaku Pegawai Negeri Sipil di lingkungan Kementerian Keuangan, seluruh pimpinan unit Eselon I harus melakukan upaya sebagai berikut:

1) memberdayakan Unit Kepatuhan Internal;
2) berkoordinasi dengan Inspektorat Jenderal dalam melaksanakan pengawasan internal;
3) membangun koordinasi dengan penyelenggara pendidikan dan pelatihan serta pembina kepegawaian pusat atau unit di lingkungan Kementerian Keuangan dalam mengupayakan pemahaman Kode Etik dan Kode Perilaku bagi Pegawai; dan menginternalisasi Nilai-Nilai Kementerian Keuangan dan ketentuan yang berhubungan dengan penegakan Kode Etik dan Kode Perilaku kepada Pegawai di lingkungan kerjanya;
4) Sebagai bagian dari pencegahan terjadinya Pelanggaran Kode Etik dan Kode Perilaku, atasan langsung agar mengupayakan pemahaman dan penegakan Kode Etik dan Kode Perilaku dengan melakukan tindakan seperti, memberikan keteladanan, melakukan pengawasan, dan pembinaan terhadap bawahannya.

Dalam rangka meningkatkan disiplin dan mencegah terjadinya potensi-potensi perbuatan yang dapat mengarah pada pelanggaran disiplin dan pelanggaran hukum, telah diterbitkan Surat Edaran nomor SE: 12/MK.01/2018 tentang Penerapan Nilai-Nilai Kementerian Keuangan dan Kode Etika sebagai Early Warning System di lingkungan Kementerian Keuangan. SE ini mengatur penerapan nilai-nilai Kementerian Keuangan, kode etik dan disiplin bagi seluruh PNS/CPNS Kementerian Keuangan, dalam bentuk imbauan antara lain:

1) Setiap Pegawai Kementerian Keuangan diimbau untuk:
   a) Memegang teguh nilai-nilai Kementerian Keuangan, yaitu: Integritas, Profesionalisme, Sinergi, Pelayanan dan Kesempurnaan.
   b) Berpedoman pada etika bernegara dalam penyelenggaraan pemerintahan, dalam berorganisasi, dalam bermasyarakat, terhadap diri sendiri dan sesama Pegawai Negeri Sipil.
   c) Mentaati dan menerapkan ketentuan-ketentuan kode etik, kode perilaku dan disiplin yang telah ditetapkan baik di lingkungan Kementerian Keuangan maupun di lingkungan unit kerja masing-masing.
   d) Menghindari perilaku-perilaku yang mengarah pada ujaran kebencian dan radikalisme.
2) Sehubungan dengan angka 1, maka setiap atasan langsung diimbau antara lain:
   a) melakukan pembinaan, pemantauan dan pengawasan terhadap bawahan di lingkungan kerjanya dalam rangka mencegah terjadinya pelanggaran kode etik, pelanggaran disiplin, dan pelanggaran hukum;
   b) Melakukan pemeriksaan atas dugaan pelanggaran yang dilakukan oleh bawahannya yang diperoleh dari pengaduan, temuan, dan laporan pihak terkait;
   c) Menindaklanjuti hasil pemeriksaaan oleh Inspektorat Jenderal atau Unit Kepatuhan Internal (UKI), serta menjadikan hasil pemeriksaan tersebut sebagai salah satu acuan bagi atasan langsung untuk melakukan pemeriksaan.
3) Seluruh Pimpinan Unit Kerja diimbau, antara lain untuk bertanggung jawab terhadap tata kelola, manajemen resiko dan pengendalian intern dalam menjalankan tugas dan fungsinya di lingkungan unit kerja masing-masing; memberdayakan Unit kepatuhan internal, atau unit lain yang ditunjuk guna meningkatkan efektivitas penerapan tata kelola, manajemen resiko dan pengendalian intern; serta menginternalisasikan Nilai-Nilai Kementerian Keuangan dan ketentuan-ketentuan yang berhubungan penegakan kode etik dan disiplin kepada seluruh pegawai di lingkungan kerjanya.', 5);

-- =========================================================
-- Bab H: Penegakan Kode Etik dan Kode Perilaku PNS di Kemenkeu
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-010800000000', '1. Pelanggaran Kode Etik Pegawai Negeri Sipil', 'Pelanggaran kode etik adalah segala bentuk ucapan, tulisan, gambar dan/atau perbuatan Pegawai yang bertentangan dengan Kode Etik dan Kode Perilaku. Berdasarkan pasal 16 PP No. 42 Tahun 2004, Pegawai Negeri Sipil yang melakukan pelanggaran kode etik, selain dikenakan sanksi moral, dapat dikenakan tindakan administratif sesuai dengan peraturan perundang-undangan yaitu hukuman disiplin PNS yang diatur PP 94/2021, atas rekomendasi Majelis Kode Etik, bila PNS yang bersangkutan melanggar peraturan disiplin PNS. Sanksi moral dibuat secara tertulis dan dapat berupa pernyataan secara tertutup atau pernyataan secara terbuka.

Di lingkungan Kementerian Keuangan telah ditetapkan Peraturan Menteri Keuangan nomor 190/PMK.01/2018 tentang Kode Etik dan Kode Perilaku Pegawai Negeri Sipil di Lingkungan Kementerian Keuangan yang menjadi pedoman sikap dan perilaku pedoman sikap, tingkah laku, dan perbuatan Pegawai dalam melaksanakan tugas pokok dan fungsi serta pergaulan hidup sehari-hari.

Lebih lanjut dalam PMK tersebut diatur mengenai pelanggaran kode etik dan kode perilaku sebagai berikut:

a. Dugaan terjadinya Pelanggaran Kode Etik dan Kode Perilaku diperoleh dari Pengaduan dan/atau Temuan. Pengaduan berasal dari Pegawai dan/atau pengaduan yang berasal dari masyarakat dan disampaikan secara tertulis melalui dokumen atau surat, melalui sistem aplikasi pengaduan; dan/atau melalui media elektronik paling sedikit memuat:
   1) Waktu dan tempat kejadian;
   2) Bukti dan/atau saksi; dan
   3) Identitas Pelapor dan Terlapor.
   Sedangkan temuan terdiri atas: Temuan Atasan Terlapor, Temuan Unit Kepatuhan Internal; dan/atau temuan Inspektorat Jenderal.
b. Penegakan oleh Atasan Langsung. Setiap atasan langsung terlapor yang mengetahui adanya dugaan terjadinya Pelanggaran Kode Etik dan Kode Perilaku harus melakukan penelitian atas temuan dan/atau pengaduan dan menjaga kerahasiaan identitas Pelapor serta melakukan langkah-langkah tindak lanjut atas pelanggaran kode etik dan kode perilaku yang telah diatur dalam PMK tersebut.', 1),
('b0000000-0000-4000-8000-010800000000', '2. Pembentukan Majelis Kode Etik', 'Untuk menegakkan kode etik, pada setiap instansi dibentuk Majelis Kehormatan Kode Etik yang ditetapkan oleh Pejabat Pembina Kepegawaian yang bersangkutan. Lebih lanjut, PMK nomor 190/PMK.01/2018 mengatur bahwa Majelis/Komisi Kehormatan Kode Etik dan Kode Perilaku Pegawai, yang selanjutnya disebut Majelis adalah tim yang bersifat tidak tetap (ad hoc) yang dibentuk di lingkungan Kementerian Keuangan dan bertugas melakukan penegakan atas pelanggaran Kode Etik dan Kode Perilaku yang dilakukan oleh Pegawai berdasarkan asas kejujuran dan keadilan.

Keanggotaan Majelis terdiri dari 1 (satu) orang ketua merangkap anggota, satu orang sekretaris merangkap anggota, dan sekurang-kurangnya 3 (tiga) orang anggota. Jika anggota Majelis Kode Etik lebih dari 5 (lima) orang, maka jumlahnya harus ganjil agar jika terjadi pemungutan suara, tidak terjadi deadlock.

Jabatan dan pangkat Anggota Majelis Kode Etik tidak boleh lebih rendah dari jabatan dan pangkat Pegawai Negeri Sipil yang diperiksa karena disangka melanggar kode etik. Mekanisme Penegakan Kode Etik dan Kode Perilaku oleh Majelis diatur sebagai berikut:

a. Majelis melakukan pemanggilan pertama secara tertulis kepada Terlapor paling singkat 7 (tujuh) hari kerja sebelum tanggal pemeriksaan oleh Majelis.
b. Dalam hal terlapor tidak memenuhi panggilan pertama dilakukan pemanggilan kedua dengan jangka waktu 7 (tujuh) hari kerja sejak terlapor seharusnya hadir pada panggilan pertama.
c. Dalam hal terlapor tidak bersedia memenuhi panggilan kedua tanpa alasan yang sah, majelis merekomendasikan sanksi moral berdasarkan alat bukti dan keterangan yang ada tanpa dilakukan pemeriksaan.
d. Dalam hal terlapor memenuhi panggilan, majelis melakukan pemeriksaan terhadap terlapor dalam sidang tertutup yang dihadiri oleh seluruh anggota Majelis. Keputusan Majelis diambil secara musyawarah mufakat. Dalam hal musyawarah mufakat tidak tercapai, keputusan diambil dengan suara terbanyak.
e. Keputusan Majelis berupa rekomendasi yang terdiri atas: penjatuhan sanksi moral, atau pernyataan tidak bersalah.', 2);

-- =========================================================
-- Bab I: Implementasi Kode Etik pada Era Sistem Kerja Fleksibel
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-010900000000', null, 'Perubahan lingkungan kerja yang semakin dinamis, ditandai oleh perkembangan teknologi, tuntutan fleksibilitas, dan kebutuhan akan keseimbangan hidup-kerja, mendorong organisasi pemerintah untuk bertransformasi dan berinovasi. Kementerian Keuangan sebagai institusi yang adaptif menanggapi hal ini dengan menetapkan Sistem Kerja Fleksibel (SKF) melalui Keputusan Menteri Keuangan Nomor 416/KMK.01/2023. Kebijakan ini memungkinkan pegawai melaksanakan tugas secara fleksibel dari sisi tempat dan/atau waktu, dengan tetap mengedepankan kinerja, produktivitas, dan profesionalisme.

Dalam konteks pelaksanaan SKF, penting untuk menegaskan bahwa fleksibilitas bukan berarti bebas tanpa batas. Justru, dalam situasi kerja yang tidak selalu berada dalam pengawasan langsung, etika dan integritas pegawai menjadi semakin krusial. Oleh karena itu, keberadaan kode etik dan kode perilaku menjadi rambu utama yang mengarahkan sikap, tanggung jawab, serta pengambilan keputusan aparatur negara, baik saat bekerja dari kantor, rumah, ruang kerja bersama, maupun lokasi lainnya. Pelaksanaan kerja fleksibel membutuhkan kedisiplinan, tanggung jawab, dan komitmen etis yang tinggi agar kepercayaan terhadap ASN tetap terjaga.

Latar belakang inilah yang menjadi dasar pentingnya pemahaman dan internalisasi kode etik dalam setiap pelaksanaan sistem kerja fleksibel. Bagian ini disusun untuk memperkuat kesadaran dan kepatuhan pegawai terhadap nilai-nilai dasar, norma organisasi, serta standar perilaku yang diharapkan. Dengan menjunjung tinggi etika dalam bekerja, pegawai Kementerian Keuangan tidak hanya menjaga nama baik institusi, tetapi juga turut mewujudkan birokrasi yang bersih dan berorientasi pada pelayanan publik yang unggul.', 1),
('b0000000-0000-4000-8000-010900000000', '1. Kode Etik pada Sistem Kerja Fleksibel', 'Sistem Kerja Fleksibel (SKF) yang diatur dalam Keputusan Menteri Keuangan Nomor 416/KMK.01/2023 merupakan bentuk adaptasi organisasi terhadap dinamika lingkungan kerja yang terus berubah, dengan tetap menjaga produktivitas dan akuntabilitas, dan kesejahteraan pegawai. Dalam konteks ini, implementasi kode etik dan kode perilaku menjadi sangat penting untuk menjaga profesionalisme, integritas, serta nama baik instansi.

Sistem Kerja Fleksibel di lingkungan Kementerian Keuangan, terdiri dari fleksibilitas tempat bekerja dan fleksibilitas waktu bekerja. Sistem Kerja Fleksibel didukung dengan sarana dan prasarana, meliputi perangkat keras (komputer/laptop, telepon genggam/tablet, mesin perkantoran, dan/atau alat elektronik lainnya), perangkat lunak (aplikasi otomasi perkantoran, jaringan komunikasi data, dan peralatan komunikasi Kementerian Keuangan) dan sarana dan prasarana lainnya.

Dalam pelaksanaan SKF, setiap pegawai wajib mematuhi kode etik dan kode perilaku sebagaimana diatur dalam Diktum keduabelas huruf b angka 3, yaitu: "Mematuhi ketentuan kode etik dan kode perilaku serta disiplin sesuai dengan ketentuan yang berlaku di lingkungan Kementerian Keuangan, termasuk norma kesopanan dan kesusilaan yang berlaku di masyarakat." Hal ini menegaskan bahwa fleksibilitas tempat dan waktu bekerja tidak boleh dimaknai sebagai pelonggaran standar moral dan profesional. Etika tetap menjadi landasan dalam menjalankan tugas, termasuk dalam kondisi bekerja dari rumah, dari daerah asal, ataupun dari ruang kerja bersama.

Beberapa aspek penting kode etik yang perlu dijaga selama pelaksanaan sistem kerja fleksibel meliputi:

1. **Disiplin dan Kejujuran dalam Penggunaan Waktu Kerja**: Pegawai diharuskan menggunakan jam kerja secara efektif, fokus pada tugas kedinasan, serta menghindari konflik kepentingan selama bekerja dari lokasi nonkantor. Pelaporan hasil kerja yang jujur dan valid merupakan bentuk akuntabilitas etis dalam bekerja.
2. **Tanggung Jawab dan Integritas**: Pegawai wajib menjaga keamanan dan keselamatan pekerjaan, termasuk kerahasiaan data. Kode etik mendorong pegawai untuk tetap profesional, bahkan ketika berada di luar pengawasan langsung.
3. **Etika Sosial dan Kesopanan Digital**: Dalam bekerja jarak jauh, etika sosial juga ditunjukkan melalui kesopanan dalam forum virtual, menjaga penampilan, menghindari gangguan, serta menghormati tata cara kegiatan resmi, sebagaimana dijelaskan dalam pedoman acara virtual.
4. **Penggunaan Sarana dan Prasarana Secara Etis**: Sarana teknologi informasi yang disediakan untuk mendukung SKF harus digunakan secara bertanggung jawab, tidak disalahgunakan untuk kepentingan pribadi, dan harus memenuhi standar keamanan informasi sesuai aturan pengelolaan keamanan siber Kemenkeu.
5. **Kepatuhan terhadap Pengawasan dan Evaluasi**: Pegawai memiliki kewajiban untuk melaporkan kehadiran dan hasil kerja melalui sistem aplikasi, serta terbuka terhadap pemantauan dan evaluasi kinerja oleh atasan langsung maupun unit pengawasan.
6. **Etika dalam Komunikasi dan Kolaborasi**: Di lingkungan kerja digital, komunikasi yang efektif, jelas, sopan, dan responsif menjadi bagian dari integritas profesional. Pegawai diharapkan selalu dapat dihubungi dan bersikap kooperatif dalam kerja tim lintas lokasi.

Selengkapnya, berdasarkan KMK 416 tahun 2023, dalam pelaksanaan Sistem Kerja Fleksibel pegawai berkewajiban:

1. mengisi daftar hadir melalui sistem aplikasi presensi pada aplikasi otomasi perkantoran (office automation) Kementerian Keuangan dan mematuhi ketentuan jam kerja sesuai dengan jenis penugasan;
2. memastikan ketersediaan sarana dan prasarana pendukung kerja;
3. mematuhi ketentuan kode etik dan kode perilaku serta disiplin sesuai dengan ketentuan yang berlaku di lingkungan Kementerian Keuangan, termasuk norma kesopanan dan kesusilaan yang berlaku di masyarakat;
4. menggunakan jam kerja secara efektif untuk pelaksanaan tugas kedinasan dengan baik, berintegritas, dan penuh tanggung jawab;
5. responsif dan dapat dihubungi serta mengupayakan untuk online dalam peralatan kolaborasi Kementerian Keuangan;
6. menjaga keamanan dan keselamatan diri maupun pekerjaan;
7. melaporkan hasil pelaksanaan pekerjaan kepada atasan langsung melalui aplikasi pelaporan hasil kerja pada aplikasi otomasi perkantoran (office automation) Kementerian Keuangan;
8. menggunakan pakaian kerja sesuai ketentuan mengenai pakaian kerja pegawai di lingkungan Kementerian Keuangan;
9. menjaga dan memastikan keamanan informasi dengan mengacu pada ketentuan mengenai pengelolaan keamanan informasi di lingkungan Kementerian Keuangan, diantaranya:
   - menghindari penggunaan internet yang tidak terjamin keamanannya;
   - selektif dalam mengakses/mengunduh informasi pada situs internet yang terpercaya (internet sehat dan aman);
   - melakukan pencadangan data penting secara berkala dan memastikan sistem operasi, antivirus, dan aplikasi pendukung telah mutakhir;
   - memastikan perangkat digunakan secara pribadi atau pengguna yang memiliki kewenangan;
   - waspada atas informasi yang berpotensi phising maupun serangan keamanan siber lainnya;
   - harus melengkapi dan memperbarui data HRIS Kemenkeu secara berkala; dan
   - memperhatikan panduan lainnya sesuai dengan ketentuan mengenai pengelolaan keamanan.
10. melaksanakan pedoman acara dan kegiatan kedinasan secara virtual, diantaranya:
   - wajib menyalakan video yang menampilkan wajah (jika tidak memungkinkan, dapat menginfokan penyelenggara kegiatan);
   - memberikan hormat dengan posisi tegap dan khidmat, memandang lurus ke arah kamera/layar pegawai apabila diperdengarkan lagu kebangsaan Indonesia Raya dan/atau prosesi penaikan atau penurunan bendera negara Republik Indonesia;
   - disiplin menggunakan mikrofon maupun fitur lain yang tersedia pada ruang virtual dengan bijaksana dan sopan;
   - berada di ruang kondusif yang tidak terganggu suara atau gangguan lainnya, dengan memperhatikan asas kerahasiaan dan/atau keamanan data dan informasi;
   - mengajukan izin kepada penyelenggara kegiatan apabila perlu meninggalkan ruang virtual sementara; dan
   - dalam hal mengikuti 2 (dua) kegiatan atau lebih dalam 1 (satu) waktu, agar menginformasikan kepada penyelenggara kegiatan dan memprioritaskan fokus pada salah satu kegiatan dengan memperhatikan level pimpinan kegiatan, tingkat kepentingan, dan peran.', 2),
('b0000000-0000-4000-8000-010900000000', '2. Panduan Etika dalam Acara Resmi Kedinasan yang Dilaksanakan Secara Virtual', 'Sehubungan dengan perubahan sistem kerja pada masa transisi dalam tatanan normal baru, seperti penyelenggaraan acara resmi kedinasan dan kegiatan lainnya, yang semula dilaksanakan dengan tatap muka secara fisik menjadi dilaksanakan secara virtual, serta memperhatikan Surat Edaran (SE) Menteri Keuangan Nomor SE-22/MK.1/2020 mengenai sistem kerja dalam masa transisi normal baru dan SE Kepala Badan Kepegawaian Negara Nomor 10/SE/IV/2020 mengenai pelantikan dengan media elektronik, telah ditetapkan Surat Edaran Menteri Keuangan nomor: SE-42/MK.01/2020 tentang Panduan Etika dalam Acara Resmi Kedinasan yang dilaksanakan Secara Virtual.

Beberapa Ketentuan yang diatur dalam SE dimaksud antara lain sebagai berikut:

a. Acara resmi kedinasan di lingkungan Kementerian Keuangan dapat berbentuk upacara bendera dan bukan upacara bendera. Kegiatan bukan upacara bendera, dapat meliputi:
   1) penganugerahan tanda jasa dan tanda kehormatan;
   2) pelantikan dan pengambilan sumpah/janji pegawai negeri sipil atau sumpah/janji jabatan;
   3) kunjungan tamu negara, tamu pemerintah, dan/atau tamu lembaga negara lainnya; dan/atau
   4) acara kedinasan lainnya yang melibatkan pejabat negara dan/atau pejabat pemerintahan.
b. Bagi Pegawai yang melaksanakan/mengikuti acara resmi kedinasan secara virtual tetap melakukan penghormatan sesuai tata cara dalam keprotokolan bagi pejabat negara, pejabat pemerintahan, dan/atau pihak tertentu selama mengikuti acara resmi kedinasan. Bentuk penghormatan dapat berupa:
   1) penghormatan menggunakan bendera negara Republik Indonesia;
   2) penghormatan menggunakan lagu kebangsaan negara Republik Indonesia; dan/atau
   3) bentuk penghormatan lainnya, seperti pengumuman oleh pemandu/pembawa acara untuk peserta menyalakan kamera ketika pimpinan/pejabat pemerintah hadir/memasuki acara, menggunakan virtual background tertentu selama acara, atau bentuk penghormatan lainnya sesuai pertimbangan pemandu/pembawa acara.
c. Dalam hal bentuk penghormatan melibatkan proses penaikan dan penurunan bendera negara Republik Indonesia dan/atau diperdengarkan/dinyanyikan lagu kebangsaan negara Republik Indonesia, pegawai yang mengikuti acara resmi kedinasan secara virtual, diimbau untuk memberi hormat dengan posisi berdiri tegak dan khidmat di tempat masing-masing dengan pandangan lurus ke depan dan wajah terlihat/menghadap kamera/layar gawai dengan posisi dinyalakan selama proses penghormatan berjalan.
d. Untuk acara pelantikan pegawai/pejabat, dalam hal pimpinan/pejabat negara yang memimpin mengambil posisi berdiri selama acara berlangsung, maka seluruh pegawai/pejabat yang dilantik dan undangan yang hadir juga mengambil posisi berdiri selama acara berlangsung.
e. Dalam kondisi tertentu seperti kendala jaringan dan/atau kondisi gawai yang tidak memungkinkan, pegawai yang mengikuti acara secara virtual dapat dikecualikan dari ketentuan dimaksud pada angka 3) dan 4) dan tetap mengikuti acara secara khidmat, dengan sebelumnya meminta izin/menginformasikan kondisinya kepada pembawa/pemandu acara, paling kurang melalui fitur chat dalam aplikasi, dengan tetap memperhatikan etika dalam berkomunikasi dan mengedepankan ketertiban acara.
f. Dalam mengikuti/melaksanakan acara kedinasan secara virtual (seperti rapat, dialog, seminar, dan sebagainya), seluruh pegawai/pejabat agar tetap memperhatikan panduan penggunaan teknologi komunikasi dan informasi, serta kode etik, antara lain:
   1) menghindari penggunaan free internet (free wifi) yang tidak terjamin stabilitas koneksi dan keamanannya;
   2) melakukan log masuk (login) lebih awal dan melalui verifikasi pewara (host);
   3) bergabung paling lambat 3 (tiga) menit sebelum acara dimulai;
   4) mencantumkan nama asli dan unit kerja;
   5) menampilkan wajah selama kegiatan, atau menginfokan kepada pemandu/pembawa acara apabila tidak dapat menampilkan wajah karena alasan teknis;
   6) disiplin dalam mematikan mikrofon saat pimpinan/narasumber menyampaikan materi;
   7) menggunakan fasilitas obrolan dalam aplikasi pesan instan (chat) dengan sopan dan bijaksana;
   8) berada di ruangan kondusif yang tidak terganggu dengan suara dan gangguan lainnya dari luar;
   9) menggunakan latar belakang virtual (virtual background) yang ditentukan oleh penyelenggara acara/kegiatan, namun apabila penyelenggara tidak menentukan virtual background, peserta dapat menggunakan virtual background lain yang merepresentasikan institusi atau virtual background yang sesuai estetika dan etika;
   10) mengenakan pakaian seragam kerja Kementerian Keuangan, atau sesuai dengan yang ditentukan oleh penyelenggara, apabila acara/kegiatan dilakukan pada hari kerja/jam kerja Kementerian Keuangan; dan
   11) mengenakan pakaian selain seragam kerja Kementerian Keuangan dengan tetap mengedepankan etika kesopanan dan kepantasan, atau sesuai dengan yang ditentukan oleh penyelenggara, apabila acara/kegiatan dilakukan selain pada hari kerja/jam kerja Kementerian Keuangan.
g. Dalam hal pegawai/pejabat menghadiri acara rapat secara virtual untuk membahas isu/permasalahan yang substansi/materinya hanya boleh didistribusikan secara terbatas dan/atau perlu dijaga kerahasiaannya, maka pegawai/pejabat dimaksud wajib melaksanakan ketentuan pembatasan distribusi dan/atau kerahasiaan materi rapat.
h. Dalam hal pegawai harus menghadiri lebih dari 1 (satu) acara virtual/acara resmi kedinasan dalam 1 (satu) waktu yang sama, pegawai diimbau agar dapat memprioritaskan perhatian pada salah satu kegiatan (sesuai tingkat urgensi dan kepentingannya), dan berupaya tetap dapat melakukan penghormatan terutama dalam acara resmi yang melibatkan pejabat negara.
i. Dalam hal pelaksanaan acara dilakukan secara berkelompok, seperti dalam suatu pelantikan, dimana penyelenggara meminta tiap kantor menampilkan kelompok/beberapa pegawai yang akan dilantik dalam 1 (satu) gawai/kamera, seluruh peserta diminta mematuhi ketentuan sebagaimana dimaksud pada ketentuan angka 5 Surat Edaran ini dan/atau panduan yang disampaikan oleh penyelenggara dan/atau pembawa acara.', 3),
('b0000000-0000-4000-8000-010900000000', '3. Nilai-nilai Kemenkeu pada Pelaksanaan Sistem Kerja Fleksibel', 'Dalam melaksanakan WFO, FWS serta prosedur kesehatan/keselamatan, baik dalam masa transisi maupun dalam masa tatanan normal baru, seluruh pegawai agar terus beradaptasi dan melaksanakan budaya (corporate culture) yang berdasarkan pada Nilai-Nilai Kemenkeu, yaitu:

a. **Integritas**, yang berarti seluruh pegawai harus berpikir, berkata, berperilaku, dan bertindak baik dan benar serta selalu memegang teguh kode etik dan prinsip-prinsip moral (contoh: jujur dalam menggunakan/melaporkan waktu bekerja, jujur dalam melaporkan kondisi kesehatan, konsisten menerapkan panduan masa transisi maupun masa tatanan normal baru yang telah ditetapkan instansi dalam perilaku sehari-hari, tidak menyebarkan hoax, dsb.);
b. **Profesionalisme**, yang berarti seluruh pegawai harus bekerja dengan tuntas dan akurat berdasarkan kompetensi terbaik dan penuh tanggung jawab serta komitmen tinggi (contoh: meskipun WFH tugas/layanan tetap dapat dituntaskan tepat waktu, mampu menyelesaikan tugas yang diberikan atasan secara mandiri dan bertanggung jawab, dsb.);
c. **Sinergi**, yang berarti seluruh pegawai harus berkomitmen untuk membangun dan memastikan hubungan kerjasama internal yang produktif serta kemitraan yang harmonis dengan para pemangku kepentingan, untuk menghasilkan karya yang bermanfaat dan berkualitas (contoh: meskipun tidak ada tatap muka namun koordinasi dan kerja sama antar rekan kerja/unit dalam rangka penyelesaian tugas tetap dilaksanakan sebaik-baiknya, saling bersinergi untuk menjaga komitmen dalam menjalankan panduan WFH/WFO serta prosedur kesehatan/keselamatan yang telah ditetapkan instansi, tidak membangun opini dan/atau menyebarkan informasi yang dapat memecah belah, dsb.);
d. **Pelayanan**, yang berarti seluruh pegawai harus memberikan pelayanan untuk memenuhi kepuasan para pemangku kepentingan dan dilaksanakan dengan sepenuh hati, transparan, cepat, akurat, dan aman (contoh: tidak menggunakan alasan WFH sebagai alasan untuk tidak melayani kepentingan masyarakat/stakeholders dan berupaya mencari berbagai alternatif dalam rangka mengoptimalkan pelayanan, menerapkan prosedur kesehatan/keselamatan dalam pelayanan, dsb.);
e. **Kesempurnaan**, yang berarti seluruh pegawai harus senantiasa melakukan upaya perbaikan di segala bidang untuk menjadi dan memberikan yang terbaik (contoh: memberikan integritas yang terbaik, menunjukkan profesionalisme yang terbaik, melakukan sinergi yang terbaik, memberikan pelayanan yang terbaik, berupaya mengintegrasikan/mengharmonisasikan tanggung jawab terhadap kantor dan tanggung terhadap keluarga/pribadi dengan baik/work-life harmony, dsb.).', 4);

-- =========================================================
-- Bab Penutup (Penutup + Daftar Pustaka)
-- =========================================================
insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-011000000000', 'Penutup', 'Etika, kode etik, dan kode perilaku merupakan landasan moral dan profesional yang harus dipegang teguh oleh setiap PNS dalam menjalankan tugasnya sebagai abdi negara dan pelayan masyarakat. Modul ini telah menguraikan pentingnya prinsip-prinsip moral, pemahaman tentang etika, serta penerapan kode etik dan kode perilaku dalam kehidupan organisasi pemerintahan, termasuk dalam konteks kekinian seperti sistem kerja fleksibel. Pemahaman dan internalisasi nilai-nilai ini menjadi kunci untuk membentuk birokrasi yang bersih, berintegritas, dan berorientasi pada kepentingan publik.

Kode etik dan kode perilaku bukanlah sekadar aturan formal, melainkan pedoman sikap dan perilaku yang mencerminkan nilai dasar ASN dan budaya organisasi. Dalam situasi kerja yang terus berkembang, kedisiplinan, tanggung jawab, dan integritas justru menjadi semakin penting. Etika harus tercermin dalam cara berpikir, bersikap, dan bertindak, baik saat berada dalam lingkungan kerja fisik maupun digital. Kepatuhan terhadap etika menjadi ukuran kematangan pribadi dan profesionalisme seorang pegawai.

Sebagai bagian dari Kementerian Keuangan, setiap pegawai memiliki tanggung jawab untuk menjaga nama baik institusi dan kepercayaan masyarakat melalui perilaku yang etis di setiap kondisi kerja. Mari jadikan etika sebagai kompas moral dalam bertugas, dan kode etik sebagai pedoman sikap yang memperkuat karakter birokrasi kita. Dengan menjunjung tinggi nilai-nilai tersebut, kita membangun organisasi yang tidak hanya cerdas dan adaptif, tetapi juga bermartabat dan dapat dipercaya.', 1),
('b0000000-0000-4000-8000-011000000000', 'Daftar Pustaka', '- Undang-Undang nomor 20 Tahun 2023 tentang Aparatur Sipil Negara
- Peraturan Pemerintah nomor 42 tahun 2004 tentang Pembinaan Jiwa Korps dan Kode Etik Pegawai Negeri Sipil
- Peraturan Pemerintah nomor 11 tahun 2017 tentang Manajemen Pegawai Negeri Sipil
- Peraturan Pemerintah nomor 17 tahun 2020 tentang Perubahan atas Peraturan Pemerintah nomor 11 tahun 2017 tentang Manajemen Pegawai Negeri Sipil
- Peraturan Pemerintah nomor 94 tahun 2021 tentang Disiplin Pegawai Negeri Sipil
- Peraturan Menteri Keuangan nomor 190/PMK.01/2018 tentang Kode Etik dan Kode Perilaku Pegawai Negeri Sipil di Lingkungan Kementerian Keuangan
- Keputusan Menteri Keuangan Republik Indonesia Nomor 416 Tahun 2023 Tentang Sistem Kerja Fleksibel Di Lingkungan Kementerian Keuangan
- Surat Edaran Menteri Keuangan nomor: SE-44/MK.1/2017 tentang Himbauan Penerapan Nilai Dasar Aparatur Sipil Negara dalam rangka Penyelenggaraan Tugas Pemerintahan bagi Pegawai Negeri Sipil Kementerian Keuangan
- Surat Edaran Menteri Keuangan nomor: SE-12/MK.1/2018 tentang Penerapan Nilai Nilai Kementerian Keuangan dan Kode Etik sebagai Early Warning System di Lingkungan Kementerian Keuangan
- Surat Edaran Menteri Keuangan nomor SE-12/MK.1/2019 tentang Penerapan Nilai-Nilai Pancasila dan Bela Negara bagi Pegawai Negeri Sipil di Lingkungan Kementerian Keuangan
- Surat Edaran Menteri Keuangan nomor: SE-42/MK.1/2020 tentang Panduan Etika dalam Acara Resmi Kedinasan yang dilaksanakan secara Virtual', 2);
