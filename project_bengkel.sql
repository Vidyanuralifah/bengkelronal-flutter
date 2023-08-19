-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Agu 2023 pada 14.25
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_bengkel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `uuid` varchar(100) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `model` varchar(50) NOT NULL,
  `nomor_rangka` varchar(50) NOT NULL,
  `no_kt` varchar(50) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `tipe_mobil` varchar(50) NOT NULL,
  `tahun_produksi` year(4) NOT NULL,
  `warna` varchar(70) NOT NULL,
  `nopol` varchar(30) NOT NULL,
  `nomor_stnk` varchar(30) DEFAULT NULL,
  `masa_stnk` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kendaraan`
--

INSERT INTO `kendaraan` (`uuid`, `merk`, `model`, `nomor_rangka`, `no_kt`, `user_id`, `tipe_mobil`, `tahun_produksi`, `warna`, `nopol`, `nomor_stnk`, `masa_stnk`, `created_at`, `updated_at`) VALUES
('20da7512-096d-40da-afe0-2cc01e5735e5', 'Honda', 'honda mobilio', 'VN12345', 'KT 12345 FM', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'mpv', 2020, 'hitam', 'KT 2345', 'VN12345', '2044-05-07', '2023-07-27 18:29:07', '2023-07-27 18:29:07'),
('2103717c-a6f1-4dc6-916e-a330ee32625c', 'Honda', 'honda jazz', '123', '', 'ed5c5581-38f1-4208-aba7-f97c6cb76412', 'vtec', 2014, 'hitam', 'KT 64782', '123', '2045-05-08', '2023-07-26 04:32:18', '2023-07-26 04:32:18'),
('3054e2f6-14af-4063-bafe-4a8038912f4d', 'Toyota', 'akasa', 'kt 1234 kt', '', 'b8d98c96-b969-4b0a-a020-5dd834b7b877', 'ewwe', 2044, 'merah', '123456', 'kt 1234 kt', '2045-05-09', '2023-08-13 07:04:10', '2023-08-13 07:04:10'),
('4020c5ff-b466-4e0f-b97d-0b56f6d66757', 'Toyota', 'agya', 'VN123', '', '878dca29-64bb-4fd1-a12e-b3ca41454bed', 'agya', 2045, 'hitam', 'KT 2345', 'VN123', '2038-04-07', '2023-07-28 06:50:56', '2023-07-28 06:50:56'),
('53b57c7a-f122-4639-bf67-693adc8329b2', 'Toyota', 'mol', '1234', '', 'b9f24ce8-fa63-4b5a-b094-25f20f6d7471', 'mol', 2015, 'merah', 'kt 1234 kt', '1234', '2043-03-08', '2023-08-07 14:04:52', '2023-08-07 14:04:52'),
('609b4f85-2653-4235-9dcb-501d3a589914', 'Daihatsu', 'Ayla', 'TY12345', '', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'Tipe 2', 2020, 'Putih', '12345', 'TY12345', '2040-06-11', '2023-08-15 05:49:52', '2023-08-15 05:49:52'),
('6a87f512-37fd-430c-9ebb-b4cc43c243bd', 'Honda', 'Civic MT', 'VXC09ZYU', '', '12204354-d3cc-4a56-b52e-69580041a8eb', 'Civic Turbo Type R', 2022, 'Burning Red', 'P 0923 LK', '109723572190431', '2027-05-21', '2023-06-05 19:12:01', '2023-06-05 19:12:01'),
('8f7ccae5-adf1-4a0a-99bf-cfded12f4aae', 'Toyota', '7203.T, NYSE: TM, LSE: TYT,', 'VN1234', '', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'Rush', 2010, 'Merah', 'KT 23445', 'VN1234', '2013-06-11', '2023-07-26 21:47:38', '2023-07-26 21:47:38'),
('96fa07bf-45c9-4c5c-ae2d-1a38f38314a0', 'Mitsubishi', 'Xpander', 'MV123', '', '61e37bb8-ad3b-42a9-ad53-2f74bef0451a', 'Cross', 2045, 'Hitam', 'KT 12345', 'MV123', '2033-07-08', '2023-06-26 15:48:33', '2023-06-26 15:48:33'),
('9aaa0cc2-b8ea-479b-800f-1e5357a29932', 'Mitsubishi', 'Civic', 'NM12345', 'KT 12345 DN', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'Tipe 2', 2045, 'Merah', '547834765', 'NM12345', '2036-09-14', '2023-08-16 03:20:18', '2023-08-16 03:20:18'),
('ae4361be-9b5b-433f-9b2c-626ba4184ac5', 'Mitsubishi', 'Civic', '8327578435784', '', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'Tipe 1', 2021, 'Putih', '3247823478326', '8327578435784', '2045-01-11', '2023-08-15 05:23:25', '2023-08-15 05:23:25'),
('b2771590-22b0-4546-a798-04d504d59524', 'Mitsubishi', 'Civic', 'VN654321', 'KT 54321 FM', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'Tipe 1', 2044, 'Merah', '982347892', 'VN654321', '2038-05-12', '2023-08-16 09:57:10', '2023-08-16 09:57:10'),
('c6d4ad6e-5bac-4e38-b0d5-47b365f6c1db', 'Mitsubishi', 'agya', 'VD1234', '', 'ed5c5581-38f1-4208-aba7-f97c6cb76412', 'agya2.0', 2005, 'white', 'KT 2345', 'VD1234', '2045-05-05', '2023-07-15 05:37:15', '2023-07-15 05:37:15'),
('f2910ce8-75f4-4949-901c-66235b096584', 'Mitsubishi', 'Agya', 'BN12345', 'KT 54321 RM', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'Tipe 1', 2044, 'Merah', '23487234', 'BN12345', '2037-02-12', '2023-08-17 04:53:55', '2023-08-17 04:53:55'),
('f3d8e754-6f02-4cb5-a745-a16167e77e67', 'Honda', 'Civic', 'VN 123', 'KT 123', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'Tipe 2', 2044, 'Putih', 'KT 123', 'VN 123', '2038-06-10', '2023-08-17 06:41:43', '2023-08-17 06:41:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk`
--

CREATE TABLE `merk` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `merk`
--

INSERT INTO `merk` (`id`, `nama`) VALUES
(1, 'Mitsubishi'),
(3, 'Toyota'),
(4, 'Honda'),
(5, 'suzuki'),
(6, 'wuling'),
(7, 'Daihatsu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_04_16_074741_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `id` varchar(100) NOT NULL,
  `kendaraan_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `detail_service` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `keluhan` text DEFAULT NULL,
  `status` enum('waiting','onprocess','done','cancelled') NOT NULL DEFAULT 'waiting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`id`, `kendaraan_id`, `user_id`, `detail_service`, `tanggal`, `jam`, `keluhan`, `status`, `created_at`, `updated_at`) VALUES
('0ffab191-742d-4cb8-bf64-746998f6c0f3', 'f3d8e754-6f02-4cb5-a745-a16167e77e67', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'Service Berkala 60000 Km', '2023-08-14', '15:00:00', 'kampas', 'done', '2023-08-17 06:43:49', '2023-08-17 06:45:17'),
('3bc1f76a-1254-4442-a6e1-499abe17466c', '20da7512-096d-40da-afe0-2cc01e5735e5', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'Service Berkala 10000 Km', '2023-05-17', '15:00:00', 'Mobil terbakar', 'done', '2023-08-16 10:05:32', '2023-08-16 10:07:44'),
('3da24d7e-b8a1-44ac-8f43-61bdb1539fb9', '20da7512-096d-40da-afe0-2cc01e5735e5', '46d27459-72c8-4bb0-953b-398b1e3c20fc', 'Service Berkala 10000 Km', '2023-08-17', '14:00:00', 'oli', 'done', '2023-08-17 05:50:03', '2023-08-17 06:38:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `keterangan`) VALUES
(1, 'Customer'),
(2, 'Service Advisor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `uuid` varchar(100) NOT NULL,
  `id_kendaraan` varchar(100) NOT NULL,
  `tipe_service` varchar(50) DEFAULT NULL,
  `service_advisor` varchar(50) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `odometer` varchar(30) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `part_pengganti` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`uuid`, `id_kendaraan`, `tipe_service`, `service_advisor`, `tanggal`, `odometer`, `detail`, `part_pengganti`, `created_at`, `updated_at`) VALUES
('2a538b5e-24db-4477-aff9-ba4baf31f515', '20da7512-096d-40da-afe0-2cc01e5735e5', 'Service Berkala 60000 Km', 'Muhammad Adi Saputro', '2023-08-14', '26000 KM', 'Gak tau', 'Ganti Oli', '2023-08-15 05:46:55', '2023-08-15 05:46:55'),
('2dd45cd8-e85a-464e-81ec-c606d18a29be', '2103717c-a6f1-4dc6-916e-a330ee32625c', 'Service Berkala 10000 Km', 'Muhammad Adi Saputro', '2023-08-10', '232434 KM', '232323', '1234', '2023-08-13 10:42:48', '2023-08-13 10:42:48'),
('40544934-0a58-4b5d-b4c0-a232cf530e53', '609b4f85-2653-4235-9dcb-501d3a589914', 'Service Berkala 10000 Km', 'Muhammad Adi Saputro', '2023-05-01', '23000 KM', 'Gak tau', 'Beli baru', '2023-08-15 05:52:05', '2023-08-15 05:52:05'),
('4ce4aa64-a593-4d5e-bc91-6bb653e9ef6e', '8f7ccae5-adf1-4a0a-99bf-cfded12f4aae', 'Service Berkala 70000 Km', 'Muhammad Adi Saputro', '2023-09-21', '655003838 KM', 'Perbaikan bumper', '-', '2023-07-26 21:50:09', '2023-07-26 21:50:09'),
('551a79cc-1ed7-4e45-80a3-3ad002f3b610', 'c6d4ad6e-5bac-4e38-b0d5-47b365f6c1db', 'Service Berkala 60000 Km', 'Muhammad Adi Saputro', '2022-07-08', '12121 KM', '12121', '12212', '2023-08-13 10:39:36', '2023-08-13 10:39:36'),
('60046121-6e4a-4c4a-ab1a-dad256aa40ec', '8f7ccae5-adf1-4a0a-99bf-cfded12f4aae', 'Service Berkala 60000 Km', 'Muhammad Adi Saputro', '2022-08-12', '1234567 KM', 'edwewrwertrew', 'rewrwer', '2023-08-13 10:38:22', '2023-08-13 10:38:22'),
('756c79fe-bb28-427b-a956-761bfa77e248', '20da7512-096d-40da-afe0-2cc01e5735e5', 'Service Berkala 10000 Km', 'Muhammad Adi Saputro', '2023-05-17', '120000 KM', 'Kamu tolol banget', 'Gak tau', '2023-08-16 10:07:44', '2023-08-16 10:07:44'),
('7b5c2939-32e4-4234-9dcf-4585e3271662', 'c6d4ad6e-5bac-4e38-b0d5-47b365f6c1db', 'Service Berkala 60000 Km', 'Muhammad Adi Saputro', '2023-08-10', '40000 KM', 'oli fiter', '-', '2023-07-26 04:36:38', '2023-07-26 04:36:38'),
('98fdaaf8-4918-4c11-891a-8b0976eaa8cd', 'c6d4ad6e-5bac-4e38-b0d5-47b365f6c1db', 'Service Berkala 10000 Km', 'Muhammad Adi Saputro', '2024-07-09', '60000 KM', 'service berkala', 'filter oli', '2023-07-15 05:46:59', '2023-07-15 05:46:59'),
('a2518590-1fed-4193-b521-df13a542cf3d', '20da7512-096d-40da-afe0-2cc01e5735e5', 'Service Berkala 60000 Km', 'Muhammad Adi Saputro', '2023-07-21', '234100838 KM', '-', '-', '2023-08-08 08:08:53', '2023-08-08 08:08:53'),
('ac5045f6-5d5b-4831-b171-512e63a4597e', 'f3d8e754-6f02-4cb5-a745-a16167e77e67', 'Service Berkala 60000 Km', 'Muhammad Adi Saputro', '2023-08-14', '20000 KM', 'kampas', 'oli,kampas', '2023-08-17 06:45:17', '2023-08-17 06:45:17'),
('b193968f-28ff-4ab1-a190-b9fa7643aa87', '96fa07bf-45c9-4c5c-ae2d-1a38f38314a0', 'Service Berkala 60000 Km', 'Muhammad Adi Saputro', '2023-06-30', '2354646 KM', 'FIlter oli', 'oli mesin', '2023-06-26 15:53:37', '2023-06-26 15:53:37'),
('bdec15d4-20bb-4fb3-98b2-49cbc3ca5041', '3054e2f6-14af-4063-bafe-4a8038912f4d', 'Service Berkala 80000 Km', 'Muhammad Adi Saputro', '2023-10-18', '123 KM', '3223', '123', '2023-08-13 10:47:54', '2023-08-13 10:47:54'),
('ca69f17d-aa9f-4f23-8fd5-d71e3b1780b7', 'c6d4ad6e-5bac-4e38-b0d5-47b365f6c1db', 'Service Berkala 10000 Km', 'Muhammad Adi Saputro', '2024-07-09', '600000 KM', 'Filter oli', 'Oli', '2023-07-19 01:36:30', '2023-07-19 01:36:30'),
('d25137df-b48e-4bb8-8a4a-0b088dd31ae1', 'c6d4ad6e-5bac-4e38-b0d5-47b365f6c1db', 'Service Berkala 10000 Km', 'Muhammad Adi Saputro', '2023-07-26', '123456 KM', 'baru', 'oli', '2023-08-13 10:37:03', '2023-08-13 10:37:03'),
('f40ee75a-7143-4ed2-8a75-d913abb7ea20', '20da7512-096d-40da-afe0-2cc01e5735e5', 'Service Berkala 10000 Km', 'Muhammad Adi Saputro', '2023-08-17', '60000 KM', 'Ganti oli', 'oli', '2023-08-17 06:38:31', '2023-08-17 06:38:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `uuid` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(16) DEFAULT NULL,
  `verified` enum('true','false') DEFAULT 'false',
  `verified_at` timestamp NULL DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`uuid`, `nama`, `no_hp`, `verified`, `verified_at`, `email`, `created_at`, `password`, `role_id`, `updated_at`) VALUES
('12204354-d3cc-4a56-b52e-69580041a8eb', 'Muhammad Adi Saputro', '+6285748314069', 'true', NULL, 'sa.bengkelronal@gmail.com', '2023-06-05 16:21:45', '$2y$10$1GUWzDRwSsyJJ.TRsSn/.OF8beXhsFMqJjO4xyXVFAyvYTOT6FSz2', 2, '2023-06-05 16:21:45'),
('24bc2eec-3e53-4a4d-875f-6cdbd5cb799b', 'vidya', '+6282197590704', 'true', NULL, 'vidya@gmail.com', '2023-07-26 13:51:27', '$2y$10$6SIDdQmBcR0FQLnF3SgUM.pWHbI1WbpYR7ijcWPNS3s0Zshflyk2a', 2, '2023-07-26 13:51:27'),
('32f68f90-784c-46da-b878-07ec32a5f36c', 'arifjuanaidi', '+6285221548871', 'true', NULL, 'arif@gmail.com', '2023-07-26 21:53:21', '$2y$10$iNW88F3BadfBP3VlGjkeX.NAg1vPyoMuzUNI6Zs7W7tzyGQ4pc0mK', 1, '2023-07-26 21:53:21'),
('403945c8-ce35-4305-b603-21a90fc80aa7', 'siti', '+6282353712546', 'true', NULL, 'siti@gmail.com', '2023-07-27 03:52:13', '$2y$10$MgRSYbHL5isHgtx4VjjtZ.5Cxu5ddFN18t0eO/OrE63MhBzJ9t9DC', 1, '2023-07-27 03:52:13'),
('43a0af3c-309a-45b4-be8f-6cafaeccef3a', 'nadine', '+6282154885221', 'true', NULL, 'nadine@gmail.com', '2023-07-27 18:08:42', '$2y$10$FhH1BRUDifAcqkI9QW6g2OrelVsB6AUadwRfhx4iUGYIY0Ly9DrAq', 1, '2023-07-27 18:08:42'),
('46d27459-72c8-4bb0-953b-398b1e3c20fc', 'zelda', '+6282154885221', 'true', NULL, 'zelda@gmail.com', '2023-07-26 19:46:16', '$2y$10$m8ooMJGwFr7ifJRq5LUqMOxpYgQbOlgpa60UCpuADLpx4jkvrowYS', 1, '2023-07-26 19:46:16'),
('61e37bb8-ad3b-42a9-ad53-2f74bef0451a', 'vidya', '+6282197590704', 'true', NULL, 'nuralifahvidya@gmail.com', '2023-06-26 12:54:52', '$2y$10$vV6c/GNjyhKzBl5wlrvY..J5wTnPZ5LGcysAIhLOZ5bOOCMja2hgm', 1, '2023-06-26 12:54:52'),
('794c2d10-3e90-49b9-a439-ce345a9b716d', 'putri', '+6285849074604', 'true', NULL, 'vidyanuralifah5@gmail.com', '2023-06-26 14:33:56', '$2y$10$bYKeyQ7DV/kHgvKxkDmy6edvx28Z2YGmfj2/ygJdYiKEeBdJiLAai', 1, '2023-06-26 14:33:56'),
('878dca29-64bb-4fd1-a12e-b3ca41454bed', 'zainul', '+6281255550523', 'true', NULL, 'zainulmzr@gmail.com', '2023-07-28 06:45:18', '$2y$10$PFksjSDWE67fbq8kDYYGB.Ia5o.x6UvTLn88Ozdvze53XwJquwGk2', 1, '2023-07-28 06:45:18'),
('8e576d08-c0e3-4b55-bd16-42703bfad3cb', 'arif junaidi', '+6282197590704', 'true', NULL, 'mhs.politani@gmail.com', '2023-08-17 09:19:32', '$2y$10$RrvTH5vkcqCxADVk295giecNr/JpsfEawqcG.b1HfB2JBbQHl77oG', 1, '2023-08-17 09:19:32'),
('9e3e8d07-d075-48ff-8ff7-d9826314a77a', 'vidyan', '+6282154885221', 'true', NULL, 'zzelllzel@gmail.com', '2023-07-25 21:58:17', '$2y$10$YxhLdurgTB/sg/reWY65UuUKgc0phX0Kf.FudHq50Z8XeWRDrwj2i', 1, '2023-07-25 21:58:17'),
('ad3eb1b6-3a41-44de-9f1e-72839e725071', 'as', '+6282197590704', 'false', NULL, 'uvert70@gmail.com', '2023-08-17 09:31:15', '$2y$10$FWoj2rHIJP5kNekCjkvBYu0cOw3VFOCuV5hRGuaqQngGMO1pF6q7e', 1, '2023-08-17 09:31:15'),
('b8d98c96-b969-4b0a-a020-5dd834b7b877', 'aku', '+6282197590704', 'true', NULL, 'aku@gmail.com', '2023-07-27 09:49:30', '$2y$10$JGxmPUT/UgRpOU6wTuZ6NOQCGepTo/vtzmjpfmJaq4oBCV1zvbUhC', 1, '2023-07-27 09:49:30'),
('b9f24ce8-fa63-4b5a-b094-25f20f6d7471', 'saya', '+6282197590704', 'true', NULL, 'saya@gmail.com', '2023-08-07 13:46:36', '$2y$10$1YjlDzzhPEtHN50k.lA8rugXvxI5NSaMeG6f/rUo4sgjtP6PAV8oq', 1, '2023-08-07 13:46:36'),
('e8586334-1b60-4b38-a499-f1a1fe16d37e', 'vidyanur', '+6282154885221', 'false', NULL, 'vidyanur@gmail.com', '2023-07-28 06:30:34', '$2y$10$YYYIPy5uJZRDB.X.SWJN.e8uddBiJ/aFD2wts2k.9VHFe0JAnDWym', 1, '2023-07-28 06:30:34'),
('ed5c5581-38f1-4208-aba7-f97c6cb76412', 'vidyarif', '+6282197590704', 'false', NULL, 'arifvidya@gmail.com', '2023-07-15 05:31:10', '$2y$10$CEYo.rmMVkceLf7/4RdiDenccYulLPfHs4gJgEZ/InlaO97HR09Ty', 1, '2023-07-15 05:31:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `model` (`model`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tipe_mobil` (`tipe_mobil`);

--
-- Indeks untuk tabel `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kendaraan_id` (`kendaraan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `id_kendaraan` (`id_kendaraan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `merk`
--
ALTER TABLE `merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD CONSTRAINT `FKkendaraan280354` FOREIGN KEY (`user_id`) REFERENCES `users` (`uuid`);

--
-- Ketidakleluasaan untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `FKreservasi1255` FOREIGN KEY (`user_id`) REFERENCES `users` (`uuid`),
  ADD CONSTRAINT `FKreservasi901753` FOREIGN KEY (`kendaraan_id`) REFERENCES `kendaraan` (`uuid`);

--
-- Ketidakleluasaan untuk tabel `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `FKservice611882` FOREIGN KEY (`id_kendaraan`) REFERENCES `kendaraan` (`uuid`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FKusers973872` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
