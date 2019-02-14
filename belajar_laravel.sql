-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2019 at 09:56 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', NULL, NULL),
(2, 'Totam laudantium molestiae similique sit.', NULL, NULL),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', NULL, NULL),
(4, 'Ad sit voluptatem qui ut dolorem.', NULL, NULL),
(5, 'Qui consequatur eum fuga corrupti.', NULL, NULL),
(6, 'Quos nesciunt blanditiis amet odio.', NULL, NULL),
(7, 'Ex doloremque consequuntur velit alias repellendus ullam.', NULL, NULL),
(8, 'Perspiciatis a quo beatae nobis et suscipit illo.', NULL, NULL),
(9, 'Maiores voluptate animi est enim totam.', NULL, NULL),
(10, 'Rerum expedita inventore nulla voluptates perferendis placeat.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `umur`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Fitria Gilda Hastuti S.Pd', 40, NULL, '2019-02-13 21:56:18', NULL),
(3, 'Ana Mayasari S.Gz', 34, NULL, NULL, NULL),
(4, 'Cemeti Gunarto', 33, NULL, NULL, NULL),
(5, 'Gangsa Samosir', 41, NULL, '2019-02-13 21:56:18', NULL),
(6, 'Salwa Wastuti', 44, NULL, NULL, NULL),
(7, 'Cici Oliva Puspita', 37, NULL, NULL, NULL),
(8, 'Dartono Kusumo', 36, NULL, '2019-02-13 21:56:18', NULL),
(9, 'Hardi Asmadi Uwais S.Ked', 26, NULL, NULL, NULL),
(10, 'Gina Halimah', 39, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_14_032907_create_mahasiswa_table', 2),
(4, '2019_02_14_034033_create_pegawais_table', 3),
(5, '2019_02_14_044117_create_guru_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `pegawai_nama` varchar(100) DEFAULT NULL,
  `pegawai_jabatan` varchar(30) DEFAULT NULL,
  `pegawai_umur` int(4) DEFAULT NULL,
  `pegawai_alamat` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`, `created_at`, `updated_at`) VALUES
(2, 'Chairul', 'Staff IT', 23, 'Ciamis\r\n', NULL, NULL),
(4, 'Joni', 'Web Designer', 25, 'Jl. Panglateh', NULL, NULL),
(5, 'Muhammad Sirait', 'laudantium', 36, 'Gg. Achmad No. 834, Medan 12395, SulTra', NULL, NULL),
(6, 'Alambana Prima Salahudin M.TI.', 'occaecati', 40, 'Psr. Dr. Junjunan No. 361, Madiun 37919, Lampung', NULL, NULL),
(7, 'Chelsea Pratiwi', 'distinctio', 39, 'Kpg. Jayawijaya No. 296, Bandung 19224, SumBar', NULL, NULL),
(8, 'Okto Gunawan S.E.I', 'aut', 39, 'Ds. Bakin No. 788, Langsa 41203, SumBar', NULL, NULL),
(9, 'Edison Santoso', 'rem', 26, 'Gg. Kali No. 661, Balikpapan 84977, Aceh', NULL, NULL),
(10, 'Muhammad Hardiansyah M.Pd', 'et', 25, 'Ds. Kebangkitan Nasional No. 967, Kediri 98532, Gorontalo', NULL, NULL),
(11, 'Parman Sitorus', 'qui', 32, 'Dk. Rajawali Barat No. 453, Sabang 95675, JaTeng', NULL, NULL),
(12, 'Oliva Aurora Hariyah', 'dolore', 28, 'Jr. Veteran No. 585, Solok 97717, Gorontalo', NULL, NULL),
(13, 'Agnes Utami S.Pd', 'iusto', 34, 'Ds. Fajar No. 48, Medan 60352, Bengkulu', NULL, NULL),
(14, 'Silvia Kusmawati S.E.', 'non', 34, 'Ds. Yos Sudarso No. 6, Kediri 34914, SumBar', NULL, NULL),
(15, 'Janet Permata', 'qui', 27, 'Psr. Gatot Subroto No. 790, Madiun 26574, KalBar', NULL, NULL),
(16, 'Ajimat Cecep Haryanto', 'nobis', 28, 'Ds. Bahagia  No. 368, Parepare 65497, SulTra', NULL, NULL),
(17, 'Prasetya Gunarto', 'autem', 26, 'Jr. Abdul Muis No. 733, Bandung 78013, SulTra', NULL, NULL),
(18, 'Cakrabuana Setiawan S.Farm', 'nisi', 40, 'Ki. Zamrud No. 535, Pekanbaru 76818, PapBar', NULL, NULL),
(19, 'Pranata Sitorus', 'laboriosam', 27, 'Ki. Pacuan Kuda No. 108, Bekasi 75565, BaBel', NULL, NULL),
(20, 'Arsipatra Nainggolan', 'ratione', 35, 'Gg. Qrisdoren No. 858, Administrasi Jakarta Pusat 85947, BaBel', NULL, NULL),
(21, 'Puji Kasiyah Widiastuti', 'consequuntur', 25, 'Psr. Peta No. 984, Tebing Tinggi 14919, KepR', NULL, NULL),
(22, 'Laras Purwanti', 'ipsum', 38, 'Ds. Banda No. 711, Tomohon 89009, KalTim', NULL, NULL),
(23, 'Paiman Hidayat', 'hic', 36, 'Jln. Ikan No. 85, Banjarmasin 90735, Lampung', NULL, NULL),
(24, 'Paulin Prastuti S.Pd', 'ut', 29, 'Ki. Hasanuddin No. 301, Lubuklinggau 25728, KalTeng', NULL, NULL),
(25, 'Ganep Najmudin', 'omnis', 36, 'Ki. Laswi No. 613, Jambi 24336, DKI', NULL, NULL),
(26, 'Nurul Rahmawati', 'quod', 27, 'Jr. Bank Dagang Negara No. 756, Pagar Alam 51772, PapBar', NULL, NULL),
(27, 'Lantar Maulana', 'sapiente', 34, 'Jr. Lumban Tobing No. 301, Prabumulih 80972, KepR', NULL, NULL),
(28, 'Drajat Hardiansyah S.Pd', 'repellat', 40, 'Jln. Bappenas No. 317, Jambi 60951, Gorontalo', NULL, NULL),
(29, 'Irnanto Bahuraksa Saptono', 'labore', 36, 'Gg. Labu No. 377, Pariaman 37269, Gorontalo', NULL, NULL),
(30, 'Zaenab Mulyani', 'non', 30, 'Jln. Bagas Pati No. 480, Medan 64422, Riau', NULL, NULL),
(31, 'Nasim Saptono', 'vel', 38, 'Psr. Merdeka No. 322, Ternate 55942, Gorontalo', NULL, NULL),
(32, 'Karen Rachel Zulaika', 'architecto', 33, 'Jln. Qrisdoren No. 921, Bukittinggi 32853, JaTeng', NULL, NULL),
(33, 'Tania Uli Lailasari', 'vitae', 37, 'Ki. Achmad No. 295, Denpasar 94861, NTB', NULL, NULL),
(34, 'Janet Pudjiastuti', 'reiciendis', 26, 'Kpg. Cikapayang No. 638, Cilegon 14008, DIY', NULL, NULL),
(35, 'Banawa Hakim S.Farm', 'corporis', 29, 'Jln. Taman No. 374, Kupang 39280, SulBar', NULL, NULL),
(36, 'Ana Eva Yuniar S.Psi', 'et', 27, 'Kpg. K.H. Wahid Hasyim (Kopo) No. 229, Bima 89991, KalUt', NULL, NULL),
(37, 'Cinta Nasyidah', 'animi', 25, 'Kpg. Rajiman No. 289, Langsa 28264, KalSel', NULL, NULL),
(38, 'Bagya Eluh Rajasa', 'eligendi', 32, 'Psr. Tentara Pelajar No. 45, Palembang 14872, JaTeng', NULL, NULL),
(39, 'Devi Prastuti', 'dolorem', 39, 'Jr. Sudiarto No. 36, Langsa 50734, SulSel', NULL, NULL),
(40, 'Omar Gara Mustofa S.Ked', 'suscipit', 39, 'Psr. Hang No. 431, Sukabumi 74999, SulTeng', NULL, NULL),
(41, 'Kayun Saptono', 'sit', 35, 'Jr. Ekonomi No. 296, Probolinggo 41373, KalUt', NULL, NULL),
(42, 'Naradi Lazuardi', 'veniam', 33, 'Ki. Sutarjo No. 483, Ternate 62591, SulSel', NULL, NULL),
(43, 'Carla Zulaikha Nurdiyanti S.E.I', 'consequatur', 25, 'Kpg. Banal No. 712, Kediri 16833, KepR', NULL, NULL),
(44, 'Prima Rahman Halim', 'ex', 28, 'Ki. B.Agam Dlm No. 181, Kediri 51479, KalSel', NULL, NULL),
(45, 'Mahdi Nugroho', 'magnam', 25, 'Jr. Cokroaminoto No. 236, Gorontalo 79176, KepR', NULL, NULL),
(46, 'Keisha Mardhiyah', 'dolor', 35, 'Ds. Karel S. Tubun No. 599, Tarakan 70299, SumBar', NULL, NULL),
(47, 'Farah Endah Lailasari S.Sos', 'tenetur', 26, 'Jln. Madrasah No. 818, Bontang 54788, NTB', NULL, NULL),
(48, 'Harsaya Widodo', 'ab', 38, 'Jln. Moch. Yamin No. 12, Surabaya 86285, SumSel', NULL, NULL),
(49, 'Yuni Yuniar', 'sapiente', 36, 'Jr. Babah No. 29, Semarang 81683, SumUt', NULL, NULL),
(50, 'Nasrullah Pratama', 'dignissimos', 25, 'Dk. Badak No. 834, Pontianak 73598, BaBel', NULL, NULL),
(51, 'Cinthia Fujiati S.Kom', 'sit', 29, 'Dk. Veteran No. 655, Makassar 49547, NTB', NULL, NULL),
(52, 'Ami Lailasari', 'maiores', 35, 'Psr. Dipatiukur No. 882, Bitung 72643, SulUt', NULL, NULL),
(53, 'Ulva Kuswandari S.H.', 'saepe', 26, 'Dk. Umalas No. 339, Manado 70772, KalTim', NULL, NULL),
(54, 'Emong Karya Sirait', 'ratione', 38, 'Kpg. Salam No. 716, Jayapura 29211, PapBar', NULL, NULL),
(55, 'dani', NULL, NULL, 'dani', '2019-02-13 21:16:14', '2019-02-13 21:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores', 2, NULL, NULL),
(2, 'culpa', 3, NULL, NULL),
(3, 'sit', 4, NULL, NULL),
(4, 'quasi', 3, NULL, NULL),
(5, 'inventore', 5, NULL, NULL),
(6, 'ut', 7, NULL, NULL),
(7, 'quisquam', 5, NULL, NULL),
(8, 'fugiat', 7, NULL, NULL),
(9, 'perspiciatis', 5, NULL, NULL),
(10, 'voluptatem', 3, NULL, NULL),
(11, 'non', 2, NULL, NULL),
(12, 'ducimus', 5, NULL, NULL),
(13, 'tempora', 4, NULL, NULL),
(14, 'voluptatem', 10, NULL, NULL),
(15, 'nisi', 3, NULL, NULL),
(16, 'exercitationem', 10, NULL, NULL),
(17, 'sed', 2, NULL, NULL),
(18, 'tempora', 6, NULL, NULL),
(19, 'laudantium', 7, NULL, NULL),
(20, 'a', 6, NULL, NULL),
(21, 'consequuntur', 9, NULL, NULL),
(22, 'omnis', 1, NULL, NULL),
(23, 'rerum', 9, NULL, NULL),
(24, 'ut', 1, NULL, NULL),
(25, 'amet', 10, NULL, NULL),
(26, 'atque', 9, NULL, NULL),
(27, 'at', 4, NULL, NULL),
(28, 'hic', 3, NULL, NULL),
(29, 'itaque', 1, NULL, NULL),
(30, 'quia', 9, NULL, NULL),
(31, 'consequatur', 8, NULL, NULL),
(32, 'non', 9, NULL, NULL),
(33, 'explicabo', 10, NULL, NULL),
(34, 'eos', 6, NULL, NULL),
(35, 'eveniet', 5, NULL, NULL),
(36, 'dolor', 10, NULL, NULL),
(37, 'magnam', 10, NULL, NULL),
(38, 'aut', 1, NULL, NULL),
(39, 'et', 6, NULL, NULL),
(40, 'ut', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
