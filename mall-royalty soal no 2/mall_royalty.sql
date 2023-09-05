-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 23 Agu 2023 pada 16.09
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joki_mall_royalty`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `invoices`
--

INSERT INTO `invoices` (`id`, `tenant_id`, `user_id`, `transaction_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 21, 'TRX4549', 840779, 1, '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(2, 12, 22, 'TRX5008', 591588, 1, '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(3, 13, 23, 'TRX4685', 832065, 1, '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(4, 14, 24, 'TRX9027', 528403, 1, '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(5, 15, 25, 'TRX4228', 954864, 0, '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(6, 16, 26, 'TRX2071', 1148754, 0, '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(7, 17, 27, 'TRX3322', 601268, 1, '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(8, 18, 28, 'TRX9527', 254388, 1, '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(9, 19, 29, 'TRX4328', 1672657, 1, '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(10, 20, 30, 'TRX6347', 102188, 1, '2023-08-23 09:08:29', '2023-08-23 09:08:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_23_125846_create_tenants_table', 1),
(6, '2023_08_23_125852_create_invoices_table', 1),
(7, '2023_08_23_125858_create_vouchers_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tenants`
--

CREATE TABLE `tenants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tenants`
--

INSERT INTO `tenants` (`id`, `name`, `location`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Torphy and Sons', 'Lantai 1 Barat A2C', 'food', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(2, 'Heaney-West', 'Lantai 3 Utara F4G', 'dessert', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(3, 'Kassulke LLC', 'Lantai 5 Barat B8C', 'snack', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(4, 'Green and Sons', 'Lantai 6 Timur I5C', 'snack', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(5, 'Boehm, Runolfsdottir and Marks', 'Lantai 4 Selatan J1D', 'other', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(6, 'Grimes, Kub and Bosco', 'Lantai 1 Selatan D8A', 'snack', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(7, 'Waelchi, Wintheiser and Sporer', 'Lantai 1 Barat H5D', 'dessert', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(8, 'Heidenreich-Kiehn', 'Lantai 1 Timur J1E', 'food', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(9, 'Huel-Farrell', 'Lantai 10 Selatan B3H', 'dessert', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(10, 'Hane, Terry and Kihn', 'Lantai 6 Timur D9E', 'food', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(11, 'Kling, Stracke and Blanda', 'Lantai 5 Barat D1E', 'snack', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(12, 'Blick-Rowe', 'Lantai 3 Barat H2B', 'other', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(13, 'Fadel Group', 'Lantai 10 Selatan J5I', 'food', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(14, 'Reynolds LLC', 'Lantai 5 Utara J4G', 'other', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(15, 'Padberg, Hettinger and O\'Reilly', 'Lantai 2 Timur J3J', 'snack', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(16, 'Bernier PLC', 'Lantai 4 Selatan B4G', 'snack', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(17, 'Krajcik and Sons', 'Lantai 5 Barat E6D', 'snack', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(18, 'Reinger, Rippin and Heathcote', 'Lantai 7 Barat D5E', 'dessert', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(19, 'Reinger Ltd', 'Lantai 8 Timur A6I', 'snack', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(20, 'Maggio, Kutch and Reilly', 'Lantai 9 Utara G3D', 'snack', '2023-08-23 09:08:29', '2023-08-23 09:08:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('costumer','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'costumer',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Antwan Legros III', 'vallie.fay@example.org', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'dJGdxAcSRj', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(2, 'Monty O\'Connell', 'ekessler@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'iikntufqVn', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(3, 'Ms. Miracle Walsh', 'kali27@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'lyQk2b9ZBO', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(4, 'Scarlett Nienow', 'morar.aliyah@example.com', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'yelJtUWyUk', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(5, 'Drake Feil PhD', 'poreilly@example.com', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'vH65nvt5jh', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(6, 'Elvie Little I', 'klocko.brant@example.org', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'NAMle0QuYI', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(7, 'Prof. Abigayle Dare', 'orlo62@example.com', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'nInt5IMV4d', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(8, 'Demond Medhurst', 'collier.aubrey@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'GI24mKsfBP', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(9, 'Cindy Sanford', 'byundt@example.org', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'TrReKVmpZq', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(10, 'Prof. Columbus Green', 'damion05@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', '7On9VvfgJr', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(11, 'Freida Sawayn', 'jazmyne.ankunding@example.org', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'w6cZMxzuJR', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(12, 'Americo Raynor IV', 'dejon68@example.com', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'VdN8tQTsh3', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(13, 'Dr. Celestino Doyle', 'lhyatt@example.com', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'IKqDPaxhoc', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(14, 'Maximilian Johns', 'ondricka.emily@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'r4bAjPhUqL', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(15, 'Yasmeen Wisoky III', 'mayer.maureen@example.org', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'GFbvEboCix', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(16, 'Flavie Hyatt PhD', 'rvonrueden@example.com', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'posYB1BFRi', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(17, 'Guido Fahey', 'collin15@example.org', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'OMV7ORScHu', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(18, 'Prof. Sharon Bergstrom', 'vilma.schamberger@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'Kgd4oeBza4', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(19, 'Jayden Gutkowski', 'destany.mosciski@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'A9hXLf627z', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(20, 'Gilbert Gusikowski', 'santina.bayer@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'cAaItjbmGW', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(21, 'Adelbert Aufderhar', 'udouglas@example.org', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'm19EsWOFJX', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(22, 'Betsy Weber', 'pbogisich@example.com', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'OAvXuv1gWs', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(23, 'Cayla Reichel', 'yking@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'X58niehH2g', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(24, 'Mr. Amos Kreiger DDS', 'godfrey27@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'eBhjJg56eo', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(25, 'Antwon Howell', 'jarod.crist@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'RRNMdzDuSB', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(26, 'Courtney Bradtke', 'hnolan@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'lbIYcMZMSQ', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(27, 'Emmy Kutch', 'clara.russel@example.org', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'TNz6XicfzF', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(28, 'Dasia Farrell', 'bryan@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'oIL0uXdWmn', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(29, 'Miss Loraine Welch', 'connie.harber@example.org', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'TdMjVUq2ya', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(30, 'Kathleen Steuber', 'qlangworth@example.net', '2023-08-23 09:08:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'costumer', 'zta1losm2Z', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(31, 'Admin', 'admin@gmail.com', NULL, '$2y$10$l35iyNEwKZgFsGx1eKqmm.510Aum5AmqzSFpig9zyveeywUR.CZwC', 'admin', NULL, '2023-08-23 09:08:29', '2023-08-23 09:08:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `vouchers`
--

INSERT INTO `vouchers` (`id`, `user_id`, `code`, `value`, `status`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 11, 'VCR9574', '10000', 1, '2023-11-20 10:55:11', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(2, 12, 'VCR2242', '10000', 1, '2023-10-12 06:46:35', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(3, 13, 'VCR6414', '10000', 1, '2023-09-02 02:40:55', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(4, 14, 'VCR9106', '10000', 1, '2023-10-25 09:03:46', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(5, 15, 'VCR2432', '10000', 1, '2023-08-24 13:57:20', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(6, 16, 'VCR2437', '10000', 1, '2023-09-24 06:06:46', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(7, 17, 'VCR4445', '10000', 0, '2023-10-04 13:23:47', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(8, 18, 'VCR3078', '10000', 0, '2023-09-20 09:13:16', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(9, 19, 'VCR1676', '10000', 0, '2023-10-06 22:07:48', '2023-08-23 09:08:29', '2023-08-23 09:08:29'),
(10, 20, 'VCR2297', '10000', 1, '2023-09-17 00:46:59', '2023-08-23 09:08:29', '2023-08-23 09:08:29');

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
-- Indeks untuk tabel `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_transaction_id_unique` (`transaction_id`),
  ADD KEY `invoices_tenant_id_foreign` (`tenant_id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vouchers_code_unique` (`code`),
  ADD KEY `vouchers_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`),
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `vouchers`
--
ALTER TABLE `vouchers`
  ADD CONSTRAINT `vouchers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
