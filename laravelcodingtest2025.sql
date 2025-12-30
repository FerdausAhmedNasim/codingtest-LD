-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2025 at 06:23 PM
-- Server version: 8.0.30
-- PHP Version: 8.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelcodingtest2025`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('user1@example.com|127.0.0.1', 'i:1;', 1767113208),
('user1@example.com|127.0.0.1:timer', 'i:1767113208;', 1767113208);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_05_083824_create_shortened_urls_table', 1),
(5, '2025_12_30_133038_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 23, 'api-token', '03d2ebd9e54d41611f8be4ae77bef4f5beb689b1fba949cc402c8d971ef1094d', '[\"*\"]', NULL, NULL, '2025-12-30 09:49:07', '2025-12-30 09:49:07'),
(2, 'App\\Models\\User', 23, 'api-token', '6c0fb9827e06d007df03026e31eea2aa74b4e2b1c3eff0b058b5a0d1f0edf0fe', '[\"*\"]', '2025-12-30 10:20:04', NULL, '2025-12-30 10:03:20', '2025-12-30 10:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9yRJasjTgcSnxrpGxQAxoW7VWo1PPSfdtBgraPd4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidmZvaFUyZHNCa1lZT0RlTFRlZmJ4VkYyaVJLS0ZKckVQc3pIRmVsWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1767117488),
('g3HwFdSwqqfe4p62psISQkZnhH3mlBrOPFnN4Vza', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid0R0aHFmbXJLMld4a3dYWDRLRXRWd2RyVjdrQm9QSGYxUzdqZE5SNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1767113070),
('RvZTSzezWgtspDmtRAVrL765Ub9D6GouQL1YYOOU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjBSNGlMckhoT3hkU0FYbmNiYU5pS0tDamYxY0Nsc052TnE1SHo3biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767113030);

-- --------------------------------------------------------

--
-- Table structure for table `shortened_urls`
--

CREATE TABLE `shortened_urls` (
  `id` bigint UNSIGNED NOT NULL,
  `original_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shortened_urls`
--

INSERT INTO `shortened_urls` (`id`, `original_url`, `short_code`, `created_at`, `updated_at`) VALUES
(1, 'https://google.com', 'gW0DXE', '2025-12-30 10:20:04', '2025-12-30 10:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-12-30 09:48:55', '$2y$12$E12wYMsT0XqXDdGIUXPFj.hXn/tSFV9DuwWEbshQwCu/BR2ekW7jW', 'HjtjTJkKwC', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(2, 'Test Admin', 'admin@admin.com', '2025-12-30 09:48:55', '$2y$12$9KJ6lcPe4UpdQBeXzvt4hO9I5aOKtqOnYLXTOZ3HU.S.SNzovkZUe', 'o7IGVoRNrM', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(3, 'Perry Konopelski MD', 'hill.ciara@example.org', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'VYuzgxGhtg', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(4, 'Dr. Adolphus Reynolds II', 'keith.kunde@example.net', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', '1eUM6XDNXV', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(5, 'Stanton Zemlak', 'jaida.greenholt@example.net', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'UbPs2ZDv14', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(6, 'Lina O\'Keefe', 'gertrude.gutmann@example.org', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'nZ522yxdFi', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(7, 'Prof. Irving Kassulke IV', 'runte.garnet@example.net', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'noqAmdTRe2', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(8, 'Mose Larkin', 'hodkiewicz.bryon@example.com', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'LiFAbx8mfZ', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(9, 'Annabelle O\'Connell', 'paufderhar@example.org', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'XhL8GO3mPz', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(10, 'Bert Rice', 'nhaag@example.com', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'kIxoo6zZ3O', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(11, 'Una Watsica', 'lexi38@example.org', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'rbwQyM8Rns', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(12, 'Fausto Shanahan', 'dlangosh@example.org', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'Ju1IXcDa1L', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(13, 'Lola Schneider', 'mcdermott.mabel@example.org', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'pInURLAucc', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(14, 'Prof. Jordy Pfannerstill', 'lavinia.wyman@example.net', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'PEdgPi0dHP', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(15, 'Izaiah Zemlak V', 'aditya.torp@example.org', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'MdNNcG1UDQ', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(16, 'Prof. Lilliana Steuber', 'leda39@example.net', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'RmJYjVIcZA', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(17, 'Javon Cassin I', 'nasir77@example.net', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'T8gXuOzjL8', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(18, 'Desiree Bergnaum', 'ljerde@example.com', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'wPVitkm200', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(19, 'Mr. Arnulfo Schmidt', 'klein.damian@example.net', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'UdJdbl8Ngj', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(20, 'Margarete Feest', 'smorar@example.net', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'XjiNvZnvGp', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(21, 'Mr. Stephon Raynor', 'lauryn66@example.com', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'R0guHe0BVG', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(22, 'Ms. Selena Leffler', 'heller.reginald@example.org', '2025-12-30 09:48:55', '$2y$12$XrzFy.LN5McA/eg06oVZOefUbROfxDvqvpND3XGyUoNYW4A943BRG', 'YoV1dRK6xa', '2025-12-30 09:48:55', '2025-12-30 09:48:55'),
(23, 'John Doe', 'john@example.com', NULL, '$2y$12$WhZbjQiT.xf3kz8uN4GCL.k6tjh0gQ3ff5A.dTPtfbYP9cDM0A69y', NULL, '2025-12-30 09:49:07', '2025-12-30 09:49:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shortened_urls`
--
ALTER TABLE `shortened_urls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shortened_urls_original_url_unique` (`original_url`),
  ADD UNIQUE KEY `shortened_urls_short_code_unique` (`short_code`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shortened_urls`
--
ALTER TABLE `shortened_urls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
