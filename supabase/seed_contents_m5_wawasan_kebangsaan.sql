-- Materi lengkap Modul Wawasan Kebangsaan (M5), diparse dari materi/5. Wawasan Kebangsaan.pdf
-- Menggantikan placeholder yang dibuat di seed.sql

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
('b0000000-0000-4000-8000-050100000000', null, 'Pembukaan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945 mengamanatkan bahwa tujuan didirikan negara Republik Indonesia, antara lain adalah untuk memajukan kesejahteraan umum dan mencerdaskan kehidupan bangsa. Amanat tersebut mengandung makna negara berkewajiban memenuhi kebutuhan setiap warga negara melalui suatu sistem pemerintahan yang mendukung terciptanya penyelenggaraan pelayanan publik yang prima dalam rangka memenuhi kebutuhan dasar dan hak sipil setiap warga negara.

Hal lain yang perlu disadari bahwa perjalanan hidup bangsa Indonesia yang telah merdeka sejak Proklamasi **17 Agustus 1945** hingga sekarang menunjukkan dinamika yang cukup tinggi. Selama kurun waktu lebih dari 72 tahun penyelenggaraan pemerintahan negara ternyata masih diwarnai banyak kemelut politik yang sangat mengganggu stabilitas nasional. Benturan-benturan politik pada tataran elit akibat perbedaan visi kenegaraan, dengan mudah merambah tata kehidupan masyarakat bawah, dan berpengaruh terhadap menurunnya kadar hubungan sosial masyarakat. Akibatnya, masyarakat menjadi tersegmentasi sehingga kondisi persatuan dan kesatuan bangsa menjadi semakin longgar. Benturan-benturan kepentingan politik dapat sangat menghambat kemajuan bangsa, terutama dalam upaya mempercepat proses peningkatan kesejahteraan rakyat.

Belajar dari sejarah sejak tumbuhnya kesadaran kebangsaan hingga memasuki era perjuangan kemerdekaan, seharusnya segenap bangsa Indonesia sadar bahwa hanya dengan mengutamakan kehendak bersama dan demi satu tujuan bersama pula, bangsa ini berhasil mewujudkan cita-citanya, yaitu merdeka, lepas dari belenggu kekuasaan penjajahan. Tetapi, sejarah telah membuktikan pula bahwa ketika bangsa ini melupakan tujuan bersamanya, serta dengan sadar mengingkari konsensus yang juga telah didasari oleh kehendak bersama, maka yang terjadi adalah timbulnya berbagai bentuk konflik sosial, perlawanan bersenjata di dalam negeri, dan munculnya ide-ide separatis. Akibat dari kesemuanya ini, yaitu beban penderitaan yang mesti ditanggung oleh rakyat.', 1),
('b0000000-0000-4000-8000-050100000000', 'Latar Belakang', 'Kesadaran kebangsaan yang kemudian melahirkan cita-cita kemerdekaan Indonesia, pada dasarnya tumbuh dan berkembang oleh dorongan kehendak bersama, seluruh komponen masyarakat budaya, yang tersebar di seluruh wilayah Nusantara demi membangun satu masyarakat baru yang utuh sebagai satu kesatuan, yaitu bangsa Indonesia berdasarkan dasar dan ideologi negara Pancasila. Bangsa juga merupakan masyarakat dengan kesatuan spirit/karakter (Karakter Gemeinschaft). Oleh karenanya, perlu disadari pula bahwa bangsa Indonesia yang merupakan sebuah himpunan dari berbagai ragam masyarakat budaya, adat, bahasa lokal/daerah, bahkan juga agama dan keyakinan. Di sini nampak bahwa ide kebangsaan Indonesia sejak awal tidak diniatkan untuk menyatukan segala bentuk keragaman yang ada ke dalam suatu keseragaman. Budaya lokal justru tetap dipertahankan dan dikembangkan karena keragaman itu merupakan kekuatan lokal, yang dengan demikian juga merupakan kekuatan seluruh bangsa.

Selain itu, perlu disadari pula bahwa bangsa yang akan lahir itu akan hidup dan tinggal bersama dalam satu kesatuan wilayah negara, yang dalam kenyataannya (realita geografik) merupakan kumpulan pulau-pulau yang amat banyak jumlahnya. Sadar akan kenyataan tersebut, maka kehendak untuk bersatu dan hidup bersama harus senantiasa terjaga dan terpelihara karena hal itu merupakan faktor perekat utama yang sekaligus akan tetap menjiwai dan menyemangati setiap perjuangan di sepanjang hidup bangsa Indonesia. Di samping itu, seluruh komponen masyarakat yang Bhinneka ini harus tetap berada dalam satu kesatuan spirit/karakter, yang menjadi jati diri bangsa Indonesia, yang akan diwariskan dari generasi ke generasi. Dengan bijak, serta dilandasi kepekaan nurani yang sangat dalam, para pendiri bangsa (**the Founding Father**) kita berhasil mengangkat nilai-nilai yang terkandung di dalam khasanah kehidupan masyarakat Indonesia maupun ajaran para leluhur sebagai nilai-nilai kebangsaan Indonesia. Kemudian nilai-nilai kebangsaan dimaksud dirumuskan secara konkret serta disepakati untuk dijadikan landasan dan pedoman di dalam pembentukan dan penyelenggaraan negara, serta di dalam menata kehidupan bermasyarakat, berbangsa dan bernegara. Proses reformasi yang sedang berlangsung saat ini pada dasarnya adalah sebuah proses reinventing and rebuilding serta konsolidasi bangsa Indonesia menuju masyarakat demokratis dan merupakan kesadaran korektif untuk kembali menata kehidupannya agar menjadi lebih baik demi pencapaian tujuan dan cita-cita nasional.

Sebagai wujud kepedulian dan tanggung jawab terhadap nasib bangsa sekarang dan di masa mendatang, sudah saatnya segera dilakukan upaya nyata yang terorganisasi terencana secara sistematis dan terukur, untuk memantapkan kembali nilai-nilai kebangsaan, disertai dengan semangat optimisme dan kesadaran penuh bahwa proses reformasi tersebut semata-mata merupakan proses konsolidasi demokrasi dalam perjalanan bangsa yang harus dilalui, dari hal-hal yang bersifat prosedural menuju hal-hal yang bersifat kultural dan substantif.

Kita perlu mengangkat kembali nilai-nilai kebangsaan yang terkandung di dalam Konsensus Dasar Nasional, yaitu falsafah bangsa **Pancasila**, **Undang-Undang Dasar Negara Republik Indonesia Tahun 1945**, semboyan bangsa **Bhinneka Tunggal Ika**, serta prinsip **Negara Kesatuan Republik Indonesia**, demi meneguhkan kembali jati diri bangsa, dengan demikian dapat tetap terjaga integritas bangsa dan identitas Negara Kesatuan Republik Indonesia ini di tengah terpaan arus globalisasi yang bersifat multidimensional.', 2),
('b0000000-0000-4000-8000-050100000000', 'Deskripsi Singkat', 'Mata pendidikan dan pelatihan ini menjelaskan arti penting dari wawasan kebangsaan. Komitmen untuk menciptakan pemerintahan yang stabil dan dinamis diwujudkan melalui upaya membangun sistem penyelenggaraan pemerintahan yang mampu mendukung pelaksanaan pembangunan untuk mencapai tujuan nasional. Di samping itu, perlunya mengangkat kembali nilai-nilai kebangsaan yang terkandung dalam konsensus dasar nasional yaitu falsafah Pancasila, Undang-Undang Dasar 1945, dan semboyan Bhinneka Tunggal Ika serta prinsip Negara Kesatuan Republik Indonesia.', 3),
('b0000000-0000-4000-8000-050100000000', 'Materi Pokok', 'Mengacu pada deskripsi singkat, maka pokok bahasan bahan ajar Wawasan Kebangsaan ini berkenaan dengan falsafah Pancasila, Undang-Undang Dasar 1945, dan semboyan Bhinneka Tunggal Ika serta prinsip Negara Kesatuan Republik Indonesia.', 4),
('b0000000-0000-4000-8000-050100000000', 'Manfaat', 'Berbekal hasil belajar dari bahan ajar ini peserta diklat dapat memahami arti Pancasila, UUD 1945, dan wawasan kebangsaan Negara Kesatuan Republik Indonesia.', 5);

-- =========================================================
-- BAB II: PANCASILA
-- =========================================================

insert into contents (chapter_id, heading, body, order_index) values
('b0000000-0000-4000-8000-050200000000', null, 'Istilah Pancasila telah dikenal sejak zaman Sriwijaya dan Majapahit dimana nilai-nilai yang terkandung di dalam Pancasila sudah diterapkan dalam kehidupan kemasyarakatan maupun kenegaraan meskipun sila-silanya belum dirumuskan secara konkret. Istilah Pancasila telah dikenal sejak zaman Majapahit sebagaimana tertulis dalam buku Negara Kertagama karangan Mpu Prapanca dan buku Sutasoma karangan Mpu Tantular. Dalam buku Sutasoma karangan Mpu Tantular, istilah Pancasila mempunyai arti berbatu sendi yang lima, pelaksanaan kesusilaan yang lima. Istilah Pancasila sendiri berasal dari bahasa Sansekerta yaitu Panca berarti lima dan Sila berarti dasar atau asas. Jadi Pancasila sebagai dasar negara terdiri dari lima asas atau lima sila. Ibarat suatu bangunan Negara Kesatuan Republik Indonesia didirikan di atas suatu pondasi atau dasar yang dinamakan Pancasila yang terdiri dari lima dasar atau lima asas.

Istilah nama Pancasila sebagai dasar negara lahir pada tanggal **1 Juni 1945**, sebagaimana diusulkan **Ir. Soekarno** dalam sidang pertama BPUPKI, yang mana usulan agar nama dasar negara yang terdiri dari lima asas atau lima sila dinamakan Pancasila disetujui dalam sidang BPUPKI. Pada tanggal **1 Juni 1945**, Pancasila sebagai dasar negara dirumuskan oleh Badan Penyelidik Usaha-Usaha Persiapan Kemerdekaan Indonesia (**BPUPKI**) dan disahkan sebagai dasar negara oleh Panitia Persiapan Kemerdekaan Indonesia (**PPKI**) pada tanggal **18 Agustus 1945**.

Rumusan sila-sila Pancasila yang sah yang wajib diamalkan bangsa Indonesia adalah rumusan sila-sila Pancasila yang tercantum dalam alinea keempat Pembukaan UUD 1945. Selanjutnya, pemahaman terhadap Pancasila pada hakikatnya dikembalikan kepada dua pengertian pokok yaitu pengertian Pancasila sebagai pandangan hidup dan sebagai dasar negara. Selanjutnya, berdasarkan pengertian pokok Pancasila tersebut, Pancasila berfungsi sebagai dasar yang statis dan fundamental, tuntunan yang dinamis dan ikatan yang dapat mempersatukan bangsa Indonesia.', 1),

('b0000000-0000-4000-8000-050200000000', 'Pengertian Pokok Tentang Pancasila', 'Selain itu, Pancasila juga memiliki fungsi yuridis ketatanegaraan yang merupakan fungsi pokok dan fungsi utama sebagai dasar negara, fungsi sosiologis serta fungsi etis dan filosofis.

Kedudukan hukum Pancasila selain sebagai dasar negara juga sebagai sumber dari segala sumber hukum negara sebagaimana tercantum dalam **Undang-Undang Nomor 12 Tahun 2011**, sebagaimana telah diubah dengan **Undang-Undang Nomor 13 Tahun 2022** tentang Perubahan Kedua atas Undang-Undang Nomor 12 Tahun 2011 tentang Pembentukan Peraturan Perundang-undangan. Dalam hubungannya dengan Undang-Undang Dasar 1945 (UUD 1945), Pancasila menjiwai Pembukaan dan pasal-pasal UUD 1945.

Dalam kaitan dengan fungsi pokoknya sebagai dasar negara, Pancasila sebagai bagian dari Pembukaan UUD 1945 mempunyai kedudukan hukum yang kuat.

Pembukaan UUD 1945 mengandung pokok-pokok pikiran yang tidak lain adalah Pancasila yang merupakan cita-cita hukum (rechtsidee) yang menguasai hukum dasar, baik hukum dasar tertulis maupun hukum dasar tidak tertulis (konvensi). Pembukaan UUD 1945 terdiri dari **4 alinea**, yang memuat hal-hal sebagai berikut:
a. Pernyataan hak kemerdekaan bagi setiap bangsa;
b. Pernyataan tentang hasil perjuangan kemerdekaan bangsa Indonesia;
c. Pernyataan merdeka; dan
d. Tentang dasar kerohanian (falsafah) Pancasila sebagai dasar negara.

Tiga pernyataan pertama adalah mengenai keadaan-keadaan atau peristiwa-peristiwa yang mendahului terbentuknya Negara Kesatuan Republik Indonesia. Ketiga pernyataan itu tidak mempunyai hubungan organis dengan pasal-pasal UUD 1945, tetapi pernyataan keempat yaitu tentang dasar kerohanian (falsafah) Pancasila sebagai dasar negara mengandung pokok pikiran yang di dalamnya tersimpul ajaran Pancasila, sehingga dengan demikian mempunyai hubungan kausal dan organis dengan Pasal-pasal UUD 1945.

Butir keempat tersebut sangat penting karena merupakan semangat kejiwaan dari UUD 1945, sebagaimana dijelaskan oleh **Prof. Dr. Soepomo SH**, bahwa untuk memahami hukum dasar suatu negara tidak cukup hanya memahami pasal-pasalnya saja, melainkan harus dipahami pula suasana kebatinan (semangat kejiwaan) dari hukum dasar itu.', 2),

('b0000000-0000-4000-8000-050200000000', 'Kedudukan dan Fungsi Pancasila', 'Pokok-pokok pikiran yang merupakan suasana kebatinan dari UUD 1945 tersebut terdiri dari:
a. Pertama, negara melindungi segenap bangsa Indonesia dengan berdasarkan persatuan (sila ketiga).
b. Kedua, negara Indonesia mewujudkan keadilan sosial bagi seluruh rakyat Indonesia (sila kelima).
c. Ketiga, negara berkedaulatan rakyat, berdasarkan atas kerakyatan dan permusyawaratan/perwakilan (sila keempat).
d. Keempat, negara berdasarkan Ketuhanan Yang Maha Esa, menurut dasar kemanusiaan yang adil dan beradab (sila kesatu dan kedua).

Berdasarkan kedudukannya dalam tata kehidupan bangsa Indonesia sebagaimana diuraikan sebelumnya, maka Pancasila dalam bentuknya yang sekarang ini berfungsi sebagai:
a. Dasar yang statis/fundamental, di mana di atasnya didirikan bangunan negara Indonesia yang kekal. Inilah fungsi pokok Pancasila, yang tercantum dalam Pembukaan UUD 1945.
b. Tuntunan yang dinamis, yaitu ke arah mana negara Indonesia akan digerakkan, atau dengan kata lain sebagai cita-cita dan tujuan bangsa Indonesia.
c. Ikatan yang dapat mempersatukan bangsa Indonesia, dimana Pancasila menjamin hak hidup secara layak bagi semua warga negara dan semua golongan tanpa ada perbedaan.

Di samping itu, apabila dilihat lingkup jangkauan sasarannya, fungsi-fungsi Pancasila dapat dibedakan sebagai berikut:
a. Fungsi Yuridis Ketatanegaraan, yang merupakan fungsi pokok atau fungsi utama dari Pancasila sebagai dasar negara;
b. Fungsi Sosiologis, yaitu apabila dilihat sebagai pengatur hidup kemasyarakatan pada umumnya; dan
c. Fungsi Etis dan Filosofis, yaitu apabila fungsinya sebagai pengatur tingkah laku pribadi, dalam hal ini Pancasila berfungsi sebagai philosophical way of thinking atau philosophical system.', 3),

('b0000000-0000-4000-8000-050200000000', 'Pancasila Sebagai Falsafah Bangsa', '**a. Filsafat Pancasila**

Istilah filsafat berasal dari bahasa Arab falsafah. Secara etimologi, falsafah berasal dari bahasa Yunani "philosophia", yang terdiri dari dua suku kata yaitu philo dan sophia. Philein berarti mencari, mencintai dan sophia berarti kebenaran, kearipan, atau kebijaksanaan. Dengan demikian, kata majemuk philosophia berarti "daya upaya pemikiran manusia untuk mencari kebenaran atau kebijaksanaan". Orang yang berfilsafat berarti orang yang mencintai dan mencari kebenaran, bukan memiliki kebenaran.

Namun, sebagaimana diketahui kebenaran itu relatif sifatnya, dalam arti bahwa apa yang kita anggap benar saat ini, belum tentu dianggap demikian di masa yang akan datang. Kebenaran yang mutlak adalah di tangan/milik Tuhan Yang Maha Esa. Dalam masalah pendekatan filosofis atas nilai-nilai Pancasila ini, kita tidak akan membicarakan seluruh ilmu filsafat, tetapi terbatas pada penerapan metode ilmu filsafat dalam mempelajari ketentuan yang mengalir dari nilai-nilai Pancasila. Pendekatan filsafat ini juga diperlukan sehubungan dengan materi yang dibicarakan adalah meliputi aspek filsafat dari Pancasila. Filsafat Pancasila adalah ilmu pengetahuan yang mendalam tentang Pancasila. Untuk mendapat pengertian yang mendalam, kita harus mengetahui hakikat sila-sila Pancasila tersebut, dari tiap sila kita cari pula intinya. Setelah kita mengetahui hakikat inti tersebut, maka selanjutnya kita cari hakikat dan pokok-pokok yang terkandung dalam Pancasila, antara lain tersebut sebagai berikut:
1. Pancasila sebagai pandangan hidup bangsa, berarti bahwa nilai-nilai yang terkandung dalam Pancasila itu dijadikan tuntunan dan pegangan dalam mengatur sikap dan tingkah laku manusia Indonesia, dalam hubungannya dengan Tuhan, masyarakat, dan alam semesta.
2. Pancasila sebagai dasar negara, ini berarti bahwa nilai-nilai yang terkandung dalam Pancasila itu dijadikan dasar dan pedoman dalam mengatur tata kehidupan bernegara sebagaimana yang diatur oleh UUD 1945. Untuk kepentingan kegiatan praktis operasional diatur dalam **UU No. 12 Tahun 2011** sebagaimana telah diubah dengan **Undang-Undang Nomor 13 Tahun 2022** tentang Perubahan Kedua atas Undang-Undang Nomor 12 Tahun 2011 tentang Pembentukan Peraturan Perundang-undangan mengenai tata urutan peraturan perundang-undangan yang berlaku, ditegaskan bahwa UUD 1945 menempati tata urutan yang tertinggi dari peraturan perundangan yang berlaku.
3. Falsafah Pancasila yang abstrak tercermin dalam Pembukaan UUD 1945 merupakan uraian terperinci dari Proklamasi **17 Agustus 1945** yang dijiwai Pancasila.
4. Pancasila yang tercantum dalam Pembukaan UUD 1945 merupakan suatu kebulatan yang utuh yang tidak dapat dipisahkan.
5. Jiwa Pancasila yang abstrak tercetus menjadi Proklamasi Kemerdekaan 17 Agustus 1945 dan tercermin dalam pokok-pokok yang terkandung dalam Pembukaan UUD 1945.
6. Undang-Undang Dasar 1945 menciptakan pokok-pokok pikiran yaitu Pancasila yang terkandung dalam Pembukaan dalam pasal-pasalnya. Ini berarti pasal-pasal UUD 1945 merupakan penjelmaan pokok-pokok pikiran yang terkandung dalam Pembukaan UUD 1945 sebagai perwujudan dari jiwa Pancasila.
7. Penafsiran sila-sila Pancasila harus bersumber dan berdasarkan Pembukaan dan Pasal-pasal UUD 1945.

**b. Nilai-nilai dalam Pancasila**

Nilai terbentuk atas dasar pertimbangan-pertimbangan cipta, rasa, karsa dari seseorang atau sekelompok masyarakat/bangsa. Terbentuknya suatu nilai secara teoritis melalui proses tertentu dan atas dasar kesadaran dan keyakinan, jadi tidak dapat dipaksakan.

Nilai secara singkat dapat dikatakan sebagai hasil penilaian/pertimbangan "baik/tidak baik" terhadap sesuatu, yang kemudian dipergunakan sebagai dasar alasan (motivasi) melakukan atau tidak melakukan sesuatu. Norma (kaidah) adalah petunjuk tingkah laku (perilaku) yang harus dilakukan dan tidak boleh dilakukan dalam hidup sehari-hari berdasarkan suatu alasan (motivasi) tertentu dengan disertai sanksi. Sedangkan sanksi adalah ancaman/akibat yang akan diterima apabila norma (kaidah) tidak dilakukan. Dari hubungan nilai timbullah ancaman-ancaman norma dengan sanksinya, misalnya:
1. Norma Agama, dengan sanksi dari Tuhan;
2. Norma Kesusilaan, dengan sanksi rasa malu dan menyesal terhadap dirinya sendiri;
3. Norma Sopan-santun, dengan sanksi sosial masyarakat;
4. Norma Hukum, dengan sanksi dari pemerintah (alat-alat negara).

**Prof. Dr. Notonegoro**, membagi nilai menjadi 3 yakni:
1. Nilai Material, yaitu segala sesuatu yang berguna bagi unsur manusia;
2. Nilai Vital, yaitu sesuatu yang berguna bagi manusia untuk dapat mengadakan kegiatan dan aktivitas;
3. Nilai Kerohanian, yaitu segala sesuatu yang berguna bagi rohani manusia. Nilai kerohanian ini dapat dibedakan atas 4 macam yakni:
   a. Nilai kebenaran yang bersumber pada unsur akal manusia;
   b. Nilai keindahan yang bersumber pada unsur rasa indah manusia;
   c. Nilai kebaikan atau nilai moral yang bersumber pada unsur kodrat manusia (manusia dalam segala dimensinya);
   d. Nilai religius yang merupakan nilai Ketuhanan, kerohanian yang tinggi dan mutlak. Nilai religius ini bersumber pada kepercayaan/keyakinan manusia.

Pancasila tergolong nilai kerohanian, tetapi nilai kerohanian yang meyakini adanya nilai material dan nilai vital. Pancasila tergolong nilai kerohanian yang di dalamnya terkandung nilai-nilai yang lain secara lengkap, dan harmonis, baik nilai material, nilai vital, nilai kebenaran/kenyataan, nilai aestetis, maupun nilai religius.

Selanjutnya nilai-nilai yang terkandung dalam sila-sila Pancasila adalah:
1. Dalam sila pertama **Ketuhanan Yang Maha Esa** terkandung nilai religius;
2. Dalam sila kedua **Kemanusiaan Yang Adil dan Beradab** terkandung nilai kemanusiaan;
3. Dalam sila ketiga **Persatuan Indonesia** terkandung nilai persatuan bangsa;
4. Dalam sila keempat **Kerakyatan yang Dipimpin oleh Hikmat Kebijaksanaan dalam Permusyawaratan/Perwakilan** terkandung nilai kerakyatan;
5. Dalam sila kelima **Keadilan Sosial bagi Seluruh Rakyat Indonesia** terkandung nilai keadilan sosial.

Meskipun nilai-nilai yang terkandung dalam Pancasila termasuk nilai kerohanian, tetapi nilai kerohanian yang mengakui pentingnya nilai material dan nilai vital secara seimbang, sebagaimana dibuktikan dengan susunan sila-sila yang sistematis hierarkis yang dimulai sila pertama Ketuhanan Yang Maha Esa, sampai dengan sila kelima yaitu Keadilan Sosial bagi seluruh rakyat Indonesia.

Jadi, yang mempunyai nilai itu tidak hanya sesuatu yang berwujud benda material saja, akan tetapi juga benda yang tidak berwujud yang bukan benda material. Bahkan sesuatu yang bukan benda material itu dapat menjadi nilai yang sangat tinggi dan mutlak bagi manusia. Nilai material secara relatif lebih mudah diukur dengan alat-alat pengukur, misalnya dengan alat pengukur berat (gram), alat pengukur panjang (meter), alat pengukur luas (meter persegi) alat pengukur isi (liter), dan sebagainya. Sedangkan nilai rohani tidak dapat diukur dengan menggunakan alat-alat pengukur tersebut di atas, tetapi diukur dengan "budi nurani manusia", karena itu lebih sulit dilakukan, karena permasalahannya adalah apakah ada perwujudan budi nurani manusia yang bersifat universal.

Manusia yang mengadakan penilaian terhadap sesuatu yang bersifat kerohanian menggunakan hati nurani dengan dibantu indera, akal, perasaan, kehendak, dan oleh keyakinan. Sampai sejauh mana kemampuan dan alat-alat bantu ini bagi manusia dalam memberikan penilaian tidak sama bagi manusia yang satu dengan yang lain, dipengaruhi situasi dan keadaan manusia yang bersangkutan. Bagi manusia nilai dijadikan landasan, alasan atau motivasi dalam segala perbuatannya. Dalam pelaksanaannya, nilai-nilai dijabarkan dalam bentuk norma (normatif), sehingga merupakan suatu perintah/keharusan, anjuran atau merupakan larangan atas sesuatu yang tidak diinginkan atau celaan. Nilai kebenaran harus dilaksanakan dan segala sesuatu yang tidak benar, tidak indah, tidak baik, dan sebagainya dilarang atau dicela. Dari uraian tersebut nampak jelas bahwa nilai berperan sebagai dasar pedoman yang menentukan kehidupan setiap manusia.

**c. Pandangan Integralistik dalam Pancasila**

Dalam pidato tanggal **31 Mei 1945** di depan rapat BPUPKI, **Soepomo** mengemukakan gagasan tentang cita negara integralistik. Ia memulainya dengan mengatakan bahwa jika hendak membicarakan tentang dasar sistem pemerintahan yang hendak dipakai untuk negara Indonesia yang akan dibentuk, maka dasar sistem suatu pemerintahan tergantung pada cita negaranya, pada staatsidee, pada pemahaman tentang negara yang hendak digunakan untuk membangun negara Indonesia (H. Muh. Yamin, 1971).

Mengenai teori integralistik yang diajarkan oleh B. Spinosa, Adam Muller, Hegel, dan lain-lain, Soepomo mengemukakan, bahwa negara tidak untuk menjamin kepentingan seseorang atau golongan, akan tetapi menjamin kepentingan masyarakat seluruhnya sebagai kesatuan. Negara ialah suatu susunan masyarakat yang integral, segala golongan, segala bagian, segala anggotanya berhubungan erat satu sama lain dan merupakan kesatuan masyarakat yang organis.

Selanjutnya Soepomo berpendapat, bahwa jika negara Indonesia akan didirikan dan hal itu harus sesuai dengan keistimewaan sifat dan corak masyarakat Indonesia, maka negara Indonesia harus berdasar aliran pikiran (Staatsidee) negara yang integralistik, yaitu negara yang bersatu dengan seluruh rakyatnya, yang mengatasi semua golongan dalam lapangan apapun. Menurut teori integralistik ini, yang menurut Soepomo sesuai dengan semangat Indonesia yang asli, maka negara tidak lain melainkan seluruh rakyat Indonesia sebagai kesatuan yang teratur dan tersusun.

Menurut Soepomo selanjutnya, dalam aliran integralistik, kepala negara dan lain-lain badan pemerintah harus bersifat pemimpin yang sejati. Negara tidak bertindak sebagai seseorang yang maha kuasa yang mempunyai kepentingan sendiri.

Pada dasarnya menurut aliran integralistik, tidak ada pertentangan antara staat dan individu, karena individu tidak lain melainkan suatu bagian organik dari staat, yang mempunyai kedudukan dan kewajiban tersendiri untuk menyelenggarakan kemuliaan staat. Sebaliknya staat bukan suatu badan kekuasaan atau raksasa politik yang berada di luar lingkungan suasana kemerdekaan seseorang (H. Muh. Yamin, 1971).

Akhirnya Soepomo menyimpulkan, bahwa dalam negara integralistik, negara akan ingat kepada segala keadaan, hukum negara akan memperhatikan segala keistimewaan golongan yang bermacam-macam di tanah air kita.

**d. Pancasila sebagai Ideologi Negara**

Ideologi berasal dari kata Yunani Idein, yang berarti melihat, atau Idea yang berarti raut muka, perawakan, gagasan, buah pikiran, dan Logia yang berarti ajaran. Dengan demikian, ideologi adalah ajaran atau ilmu tentang gagasan dan buah pikiran.

Ideologi dalam kehidupan kenegaraan dapat diartikan sebagai suatu konsensus mayoritas warga negara tentang nilai-nilai dasar yang ingin diwujudkan dengan mendirikan negara. Ideologi merupakan pikiran-pikiran terdalam, hasrat terdalam warga negaranya, untuk di atasnya didirikan suatu negara.

**Mubyarto** mengartikan bahwa ideologi adalah sejumlah doktrin, kepercayaan, dan simbol-simbol sekelompok masyarakat atau satu bangsa yang menjadi pegangan dan pedoman karya untuk mencapai tujuan masyarakat atau bangsa.

**Padmo Wahjono** mengartikan ideologi sebagai kesatuan yang bulat dan utuh dari ide-ide dasar. Ideologi merupakan suatu kelanjutan atau konsekuensi daripada pandangan hidup bangsa, dan akan berupa seperangkat tata nilai yang dicita-citakan akan direalisir di dalam kehidupan berkelompok.

Pancasila sebagai ideologi mencerminkan seperangkat nilai terpadu dalam kehidupan politik bangsa Indonesia, yaitu sebagai tata nilai yang dipergunakan sebagai acuan di dalam kehidupan bermasyarakat, berbangsa, dan bernegara. Semua gagasan-gagasan yang timbul dalam kehidupan bermasyarakat ditata secara sistematis menjadi satu kesatuan yang utuh.

Sebagai ideologi, Pancasila berlaku sebagai pedoman dan acuan dalam menjalankan aktivitas di segala bidang, dan karena itu sifatnya terbuka, luwes, fleksibel dan tidak bersifat kaku yang akan menyebabkan ketinggalan zaman.

Pengembangan atas nilai-nilai dasar Pancasila dilaksanakan secara kreatif dan dinamis dengan memperhatikan tingkat kebutuhan serta perkembangan masyarakat Indonesia. Dengan demikian, sebagai konsekuensinya adalah Pancasila sebagai ideologi membuka ruang membentuk kesepakatan masyarakat bagaimana mencapai cita-cita dan nilai-nilai dasar dalam masyarakat itu sendiri.

Kesepakatan tersebut adalah kesepakatan sebagai penyangga konstitusionalisme, yaitu kesepakatan tentang tujuan atau cita-cita bersama; kesepakatan tentang the rule of law sebagai landasan pemerintahan atau penyelenggaraan negara (the basis of government) dan kesepakatan tentang bentuk institusi-institusi dan prosedur-prosedur ketatanegaraan (the form of institutions and procedures). Kesepakatan-kesepakatan tersebut hanya mungkin dicapai jika sistem yang dikembangkan adalah sistem demokrasi.

Pancasila sebagai dasar-dasar filosofis terdapat dalam Pembukaan UUD 1945 yang merupakan kesepakatan pertama penyangga konstitusionalisme. Dengan tidak diubahnya Pembukaan UUD 1945, maka tidak berubah pula kedudukan Pancasila sebagai dasar-dasar filosofis bangunan negara Republik Indonesia. Yang berubah adalah sistem dan institusi untuk mewujudkan cita-cita berdasarkan nilai-nilai Pancasila. Hal ini sesuai dengan makna Pancasila sebagai ideologi yang terbuka yang hanya dapat dijalankan dalam sistem yang demokratis dan bersentuhan dengan nilai-nilai dan perkembangan masyarakat.

Pancasila sebagai ideologi bangsa Indonesia memiliki perbedaan dengan sistem kapitalisme-liberal maupun sosialisme-komunis. Pancasila mengakui dan melindungi baik hak-hak individu maupun hak masyarakat baik di bidang ekonomi maupun politik. Dengan demikian, ideologi kita mengakui secara selaras baik kolektivisme maupun individualisme. Demokrasi yang dikembangkan bukan demokrasi politik semata seperti dalam ideologi liberal-kapitalis, tetapi juga demokrasi ekonomi. Dalam sistem kapitalisme liberal dasar perekonomian bukan usaha bersama dan kekeluargaan, namun kebebasan individual untuk berusaha. Sedangkan dalam sistem etatisme, negara yang mendominasi perekonomian, bukan warga negara baik sebagai individu maupun bersama-sama dengan warga negara lainnya (Jimly Asshiddiqie, 1971).', 4);
