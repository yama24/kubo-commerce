-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 5.7.24 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- membuang struktur untuk table bunto.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cookie` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.admin: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `username`, `password`, `cookie`) VALUES
	(1, 'admin', '$2y$10$pKGfQG2etJ5lDW06PZncIOqY94RJTioYG4oM4n0/Up.cUpnX5HkRO', '94kg7WLA0egZkJlsyIYChCMcFKmpjqlImafEnRwUX8Pd9fpGvXW8DiNVcD3G7o1b');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- membuang struktur untuk table bunto.banner
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.banner: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`id`, `img`, `url`) VALUES
	(23, '1605549317770.png', '#');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- membuang struktur untuk table bunto.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `weight` int(11) NOT NULL,
  `ket` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel bunto.cart: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- membuang struktur untuk table bunto.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.categories: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `icon`, `slug`) VALUES
	(2, 'Komputer', '1605549916163.png', 'komputer'),
	(3, 'Laptop', '1605549925055.png', 'laptop'),
	(4, 'Gadget', '1605549933610.png', 'gadget'),
	(6, 'Pakaian Pria', '1605549942300.png', 'pakaian-pria'),
	(7, 'Pakaian Wanita', '1605549950422.png', 'pakaian-wanita');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- membuang struktur untuk table bunto.cod
CREATE TABLE IF NOT EXISTS `cod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regency_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel bunto.cod: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `cod` DISABLE KEYS */;
INSERT INTO `cod` (`id`, `regency_id`) VALUES
	(6, 23);
/*!40000 ALTER TABLE `cod` ENABLE KEYS */;

-- membuang struktur untuk table bunto.cost_delivery
CREATE TABLE IF NOT EXISTS `cost_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.cost_delivery: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `cost_delivery` DISABLE KEYS */;
INSERT INTO `cost_delivery` (`id`, `destination`, `price`) VALUES
	(3, 23, 10000);
/*!40000 ALTER TABLE `cost_delivery` ENABLE KEYS */;

-- membuang struktur untuk table bunto.email_send
CREATE TABLE IF NOT EXISTS `email_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.email_send: ~8 rows (lebih kurang)
/*!40000 ALTER TABLE `email_send` DISABLE KEYS */;
INSERT INTO `email_send` (`id`, `mail_to`, `subject`, `message`) VALUES
	(6, 0, 'asdasdsad', '<p>asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p>'),
	(7, 0, 'qweqweqwe', '<p>qweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqweqwe</p>'),
	(8, 18, 'asd', '<p>asdasdasdasda</p>'),
	(9, 18, 'asdas', '<p>sadasdasdasd</p><blockquote><p>asdasdasdasdasdasdasdasd</p><p>asdasdasdasd</p></blockquote><figure class="table"><table><tbody><tr><td>asd</td><td>asd</td></tr><tr><td>asd</td><td>asd</td></tr></tbody></table></figure><p>asdasdasd</p><figure class="image"><img src="https://bunto.test/assets/images/product/1586791476018.jpeg"></figure><p><a href="https://bunto.test/p/baju-gamis-syari-wanita-dewasa-lebaran-kekinian-pakaian-jubah-arab-muslim-muslimah">Baju Gamis Syari Wanita Dewasa Lebaran Kekinian Pakaian Jubah Arab Muslim Muslimah</a></p><p><a href="https://bunto.test/p/baju-gamis-syari-wanita-dewasa-lebaran-kekinian-pakaian-jubah-arab-muslim-muslimah">Rp 156.000</a></p><p><a href="https://bunto.test/p/baju-gamis-syari-wanita-dewasa-lebaran-kekinian-pakaian-jubah-arab-muslim-muslimah">Rp 5.555</a></p><p>&nbsp;</p><figure class="table"><table><tbody><tr><td>asd</td><td>asd</td><td>asd</td></tr><tr><td>asd</td><td>asd</td><td>asd</td></tr><tr><td>asd</td><td>asd</td><td>asd</td></tr></tbody></table></figure>'),
	(10, 18, 'vbnvbnvbn', '<p>asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p>'),
	(11, 18, 'asdasdsadas', '<p>asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p>'),
	(12, 0, 'hjkhjkhjk', '<p>hjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjkhjk</p>'),
	(13, 18, 'asdasdasd', '<p>pl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokmpl,pl,pl,pl,pl,pokmokmokmokmokm</p>');
/*!40000 ALTER TABLE `email_send` ENABLE KEYS */;

-- membuang struktur untuk table bunto.footer
CREATE TABLE IF NOT EXISTS `footer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.footer: ~9 rows (lebih kurang)
/*!40000 ALTER TABLE `footer` DISABLE KEYS */;
INSERT INTO `footer` (`id`, `page`, `type`) VALUES
	(1, 1, 1),
	(2, 3, 1),
	(3, 2, 2),
	(4, 1, 1),
	(5, 4, 1),
	(6, 5, 1),
	(7, 6, 2),
	(8, 7, 2),
	(9, 8, 2);
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;

-- membuang struktur untuk table bunto.grosir
CREATE TABLE IF NOT EXISTS `grosir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel bunto.grosir: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `grosir` DISABLE KEYS */;
INSERT INTO `grosir` (`id`, `min`, `price`, `product`) VALUES
	(1, 12, 20000, 30),
	(2, 24, 10000, 30);
/*!40000 ALTER TABLE `grosir` ENABLE KEYS */;

-- membuang struktur untuk table bunto.img_product
CREATE TABLE IF NOT EXISTS `img_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel bunto.img_product: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `img_product` DISABLE KEYS */;
INSERT INTO `img_product` (`id`, `id_product`, `img`) VALUES
	(1, 22, '1589840767903.jpg'),
	(2, 22, '1589840786550.jpg'),
	(5, 22, '1589840836102.jpg');
/*!40000 ALTER TABLE `img_product` ENABLE KEYS */;

-- membuang struktur untuk table bunto.invoice
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `invoice_code` varchar(10) NOT NULL,
  `label` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `province` int(11) NOT NULL,
  `regency` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `address` text NOT NULL,
  `courier` varchar(5) NOT NULL,
  `courier_service` varchar(70) NOT NULL,
  `ongkir` varchar(10) NOT NULL,
  `total_price` int(11) NOT NULL,
  `total_all` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `resi` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.invoice: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`id`, `user`, `invoice_code`, `label`, `name`, `email`, `telp`, `province`, `regency`, `district`, `village`, `zipcode`, `address`, `courier`, `courier_service`, `ongkir`, `total_price`, `total_all`, `date_input`, `status`, `resi`) VALUES
	(1, 47, '4729245323', 'sdfsd', '234234', 'maulana24@live.com', '234234', 5, 501, '2342', '34234', 23423423, '234234', 'jne', 'REG', '208000', 161555, 369555, '2020-11-17 01:12:03', 1, '0');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

-- membuang struktur untuk table bunto.kota
CREATE TABLE IF NOT EXISTS `kota` (
  `id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `tipe` text NOT NULL,
  `nama` text NOT NULL,
  `pos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.kota: ~501 rows (lebih kurang)
/*!40000 ALTER TABLE `kota` DISABLE KEYS */;
INSERT INTO `kota` (`id`, `provinsi_id`, `tipe`, `nama`, `pos`) VALUES
	(1, 21, 'Kabupaten', 'Aceh Barat', '23681'),
	(2, 21, 'Kabupaten', 'Aceh Barat Daya', '23764'),
	(3, 21, 'Kabupaten', 'Aceh Besar', '23951'),
	(4, 21, 'Kabupaten', 'Aceh Jaya', '23654'),
	(5, 21, 'Kabupaten', 'Aceh Selatan', '23719'),
	(6, 21, 'Kabupaten', 'Aceh Singkil', '24785'),
	(7, 21, 'Kabupaten', 'Aceh Tamiang', '24476'),
	(8, 21, 'Kabupaten', 'Aceh Tengah', '24511'),
	(9, 21, 'Kabupaten', 'Aceh Tenggara', '24611'),
	(10, 21, 'Kabupaten', 'Aceh Timur', '24454'),
	(11, 21, 'Kabupaten', 'Aceh Utara', '24382'),
	(12, 32, 'Kabupaten', 'Agam', '26411'),
	(13, 23, 'Kabupaten', 'Alor', '85811'),
	(14, 19, 'Kota', 'Ambon', '97222'),
	(15, 34, 'Kabupaten', 'Asahan', '21214'),
	(16, 24, 'Kabupaten', 'Asmat', '99777'),
	(17, 1, 'Kabupaten', 'Badung', '80351'),
	(18, 13, 'Kabupaten', 'Balangan', '71611'),
	(19, 15, 'Kota', 'Balikpapan', '76111'),
	(20, 21, 'Kota', 'Banda Aceh', '23238'),
	(21, 18, 'Kota', 'Bandar Lampung', '35139'),
	(22, 9, 'Kabupaten', 'Bandung', '40311'),
	(23, 9, 'Kota', 'Bandung', '40111'),
	(24, 9, 'Kabupaten', 'Bandung Barat', '40721'),
	(25, 29, 'Kabupaten', 'Banggai', '94711'),
	(26, 29, 'Kabupaten', 'Banggai Kepulauan', '94881'),
	(27, 2, 'Kabupaten', 'Bangka', '33212'),
	(28, 2, 'Kabupaten', 'Bangka Barat', '33315'),
	(29, 2, 'Kabupaten', 'Bangka Selatan', '33719'),
	(30, 2, 'Kabupaten', 'Bangka Tengah', '33613'),
	(31, 11, 'Kabupaten', 'Bangkalan', '69118'),
	(32, 1, 'Kabupaten', 'Bangli', '80619'),
	(33, 13, 'Kabupaten', 'Banjar', '70619'),
	(34, 9, 'Kota', 'Banjar', '46311'),
	(35, 13, 'Kota', 'Banjarbaru', '70712'),
	(36, 13, 'Kota', 'Banjarmasin', '70117'),
	(37, 10, 'Kabupaten', 'Banjarnegara', '53419'),
	(38, 28, 'Kabupaten', 'Bantaeng', '92411'),
	(39, 5, 'Kabupaten', 'Bantul', '55715'),
	(40, 33, 'Kabupaten', 'Banyuasin', '30911'),
	(41, 10, 'Kabupaten', 'Banyumas', '53114'),
	(42, 11, 'Kabupaten', 'Banyuwangi', '68416'),
	(43, 13, 'Kabupaten', 'Barito Kuala', '70511'),
	(44, 14, 'Kabupaten', 'Barito Selatan', '73711'),
	(45, 14, 'Kabupaten', 'Barito Timur', '73671'),
	(46, 14, 'Kabupaten', 'Barito Utara', '73881'),
	(47, 28, 'Kabupaten', 'Barru', '90719'),
	(48, 17, 'Kota', 'Batam', '29413'),
	(49, 10, 'Kabupaten', 'Batang', '51211'),
	(50, 8, 'Kabupaten', 'Batang Hari', '36613'),
	(51, 11, 'Kota', 'Batu', '65311'),
	(52, 34, 'Kabupaten', 'Batu Bara', '21655'),
	(53, 30, 'Kota', 'Bau-Bau', '93719'),
	(54, 9, 'Kabupaten', 'Bekasi', '17837'),
	(55, 9, 'Kota', 'Bekasi', '17121'),
	(56, 2, 'Kabupaten', 'Belitung', '33419'),
	(57, 2, 'Kabupaten', 'Belitung Timur', '33519'),
	(58, 23, 'Kabupaten', 'Belu', '85711'),
	(59, 21, 'Kabupaten', 'Bener Meriah', '24581'),
	(60, 26, 'Kabupaten', 'Bengkalis', '28719'),
	(61, 12, 'Kabupaten', 'Bengkayang', '79213'),
	(62, 4, 'Kota', 'Bengkulu', '38229'),
	(63, 4, 'Kabupaten', 'Bengkulu Selatan', '38519'),
	(64, 4, 'Kabupaten', 'Bengkulu Tengah', '38319'),
	(65, 4, 'Kabupaten', 'Bengkulu Utara', '38619'),
	(66, 15, 'Kabupaten', 'Berau', '77311'),
	(67, 24, 'Kabupaten', 'Biak Numfor', '98119'),
	(68, 22, 'Kabupaten', 'Bima', '84171'),
	(69, 22, 'Kota', 'Bima', '84139'),
	(70, 34, 'Kota', 'Binjai', '20712'),
	(71, 17, 'Kabupaten', 'Bintan', '29135'),
	(72, 21, 'Kabupaten', 'Bireuen', '24219'),
	(73, 31, 'Kota', 'Bitung', '95512'),
	(74, 11, 'Kabupaten', 'Blitar', '66171'),
	(75, 11, 'Kota', 'Blitar', '66124'),
	(76, 10, 'Kabupaten', 'Blora', '58219'),
	(77, 7, 'Kabupaten', 'Boalemo', '96319'),
	(78, 9, 'Kabupaten', 'Bogor', '16911'),
	(79, 9, 'Kota', 'Bogor', '16119'),
	(80, 11, 'Kabupaten', 'Bojonegoro', '62119'),
	(81, 31, 'Kabupaten', 'Bolaang Mongondow (Bolmong)', '95755'),
	(82, 31, 'Kabupaten', 'Bolaang Mongondow Selatan', '95774'),
	(83, 31, 'Kabupaten', 'Bolaang Mongondow Timur', '95783'),
	(84, 31, 'Kabupaten', 'Bolaang Mongondow Utara', '95765'),
	(85, 30, 'Kabupaten', 'Bombana', '93771'),
	(86, 11, 'Kabupaten', 'Bondowoso', '68219'),
	(87, 28, 'Kabupaten', 'Bone', '92713'),
	(88, 7, 'Kabupaten', 'Bone Bolango', '96511'),
	(89, 15, 'Kota', 'Bontang', '75313'),
	(90, 24, 'Kabupaten', 'Boven Digoel', '99662'),
	(91, 10, 'Kabupaten', 'Boyolali', '57312'),
	(92, 10, 'Kabupaten', 'Brebes', '52212'),
	(93, 32, 'Kota', 'Bukittinggi', '26115'),
	(94, 1, 'Kabupaten', 'Buleleng', '81111'),
	(95, 28, 'Kabupaten', 'Bulukumba', '92511'),
	(96, 16, 'Kabupaten', 'Bulungan (Bulongan)', '77211'),
	(97, 8, 'Kabupaten', 'Bungo', '37216'),
	(98, 29, 'Kabupaten', 'Buol', '94564'),
	(99, 19, 'Kabupaten', 'Buru', '97371'),
	(100, 19, 'Kabupaten', 'Buru Selatan', '97351'),
	(101, 30, 'Kabupaten', 'Buton', '93754'),
	(102, 30, 'Kabupaten', 'Buton Utara', '93745'),
	(103, 9, 'Kabupaten', 'Ciamis', '46211'),
	(104, 9, 'Kabupaten', 'Cianjur', '43217'),
	(105, 10, 'Kabupaten', 'Cilacap', '53211'),
	(106, 3, 'Kota', 'Cilegon', '42417'),
	(107, 9, 'Kota', 'Cimahi', '40512'),
	(108, 9, 'Kabupaten', 'Cirebon', '45611'),
	(109, 9, 'Kota', 'Cirebon', '45116'),
	(110, 34, 'Kabupaten', 'Dairi', '22211'),
	(111, 24, 'Kabupaten', 'Deiyai (Deliyai)', '98784'),
	(112, 34, 'Kabupaten', 'Deli Serdang', '20511'),
	(113, 10, 'Kabupaten', 'Demak', '59519'),
	(114, 1, 'Kota', 'Denpasar', '80227'),
	(115, 9, 'Kota', 'Depok', '16416'),
	(116, 32, 'Kabupaten', 'Dharmasraya', '27612'),
	(117, 24, 'Kabupaten', 'Dogiyai', '98866'),
	(118, 22, 'Kabupaten', 'Dompu', '84217'),
	(119, 29, 'Kabupaten', 'Donggala', '94341'),
	(120, 26, 'Kota', 'Dumai', '28811'),
	(121, 33, 'Kabupaten', 'Empat Lawang', '31811'),
	(122, 23, 'Kabupaten', 'Ende', '86351'),
	(123, 28, 'Kabupaten', 'Enrekang', '91719'),
	(124, 25, 'Kabupaten', 'Fakfak', '98651'),
	(125, 23, 'Kabupaten', 'Flores Timur', '86213'),
	(126, 9, 'Kabupaten', 'Garut', '44126'),
	(127, 21, 'Kabupaten', 'Gayo Lues', '24653'),
	(128, 1, 'Kabupaten', 'Gianyar', '80519'),
	(129, 7, 'Kabupaten', 'Gorontalo', '96218'),
	(130, 7, 'Kota', 'Gorontalo', '96115'),
	(131, 7, 'Kabupaten', 'Gorontalo Utara', '96611'),
	(132, 28, 'Kabupaten', 'Gowa', '92111'),
	(133, 11, 'Kabupaten', 'Gresik', '61115'),
	(134, 10, 'Kabupaten', 'Grobogan', '58111'),
	(135, 5, 'Kabupaten', 'Gunung Kidul', '55812'),
	(136, 14, 'Kabupaten', 'Gunung Mas', '74511'),
	(137, 34, 'Kota', 'Gunungsitoli', '22813'),
	(138, 20, 'Kabupaten', 'Halmahera Barat', '97757'),
	(139, 20, 'Kabupaten', 'Halmahera Selatan', '97911'),
	(140, 20, 'Kabupaten', 'Halmahera Tengah', '97853'),
	(141, 20, 'Kabupaten', 'Halmahera Timur', '97862'),
	(142, 20, 'Kabupaten', 'Halmahera Utara', '97762'),
	(143, 13, 'Kabupaten', 'Hulu Sungai Selatan', '71212'),
	(144, 13, 'Kabupaten', 'Hulu Sungai Tengah', '71313'),
	(145, 13, 'Kabupaten', 'Hulu Sungai Utara', '71419'),
	(146, 34, 'Kabupaten', 'Humbang Hasundutan', '22457'),
	(147, 26, 'Kabupaten', 'Indragiri Hilir', '29212'),
	(148, 26, 'Kabupaten', 'Indragiri Hulu', '29319'),
	(149, 9, 'Kabupaten', 'Indramayu', '45214'),
	(150, 24, 'Kabupaten', 'Intan Jaya', '98771'),
	(151, 6, 'Kota', 'Jakarta Barat', '11220'),
	(152, 6, 'Kota', 'Jakarta Pusat', '10540'),
	(153, 6, 'Kota', 'Jakarta Selatan', '12230'),
	(154, 6, 'Kota', 'Jakarta Timur', '13330'),
	(155, 6, 'Kota', 'Jakarta Utara', '14140'),
	(156, 8, 'Kota', 'Jambi', '36111'),
	(157, 24, 'Kabupaten', 'Jayapura', '99352'),
	(158, 24, 'Kota', 'Jayapura', '99114'),
	(159, 24, 'Kabupaten', 'Jayawijaya', '99511'),
	(160, 11, 'Kabupaten', 'Jember', '68113'),
	(161, 1, 'Kabupaten', 'Jembrana', '82251'),
	(162, 28, 'Kabupaten', 'Jeneponto', '92319'),
	(163, 10, 'Kabupaten', 'Jepara', '59419'),
	(164, 11, 'Kabupaten', 'Jombang', '61415'),
	(165, 25, 'Kabupaten', 'Kaimana', '98671'),
	(166, 26, 'Kabupaten', 'Kampar', '28411'),
	(167, 14, 'Kabupaten', 'Kapuas', '73583'),
	(168, 12, 'Kabupaten', 'Kapuas Hulu', '78719'),
	(169, 10, 'Kabupaten', 'Karanganyar', '57718'),
	(170, 1, 'Kabupaten', 'Karangasem', '80819'),
	(171, 9, 'Kabupaten', 'Karawang', '41311'),
	(172, 17, 'Kabupaten', 'Karimun', '29611'),
	(173, 34, 'Kabupaten', 'Karo', '22119'),
	(174, 14, 'Kabupaten', 'Katingan', '74411'),
	(175, 4, 'Kabupaten', 'Kaur', '38911'),
	(176, 12, 'Kabupaten', 'Kayong Utara', '78852'),
	(177, 10, 'Kabupaten', 'Kebumen', '54319'),
	(178, 11, 'Kabupaten', 'Kediri', '64184'),
	(179, 11, 'Kota', 'Kediri', '64125'),
	(180, 24, 'Kabupaten', 'Keerom', '99461'),
	(181, 10, 'Kabupaten', 'Kendal', '51314'),
	(182, 30, 'Kota', 'Kendari', '93126'),
	(183, 4, 'Kabupaten', 'Kepahiang', '39319'),
	(184, 17, 'Kabupaten', 'Kepulauan Anambas', '29991'),
	(185, 19, 'Kabupaten', 'Kepulauan Aru', '97681'),
	(186, 32, 'Kabupaten', 'Kepulauan Mentawai', '25771'),
	(187, 26, 'Kabupaten', 'Kepulauan Meranti', '28791'),
	(188, 31, 'Kabupaten', 'Kepulauan Sangihe', '95819'),
	(189, 6, 'Kabupaten', 'Kepulauan Seribu', '14550'),
	(190, 31, 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '95862'),
	(191, 20, 'Kabupaten', 'Kepulauan Sula', '97995'),
	(192, 31, 'Kabupaten', 'Kepulauan Talaud', '95885'),
	(193, 24, 'Kabupaten', 'Kepulauan Yapen (Yapen Waropen)', '98211'),
	(194, 8, 'Kabupaten', 'Kerinci', '37167'),
	(195, 12, 'Kabupaten', 'Ketapang', '78874'),
	(196, 10, 'Kabupaten', 'Klaten', '57411'),
	(197, 1, 'Kabupaten', 'Klungkung', '80719'),
	(198, 30, 'Kabupaten', 'Kolaka', '93511'),
	(199, 30, 'Kabupaten', 'Kolaka Utara', '93911'),
	(200, 30, 'Kabupaten', 'Konawe', '93411'),
	(201, 30, 'Kabupaten', 'Konawe Selatan', '93811'),
	(202, 30, 'Kabupaten', 'Konawe Utara', '93311'),
	(203, 13, 'Kabupaten', 'Kotabaru', '72119'),
	(204, 31, 'Kota', 'Kotamobagu', '95711'),
	(205, 14, 'Kabupaten', 'Kotawaringin Barat', '74119'),
	(206, 14, 'Kabupaten', 'Kotawaringin Timur', '74364'),
	(207, 26, 'Kabupaten', 'Kuantan Singingi', '29519'),
	(208, 12, 'Kabupaten', 'Kubu Raya', '78311'),
	(209, 10, 'Kabupaten', 'Kudus', '59311'),
	(210, 5, 'Kabupaten', 'Kulon Progo', '55611'),
	(211, 9, 'Kabupaten', 'Kuningan', '45511'),
	(212, 23, 'Kabupaten', 'Kupang', '85362'),
	(213, 23, 'Kota', 'Kupang', '85119'),
	(214, 15, 'Kabupaten', 'Kutai Barat', '75711'),
	(215, 15, 'Kabupaten', 'Kutai Kartanegara', '75511'),
	(216, 15, 'Kabupaten', 'Kutai Timur', '75611'),
	(217, 34, 'Kabupaten', 'Labuhan Batu', '21412'),
	(218, 34, 'Kabupaten', 'Labuhan Batu Selatan', '21511'),
	(219, 34, 'Kabupaten', 'Labuhan Batu Utara', '21711'),
	(220, 33, 'Kabupaten', 'Lahat', '31419'),
	(221, 14, 'Kabupaten', 'Lamandau', '74611'),
	(222, 11, 'Kabupaten', 'Lamongan', '64125'),
	(223, 18, 'Kabupaten', 'Lampung Barat', '34814'),
	(224, 18, 'Kabupaten', 'Lampung Selatan', '35511'),
	(225, 18, 'Kabupaten', 'Lampung Tengah', '34212'),
	(226, 18, 'Kabupaten', 'Lampung Timur', '34319'),
	(227, 18, 'Kabupaten', 'Lampung Utara', '34516'),
	(228, 12, 'Kabupaten', 'Landak', '78319'),
	(229, 34, 'Kabupaten', 'Langkat', '20811'),
	(230, 21, 'Kota', 'Langsa', '24412'),
	(231, 24, 'Kabupaten', 'Lanny Jaya', '99531'),
	(232, 3, 'Kabupaten', 'Lebak', '42319'),
	(233, 4, 'Kabupaten', 'Lebong', '39264'),
	(234, 23, 'Kabupaten', 'Lembata', '86611'),
	(235, 21, 'Kota', 'Lhokseumawe', '24352'),
	(236, 32, 'Kabupaten', 'Lima Puluh Koto/Kota', '26671'),
	(237, 17, 'Kabupaten', 'Lingga', '29811'),
	(238, 22, 'Kabupaten', 'Lombok Barat', '83311'),
	(239, 22, 'Kabupaten', 'Lombok Tengah', '83511'),
	(240, 22, 'Kabupaten', 'Lombok Timur', '83612'),
	(241, 22, 'Kabupaten', 'Lombok Utara', '83711'),
	(242, 33, 'Kota', 'Lubuk Linggau', '31614'),
	(243, 11, 'Kabupaten', 'Lumajang', '67319'),
	(244, 28, 'Kabupaten', 'Luwu', '91994'),
	(245, 28, 'Kabupaten', 'Luwu Timur', '92981'),
	(246, 28, 'Kabupaten', 'Luwu Utara', '92911'),
	(247, 11, 'Kabupaten', 'Madiun', '63153'),
	(248, 11, 'Kota', 'Madiun', '63122'),
	(249, 10, 'Kabupaten', 'Magelang', '56519'),
	(250, 10, 'Kota', 'Magelang', '56133'),
	(251, 11, 'Kabupaten', 'Magetan', '63314'),
	(252, 9, 'Kabupaten', 'Majalengka', '45412'),
	(253, 27, 'Kabupaten', 'Majene', '91411'),
	(254, 28, 'Kota', 'Makassar', '90111'),
	(255, 11, 'Kabupaten', 'Malang', '65163'),
	(256, 11, 'Kota', 'Malang', '65112'),
	(257, 16, 'Kabupaten', 'Malinau', '77511'),
	(258, 19, 'Kabupaten', 'Maluku Barat Daya', '97451'),
	(259, 19, 'Kabupaten', 'Maluku Tengah', '97513'),
	(260, 19, 'Kabupaten', 'Maluku Tenggara', '97651'),
	(261, 19, 'Kabupaten', 'Maluku Tenggara Barat', '97465'),
	(262, 27, 'Kabupaten', 'Mamasa', '91362'),
	(263, 24, 'Kabupaten', 'Mamberamo Raya', '99381'),
	(264, 24, 'Kabupaten', 'Mamberamo Tengah', '99553'),
	(265, 27, 'Kabupaten', 'Mamuju', '91519'),
	(266, 27, 'Kabupaten', 'Mamuju Utara', '91571'),
	(267, 31, 'Kota', 'Manado', '95247'),
	(268, 34, 'Kabupaten', 'Mandailing Natal', '22916'),
	(269, 23, 'Kabupaten', 'Manggarai', '86551'),
	(270, 23, 'Kabupaten', 'Manggarai Barat', '86711'),
	(271, 23, 'Kabupaten', 'Manggarai Timur', '86811'),
	(272, 25, 'Kabupaten', 'Manokwari', '98311'),
	(273, 25, 'Kabupaten', 'Manokwari Selatan', '98355'),
	(274, 24, 'Kabupaten', 'Mappi', '99853'),
	(275, 28, 'Kabupaten', 'Maros', '90511'),
	(276, 22, 'Kota', 'Mataram', '83131'),
	(277, 25, 'Kabupaten', 'Maybrat', '98051'),
	(278, 34, 'Kota', 'Medan', '20228'),
	(279, 12, 'Kabupaten', 'Melawi', '78619'),
	(280, 8, 'Kabupaten', 'Merangin', '37319'),
	(281, 24, 'Kabupaten', 'Merauke', '99613'),
	(282, 18, 'Kabupaten', 'Mesuji', '34911'),
	(283, 18, 'Kota', 'Metro', '34111'),
	(284, 24, 'Kabupaten', 'Mimika', '99962'),
	(285, 31, 'Kabupaten', 'Minahasa', '95614'),
	(286, 31, 'Kabupaten', 'Minahasa Selatan', '95914'),
	(287, 31, 'Kabupaten', 'Minahasa Tenggara', '95995'),
	(288, 31, 'Kabupaten', 'Minahasa Utara', '95316'),
	(289, 11, 'Kabupaten', 'Mojokerto', '61382'),
	(290, 11, 'Kota', 'Mojokerto', '61316'),
	(291, 29, 'Kabupaten', 'Morowali', '94911'),
	(292, 33, 'Kabupaten', 'Muara Enim', '31315'),
	(293, 8, 'Kabupaten', 'Muaro Jambi', '36311'),
	(294, 4, 'Kabupaten', 'Muko Muko', '38715'),
	(295, 30, 'Kabupaten', 'Muna', '93611'),
	(296, 14, 'Kabupaten', 'Murung Raya', '73911'),
	(297, 33, 'Kabupaten', 'Musi Banyuasin', '30719'),
	(298, 33, 'Kabupaten', 'Musi Rawas', '31661'),
	(299, 24, 'Kabupaten', 'Nabire', '98816'),
	(300, 21, 'Kabupaten', 'Nagan Raya', '23674'),
	(301, 23, 'Kabupaten', 'Nagekeo', '86911'),
	(302, 17, 'Kabupaten', 'Natuna', '29711'),
	(303, 24, 'Kabupaten', 'Nduga', '99541'),
	(304, 23, 'Kabupaten', 'Ngada', '86413'),
	(305, 11, 'Kabupaten', 'Nganjuk', '64414'),
	(306, 11, 'Kabupaten', 'Ngawi', '63219'),
	(307, 34, 'Kabupaten', 'Nias', '22876'),
	(308, 34, 'Kabupaten', 'Nias Barat', '22895'),
	(309, 34, 'Kabupaten', 'Nias Selatan', '22865'),
	(310, 34, 'Kabupaten', 'Nias Utara', '22856'),
	(311, 16, 'Kabupaten', 'Nunukan', '77421'),
	(312, 33, 'Kabupaten', 'Ogan Ilir', '30811'),
	(313, 33, 'Kabupaten', 'Ogan Komering Ilir', '30618'),
	(314, 33, 'Kabupaten', 'Ogan Komering Ulu', '32112'),
	(315, 33, 'Kabupaten', 'Ogan Komering Ulu Selatan', '32211'),
	(316, 33, 'Kabupaten', 'Ogan Komering Ulu Timur', '32312'),
	(317, 11, 'Kabupaten', 'Pacitan', '63512'),
	(318, 32, 'Kota', 'Padang', '25112'),
	(319, 34, 'Kabupaten', 'Padang Lawas', '22763'),
	(320, 34, 'Kabupaten', 'Padang Lawas Utara', '22753'),
	(321, 32, 'Kota', 'Padang Panjang', '27122'),
	(322, 32, 'Kabupaten', 'Padang Pariaman', '25583'),
	(323, 34, 'Kota', 'Padang Sidempuan', '22727'),
	(324, 33, 'Kota', 'Pagar Alam', '31512'),
	(325, 34, 'Kabupaten', 'Pakpak Bharat', '22272'),
	(326, 14, 'Kota', 'Palangka Raya', '73112'),
	(327, 33, 'Kota', 'Palembang', '30111'),
	(328, 28, 'Kota', 'Palopo', '91911'),
	(329, 29, 'Kota', 'Palu', '94111'),
	(330, 11, 'Kabupaten', 'Pamekasan', '69319'),
	(331, 3, 'Kabupaten', 'Pandeglang', '42212'),
	(332, 9, 'Kabupaten', 'Pangandaran', '46511'),
	(333, 28, 'Kabupaten', 'Pangkajene Kepulauan', '90611'),
	(334, 2, 'Kota', 'Pangkal Pinang', '33115'),
	(335, 24, 'Kabupaten', 'Paniai', '98765'),
	(336, 28, 'Kota', 'Parepare', '91123'),
	(337, 32, 'Kota', 'Pariaman', '25511'),
	(338, 29, 'Kabupaten', 'Parigi Moutong', '94411'),
	(339, 32, 'Kabupaten', 'Pasaman', '26318'),
	(340, 32, 'Kabupaten', 'Pasaman Barat', '26511'),
	(341, 15, 'Kabupaten', 'Paser', '76211'),
	(342, 11, 'Kabupaten', 'Pasuruan', '67153'),
	(343, 11, 'Kota', 'Pasuruan', '67118'),
	(344, 10, 'Kabupaten', 'Pati', '59114'),
	(345, 32, 'Kota', 'Payakumbuh', '26213'),
	(346, 25, 'Kabupaten', 'Pegunungan Arfak', '98354'),
	(347, 24, 'Kabupaten', 'Pegunungan Bintang', '99573'),
	(348, 10, 'Kabupaten', 'Pekalongan', '51161'),
	(349, 10, 'Kota', 'Pekalongan', '51122'),
	(350, 26, 'Kota', 'Pekanbaru', '28112'),
	(351, 26, 'Kabupaten', 'Pelalawan', '28311'),
	(352, 10, 'Kabupaten', 'Pemalang', '52319'),
	(353, 34, 'Kota', 'Pematang Siantar', '21126'),
	(354, 15, 'Kabupaten', 'Penajam Paser Utara', '76311'),
	(355, 18, 'Kabupaten', 'Pesawaran', '35312'),
	(356, 18, 'Kabupaten', 'Pesisir Barat', '35974'),
	(357, 32, 'Kabupaten', 'Pesisir Selatan', '25611'),
	(358, 21, 'Kabupaten', 'Pidie', '24116'),
	(359, 21, 'Kabupaten', 'Pidie Jaya', '24186'),
	(360, 28, 'Kabupaten', 'Pinrang', '91251'),
	(361, 7, 'Kabupaten', 'Pohuwato', '96419'),
	(362, 27, 'Kabupaten', 'Polewali Mandar', '91311'),
	(363, 11, 'Kabupaten', 'Ponorogo', '63411'),
	(364, 12, 'Kabupaten', 'Pontianak', '78971'),
	(365, 12, 'Kota', 'Pontianak', '78112'),
	(366, 29, 'Kabupaten', 'Poso', '94615'),
	(367, 33, 'Kota', 'Prabumulih', '31121'),
	(368, 18, 'Kabupaten', 'Pringsewu', '35719'),
	(369, 11, 'Kabupaten', 'Probolinggo', '67282'),
	(370, 11, 'Kota', 'Probolinggo', '67215'),
	(371, 14, 'Kabupaten', 'Pulang Pisau', '74811'),
	(372, 20, 'Kabupaten', 'Pulau Morotai', '97771'),
	(373, 24, 'Kabupaten', 'Puncak', '98981'),
	(374, 24, 'Kabupaten', 'Puncak Jaya', '98979'),
	(375, 10, 'Kabupaten', 'Purbalingga', '53312'),
	(376, 9, 'Kabupaten', 'Purwakarta', '41119'),
	(377, 10, 'Kabupaten', 'Purworejo', '54111'),
	(378, 25, 'Kabupaten', 'Raja Ampat', '98489'),
	(379, 4, 'Kabupaten', 'Rejang Lebong', '39112'),
	(380, 10, 'Kabupaten', 'Rembang', '59219'),
	(381, 26, 'Kabupaten', 'Rokan Hilir', '28992'),
	(382, 26, 'Kabupaten', 'Rokan Hulu', '28511'),
	(383, 23, 'Kabupaten', 'Rote Ndao', '85982'),
	(384, 21, 'Kota', 'Sabang', '23512'),
	(385, 23, 'Kabupaten', 'Sabu Raijua', '85391'),
	(386, 10, 'Kota', 'Salatiga', '50711'),
	(387, 15, 'Kota', 'Samarinda', '75133'),
	(388, 12, 'Kabupaten', 'Sambas', '79453'),
	(389, 34, 'Kabupaten', 'Samosir', '22392'),
	(390, 11, 'Kabupaten', 'Sampang', '69219'),
	(391, 12, 'Kabupaten', 'Sanggau', '78557'),
	(392, 24, 'Kabupaten', 'Sarmi', '99373'),
	(393, 8, 'Kabupaten', 'Sarolangun', '37419'),
	(394, 32, 'Kota', 'Sawah Lunto', '27416'),
	(395, 12, 'Kabupaten', 'Sekadau', '79583'),
	(396, 28, 'Kabupaten', 'Selayar (Kepulauan Selayar)', '92812'),
	(397, 4, 'Kabupaten', 'Seluma', '38811'),
	(398, 10, 'Kabupaten', 'Semarang', '50511'),
	(399, 10, 'Kota', 'Semarang', '50135'),
	(400, 19, 'Kabupaten', 'Seram Bagian Barat', '97561'),
	(401, 19, 'Kabupaten', 'Seram Bagian Timur', '97581'),
	(402, 3, 'Kabupaten', 'Serang', '42182'),
	(403, 3, 'Kota', 'Serang', '42111'),
	(404, 34, 'Kabupaten', 'Serdang Bedagai', '20915'),
	(405, 14, 'Kabupaten', 'Seruyan', '74211'),
	(406, 26, 'Kabupaten', 'Siak', '28623'),
	(407, 34, 'Kota', 'Sibolga', '22522'),
	(408, 28, 'Kabupaten', 'Sidenreng Rappang/Rapang', '91613'),
	(409, 11, 'Kabupaten', 'Sidoarjo', '61219'),
	(410, 29, 'Kabupaten', 'Sigi', '94364'),
	(411, 32, 'Kabupaten', 'Sijunjung (Sawah Lunto Sijunjung)', '27511'),
	(412, 23, 'Kabupaten', 'Sikka', '86121'),
	(413, 34, 'Kabupaten', 'Simalungun', '21162'),
	(414, 21, 'Kabupaten', 'Simeulue', '23891'),
	(415, 12, 'Kota', 'Singkawang', '79117'),
	(416, 28, 'Kabupaten', 'Sinjai', '92615'),
	(417, 12, 'Kabupaten', 'Sintang', '78619'),
	(418, 11, 'Kabupaten', 'Situbondo', '68316'),
	(419, 5, 'Kabupaten', 'Sleman', '55513'),
	(420, 32, 'Kabupaten', 'Solok', '27365'),
	(421, 32, 'Kota', 'Solok', '27315'),
	(422, 32, 'Kabupaten', 'Solok Selatan', '27779'),
	(423, 28, 'Kabupaten', 'Soppeng', '90812'),
	(424, 25, 'Kabupaten', 'Sorong', '98431'),
	(425, 25, 'Kota', 'Sorong', '98411'),
	(426, 25, 'Kabupaten', 'Sorong Selatan', '98454'),
	(427, 10, 'Kabupaten', 'Sragen', '57211'),
	(428, 9, 'Kabupaten', 'Subang', '41215'),
	(429, 21, 'Kota', 'Subulussalam', '24882'),
	(430, 9, 'Kabupaten', 'Sukabumi', '43311'),
	(431, 9, 'Kota', 'Sukabumi', '43114'),
	(432, 14, 'Kabupaten', 'Sukamara', '74712'),
	(433, 10, 'Kabupaten', 'Sukoharjo', '57514'),
	(434, 23, 'Kabupaten', 'Sumba Barat', '87219'),
	(435, 23, 'Kabupaten', 'Sumba Barat Daya', '87453'),
	(436, 23, 'Kabupaten', 'Sumba Tengah', '87358'),
	(437, 23, 'Kabupaten', 'Sumba Timur', '87112'),
	(438, 22, 'Kabupaten', 'Sumbawa', '84315'),
	(439, 22, 'Kabupaten', 'Sumbawa Barat', '84419'),
	(440, 9, 'Kabupaten', 'Sumedang', '45326'),
	(441, 11, 'Kabupaten', 'Sumenep', '69413'),
	(442, 8, 'Kota', 'Sungaipenuh', '37113'),
	(443, 24, 'Kabupaten', 'Supiori', '98164'),
	(444, 11, 'Kota', 'Surabaya', '60119'),
	(445, 10, 'Kota', 'Surakarta (Solo)', '57113'),
	(446, 13, 'Kabupaten', 'Tabalong', '71513'),
	(447, 1, 'Kabupaten', 'Tabanan', '82119'),
	(448, 28, 'Kabupaten', 'Takalar', '92212'),
	(449, 25, 'Kabupaten', 'Tambrauw', '98475'),
	(450, 16, 'Kabupaten', 'Tana Tidung', '77611'),
	(451, 28, 'Kabupaten', 'Tana Toraja', '91819'),
	(452, 13, 'Kabupaten', 'Tanah Bumbu', '72211'),
	(453, 32, 'Kabupaten', 'Tanah Datar', '27211'),
	(454, 13, 'Kabupaten', 'Tanah Laut', '70811'),
	(455, 3, 'Kabupaten', 'Tangerang', '15914'),
	(456, 3, 'Kota', 'Tangerang', '15111'),
	(457, 3, 'Kota', 'Tangerang Selatan', '15332'),
	(458, 18, 'Kabupaten', 'Tanggamus', '35619'),
	(459, 34, 'Kota', 'Tanjung Balai', '21321'),
	(460, 8, 'Kabupaten', 'Tanjung Jabung Barat', '36513'),
	(461, 8, 'Kabupaten', 'Tanjung Jabung Timur', '36719'),
	(462, 17, 'Kota', 'Tanjung Pinang', '29111'),
	(463, 34, 'Kabupaten', 'Tapanuli Selatan', '22742'),
	(464, 34, 'Kabupaten', 'Tapanuli Tengah', '22611'),
	(465, 34, 'Kabupaten', 'Tapanuli Utara', '22414'),
	(466, 13, 'Kabupaten', 'Tapin', '71119'),
	(467, 16, 'Kota', 'Tarakan', '77114'),
	(468, 9, 'Kabupaten', 'Tasikmalaya', '46411'),
	(469, 9, 'Kota', 'Tasikmalaya', '46116'),
	(470, 34, 'Kota', 'Tebing Tinggi', '20632'),
	(471, 8, 'Kabupaten', 'Tebo', '37519'),
	(472, 10, 'Kabupaten', 'Tegal', '52419'),
	(473, 10, 'Kota', 'Tegal', '52114'),
	(474, 25, 'Kabupaten', 'Teluk Bintuni', '98551'),
	(475, 25, 'Kabupaten', 'Teluk Wondama', '98591'),
	(476, 10, 'Kabupaten', 'Temanggung', '56212'),
	(477, 20, 'Kota', 'Ternate', '97714'),
	(478, 20, 'Kota', 'Tidore Kepulauan', '97815'),
	(479, 23, 'Kabupaten', 'Timor Tengah Selatan', '85562'),
	(480, 23, 'Kabupaten', 'Timor Tengah Utara', '85612'),
	(481, 34, 'Kabupaten', 'Toba Samosir', '22316'),
	(482, 29, 'Kabupaten', 'Tojo Una-Una', '94683'),
	(483, 29, 'Kabupaten', 'Toli-Toli', '94542'),
	(484, 24, 'Kabupaten', 'Tolikara', '99411'),
	(485, 31, 'Kota', 'Tomohon', '95416'),
	(486, 28, 'Kabupaten', 'Toraja Utara', '91831'),
	(487, 11, 'Kabupaten', 'Trenggalek', '66312'),
	(488, 19, 'Kota', 'Tual', '97612'),
	(489, 11, 'Kabupaten', 'Tuban', '62319'),
	(490, 18, 'Kabupaten', 'Tulang Bawang', '34613'),
	(491, 18, 'Kabupaten', 'Tulang Bawang Barat', '34419'),
	(492, 11, 'Kabupaten', 'Tulungagung', '66212'),
	(493, 28, 'Kabupaten', 'Wajo', '90911'),
	(494, 30, 'Kabupaten', 'Wakatobi', '93791'),
	(495, 24, 'Kabupaten', 'Waropen', '98269'),
	(496, 18, 'Kabupaten', 'Way Kanan', '34711'),
	(497, 10, 'Kabupaten', 'Wonogiri', '57619'),
	(498, 10, 'Kabupaten', 'Wonosobo', '56311'),
	(499, 24, 'Kabupaten', 'Yahukimo', '99041'),
	(500, 24, 'Kabupaten', 'Yalimo', '99481'),
	(501, 5, 'Kota', 'Yogyakarta', '55111');
/*!40000 ALTER TABLE `kota` ENABLE KEYS */;

-- membuang struktur untuk table bunto.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.pages: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `content`, `slug`) VALUES
	(1, 'Tentang Kami', '<p>Lakukan tugas Anda dengan senang hati dan gunakan humor Anda di waktu kerja terutama saat sulit dan tegang-tegang, itulah salah satu budaya (fun) kami.</p><p>Religious, Passionate, Tough, Knowledgeable, Fun &amp; Customer Service adalah budaya-budaya yang ada di Bhinneka.Com, dan kami sangat menjunjung tinggi budaya kami dengan cara memberikan yang terbaik bagi pelanggan, diri kita, keluarga, dan masyarakat.</p><h2>Visi dan Misi</h2><h3>Visi</h3><p>"Menjadi sebuah perusahaan kelas dunia dengan semangat pemanfaatan informasi teknologi, dan menjadi kebanggaan bangsa."</p><h3>Misi</h3><p>"Menjadi webstore nomor satu di Indonesia yang menyediakan kelengkapan dan kemudahan belanja, serta memperhatikan dan memberikan pengalaman belanja yang berkesan kepada pelanggan, melalui nilai-nilai delapan dimensi pengalaman."</p><h2>Sekapur Sirih</h2><p>Sejak awal Bhinneka.Com berdiri, kami bertekad membangun bisnis yang berdaya tahan panjang. Mengutamakan citra merk dengan pelayanan dan menjadikannya bagian dari budaya kerja. Fokus pada pelayanan berarti memberi nilai tambah dalam setiap layanan. Sebab itulah mengapa pelanggan kami menekan tombol\'beli\' dan tetap kembali lagi di kemudian hari.</p><p>Menengok sejenak ke belakang, kami bersyukur fokus pada pelayanan dan \'human touch\' dalam membangun Bhinneka.Com, yang dirumuskan dengan sebuah kalimat sederhana \'Pelayanan Dari Hati\'. Dan sekarang, kalimat ini telah menjadi esensi dalam setiap langkah yang kami lakukan, mudah dicerna tanpa perlu segala embel-embel dan frase-frase yang sulit untuk dipahami seluruh Bhinnekaners dalam melayani pelanggan kami.</p><p>Standar pelayanan kami pun semakin tinggi setiap tahun. Berinovasi dan menyajikan pengalamanan berbelanja yang berkesan, mulai dari produk yang lengkap, harga yang kompetitif, mudah dalam bertransaksi, jaminan purna jual, hingga kejutan-kejutan mengasyikkan untuk setiap pelanggan kami, yang menjadikan belanja di Bhinneka.Com semakin nyaman, baik online maupun offline.</p><p>Untuk teman-teman komunitas Bhinneka.Com yang bersama dengan kami sejak awal perkembangan internet dimulai di Indonesia, kami akan terus perhatikan dan senantiasa mengembangkan banyak fitur yang akan semakin asyik untuk saling bertemu, berbagi, berbincang, belajar, atau sekedar melakukan jual-beli produk. Offline store Bhinneka juga menjadi tempat untuk workshop, tempat berkumpul, dan ngobrol antar komunitas.</p><p>Akhirnya, saya sangat berbahagia Bhinneka.Com dapat berkontribusi untuk negeri ini dan membawa nilai lebih untuk masyarakat Indonesia. Kami akan selalu berusaha dan mendorong diri kami sendiri untuk menjadi salah satu perusahaan berbasis teknologi yang menjadi kebanggaan bangsa Indonesia.</p>', 'about'),
	(2, 'Kontak Kami', '<p>Hubungi Tim Penjualan Kami</p><p><strong>Konsultan Penjualan</strong></p><p>Melayani kebutuhan Anda untuk seluruh kategori produk. Silakan hubungi 021-29292828 atau <a href="https://www.bhinneka.com/hubungi-kami-form">email kami</a>.</p><p><strong>Korporasi &amp; Pemerintah.</strong></p><p>Melayani kebutuhan korporasi &amp; proyek. Silakan email kami ke <a href="mailto:corporate@bhinneka.com">corporate@bhinneka.com</a>.</p><p><strong>Solusi Software &amp; Lisensi</strong></p><p>Melayani kebutuhan lisensi &amp; konsultasi software. Silakan email kami ke <a href="mailto:licensing@bhinneka.com">licensing@bhinneka.com</a>.</p><p><strong>Solusi Percetakan &amp; Signage</strong></p><p>Melayani kebutuhan printer besar, signage, &amp; produk 3D. Silakan <a href="https://www.bhinneka.com/hubungi-kami-form">email kami</a>.</p><p><strong>Kantor Pusat</strong><br>Jl. Gunung Sahari Raya 73C No. 5-6<br>Jakarta 10610, Indonesia</p><p>Hubungi Tim Pendukung Kami</p><p><strong>Layanan Klaim Garansi</strong></p><p>Untuk bantuan teknisi dan klaim garansi produk, silakan telepon ke (021) 2929-2828 atau <a href="https://www.bhinneka.com/hubungi-kami-form">email kami</a>.</p><p><strong>Layanan Pengembalian Barang &amp; Refund</strong></p><p>Jika produk yang diterima salah/cacat/rusak &amp; ingin mengurus pengembalian dana, untuk laporan dan bantuan dapat menghubungi kami <a href="https://www.bhinneka.com/hubungi-kami-form">email kami</a>.</p><p><strong>Layanan Pelanggan</strong></p><p>Silakan berikan feedback atas pelayanan yang kurang berkenan dari tim kami. Tuliskan masukan Anda <a href="https://www.bhinneka.com/hubungi-kami-form">email kami</a>.</p><p><strong>Status Pengiriman</strong></p><p>Untuk bantuan tracking status pesanan &amp; status pengiriman, silakan telepon ke (021) 2929-2828 atau Anda dapat menghubungi kami <a href="https://www.bhinneka.com/hubungi-kami-form">email kami</a>.</p><p><strong>Merchant Bhinneka Marketplace</strong></p><p>Ingin memulai jualan di Bhinneka? Anda bisa mendaftar menjadi merchant &amp; bertanya seputar Bhinneka Marketplace <a href="https://www.bhinneka.com/hubungi-kami-form">email kami</a>.</p><p><strong>Tidak Dapat Menemukan Tim yang Anda Cari?</strong></p><p>Anda dapat menghubungi kami <a href="https://www.bhinneka.com/hubungi-kami-form">email kami</a>.</p>', 'contact'),
	(3, 'Testimoni', '<p>redirect page</p>', 'testimoni'),
	(4, 'Kebijakan Privasi', '<h2><strong>KEBIJAKAN PRIVASI SITUS DAN APLIKASI MATAHARI</strong></h2><p>MATAHARI memahami dan menghormati privasi Anda dan nilai hubungan kami dengan Anda. Kebijakan Privasi ini menjelaskan bagaimana Matahari mengumpulkan, mengatur dan melindungi informasi Anda ketika Anda mengunjungi dan/atau menggunakan situs atau aplikasi MATAHARI, bagaimana Matahari menggunakan informasi dan kepada siapa Matahari dapat berbagi. Kebijakan privasi ini juga memberitahu Anda bagaimana Anda dapat meminta Matahari untuk mengakses atau mengubah informasi Anda serta menjawab pertanyaan Anda sehubungan dengan Kebijakan Privasi ini.<br>Kata-kata yang dimulai dengan huruf besar dalam Kebijakan Privacy ini mempunyai pengertian yang sama dengan Syarat dan Ketentuan penggunaan situs dan aplikasi MATAHARI.</p><h2><strong>Informasi yang kami kumpulkan</strong></h2><p>Matahari dapat memperoleh dan mengumpulkan informasi dan/atau konten dari situs dan aplikasi yang Anda atau pengguna lain sambungkan atau disambungkan oleh situs atau aplikasi MATAHARI dengan situs atau pengguna tertentu dan informasi dan/atau konten yang Anda berikan melalui penggunaan situs atau aplikasi MATAHARI dan/atau pengisian Aplikasi.<br>Ketika Anda mengunjungi situs atau aplikasi MATAHARI, Matahari dapat mengumpulkan informasi apapun yang telah dipilih bisa terlihat oleh semua orang dan setiap informasi publik yang tersedia. Informasi ini dapat mencakup nama Anda, gambar profil, jenis kelamin, kota saat ini, hari lahir, email, jaringan, daftar teman, dan informasi-informasi Anda lainnya yang tersedia dalam jaringan. Selain itu, ketika Anda menggunakan aplikasi MATAHARI, atau berinteraksi dengan alat terkait, widget atau plug-in, Matahari dapat mengumpulkan informasi tertentu dengan cara otomatis, seperti cookies dan web beacon. Informasi yang Matahari kumpulkan dengan cara ini termasuk alamat IP, perangkat pengenal unik, karakteristik perambah, karakteristik perangkat, sistem operasi, preferensi bahasa, URL, informasi tentang tindakan yang dilakukan, tanggal dan waktu kegiatan. Melalui metode pengumpulan otomatis ini, Matahari mendapatkan informasi mengenai Anda. Matahari mungkin menghubungkan unsur-unsur tertentu atas data yang telah dikumpulkan melalui sarana otomatis, seperti informasi browser Anda, dengan informasi lain yang diperoleh tentang Anda, misalnya, apakah Anda telah membuka email yang dikirimkan kepada Anda. Matahari juga dapat menggunakan alat analisis pihak ketiga yang mengumpulkan informasi tentang lalu lintas pengunjung situs atau aplikasi MATAHARI. Browser Anda mungkin memberitahu Anda ketika Anda menerima cookie jenis tertentu atau cara untuk membatasi atau menonaktifkan beberapa jenis cookies. Harap dicatat, bahwa tanpa cookie Anda mungkin tidak dapat menggunakan semua fitur dari situs atau aplikasi MATAHARI.<br>Situs atau aplikasi MATAHARI mungkin berisi link ke tempat pihak lain yang dapat dioperasikan oleh pihak lain tersebut yang mungkin tidak memiliki kebijakan privasi yang sama dengan Matahari. Matahari sangat menyarankan Anda untuk membaca dan mempelajari kebijakan privasi dan ketentuan-ketentuan pihak lain tersebut sebelum masuk atau menggunakannya. Matahari tidak bertanggung jawab atas pengumpulan dan/atau penyebaran informasi pribadi Anda oleh pihak lain atau yang berkaitan dengan penggunaan media sosial seperti Facebook dan Twitter dan Matahari dibebaskan dari segala akibat yang timbul atas penyebaran dan/atau penyalahgunaan informasi tersebut.</p><h2><strong>BAGAIMANA MATAHARI MENGGUNAKAN INFORMASI</strong></h2><p>Matahari dapat menggunakan informasi Anda yang diperoleh untuk menyediakan produk dan layanan yang Anda minta, sebagai data riset atau berkomunikasi tentang dan/atau mengelola partisipasi Anda dalam survei atau undian atau kontes atau acara khusus lainnya yang diadakan oleh Matahari, pengoperasian Matahari, memberikan dukungan kepada Anda sebagai pengunjung dan/atau pengguna situs atau aplikasi MATAHARI, merespon dan berkomunikasi dengan Anda mengenai permintaan Anda, pertanyaan dan/atau komentar Anda, membiarkan Anda untuk meninggalkan komentar di situs atau aplikasi MATAHARI atau melalui media sosial lainnya, membangun dan mengelola Akun Anda, mengirimkan berita-berita dan/atau penawaran-penawaran yang berlaku bagi Anda selaku pengunjung dan penguna situs atau aplikasi MATAHARI, untuk mengoperasikan, mengevaluasi dan meningkatkan bisnis Matahari termasuk untuk mengembangkan produk dan layanan baru; untuk mengelola komunikasi Matahari, menentukan efektifitas layanan, pemasaran dan periklanan situs atau aplikasi MATAHARI, dan melakukan akutansi, audit, dan kegiatan Matahari lainnya, melakukan analisis data termasuk pasar dan pencarian konsumen, analisis trend, keuangan, dan informasi pribadi, melaksanakan kerjasama dengan mitra Matahari yang terkait dengan program-program yang diadakan oleh Matahari, melindungi, mengidentifikasi, dan mencegah penipuan dan kegiatan kriminal lainnya, klaim dan kewajiban lainnya, membantu mendiagnosa masalah teknis dan layanan, untuk memelihara, mengoperasikan, atau mengelola situs atau aplikasi MATAHARIyang dilakukan oleh Matahari atau pihak lain yang ditentukan oleh Matahari, mengidentifikasi pengguna situs atau aplikasi MATAHARI, serta mengumpulkan informasi demografis tentang pengguna situs atau aplikasi MATAHARI, untuk cara lain yang Matahari beritahukan pada saat pengumpulan informasi.<br>Matahari tidak akan menjual atau memberikan informasi pribadi Anda kepada pihak lain, kecuali seperti yang dijelaskan dalam kebijakan privasi ini. Matahari akan berbagi informasi dengan afiliasi Matahari atau pihak lain yang melakukan layanan berdasarkan petunjuk dari Matahari. Pihak lain tersebut tidak diizinkan untuk menggunakan atau mengungkapkan informasi tersebut kecuali diperlukan untuk melakukan layanan atas nama Matahari atau untuk mematuhi persyaratan hukum. Matahari juga dapat berbagi informasi dengan pihak lain yang merupakan mitra Matahari untuk menawarkan produk atau jasa yang mungkin menarik bagi Anda<br>Matahari dapat mengungkapkan informasi jika dianggap perlu dalam kebijakan tunggal Matahari, untuk mematuhi hukum yang berlaku, peraturan, proses hukum atau permintaan pemerintah, dan peraturan yang berlaku di Matahari. Selain itu, Matahari dapat mengungkapkan informasi ketika percaya, pengungkapan diperlukan atau wajib dilakukan untuk mencegah kerusakan fisik atau kerugian finansial atau hal lainnya sehubungan dengan dugaan atau terjadinya kegiatan ilegal. Matahari juga berhak untuk mengungkapkan dan/atau mengalihkan informasi yang dimiliki apabila sebagian atau seluruh bisnis atau aset Matahari dijual atau dialihkan.<br>Matahari dapat menyimpan dan/atau memusnahkan informasi tentang Anda sesuai kebijakan yang berlaku atau jika diperlukan.</p><h2><strong>UPDATE KEBIJAKAN PRIVASI INI</strong></h2><p>Kebijakan Privasi ini mungkin diperbarui secara berkala dan tanpa pemberitahuan sebelumnya kepada Anda untuk mencerminkan perubahan dalam praktik informasi pribadi. Matahari akan menampilkan pemberitahuan di bagian info profil website untuk memberitahu Anda tentang perubahan terhadap Kebijakan Privasi dan menunjukkan di bagian atas Kebijakan saat ketika Kebijakan Privasi ini terakhir diperbarui. Kebijakan Privasi ini merupakan satu kesatuan dan menjadi bagian yang tidak terpisahkan dari Syarat dan Ketentuan Penggunaan situs dan aplikasi MATAHARI.</p>', 'privacy-policy'),
	(5, 'Syarat dan Ketentuan', '<h2><strong>SYARAT DAN KETENTUAN SITUS DAN APLIKASI MATAHARI</strong></h2><p>Selamat datang dan terima kasih telah mengunjungi situs/aplikasi MATAHARI. Silahkan membaca Syarat dan Ketentuan ini dengan seksama. Syarat dan Ketentuan ini mengatur akses, penelusuran, penggunaan, dan pembelian barang-barang yang ditawarkan atau dijual di www.MATAHARI.com kepada Anda. Dengan mengakses, menelusuri, dan menggunakan situs/aplikasi MATAHARI ini, berarti Anda telah membaca, mengerti, dan setuju untuk tunduk dan terikat pada Syarat dan Ketentuan ini, dan Anda juga setuju untuk tidak mempengaruhi, mengganggu, atau berusaha mempengaruhi atau mengganggu jalannya situs/aplikasi MATAHARI dengan cara apapun. Jika Anda tidak menyetujui salah satu, sebagian, atau seluruh isi Syarat dan Ketentuan ini, maka Anda tidak diperkenankan untuk mengakses, menelusuri atau menggunakan situs/aplikasi MATAHARI ini. Akses, penelusuran, dan penggunaan situs/aplikasi MATAHARI ini hanya untuk penggunaan pribadi Anda. Anda tidak diperkenankan untuk mendistribusikan, memodifikasi, menjual, atau mengirimkan apapun yang Anda akses dari situs/aplikasi MATAHARI ini, termasuk tetapi tidak terbatas pada teks, gambar, audio, dan video untuk keperluan bisnis, komersial, publik atau kepeluan non-personal lainnya.<br>Penggunaan konten situs/aplikasi MATAHARI, logo MATAHARI, merek layanan dan/atau merek dagang yang tidak sah dapat melanggar undang-undang hak kekayaan intelektual, hak cipta, merek, privasi, publisitas, hukum perdata dan pidana tertentu. Syarat dan Ketentuan ini termasuk hak kekayaan intelektual milik MATAHARI yang dilindungi hak cipta. Setiap penggunaan Syarat dan Ketentuan ini oleh pihak manapun, baik sebagian maupun seluruhnya, tidak diizinkan. Pelanggaran atas hak atas kekayaan intelektual MATAHARI ini dapat dikenakan tindakan atau sanksi berdasarkan ketentuan hukum yang berlaku.<br>Anda perlu mengunjungi halaman ini secara berkala untuk mengetahui setiap perubahan Syarat dan Ketentuan ini.</p>', 'terms'),
	(6, 'Cara Berbelanja', '<p>Anda bisa mengklik “Blanja sekarang” di blanja.com untuk membeli produk, atau Anda bisa menambahkan produk ke Favorit dahulu lalu menempatkan pesanan.</p><p><strong>1. Blanja sekarang</strong></p><p>1.1 Jika Anda ingin membeli produk langsung ketika Anda melihatnya di Product Detail Page (gambar di bawah), Anda bisa mengklik “Blanja sekarang” setelah Anda memilih atribut, jumlah, dll. dari produk tersebut.</p><figure class="image"><img src="https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_001.jpg" alt="register_1"></figure><p>1.2 Setelah Anda mengkonfirmasi alamat pengiriman, informasi pesanan dan informasi lainnya, klik “Selanjutnya”.</p><figure class="image"><img src="https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_002.jpg" alt="register_1"></figure><p>1.3 Anda bisa masuk ke “My blanja”-“Pesanan Saya” dan melihat pesanan yang telah ditempatkan. Jika Anda sudah mengkonfirmasi jumlah dari pesanan tersebut, klik “Bayar”.</p><figure class="image"><img src="https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_003.jpg" alt="register_1"></figure><p>1.4 Masuk ke halaman pembayaran dan bayarkan pesanan. Status pemesanan akan berubah menjadi “Telah dibayar”, yang artinya barang sedang menunggu dikirim oleh penjual.</p><figure class="image"><img src="https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_004.jpg" alt="register_1"></figure><p>1.5 Setelah penjual berhasil mengirimkan barang, status pemesanan akan berubah menjadi “Telah dikirim”. Ketika anda menerima barang dan mengkonfirmasi, mohon klik “Konfirmasi”.</p><figure class="image"><img src="https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_005.jpg" alt="register_1"></figure><p>Anda harus memasukkan password Dompet Blanja sebelum mengklik “Konfirmasi”.</p><figure class="image"><img src="https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_006.png" alt="register_1"></figure><p>1.6 Ketika status berubah ke "Selesai", maka berarti transaksi telah selesai</p><figure class="image"><img src="https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_007.jpg" alt="register_1"></figure><p><strong>Checkout beberapa produk yang telah ditambahkan ke Troli blanja secara bersamaan</strong></p><p>Anda bisa menambahkan beberapa produk ke Troli blanja dan membelinya secara bersamaan, lalu menempatkan pesanan dan membayar sekali sekaligus. Prosesnya sama seperti proses “Blanja sekarang”.</p>', 'shopping-help'),
	(7, 'Pengiriman Barang', '<ol><li>Pengiriman barang untuk setiap transaksi yang terjadi melalui Platform Bukalapak menggunakan layanan pengiriman barang yang disediakan Bukalapak atas kerjasama Bukalapak dengan pihak jasa ekspedisi pengiriman barang resmi.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk peraturan terkait dengan syarat dan ketentuan pengiriman barang sepenuhnya ditentukan oleh pihak jasa ekspedisi pengiriman barang dan sepenuhnya menjadi tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Bukalapak hanya berperan sebagai media perantara antara Pengguna dengan pihak jasa ekspedisi pengiriman barang.</li><li>Pengguna wajib memahami, menyetujui, serta mengikuti ketentuan-ketentuan pengiriman barang yang telah dibuat oleh pihak jasa ekspedisi pengiriman barang.</li><li>Pengiriman barang atas transaksi melalui sistem Bukalapak menggunakan jasa ekspedisi pengiriman barang dilakukan dengan tujuan agar barang dapat dipantau melalui sistem Bukalapak.</li><li>Pelapak (Penjual) wajib bertanggung jawab penuh atas barang yang dikirimnya.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk kerugian yang dapat timbul akibat kerusakan ataupun kehilangan pada barang, baik pada saat pengiriman barang tengah berlangsung maupun pada saat pengiriman barang telah selesai, adalah sepenuhnya tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Dalam hal diperlukan untuk dilakukan proses pengembalian barang, maka Pengguna, baik Pelapak (Penjual) maupun Pembeli, diwajibkan untuk melakukan pengiriman barang langsung ke masing-masing Pembeli maupun Pelapak (Penjual). Bukalapak tidak menerima pengembalian atau pengiriman barang atas transaksi yang dilakukan oleh Pengguna dalam kondisi apa pun.</li></ol>', 'pengiriman-barang');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- membuang struktur untuk table bunto.payment_proof
CREATE TABLE IF NOT EXISTS `payment_proof` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(30) NOT NULL,
  `file` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel bunto.payment_proof: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `payment_proof` DISABLE KEYS */;
INSERT INTO `payment_proof` (`id`, `invoice`, `file`, `status`) VALUES
	(1, '4729245323', '1605550784927.png', 1);
/*!40000 ALTER TABLE `payment_proof` ENABLE KEYS */;

-- membuang struktur untuk table bunto.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `condit` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date_submit` datetime NOT NULL,
  `publish` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `transaction` int(11) NOT NULL,
  `promo_price` int(11) NOT NULL,
  `viewer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.products: ~12 rows (lebih kurang)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `title`, `price`, `stock`, `category`, `condit`, `weight`, `img`, `description`, `date_submit`, `publish`, `slug`, `transaction`, `promo_price`, `viewer`) VALUES
	(1, 'OPPO A91 8/128GB Special Online Edition', 3699000, 15, 4, 1, 300, '1586699074281.jpg', 'Dimensions/Weight\r\nHeight: 160.2mm\r\nWidth: 73.3mm\r\nThickness: 7.9mm\r\nWeight: Approx. 172g\r\n\r\nBasic Parameters\r\nColor: Lightening Black, Unicorn White\r\nOperating System: ColorOS 6.1.2, based on Android 9\r\nCPU: Helio P70\r\nGPU: ARM Mali G72 MP3 900MHz\r\nBattery Capacity: 4000mAh (Standard Value)\r\nRAM:8GB\r\nStorage: 128GB\r\nVOOC Flash Charge: 3.0\r\n\r\nDisplay\r\nSize: 16.2cm(6.4\'\')\r\nTouchscreen: Multi-touch, Capacitive Screen\r\nResolution: 2400 by 1080 pixels at 408 ppi\r\nColors: 16 million colors\r\nScreen Ratio: 90.7%\r\nContrast: 1000000:1\r\nType: AMOLED\r\nBrightness: Typical Value 430nit\r\n\r\nCamera\r\nRear Sensor: 48MP & 8MP & 2MP & 2MP\r\nFront Sensor: 16MP\r\nFlash: LED Flash\r\nAperture :\r\nFront: f/2.0;\r\nRear: Main f/1.79, Wide Angle f/2.25, Portrait & Mono f/2.4\r\nSensor Size:\r\nMain 1/2.25\', 0.8um\r\nSecondary Wide Angle 1/4\', 1.12um 2M 1/5\', 1.75um\r\nPixel Size: 1/3.1\', 1.0um\r\nCamera Mode: Photo, video, professional mode, panorama, portrait, night scene, time-lapse photography, slow motion, etc.\r\nVideo: Rear Camera Defualt: 1080P@30fps; Front Camera Default: 720P@30fps\r\nConnectivity\r\n\r\nFrequencies:\r\n[Frequency 1]\r\nGSM: 850/900/1800/1900MHz\r\nWCDMA: Bands 1/5/8\r\nFDD-LTE: Bands 1/3/5/8\r\nTD-LTE: Bands 38/40/41\r\n[Frequency 2]\r\nGSM: 850/900/1800/1900MHz\r\nWCDMA: Bands 1/5/8\r\nFDD-LTE: Bands 1/3/5/7/8\r\nTD-LTE: Bands 38/40/41\r\n[Frequency 3]\r\nGSM: 850/900/1800/1900MHz\r\nWCDMA: 850/900/1700/1900/2100MHz\r\nFDD-LTE: 700/800/850/900/1700/1800/1900/2100/2600MHz\r\nTD-LTE: 1900/2000/2300/2496-2690/2570-2620MHz\r\nSIM Card Type: Nano-SIM / Nano-USIM\r\nGPS: Built-in GPS; supports A-GPS, Beidou, Glonass\r\nBluetooth: 4.2\r\nWLAN Function: 2.4/5GHz 802.11 a/b/g/n/ac\r\nOTG: Supported\r\n\r\nIn the Box\r\nHandset *1    \r\nHeadset *1    \r\nUSB Cable *1    \r\nAdapter *1    \r\nSIM Card Pin *1    \r\nProtective Case *1    \r\nProtective Film, pre-applied *1\r\nQuick Guide *1    \r\nWarranty Card *1 ', '2020-04-12 20:43:52', 1, 'oppo-a91-8128gb-special-online-edition', 2, 55555, 49),
	(2, 'Black Shark 2 Pro 8GB/128GB Include Rookie Kit - Iceberg Grey', 7499000, 8, 4, 1, 450, '1586623271686.jpg', 'Processor & GPU\r\nQualcomm® Snapdragon™ 855+, 2.96GHz (Qualcomm® Snapdragon™ premium-tier processor)\r\nQualcomm® Adreno™ 640\r\n\r\nRAM & ROM\r\n8GB RAM 128GB ROM\r\n\r\nDimension\r\nHeight: 163.61mm\r\nDepth: 8.77mm (10.07mm at the thickest point)\r\nWidth: 75.01 mm\r\nWeight: 205g\r\n\r\nBattery & Charging\r\n4000mAh(typ)/3900mAh(min)\r\nNon-removable\r\nHandset supports QC4+, 27W/18W. Charger supports QC3.0 (Qualcomm® Quick Charge™ )\r\nStandard USB Type-C\r\n\r\nCamera & Video\r\nRear Cameras\r\nMain?48M 0.8µm (48MP 4in1 PDAF f1.75)\r\nAperture: f/1.75\r\n6p lens\r\nLED flash\r\nSecondary: 12M 1.0µm (12MP PDAF f2.2 ?1.0µm)\r\nAperture: f/2.2\r\n6p lens (2x optical zoom lens)\r\nSupport PDAF / low-light enhancement technology / HDR / portrait photography / panorama / AI camera / super night mode\r\nFront Camera, FF 20M 0.9µm 4in1 Aperture: f/2.0 5p lens\r\n\r\nDisplay\r\n6.39 inch AMOLED\r\n19.5:9 Full screen display\r\n430nit(typ) High brightness (10% lower brightness with DC Dimming)\r\nResolution:1080 × 2340, 403PPI, Contrast Ratio ?60000:1\r\nSupports DCI?P3 108.9%(typ)\r\n\r\nConnectivity\r\nDual nano SIM\r\nTD LTE?FDD LTE?TD?SCDMA?WCDMA?CDMA?GSM\r\nSupports wifi: 802.11a/b/g/n/ac; 2.4G&5.0G\r\nSupports 2*2 mimo, MU MIMO\r\nSupports WIFI Display, WFI Direct, WIFI hotspot\r\nSupports Bluetooth 5.0 wireless, supports aptX & aptX HD & aptX Adaptive & LDAC\r\n\r\nFingerprint & Recognization\r\nVirtual Keys: Recent, HOME, Back\r\nSupports full-screen operation; Supports intelligent dock & game Dock\r\nShark Key to enter Sharkspace\r\n\r\nSensors\r\nGravity sensor, Ambient light sensor, Proximity sensor, Gyroscope, Compass, fingerprint sensor, display touch sensitivity sensor\r\n\r\nKelengkapan dalam paket:\r\n1x Smartphone\r\n1x Rookie Kit (Gamepad Left + Holder 2.0 Left)\r\n1x Power Adapter\r\n1x USB Cable\r\n1x Transparent Protective Case\r\n1x Manual Book\r\n1x Warranty Card\r\n1x Black Shark Sticker\r\n1x SIM Tray Ejector\r\n1x Type-C to 3.5mm Audio Jack Adapter\r\n1x Free Perdana Smartfren', '2020-04-11 18:41:11', 1, 'black-shark-2-pro-8gb128gb-include-rookie-kit-iceberg-grey', 2, 50000, 78),
	(3, 'AMD Paket PC Desktop Gaming Rakitan || Terbatas', 4050000, 2, 2, 2, 12000, '1586699592182.jpg', 'Komputer rakitan\r\nDilengkapi dengan aplikasi game menarik\r\nHdd 500\r\nSSD 240GB\r\nRam 8GB DDR 4', '2020-04-12 15:53:12', 1, 'amd-paket-pc-desktop-gaming-rakitan-terbatas', 0, 5555, 63),
	(4, 'Laptop Termurah Terlaris Dell Latitude E6410 Core i5', 1950000, 9, 3, 2, 1000, '1586700041867.jpg', 'Ready Laptop Dell Latitude E6410\r\nLaptop ini sangat cocok untuk agan yang sedang mencari Laptop dengan Budget Minimal namun mendapatkan Laptop yang Maksimal\r\nTidak perlu diragukan lagi Laptop Dell ini mempunyai daya tahan Material Terbaik\r\n\r\nSpesifikasi :\r\n- Core i5 2.5GHz\r\n- Ram DDR3 4GB\r\n- Hdd 250GB\r\n- Layar 14” inchi\r\n- Webcam\r\n- DVD RW\r\n- Lan Port\r\n- Wifi\r\n- VGA Port\r\n- USB Port\r\n- Windows 7 Pro 64bit\r\n- Office 2013, Winrar, UltraISO, Dll\r\n--------------------\r\nGaransi 1 Bulan\r\n--------------------\r\nKelengkapan :\r\n- Laptop Dell Latitude E6410 Second 93% sd 95%\r\n- Baterai\r\n- Adaptor\r\n- Tas New Slempang\r\n--------------------\r\nHarga : Rp. 1.950.000\r\n--------------------\r\nKondisi :\r\n- Mesin OK 100% Siap Bekerja Keras\r\n- Body Laptop Overall 95% Second Mulus\r\n- Layar Jernih OK 100%\r\n- Keyboard OK 100%\r\n- Sound OK 100%\r\n- Webcam OK 100%\r\n- VGA OK 100%\r\n- USB OK 100%\r\n- LAN Card OK 100%\r\n- SD Card Reader OK 100%\r\nLulus QC khas betet89 100% Maknyus Istimiwir barangnya\r\n--------------------\r\nbetet89 Spesialis Laptop Second Built Up Original \r\nBergaransi, Jujur, dan Amanah sejak 2009\r\nReseller Welcome, harga pasti masuk', '2020-04-12 16:00:41', 1, 'laptop-termurah-terlaris-dell-latitude-e6410-core-i5', 1, 5555, 67),
	(5, 'KEMEJA CORDUROY “SIMUGI”', 153000, 210, 6, 1, 60, '1586700289565.jpg', 'Reggo memiliki dua jenis kemeja corduroy, dimana perbedaannya terdapat pada tekstur bahannya.\r\nDapat kalian pilih di pilihan varian warna ya.\r\nKarena terbagi dua kelompok, ada beberapa warna yang bertekstur halus dan warna lainnya memiliki tekstur standar corduroy.\r\n__________________\r\n\r\nStatus : Ready Stock\r\n\r\nKode Barang : SIMUGI\r\n\r\nTersedia Size : M, L dan XL\r\n\r\nDetail Size :\r\n\r\nM ( P 73cm x 53cm )\r\nL ( P 75cm x 56cm )\r\nXL ( 78cm x 60cm))\r\n\r\nBahan : Corduroy', '2020-04-12 16:04:49', 1, 'kemeja-corduroy-simugi', 0, 5555, 18),
	(6, 'LAPTOP ASUS X541S X0632T N3000| RAM 4GB HDD 500GB|15.6"|DVDRW|WINDOWS 10 ORIGINAL', 4300000, 12, 3, 1, 3000, '1586700419708.jpg', 'SPESIFIKASI : \r\nNotebook : Asus X541SA-X0632T \r\nProcessor : Intel®  Celeron® N3000 CPU  @ 1.04 GHz ( 2C,2T) \r\nRAM : 1X4096 MB DDR3 (4 GB PC3L 12800) ONBOARD \r\nHarddisk : 500 GB \r\nKamera : HD Web Camera \r\nVGA : Intel® UHD Graphics 600, Dedicated 128 MB, Shared 1993 MB, Up to 2121 MB \r\nBaterai : 3 Cell LI-ion 3350 mAh \r\nFitur : BT, WiFi, DVD Super Multi, Web Cam,Card Reader,1 Port USB 2.0 ,1 Port USB 3.0 ,1 Port USB 3.1 Type C,HDMI,Realtek PCIe FE Family Controller (RJ45) \r\nLayar : 15.6 HD SLIM (1366X768) \r\nWarna : Black \r\nOperation System (OS) : Windows 10 Home Single Language 64-Bit \r\nGaransi : 1 Tahun \r\n\r\n\r\n\r\nFITUR :\r\n- DVD Super Multi DL Drive ( DVDRW )\r\n- Card Reader 3 in 1\r\n- Bluetooth\r\n- HD Web Camera\r\n- 3 Cell LI-ion 19V 100-240-50-60 Hz\r\n- Webcam, Cardreader,1 port USB 3.0,1 port USB 2.0,1 port usb 3.1 type C, HDMI, Vga Out\r\n- Warna Hitam\r\n\r\n** BONUS :\r\nTas Laptop\r\n\r\n** KELENGKAPAN :\r\n- Unit + Dus Lengkap\r\n- Charger\r\n- Buku Manual\r\n- Buku Garansi', '2020-04-12 16:06:59', 1, 'laptop-asus-x541s-x0632t-n3000-ram-4gb-hdd-500gb156dvdrwwindows-10-original', 0, 5555, 41),
	(8, 'Baju Gamis Syari Wanita Dewasa Lebaran Kekinian Pakaian Jubah Arab Muslim Muslimah', 156000, 28, 7, 1, 650, '1586791476018.jpeg', 'Assalamualaikum\r\nDapatkan harga TERMURAH tanpa syarat apapun\r\nDetail Produk\r\nBahan Moscrepe mix renda import plus khimar\r\nUkuran : All size fit to L\r\nLd 100-102 cm\r\nPanjang 135-137 cm\r\nToleransi ukuran 1-2 cm\r\n\r\n*PENTING :\r\n-Pastikan alamat yang di tulis ketika checkout diisi dengan sangan LENGKAP guna menghindari kendala pengiriman oleh kurir (Sertakan patokan bila perlu)\r\n-Pastikan nomor HP yang diisi dalam alamat ketika checkout mudah dihubungi (Tlp. & Sms) / (Sertakan 2 Nomor Hp bila perlu)\r\n\r\n\r\nHarga murah kualitas bahan dijammin bagus\r\nStock Barang Aman Jadi Cocok Buat Kamu Yang Jadi RESELLER atau suka sebagai DROPSHIPER\r\nKecepatan pengiriman baik\r\n\r\n\r\nReseller and Dropshiper wlocome\r\nGambar untuk referensi\r\nTingkat kemiripan 85 - 90%', '2020-04-13 17:24:36', 1, 'baju-gamis-syari-wanita-dewasa-lebaran-kekinian-pakaian-jubah-arab-muslim-muslimah', 2, 5555, 32),
	(9, 'Baju Batik Pria Lengan Panjang Kemeja Seragam Kantor Busana Muslim Cowok', 118000, 20, 6, 1, 408, '1586792245831.jpg', 'KEMEJA PAGAR BUNGA\r\nEXCLUSIVE DAN MEWAH\r\n\r\nBAHAN KATUN PRIMA\r\n\r\nLINGKAR DADA KEMEJA PANJANG DAN PENDEK\r\nM= 104cm\r\nL= 108cm\r\nXL= 112cm\r\nXXL= 120cm', '2020-04-13 17:37:25', 1, 'baju-batik-pria-lengan-panjang-kemeja-seragam-kantor-busana-muslim-cowok', 0, 5555, 5),
	(10, 'Asus Zenfone MAX M1 ZB555KL Smartphone [32GB/ 3GB/ L]', 1260000, 12, 4, 1, 430, '1586960622849.jpg', '<h2>Asus Zenfone MAX M1 ZB555KL Smartphone [32GB/ 3GB/ L]</h2><p>&nbsp;</p><h2>Merasakan Pengalaman Layar Full View 5.5 Inch</h2><p>Asus Zenfone Max M1 merupakan smartphone yang sengaja dirancang untuk memenuhi lifestyle&nbsp;pengguna. Dibuktikan dengan desain smartphone yang kelihatan apik berikut dengan tampilan full view display 5.5 inch. Bahkan dengan jenis layar yang sekarang Asus mengklaim nantinya Anda dapat menikmati peningkatan level gambar saat menikmati berbagai konten foto dan video. Apalagi layar HD Asus Max M1 kabarnya sudah menggunakan jenis kaca 2.5D beresolusi HD Plus. Selain itu, tersedianya Triple Slot yang mana nantinya Anda bisa menumpangi dua kartu SIM yang mendukung di jaringan 4G LTE. Ada lagi satu slot untuk MicroSD untuk penyimpanan hingga 256GB.&nbsp;</p><figure class="image"><img src="https://i.imgur.com/JzH6nV4.jpg" alt=""></figure><h2>Video Unboxing Asus Zenfone Max M1 Indonesia</h2><p><a href="https://youtu.be/YQ7MZxRTCVY">https://youtu.be/YQ7MZxRTCVY</a></p><h2>Asus Hadirkan Desain Smartphone Ultra Slim&nbsp;</h2><p>Meski tidak terlalu besar hanya seukuran 5.5” Asus merancang bingkai ultraslim sehingga membuatnya lebih ergonomis saat digenggam. Ditambah lagi dengan sentuhan akhir berbalut warna metalik yang menjadikan Zenfone Max M1 terkesan lebih Premium. Bahkan pilihan warna yang disediakan oleh sang produsen juga cukup beragam diantaranya Deepsea Black, Sunlight Gold, Ruby Red. Kesempurnaan Asus ZB555KL semakin lengkap berkat hadirnya Fingerprint Sensor yang diterapkan pada bagian belakang handphone. Hebatnya lagi, kecepatan pemindai sidik jarinya terbilang cukup intuitif saat digunakan untuk membuka kunci layar.&nbsp;</p><figure class="image"><img src="https://i.imgur.com/MMrwiKC.jpg" alt=""></figure><h2>Interface yang Baru ZenUI 5.0 &amp; Android 8.0</h2><p>Untuk melengkapi debut smartphone terbarunya, Asus Zenfone Max M1 dibekali dengan Android Oreo beserta dengan antarmuka terbaru ZenUI 5.0. Hasilnya Anda dapat merasakan pengalaman baru yang lebih menarik, mudah dan intuitif. Tidak cukup dengan itu, dibagian dalam Asus Zenfone Max M1 ditenagai dengan platform Qualcomm Snapdragon yang lebih cepat dan responsif. Bahkan untuk mengimbanginya, Asus menyandingkan GPU Adreno dan RAM yang cukup untuk hasilkan kualitas grafis bebas<i>&nbsp;‘lag’</i> kala bermain game atau memuat konten multimedia lainnya. &nbsp;</p><figure class="image"><img src="https://i.imgur.com/thjKsuy.jpg" alt=""></figure><p>&nbsp;</p><h2>Kamera 13MP Asus Zenfone Max M1: Lebar dan Jernih</h2><p>Dengan iming-iming sistem dual kamera yang baru maka hasil fotonya tentu semakin menawan. Berbekal kamera utama 13 MP dengan kelengkapan aperture lensa F2.0 memungkinkan Anda motret dengan sudut pandang selebar 120 derajat. Begitupun dengan kemampuan rekam videonya yang memungkinkan menangkap lebih banyak objek / pemandangan yang memukau. Kemampuan lain yang dimiliki kamera smartphone Asus Zenfone Max M1 yakni fase autofukos yang hampir mirip dengan pendeteksian kamera DSLR. Akurasi fokusnya mencapai 0.03 detik untuk mendapatkan foto yang detail dan tajam. Begitupun dengan kamera depan Zenfone Max M1 yang disokong dengan teknologi Camera PixelMaster guna mendapatkan hasil yang lebih bening dan jernih saat selfie atau video call. &nbsp;</p><figure class="image"><img src="https://i.imgur.com/Qpk1Fem.jpg" alt=""></figure><h2>Manajemen Baterai Cerdas Asus PowerMaster</h2><p>Kali ini Asus sekaligus memperkenalkan teknologi Asus PowerMaster sebagai dukungan manajemen daya yang cerdas. Teknologi ini diupayakan untuk mengoptimalkan masa pakai baterai tanpa harus mengesampingkan keamanan dan kinerja smartphone Asus Max M1. Sehubung dengan kapasitas baterainya sebesar 4000 mAh, maka sepantasnya Asus menawarkan fitur pengisian daya cepat / fast charging. Pengguna hanya membutuhkan waktu kurang lebih 3 jam untuk mendapatkan baterai smartphone yang terisi penuh. Dengan catatan sebaiknya Anda melakukan charging menggunakan adaptor yang bersertifikat (original), sehingga keamanan arus tetap stabil dan menghindari tegangan berlebih.&nbsp;</p><figure class="image"><img src="https://i.imgur.com/a2nXsuc.jpg" alt=""></figure><p>&nbsp;</p>', '2020-04-15 16:23:43', 1, 'asus-zenfone-max-m1-zb555kl-smartphone-32gb-3gb-l', 0, 555555, 47),
	(22, 'KAMI. Yarra Print Scarf Nuvoile Aster Jilbab Segiempat', 192000, 23, 7, 1, 100, '1587463636401.jpg', '<p>KAMI. Yarra Print Scarf Nuvoile Aster Jilbab Segiempat adalah kerudung segiempat berbahan Nuvoile yang didesain comfy dalam patterned dan mudah diatur sehingga nyaman saat digunakan. Ukuran : 115x115 cm</p>', '2020-04-21 12:07:16', 1, 'kami-yarra-print-scarf-nuvoile-aster-jilbab-segiempat', 0, 555555, 5022),
	(29, 'teest', 65000, 21, 2, 1, 103, '1602945145630.jpg', '<p>ini deskripsi</p><p>&nbsp;</p>', '2020-10-17 21:32:25', 1, 'teest', 0, 55555, 3),
	(30, 'asdasdasd', 123213, 123, 2, 1, 123123, '1603013000814.jpg', '<p>asdasdasd</p>', '2020-10-18 16:23:20', 1, 'asdasdasd', 0, 0, 7);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- membuang struktur untuk table bunto.provinsi
CREATE TABLE IF NOT EXISTS `provinsi` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.provinsi: ~34 rows (lebih kurang)
/*!40000 ALTER TABLE `provinsi` DISABLE KEYS */;
INSERT INTO `provinsi` (`id`, `nama`) VALUES
	(1, 'Bali'),
	(2, 'Bangka Belitung'),
	(3, 'Banten'),
	(4, 'Bengkulu'),
	(5, 'Di Yogyakarta'),
	(6, 'Dki Jakarta'),
	(7, 'Gorontalo'),
	(8, 'Jambi'),
	(9, 'Jawa Barat'),
	(10, 'Jawa Tengah'),
	(11, 'Jawa Timur'),
	(12, 'Kalimantan Barat'),
	(13, 'Kalimantan Selatan'),
	(14, 'Kalimantan Tengah'),
	(15, 'Kalimantan Timur'),
	(16, 'Kalimantan Utara'),
	(17, 'Kepulauan Riau'),
	(18, 'Lampung'),
	(19, 'Maluku'),
	(20, 'Maluku Utara'),
	(21, 'Nanggroe Aceh Darussalam (NAD)'),
	(22, 'Nusa Tenggara Barat (NTB)'),
	(23, 'Nusa Tenggara Timur (NTT)'),
	(24, 'Papua'),
	(25, 'Papua Barat'),
	(26, 'Riau'),
	(27, 'Sulawesi Barat'),
	(28, 'Sulawesi Selatan'),
	(29, 'Sulawesi Tengah'),
	(30, 'Sulawesi Tenggara'),
	(31, 'Sulawesi Utara'),
	(32, 'Sumatera Barat'),
	(33, 'Sumatera Selatan'),
	(34, 'Sumatera Utara');
/*!40000 ALTER TABLE `provinsi` ENABLE KEYS */;

-- membuang struktur untuk table bunto.rekening
CREATE TABLE IF NOT EXISTS `rekening` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rekening` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.rekening: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `rekening` DISABLE KEYS */;
INSERT INTO `rekening` (`id`, `rekening`, `name`, `number`) VALUES
	(8, 'BCA', 'Yayan Maulana', '2831752566'),
	(9, 'Mandiri', 'Widya Pinandini', '1340010789120');
/*!40000 ALTER TABLE `rekening` ENABLE KEYS */;

-- membuang struktur untuk table bunto.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo` int(11) NOT NULL,
  `promo_time` varchar(40) NOT NULL,
  `short_desc` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `regency_id` int(11) NOT NULL,
  `verify` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.settings: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `promo`, `promo_time`, `short_desc`, `address`, `regency_id`, `verify`) VALUES
	(1, 1, '2020-11-30T23:15', 'Akeong adalah sebuah situs toko online mudah dan terpercaya. Kami memiliki toko fisik yang bisa Anda kunjungi. Disini jual beragam komputer, gadget, serta pakaian pria dan wanita', 'Perumahan Raoseun House No.21 Jl. Manisi Kel. Pasirbiru Kec. Cibiru Kota Bandung 40615', 23, 1);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- membuang struktur untuk table bunto.sosmed
CREATE TABLE IF NOT EXISTS `sosmed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.sosmed: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `sosmed` DISABLE KEYS */;
INSERT INTO `sosmed` (`id`, `name`, `icon`, `link`) VALUES
	(1, 'Facebook', 'facebook-f', 'https://facebook.com/tonisuwen'),
	(3, 'Twitter', 'twitter', 'https://twitter.com/tonisuwen'),
	(4, 'Linkedin', 'linkedin-in', 'https://linkedin.com/in/tonisuwendi'),
	(5, 'Instagram', 'instagram', 'https://instagram.com/tonisuwen'),
	(6, 'Youtube', 'youtube', 'https://youtube.com/tonisuwendi');
/*!40000 ALTER TABLE `sosmed` ENABLE KEYS */;

-- membuang struktur untuk table bunto.subscriber
CREATE TABLE IF NOT EXISTS `subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `date_subs` datetime NOT NULL,
  `code` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.subscriber: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `subscriber` DISABLE KEYS */;
INSERT INTO `subscriber` (`id`, `email`, `date_subs`, `code`) VALUES
	(0, 'Semua Email', '2020-04-21 13:59:23', ''),
	(18, 'maulana24@live.com', '2020-10-20 07:48:23', '16031549031852048281');
/*!40000 ALTER TABLE `subscriber` ENABLE KEYS */;

-- membuang struktur untuk table bunto.testimonial
CREATE TABLE IF NOT EXISTS `testimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.testimonial: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
INSERT INTO `testimonial` (`id`, `name`, `photo`, `content`) VALUES
	(1, 'Aliyah Wati - Jakarta', '', 'Sist makasih barangnya udah sampe, bagus dan lucu2. Temenku aja pada ngiri. Semoga sukses selalu buat eveshopashopnya. Sory baru bisa kasih kabar.'),
	(2, 'Een Enarsih - Banten', '', 'Sis barang ny dh sya trima,mkasih bnyak untuk layan’n ny sngat m’muaskan untuk sya,smu prtanya’n di jwab…\r\nRespon ny jga sngat baek,smoga usaha ny smakin brkembang'),
	(3, 'Ayung Darma - Pekalongan', '', 'Oia mf sis,Nich brg nya brsan aja ampe, mksh ya\r\nBrg nya bgs banget, sesuai yg digambarnya, makasih ya'),
	(4, 'Via Garolita - Cimahi', '', 'Sistaaaa……\r\nbaju nyaa udah smpee…\r\nbguss dechh…suka bgt…\r\nmaaksiih yaa'),
	(5, 'Dewanti - Solo', '', 'Barang tidak mengecewakan.. cs nya fast respon, resi besoknya langsung di share tanpa kita tanya.. mantap tokohijabku'),
	(6, 'Dina - Malang', '', 'Respon cs baik, tapi untuk pengirimannya agak lama, padahal pakai ekspedisi ”sicepat”\r\nharusnya bisa cepat sampainya.');
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;

-- membuang struktur untuk table bunto.transaction
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_invoice` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `img` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel bunto.transaction: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` (`id`, `id_invoice`, `user`, `product_name`, `price`, `qty`, `slug`, `ket`, `img`) VALUES
	(1, 2147483647, 47, 'Baju Gamis Syari Wanita Dewasa Lebaran Kekinian Pakaian Jubah Arab Muslim Muslimah', 156000, 1, 'baju-gamis-syari-wanita-dewasa-lebaran-kekinian-pakaian-jubah-arab-muslim-muslimah', '', '1586791476018.jpeg'),
	(2, 2147483647, 47, 'AMD Paket PC Desktop Gaming Rakitan || Terbatas', 5555, 1, 'amd-paket-pc-desktop-gaming-rakitan-terbatas', '', '1586699592182.jpg');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;

-- membuang struktur untuk table bunto.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date_register` datetime NOT NULL,
  `is_activate` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `token_reset` varchar(100) NOT NULL,
  `cookie` varchar(100) NOT NULL,
  `photo_profile` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel bunto.user: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `date_register`, `is_activate`, `token`, `token_reset`, `cookie`, `photo_profile`) VALUES
	(47, 'Yayan Maulana', 'yayan-maulana', 'maulana24@live.com', '$2y$10$13UFOXRSmYJ/0WVfzwIcqOGTsgOtprZe0leO5wgT2AYF6skZkCgtu', '2020-10-20 07:48:23', 1, '254f7c0ca498b11e2e8d173ea726c67fa9d6cbdf', '', '', '1605551179921.png');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
