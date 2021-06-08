-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 07:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkti`
--

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `id_domain` int(11) NOT NULL,
  `nama_domain` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`id_domain`, `nama_domain`) VALUES
(1, 'Plan and Organize (PO)'),
(2, 'Acquire and Implement (AI)'),
(3, 'Deliver and Support (DS)'),
(4, 'Monitor and Evaluate (ME)');

-- --------------------------------------------------------

--
-- Table structure for table `it_process`
--

CREATE TABLE `it_process` (
  `id_it_process` int(11) NOT NULL,
  `id_domain` int(11) NOT NULL,
  `it_process` varchar(256) NOT NULL,
  `importance` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `it_process`
--

INSERT INTO `it_process` (`id_it_process`, `id_domain`, `it_process`, `importance`) VALUES
(1, 1, 'Define a strategic IT plan', 'H'),
(2, 1, 'Define the information architecture', 'L'),
(3, 1, 'Determine technological direction', 'M'),
(4, 1, 'Define the IT processes, organisation\r\nand relationships', 'L'),
(5, 1, 'Manage the IT investment', 'M'),
(6, 1, 'Communicate management aims and\r\ndirection', 'M'),
(7, 1, 'Manage IT human resources', 'L'),
(8, 1, 'Manage quality', 'M'),
(9, 1, 'Assess and manage IT risks', 'H'),
(10, 1, 'Manage projects', 'H'),
(11, 2, 'Identify automated solutions', 'M'),
(12, 2, 'Acquire and maintain application\r\nsoftware', 'M'),
(13, 2, 'Acquire and maintain technology\r\ninfrastructure', 'L'),
(14, 2, 'Enable operation and use', 'L'),
(15, 2, 'Procure IT resources', 'M'),
(16, 2, 'Manage changes', 'H'),
(17, 2, 'Install and accredit solutions and changes', 'M'),
(18, 3, 'Define and manage service levels', 'M'),
(19, 3, 'Manage third-party services', 'L'),
(20, 3, 'Manage performance and capacity', 'L'),
(21, 3, 'Ensure continuous service', 'M'),
(22, 3, 'Ensure systems security', 'H'),
(23, 3, 'Identify and allocate costs', 'L'),
(24, 3, 'Educate and train users', 'L'),
(25, 3, 'Manage service desk and incidents', 'L'),
(26, 3, 'Manage the configuration', 'M'),
(27, 3, 'Manage problems', 'M'),
(28, 3, 'Manage data', 'H'),
(29, 3, 'Manage the physical environment', 'L'),
(30, 3, 'Manage operations', 'L'),
(31, 4, 'Monitor and evaluate IT performance', 'H'),
(32, 4, 'Monitor and evaluate internal control', 'M'),
(33, 4, 'Ensure compliance with\r\nexternal requirements', 'H'),
(34, 4, 'Provide IT governance', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `it_resource`
--

CREATE TABLE `it_resource` (
  `id_it_resource` int(11) NOT NULL,
  `it_resource` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `it_resource`
--

INSERT INTO `it_resource` (`id_it_resource`, `it_resource`) VALUES
(1, 'Application'),
(2, 'Information'),
(3, 'Infrastructure'),
(4, 'People');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_perusahaan`
--

CREATE TABLE `jenis_perusahaan` (
  `id_jenis_perusahaan` int(11) NOT NULL,
  `nama_jenis_perusahaan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_perusahaan`
--

INSERT INTO `jenis_perusahaan` (`id_jenis_perusahaan`, `nama_jenis_perusahaan`) VALUES
(1, 'Startup'),
(2, 'Intermediate'),
(3, 'Establish');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_it_resource_process`
--

CREATE TABLE `mapping_it_resource_process` (
  `id_it_resource` int(11) NOT NULL,
  `id_it_process` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapping_it_resource_process`
--

INSERT INTO `mapping_it_resource_process` (`id_it_resource`, `id_it_process`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 25),
(1, 26),
(1, 27),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(2, 1),
(2, 2),
(2, 6),
(2, 8),
(2, 9),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 21),
(2, 22),
(2, 23),
(2, 26),
(2, 27),
(2, 28),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 1),
(3, 3),
(3, 5),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 26),
(3, 27),
(3, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(4, 27),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34);

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `id_it_process` int(11) NOT NULL,
  `pertanyaan` varchar(256) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `id_it_process`, `pertanyaan`, `level`) VALUES
(1, 1, 'Perencanaan strategis pada IT tidak dijalankan.', 0),
(2, 1, 'Bagian manajemen perusahaan tidak memiliki kesadaran bahwa perencanaan strategis IT diperlukan untuk mendukung tujuan bisnis.', 0),
(3, 1, 'Manajemen IT perusahaan mengetahui bahwa perencanaan strategis pada IT dibutuhkan di organisasi.', 1),
(4, 1, 'Perencanaan IT dilakukan untuk memenuhi tujuan bisnis tertentu.', 1),
(5, 1, 'Perencanaan strategis IT perusahaan terkadang dibahas pada pertemuan manajemen IT.', 1),
(6, 1, 'Penyelarasan kebutuhan bisnis perusahaan dan teknologi merupakan reaksi dari kejadian tertentu.', 1),
(7, 1, 'Resiko-resiko pada strategi hanya diidentifikasi secara informal dari proyek ke proyek.', 1),
(8, 1, 'Kebijakan dapat menentukan kapan dan bagaimana perencanaan strategis IT dilakukan pada perusahaan.', 3),
(9, 1, 'Perencanaan srtategis IT terstruktur dan didokumentasikan dan diketahui oleh semua staf perusahaan.', 3),
(10, 1, 'Proses perencanaan IT pada perusahaan cukup baik dan terlihat bisa direalisasikan.', 3),
(11, 1, 'Manajer diberikan wewenang untuk implementasi dari proses perencanaan, tidak ada prosedur untuk menguji proses tersebut.', 3),
(12, 1, 'Stategi IT pada perusahaan mencakup definisi resiko yang akan diambil oleh organisasi.', 3),
(13, 1, 'Strategi keuangan, teknis, dan sumber daya manusia IT mempengaruhi pendapatan perusahaan.', 3),
(14, 1, 'Perencanaan strategis IT dibahas pada pertemuan manajemen perusahaan.', 3),
(15, 1, 'Perencanaan strategis IT pada perusahaan dijalankan dan manajemen dapat mengetahui jika ada kesalahan.', 4),
(16, 1, 'Perencanaan strategis IT pada perusahaan merupakan fungsi manajemen yang ditentukan dengan tanggung jawab tingkat senior (senior-level responsibilities).', 4),
(17, 1, 'Manajemen perusahaan mampu memantau proses perencanaan strategis IT, membuat keputusan berdasarkan informasi dan mengukur efektivitasnya.', 4),
(18, 1, 'Perencanaan IT jangka pendek dan panjang terjadi dan diturunkan pada organisasi dengan pembaharuan sesuai dengan kebutuhan.', 4),
(19, 1, 'Strategi IT terkoordinasi dengan strategi perusahaan secara umum.', 4),
(20, 1, 'Ada proses yang didefinisikan dengan baik untuk menentukan penggunaan sumber daya internal dan eksternal pada perusahaan.', 4),
(21, 1, 'Perencanan strategis IT pada PIKTI menjadi sebuah proses hidup yang terdokumentasi, dipertimbangkan dalam penetapan tujuan bisnis secara terus-menerus, dan menghasilkan nilai bisnis.', 5),
(22, 1, 'Pertimbangan resiko dan nilai tambah terus diperbarui dalam proses perencanaan strategis IT.', 5),
(23, 1, 'Rencana IT jangka panjang di perusahaan dikembangkan secara terus menerus dan terus diperbarui.', 5),
(24, 1, 'Adanya perbandingan terhadap norma-norma industri yang mudah dipahami dan dapat diandalkan serta diintegrasikan dengan proses perumusan stategi', 5),
(25, 1, 'Rencana strategis perusahaan mencakup bagaimana perkembangan teknologi baru dapat mendukung terciptanya kapabilitas bisnis baru dan meningkatkan keunggulan kompetitif organisasi.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `id_rekomendasi` int(11) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `rekomendasi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id_domain`);

--
-- Indexes for table `it_process`
--
ALTER TABLE `it_process`
  ADD PRIMARY KEY (`id_it_process`),
  ADD KEY `domain` (`id_domain`);

--
-- Indexes for table `it_resource`
--
ALTER TABLE `it_resource`
  ADD PRIMARY KEY (`id_it_resource`);

--
-- Indexes for table `jenis_perusahaan`
--
ALTER TABLE `jenis_perusahaan`
  ADD PRIMARY KEY (`id_jenis_perusahaan`);

--
-- Indexes for table `mapping_it_resource_process`
--
ALTER TABLE `mapping_it_resource_process`
  ADD KEY `mapping` (`id_it_process`),
  ADD KEY `mapping 2` (`id_it_resource`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`),
  ADD KEY `it_process` (`id_it_process`);

--
-- Indexes for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`id_rekomendasi`),
  ADD KEY `pertanyaan` (`id_pertanyaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `id_domain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `it_process`
--
ALTER TABLE `it_process`
  MODIFY `id_it_process` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `jenis_perusahaan`
--
ALTER TABLE `jenis_perusahaan`
  MODIFY `id_jenis_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `id_rekomendasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `it_process`
--
ALTER TABLE `it_process`
  ADD CONSTRAINT `domain` FOREIGN KEY (`id_domain`) REFERENCES `domain` (`id_domain`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mapping_it_resource_process`
--
ALTER TABLE `mapping_it_resource_process`
  ADD CONSTRAINT `mapping` FOREIGN KEY (`id_it_process`) REFERENCES `it_process` (`id_it_process`),
  ADD CONSTRAINT `mapping 2` FOREIGN KEY (`id_it_resource`) REFERENCES `it_resource` (`id_it_resource`);

--
-- Constraints for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD CONSTRAINT `it_process` FOREIGN KEY (`id_it_process`) REFERENCES `it_process` (`id_it_process`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD CONSTRAINT `pertanyaan` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan` (`id_pertanyaan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
