# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Database: siberol
# Generation Time: 2012-03-01 13:56:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table berita
# ------------------------------------------------------------

DROP TABLE IF EXISTS `berita`;

CREATE TABLE `berita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nm_war` varchar(50) NOT NULL,
  `judul` varchar(127) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `berita` WRITE;
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;

INSERT INTO `berita` (`id`, `tgl_post`, `nm_war`, `judul`, `isi`, `gambar`, `kategori`, `status`, `user_id`)
VALUES
	(1,'2011-11-19 17:10:18','Iwan Taunuzi','Malaysia: Hasilnya Bakal Beda Jika Indonesia Main Full Team','Beritaionline.com, JAKARTA – Kapten timnas U-23 Malaysia, Bakhtiar Baddrol, mengaku senang atas hasil yang diraih timnya, yang berhasil menaklukkan tim tuan rumah Indonesia dengan skor tipis 0-1.\r\nNamun menurut Bakhtiar, kekuatan Malaysia belum teruji, karena Indonesia hanya menurunkan tim keduanya. \"Mungkin hasilnya akan berbeda jika Indonesia bermain dengan tim utama,\" terangnya usai pertandingan, Kamis (17/11/2011).\r\nSang jenderal lapangan tengah Malaysia yang telah mengoleksi tiga gol selama babak penyisihan Grup A SEA Games XXVI mengetahui, pemain inti Indonesia tak dimainkan pada pertandingan ini, sehingga ia menghimbau agar Malaysia harus waspada jika kembali bertemu di partai Final.\r\nNamun secara keseluruhan ia mengapresiasi para pemain Malaysia yang sangat disiplin dan menunjukkan permainan atraktif meski dihujani hujatan puluhan ribu suporter fanatik Indonesia.\r\n\"Saya senang akhirnya Malaysia bisa menang dan lolos ke semifinal,\" sergahnya.','http://l.yimg.com/bt/api/res/1.2/8ivDs3tPp1kaGoaJTReSsw--/YXBwaWQ9eW5ld3M7Y2g9MjcwO2NyPTE7Y3c9NDM2O2R4PTA7ZHk9MDtmaT11bGNyb3A7aD0xMTg7cT04NTt3PTE5MA--/http://media.zenfs.com/id_ID/News/Tribune_News/20111117_Indonesia_Ditundukan_Malaysia.jpg','olahraga',1,2),
	(2,'2011-11-19 17:17:30','Luhur Hertanto ','Jero Wacik: Freeport Sudah Tak Produksi Sama Sekali  ','Jakarta - Belum selesainya kasus pemogokan pegawai membuat PT Freeport Indonesia saat ini berhenti produksi. Pemerintah berharap kisruh kenaikan gaji bisa diselesaikan secepatnya.\r\n\r\nHal ini disampaikan oleh Menteri ESDM Jero Wacik saat ditemui di Bali Nusa Dua Convention Center, Nusa Dua, Bali, Sabtu (19/11/2011).\r\n\r\n\"Saat ini kan Freeport sudah tidak produksi sama sekali karena pemogokan. Kita harapannya bisa cepat kembali produksi, sehingga pekerja ada income (pendapatan) dan negera dapat pemasukkan,\" jelasnya.\r\n\r\nJero mengatakan, saat ini besaran kenaikan gaji yang dituntut oleh para pekerja terus menurun, dan Freeport juga terus menaikkan besaran kenaikan gaji karyawan. Sehingga diharapkan ada titik temu antar kedua belah pihak.\r\n\r\nSebelumnya Jero mengatakan pihaknya dan Kemenakertrans telah membantu melakukan mediasi antara Freeport dengan karyawan soal gaji. Pemerintah berharap tambang emas Freeport secepat mungkin kembali beroperasi.\r\n\r\n\"Karyawan minta awalnya US$ 35/jam sekarang sudah sampai US$ 4/jam tuntutan karyawan. Dari manajemen Freeport juga sudah naik dari US$ 2,1/jam menjadi US$ 3,09/jam,\" tuturnya.\r\n\r\nSerikat pekerja Freeport telah memperpanjang aksi mogoknya hingga tanggal 15 Desember 2011. Namun perpanjangan waktu itu bisa segera dihentikan jika manajemen bisa memenuhi tuntutan mereka.\r\n\r\nSeperti diketahui mulai 4 Juli 2011 aksi mogok para karyawan Freeport telah berlangsung terkait tuntutan kenaikan gaji mereka berdasarkan dolar. Aksi mogok berakhir pada 11 Juli 2011 karena terjadi kesepakatan antara manajemen dengan serikat pekerja.\r\n\r\nKemudian pada 20 Juli 2011 terjadi upaya perundingan awal Perjanjian Kerja Bersama (PKB) untuk periode 2011-2013. Kemudian aksi mogok kerja berlangsung kembali 15 September 2011.','http://images.detik.com/content/2011/11/19/4/Tambang-dalam.jpg','politik',1,2),
	(3,'2011-11-19 17:44:16','Nugraha Rodiana','Robert Pattinson Tak Percaya Dirinya Seorang Bintang','<p>\r\n	Nama Robert Pattinson semakin melambung usai sukses berakting di &#39;Twilight&#39;. Tak berlebihan jika ia disebut sebagai seorang bintang. Meski begitu, ia ternyata masih tak percaya dirinya kini menjadi pujaan banyak orang. &quot;Saya merasa tak seperti seorang bintang,&quot; ungkapnya seperti dilansir ShowbizSpy, Sabtu (19/11/2011). Tak hanya itu, pacar Kristen Stewart itu juga tak biasa mendapat sanjungan dari para fans. Bahkan hal tersebut dianggapnya sangat aneh. &quot;Saya merasa benar-benar aneh ketika semua orang mulai berteriak dan memanggil nama saya,&quot; ujarnya. Dalam &#39;The Twilight Saga&#39;s Breaking Dawn Part I&#39;, pemeran Edward Cullen itu mengaku senang bisa memuaskan fantasi seksual para penggemar &#39;Twilight&#39; lewat adegan intim dengan lawan mainnya, Kristen Stewart.</p>\r\n','http://images.detik.com/content/2011/11/19/230/robertnewdlm.jpg','hiburan',1,2),
	(4,'2012-03-01 20:03:20','Guntur','Konsumen Apple Lebih Loyal Dibanding Android ','<p>Jakarta - Sebuah riset yang dilakukan oleh lembaga pengamat pasar GfK menemukan bahwa konsumen Apple adalah yang paling loyal. Mengalahkan fans Android maupun BlackBerry.</p>\n<p>GfK mewancarai 4.500 responden di wilayah Eropa, Amerika Serikat, Brazil, China dan Jepang. Sebanyak 84% user iPhone mengaku tetap akan membeli handset Apple lagi ketika upgrade sehingga mereka dianggap paling loyal. Dikutip detikINET dari Register, Minggu (27/11/2011), loyalitas fans Apple lebih tinggi dari pengguna Android.</p>\n<p>\'Hanya\' 60% pemilik smartphone Android memastikan akan membeli lagi handset berbasis Android kala mereka ingin ganti handset. Sedangkan pengguna BlackBerry berada di posisi tiga dalam soal loyalitas. Survei ini mengungkap cuma 48% user BlackBerry masih akan memakai handset dari merek yang sama kala mereka mengganti smartphonenya. \"Mereka yang puas dengan handsetnya sekarang akan sulit tergoda platform baru. Provider smartphone yang menciptakan user experience harmonis akan mampu meningkatkan loyalitas konsumennya,\" kata Ryan Garner dari GfK. \"Konsumen merasa lebih banyak akan terjadi masalah daripada sebaliknya jika menukar kehidupan digital mereka di smartphone,\" imbuhnya.</p>','5dfa3418dc1e9dc773ea4762f54bea1f.jpg','internet',0,2),
	(11,'2011-12-09 19:09:10','Guntur','Pro Kontra Penyelidikan Keterlibatan Asing di PT IMN','<p>\r\n	<strong>Banyuwangi</strong> - Langkah Pemerintah Kabupaten Banyuwangi menyelidiki dugaan keterlibatan asing di PT Indo Multi Niaga (IMN) direaksi beragam. Di sisi lain anggota dewan mendukung, namun ada pula yang menilai sudah terlambat.<br />\r\n	<br />\r\n	DPRD Banyuwangi akan mengambil langkah yang sama seperti yang akan dilakukan<br />\r\n	oleh Bupati Abdullah Azwar Anas. Yakni, menyelidiki dugaan keterlibatan saham<br />\r\n	Intrepid Mines Ltd, perusahaan asal Autralia di PT IMN.<br />\r\n	<br />\r\n	&quot;Ya jelas dong,&quot; kata Wakil Ketua DPRD Banyuwangi Jony Subagyo kepada detiksurabaya.com melalui sambungan telepon, Jumat (9/12/2011). &quot;Yang dilakukan Bupati atau Pemkab juga sama dengan DPRD,&quot; tambahnya.<br />\r\n	<br />\r\n	Sebelumnya, Pemkab Banyuwangi menyatakan akan melakukan menyelidiki dugaan pengalihan saham PT IMN ke Intrepid Mines LTd. Pernyataan itu diungkapkan Bupati Banyuwangi pada sejumlah wartawan seusai Rapat Paripurna di gedung DPRD Banyuwangi, Kamis (8/12/2011).<br />\r\n	<br />\r\n	Di internet, Intrepid secara terang-terangan mengaku memiliki proyek bernama proyek tujuh bukit di Tumpang Pitu, Banyuwangi. Perusahaan yang tercatat di bursa saham Toronto, Canada dan Bursa Australia tersebut secara aktif mempublikasikan hasil eksplorasinya. PT IMN sudah menepis tudingan tersebut.<br />\r\n	<br />\r\n	Namun rencana penyelidikan yang akan ditemuh Pemkab Banyuwangi dianggap mubazir. &quot;Apanya yang diselidiki?,&quot; kata Sukirman, anggota Fraksi PDIP saat dikonfirmasi detiksurabaya.com.<br />\r\n	<br />\r\n	Menurut Sukirman, sebenarnya dugaan keterlibatan saham asing di PT IMN bukan rahasia lagi. Di sejumlah sumber khususnya di internet, disebutkan Intrepid Mines LTd, perusahaan tambang asal Australia ikut andil pembiyaan PT IMN.<br />\r\n	<br />\r\n	&quot;Kalau dari awal investor IMN ya orang asing setahu saya. Terus yang mau diselidiki apanya,&quot; katanya.<br />\r\n	<br />\r\n	Sukirman lebih setuju, jika Pemkab Banyuwangi konsentrasi ke masalah penyertaan<br />\r\n	saham atau golden share ke PT IMN. Karena Pemkab sudah terlanjur menggulirkan<br />\r\n	wacana tersebut ke publik.<br />\r\n	<br />\r\n	Pemkab seharusnya pro aktif untuk mewujudkan rencana golden share tersebut. Mengajak semua pihak termasuk PT IMN untuk duduk bersama membahas secara tuntas dan jelas. Mengingat dampak logis dari pertambangan emas nantinya.<br />\r\n	<br />\r\n	&quot;Yang harus digaris bawahi oleh bupati, kita tetap menolak sebelum jelas pembagian itu. Karena kita yang punya wilayah,&quot; kritiknya lagi.</p>\r\n','assets/images/upload/PT-IMN-dibakar-D.jpg','politik',1,2),
	(6,'2012-03-01 20:03:55','Guntur','Panitia Acara BlackBerry Diskonan Jadi Tersangka Kericuhan ','<p>Jakarta - Kepolisian Resor Jakarta Selatan sudah menetapkan satu orang tersangka terkait ricuh antrean BlackBerry murah di mal Pacific Place, Jakarta. Sang tersangka berinisial E dari pihak event organizer (EO). \"Sudah ada satu tersangka dari EO, nanti akan berkembang,\" kata Kapolres Jaksel Kombes Pol Imam Sugianto di Cibubur, Jawa Barat, Minggu (27/11/2011).</p>\n<p>\"Inisialnya E,\" sambungnya. Menurut Imam, E dijerat dengan pasal 360 KUHP tentang kelalaian yang mengakibatkan orang lain menjadi korban. Sejak awal, panitia seharusnya memberikan informasi soal kegiatan tersebut ke kepolisian. \"Yang diperiksa sudah 10 orang, tersangka 1,\" tegasnya. Sebelumnya diberitakan ribuan orang rela mengantre dari pagi untuk membeli BlackBerry tipe Bellagio 9790 dengan harga \'murah\' pada Jumat (25/11). Kendati pun ratusan polisi, satpam serta 5 ambulans disiagakan, event promo itu tetap menelan korban antara lain 3 orang patah tulang dan 90 orang sempat dirawat di ruang medis.</p>','','internet',0,2),
	(7,'2011-11-27 15:59:54','Rachmatunisa a','Microsoft Optimis Windows Phone Sukses di Indonesia ','<p>\r\n	Jakarta - Microsoft optimistis ponsel Windows akan menarik minat konsumen di Indonesia. Meski demikian, menekan harganya agar terjangkau sehingga bisa menjangkau segmen pasar yang lebih luas, agaknya tidak menjadi pertimbangan Microsoft. Disebutkan CMO Microsoft Indonesia Hermawan Sutanto, mereka mempercayakan banderol harga ponsel smartphone Windows Phone sepenuhnya kepada vendor.</p>\r\n<p>\r\n	Microsoft bekerjasama membuat Windows Phone dengan vendor seperti Nokia, Samsung dan HTC. &quot;Keputusan itu (harga) tergantung vendor yang menjadi partner kita. Karena misalnya ada vendor yang maunya main di segmen high end. Dan kami kan tidak jual hardware tapi sistem operasinya,&quot; kata Hermawan di sela acara Microsoft Family Campaign di Puncak, Bogor. Dia juga mengungkapkan pendapatnya bahwa pasar ponsel Indonesia dinamis.</p>\r\n<p>\r\n	Perubahan pasar bisa berubah sewaktu-waktu mengikuti apa yang sedang tren dan dibutuhkan konsumen. &quot;Untuk menang di market ini, jangan jadi follower. Nah di Windows Phone ini kita bikin something new,&quot; umbarnya.</p>\r\n<p>\r\n	Saat ini, ponsel Windows Phone yang edar di Indonesia masih terbatas, yaitu buatan HTC. Mungkin Nokia akan menyusul pada tahun depan. Tim Microsoft sendiri mempersiapkan tiga langkah untuk kesuksesan Windows Phone. &quot;Menciptakan aplikasi yang mendukung, edukasi dan satu lagi saya pikir memberikan satu skenario berbeda seperti kampanye Microsoft family untuk PC Windows, nah kalau Windows Phone ini salah satunya semakin memudahkan orang terkoneksi dengan siapa saja dengan adanya People Hub,&quot; kata Hermawan.</p>\r\n','sdss','internet',1,2),
	(9,'2011-12-09 18:43:58','Guntur','RIM Tak Kooperatif, BRTI Ancam \'Pasung\' BlackBerry','<p>\r\n	<strong>Jakarta</strong> - Meski Research In Motion (RIM) mengaku sudah berkomitmen terhadap janji-janjinya terhadap Indonesia, namun Badan Regulator Telekomunikasi Indonesia (BRTI) menolak mentah-mentah klaim sepihak produsen BlackBerry tersebut.<br />\r\n	<br />\r\n	Terlebih soal pembangunan Network Aggregator yang nyatanya cuma dibangun router, itu pun ditempatkan di Singapura. BRTI menilai RIM tidak menghargai pemerintah dan regulator sama sekali.<br />\r\n	<br />\r\n	Menurut anggota komite BRTI Heru Sutadi, pemerintah sejatinya sudah menyampaikan rasa kekecewaannya itu. &quot;Kita sudah tahu lama mereka (mau) bangun (network aggregator) di Singapura, tapi saat ketemu September lalu, mereka masih muter-muter belum mau buka,&quot; tukasnya kepada <strong>detikINET</strong>, Jumat (9/12/2011).<br />\r\n	<br />\r\n	Hingga kemudian, desakan pemerintah pun dilanjutkan agar RIM harus mengurus izin penyelenggara jasa internet. Sebab jika tidak, kata Heru, layanan internet BlackBerry dinilai ilegal, baik itu layanan BlackBerry Internet Services (BIS) maupun BlackBerry Messenger (BBM).<br />\r\n	<br />\r\n	&quot;Karena RIM tidak kooperatif, bukan tidak mungkin segera kita akan hentikan BIS dan BBM mereka, jadi BlackBerry akan sama dengan ponsel lain saja,&quot; tegas Heru.<br />\r\n	<br />\r\n	Masyarakat pun diminta untuk berhati-hati jika menggunakan perangkat BlackBerry dengan kondisi seperti ini. Sebab data yang dipertukarkan tidak aman atau tidak dapat dijamin keamanannya.<br />\r\n	<br />\r\n	&quot;Ya datanya kan ke Kanada. Siapa jamin di sana tidak dibuka-buka seperti data Twitter, Facebook dan lainnya,&quot; Heru menandaskan.<br />\r\n	<br />\r\n	Sebelumnya, RIM sudah menegaskan jika disebut cuma bisa berjualan di Indonesia. Namun fakta berbicara, RIM lebih memilih bangun pabrik BlackBerry di Malaysia, tempatkan router di Singapura, dan memasarkan produknya secara besar-besaran di Indonesia.<br />\r\n	<br />\r\n	&quot;Tidak benar jika kami hanya berjualan di Indonesia. Contohnya, kami sudah membuat program akademik yang sama sekali tidak ada hubungannya dengan penjualan produk,&quot; kilah Gregory Wade, RIM Regional Managing Director.</p>\r\n','assets/images/upload/bb-torch_opened285.jpg','internet',1,2),
	(10,'2011-12-09 18:48:26','Guntur','Golkar: Setgab Koalisi Pasti Pecah Kalau Bicara Kekuasaan ','<p>\r\n	<strong>Jakarta </strong> - Politisi Partai Golkar, Bambang Soesatyo, tidak menampik pernyataan politisi Partai Demokrat, Sutan Bathoegana, yang menyebut Setgab tidak solid. Menurut Bambang, Setgab koalisi pasti pecah bila bicara soal kekuasaan. Benarkah?<br />\r\n	<br />\r\n	&quot;Koalisi pasti pecah, kalau diajak untuk bicara soal kekuasaan seperti ambang batas, kasus-kasus besar seperti Century atau mafia pajak serta memilih figur untuk posisi-posisi tertentu,&quot; ujar Bambang, Jumat (9/12/2011).<br />\r\n	<br />\r\n	Menurut Bambang, hal itu terjadi karena masing-masing partai anggota koalisi punya kepentingan yang terkait dengan strategi pemenangan Pemilu 2014. Sehingga sulit untuk bersatu.<br />\r\n	<br />\r\n	&quot;Tapi coba bicara soal bagaimana agar barang-barang impor dibatasi untuk kepentingan petani dan industri dalam negeri pasti kompak. Coba bicara soal bagaimana agar bunga kredit murah dan rakyat dapat lapangan pekerjaan pasti kompak,&quot; terangnya.<br />\r\n	<br />\r\n	Wakil Ketua Fraksi Demokrat, Sutan Bathoegana, menilai koalisi partai pemerintah yang tergabung dalam Setgab tidak efektif lagi. Sutan mengusulkan Stegab dibubarkan.<br />\r\n	<br />\r\n	&quot;Kalau tidak bermanfaat bubarkan saja Setgab. Koalisi yang terbangun ini tidak jelas jenis kelaminnya. Harusnya kan jelas, laki-laki atau perempuan, tapi koalisi tidak jelas,&quot; ujar Sutan saat dihubungi wartawan.<br />\r\n	<br />\r\n	Menurut Sutan, bila Setgab koalisi dibubarkan menteri-menteri yang berasal dari parpol tetap akan dipertahankan. Asalkan kinerja menteri tersebut baik.<br />\r\n	<br />\r\n	&quot;Selain itu tinggalkan baju partainya. Biar menteri-menteri itu bisa fokus kerja di pemerintahan. Tapi kalau kinerjaya tidak bagus dan tidak mau meninggalkan baju parpolnya ya silakan pergi,&quot; terangnya.</p>\r\n','assets/images/upload/golkar.jpg','politik',1,2),
	(13,'2012-03-01 20:03:53','Purwandi','Konser SNSD di Singapura Siap Digelar','<p><strong>Jakarta</strong> - Konser SNSD di Singapura siap digelar. Saat ini, penonton sudah mulai memasuki arena konser di Singapore Indoor Stadium, Singapura.<br /> <br /> Sebagian besar di antara mereka mengenakan kaos serba pink. Mereka juga membawa pernak-pernik seperti lightstick, handuk, dan kipas pink.<br /> <br /> Tak seperti konser KPop pada umumnya yang didominasi remaja putri. Konser SNSD juga diminati fans pria yang juga mengenakan pernak-pernik serba pink.<br /> <br /> Konser bertajuk \'2011 Girls\' Generation Tour\' ini akan dimulai tepat pukul 20.00 waktu Singapura. Konser ini rencananya akan berlangsung selama 3 jam.<br /> <br /> Saat ini, di panggung ada sebuah tenda besar yang siap terangkat. Apakah SNSD akan muncul dari balik tenda tersebut? Tunggu liputan lengkapnya hanya di detikHot!</p>','assets/images/upload/snsddal.jpg','hiburan',1,1),
	(15,'2011-12-09 19:14:16','Guntur','Demo Mahasiswa di Balaikota Malang Membawa Korban Luka','<p>\r\n	<strong>Malang</strong> - Aksi unjuk rasa memperingati Hari Anti Korupsi Malang berakhir dengan kericuhan. Seorang perwira polisi mengalami luka pada kepala akibat dihantam mikrofon milik pendemo.<br />\r\n	<br />\r\n	Unjuk rasa di bundaran tugu depan Balaikota Malang, Jumat (9/12/2011) ini diikuti puluhan mahasiswa yang tergabung dalam Badan Eksekutif Mahasiswa (BEM) Nasional.<br />\r\n	<br />\r\n	Kericuhan yang membuat kepala Kasatsabhara Polres Malang Kota AKP Hendrik Prawono berdarah ini berawal dari aksi mahasiswa yang membakar keranda mayat bergambar Presiden SBY, serta ban mobil.<br />\r\n	<br />\r\n	Melihat aksi ini, polisi pun berusaha memadamkan kobaran api. Sayangnya, saat api padam, amarah mahasiswa tersulut hingga terlibat adu fisik dengan petugas.<br />\r\n	<br />\r\n	Sejumlah bendera bertulis menyambut hari anti korupsi di bundaran tugu depan balaikota juga menjadi sasaran mahasiswa tergabung dalam BEM universitas di seluruh Indonesia. Mereka pun terlibat adu fisik dengan petugas Satpol PP Pemkot Malang yang berusaha menghalau aksi mahasiswa itu.<br />\r\n	<br />\r\n	Dalam aksinya ini mahasiswa mengkritik Presiden SBY tak melaksanakan janjinya untuk memberantas korupsi. Hal itu dikarenakan banyak mengambangnya penanganan kasus korupsi di negeri ini.<br />\r\n	<br />\r\n	&quot;SBY harus mundur, karena tak komitmen dengan janji memberantas korupsi,&quot; ujar Amrullah Ketua BEM Universitas Negeri Islam Maulana Malik Ibrahim dalam orasinya, Jumat (9/12/2011).</p>\r\n','assets/images/upload/demo-kkn--D.jpg','politik',0,2),
	(17,'2012-03-01 15:03:21','Guntur','Rekam Jejak Ayung Bos PT Sanex Steel di Kepolisian','<p><strong>Jakarta </strong> Semakin tinggi pohon berdiri, semakin besar angin menerpa. Begitulah mungkin pepatah yang cocok untuk mendiang Ayung alias Tan Hary Tantono. Menjadi bos besar di PT Sanex Steel Indonesia (SSI), tidak membuat hidupnya semudah membalikkan telapak tangan, tetapi justru membawanya ke dalam pusaran perkara.<br /><br />Informasi yang dihimpun detikcom dari sejumlah sumber di kepolisian, Ayung tercatat beberapa kali berurusan dengan aparat penegak hukum. Perkaranya, tidak jauh-jauh dari bisnisnya, mulai dari perkara pidana hingga perdata.<br /><br />\"Memang berdasarkan catatan di Polda Metro Jaya, dia pernah terlibat beberapa kasus,\" kata Kepala Bidang Humas Polda Metro Jaya Kombes Rikwanto saat dikonfirmasi, Rabu (1/3/2012).<br /><br />Beberapa kasus Ayung itu ada yang dinyatakan P-21 (lengkap) dan ada pula yang dihentikan (SP3). Kasus-kasusnya itu, kerap dilaporkan oleh Ho Giok Kie alias Arifin yang merupakan rekan bisnisnya.<br /><br />1. Pada tanggal 7 Desember 2006 silam atas tuduhan pasal 266 KUHP tentang memberikan keterangan palsu pada akta otentik Surat Bukti Kewarganegaraan Republik Indonesia (SBKRI). Berdasarkan informasi di kepolisian, Arifin melaporkan Ayung ke Polda Metro Jaya pada tanggal 7 Desember 2006 silam atas tuduhan pasal 266 KUHP tentang memberikan keterangan palsu pada akta otentik Surat Bukti Kewarganegaraan Republik Indonesia (SBKRI).<br /><br />Ayung kemudian ditangkap aparat Direktorat Reserse Kriminal Umum Polda Metro Jaya dengan surat penangkapan bernomor SP.Kap/1/1725/XII/2006/Ditreskrimum yang ditandatangani oleh Kompol Hendro Pandowo yang saat itu menjabat sebagai Satuan Kejahatan dan Kekerasan (Jatanras) Polda Metro Jaya. Pada tanggal 30 Desember 2006, di Tol Bitung, Tangerang.<br /><br />Informasi dihimpun, Ayung juga menggunakan identitas Tan Hary Tantono-nama dalam KTP-nya-yang merupakan identitas dari seorang bayi berusia 3,5 tahun yang sudah meninggal. Penyidik kepolisian bahkan menemukan kuburan bernama Tan Hary Tantono itu di kawasan Surabaya, Jawa Timur.<br /><br />Sumber menyebutkan, Ayung ditahan pada tanggal 30 Desember 2006 di Polda Metro Jaya atas pemalsuan identitas itu. Di situ lah, Ayung bertemu dengan John Kei. Hingga kasus tersebut bergulir ke meja hijau, Ayung dinyatakan tidak bersalah dalam putusan persidangan di Pengadilan Negeri Jakarta Utara tanggal 29 Mei 2007 silam. Ayung hanya mendapatkan vonis 5 bulan penjara atas kepemilikan Kartu Tanda Penduduk (KTP) ganda. Sementara tuduhan pemalsuan SBKRI dinyatakan tidak terbukti. Dia kemudian ditahan di Rutan Salemba. Di Rutan Salemba, ia bertemu dengan Said Kei.<br /><br />2. Ayung juga pernah ditahan atas dugaan mengkonsuksi sabu. Saat di tahan di Mapolda Metro Jaya atas kasus pemalsuan identitas, Ayung kedapatan menyimpan sabu seberat nol koma sekian gram. Ayung bahkan dikabarkan menghisap sabu bareng John Kei. Kasus narkotika ini kemudian menyeret Ayung hingga ke pengadilan. Pengadilan Negeri (PN) Jakarta Selatan memutus Ayung dengan kurungan selama 8 bulan.<br /><br />3. Dalam perkara bisnisnya, Ayung sebagai Komisaris Utama di PT SSI juga pernah dilaporkan oleh pihak kawasan Industri Milenium atas penyerobotan halaman. Saat itu, Ayung membongkar U-Turn di kawasan Milenium sebagai akses masuk ke pabriknya. Pihak Milenium kemudian melaporkan Ayung ke Polda Metro Jaya. Namun kasus tersebut kemudian dihentikan (SP-3) karena tidak cukup bukti.<br /><br />4. Seiring berkembangnya perusahaan, Ayung kemudian memperluas pabriknya. Ayung kemudian membeli lahan penduduk untuk perluasana pabriknya itu. Ia kemudian memasang pipa-pipa saluran air yang melintasi lahan kawasan Milenium. Pihak Milenium kemudian membongkar pipa tersebut. Mengetahui hal itu, Ayung marah, kemudian memasang kembali pipa tersebut.<br /><br />Hingga akhirnya kedua pihak ini saling melaporkan. Ayung melaporkan pengrusakan yang dilakukan pihak Milenium ke Polresta Tangerang. Sementara pihak Milenium melaporkan Ayung ke Polda Metro Jaya.<br /><br />Kasus yang dilaporkan pihak Milenium kemudian diproses di Satuan Harta, Benda, Bangunan dan Tanah (Harda Bangtah) Ditreskrimum Polda Metro Jaya. Namun kasus tersebut dihentikan.<br /><br />\"Kasusnya yang ini dihentikan karena tidak terbukti,\" kata Rikwanto.<br /><br />6. Ayung juga dilaporkan pihak Milenium atas pencemaran limbah B3 pada tahun 2011. Kasusnya kemudian dinyatakan lengkap dan saat ini masih proses persidangan.<br /><br />7. Sekitar tahun 2008, Arifin kembali memperkarakan Ayung. Kali ini, Arifin memperkarakan Ayung dengan tuduhan pemalsuan surat saham ke Bareskrim Mabes Polri. Saat itu, Kepala Bareskrim Polri dijabat oleh Komjen Bambang Hendarso Danuri (BHD).<br /><br />Saat proses di kepolisian, Ayung tidak ditahan. Namun di kejaksaan setelah perkaranya P-21, Ayung kemudian ditahan. Selama proses penyidikan, Carel yang juga menjadi kuasa hukum PT Sanex Steel Indoneisa sempat protes kepada penyidik.<br /><br />Namun kemudian, penyidik tetap memproses kasus tersebut hingga akhirnya dilimpahkan ke kejaksaan. Hingga kasus tersebut masuk ke meja hijau, ternyata Pengadilan Negeri Tangerang saat itu memutus bebas para terdakwa yakni Rudy Santoso, Kong Tju Yun dan Ayung pada tanggal 26 Agustus 2009 karena kasus tersebut dianggap perkara perdata, bukan pidana.<br /><br />8. Pada tanggal 29 Desember 2009, Ayung dilaporkan oleh Arifin ke Polda Metro Jaya berdasar nomor laporan LP/3742/K/XII/2009/SPK Unit I dengan tuduhan melakukan tindak pidana pemalsuan, menyuruk menempatkan keterangan palsu pada akta otentik dan penipuan sebagaimana dimaksud dalam pasal 263, 266 dan 378 KUHP tentang pemalsuan kewarganegaraan. Padahal kasus tersebut pernah dilaporkan Arifin sebelumnya.<br /><br />Namun kasus tersebut dinyatakan tidak terbukti karena telah memiliki kekuatan hukum yang tetap berdasarkan putusan Pengadilan Negeri Jakarta Utara No 619/Pid.B/2007/PN.Jakarta Utara tanggal 29 Mei 2007.<br /><br />Sekian banyak Ayung berperkara. Apakah sengketa-sengketanya itu yang membuatnya tewas terbunuh di Swiss-Belhotel, Jakarta Pusat, Selasa 27 Januari lalu?<br /><br />\"Kita masih mendalaminya apakah terkait atau tidak. Tentunya, perkara-perkaranya di masa lalunya ini akan kita telusuri juga,\" kata Rikwanto.</p>','','politik',0,2),
	(18,'2012-03-01 15:03:08','Guntur','Nokia & Yahoo Jadi Target Akuisisi Facebook? ','<p><strong>Jakarta</strong> - Setelah proses penawaran sahamnya (Initial Public Offering/IPO) usai, Facebook diyakini bakal langsung mengambil langkah drastis dalam strategi bisnis. Diduga, Nokia dan Yahoo akan menjadi target akuisisi situs jejaring sosial raksasa itu.<br /><br />\"Lupakan tentang<a href=\"http://inet.detik.com/read/2012/02/28/140952/1853502/399/yahoo-minta-facebook-bayar-lisensi\" target=\"_blank\"><strong> perseteruan paten antara Yahoo dan Facebook</strong></a>. Situs jejaring sosial ini akan segera <em>go public</em> dan bisa memiliki valuasi USD 100 miliar. Lantas, apa yang akan mereka lakukan?\" tukas pengamat yang juga pendiri Ironfire Capital LLC, Eric Jackson di Forbes, Kamis (1/3/2012).<br /><br /><em>Ya</em>, Facebook kini tengah berada di atas. Terlebih, setelah proses IPO itu rampung nilai valuasi situs besutan Mark Zuckerberg itu disebut-sebut akan menembus angka USD 100 miliar.<br /><br />\"<em>Nah</em>, setelah itu saya menduga ada dua perusahaan bonafit yang ada dalam daftar target akuisisi mereka (Facebook-red.), dengan memanfaatkan nilai bisnis Facebook yang meningkat. Keduanya adalah Nokia dan Yahoo,\" lanjutnya. <br /><br />Kemungkinan pencaplokan tersebut disebutkan Jackson tidak harus dua-duanya, salah satunya juga bisa. Yang pasti, ini diyakini akan berpengaruh dalam perjalanan bisnis Facebook di masa depan.<br /><br />Salah satunya adalah terkait persaingan dan inovasi yang semakin panas di antara raksasa teknologi lainnya, semisal Google dan Apple. Keduanya dikatakan bakal semakin mengoptimalkan layanan yang berbasis mobile untuk melebarkan ekspansinya. <br /><br /><br /> <strong> ( ash / rns ) </strong></p>','','internet',0,2),
	(19,'2012-03-01 15:03:29','Guntur','Wah, Twitter Jual Tweet Pengguna','<p><strong>Inggris</strong> - Twitter dilaporkan telah menjual \'kicauan\' lawas para penggunanya ke sebuah lembaga bernama DataSift. Tweet tersebut akan dikelola dan dijadikan bahan riset untuk para pengiklan.<br /><br />Hal tersebut dibeberkan oleh <em>dailymail </em>dan dikutip <strong>detikINET</strong>, Kamis (1/3/2012). Konon selain Datashift, ribuan perusahaan lainnya masuk dalam daftar antrian untuk membeli tweet lama tweeps.<br /><br />Meski belum ada konfirmasi dari Twitter, namun hal ini sudah diakui oleh Datasift, sebagai salah satu perusahaan penyedia data bagi para calon pengiklan. <br /><br />Twitter sendiri sedikitnya telah mengarsip sekitar 250 juta tweet yang beredar setiap harinya. <em>Nah, </em>untuk mengekstrak data yang sangat besar ini menjadi informasi bernilai, Datashift memiliki aplikasi khusus yang mereka sebut DataSift Historic.<br /><br /><em>Tools </em>tersebut mampu menampilkan informasi seputar opini publik, kondisi pasar, berita, bisnis hingga merek dan produk tertenu yang dipakai oleh pengguna Twitter. <br /><br />\"Sudah jelas. Jika Anda tidak membayar untuk memakai sebuah layanan, Anda bukanlah kosumen tapi Anda adalah produk,\" kata Nick Pickles, Director of Big Brother Watch Campaign Group, sebuah lembaga yang menjunjung tinggi privasi.<br /><br /><br /> <strong> ( eno / ash ) </strong></p>','063708ed78139acb688bc8ae8e3fb686.jpg','olahraga',0,2);

/*!40000 ALTER TABLE `berita` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table captcha
# ------------------------------------------------------------

DROP TABLE IF EXISTS `captcha`;

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `captcha` WRITE;
/*!40000 ALTER TABLE `captcha` DISABLE KEYS */;

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`)
VALUES
	(34,1330609898,'127.0.0.1','SD4W'),
	(35,1330609926,'127.0.0.1','KCZA');

/*!40000 ALTER TABLE `captcha` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `tipe` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `password`, `nama_lengkap`, `tipe`)
VALUES
	(1,'purwandi','123','Purwandi','Redaktur'),
	(2,'guntur','123','Guntur','Wartawan');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;