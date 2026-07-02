-- Materi lengkap Modul Pengelolaan Keuangan Negara (M4), diparse dari materi/4. Pengelolaan Keuangan negara.pdf
-- Menggantikan placeholder yang dibuat di seed.sql

delete from contents where chapter_id in (
  'b0000000-0000-4000-8000-040100000000',
  'b0000000-0000-4000-8000-040200000000',
  'b0000000-0000-4000-8000-040300000000',
  'b0000000-0000-4000-8000-040400000000',
  'b0000000-0000-4000-8000-040500000000',
  'b0000000-0000-4000-8000-040600000000'
);

-- ============================================================
-- BAB I: PENDAHULUAN
-- ============================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-040100000000', null, 'Pendapatan negara bisa berasal dari berbagai sumber yakni dari pajak dan bukan pajak yang menurut peraturan perundangan memang menjadi wewenang Pemerintah. Belanja Pemerintah pada hakikatnya dilakukan dalam rangka melaksanakan fungsinya mensejahterakan masyarakat. Sedangkan, sumber-sumber keuangan untuk pembiayaan pembangunan dapat berasal dari utang atau sumber lainnya. Karena wewenang dan fungsi Pemerintah dibatasi oleh peraturan perundangan, maka materi yang akan diuraikan dalam bahan ajar ini juga mencakup pembatasan-pembatasan seperti itu, misalnya persetujuan dan pengawasan yang dilakukan oleh pihak legislatif. Dengan demikian, pertanggungjawaban keuangan yang dikelola oleh Pemerintah diharapkan sesuai dengan koridor peraturan, selain aspek-aspek transparansi dan akuntabilitas.

**Pengelolaan Keuangan Negara** adalah pengelolaan keuangan yang dilakukan oleh Pemerintah terhadap sumber-sumber keuangan berupa pendapatan negara, terhadap belanja negara dan sumber keuangan untuk menutupi/membiayai kekurangan yang mungkin timbul.

Isi bahan ajar ini mencakup pokok bahasan tentang maksud dan tujuan pengelolaan keuangan negara secara umum dan kemudian diikuti dengan pokok bahasan pengelolaan APBN yang mencakup pengelolaan pendapatan, pengelolaan belanja dan pengelolaan pembiayaan untuk menutup defisit anggaran. Di bagian akhir bahan ajar diuraikan pokok bahasan pengawasan dan pertanggungjawaban APBN. Setiap pegawai di Kementerian Keuangan selayaknya memahami dasar-dasar pengelolaan keuangan yang dilakukan oleh Pemerintah, dengan segala keterbatasannya, karena Kementerian Keuangan mempunyai posisi strategis dalam pengelolaan keuangan negara, yakni sebagai **Chief Financial Officer**.', 1)
;

-- ============================================================
-- BAB II: PENGERTIAN PENGELOLAAN KEUANGAN NEGARA
-- ============================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-040200000000', null, 'Keuangan negara, jika dilihat dari sisi teori, bisa mengandung beberapa pengertian, tetapi pengertian yang diuraikan dalam bahan ajar ini dibatasi pada pengertian-pengertian seperti diatur dalam peraturan perundangan di bidang keuangan negara.

Sesuai dengan yang diuraikan dalam Undang-Undang Keuangan Negara (**UU No 17 Tahun 2003 tentang Keuangan Negara**), yang dimaksud dengan Keuangan Negara adalah semua hak dan kewajiban negara yang dapat dinilai dengan uang, serta segala sesuatu - baik berupa uang maupun berupa barang - yang dapat dijadikan milik negara berhubung dengan pelaksanaan hak dan kewajiban tersebut. Kemudian, dalam penjelasan dalam Undang-Undang tersebut, diuraikan secara lengkap sebagaimana diuraikan pada bagian berikut.', 1),
('b0000000-0000-4000-8000-040200000000', 'A. Pengertian Keuangan Negara menurut Peraturan Perundangan', '1. Objek dari keuangan negara adalah semua hak dan kewajiban negara yang dapat dinilai dengan uang, termasuk kebijakan dan kegiatan dalam bidang fiskal dan moneter, dan pengelolaan kekayaan negara yang dipisahkan serta segala sesuatu baik berupa uang maupun berupa barang yang dapat dijadikan milik negara berhubung dengan pelaksanaan hak dan kewajiban tersebut.
2. Subjek keuangan negara adalah seluruh objek keuangan negara yang dimiliki dan/atau dikuasai oleh Pemerintah dan badan hukum publik lainnya.
3. Menurut prosesnya, keuangan negara merupakan seluruh rangkaian kegiatan pengelolaan semua hak dan kewajiban negara yang dapat dinilai dengan uang dimulai dari perumusan kebijakan dan pengambilan keputusan sampai dengan pertanggungjawaban.
4. Tujuan seluruh kebijakan, kegiatan, dan hubungan hukum yang berkaitan dengan pemilikan dan/atau penguasaan objek keuangan negara tersebut dimaksudkan dalam rangka penyelenggaraan Pemerintahan negara.', 2),
('b0000000-0000-4000-8000-040200000000', 'B. Bidang Pengelolaan Keuangan Negara', 'Berdasarkan pengertian keuangan negara dengan pendekatan objek, terlihat bahwa hak dan kewajiban negara yang dapat dinilai dengan uang diperluas cakupannya, yaitu termasuk kebijakan dan kegiatan dalam bidang fiskal, moneter dan pengelolaan kekayaan negara yang dipisahkan. Dengan demikian, bidang pengelolaan keuangan negara dapat dikelompokkan dalam: subbidang pengelolaan fiskal, subbidang pengelolaan moneter, dan subbidang pengelolaan kekayaan negara yang dipisahkan.

**Subbidang Pengelolaan Fiskal** mengandung pengertian segala kegiatan yang mencakup penerimaan dan pengeluaran uang yang dilakukan oleh Pemerintah. Tujuan kebijakan fiskal mencakup alokasi sumber dana keuangan, distribusinya dan stabilisasi ekonomi, yakni mempertahankan laju pertumbuhan ekonomi, membuka lapangan kerja dan kestabilan harga-harga umum. Kebijakan fiskal tercermin dari APBN yang ditetapkan, penjelasan lebih lanjut akan diuraikan dalam materi di bab-bab berikutnya.

**Subbidang Pengelolaan Moneter** adalah kebijakan yang dilakukan oleh Pemerintah di bidang keuangan yang berkenaan dengan jumlah uang yang beredar dalam masyarakat, ketetapan mengenai cadangan wajib bank, tingkat diskonto, kebijakan pengendalian kredit dan kebijakan pasar terbuka, termasuk kurs valuta asing. Kebijakan moneter ini dalam praktiknya dilakukan oleh **Bank Indonesia**. Tujuan kebijaksanaan moneter secara umum adalah:
1. Menyesuaikan jumlah uang yang beredar di masyarakat;
2. Mengarahkan penggunaan uang dan kredit sedemikian rupa sehingga nilai rupiah dapat dipertahankan kestabilannya;
3. Menyediakan kredit dengan suku bunga rendah untuk mendorong produsen untuk meningkatkan kegiatan produksi;
4. Menyediakan tingkat lapangan kerja tertentu;
5. Mengusahakan agar kebijakan moneter dapat dilaksanakan tanpa memberatkan beban keuangan negara dan masyarakat.

**Subbidang Pengelolaan Kekayaan negara yang dipisahkan** adalah komponen keuangan negara yang pengelolaannya diserahkan kepada perusahaan yang seluruh atau sebagian modal atau sahamnya dimiliki oleh negara, atau sering disebut **Badan Usaha Milik Negara (BUMN)** atau **Badan Usaha Milik Daerah (BUMD)**. Kekayaan negara yang dipisahkan ini dikelola secara berbeda, sehingga hubungan dengan APBN bukan hubungan langsung, tetapi tidak langsung, misalnya dalam hal pemerintah menyertakan tambahan modal dalam BUMN atau dalam hal adanya setoran bagian laba BUMN untuk Pemerintah merupakan pos-pos pembiayaan APBN.

Menurut **Musgrave**, keuangan negara tidak hanya berhubungan dengan uang masuk sebagai penerimaan negara dan uang keluar sebagai belanja negara. Keuangan negara juga berhubungan dengan fungsi alokasi sumber-sumber ekonomi, fungsi distribusi, dan fungsi stabilisasi, termasuk pertumbuhan ekonomi dan dampaknya terhadap kegiatan ekonomi masyarakat.', 3),
('b0000000-0000-4000-8000-040200000000', 'C. Tujuan Pengelolaan Keuangan Negara', 'Dengan demikian tujuan Pengelolaan Keuangan Negara adalah:

**1. Mempengaruhi pertumbuhan ekonomi**

Keuangan negara, melalui penerimaan/pendapatan dan pengeluaran/belanja negara dapat mempengaruhi bekerjanya mekanisme harga. Pungutan pajak kepada masyarakat di satu titik akan meningkatkan penerimaan negara, namun di lain pihak akan mengurangi daya beli masyarakat sehingga mengurangi permintaan masyarakat. Sebaliknya, belanja Pemerintah, yang digunakan untuk membeli barang dan jasa dari masyarakat, akan mendorong ekonomi masyarakat dan kemudian akan menambah daya beli masyarakat.

Bagaimana hubungan antara penerimaan negara dengan belanja negara seperti yang dikelola dalam APBN? Apabila penerimaan negara melebihi pengeluaran negara, yang berarti Anggaran Pendapatan dan Belanja Negara (APBN) akan mengalami surplus. Surplus berarti penerimaan negara cukup untuk mendanai belanja pemerintah, namun di lain pihak akan mengurangi daya beli masyarakat (karena beban pajak yang tinggi) dan terjadi ketidakseimbangan antara penawaran dan permintaan.

**2. Menjaga stabilitas ekonomi**

Sebaliknya, apabila pengeluaran lebih besar dari penerimaannya, yang berarti APBN defisit, defisit akan menambah daya beli masyarakat lebih besar. Apabila permintaan masyarakat atas barang dan jasa melebihi penawarannya, harga-harga barang dan jasa akan naik atau terjadi inflasi dan jika penawaran lebih besar dari permintaannya maka harga-harga akan turun atau deflasi.

APBN dapat juga digunakan sebagai alat untuk mengatasi inflasi dan deflasi, serta untuk memelihara stabilisasi perekonomian dengan cara melakukan defisit APBN atau surplus APBN. Dalam konteks ini, kebijakan fiskal yang bersifat **counter-cyclical** menjadi penting, yaitu kebijakan yang bergerak berlawanan arah dengan siklus ekonomi: pemerintah meningkatkan belanja atau menurunkan pajak saat ekonomi melemah (resesi), dan sebaliknya mengurangi belanja atau menaikkan pajak saat ekonomi memanas (inflasi tinggi). Tujuannya adalah untuk meredam fluktuasi ekonomi dan menjaga stabilitas.

Sebaliknya, kebijakan yang bersifat **pro-cyclical** adalah kebijakan yang sejalan dengan arah siklus ekonomi, misalnya meningkatkan belanja saat ekonomi sedang tumbuh dan menguranginya saat ekonomi melemah. Kebijakan ini dapat memperkuat gejolak ekonomi dan berisiko memperburuk kondisi saat terjadi krisis.

Dengan demikian, tugas dan fungsi negara menjadi lebih penting karena tidak sekadar menyelenggarakan pertahanan dan keamanan, menyelenggarakan peradilan, dan menyediakan barang publik semata, namun juga menjaga kestabilan perekonomian melalui kebijakan fiskal yang responsif terhadap dinamika siklus ekonomi.

**3. Merealokasi sumber-sumber ekonomi**

Pendapat **Keynes** menyatakan bahwa pemerintah memiliki peran aktif dalam mengelola perekonomian, terutama melalui kebijakan fiskal. Dalam teori ekonomi Keynesian, intervensi pemerintah diperlukan untuk mengatasi ketidakseimbangan ekonomi seperti pengangguran dan inflasi, dengan cara mengatur pengeluaran dan penerimaan negara. Keynes menekankan pentingnya belanja pemerintah untuk mendorong permintaan agregat saat ekonomi lesu.

Pendapat Keynes ini kemudian dikembangkan oleh **Richard Musgrave**. Dalam bukunya yang berjudul *The Theory of Public Finance*, Musgrave menyatakan bahwa tugas dan fungsi negara meliputi: realokasi sumber-sumber daya ekonomi, redistribusi pendapatan, dan stabilisasi ekonomi.

- Realokasi sumber daya ekonomi dilakukan dengan memanfaatkan sumber-sumber ekonomi yang terbatas secara optimal, termasuk penyediaan barang publik dan pengaturan eksternalitas.
- Redistribusi pendapatan bertujuan untuk menciptakan keadilan sosial melalui sistem perpajakan dan transfer pembayaran.
- Stabilisasi ekonomi dilakukan untuk menjaga kestabilan makroekonomi, seperti mengatasi inflasi, deflasi, dan pengangguran.

**4. Mendorong Re-distribusi Pendapatan**

Melalui kebijakan fiskal dalam APBN, Pemerintah dapat mendorong terjadinya redistribusi pendapatan agar tidak terjadi kesenjangan antara golongan masyarakat kaya dan golongan masyarakat miskin secara mencolok. Untuk menciptakan keadilan, pemerintah akan mengenakan pajak yang lebih banyak kepada kelompok masyarakat yang lebih mampu (*ability to pay principle*) dan mengalokasikannya dalam bentuk pengeluaran/belanja negara yang berpihak kepada masyarakat yang kurang mampu (*pro poor*).

Apabila sumber daya yang ada di masyarakat tidak terdistribusikan secara optimal, maka akan menimbulkan ketidakseimbangan dalam perekonomian negara, seperti kesenjangan sosial dan ketidakstabilan pasar.', 4),
('b0000000-0000-4000-8000-040200000000', 'D. Kekuasaan Pengelolaan Keuangan Negara', 'Berdasarkan **UU Nomor 17 Tahun 2003 tentang Keuangan Negara**, Presiden adalah pemegang kekuasaan umum pengelolaan keuangan negara sebagai bagian dari kekuasaan pemerintahan. Dalam melaksanakan mandat Undang-Undang ini, fungsi pemegang kekuasaan umum atas pengelolaan keuangan negara tersebut dijalankan dalam bentuk:
1. selaku Pengelola Fiskal dan Wakil Pemerintah dalam kepemilikan kekayaan Negara yang dipisahkan dikuasakan kepada Menteri Keuangan;
2. selaku Pengguna Anggaran/Pengguna Barang kementerian negara/lembaga negara dikuasakan kepada masing-masing menteri/pimpinan lembaga;
3. penyerahan kepada gubernur/bupati/walikota selaku kepala Pemerintahan daerah untuk mengelola keuangan daerah dan mewakili Pemerintah daerah dalam kepemilikan kekayaan daerah yang dipisahkan; dan
4. kekuasaan di bidang fiskal tidak termasuk kewenangan di bidang moneter. Untuk mencapai stabilitas nilai rupiah, penetapan dan pelaksanaan kebijakan moneter serta mengatur dan menjaga kelancaran sistem pembayaran dilakukan oleh Bank Sentral, yakni Bank Indonesia yang tunduk pada peraturan perundangan di bidang moneter.

Adapun kekuasaan yang dimaksud selanjutnya sebagai berikut:
a. Dikuasakan kepada Menteri Keuangan, selaku pengelola fiskal dan Wakil Pemerintah dalam kepemilikan kekayaan negara yang dipisahkan;
b. Dikuasakan kepada menteri/pimpinan lembaga selaku Pengguna Anggaran/Pengguna Barang kementerian negara/lembaga yang dipimpinnya;
c. Diserahkan kepada gubernur/bupati/walikota selaku kepala Pemerintahan daerah untuk mengelola keuangan daerah dan mewakili Pemerintah daerah dalam kepemilikan kekayaan daerah yang dipisahkan.

Menteri Keuangan sebagai pembantu Presiden dalam bidang keuangan pada hakekatnya adalah **Chief Financial Officer (CFO)** yang berwenang dan bertanggung jawab atas pengelolaan aset dan kewajiban negara secara nasional. Para menteri dan pimpinan lembaga negara pada hakikatnya adalah **Chief Operational Officer (COO)** yang berwenang dan bertanggung jawab atas penyelenggaraan pemerintahan sesuai bidang tugas dan fungsi masing-masing.

Pembagian kewenangan yang jelas, dalam pengelolaan keuangan negara antara Menteri Keuangan dan menteri teknis tersebut diharapkan dapat memberikan jaminan terlaksananya mekanisme saling uji (*check and balance*) dan jaminan atas kejelasan akuntabilitas Menteri Keuangan sebagai Bendahara Umum Negara dan Menteri Teknis sebagai Pengguna Anggaran. Selain itu, pembagian kewenangan ini memberikan fleksibilitas bagi menteri teknis, sebagai pengguna anggaran, untuk mengatur penggunaan anggaran kementeriannya secara efisien dan efektif dalam rangka optimalisasi kinerja kementeriannya untuk menghasilkan output yang telah ditetapkan, karena kementerian teknis yang paling memahami operasional kebijakan sektor-sektor yang menjadi bidangnya.

Undang-Undang No 17 tahun 2003 ini juga mengatur tentang kekuasaan pengelolaan keuangan daerah yakni dilaksanakan oleh kepala satuan kerja pengelola keuangan daerah selaku pejabat pengelola APBD dan dilaksanakan oleh kepala satuan kerja perangkat daerah selaku pejabat pengguna anggaran/barang daerah.

Agar tujuan pengelolaan seluruh kebijakan, kegiatan, dan hubungan hukum yang berkaitan dengan pemilikan dan/atau penguasaan objek keuangan negara dapat memberikan daya dukung penyelenggaraan pemerintahan negara yang optimal, keuangan negara dikelola berdasarkan asas umum sebagaimana diuraikan pada bagian berikut.', 5),
('b0000000-0000-4000-8000-040200000000', 'E. Asas Umum Pengelolaan Keuangan Negara', '1. **Tahunan**, yang membatasi berlakunya anggaran untuk satu tahun anggaran. DIPA berlaku mulai **1 Januari s.d. 31 Desember** dimana seluruh penerimaan dan pengeluaran negara baru bisa dilakukan pada periode tersebut. Seluruh tagihan pada tahun yang bersangkutan hanya bisa dibebankan pada DIPA tahun yang bersangkutan tersebut.
2. **Universalitas**, yang menghendaki agar setiap pengeluaran negara/daerah dan penerimaan negara/daerah harus berdasarkan dan dimasukkan dalam APBN/APBD. Dana non-budgeter tidak diperkenankan.
3. **Kesatuan**, yaitu semua pendapatan dan belanja negara/daerah disajikan dalam satu dokumen anggaran (*unified budget*) dan tidak lagi dikelompokkan dalam anggaran rutin dan anggaran pembangunan.
4. **Spesialitas**, yaitu kredit anggaran yang tersedia harus dirinci dan jelas peruntukannya.
5. **Akuntabilitas** yang berorientasi pada hasil, yaitu asas yang menentukan bahwa setiap kegiatan dan hasil akhir dari kegiatan pengelolaan keuangan negara harus dapat dipertanggungjawabkan kepada masyarakat atau rakyat sebagai pemegang kedaulatan tertinggi negara, karena pada dasarnya setiap sen uang negara adalah uang rakyat, dan akuntabilitas ini harus sesuai dengan ketentuan peraturan perundang-undangan yang berlaku.
6. **Profesionalitas**, yang berarti mengutamakan keahlian dan kompetensi yang berlandaskan kode etik dan ketentuan perundang-undangan.
7. **Proporsionalitas**, yakni asas yang mengutamakan keseimbangan antara hak dan kewajiban penyelenggara negara.
8. **Keterbukaan**, yaitu asas yang membuka diri terhadap hak masyarakat untuk memperoleh informasi yang benar, jujur, dan tidak diskriminatif tentang pengelolaan keuangan negara dengan tetap memperhatikan perlindungan atas hak-hak asasi pribadi, golongan, dan rahasia negara.
9. **Pemeriksaan keuangan** oleh badan pemeriksa yang bebas dan mandiri, yang dalam praktiknya dilakukan oleh **Badan Pemeriksa Keuangan (BPK RI)**.', 6)
;

-- ============================================================
-- BAB III: ANGGARAN PENDAPATAN DAN BELANJA NEGARA
-- ============================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-040300000000', null, 'Membahas pengertian Anggaran Pendapatan dan Belanja Negara (APBN) perlu dimulai dari pengertian anggaran negara. Anggaran adalah suatu rencana keuangan yang merupakan perkiraan tentang apa yang akan dilakukan dimasa yang akan datang, sedangkan anggaran negara berarti rencana keuangan yang disusun dan dilaksanakan oleh pemerintah. Anggaran negara menjadi sangat penting, karena rencana tersebut merupakan keputusan politik antara pemerintah dan badan legislatif, yakni Dewan Perwakilan Rakyat, sehingga apa yang tercantum dalam anggaran pendapatan, anggaran belanja dan anggaran pembiayaan merupakan hasil perhitungan yang kemudian merupakan kebijakan politik yang menyangkut keuangan negara. Anggaran negara juga bisa dipandang sebagai alat pengendalian keuangan negara, karena merupakan batas-batas yang diatur dalam perundangan. Kebijakan yang tercantum dalam anggaran negara mencakup kebijakan fiskal dan moneter.', 1),
('b0000000-0000-4000-8000-040300000000', 'A. Pengertian APBN', 'Berdasarkan **UU Nomor 17 tahun 2003** menyebutkan bahwa Anggaran Pendapatan dan Belanja Negara (APBN) adalah rencana keuangan tahunan pemerintahan negara yang disetujui oleh Dewan Perwakilan Rakyat. Pada dasarnya, APBN mengandung perkiraan jumlah pendapatan, perkiraan jumlah belanja dan perkiraan pembiayaan. APBN disusun oleh pemerintah dengan tujuan dalam rangka pelaksanaan tugas yang dibebankan kepada pemerintah.

UU Nomor 17 tahun 2003 antara lain menyatakan bahwa pihak yang menyiapkan rancangan APBN adalah pemerintah yang kemudian diajukan kepada Dewan Perwakilan Rakyat (DPR) untuk mendapat persetujuan. Dalam praktiknya, RUU APBN itu setelah disetujui oleh DPR baru dinyatakan berlaku setelah disahkan oleh Presiden.', 2),
('b0000000-0000-4000-8000-040300000000', 'B. APBN dan Kebijakan Fiskal', 'Kebijakan fiskal merupakan salah satu kebijakan ekonomi makro yang otoritas utamanya berada di tangan pemerintah yang diwakili oleh Kementerian Keuangan. Hal tersebut diatur dalam **Undang-Undang Nomor 17 Tahun 2003 tentang Keuangan Negara**, yang menyebutkan bahwa presiden memberikan kuasa pengelolaan keuangan dan kekayaan negara kepada Menteri Keuangan selaku pengelola fiskal dan wakil pemerintah dalam pemilikan kekayaan negara yang dipisahkan. Instrumen utama dalam pengelolaan kebijakan fiskal tercermin dalam kebijakan APBN yang dituangkan dalam UU APBN yang disusun oleh pemerintah dan disahkan oleh DPR setiap tahun.

Kebijakan fiskal sering didefinisikan sebagai pengelolaan anggaran pemerintah untuk mempengaruhi suatu perekonomian, termasuk kebijakan perpajakan (pendapatan negara) yang dipungut dan dihimpun, pembayaran transfer, pembelian barang-barang dan jasa-jasa oleh pemerintah (belanja pemerintah), serta ukuran defisit dan pembiayaan anggaran, yang mencakup semua level pemerintahan. Kebijakan fiskal juga dapat diartikan sebagai langkah-langkah pemerintah untuk mengelola pengeluaran (belanja) dan perpajakan (penerimaan negara) atau penggunaan instrumen-instrumen fiskal untuk mempengaruhi bekerjanya sistem ekonomi agar memaksimumkan kesejahteraan rakyat.', 3),
('b0000000-0000-4000-8000-040300000000', '1. Fungsi Kebijakan Fiskal', 'Pemerintah terkadang memfokuskan pada tujuan-tujuan yang lebih spesifik agar dapat meningkatkan kesejahteraan ekonomi (Tanzi, 1991). Tujuan spesifik tersebut misalnya:
a) Koreksi atas ketidakseimbangan perekonomian yang antara lain ditandai dengan inflasi dan tingkat pengangguran yang tinggi;
b) Stimulasi terhadap pertumbuhan ekonomi, dan
c) Redistribusi pendapatan untuk mengurangi kesenjangan kesejahteraan antar warga negara.

Dengan berbagai tujuan spesifik tersebut, maka secara bersamaan terdapat kebijakan fiskal jangka pendek atau stabilisasi, dan kebijakan fiskal jangka panjang untuk mendorong pertumbuhan ekonomi.

Dalam kenyataan, kebanyakan dari langkah-langkah kebijakan fiskal jangka pendek juga mempunyai konsekuensi jangka panjang, dan dengan cara yang sama berbagai langkah kebijakan fiskal jangka panjang juga mempunyai implikasi-implikasi jangka pendek. Berdasarkan berbagai tujuan tersebut, terdapat tiga aktivitas utama dari otoritas fiskal yang mencerminkan fungsi-fungsi spesifik dari kebijakan fiskal. Ketiga fungsi spesifik dari kebijakan fiskal itu adalah fungsi alokasi, distribusi, dan stabilisasi (Musgrave, 1959). Ketiga fungsi kebijakan fiskal tersebut dapat dijelaskan sebagai berikut:

**a) Stabilisasi**

Fungsi stabilisasi terkait dengan tanggung jawab untuk menjamin perekonomian tetap pada kesempatan kerja penuh (*full employment*) dengan harga yang stabil. Kebijakan perekonomian diarahkan untuk menjaga agar kondisi ekonomi stabil sehingga memberi kesempatan perekonomian dapat terus tumbuh tanpa ada gangguan yang berarti. Pertumbuhan ekonomi sebuah negara mencerminkan peningkatan kesejahteraan warga negara secara umum.

**b) Alokasi**

Pemerintah melakukan intervensi terhadap perekonomian dalam mengalokasikan sumber daya ekonominya. Intervensi pemerintah ini dapat dilakukan dengan secara langsung membeli barang-barang atau melakukan belanja negara seperti pertahanan, pendidikan, pembangunan infrastruktur. Belanja tersebut akan mendorong pertumbuhan ekonomi dan selanjutnya kesejahteraan rakyat. Disisi lain Pemerintah juga membuat kebijakan yang secara tidak langsung mempengaruhi perekonomian dengan melakukan pungutan berbagai pajak dan pemberian subsidi-subsidi, yang mendorong berbagai aktivitas ekonomi atau menghambat aktivitas-aktivitas ekonomi yang perlu dikendalikan.

**c) Distribusi**

Fungsi distribusi berkaitan dengan bagaimana Pemerintah dengan kebijakan anggaran negara harus memperhatikan rasa keadilan dan kepatutan. Hasil-hasil pembangunan yang dibiayai APBN diharapkan dapat didistribusikan secara merata, dan rakyat merasakan keadilan sosial bagi semua. Kebijakan terkait perpajakan (memungut pajak dari si kaya) dan memberikan subsidi bagi si miskin merupakan salah satu contoh yang paling nyata fungsi APBN terkait distribusi pendapatan.

Dalam kondisi krisis fungsi kebijakan fiskal terlihat dengan jelas ketika meminimalisir volatilitas atau fluktuasi siklus bisnis, dimana fungsi stabilisasi sangat dibutuhkan perekonomian. Tujuan utama dari fungsi stabilisasi kebijakan fiskal adalah memelihara tingkat pendapatan nasional aktual mendekati potensialnya. Dengan tujuan seperti itu, maka "kebijakan stabilisasi" seringkali dimaknai sebagai manipulasi dari permintaan agregat agar pada saat yang sama mencapai *full employment* dan stabilitas harga (*price stability*).

Dalam kerangka fungsi stabilisasi tersebut diatas, kebijakan fiskal dipandang sebagai alat yang sangat ampuh dalam membantu memperkecil siklus bisnis. Mengingat sumber penyebab terjadinya fluktuasi ekonomi jangka pendek berasal dari guncangan permintaan agregat dan penawaran agregat, maka usaha untuk mengendalikan fluktuasi siklus bisnis seharusnya dilakukan dengan mengendalikan permintaan agregat dan penawaran agregat melalui berbagai instrumen kebijakan ekonomi makro, baik kebijakan moneter maupun kebijakan fiskal yang tepat. Kebijakan-kebijakan ini mempengaruhi siklus bisnis, sehingga sangat berpotensi menstabilkan perekonomian dari berbagai fluktuasi siklus bisnis jika dilaksanakan secara baik, tepat, akurat, dan *prudent*. Sebaliknya, jika kebijakan-kebijakan tersebut tidak dijalankan dan dikelola dengan baik, justru akan dapat menciptakan masalah baru pada ketidakstabilan ekonomi yang bukan tidak mungkin bahkan akan lebih buruk lagi.

Kebijakan fiskal bekerja dengan dua langkah kebijakan (*policy measures*) dalam membantu upaya menstabilkan siklus bisnis atau fluktuasi ekonomi (IMF, WEO, 2008), yaitu:
a) Melalui **stabilisator otomatis** (*automatic stabilizer*), yang muncul dari bagian sistem fiskal yang secara alamiah berbeda dengan perubahan pada kegiatan ekonomi.
b) Melalui **kebijakan fiskal diskresioner**, yang melibatkan perubahan aktif pada kebijakan yang berdampak pada pengeluaran Pemerintah, pajak dan transfer, dan sering dilakukan untuk alasan di luar stabilisasi.

Oleh karena itu, dalam menilai dampak kebijakan fiskal atau posisi anggaran dalam merespon siklus bisnis atau fluktuasi ekonomi, baik dalam masa *booming* ataupun pada masa resesi, perlu pembedaan antara sifat-sifat otomatis yang melekat pada sistem fiskal (baik pajak maupun belanja) yang dikenal sebagai "*automatic stabilizers*" (stabilisator otomatis) dengan "*discretionary actions*" (tindakan-tindakan diskresioner) atau "*fiscal impulse*" (impuls fiskal).', 4),
('b0000000-0000-4000-8000-040300000000', '2. Instrumen Kebijakan Fiskal', 'Stabilisator atau perubahan-perubahan otomatis adalah perubahan-perubahan dalam pengeluaran pemerintah (G) dan atau penerimaan pajak (T) yang merupakan hasil dari fleksibilitas otomatis dari sistem fiskal (*the built-in flexibility of the fiscal system*). Sebagai contoh, ketika pendapatan menurun dan perekonomian berada dalam resesi, penerimaan pajak secara otomatis menurun dan pengeluaran pemerintah untuk belanja bantuan sosial, kompensasi pengangguran secara otomatis meningkat.

Kebijakan fiskal adalah suatu kebijakan ekonomi untuk mengarahkan kondisi perekonomian untuk menjadi lebih baik dengan mengubah penerimaan dan pengeluaran pemerintah. Analog dengan cara kerja kebijakan moneter dalam mengatur jumlah uang beredar, kebijakan fiskal mengatur pendapatan dan belanja pemerintah, sedangkan bila kebijakan moneter dengan mengelola permintaan-penawaran uang.

Instrumen kebijakan fiskal adalah penerimaan dan pengeluaran pemerintah yang tertuang dalam APBN sebagai suatu rencana operasi keuangan pemerintah, yang mencakup:
a) Peningkatan penerimaan karena perubahan tarif pajak akan berpengaruh pada ekonomi,
b) Pengeluaran Pemerintah akan berpengaruh pada stimulasi pada perekonomian melalui dampaknya terhadap sisi pengeluaran agregat,
c) Politik anggaran (surplus, berimbang, atau defisit) sebagai respon atas suatu kondisi, serta
d) Strategi pembiayaan dan pengelolaan hutang.

Kebijakan APBN Indonesia diarahkan kepada *balanced budget over cycle* yaitu kondisi APBN yang secara rata-rata menuju seimbang selama suatu periode jangka panjang siklus ekonomi. Untuk mewujudkan *balanced budget over cycle* tersebut, kebijakan fiskal seyogyanya harus dapat berfungsi sebagai stabilisator bagi perekonomian, dan atau bersifat kontra-siklis (*countercyclical*) yang ditandai dengan:
a) Pada saat ekonomi sedang dalam masa *boom*, pemerintah dapat menjalankan Surplus Anggaran,
b) Sebaliknya, pada saat resesi/krisis, pemerintah dapat melakukan ekspansi fiskal melalui stimulus fiskal, dengan menjalankan Anggaran Defisit, serta
c) Secara *overall*, dalam satu periode siklus anggaran jangka menengah, APBN mengarah menjadi Berimbang.

Sebagai *Fiscal Policy Tools* (Alat Kebijakan Fiskal), APBN yang sehat adalah APBN yang berkesinambungan, yang ditunjukkan oleh:
a) Defisit yang terkendali menuju seimbang atau surplus,
b) Keseimbangan primer terjaga positif, serta
c) Rasio yang cenderung menurun (*benchmark* rasio hutang terhadap PDB menurut World Bank maksimal **60%**).

Idealnya, APBN mempunyai perangkat penyesuaian otomatis terhadap siklus bisnis (*automatic adjustment tools*). APBN adalah instrumen fiskal utama yang digunakan untuk mencapai kemakmuran rakyat melalui:
a) Penciptaan stabilitas ekonomi,
b) Penyediaan barang publik dan peningkatan kualitas pelayanan dasar,
c) Peningkatan pertumbuhan ekonomi dan penciptaan lapangan kerja,
d) Perlindungan terhadap kelompok miskin, serta
e) Pengembangan ekonomi daerah melalui desentralisasi fiskal dalam rangka otonomi daerah yang luas dan bertanggung jawab (pertumbuhan yang inklusif).

Kebijakan dan Strategi pengelolaan APBN sebagai suatu rencana operasi keuangan Pemerintah diarahkan dan mengacu pada rencana pembangunan: **RPJM, RKP**.', 5),
('b0000000-0000-4000-8000-040300000000', '3. Faktor-faktor yang Mempengaruhi Kebijakan Fiskal', 'APBN, termasuk jumlah besaran dan komposisinya, sangat dipengaruhi oleh berbagai faktor, baik di bidang ekonomi, politik, maupun sosial. Faktor-faktor tersebut dapat berasal dari dalam negeri (internal) maupun dari luar negeri (eksternal).

Faktor internal antara lain adalah:

**Pertama**, arah dan strategi politik dan pembangunan yang ingin dilakukan dalam mencapai tujuan bernegara yang berimplikasi pada kebijakan keuangan negara. Tujuan bernegara tercantum dalam UUD 1945. Terjemahan tujuan tersebut dijabarkan dalam arah dan strategi pembangunan nasional yang dituangkan dalam Rencana Pembangunan Jangka Panjang (25 tahun) dan Rencana Pembangunan Jangka Menengah (RPJM) Nasional. RPJMN mencakup periode 5 tahun yang akan diterjemahkan secara tahunan dalam Rencana Kerja Pemerintah (RKP) yang menentukan prioritas, arah kebijakan nasional yang pada akhirnya menentukan komposisi belanja negara (APBN).

**Kedua**, perkembangan dan kinerja perekonomian nasional yang menggambarkan potensi, kapasitas dan struktur penerimaan negara. Penerimaan pajak suatu negara akan meningkat dengan berkembangnya perekonomian dan sering diukur dengan rasio penerimaan pajak terhadap perekonomian yang diukur dengan Produk Domestik Bruto.

**Ketiga**, kemampuan perencanaan, pengelolaan, dan pengendalian belanja negara. Hal ini berkaitan dengan politik anggaran dan masalah serta kualitas birokrasi. Belanja negara yang dilandasi suatu pilihan politik tertentu akan menyebabkan pola dan alokasi anggaran yang berbeda-beda. Belanja negara cenderung terus meningkat setiap tahun, namun apabila dialokasikan pada prioritas belanja yang tidak tepat misalnya untuk membiayai perang atau pembangunan-pembangunan yang tidak sesuai kebutuhan rakyat dan perekonomian jangka, maka akan berdampak sangat kecil/minimal terhadap kesejahteraan rakyat. Belanja yang besar dapat juga digerogoti oleh birokrasi baik dalam bentuk kebocoran maupun ketidak-efisienan, sehingga tidak akan menghasilkan manfaat kesejahteraan bagi masyarakat keseluruhan.

**Keempat**, kemampuan pengelolaan pembiayaan anggaran. Bila suatu negara memiliki APBN yang surplus, maka masalah pembiayaan adalah bagaimana dilakukan pengelolaan dan pemanfaatan surplus anggaran terutama untuk tujuan antisipasi kebutuhan negara di masa depan. Di negara-negara maju, kebutuhan negara masa depan dikaitkan dengan kondisi demografi (penduduk) yang semakin didominasi oleh kelompok usia tua, sehingga diperkirakan akan memakan anggaran pelayanan kesehatan dan menjaga kesejahteraan hari tua yang semakin tinggi. Sedang bila negara mengalami APBN defisit, maka tantangan terbesar adalah bagaimana mendapatkan pembiayaan anggaran yang paling beresiko kecil termasuk jatuh tempo utang yang berdurasi panjang dan berbiaya (beban bunga utang) rendah. Hal ini sangat ditentukan oleh akses pembiayaan (utang) baik dari berasal dari dalam negeri (pasar obligasi/surat utang domestik) maupun internasional. Akses tersebut ditentukan oleh tingkat perkembangan pasar surat berharga (obligasi), peringkat (*rating*), dan tingkat resiko dari negara tersebut. Risiko suatu negara ditentukan oleh seluruh kualitas APBN, baik dari segi jumlah, komposisi penerimaan, tingkat utang dan jatuh tempo, dan keseluruhan aspek pengelolaan resiko dan beban baik yang langsung maupun yang bersifat kemungkinan (kontinjensi). Negara yang memiliki tingkat hutang tinggi, serta kondisi politik yang cenderung tidak stabil dan terus mengakibatkan belanja negara yang berlebihan dan tidak hati-hati, serta memiliki kualitas birokrasi yang buruk, akan dipersepsikan memiliki resiko gagal (tidak mampu) mengelola anggaran dan utangnya. Dengan demikian peringkat utang negara ini menjadi buruk (*non-investment grade*), dan berakibat pada akses untuk mendapat pembiayaan menjadi sulit atau sangat mahal, sehingga makin mempersulit kondisi dan prospek perbaikan pengelolaan ekonomi dan kesejahteraan rakyatnya.

**Kelima**, faktor-faktor nonekonomi seperti terjadinya bencana alam, perubahan iklim, gejolak politik atau sosial, gangguan keamanan dan terorisme, serta terjadinya perang. Faktor-faktor tersebut selain akan menyebabkan pendapatan negara menurun karena aktivitas perekonomian akan sangat terganggu atau bahkan berhenti, juga akan menyebabkan belanja negara melonjak untuk penanganan masalah. Dengan demikian APBN akan mengalami beban ganda.

Faktor eksternal penting yang juga turut berdampak pada perkembangan APBN Indonesia di antaranya meliputi perkembangan kondisi ekonomi global, pergerakan nilai tukar rupiah dan antar-mata uang asing (khususnya mata uang kuat dunia yang menjadi mitra dagang utama dan kerjasama ekonomi dengan Indonesia), harga minyak mentah di pasar internasional, serta tingkat bunga internasional.

Selanjutnya, karena isi, komposisi, dan nilai dalam APBN sangat dipengaruhi oleh struktur dan kemajuan perekonomian suatu negara, maka perkembangan APBN sebenarnya mencerminkan secara langsung kondisi dan keadaan ekonomi suatu negara. APBN juga mencerminkan jenis dan kualitas kebijakan publik yang diambil oleh suatu negara baik di bidang ekonomi maupun di bidang lainnya yang membawa konsekuensi pada keuangan negara, misalnya kebijakan subsidi, pendidikan, pertahanan, dll.

APBN juga menggambarkan secara langsung kualitas institusi publik yaitu birokrasi suatu negara. Institusi dan birokrasi yang buruk dan terjangkit penyakit korupsi akan ditunjukkan dengan sisi penerimaan APBN yang sangat kecil dan sangat rapuh dibandingkan potensi penerimaan dari perekonomian. Bila potensi dan kegiatan ekonomi suatu negara terlihat maju dan beragam, namun penerimaan pajaknya sangat kecil, artinya kemampuan aparat dan institusi pajak dalam memungut sangat terbatas.

Salah satu indikator untuk melihat perkembangan APBN dari tahun ke tahun adalah dari segi defisit/surplus anggaran. Data menunjukkan bahwa meskipun selama masa orde baru APBN Indonesia selalu dinyatakan dalam kondisi berimbang, namun menurut praktik yang lazim digunakan dalam analisis operasi fiskal Pemerintah di berbagai negara (*international best practices*), pada sebagian besar periode Pemerintahan orde baru APBN sebenarnya mengalami defisit, kecuali pada kurun waktu lima tahun menjelang krisis (**1998**) APBN Indonesia sempat mengalami surplus. Defisit tertinggi terjadi pada tahun **2020** yaitu tahun pertama terjadinya pandemi COVID-19, defisit anggaran tercatat sekitar **6% terhadap PDB**. Sedangkan defisit terendah terjadi pada tahun **1978/1979** sekitar **0,09% terhadap PDB**.

Pada kurun waktu lima tahun sebelum krisis, APBN mengalami surplus rata-rata **2,0% terhadap PDB**. Pada saat krisis berlangsung, APBN kembali menjadi defisit karena APBN menanggung beban sangat berat biaya pemulihan dan penyehatan sektor perbankan dan untuk menciptakan stimulus fiskal dalam rangka pemulihan ekonomi.

Pada lima tahun terakhir, defisit Anggaran Pendapatan dan Belanja Negara (APBN) menunjukkan fluktuasi yang cukup signifikan, yaitu:

| Tahun | Defisit terhadap PDB |
|---|---|
| 2019 | 1,84% |
| 2020 | 1,76% |
| 2021 | 5,70% |
| 2022 | 4,85% |
| 2023 | 1,61% |
| 2024 | 2,29% |

Sesuai dengan **Undang-Undang Nomor 17 Tahun 2003 tentang Keuangan Negara**, batas maksimal defisit APBN terhadap Produk Domestik Bruto (PDB) ditetapkan sebesar **3%**. Namun, akibat pandemi Covid-19 yang menimbulkan tekanan luar biasa terhadap perekonomian nasional, pemerintah menerbitkan **Peraturan Pemerintah Pengganti Undang-Undang (Perppu) Nomor 1 Tahun 2020 tentang Kebijakan Keuangan Negara dan Stabilitas Sistem Keuangan untuk Penanganan Pandemi Covid-19**, yang memberikan kelonggaran bagi defisit APBN untuk melampaui batas 3% selama masa krisis.

Kebijakan fiskal yang ekspansif pada periode **2020–2022** tersebut difokuskan untuk menjaga daya beli masyarakat, mendukung sektor kesehatan, serta mempercepat pemulihan ekonomi. Memasuki tahun 2023, pemerintah berhasil menurunkan kembali defisit ke bawah 3% sejalan dengan komitmen konsolidasi fiskal dan pemulihan ekonomi yang semakin kuat. Pada tahun 2024, outlook APBN menunjukkan arah kebijakan fiskal yang tetap *prudent* namun produktif, dengan defisit yang diproyeksikan sekitar **2,29% terhadap PDB**. Fokus kebijakan diarahkan pada penguatan kualitas belanja negara, percepatan transformasi ekonomi hijau dan digital, serta optimalisasi penerimaan negara melalui reformasi perpajakan dan perluasan basis pajak.

Di sisi pembiayaan, strategi diarahkan untuk menjaga sustainabilitas utang melalui pengelolaan portofolio utang yang hati-hati, memperbesar porsi pembiayaan dalam negeri, dan mendorong inovasi pembiayaan berkelanjutan seperti *green bonds* dan *SDG bonds*. Dengan demikian, perkembangan APBN 2024 mencerminkan upaya pemerintah menjaga keseimbangan antara konsolidasi fiskal dan dukungan terhadap pertumbuhan ekonomi, dengan tetap memperhatikan prinsip kehati-hatian dalam pengelolaan defisit dan pembiayaan negara.', 6),
('b0000000-0000-4000-8000-040300000000', 'C. Siklus Anggaran Pendapatan dan Belanja Negara', 'Pengelolaan APBN secara keseluruhan dilakukan melalui:
1. Perencanaan APBN
2. Penyusunan APBN
3. Pembahasan APBN
4. Penetapan APBN
5. Pelaksanaan APBN
6. Pelaporan dan Pencatatan APBN
7. Pemeriksaan dan Pertanggungjawaban APBN

Pentahapan pengelolaan APBN tersebut dapat digambarkan seperti pada siklus APBN mulai perencanaan sampai dengan pemeriksaan dan pertanggungjawaban (Gambar 1: Siklus APBN).', 7),
('b0000000-0000-4000-8000-040300000000', '1. Tahap Perencanaan dan Penganggaran APBN', 'Tahap perencanaan dan penganggaran dimulai pada awal tahun sebelum tahun anggaran dilaksanakan. Pada tahap ini diawali dengan presiden menyampaikan arah kebijakan untuk satu tahun ke depan pada sidang kabinet. Kebijakan yang disampaikan oleh presiden digunakan sebagai bahan acuan dan pertimbangan pada penyusunan arah, prioritas, dan kebijakan tahun yang direncanakan dalam APBN.

Menteri Keuangan menyusun kapasitas fiskal yang disinkronkan dengan arah kebijakan presiden. Kapasitas fiskal (*resource envelope*) adalah kemampuan keuangan negara yang dihimpun dari pendapatan negara untuk mendanai anggaran belanja negara yang meliputi Belanja K/L & Belanja Non K/L. Dengan tersusunnya kapasitas fiskal, maka Menteri Keuangan dan Kepala Bappenas menetapkan ancar-ancar pagu anggaran yang disampaikan kepada K/L sebagai pedoman dalam penyusunan Rencana Kerja K/L. Penyusunan RAPBN dimulai dari pembicaraan pendahuluan antara pemerintah dengan DPR, Penetapan Pagu Anggaran dan penyusunan RAPBN serta Nota Keuangan.', 8),
('b0000000-0000-4000-8000-040300000000', '2. Tahap Pembahasan APBN', 'Nota Keuangan dan RUU APBN beserta Himpunan RKA-KL yang telah dibahas dalam Sidang Kabinet disampaikan pemerintah kepada DPR selambat-lambatnya pertengahan Agustus. Pimpinan DPR menyampaikan pemberitahuan kepada DPD rencana pembahasan RUU APBN.

Pembahasan RUU APBN dan Nota Keuangan dilakukan pemerintah dengan DPR melalui dua tahapan yaitu rapat kerja dengan Badan Anggaran dan rapat kerja dengan Komisi DPR.

Rapat kerja dengan Badan Anggaran, Pemerintah diwakili oleh Menteri Keuangan dan Bappenas. Rapat kerja komisi I sampai komisi XI, Pemerintah diwakili oleh Menteri/Ketua Lembaga sesuai mitra kerja komisi. Rapat ini membahas RKA-K/L. Hasil pembahasan ini disampaikan secara tertulis kepada Badan Anggaran untuk disinkronisasi. DPR dapat memberikan usulan sesuai dengan hak budget yang dimilikinya. Oleh karena itu, RKAKL sebagai bahan penyusunan RUU APBN dapat dilakukan penyesuaian.

Hasil rapat dari masing-masing panitia kerja dan komisi disampaikan kepada Badan Anggaran untuk ditetapkan. Selanjutnya rapat paripurna DPR untuk menyatakan persetujuan/penolakan dari setiap fraksi serta penyampaian pendapat akhir Pemerintah. Setelah penyampaian pendirian akhir masing-masing fraksi selanjutnya dengan menggunakan hak budget yang dimilikinya DPR yaitu menyetujui atau menolak RUU APBN.', 9),
('b0000000-0000-4000-8000-040300000000', '3. Tahap Penetapan APBN', 'Dalam sidang paripurna DPR menyetujui RUU APBN, pada kesempatan ini pula DPR mempersilahkan pemerintah yang diwakili oleh Menteri Keuangan untuk menyampaikan sambutannya bertalian dengan keputusan DPR tersebut. Sesuai dengan ketentuan yang ada, agar RUU APBN yang telah disetujui DPR dapat berlaku efektif maka presiden mengesahkan RUU APBN itu menjadi UU APBN.

Setelah UU APBN disetujui DPR dan disahkan oleh presiden, tugas pemerintah selanjutnya adalah menetapkan Alokasi Anggaran KL. Alokasi Anggaran KL ini berpedoman pada hasil pembahasan APBN yang dituangkan dalam Berita Acara Hasil Kesepakatan Pembahasan Rancangan APBN antara Pemerintah dan DPR. Berdasarkan alokasi anggaran, maka Kementerian/Lembaga menyesuaikan RKA-K/L sebagai dasar penyusunan Daftar Isian Pelaksanaan Anggaran (DIPA).', 10),
('b0000000-0000-4000-8000-040300000000', '4. Tahap Pelaksanaan APBN', 'Pelaksanaan anggaran diawali dengan disahkannya dokumen pelaksanaan anggaran (DIPA) oleh Menteri Keuangan. Dokumen anggaran yang telah disahkan oleh Menteri Keuangan disampaikan kepada menteri/pimpinan lembaga, Badan Pemeriksa Keuangan (BPK), Gubernur, Direktur Jenderal Perbendaharaan, Kepala Kantor Wilayah Direktorat Jenderal Perbendaharaan terkait, Kuasa Bendahara Umum Negara (KPPN) terkait, dan Kuasa Pengguna Anggaran.

Dokumen tersebut merupakan acuan dan dasar hukum pelaksanaan APBN yang dilakukan oleh Kementerian/Lembaga dan Bendahara Umum Negara. Dokumen-dokumen penting dalam pelaksanaan anggaran adalah Daftar Isian Pelaksanaan Anggaran (DIPA) dan dokumen lain yang dipersamakan dengan DIPA. Sedangkan dokumen pembayaran antara lain terdiri dari Surat Permintaan Pembayaran (SPP), Surat Perintah Membayar (SPM), dan Surat Perintah Pencairan Dana (SP2D).

**Pasal 17 Undang-Undang Perbendaharaan Negara** menyatakan bahwa Pengguna Anggaran/Kuasa Pengguna Anggaran melaksanakan kegiatan yang tercantum dalam dokumen pelaksanaan anggaran yang telah disahkan dan berwenang mengadakan ikatan/perjanjian dengan pihak lain dalam batas anggaran yang telah ditetapkan. Lebih lanjut, pedoman dalam rangka tata cara pelaksanaan APBN diatur dalam **Peraturan Pemerintah Nomor 45 Tahun 2013 tentang Tata Cara Pelaksanaan Anggaran Pendapatan dan Belanja Negara** dan perubahannya yaitu **Peraturan Pemerintah Nomor 50 Tahun 2018**.', 11),
('b0000000-0000-4000-8000-040300000000', '5. Tahap Pelaporan dan Pencatatan APBN', 'Bersamaan dengan tahapan pelaksanaan APBN, K/L dan Bendahara Umum Negara melakukan pelaporan dan pencatatan sesuai dengan Standar Akuntansi Pemerintah (SAP) sehingga menghasilkan Laporan Keuangan Pemerintah Pusat (LKPP) yang terdiri atas Laporan Realisasi Anggaran (LRA), Neraca, Laporan Arus Kas (LAK), dan Catatan Atas Laporan Keuangan (CALK).

Semua laporan keuangan tersebut disusun oleh Menteri Keuangan selaku pengelola fiskal sebagai wujud laporan keuangan pemerintah pusat disampaikan kepada presiden dalam memenuhi pertanggungjawaban pelaksanaan APBN.

BPK melakukan audit atas laporan keuangan pemerintah. Hasil dari laporan dan pencatatan APBN ini merupakan bahan untuk menyusun APBN tahun berikutnya.', 12),
('b0000000-0000-4000-8000-040300000000', '6. Tahap Pemeriksaan dan Pertanggungjawaban APBN', 'Atas LKPP, Badan Pemeriksa Keuangan (BPK) melakukan pemeriksaan dan LKPP yang telah diaudit oleh BPK tersebut disampaikan oleh presiden kepada DPR dalam bentuk rancangan undang-undang pertanggungjawaban pelaksanaan APBN untuk dibahas dan disetujui. Dalam pelaksanaan APBN sebenarnya terdapat pengawasan yang dilakukan oleh unit-unit terkait. Pengawasan tersebut dilakukan oleh atasan langsung pengelola keuangan dan Aparat Pengawas Internal Pemerintah (APIP) masing-masing K/L.', 13),
('b0000000-0000-4000-8000-040300000000', 'D. Struktur dan Format Anggaran Pendapatan dan Belanja Negara', 'Sejak tahun anggaran **1969/70 sampai dengan 1999/2000** APBN disusun dalam bentuk rekening scontro (**T-account**). Di sebelah debet, dicantumkan semua penerimaan dan di sebelah kredit dicantumkan semua pengeluaran. Mulai tahun anggaran **2000** struktur dan format APBN disusun dalam bentuk stafel (**I-Account**). Struktur APBN yang demikian itu disesuaikan dengan standar yang berlaku secara internasional sebagaimana digunakan dalam statistik keuangan pemerintah (*Government Finance Statistics*). Struktur dan format APBN seperti ini dapat digunakan untuk beberapa tujuan yaitu:
1. Untuk meningkatkan transparansi dalam penyusunan APBN.
2. Mempermudah melakukan analisis komparasi mengenai perkembangan operasi fiskal Pemerintah dengan berbagai negara lain.
3. Mempermudah analisis, pemantauan, dan pengendalian pelaksanaan dan pengelolaan APBN sehingga dapat diambil langkah-langkah untuk memperkecil diskrepansi dengan data pembiayaan Bank Indonesia.
4. Menghadapi pelaksanaan desentralisasi fiskal sesuai dengan **UU No. 33 tahun 2004, tentang Perimbangan Keuangan antara Pemerintah Pusat dan Daerah**.

Mulai **Maret 2003** seiring dengan diundangkannya **Undang-Undang Nomor 17 Tahun 2003**, format RAPBN meski menggunakan I-Account mengalami perubahan format pada struktur anggarannya. UU Keuangan Negara mengamanatkan format baru yang disebut format anggaran terpadu (*unified budget*), yakni tidak ada pemisahan antara anggaran belanja rutin dan anggaran belanja pembangunan, tetapi digabungkan menjadi satu.

Perbedaan format T-Account dan I-Account dalam APBN digambarkan pada Gambar 2. Adapun struktur dan format pokok RAPBN yang berlaku sejak **T.A. 2016** dapat dilihat pada Tabel 1: Struktur dan Format Pokok RAPBN.', 14),
('b0000000-0000-4000-8000-040300000000', 'E. Reformasi Penyusunan Anggaran Pendapatan dan Belanja Negara', 'Penyusunan APBN dimaksudkan sebagai penjabaran rencana kerja pemerintah untuk kurun waktu satu tahun. Penyusunannya disesuaikan dengan kebutuhan penyelenggaraan negara dan kemampuan dalam menghimpun pendapatan negara. Dalam penyusunan ini diupayakan agar belanja operasional tidak melampaui pendapatan dalam tahun anggaran yang bersangkutan. Menurut **UU Nomor 17 tahun 2003**, dalam hal anggaran diperkirakan mengalami defisit, defisit yang terjadi dibatasi maksimal **3% dari Produk Domestik Bruto** dan jumlah pinjaman untuk membiayai defisit tersebut maksimal adalah **60% dari Produk Domestik Bruto**. Apabila anggaran diperkirakan akan surplus, pemerintah dapat mengajukan rencana penggunaan surplus anggaran kepada DPR dengan mempertimbangkan prinsip pertanggungjawaban antar generasi sehingga penggunaannya diutamakan untuk pengurangan utang, pembentukan dana cadangan, dan peningkatan jaminan sosial.

Mulai APBN tahun **2005**, format penyusunan APBN menggunakan format baru yakni format anggaran terpadu (*unified budget*) yang melebur anggaran rutin dan pembangunan ke dalam satu format anggaran. Penggabungan belanja rutin (meliputi gaji, pemeliharaan, perjalanan dinas dan belanja barang) dengan belanja pembangunan diharapkan akan mengurangi alokasi yang tumpang tindih. Bersamaan dengan itu, dilakukan juga reklasifikasi belanja negara, khususnya belanja negara untuk Pemerintah pusat.

Disamping format anggaran terpadu, akan dilakukan perbaikan efisiensi dan efektivitas pengelolaan belanja negara serta penyempurnaan manajemen negara melalui anggaran berbasis kinerja, rencana anggaran berjangka menengah (*medium term expenditure framework*), standar akuntansi pemerintah, reklasifikasi belanja menurut fungsi, organisasi dan jenis. Penerapan anggaran terpadu dan reklasifikasi belanja negara tersebut dimaksudkan untuk:
1. Menghilangkan duplikasi anggaran yang disebabkan tidak tegasnya pemisahan antara kegiatan operasional dengan proyek, khususnya proyek-proyek non-fisik.
2. Memudahkan penyusunan anggaran berbasis kinerja (*performance based budgeting*) guna memperjelas keterkaitan antara output/outcome yang dicapai dengan penganggaran organisasi.
3. Memberikan gambaran yang objektif dan proporsional mengenai kegiatan keuangan pemerintah.
4. Meningkatkan kredibilitas statistik keuangan pemerintah dengan mengacu kepada format keuangan Pemerintah sesuai standar internasional.

Salah satu aspek reformasi keuangan negara yang menyangkut penganggaran adalah penerapan anggaran berbasis kinerja (*performance based budgeting*). **Anggaran Berbasis Kinerja (ABK)** adalah penyiapan anggaran negara dimana mengaitkan setiap biaya yang dituangkan dalam kegiatan-kegiatan dengan keluaran (*outputs*) dan manfaat yang dihasilkan (*outcomes*) dari belanja yang dilakukan oleh Pemerintah. Dengan demikian, anggaran negara akan dituangkan dalam program dan kegiatan untuk mencapai kinerja tahunan dan terintegrasi dari rencana kinerja tahunan (Renja)/operasional Renstra dan anggaran tahunan yang konsisten dari tahun ke tahun sesuai dengan kerangka belanja jangka menengah (*Medium Term Expenditure Framework*).', 15),
('b0000000-0000-4000-8000-040300000000', 'F. Reformasi Pelaksanaan Anggaran Pendapatan dan Belanja Negara', 'Pemerintah bersama DPR, pada tanggal **14 Januari 2004**, mengesahkan **UU Nomor 1 Tahun 2004 tentang Perbendaharaan Negara**. UU Perbendaharaan Negara tersebut merupakan ketentuan pelaksanaan sebagai tindak lanjut atas disahkannya **UU Nomor 17 Tahun 2003**. Menurut UU Nomor 1 Tahun 2004, yang dimaksud dengan Perbendaharaan Negara adalah pengelolaan dan pertanggungjawaban keuangan negara, termasuk investasi dan kekayaan yang dipisahkan, yang ditetapkan dalam APBN dan APBD.

Berdasarkan definisi tersebut, cakupan ruang lingkup Perbendaharaan Negara meliputi:
1. Pelaksanaan pendapatan dan belanja negara/daerah.
2. Pengelolaan penerimaan dan pengeluaran negara/daerah.
3. Pengelolaan kas negara/daerah.
4. Pengelolaan piutang dan utang negara/daerah.
5. Pengelolaan investasi dan barang milik negara/daerah.
6. Penyelenggaraan akuntansi dan sistem informasi manajemen keuangan negara/daerah.
7. Penyusunan laporan pertanggungjawaban pelaksanaan APBN/APBD.
8. Penyelesaian kerugian negara/daerah.
9. Pengelolaan keuangan badan layanan umum.
10. Perumusan standar, kebijakan, sistem, dan prosedur yang berkaitan dengan pengelolaan Keuangan Negara dalam rangka pelaksanaan APBN/APBD.

Sebagaimana telah disebutkan sebelumnya, pelaksanaan anggaran dilakukan melalui pembagian tugas antara Menteri Keuangan selaku pemegang kewenangan kebendaharaan dengan Menteri Negara/Lembaga selaku pemegang kewenangan administratif. Dalam Penjelasan Umum UU Nomor 1 Tahun 2004 dijelaskan bahwa kewenangan administratif yang dimiliki menteri negara/lembaga mencakup kewenangan untuk melakukan perikatan atau tindakan lain yang mengakibatkan terjadinya penerimaan atau pengeluaran negara, kewenangan melakukan pengujian dan pembebanan tagihan yang diajukan kepada menteri negara/lembaga sehubungan dengan realisasi perikatan tersebut, serta memerintahkan pembayaran atau menagih penerimaan yang timbul sebagai akibat pelaksanaan anggaran.

Sedangkan dalam upaya melaksanakan kewenangan kebendaharaan, Menteri Keuangan merupakan pengelola keuangan yang berfungsi sebagai kasir, pengawas keuangan, dan sekaligus sebagai manajer keuangan.

Fungsi pengawasan yang dimiliki menteri keuangan terbatas pada aspek *rechmatigheid* (ketaatan pada aturan hukum) dan *wetmatigheid* (ketaatan pada aturan perundangan) serta hanya dilakukan pada saat terjadinya penerimaan atau pengeluaran, sehingga berbeda dengan fungsi *pre-audit* yang dilakukan oleh menteri negara/lembaga atau *post-audit* yang dilaksanakan oleh aparat pengawasan fungsional.', 16),
('b0000000-0000-4000-8000-040300000000', 'G. Tahap-tahap Pelaksanaan APBN', null, 17),
('b0000000-0000-4000-8000-040300000000', '1. Tahapan Pembuatan Komitmen', 'Pada tahapan ini, Pengguna Anggaran/Kuasa Pengguna Anggaran melaksanakan kegiatan sebagaimana tersebut dalam dokumen pelaksanaan anggaran yang telah disahkan. Untuk keperluan pelaksanaan kegiatan tersebut dalam dokumen pelaksanaan anggaran, Pengguna Anggaran/Kuasa Pengguna Anggaran berwenang mengadakan ikatan/perjanjian dengan pihak lain dalam batas anggaran yang telah ditetapkan. Dalam rangka melaksanakan kewenangannya KPA menetapkan Pejabat Pembuat Komitmen (PPK), serta menetapkan panitia/pejabat yang terlibat dalam pelaksanaan kegiatan dan anggaran untuk melaksanakan sebagian kewenangan KPA.', 18),
('b0000000-0000-4000-8000-040300000000', '2. Tahapan Pengujian dan Perintah Pembayaran', 'Setelah kegiatan dilaksanakan, Pengguna Anggaran/Kuasa Pengguna Anggaran berhak untuk:
a. melakukan pengujian;
b. membebankan pada mata anggaran yang telah disediakan; dan
c. memerintahkan pembayaran tagihan-tagihan atas beban APBN/APBD.

Untuk melaksanakan ketentuan tersebut, Pengguna Anggaran/Kuasa Pengguna Anggaran berwenang:
a. menguji kebenaran material surat-surat bukti mengenai hak pihak penagih;
b. meneliti kebenaran dokumen yang menjadi persyaratan/kelengkapan sehubungan dengan ikatan/perjanjian pengadaan barang/jasa;
c. meneliti tersedianya dana yang bersangkutan;
d. membebankan pengeluaran sesuai dengan mata anggaran pengeluaran yang bersangkutan;
e. memerintahkan pembayaran atas beban APBN.

Pejabat yang menandatangani dan/atau mengesahkan dokumen yang berkaitan dengan surat bukti yang menjadi dasar pengeluaran atas beban APBN/APBD bertanggung jawab atas kebenaran material dan akibat yang timbul dari penggunaan surat bukti dimaksud.', 19),
('b0000000-0000-4000-8000-040300000000', '3. Tahapan Pembayaran', 'Pembayaran atas tagihan yang menjadi beban APBN dilakukan oleh Bendahara Umum Negara (BUN)/Kuasa BUN. Dalam rangka pelaksanaan pembayaran BUN/Kuasa BUN berkewajiban untuk:
a. meneliti kelengkapan perintah pembayaran yang diterbitkan oleh Pengguna Anggaran/Kuasa Pengguna Anggaran;
b. menguji kebenaran perhitungan tagihan atas beban APBN yang tercantum dalam perintah pembayaran;
c. menguji ketersediaan dana yang bersangkutan;
d. memerintahkan pencairan dana sebagai dasar pengeluaran negara;
e. menolak pencairan dana, apabila perintah pembayaran yang diterbitkan oleh Pengguna Anggaran/Kuasa Pengguna Anggaran tidak memenuhi persyaratan yang ditetapkan.

Apabila persyaratan pencairan dana telah terpenuhi, atas tagihan yang menjadi beban negara tersebut dilakukan pembayaran oleh bendaharawan pengeluaran dengan memenuhi ketentuan-ketentuan sebagai berikut:
a. Pembayaran atas beban APBN/APBD tidak boleh dilakukan sebelum barang dan/atau jasa diterima.
b. Untuk kelancaran pelaksanaan tugas kementerian negara/lembaga/satuan kerja perangkat daerah kepada Pengguna Anggaran/Kuasa Pengguna Anggaran dapat diberikan uang persediaan yang dikelola oleh Bendahara Pengeluaran.
c. Bendahara Pengeluaran melaksanakan pembayaran dari uang persediaan yang dikelolanya setelah:
   1) meneliti kelengkapan perintah pembayaran yang diterbitkan oleh Pengguna Anggaran/Kuasa Pengguna Anggaran;
   2) menguji kebenaran perhitungan tagihan yang tercantum dalam perintah pembayaran;
   3) menguji ketersediaan dana yang bersangkutan.
d. Bendahara Pengeluaran wajib menolak perintah bayar dari Pengguna Anggaran/Kuasa Pengguna Anggaran apabila persyaratan tidak dipenuhi.
e. Bendahara Pengeluaran bertanggung jawab secara pribadi atas pembayaran yang dilaksanakannya.
f. Pengecualian dari ketentuan ini diatur dalam Peraturan Pemerintah.', 20)
;
