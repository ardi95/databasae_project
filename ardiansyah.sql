-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2017 at 09:59 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ardiansyah`
--

-- --------------------------------------------------------

--
-- Table structure for table `gurus`
--

CREATE TABLE IF NOT EXISTS `gurus` (
  `id` int(10) unsigned NOT NULL,
  `NIP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telpon_guru` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gurus`
--

INSERT INTO `gurus` (`id`, `NIP`, `nama_lengkap`, `alamat`, `telpon_guru`, `status_email`, `created_at`, `updated_at`) VALUES
(1, '', 'Ardiansyah', 'Perum. Villa Gading Baru Blok E3 no.12a, Kelurahan Kebalan, Kecamatan Babelan, Kabupaten Bekasi', '', 'ardiansyahpratama95@gmail.com', '2016-12-04 10:16:32', '2016-12-04 10:16:32'),
(2, '195105081977031002', 'M. Sutoyo Sukadi, S.Pd', 'Perum Kejaksaan Blok 1 No. 6 Jati Mulya', '0218220116', 'sutoyo123@yahoo.com', '2016-12-05 07:54:16', '2016-12-05 07:54:16'),
(3, '196404021984112001', 'Husniah, S.Pd', 'Vila Indah Permai Blok H 27 No.28 Kel. Teluk Pucung  Bekasi Utara', '02188970641', 'Husniah23@gmail.com', '2016-12-05 11:17:46', '2017-01-31 08:21:34'),
(4, '15262278272262', 'test123', 'situ aja', '02188970641', 'test1234@oke.com', '2017-01-29 15:55:25', '2017-01-29 15:55:25'),
(6, '02592682822', 'nanda', 'bekassiiiiiiiii', '262626262', 'bodo@amat.com', '2017-03-20 06:18:15', '2017-03-20 06:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_02_170800_create_pelajars_table', 1),
('2016_08_03_184846_create_nilais_table', 1),
('2016_09_26_194132_create_gurus_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nilais`
--

CREATE TABLE IF NOT EXISTS `nilais` (
  `id` int(10) unsigned NOT NULL,
  `pelajar_id` int(11) NOT NULL,
  `pelajaran` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipe_ujian` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_ujian` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nilais`
--

INSERT INTO `nilais` (`id`, `pelajar_id`, `pelajaran`, `tipe_ujian`, `nilai_ujian`, `created_at`, `updated_at`) VALUES
(1, 1, 'Matematika', 'UTS', 98, '2016-12-05 11:25:11', '2017-01-26 07:30:12'),
(2, 1, 'IPA', 'UAS', 87, '2016-12-05 11:25:41', '2016-12-05 11:25:41'),
(3, 1, 'Matematika', 'UAS', 89, '2016-12-05 11:26:29', '2016-12-05 11:26:29'),
(4, 1, 'IPA', 'UAS', 85, '2016-12-07 00:09:08', '2016-12-07 00:09:08'),
(5, 2, 'IPA', 'UTS', 76, '2016-12-07 00:13:11', '2016-12-07 00:13:11'),
(6, 1, 'Matematika', 'UTS', 23, '2017-03-20 06:20:27', '2017-03-20 06:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelajars`
--

CREATE TABLE IF NOT EXISTS `pelajars` (
  `id` int(10) unsigned NOT NULL,
  `NIS` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kelas` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telpon_pelajar` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pelajars`
--

INSERT INTO `pelajars` (`id`, `NIS`, `nama_lengkap`, `kelas`, `alamat`, `telpon_pelajar`, `status_email`, `created_at`, `updated_at`) VALUES
(1, '9957050277', 'Anisa Nurfitriasari', '9_5', 'Perum. Taman Wisma Asri 2 Blok H No.27, Bekasi Utara', '08993620345', 'anisanurfitriasari@ymail.com', '2016-12-05 11:23:55', '2016-12-05 11:23:55'),
(2, '1234567899999', 'Amry Fajari', '9_1', 'Taman wisma asri blok CC 31 No. 9, Bekasi Utara', '089674256264', 'Amryfajar19@gmail.com', '2016-12-07 00:12:05', '2016-12-07 00:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_pelajaran` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ajar_kelas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pelajar_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guru_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `nilai_pelajaran`, `ajar_kelas`, `level`, `pelajar_id`, `guru_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ardiansyah', 'ardiansyahpratama95@gmail.com', '$2y$10$M0wpILckbw.uLD7IRxzsueCsRRK89RubAMvZNCrBrhvatRAhVuuqC', 'Admin', 'semua_kelas', '', '', '1', 'XJqnaRIMiO4Taeexa5o0Yk85TUjxjXP53MBqsBrkzeWcXlRh92KM6CY9runV', '2016-12-04 10:16:32', '2017-04-16 08:01:01'),
(2, 'M. Sutoyo Sukadi, S.Pd', 'sutoyoipa', '$2y$10$sqwlzV.KuCuXegAyvx47OesnqrHzBr0O5lY52KMHGSaIJMzRk4WuW', 'IPA', '9', '', '', '2', 'CHB3ZOODBGixf8esYS5ECVHmfkqSuuHRVtKKfL6jludX6YYvkKrEFbcBNagg', '2016-12-05 07:54:17', '2017-01-11 02:46:31'),
(3, 'Husniah, S.Pd', 'Husniah23', '$2y$10$PhbaDZnqMmGWvZ8af4jtSeaG9pxjiGTScDFFEU8iWseK1vLvZpWPa', 'Matematika', '9', 'guru', '', '3', 'MdDoRrsh2x46z2kXpP8elP0I1jdp76mSAh6SPYmoo0Npk0hRh7bW7hv48WJM', '2016-12-05 11:17:46', '2017-03-25 21:15:41'),
(4, 'Anisa Nurfitriasari', 'anisa96', '$2y$10$927rVjyORuAjtZcGoinjsuAVljkzTcT27q0n5DhEkHdGl8AAphIoO', 'user', '', 'pelajar', '1', '', 'iMveIb2ui3XnKNn6JrBBlNApgyL5J9QspWJ87Zhcvqr6EvWxA4iVVlraiHbw', '2016-12-05 11:23:55', '2017-02-06 16:04:17'),
(5, 'Amry Fajari', 'amry123', '$2y$10$3oV/eCTNhh9naFYNqfqKK.qpup0T4/Q70rmBlOX62G8NpdpksC0Ty', 'user', '', '', '2', '', NULL, '2016-12-07 00:12:06', '2016-12-07 00:12:06'),
(6, 'test123', 'cuman tes', '$2y$10$pby5e6FT5ayuJ7txoA105edvckADXuIV8EJnHKFHAuvVDEIvfyr5W', 'Matematika', '9', 'guru', '', '4', NULL, '2017-01-29 15:55:25', '2017-01-29 15:55:25'),
(8, 'nanda', 'trinanda', '$2y$10$tMcmK1Kldetbz3tTPIWc2uQLszK0qO0Bjffn7hoxssv9iHmqYI3Q6', 'Bahasa Inggris', '9', 'guru', '', '6', '8aPk33syaZ4j55Ob0fGC47OrfIZu2FuH8m1BKL8oSpVelzixo9rLuadH5L5U', '2017-03-20 06:18:15', '2017-03-20 06:21:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilais`
--
ALTER TABLE `nilais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pelajars`
--
ALTER TABLE `pelajars`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `NIS` (`NIS`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nilais`
--
ALTER TABLE `nilais`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pelajars`
--
ALTER TABLE `pelajars`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
