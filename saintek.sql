-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2024 at 03:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saintek`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori_agenda` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_agenda` varchar(255) NOT NULL,
  `judul_agenda` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_agenda` varchar(20) NOT NULL,
  `jenis_agenda` varchar(20) NOT NULL,
  `keywords` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT 0,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `tempat` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `id_user`, `id_kategori_agenda`, `bahasa`, `slug_agenda`, `judul_agenda`, `isi`, `status_agenda`, `jenis_agenda`, `keywords`, `gambar`, `icon`, `hits`, `urutan`, `tanggal_mulai`, `tanggal_selesai`, `jam_mulai`, `jam_selesai`, `tempat`, `google_map`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(1, 4, 6, 'ID', 'latihan-agenda', 'Latihan Agenda', '<p>Latihan</p>', 'Publish', 'Agenda', 'adad', NULL, 'daad', 0, NULL, '2020-09-12', '2020-09-12', '08:00:00', '17:00:00', 'AWS Indonesia', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7930.3386078467065!2d106.82893243028725!3d-6.372131203377098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ed5d166b756d%3A0x41d8cdc14c819774!2sDepok%20Town%20Square!5e0!3m2!1sen!2sid!4v1579565022446!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '2020-09-12 23:46:53', '2020-09-12 23:42:16', '2020-09-13 00:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT 0,
  `bahasa` enum('ID','EN') NOT NULL,
  `updater` varchar(32) DEFAULT '-',
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) DEFAULT 'Berita',
  `keywords` text DEFAULT '',
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `bahasa`, `updater`, `slug_berita`, `judul_berita`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `urutan`, `tanggal_mulai`, `tanggal_selesai`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(23, 4, 0, 'ID', '-', 'layanan-konsultasi-strategis', 'Layanan Konsultasi Strategis', '<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Layanan Konsultasi kami ideal untuk Anda saat membutuhkan dukungan dalam menyelaraskan tujuan strategis keberlanjutan perusahaan Anda dengan penatalayanan air yang baik dan mengembangkan rencana untuk tindakan tingkat wilayah operasional dan daerah tangkapan air. </span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Dari menilai kesiapan wilayah operasional Anda terhadap Standar AWS, hingga penilaian risiko air dalam rantai pasokan dan mengembangkan peta jalan menuju tindakan pengelolaan air yang baik di lokasi, rantai pasokan, dan tingkat daerah tangkapan, kami dapat membantu Anda dalam perjalanan. </span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Kami bekerja sama dengan penyedia layanan terakreditasi, kredensial profesional, dan terlatih AWS, bergantung pada kebutuhan spesifik perusahaan Anda. Ingin tahu lebih banyak? Hubungi kami dan untuk sesi konsultasi terbuka.</span></span></p>', 'Publish', 'Terjadi', 'Layanan Konsultasi Strategis', '26-image-section-aws-indonesia-contact-1600218408.jpg', NULL, NULL, 1, NULL, NULL, '2020-09-16 01:06:48', '2020-09-16 01:06:08', '2020-09-16 01:06:48'),
(24, 4, 0, 'ID', '-', 'pelatihan-standar-dan-sistem-aws', 'Pelatihan Standar dan Sistem AWS', '<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Program pelatihan Standar dan Sistem AWS interaktif selama 1, 2, dan 3 hari mencakup presentasi, studi kasus, serta latihan individu dan kelompok. </span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Berhasil menyelesaikan program pelatihan Spesialis memungkinkan Anda memenuhi syarat untuk menjadi penyedia layanan AWS yang terakreditasi, sebagai auditor, pelatih, dan konsultan. Ini juga mendukung Anda untuk membangun kapasitas internal untuk mengelola dan mengimplementasikan penatalayanan air dan sertifikasi AWS. Kami memberikan pelatihan dalam Bahasa Indonesia dan Bahasa Inggris.</span></span></p>', 'Publish', 'Terjadi', 'Pelatihan Standar dan Sistem AWS', '26-image-section-aws-indonesia-contact-1600218481.jpg', NULL, NULL, NULL, NULL, NULL, '2020-09-16 01:08:01', '2020-09-16 01:07:31', '2020-09-16 01:08:01'),
(25, 4, 0, 'ID', '-', 'studi-kasus', 'Studi Kasus', '<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Jelajahi studi kasus Indonesia dan contoh penerapan penatalayanan air yang baik di seluruh Indonesia dari berbagai sektor.</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Natural Rubber 2019 Hevea |</span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Natural Rubber Processing Site Online Survey 2019 Hevea I</span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Hospitality Sector Hotel Indigo Seminyak IHG |</span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">GAA Hevea Connect<strong>&nbsp;|&nbsp;</strong></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Brantas mapping |&nbsp;</span></span></li>\r\n</ul>', 'Publish', 'Materi', 'Studi Kasus', NULL, NULL, NULL, 1, NULL, NULL, '2020-09-16 01:26:05', '2020-09-16 01:23:28', '2020-09-16 01:26:05'),
(26, 4, 0, 'ID', '-', 'platform-e-tools-untuk-anggota-aws', 'Platform e-Tools untuk Anggota AWS', '<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Cari tahu lebih lanjut tentang e-standar AWS, Panduan juga Modul Pembelajaran Online penatalayanan air di <a href=\"https://tools.a4ws.org/my-account/subscriptions/\" style=\"color:#0563c1; text-decoration:underline\">AWS Tool Hub</a>. Akses gratis untuk semua Anggota AWS dan non-anggota dapat membayar biaya untuk membuat akun.</span></span></p>', 'Publish', 'Materi', 'Platform e-Tools untuk Anggota AWS', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 01:28:44', '2020-09-16 01:27:50', '2020-09-16 01:28:44'),
(27, 4, 0, 'ID', '-', 'webinars', 'Webinars', '<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Dapatkan wawasan Anda mengenai Standar dan Sistem AWS melalui webinar AWS dan diskusi penting lainnya tentang topik penatalayanan air di Indonesia.</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">World Water Development Report 2020 Launch by UNESCO &amp; Climate Tracker </span></span><br />\r\n	<span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Lainnya: <a href=\"https://unesdoc.unesco.org/ark:/48223/pf0000372985.locale=en\" style=\"color:#0563c1; text-decoration:underline\">Laporan</a></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">GWPSEA Webinar COVID-19 Belajar dari Krisis untuk Pengelolaan Air Terpadu yang Lebih<br />\r\n	Rekaman: <a href=\"https://www.facebook.com/GlobalWaterPartnershipSoutheastAsia/videos/271658824268924/?_rdc=1&amp;_rdr\" style=\"color:#0563c1; text-decoration:underline\">Tersedia</a></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Air Tanah untuk Tanah Air</span></span><br />\r\n	<span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Rekaman: <a href=\"bit.ly/youtube-airtanah\" style=\"color:#0563c1; text-decoration:underline\">Tersedia</a></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Online Consultation &ndash; the Principles for Addressing Water-related Disaster Risk Reduction and COVID-19 </span></span><br />\r\n	<span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Lainnya: <a href=\"https://www.gwp.org/en/GWP-South-East-Asia/WE-ACT/keep-updated/News-and-Activities/2020/help-gwp-pan-asia-consultation-meeting/\" style=\"color:#0563c1; text-decoration:underline\">Summary</a></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">AWS Member Webinars: Spotlight on Indonesia Brantas River Basin, East Java</span></span><br />\r\n	<span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Rekaman: <a href=\"https://register.gotowebinar.com/recording/4530186227396155147\" style=\"color:#0563c1; text-decoration:underline\">Tersedia</a></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">World Water Week #AtHome 2020 &ndash; Water Stewardship in Agriculture</span></span><br />\r\n	<span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Rekaman: <a href=\"https://register.gotowebinar.com/recording/8511901561510833158\" style=\"color:#0563c1; text-decoration:underline\">Tersedia</a></span></span></li>\r\n</ul>', 'Publish', 'Materi', 'Webinars', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 01:31:45', '2020-09-16 01:30:55', '2020-09-16 01:31:45'),
(31, 4, 0, 'ID', '-', 'teknik-informatika', 'Teknik Informatika', '<p><a href=\"https://if.binadarma.ac.id\">https://if.binadarma.ac.id</a></p>', 'Publish', 'Layanan', 'Teknik Informatika Universitas Bina Darma', 'tif-1704945287.png', 'fa fa-computer', NULL, 1, NULL, NULL, '2024-01-11 03:54:47', '2024-01-11 03:53:46', '2024-01-11 03:54:47'),
(32, 4, 0, 'ID', '-', 'sistem-informasi', 'Sistem Informasi', '<p><a href=\"http://si.binadarma.ac.id\">https://si.binadarma.ac.id</a></p>', 'Publish', 'Layanan', 'Sistem Informasi Universitas Bina Darma', 'akreditasi-a-1704945395.png', 'fa fa computer', NULL, 2, NULL, NULL, '2024-01-11 03:55:53', '2024-01-11 03:55:08', '2024-01-11 03:56:36'),
(33, 4, 0, 'ID', '-', 'teknik-sipil', 'Teknik Sipil', '<p><a href=\"https://ts.binadarma.ac.id\">https://ts.binadarma.ac.id</a></p>', 'Publish', 'Layanan', 'Teknik Sipil Universitas Bina Darma', 'tis-1704945546.png', 'fa fa computer', NULL, 3, NULL, NULL, '2024-01-11 03:59:06', '2024-01-11 03:58:02', '2024-01-11 03:59:06'),
(35, 4, 0, 'ID', '-', 'teknik-industri', 'Teknik Industri', '<p><a href=\"http://in.binadarma.ac.id\">https://in.binadarma.ac.id</a></p>', 'Publish', 'Layanan', 'Teknik Industri', 'tin-1704948491.png', 'fa fa computer', NULL, 4, NULL, NULL, '2024-01-11 04:48:11', '2024-01-11 04:42:47', '2024-01-11 04:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `id_kategori_download`, `id_user`, `bahasa`, `judul_download`, `jenis_download`, `isi`, `gambar`, `website`, `hits`, `tanggal`) VALUES
(3, 1, 4, 'ID', 'The AWS Standard 2.0 Bahasa Indonesia', 'Download', '<p>Versi Bahasa Indonesia dari AWS Standar, Panduan dan Skoring Rubrik sudah tersedia online. <a href=\"https://a4ws.org/download-standard-2/\" style=\"color:#0563c1; text-decoration:underline\">Unduh</a> untuk Anda sekarang dan hubungi tim kami di Indonesia untuk mendukung Anda dalam perjalanan penatalayanan air.</p>', 'aws-standard-20-2019-bahasa-indonesia-1600653859.pdf', NULL, 22, '2020-09-21 02:06:43'),
(4, 1, 4, 'ID', 'The AWS Standard Guidance 2.0 Bahasa Indonesia', 'Download', '<p>The AWS Standard Guidance 2.0 Bahasa Indonesia</p>', 'aws-standard-20-guidance-final-january-2020-bahasa-indonesia-1600654043.pdf', NULL, 2, '2020-09-21 02:08:09'),
(5, 1, 4, 'ID', 'The AWS Standard Scoring 2.0 Bahasa Indonesia', 'Download', '<p>The AWS Standard Scoring 2.0 Bahasa Indonesia</p>', 'aws-standard-20-scoring-criteria-revised-june-1-2020-bahasa-indonesia-1600654078.pdf', NULL, 0, '2020-09-21 02:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `popup_status` enum('Publish','Draft','','') NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `bahasa`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `popup_status`, `urutan`, `status_text`, `tanggal`) VALUES
(15, 6, 4, 'ID', 'Fakultas Sains Dan Teknologi Bina Darma', 'Homepage', NULL, 'banner-web-ubd-1-1704868654.png', 'https://localhost', NULL, 'Publish', 1, 'Tidak', '2024-01-10 06:37:38'),
(17, 4, 4, 'ID', 'Banner', 'Homepage', 'Banner', 'banner-web-ubd-2-1705030163.png', 'https://binadarma.ac.id', NULL, 'Publish', 2, 'Tidak', '2024-01-12 03:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `heading`
--

CREATE TABLE `heading` (
  `id_heading` int(11) NOT NULL,
  `id_user` int(11) DEFAULT 0,
  `judul_heading` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `halaman` varchar(255) DEFAULT 'NULL',
  `tanggal` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `heading`
--

INSERT INTO `heading` (`id_heading`, `id_user`, `judul_heading`, `keterangan`, `gambar`, `halaman`, `tanggal`) VALUES
(1, 0, 'Berita dan Updates', '<p>Berita dan Updates</p>', 'heading-03-1600256326.jpg', 'Berita', '2020-09-16 11:38:46'),
(2, 0, 'AWS Indonesia', '<p>AWS Indonesia</p>', 'aws-indonesia-1600259780.jpg', 'AWS', '2020-09-16 12:36:20'),
(3, 0, 'Halaman Kontak', '<p>Halaman Kontak</p>', 'kontak-1600257025.jpg', 'Kontak', '2020-09-16 11:50:25'),
(4, 0, 'Board and Team', '<p>Board and Team</p>', 'board-and-team-300-1600260175.jpg', 'Team', '2020-09-16 12:42:55'),
(5, 0, 'Layanan', '<p>Penatalayanan air memungkinkan pengguna air bekerjasama untuk mengidentifikasi dan mencapai tujuan bersama untuk pengelolaan air yang berkelanjutan dan keamanan air bersama. Penatalayanan air yang baik didefinisikan sebagai penggunaan air yang adil secara sosial dan budaya, berkelanjutan secara lingkungan dan menguntungkan secara ekonomi, dicapai melalui proses inklusif pemangku kepentingan yang mencakup tindakan berbasis wilayah operasional dan daerah tangkapan air (DAS).</p>\r\n<p>AWS Indonesia meripakan promosi dan penerapan penatalayanan air yang baik dan standar penatalayanan air internasional (<a href=\"https://a4ws.org/the-aws-standard-2-0/\">AWS Standard</a>) di Indonesia sebagai mitra negara <a href=\"https://waterstewardship.org.au/\">Alliance for Water Stewardship Asia-Pacific</a> dan <a href=\"https://a4ws.org/about/\">Alliance for Water Stewardship SCIO</a>.</p>\r\n<p>Apakah Anda tertarik untuk mempelajari lebih lanjut mengenai penatalayanan air dan aktivitas kami di Indonesia? Apakah Anda Manajer Sustainability atau Engineer Air yang ingin menerapkan penatalayanan air di wilayah operasional Anda? Hubungi kami dan mari kita mulai penatalayanan air bersama-sama.</p>', 'layanan-1600315713.jpg', 'Layanan', '2020-09-17 04:08:33'),
(6, 0, 'Dokumen', '<p>Dokumen</p>', 'dokumen-1600317093.jpg', 'Dokumen', '2020-09-17 04:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `bahasa`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(6, 4, 'ID', 'berita', 'Berita', 3, 0, '2020-09-12 21:36:42'),
(8, 4, 'ID', 'prestasi', 'Prestasi', 2, NULL, '2024-01-11 08:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_agenda`
--

CREATE TABLE `kategori_agenda` (
  `id_kategori_agenda` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_kategori_agenda` varchar(255) NOT NULL,
  `nama_kategori_agenda` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_agenda`
--

INSERT INTO `kategori_agenda` (`id_kategori_agenda`, `bahasa`, `slug_kategori_agenda`, `nama_kategori_agenda`, `keterangan`, `urutan`) VALUES
(4, 'ID', 'kegiatan-eksternal', 'Kegiatan Eksternal', NULL, 2),
(6, 'ID', 'kegiatan-internal', 'Kegiatan Internal', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `bahasa`, `slug_kategori_download`, `nama_kategori_download`, `keterangan`, `urutan`) VALUES
(1, 'ID', 'dokumen', 'Dokumen', '<p>Berisi Dokumen Dokumen Fakultas Sains Dan Teknologi Bina Darma</p>', 1),
(5, 'ID', 'kalender-akademik', 'Kalender Akademik', '<p>Berisi Informasi Tentang Jadwal Akademik Universitas BIna Darma</p>', 2),
(6, 'ID', 'webinar', 'Webinar', '<p>Berisi Tentang Webinar yang dilakukan Fakultas Sains Dan Teknologi</p>\r\n<p>&nbsp;</p>', 3),
(7, 'ID', 'penelitian-dosen', 'Penelitian Dosen', '<p>Berisi Tentang Penelitian-Penelitian Dosen</p>', 4);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `bahasa`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`) VALUES
(4, 'ID', 'kegiatan', 'Kegiatan', 2),
(6, 'ID', 'kegiatan-kampus', 'Kegiatan Kampus', 1),
(7, 'ID', 'iklan-kampus', 'Iklan Kampus', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_staff`
--

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_staff`
--

INSERT INTO `kategori_staff` (`id_kategori_staff`, `bahasa`, `slug_kategori_staff`, `nama_kategori_staff`, `keterangan`, `urutan`) VALUES
(7, 'ID', 'dekan-fakultas-sains-dan-teknologi', 'Dekan Fakultas Sains Dan Teknologi', 'Dekan', 1),
(8, 'ID', 'dosen', 'Dosen', 'dosen', 2);

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `nama_singkat` varchar(200) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tagline2` varchar(255) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) NOT NULL,
  `nama_twitter` varchar(255) NOT NULL,
  `nama_instagram` varchar(255) NOT NULL,
  `nama_google_plus` varchar(255) NOT NULL,
  `singkatan` varchar(255) NOT NULL,
  `google_map` text DEFAULT NULL,
  `judul_1` varchar(200) DEFAULT NULL,
  `pesan_1` varchar(200) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `pesan_2` varchar(200) DEFAULT NULL,
  `judul_3` varchar(200) DEFAULT NULL,
  `pesan_3` varchar(200) DEFAULT NULL,
  `judul_4` varchar(200) DEFAULT NULL,
  `pesan_4` varchar(200) DEFAULT NULL,
  `judul_5` varchar(200) DEFAULT NULL,
  `pesan_5` varchar(200) NOT NULL,
  `judul_6` varchar(200) DEFAULT NULL,
  `pesan_6` varchar(200) NOT NULL,
  `isi_1` varchar(500) DEFAULT NULL,
  `isi_2` varchar(500) DEFAULT NULL,
  `isi_3` varchar(500) DEFAULT NULL,
  `isi_4` varchar(500) DEFAULT NULL,
  `isi_5` varchar(500) DEFAULT NULL,
  `isi_6` varchar(500) DEFAULT NULL,
  `link_1` varchar(255) DEFAULT NULL,
  `link_2` varchar(255) DEFAULT NULL,
  `link_3` varchar(255) DEFAULT NULL,
  `link_4` varchar(255) DEFAULT NULL,
  `link_5` varchar(255) DEFAULT NULL,
  `link_6` varchar(255) DEFAULT NULL,
  `javawebmedia` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `rekening` text DEFAULT NULL,
  `prolog_topik` text DEFAULT NULL,
  `prolog_program` text DEFAULT NULL,
  `prolog_sekretariat` text DEFAULT NULL,
  `prolog_aksi` text DEFAULT NULL,
  `prolog_kolaborasi` text DEFAULT NULL,
  `prolog_sebaran` text DEFAULT NULL,
  `gambar_berita` varchar(255) DEFAULT NULL,
  `prolog_agenda` text DEFAULT NULL,
  `prolog_wawasan` text DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_timeout` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `judul_pembayaran` varchar(255) DEFAULT NULL,
  `isi_pembayaran` text DEFAULT NULL,
  `gambar_pembayaran` varchar(255) DEFAULT NULL,
  `link_bawah_peta` varchar(255) DEFAULT NULL,
  `text_bawah_peta` varchar(255) DEFAULT NULL,
  `cara_pesan` enum('Keranjang Belanja','Formulir Pemesanan') DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `bahasa`, `namaweb`, `nama_singkat`, `tagline`, `tagline2`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `google_plus`, `nama_facebook`, `nama_twitter`, `nama_instagram`, `nama_google_plus`, `singkatan`, `google_map`, `judul_1`, `pesan_1`, `judul_2`, `pesan_2`, `judul_3`, `pesan_3`, `judul_4`, `pesan_4`, `judul_5`, `pesan_5`, `judul_6`, `pesan_6`, `isi_1`, `isi_2`, `isi_3`, `isi_4`, `isi_5`, `isi_6`, `link_1`, `link_2`, `link_3`, `link_4`, `link_5`, `link_6`, `javawebmedia`, `gambar`, `video`, `rekening`, `prolog_topik`, `prolog_program`, `prolog_sekretariat`, `prolog_aksi`, `prolog_kolaborasi`, `prolog_sebaran`, `gambar_berita`, `prolog_agenda`, `prolog_wawasan`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `judul_pembayaran`, `isi_pembayaran`, `gambar_pembayaran`, `link_bawah_peta`, `text_bawah_peta`, `cara_pesan`, `id_user`, `tanggal`) VALUES
(1, 'ID', 'Fakultas Sains Dan Teknologi Bina Darma', 'Fakultas Sains Dan Teknologi Bina Darma', 'Fakultas', 'Fakultas', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#212529\"><span style=\"font-family:system-ui,-apple-system,\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13.5pt\"><span style=\"font-family:Arial,sans-serif\">Program Studi Teknik Informatika berawal sejak tanggal 18 Mei 1994 ketika didirikan Sekolah Tinggi Manajemen Informatika dan Komputer (STMIK) Bina Darma yang diasuh dan dibina oleh Yayasan Bina Darma berdasarkan Surat Keputusan Mendikbud RI. Yayasan Bina Darma menyelenggarakan 2 (dua) Program Pendidikan Tinggi yaitu, Sekolah Tinggi Manajemen Informatika dan Komputer (STMIK) Bina Darma dan Sekolah Tinggi Ilmu Ekonomi (STIE) Bina Darma.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#212529\"><span style=\"font-family:system-ui,-apple-system,\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13.5pt\"><span style=\"font-family:Arial,sans-serif\">Pada saat berdirinya Sekolah Tinggi Manajemen Informatika dan Komputer (STMIK) Bina Darma memiliki 2 (dua) Program Studi S1 yaitu Manajemen Informatika dan Teknik Komputer. Tahun 1995, STMIK Bina Darma membuka dan menyelenggarakan 2 (Dua) Program Studi baru Diploma I (D1) yaitu Program Studi Manajemen Informatika dan Komputerisasi Akuntansi. Pada tahun 1998, STMIK Bina Darma menambah 3 (Tiga) Program Studi dengan jenjang Diploma III (DIII) yaitu Program Studi Manajemen Informatika, Komputerisasi Akuntansi dan Teknik Komputer.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#212529\"><span style=\"font-family:system-ui,-apple-system,\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13.5pt\"><span style=\"font-family:Arial,sans-serif\">Pada tanggal 15 Juni 2006 Program Studi Studi Teknik Informatika mendapatkan Status terakreditasi, berdasarkan Keputusan Badan Akreditasi Nasional Perguruan Tinggi Departemen&nbsp; Pendidikan Nasional Republik Indonesia Nomor: 005/BAN-PT/Ak-X/S1/VI/2006. Akreditasi terakhir Program Studi Teknik Informatika berdasarkan SK nomor 3019/SK/BAN-PT/Akred/S/XII/2016 pada tanggal&nbsp;<strong>20 Desember 2016 mendapatkan peringkat B.</strong></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#212529\"><span style=\"font-family:system-ui,-apple-system,\"><span style=\"background-color:#ffffff\"><span style=\"font-size:13.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:13.5pt\">Prospek lulusan Program Studi Teknik Informatika ini bisa bekerja menjadi&nbsp;</span></span></span><span style=\"font-size:13.5pt\"><span style=\"font-family:Arial,sans-serif\"><em>Software Engineer, Network Engineer, Database Engineer, Data Scientis, Multimedia Developer, IT Enterprenuer.</em></span></span></span></span></span></span></p>', 'Grow And Strengthen Leadership On Good Water Stewardship For Water Secure In Indonesia, Now And The Feature.', 'http://localhost/comprolaravel8-master/', 'admin@binadarma.ac.id', 'admin@binadarma.ac.id', 'Jl. Jenderal Ahmad Yani No.3, 9/10 Ulu, Kecamatan Seberang Ulu I, Kota Palembang, Sumatera Selatan 30111', '0711-515582', '0711-515582', '0711-515582', 'ubd-logo.png', 'ubd-logo.png', 'binadarma', NULL, 'https://www.facebook.com/', 'http://twitter.com/', 'https://instagram.com/ubd_palembang', 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', 'Bina Darma', 'Bina Darma', 'Bina Darma', '', 'FST', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.352145439585!2d104.76800247417528!3d-2.9995245969764834!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3b9df5385cf0a1%3A0x6d0080106b346bc3!2sUniversitas%20Bina%20Darma!5e0!3m2!1sid!2sus!4v1704951550843!5m2!1sid!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Tempat belajar nyaman', 'fa fa-home', 'Materi Kursus Selalu Update', 'fa fa-laptop', 'Jadwal Flexibel', 'fa fa-thumbs-up', 'Menjaga Amanah', 'fa-check-square-o', 'Tempat belajar nyaman', 'fa-home', 'Online service', 'fa-laptop', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan serasa di rumah sendiri', 'Materi kursus kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', 'Bagi Anda siswa yang ingin belajar, kami menerapkan jadwal flexibel', 'Kami senantiasa menjaga amanah yang diberikan kepada donatur agar sampai di tangan yang berhak.', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan', 'Website kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', '', '', '', '', '', '', '<p>Berawal dari keinginan ibunda Hj.Masah Muhari diakhir hidupnya untuk mewakaan sebagian hartanya dijalan Allah, gayungpun bersambut pada bulan Mei 2011 saat kami akan melaksanakan ibadah umrah, Seorang rekan kami sesama Jamaah bernama ustadzah Hj. Zainur Fahmid memberikan informasi Tentang Anggota yang hendak mewakaan sebidang tanahnya di wilayah Beji Timur. Kami pun memanjatkan doa di kota suci dengan penuh rasa harap pertolongan Allah untuk menunjukan jalan terbaik-Nya, maka sepulang umroh kami mengadakan pertemuan di kediaman Ibu Dra Hj Ratna Mardjanah untuk membicarakan visi misi kami dalam wakaf tersebut dan sepakat untuk mendirikan Istana Yatim Riyadhul Jannah ini.</p>\r\n<p>Nama Riyadhul Jannah Sendiri diambil dari nama pengelola wakaf (H. Ahmad Riyadh Muchtar, Lc) dan pemberi wakaf (Dra Hj Ratna Mardjanah). Istana Yatim Riyadhul Jannah hadir untuk melayani dan memfasilitasi segala kebutuhan anak yatim, terutama pendidikan agama, akhlak dan kehidupan yang layak untuk bekal masa depan mereka yang cerah agar bisa memberi manfaat bagi umat. Harapan kami semoga dengan membangunkan istana untuk anak yatim, maka Allah akan berikan istana-Nya di surga kelak dan kita termasuk manusia yang bisa memberika manfaat bagi sesama sebagaimana sabda Rasulullah SAW yang artinya:&nbsp;</p>\r\n<p>&ldquo;Sebaik-baik manusia adalah yang paling bermanfaat bagi manusia lainnya&rdquo;&nbsp;</p>\r\n<p>erimakasih atas segala bentuk bantuan yang dipercayakan kepada kami baik secara materi, tenaga dan kiran serta doa para muhsinin dan muhsinat Istana Yatim Riyadhul Jannah selama ini, mulai dari rencana pendirian hingga berkembang seperti saat ini. Semoga segala amal menjadi shadaqah jariyah disisi-Nya.&nbsp;</p>\r\n<p>&nbsp;</p>', 'frame-8.png', 'fsH_KhUWfho', '<table id=\"dataTables-example\" class=\"table table-bordered\" width=\"100%\">\r\n<thead>\r\n<tr>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"19%\">Nama Bank</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"21%\">Nomor Rekening</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"7%\">Atas nama</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>BCA KCP Margo City</td>\r\n<td>4212548204</td>\r\n<td>Andoyo</td>\r\n</tr>\r\n<tr>\r\n<td>Bank Mandiri KCP Universitas Indonesia</td>\r\n<td>1570001807768</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n<tr>\r\n<td>Bank BNI Syariah Kantor Cabang Jakarta Selatan</td>\r\n<td>0105301001</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p>Dalam mewujudkan pembangunan berkelanjutan, pemerintah kabupaten anggota LTKL telah mengidentifikasi dan memilih topik yang sesuai dengan kondisi di daerahnya. Ada 5 topik prioritas yang dipilih dengan penerapan yang disesuaikan kembali di masing-masing kabupaten.</p>', NULL, '<p>Setelah Lingkar Temu Kabupaten Lestari (LTKL) diinisiasi, kesekretariatan dibentuk untuk membantu para pemerintah kabupaten anggota bekerja dan berkolaborasi. Walaupun tidak memiliki mandat implementasi, Sekretariat LTKL menjadi vital dalam melancarkan koordinasi, pengumpulan basis data, hingga pelaporan perkembangan. Sekretariat LTKL juga diperkuat dengan kehadiran personil yang telah berpengalaman di bidang management pengetahuan, program pembangunan berkelanjutan hingga kebijakan.</p>', '', '<p>Lingkar Temu Kabupaten Lestari (LTKL) mengedepankan kolaborasi dalam mewududkan pembangunan berkelanjutan. Ada 10 kabupaten yang tersebar di 6 provinsi di Indonesia telah menjadi anggota LTKL.</p>\r\n<p>Hingga kini, berbagai pihak telah ikut berkolaborasi, mulai dari pemerintah kabupaten, sekeretariat LTKL, mitra pembangunan hingga pihak swasta.</p>', '', 'balairung-budiutomo-01.jpg', '<p>Acara yang ditampilkan merupakan kumpulan acara LTKL, mitra, maupun pemerintah kabupaten anggota LTKL, mulai dari acara seminar hingga festival.</p>', '<p>LTKL bukan satu-satunya yang bergerak dalam mewujudkan pembangunan berkelanjutan, serta upaya penanggulangan perubahan iklim. Ikuti terus perkembangan usaha LTKL serta rekan-rekan lain menuju bumi dan Indonesia yang lestari.</p>', 'smtp', 'ssl://mail.binadarma.ac.id', '465', '12', 'admin@binadarma.ac.id', 'binadarma', 'Metode Pembayaran Produk', '<p>Anda dapat melakukan pembayaran dengan beberapa cara, yaitu:</p>\r\n<ol>\r\n<li><strong>Pembayaran Tunai</strong>, dapat Anda serahkan secara langsung ke salah satu staff Java Web Media</li>\r\n<li><strong>Pembayar Via Transfer Rekening</strong></li>\r\n</ol>\r\n<p>Lakukan transfer biaya atas layanan dan produk&nbsp;<strong>Java Web Media</strong>&nbsp;ke salah satu rekening di bawah ini.</p>\r\n<h3>Konfirmasi Pembayaran</h3>\r\n<p>Anda dapat melakukan konfirmasi pembayaran melalui:</p>\r\n<ul>\r\n<li><strong>Melalui Email</strong>, silakan kirim bukti pembayaran ke:&nbsp;<strong><a href=\"mailto:contact@javawebmedia.co.id?subject=Konfirmasi%20Pembayaran\">contact@javawebmedia.co.id</a></strong></li>\r\n<li><strong>Melalui Whatsapp</strong>, kirimkan bukti pembayaran Anda ke&nbsp;<strong>+6281210697841</strong></li>\r\n<li><strong>Melalui Formulir Konfirmasi Pembayaran</strong>, Anda dapat mengunggah bukti pembayaran Anda melalui form&nbsp;<strong><a title=\"Konfirmasi Pembayaran\" href=\"https://javawebmedia.com/konfirmasi\">&nbsp;Konfirmasi Pembayaran</a></strong></li>\r\n</ul>', 'payment.jpg', NULL, NULL, 'Formulir Pemesanan', 4, '2024-01-12 02:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `nomor_rekening` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) NOT NULL,
  `slug_staff` varchar(255) NOT NULL,
  `nama_staff` varchar(255) NOT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `pendidikan` varchar(255) DEFAULT NULL,
  `expertise` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `id_user`, `id_kategori_staff`, `slug_staff`, `nama_staff`, `jabatan`, `pendidikan`, `expertise`, `email`, `telepon`, `isi`, `gambar`, `status_staff`, `keywords`, `urutan`, `tanggal`) VALUES
(9, 4, 7, 'dr-tata-sutabri-skom-mmsi-mkm-dekan-fakultas-sains-dan-teknologi', 'Dr. Tata Sutabri, S.Kom., MMSI., MKM', 'Dekan Fakultas Sains Dan Teknologi', 'Dr', '-', '-', '-', NULL, '28-1704862480.png', 'Ya', 'Dr. Tata Sutabri, S.Kom., MMSI., MKM', 1, '2024-01-10 04:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `kode_rahasia`, `gambar`, `tanggal`) VALUES
(4, 'Muhammad Arif', 'arifgaming2124@gmail.com', 'muhammadarif', 'dc28d4424ece38803650f440d7eb1cb2b3fb6651', 'Admin', NULL, 'testimonials-1.jpg', '2024-01-10 07:08:49'),
(15, 'MARS', 'ma@sriwijayacyber.com', 'arif', '274d1cc5912709c499e60c5694b37edccc7d6029', 'User', NULL, NULL, '2024-01-12 02:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `posisi` varchar(20) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `video` text NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `bahasa` varchar(20) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `posisi`, `keterangan`, `video`, `urutan`, `bahasa`, `gambar`, `id_user`, `tanggal`) VALUES
(66, 'Sesi 2a Penggunaan Mendeley (Praktek dan Langkah-langkah Pengerjaannya)', 'Homepage', NULL, 'vsb93FnDim0', 1, 'Indonesia', 'ubd-logo-1704868038.png', 4, '2024-01-10 06:27:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `heading`
--
ALTER TABLE `heading`
  ADD PRIMARY KEY (`id_heading`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`);

--
-- Indexes for table `kategori_agenda`
--
ALTER TABLE `kategori_agenda`
  ADD PRIMARY KEY (`id_kategori_agenda`);

--
-- Indexes for table `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

--
-- Indexes for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indexes for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  ADD PRIMARY KEY (`id_kategori_staff`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `heading`
--
ALTER TABLE `heading`
  MODIFY `id_heading` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori_agenda`
--
ALTER TABLE `kategori_agenda`
  MODIFY `id_kategori_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  MODIFY `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
