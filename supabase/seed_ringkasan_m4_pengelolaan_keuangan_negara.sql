-- Ringkasan poin-poin + mind map Modul Pengelolaan Keuangan Negara (M4)
-- Menggantikan isi verbatim lama dengan ringkasan padat poin-poin untuk tabel contents,
-- serta menambah outline mind map (Markmap) pada chapters.mindmap.

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
('b0000000-0000-4000-8000-040100000000', null, '- Pendapatan negara berasal dari pajak dan bukan pajak sesuai kewenangan Pemerintah menurut peraturan perundangan.
- Belanja Pemerintah dilakukan untuk mensejahterakan masyarakat.
- Pembiayaan pembangunan (menutup defisit) dapat berasal dari utang atau sumber lain.
- Wewenang dan fungsi Pemerintah dibatasi peraturan perundangan, termasuk persetujuan dan pengawasan oleh legislatif (DPR), agar tercipta transparansi dan akuntabilitas.
- **Pengelolaan Keuangan Negara** = pengelolaan yang dilakukan Pemerintah terhadap sumber-sumber keuangan berupa pendapatan negara, belanja negara, dan sumber keuangan untuk menutup/membiayai kekurangan (defisit) yang mungkin timbul.
- Cakupan bahan ajar: (1) maksud & tujuan pengelolaan keuangan negara umum, (2) pengelolaan APBN (pendapatan, belanja, pembiayaan defisit), (3) pengawasan dan pertanggungjawaban APBN.
- Kementerian Keuangan berperan strategis sebagai **Chief Financial Officer (CFO)** negara.', 1)
;

-- ============================================================
-- BAB II: PENGERTIAN PENGELOLAAN KEUANGAN NEGARA
-- ============================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-040200000000', 'A. Pengertian Keuangan Negara menurut Peraturan Perundangan', '- Dasar hukum: **UU Nomor 17 Tahun 2003 tentang Keuangan Negara**.
- Definisi: Keuangan Negara = semua hak dan kewajiban negara yang dapat dinilai dengan uang, serta segala sesuatu (uang/barang) yang dapat dijadikan milik negara terkait pelaksanaan hak dan kewajiban tersebut.
- 4 unsur pengertian menurut penjelasan UU:
  1. **Objek**: hak & kewajiban negara yang dapat dinilai dengan uang, termasuk kebijakan/kegiatan fiskal & moneter, dan pengelolaan kekayaan negara yang dipisahkan.
  2. **Subjek**: seluruh objek keuangan negara yang dimiliki/dikuasai Pemerintah dan badan hukum publik lainnya.
  3. **Proses**: rangkaian kegiatan pengelolaan mulai dari perumusan kebijakan, pengambilan keputusan, sampai pertanggungjawaban.
  4. **Tujuan**: seluruh kebijakan/kegiatan/hubungan hukum terkait kepemilikan/penguasaan objek keuangan negara ditujukan untuk penyelenggaraan Pemerintahan negara.', 1),
('b0000000-0000-4000-8000-040200000000', 'B. Bidang Pengelolaan Keuangan Negara', '- Bidang pengelolaan keuangan negara terbagi 3 subbidang:
  1. **Subbidang Pengelolaan Fiskal**: penerimaan & pengeluaran uang oleh Pemerintah; tujuan mencakup alokasi, distribusi, stabilisasi ekonomi; tercermin dalam APBN.
  2. **Subbidang Pengelolaan Moneter**: kebijakan terkait jumlah uang beredar, cadangan wajib bank, tingkat diskonto, kebijakan kredit & pasar terbuka, kurs valas; dilaksanakan oleh **Bank Indonesia**. Tujuan: (a) menyesuaikan jumlah uang beredar, (b) menjaga kestabilan nilai rupiah, (c) kredit bunga rendah untuk produksi, (d) lapangan kerja, (e) tanpa memberatkan beban keuangan negara/masyarakat.
  3. **Subbidang Pengelolaan Kekayaan Negara yang Dipisahkan**: dikelola oleh **BUMN**/**BUMD**; hubungan dengan APBN tidak langsung (mis. penyertaan modal, setoran laba BUMN).
- Menurut **Musgrave**: keuangan negara juga berhubungan dengan fungsi alokasi, distribusi, dan stabilisasi, tidak hanya penerimaan-pengeluaran.', 2),
('b0000000-0000-4000-8000-040200000000', 'C. Tujuan Pengelolaan Keuangan Negara', '- 4 tujuan utama:
  1. **Mempengaruhi pertumbuhan ekonomi** — pajak naik mengurangi daya beli; belanja Pemerintah mendorong ekonomi & daya beli. Penerimaan > belanja = APBN surplus.
  2. **Menjaga stabilitas ekonomi** — belanja > penerimaan = APBN defisit; permintaan > penawaran = inflasi; penawaran > permintaan = deflasi. Kebijakan **counter-cyclical** (melawan arah siklus ekonomi: naikkan belanja/turunkan pajak saat resesi, sebaliknya saat inflasi tinggi) vs **pro-cyclical** (searah siklus, berisiko memperburuk krisis).
  3. **Merealokasi sumber-sumber ekonomi** — teori **Keynes**: pemerintah aktif kelola ekonomi lewat fiskal. Dikembangkan **Richard Musgrave** (buku *The Theory of Public Finance*): fungsi negara = realokasi sumber daya, redistribusi pendapatan, stabilisasi ekonomi.
  4. **Mendorong Re-distribusi Pendapatan** — pajak lebih besar untuk yang mampu (*ability to pay principle*), belanja berpihak ke yang kurang mampu (*pro poor*).', 3),
('b0000000-0000-4000-8000-040200000000', 'D. Kekuasaan Pengelolaan Keuangan Negara', '- Dasar hukum: **UU Nomor 17 Tahun 2003**.
- **Presiden** = pemegang kekuasaan umum pengelolaan keuangan negara (bagian kekuasaan pemerintahan), dijalankan dalam bentuk:
  1. Dikuasakan ke **Menteri Keuangan** — selaku Pengelola Fiskal & Wakil Pemerintah dalam kepemilikan kekayaan negara yang dipisahkan.
  2. Dikuasakan ke **menteri/pimpinan lembaga** — selaku Pengguna Anggaran/Pengguna Barang K/L.
  3. Diserahkan ke **gubernur/bupati/walikota** — mengelola keuangan daerah & mewakili Pemerintah daerah dalam kekayaan daerah yang dipisahkan.
  4. Kekuasaan fiskal TIDAK termasuk kewenangan moneter — moneter (stabilitas rupiah) dilakukan oleh **Bank Indonesia** (Bank Sentral).
- Menteri Keuangan = **Chief Financial Officer (CFO)**; menteri/pimpinan lembaga = **Chief Operational Officer (COO)**.
- Pembagian kewenangan menjamin mekanisme *check and balance*: Menteri Keuangan sebagai **Bendahara Umum Negara**, menteri teknis sebagai **Pengguna Anggaran**.
- Kekuasaan pengelolaan keuangan daerah: dilaksanakan kepala satuan kerja pengelola keuangan daerah (pejabat pengelola APBD) dan kepala SKPD (pejabat pengguna anggaran/barang daerah).', 4),
('b0000000-0000-4000-8000-040200000000', 'E. Asas Umum Pengelolaan Keuangan Negara', '9 asas umum pengelolaan keuangan negara:
1. **Tahunan** — anggaran berlaku 1 tahun; DIPA berlaku **1 Januari s.d. 31 Desember**; tagihan tahun bersangkutan hanya dibebankan pada DIPA tahun itu.
2. **Universalitas** — semua pengeluaran/penerimaan negara/daerah wajib masuk APBN/APBD; dana non-budgeter tidak diperkenankan.
3. **Kesatuan** — semua pendapatan & belanja disajikan dalam satu dokumen anggaran (*unified budget*), tidak dipisah anggaran rutin/pembangunan.
4. **Spesialitas** — kredit anggaran harus dirinci jelas peruntukannya.
5. **Akuntabilitas** berorientasi hasil — setiap kegiatan & hasil akhir harus dipertanggungjawabkan ke masyarakat.
6. **Profesionalitas** — mengutamakan keahlian & kompetensi berlandaskan kode etik.
7. **Proporsionalitas** — keseimbangan hak & kewajiban penyelenggara negara.
8. **Keterbukaan** — hak masyarakat memperoleh informasi benar, jujur, tidak diskriminatif, dengan tetap melindungi hak asasi & rahasia negara.
9. **Pemeriksaan keuangan** oleh badan pemeriksa bebas & mandiri — dilakukan oleh **Badan Pemeriksa Keuangan (BPK RI)**.', 5)
;

-- ============================================================
-- BAB III: ANGGARAN PENDAPATAN DAN BELANJA NEGARA
-- ============================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-040300000000', 'A. Pengertian APBN', '- Anggaran negara = rencana keuangan yang disusun & dilaksanakan Pemerintah; merupakan keputusan politik pemerintah-DPR; alat pengendalian keuangan negara.
- Dasar hukum: **UU Nomor 17 Tahun 2003**.
- **APBN** = rencana keuangan tahunan pemerintahan negara yang disetujui DPR; berisi perkiraan pendapatan, belanja, dan pembiayaan.
- Alur: Pemerintah menyiapkan RAPBN → diajukan ke DPR untuk disetujui → berlaku setelah disahkan Presiden.', 1),
('b0000000-0000-4000-8000-040300000000', 'B. APBN dan Kebijakan Fiskal — Fungsi & Instrumen', '- Kebijakan fiskal = otoritas utama di tangan Pemerintah (Kementerian Keuangan), dasar hukum **UU No 17 Tahun 2003**; instrumen utama = APBN (UU APBN, disusun Pemerintah, disahkan DPR tiap tahun).
- 3 fungsi kebijakan fiskal (Musgrave, 1959): **Stabilisasi** (jaga *full employment* & harga stabil), **Alokasi** (intervensi belanja langsung: pertahanan, pendidikan, infrastruktur; & tidak langsung: pajak, subsidi), **Distribusi** (keadilan lewat pajak dari yang kaya, subsidi untuk yang miskin).
- 2 langkah kebijakan fiskal menstabilkan siklus bisnis (IMF, WEO 2008): (a) **automatic stabilizer** (perubahan otomatis pajak/belanja), (b) **kebijakan fiskal diskresioner** (perubahan aktif kebijakan).
- Instrumen kebijakan fiskal: (a) tarif pajak, (b) pengeluaran Pemerintah, (c) politik anggaran (surplus/berimbang/defisit), (d) strategi pembiayaan & pengelolaan utang.
- Arah APBN Indonesia: **balanced budget over cycle**, bersifat **countercyclical**: surplus saat boom, defisit/ekspansi fiskal saat resesi, berimbang secara keseluruhan siklus jangka menengah.
- APBN sehat/berkesinambungan ditandai: defisit terkendali menuju seimbang/surplus, keseimbangan primer positif, rasio utang terhadap PDB menurun (benchmark World Bank maksimal **60%**).
- APBN sebagai *Fiscal Policy Tools* untuk: stabilitas ekonomi, penyediaan barang publik, pertumbuhan ekonomi & lapangan kerja, perlindungan kelompok miskin, desentralisasi fiskal.
- Acuan penyusunan APBN: **RPJM, RKP**.', 2),
('b0000000-0000-4000-8000-040300000000', 'B. Faktor yang Mempengaruhi Kebijakan Fiskal & Data Defisit', '- Faktor internal: (1) arah/strategi politik & pembangunan (RPJPN 25 tahun, RPJMN 5 tahun, RKP tahunan), (2) kinerja perekonomian nasional (rasio pajak terhadap PDB), (3) kemampuan kelola belanja negara, (4) kemampuan kelola pembiayaan anggaran, (5) faktor nonekonomi (bencana, gejolak politik/sosial, perang).
- Faktor eksternal: kondisi ekonomi global, nilai tukar rupiah, harga minyak dunia, tingkat bunga internasional.
- Data historis defisit APBN terhadap PDB:
  | Periode/Tahun | Defisit/Surplus thd PDB |
  |---|---|
  | 1998 (jelang krisis) | Surplus |
  | 5 tahun sebelum krisis 1998 | Surplus rata-rata 2,0% |
  | 1978/1979 | Defisit terendah 0,09% |
  | 2020 (awal pandemi) | Defisit tertinggi ~6% |
  | 2019 | 1,84% |
  | 2020 | 1,76% |
  | 2021 | 5,70% |
  | 2022 | 4,85% |
  | 2023 | 1,61% |
  | 2024 | 2,29% (proyeksi/outlook) |
- **Batas maksimal defisit APBN terhadap PDB = 3%** (UU Nomor 17 Tahun 2003).
- Saat pandemi Covid-19, batas 3% dilonggarkan lewat **Perppu Nomor 1 Tahun 2020 tentang Kebijakan Keuangan Negara dan Stabilitas Sistem Keuangan untuk Penanganan Pandemi Covid-19**.
- 2023: defisit kembali di bawah 3% (konsolidasi fiskal). 2024: fokus penguatan belanja, transformasi ekonomi hijau/digital, reformasi perpajakan, *green bonds* & *SDG bonds*.', 3),
('b0000000-0000-4000-8000-040300000000', 'C. Siklus APBN', '7 tahap pengelolaan APBN (siklus):
1. Perencanaan APBN
2. Penyusunan APBN
3. Pembahasan APBN
4. Penetapan APBN
5. Pelaksanaan APBN
6. Pelaporan dan Pencatatan APBN
7. Pemeriksaan dan Pertanggungjawaban APBN

**Detail tiap tahap:**
- **Perencanaan & Penganggaran**: presiden sampaikan arah kebijakan di sidang kabinet → Menkeu susun kapasitas fiskal (*resource envelope*) → Menkeu & Kepala Bappenas tetapkan pagu anggaran → K/L susun Rencana Kerja → RAPBN & Nota Keuangan.
- **Pembahasan**: Nota Keuangan & RUU APBN disampaikan ke DPR paling lambat **pertengahan Agustus** → rapat kerja Badan Anggaran (Menkeu & Bappenas) dan rapat kerja Komisi I-XI (bahas RKA-K/L) → rapat paripurna DPR menyetujui/menolak.
- **Penetapan**: DPR setujui RUU APBN di paripurna → Presiden sahkan jadi UU APBN → Alokasi Anggaran K/L ditetapkan → K/L susun DIPA.
- **Pelaksanaan**: DIPA disahkan Menkeu, disampaikan ke menteri/pimpinan lembaga, BPK, Gubernur, Dirjen Perbendaharaan, KPPN, KPA. Dokumen pembayaran: SPP, SPM, SP2D. **Pasal 17 UU Perbendaharaan Negara**: PA/KPA berwenang mengadakan ikatan/perjanjian dalam batas anggaran. Tata cara pelaksanaan diatur **PP Nomor 45 Tahun 2013** (diubah **PP Nomor 50 Tahun 2018**).
- **Pelaporan & Pencatatan**: sesuai SAP, menghasilkan **LKPP** (LRA, Neraca, LAK, CaLK); BPK audit; jadi bahan APBN tahun berikutnya.
- **Pemeriksaan & Pertanggungjawaban**: BPK periksa LKPP → disampaikan Presiden ke DPR sebagai RUU pertanggungjawaban APBN; pengawasan internal oleh atasan langsung & APIP K/L.', 4),
('b0000000-0000-4000-8000-040300000000', 'D. Struktur dan Format APBN', '- **1969/70 – 1999/2000**: format rekening scontro/**T-Account** (debet = penerimaan, kredit = pengeluaran).
- **Mulai tahun anggaran 2000**: format stafel/**I-Account**, sesuai standar internasional (*Government Finance Statistics*).
- Tujuan format I-Account: transparansi, komparasi antarnegara, mempermudah analisis/pengendalian, menghadapi desentralisasi fiskal sesuai **UU No. 33 Tahun 2004** tentang Perimbangan Keuangan Pusat-Daerah.
- **Mulai Maret 2003** (seiring **UU Nomor 17 Tahun 2003**): format anggaran terpadu (*unified budget*) — tidak ada pemisahan anggaran rutin & pembangunan.
- Struktur & format pokok RAPBN berlaku sejak **T.A. 2016**.', 5),
('b0000000-0000-4000-8000-040300000000', 'E. Reformasi Penyusunan APBN', '- Prinsip: belanja operasional tidak melampaui pendapatan tahun berjalan.
- Menurut **UU Nomor 17 Tahun 2003**: batas defisit maksimal **3% dari PDB**; batas pinjaman untuk membiayai defisit maksimal **60% dari PDB**.
- Jika surplus: diprioritaskan untuk pengurangan utang, dana cadangan, jaminan sosial (prinsip pertanggungjawaban antargenerasi).
- **Mulai APBN 2005**: format anggaran terpadu (*unified budget*) — belanja rutin (gaji, pemeliharaan, perjalanan dinas, belanja barang) + belanja pembangunan digabung.
- Tujuan reklasifikasi & anggaran terpadu: (1) hilangkan duplikasi anggaran, (2) permudah anggaran berbasis kinerja, (3) gambaran objektif kegiatan keuangan pemerintah, (4) tingkatkan kredibilitas statistik keuangan sesuai standar internasional.
- **Anggaran Berbasis Kinerja (ABK)**: kaitkan biaya kegiatan dengan *output* & *outcome*; sejalan dengan **Medium Term Expenditure Framework (MTEF)** / kerangka belanja jangka menengah, dan Renja/Renstra.', 6),
('b0000000-0000-4000-8000-040300000000', 'F. Reformasi Pelaksanaan APBN', '- **14 Januari 2004**: disahkan **UU Nomor 1 Tahun 2004 tentang Perbendaharaan Negara** (tindak lanjut UU No 17 Tahun 2003).
- **Perbendaharaan Negara** = pengelolaan & pertanggungjawaban keuangan negara termasuk investasi & kekayaan dipisahkan dalam APBN/APBD.
- 10 ruang lingkup Perbendaharaan Negara: (1) pelaksanaan pendapatan & belanja, (2) pengelolaan penerimaan & pengeluaran, (3) pengelolaan kas negara/daerah, (4) pengelolaan piutang & utang, (5) pengelolaan investasi & BMN/D, (6) akuntansi & SIM keuangan, (7) laporan pertanggungjawaban APBN/APBD, (8) penyelesaian kerugian negara/daerah, (9) pengelolaan keuangan BLU, (10) perumusan standar/kebijakan/sistem/prosedur.
- Pembagian kewenangan: **Menteri Keuangan** (kewenangan kebendaharaan: kasir, pengawas keuangan, manajer keuangan) vs **Menteri/Lembaga** (kewenangan administratif: perikatan, pengujian & pembebanan tagihan, perintah pembayaran).
- Fungsi pengawasan Menkeu terbatas pada aspek **rechtmatigheid** (ketaatan hukum) & **wetmatigheid** (ketaatan perundangan) saat penerimaan/pengeluaran — berbeda dari *pre-audit* (menteri/lembaga) dan *post-audit* (aparat pengawasan fungsional).', 7),
('b0000000-0000-4000-8000-040300000000', 'G. Tahap-tahap Pelaksanaan APBN (Level Operasional)', '3 tahapan pelaksanaan APBN:
1. **Tahapan Pembuatan Komitmen** — PA/KPA laksanakan kegiatan sesuai dokumen anggaran; berwenang mengadakan ikatan/perjanjian dalam batas anggaran; KPA menetapkan **Pejabat Pembuat Komitmen (PPK)**.
2. **Tahapan Pengujian dan Perintah Pembayaran** — PA/KPA berhak: uji kebenaran material bukti, teliti kelengkapan dokumen, teliti ketersediaan dana, bebankan pengeluaran, perintahkan pembayaran atas beban APBN. Pejabat penandatangan dokumen bertanggung jawab atas kebenaran material.
3. **Tahapan Pembayaran** — dilakukan oleh **Bendahara Umum Negara (BUN)/Kuasa BUN**: teliti kelengkapan perintah bayar, uji kebenaran perhitungan tagihan, uji ketersediaan dana, perintahkan pencairan dana, tolak jika tidak memenuhi syarat. Ketentuan: pembayaran tidak boleh sebelum barang/jasa diterima; **Bendahara Pengeluaran** kelola uang persediaan dan bertanggung jawab pribadi atas pembayaran yang dilaksanakan; pengecualian diatur PP.', 8)
;

-- ============================================================
-- BAB IV: PENGELOLAAN PENDAPATAN NEGARA
-- ============================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-040400000000', 'A. Pengertian Pengelolaan Pendapatan Negara', '- **Pendapatan Negara** = Penerimaan Perpajakan + Penerimaan Negara Bukan Pajak (PNBP) + Hibah.
- **Penerimaan Perpajakan** = Pajak Dalam Negeri + Pajak Perdagangan Internasional.
  - Pajak Dalam Negeri: Pajak Penghasilan (PPh), PPh Migas, PPN & PPnBM, PBB, BPHTB, Cukai, Pajak Lainnya.
  - Pajak Perdagangan Internasional: Bea Masuk, Pajak Ekspor.', 1),
('b0000000-0000-4000-8000-040400000000', 'B. Penerimaan Perpajakan — Pajak Dalam Negeri', '- **Pajak Penghasilan (PPh)**: objek = setiap tambahan kemampuan ekonomis WP (gaji, laba usaha, keuntungan pengalihan harta, bunga, dividen, royalti, sewa, dll). Bukan objek pajak: bantuan/sumbangan, warisan, harta hibah keluarga sedarah garis lurus, dll. Subjek = orang pribadi/badan (kecuali pejabat diplomatik asing tertentu & organisasi internasional). Dasar hukum: **UU Nomor 7 Tahun 1983 tentang Pajak Penghasilan**, terakhir diubah **UU Nomor 7 Tahun 2021 tentang Harmonisasi Peraturan Perpajakan (HPP)**.
- **PPh Migas**: dipungut dari kontraktor migas (izin dari Pertamina); bentuk kontrak historis: Kontrak Karya → Kontrak Bagi Hasil (*Production Sharing Contract*) → Kontrak Bagi Hasil yang Disempurnakan/**Kontrak Operasi Bersama (Joint Operation Contract)** mulai berlaku **1977**.
- **PPN dan PPnBM**: pajak tidak langsung atas penyerahan Barang/Jasa Kena Pajak; dikenakan atas nilai tambah (dikreditkan dengan pajak masukan). Dasar hukum: **UU Nomor 8 Tahun 1983**, terakhir diubah **UU Nomor 7 Tahun 2021 (HPP)**.
- **Cukai**: pungutan atas Barang Kena Cukai (BKC): (1) etil alkohol/etanol, (2) minuman mengandung etil alkohol, (3) hasil tembakau (sigaret, cerutu, rokok elektrik, dll). Dasar hukum: **UU No. 11 Tahun 1995 tentang Cukai**, diubah **UU Nomor 7 Tahun 2021 (HPP)**.
- **Pajak Bumi dan Bangunan (PBB)**: pajak kebendaan (besar pajak ditentukan objek, bukan subjek); sektor: Perkotaan, Pedesaan, Perkebunan, Perhutanan, Pertambangan Migas & Umum. Dasar hukum: **UU Nomor 12 Tahun 1985**, diubah **UU Nomor 12 Tahun 1994**. PBB Pedesaan & Perkotaan (**PBB-P2**) dialihkan jadi pajak daerah paling lambat **1 Januari 2014** (bisa lebih awal **1 Januari 2011** jika daerah siap). **BPHTB** dialihkan ke pajak daerah per **1 Januari 2011** (**UU Nomor 28 Tahun 2009 tentang PDRD**) — sejak 2011 tidak lagi dicatat di APBN. PBB pusat = Sektor Perkebunan, Perhutanan, Pertambangan Migas & Umum. PBB-P2 diatur **UU Nomor 1 Tahun 2022 tentang HKPD**.
- **Pajak Lainnya**: **Bea Materai**, pajak atas dokumen, diatur **UU Nomor 10 Tahun 2020 tentang Bea Materai**; berlaku untuk dokumen dengan nilai nominal di atas **Rp5.000.000**; tarif tetap **Rp10.000**.', 2),
('b0000000-0000-4000-8000-040400000000', 'B. Penerimaan Perpajakan — Pajak Perdagangan Internasional', '- **Bea Masuk**: dipungut atas barang yang dimasukkan ke Daerah Pabean (impor); objek = barang impor; subjek = importir. Dasar hukum: **UU No. 17 Tahun 2006 tentang Kepabeanan**. Tujuan: melindungi industri dalam negeri; namun terkikis dengan **ASEAN Free Trade Area (AFTA)** yang menghapus bea masuk impor mulai **2015**.
- **Pajak Ekspor**: dikenakan atas ekspor komoditas tertentu (kulit, rotan mentah, kayu gelondongan, karet, kopra, kopi, dll) — untuk membatasi ekspor bahan mentah demi mendorong industri hilir & lapangan kerja.', 3),
('b0000000-0000-4000-8000-040400000000', 'C. Penerimaan Negara Bukan Pajak (PNBP)', '- **PNBP** = pungutan atas manfaat langsung/tidak langsung dari layanan/pemanfaatan sumber daya & hak negara, di luar pajak & hibah, dikelola dalam mekanisme APBN. Dasar hukum: **UU Nomor 9 Tahun 2018**.
- Objek PNBP memenuhi kriteria: (a) pelaksanaan tugas & fungsi pemerintah, (b) penggunaan dana APBN, (c) pengelolaan kekayaan negara, (d) penetapan peraturan perundang-undangan.
- 6 jenis objek PNBP:
  1. Pemanfaatan Sumber Daya Alam (bumi, air, udara, ruang angkasa, kekayaan alam yang dikuasai negara).
  2. Pelayanan (jasa, penyediaan barang, pelayanan administratif).
  3. Pengelolaan Kekayaan Negara Dipisahkan (penyertaan modal negara).
  4. Pengelolaan Barang Milik Negara.
  5. Pengelolaan Dana.
  6. Hak Negara Lainnya.', 4),
('b0000000-0000-4000-8000-040400000000', 'D. Penerimaan Hibah', '- **Hibah** = pendapatan Pemerintah dalam bentuk uang/barang/jasa dari Pemerintah lain, perusahaan negara/daerah, masyarakat, organisasi kemasyarakatan; sifat tidak wajib, tidak mengikat, tidak terus-menerus.
- Digunakan untuk program pembangunan nasional dan/atau penanggulangan bencana & bantuan kemanusiaan.
- Prinsip penerimaan hibah: transparan, akuntabel, efisien, efektif, kehati-hatian, tanpa ikatan politik, tidak mengganggu stabilitas keamanan negara.
- Pos penerimaan hibah mulai ada di APBN sejak struktur baru APBN **tahun 2000**; realisasi mulai **2001**; mulai dianggarkan (bukan hanya dicatat realisasi) pertama kali di **APBN-P 2002**.', 5)
;

-- ============================================================
-- BAB V: PENGELOLAAN BELANJA PEMERINTAH DAN PEMBIAYAAN DEFISIT ANGGARAN
-- ============================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-040500000000', 'A. Pengertian Pengelolaan Belanja dan Pembiayaan Defisit Anggaran', '- **Belanja negara** = pengeluaran negara untuk membiayai tugas umum pemerintahan & pembangunan; terdiri atas **Belanja Pemerintah Pusat** dan **Transfer ke Daerah (TKD)**.
- **Defisit anggaran** = belanja > pendapatan; ditujukan mempercepat kesejahteraan lewat belanja negara (efek ganda pada pertumbuhan ekonomi & lapangan kerja); didanai dari berbagai sumber pembiayaan termasuk utang.', 1),
('b0000000-0000-4000-8000-040500000000', 'B. Belanja Pemerintah Pusat', '- Format baru APBN: tidak ada pemisahan belanja rutin vs pembangunan (mengikuti *medium term expenditure framework* & anggaran berbasis kinerja).
- 8 jenis Belanja Pemerintah Pusat:
  1. **Belanja pegawai** — kompensasi uang/barang untuk aparatur negara (bukan pembentukan modal).
  2. **Belanja barang** — pembelian barang/jasa habis pakai (rincian: belanja barang, jasa, pemeliharaan, perjalanan).
  3. **Belanja modal** — sarana/prasarana fisik bermanfaat >1 tahun anggaran (tanah, peralatan & mesin, gedung & bangunan, jaringan).
  4. **Pembayaran bunga utang** — kewajiban dalam negeri & luar negeri.
  5. **Subsidi** — jaga stabilitas harga, bantu masyarakat kurang mampu/UKM, bantu BUMN pelayanan umum.
  6. **Belanja hibah** — transfer tidak wajib ke negara lain/organisasi internasional.
  7. **Bantuan sosial** — transfer uang/barang untuk lindungi risiko sosial (bencana, sarana ibadah, beasiswa, bantuan hukum, kemiskinan).
  8. **Belanja lain-lain** — tidak terklasifikasi jenis di atas, termasuk dana cadangan umum.', 2),
('b0000000-0000-4000-8000-040500000000', 'B. Transfer ke Daerah (TKD)', '- Dasar hukum Hubungan Keuangan Pusat-Daerah: **UU Nomor 1 Tahun 2022 tentang HKPD**; 4 pilar: sistem pajak efisien, minimalkan ketimpangan vertikal/horizontal (TKD & Pembiayaan Utang Daerah), kualitas Belanja Daerah, harmonisasi kebijakan fiskal.
- **TKD** = dana APBN untuk Daerah, meliputi: DBH, DAU, DAK, Dana Otonomi Khusus, Dana Keistimewaan, Dana Desa.
  1. **Dana Bagi Hasil (DBH)** — persentase pendapatan tertentu dibagi ke Daerah penghasil & nonpenghasil; terdiri DBH Pajak (PPh, PBB, cukai hasil tembakau) & DBH SDA (kehutanan, mineral & batu bara, migas, panas bumi, perikanan).
  2. **Dana Alokasi Umum (DAU)** — kurangi ketimpangan kemampuan keuangan & layanan publik antar-daerah; pertimbangan: kebutuhan layanan publik, kemampuan keuangan negara, pagu TKD, target pembangunan nasional.
  3. **Dana Alokasi Khusus (DAK)** — danai program/kegiatan prioritas nasional; terdiri DAK fisik, DAK nonfisik, hibah ke daerah.
  4. **Dana Otonomi Khusus** — untuk daerah dengan otonomi khusus sesuai UU terkait.
  5. **Dana Keistimewaan** — khusus Daerah Istimewa Yogyakarta.
  6. **Dana Desa** — untuk desa (penyelenggaraan pemerintahan, pembangunan, pemberdayaan masyarakat); dihitung dari kinerja desa, jumlah desa/penduduk, kemiskinan, luas wilayah, tingkat kesulitan geografis.', 3),
('b0000000-0000-4000-8000-040500000000', 'C. Pembiayaan Defisit Anggaran', '- Kebijakan fiskal ekspansif = naikkan belanja untuk dorong pertumbuhan & daya beli → belanja > pendapatan → perlu pembiayaan.
- Dasar hukum: **Pasal 1 Angka 17 UU Nomor 17 Tahun 2003** — pembiayaan = penerimaan yang harus dibayar kembali dan/atau pengeluaran yang akan diterima kembali.
- **1. Pembiayaan Dalam Negeri**:
  - Sektor Perbankan: pinjaman/kredit bank (Bank Umum/Sentral), penggunaan saldo rekening pemerintah (RDI, non-RDI) — jarang dipakai karena berpotensi memicu inflasi.
  - Sektor Nonperbankan: **Privatisasi BUMN** (kriteria: bukan strategis, daya saing kuat, menarik investor, sehat & menguntungkan), **Penjualan Aset Restrukturisasi Perbankan** (bank BBO/BTO eks BPPN), **Penerbitan Surat Utang Negara (SUN)** dalam rupiah/valas (risiko: tingkat bunga, nilai tukar, pembiayaan kembali).
- **2. Pembiayaan Luar Negeri**: pembiayaan luar negeri bersih = penarikan pinjaman luar negeri dikurangi cicilan utang pokok. Jenis pinjaman: **Pinjaman Program** (awalnya bahan pangan, kemudian uang/devisa) dan **Pinjaman Proyek** (peralatan & tenaga ahli). Sumber lain: obligasi Indonesia di pasar modal internasional (pinjaman komersial). **Debt Service Ratio (DSR)** = rasio Angsuran + Bunga Pinjaman terhadap Net Ekspor (Migas + Non Migas) — makin besar rasio, makin menyulitkan negara. Sejak **tahun 2000**, pemerintah berkomitmen kurangi peran pinjaman luar negeri, penggunaan lebih transparan, efektif, efisien untuk kegiatan produktif.', 4)
;

-- ============================================================
-- BAB VI: PENGAWASAN ATAS PELAKSANAAN APBN DAN PERTANGGUNGJAWABAN
-- ============================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-040600000000', 'A. Pengertian dan Sistem Pengawasan atas APBN', '- APBN = mandat DPR ke Pemerintah untuk memungut pendapatan & membelanjakannya dalam batas & tujuan yang ditetapkan per tahun anggaran; Pemerintah wajib pertanggungjawaban (**Pasal 30 ayat 1-2 UU Nomor 17 Tahun 2003**).
- 2 sistem pengawasan utama: **Sistem Pengawasan Eksternal Pemerintah** dan **Sistem Pengawasan Internal Pemerintah**.', 1),
('b0000000-0000-4000-8000-040600000000', 'B. Sistem Pengawasan Eksternal — DPR, BPK, Masyarakat', '- **Pengawasan oleh DPR**: dasar hukum **UUD 1945**, **UU No. 22 Tahun 2003** tentang Susunan & Kedudukan MPR/DPD/DPR/DPRD. **Pasal 20A UUD 1945**: DPR punya fungsi legislasi, anggaran, dan pengawasan. DPD turut mengawasi (**Pasal 46 UU No. 22 Tahun 2003**).
- **Pengawasan oleh BPK**: dasar hukum **Pasal 23E UUD 1945**; direalisasikan **UU No. 5 Tahun 1973 tentang BPK**. 3 fungsi BPK: (1) audit & operasional, (2) yudikatif (peradilan komptabel/tuntutan perbendaharaan), (3) rekomendasi. 3 tipe pemeriksaan BPK (**Pasal 4 UU Nomor 15 Tahun 2004**): (1) pemeriksaan keuangan (opini kewajaran laporan keuangan), (2) pemeriksaan kinerja (ekonomi, efisiensi, efektivitas), (3) pemeriksaan dengan tujuan tertentu (termasuk investigatif). Menurut tujuannya, pemeriksaan BPK: penguasaan & pengurusan keuangan, ketaatan peraturan, kehematan & efisiensi, efektivitas pencapaian tujuan. BPK manfaatkan hasil kerja **APIP**. Laporan Hasil Pemeriksaan (LHP) dihimpun dalam **Buku HAPSEM (Hasil Pemeriksaan Semester)** disampaikan ke DPR lewat Rapat Paripurna.
- **Pengawasan oleh Masyarakat**: dasar **Pasal 1 ayat 2 & Pasal 28 UUD 1945**, **TAP MPR No. XV/1998**, **UU No. 28/1999 tentang Penyelenggaraan Negara Bersih & Bebas KKN (Pasal 8-9)**, **UU No. 6/2014 tentang Desa (Pasal 82 ayat 2)**, **PP No. 68/1999**, **PP No. 96/2012**, **PP No. 45/2017**. 4 bentuk peran serta masyarakat: hak mencari/memperoleh/memberi informasi, hak layanan sama & adil, hak sampaikan saran/pendapat, hak perlindungan hukum.', 2),
('b0000000-0000-4000-8000-040600000000', 'C. Sistem Pengawasan Internal — BPKP dan Itjen', '- Struktur APIP: **BPKP**, **Inspektorat Jenderal (Itjen)** Kementerian/Unit Pengawasan LPND, Satuan Pengawas Intern BUMN. Tujuan pengawasan APIP: kelancaran & ketepatan pelaksanaan kegiatan pemerintahan/pembangunan; lingkup: pemeriksaan operasional/komprehensif dengan rekomendasi perbaikan.
- **BPKP**: dibentuk **Keppres RI No. 31 Tahun 1983** (3 Juni 1983); diatur ulang **Perpres Nomor 192 Tahun 2014** (diubah **Perpres Nomor 20 Tahun 2023**); organisasi diatur **Peraturan BPKP Nomor 9 Tahun 2021** (diubah **Peraturan BPKP Nomor 3 Tahun 2023**). Tugas: urusan pemerintahan bidang pengawasan keuangan negara/daerah & pembangunan nasional.
- **Inspektorat Jenderal (Itjen) Kementerian**: dibentuk **Keppres RI No. 44 & 45 Tahun 1974** (telah dicabut); diatur **Perpres Nomor 47 Tahun 2009** (diubah terakhir **Perpres No. 13 Tahun 2014**). Di Kemenkeu: **PMK Nomor 118/PMK.01/2021** (diubah **PMK Nomor 135 Tahun 2023**) — Itjen mengawasi intern pelaksanaan tugas Kemenkeu & koordinasi pengawasan pelaksanaan anggaran BA BUN pada K/L.', 3),
('b0000000-0000-4000-8000-040600000000', 'D. Pertanggungjawaban Pelaksanaan APBN', '- Sebelum **UU No. 17 Tahun 2003**: bentuk pertanggungjawaban = **Perhitungan Anggaran Negara (PAN)** (dasar **Pasal 69 ICW**).
- Setelah **UU No. 17 Tahun 2003**: berubah jadi **Laporan Keuangan**, mengacu standar akuntansi pemerintahan berbasis **IPSAS (International Public Sector Accounting Standard)**.
- Landasan hukum: **Pasal 30 UU Nomor 17 Tahun 2003**, **Pasal 23 ayat 5 UUD 1945**, **Pasal 55 ayat 1 UU No. 1 Tahun 2004**, **Pasal 2 ayat 1 UU No. 15 Tahun 2004**.
- Batas waktu penyampaian Laporan Keuangan ke DPR: TA 2004 = **9 bulan**; mulai TA 2005 = **6 bulan**.
- Prosedur: K/L sampaikan Laporan Keuangan (LRA, Neraca, CaLK + LK BLU) ke Menkeu selambat-lambatnya **2 bulan** setelah tahun anggaran berakhir (setelah diperiksa & diberi opini BPK) → Menkeu konsolidasikan jadi **Laporan Keuangan Pemerintah Pusat (LKPP)** → bagian RUU Pertanggungjawaban Pelaksanaan APBN → dibahas DPR (memperhatikan hasil pemeriksaan semester & opini BPK) → disetujui & diundangkan.', 4),
('b0000000-0000-4000-8000-040600000000', 'E. Bentuk dan Isi Laporan Keuangan', 'Standar: **Pernyataan Standar Akuntansi Pemerintah (PSAP)**, disusun **Komite Standar Akuntansi Pemerintahan**, ditetapkan PP dengan pertimbangan BPK. 7 komponen Laporan Keuangan Pemerintah:
1. **Laporan Realisasi Anggaran (LRA)** — ikhtisar sumber, alokasi, penggunaan sumber daya; bandingkan anggaran vs realisasi pendapatan/belanja/pembiayaan.
2. **Laporan Perubahan Saldo Anggaran Lebih (LPSAL)** — kenaikan/penurunan SAL; komponen: SAL awal, penggunaan SAL, SiLPA/SiKPA, koreksi kesalahan pembukuan, SAL akhir.
3. **Neraca** — posisi keuangan: aset (lancar/tidak lancar), kewajiban (jangka pendek/panjang), ekuitas dana pada tanggal tertentu; neraca Pemerintah Pusat = konsolidasi neraca K/L.
4. **Laporan Operasional (LO)** — sumber daya ekonomi yang menambah ekuitas & penggunaannya; unsur: Pendapatan-LO, Beban, Surplus/defisit non operasional, Pos luar biasa, Surplus/defisit-LO.
5. **Laporan Arus Kas (LAK)** — arus masuk/keluar kas dari aktivitas operasional, investasi aset non keuangan, dana cadangan, pembiayaan, transaksi non-anggaran; disusun oleh unit yang jalankan fungsi perbendaharaan (Kemenkeu di pusat; PPKD di daerah).
6. **Laporan Perubahan Ekuitas (LPE)** — Ekuitas awal, Surplus/defisit-LO, koreksi (perubahan kebijakan akuntansi, koreksi kesalahan mendasar, revaluasi aset tetap), Ekuitas akhir.
7. **Catatan atas Laporan Keuangan (CaLK)** — bagian tak terpisahkan LK; isi minimal: informasi umum entitas, kebijakan fiskal/ekonomi makro & capaian target UU APBN, ikhtisar capaian kinerja keuangan, dasar penyusunan LK & kebijakan akuntansi, pengungkapan PSAP yang belum tersaji, pengungkapan pos akrual & rekonsiliasi basis kas, informasi tambahan lainnya.', 5)
;

-- ============================================================
-- MIND MAP PER BAB (chapters.mindmap)
-- ============================================================

update chapters set mindmap = '# Bab I: Pendahuluan
## Sumber Keuangan Negara
- Pendapatan: pajak & bukan pajak
- Belanja: mensejahterakan masyarakat
- Pembiayaan: utang/sumber lain untuk defisit
## Definisi
- Pengelolaan Keuangan Negara = kelola pendapatan, belanja, pembiayaan defisit
## Pembatasan
- Peraturan perundangan
- Persetujuan & pengawasan legislatif (DPR)
- Transparansi & akuntabilitas
## Peran Kemenkeu
- Chief Financial Officer (CFO) negara
' where id = 'b0000000-0000-4000-8000-040100000000';

update chapters set mindmap = '# Bab II: Pengertian Pengelolaan Keuangan Negara
## A. Pengertian Keuangan Negara (UU 17/2003)
- Objek: hak & kewajiban dinilai uang
- Subjek: dimiliki/dikuasai Pemerintah & badan hukum publik
- Proses: perumusan kebijakan sampai pertanggungjawaban
- Tujuan: penyelenggaraan Pemerintahan negara
## B. Bidang Pengelolaan
- Subbidang Fiskal (APBN)
- Subbidang Moneter (Bank Indonesia)
- Subbidang Kekayaan Negara Dipisahkan (BUMN/BUMD)
- Teori Musgrave: alokasi, distribusi, stabilisasi
## C. Tujuan Pengelolaan
- Mempengaruhi pertumbuhan ekonomi
- Menjaga stabilitas ekonomi (counter-cyclical vs pro-cyclical)
- Merealokasi sumber ekonomi (Keynes, Musgrave)
- Mendorong redistribusi pendapatan
## D. Kekuasaan Pengelolaan
- Presiden: pemegang kekuasaan umum
- Menteri Keuangan: CFO, pengelola fiskal
- Menteri/Pimpinan Lembaga: COO, Pengguna Anggaran
- Gubernur/Bupati/Walikota: kekayaan daerah
- Fiskal vs Moneter (Bank Indonesia)
## E. Asas Umum
- Tahunan
- Universalitas
- Kesatuan
- Spesialitas
- Akuntabilitas
- Profesionalitas
- Proporsionalitas
- Keterbukaan
- Pemeriksaan (BPK)
' where id = 'b0000000-0000-4000-8000-040200000000';

update chapters set mindmap = '# Bab III: APBN
## A. Pengertian APBN
- Rencana keuangan tahunan disetujui DPR
- UU Nomor 17 Tahun 2003
## B. APBN dan Kebijakan Fiskal
### Fungsi Fiskal (Musgrave)
- Stabilisasi
- Alokasi
- Distribusi
### Instrumen Fiskal
- Tarif pajak
- Pengeluaran pemerintah
- Politik anggaran
- Pembiayaan & utang
### Arah Kebijakan
- Balanced budget over cycle
- Countercyclical
- Rasio utang maks 60% PDB
### Faktor Pengaruh
- Internal: politik, ekonomi, birokrasi, pembiayaan, nonekonomi
- Eksternal: global, kurs, minyak, bunga
### Data Defisit
- Batas maksimal 3% PDB
- Perppu 1/2020 (Covid-19)
- Historis 2019-2024
## C. Siklus APBN
- Perencanaan & Penganggaran
- Pembahasan (DPR, Agustus)
- Penetapan (UU APBN, DIPA)
- Pelaksanaan (SPP, SPM, SP2D)
- Pelaporan & Pencatatan (LKPP)
- Pemeriksaan & Pertanggungjawaban (BPK)
## D. Struktur dan Format
- T-Account (1969/70-1999/2000)
- I-Account (mulai 2000)
- Unified budget (Maret 2003)
## E. Reformasi Penyusunan
- Anggaran terpadu (2005)
- Anggaran Berbasis Kinerja (ABK)
- MTEF
## F. Reformasi Pelaksanaan
- UU 1/2004 Perbendaharaan Negara
- Kewenangan kebendaharaan vs administratif
## G. Tahap Pelaksanaan Operasional
- Pembuatan Komitmen (PPK)
- Pengujian & Perintah Pembayaran
- Pembayaran (BUN, Bendahara Pengeluaran)
' where id = 'b0000000-0000-4000-8000-040300000000';

update chapters set mindmap = '# Bab IV: Pengelolaan Pendapatan Negara
## A. Pengertian
- Perpajakan + PNBP + Hibah
## B. Penerimaan Perpajakan
### Pajak Dalam Negeri
- PPh (UU 7/1983, diubah UU 7/2021 HPP)
- PPh Migas (kontrak bagi hasil)
- PPN & PPnBM (UU 8/1983, diubah UU 7/2021)
- Cukai (UU 11/1995, diubah UU 7/2021)
- PBB (UU 12/1985, diubah UU 12/1994)
- BPHTB (dialihkan ke daerah 2011)
- Pajak Lainnya: Bea Materai (UU 10/2020, tarif Rp10.000)
### Pajak Perdagangan Internasional
- Bea Masuk (UU 17/2006 Kepabeanan)
- Pajak Ekspor
## C. Penerimaan Negara Bukan Pajak (PNBP)
- Dasar hukum UU 9/2018
- Pemanfaatan SDA
- Pelayanan
- Kekayaan Negara Dipisahkan
- Barang Milik Negara
- Pengelolaan Dana
- Hak Negara Lainnya
## D. Penerimaan Hibah
- Tidak wajib, tidak mengikat
- Mulai dianggarkan APBN-P 2002
' where id = 'b0000000-0000-4000-8000-040400000000';

update chapters set mindmap = '# Bab V: Belanja Pemerintah dan Pembiayaan Defisit
## A. Pengertian
- Belanja Pusat + Transfer ke Daerah
- Defisit = belanja > pendapatan
## B. Belanja Pemerintah Pusat
- Belanja pegawai
- Belanja barang
- Belanja modal
- Pembayaran bunga utang
- Subsidi
- Belanja hibah
- Bantuan sosial
- Belanja lain-lain
## B. Transfer ke Daerah (TKD)
- Dana Bagi Hasil (DBH)
- Dana Alokasi Umum (DAU)
- Dana Alokasi Khusus (DAK)
- Dana Otonomi Khusus
- Dana Keistimewaan (DIY)
- Dana Desa
- Dasar hukum: UU 1/2022 HKPD
## C. Pembiayaan Defisit Anggaran
### Dalam Negeri
- Sektor Perbankan (jarang dipakai)
- Privatisasi BUMN
- Penjualan Aset Restrukturisasi Perbankan
- Surat Utang Negara (SUN)
### Luar Negeri
- Pinjaman Program
- Pinjaman Proyek
- Obligasi internasional
- Debt Service Ratio (DSR)
' where id = 'b0000000-0000-4000-8000-040500000000';

update chapters set mindmap = '# Bab VI: Pengawasan dan Pertanggungjawaban APBN
## A. Pengertian Pengawasan
- Mandat DPR ke Pemerintah
- Eksternal vs Internal
## B. Pengawasan Eksternal
### DPR
- Fungsi legislasi, anggaran, pengawasan (Pasal 20A UUD 1945)
### BPK
- Dasar: Pasal 23E UUD 1945, UU 5/1973
- Fungsi: audit, yudikatif, rekomendasi
- Tipe: pemeriksaan keuangan, kinerja, tujuan tertentu
- HAPSEM
### Masyarakat
- Hak informasi, layanan, saran, perlindungan hukum
## C. Pengawasan Internal (APIP)
- BPKP (Keppres 31/1983, Perpres 192/2014)
- Inspektorat Jenderal (Perpres 47/2009)
## D. Pertanggungjawaban APBN
- PAN (sebelum UU 17/2003)
- Laporan Keuangan (setelah UU 17/2003, standar IPSAS)
- Batas waktu: 6 bulan (mulai TA 2005)
- Alur: K/L - Menkeu - LKPP - RUU - DPR
## E. Komponen Laporan Keuangan
- Laporan Realisasi Anggaran (LRA)
- Laporan Perubahan SAL (LPSAL)
- Neraca
- Laporan Operasional (LO)
- Laporan Arus Kas (LAK)
- Laporan Perubahan Ekuitas (LPE)
- Catatan atas Laporan Keuangan (CaLK)
' where id = 'b0000000-0000-4000-8000-040600000000';
