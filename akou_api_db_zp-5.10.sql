-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 05 Οκτ 2021 στις 15:24:42
-- Έκδοση διακομιστή: 10.4.20-MariaDB
-- Έκδοση PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `akou_api_db_zp`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `failed_jobs`
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
-- Δομή πίνακα για τον πίνακα `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_29_090149_create_products_table', 2),
(6, '2021_10_01_073748_add_paid_to_users_table', 3),
(8, '2021_10_05_121627_add_writer_name_and_category_to_product_table', 4);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `personal_access_tokens`
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

--
-- Άδειασμα δεδομένων του πίνακα `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'myapptoken', '97435c693088b54e393a4a9540ed94a10b1cc242b031fa9b5231be5b6e03a395', '[\"*\"]', NULL, '2021-09-29 11:45:16', '2021-09-29 11:45:16'),
(3, 'App\\Models\\User', 1, 'myapptoken', 'd40784fcb0ef43ecff08020f394071b47c9ea3a21699fd665d344c58b7050410', '[\"*\"]', NULL, '2021-09-29 11:45:47', '2021-09-29 11:45:47'),
(4, 'App\\Models\\User', 1, 'myapptoken', '635e779644065bb4f281bdaca947252fe39cdb44ad7a062799cf3d5200f6786d', '[\"*\"]', NULL, '2021-09-29 11:47:04', '2021-09-29 11:47:04'),
(5, 'App\\Models\\User', 1, 'myapptoken', '924d8b1c6d1ba9c8f82b3a580fd5c95cbac6ea90e4cfb57c75898ba721212724', '[\"*\"]', NULL, '2021-09-30 09:00:44', '2021-09-30 09:00:44'),
(6, 'App\\Models\\User', 1, 'myapptoken', 'cc0535b6345b02ba72608b12bb2fdb50a8f316d26f27a230c5f71008ebf3965f', '[\"*\"]', '2021-10-01 05:20:48', '2021-10-01 05:15:14', '2021-10-01 05:20:48'),
(7, 'App\\Models\\User', 1, 'myapptoken', '2275987aa568ab249ba26fa398ee94c269ff18131791dd278aad95a9e70c21f5', '[\"*\"]', NULL, '2021-10-01 05:46:59', '2021-10-01 05:46:59'),
(8, 'App\\Models\\User', 2, 'myapptoken', '04af2edae588be415a5add149e69c61897ad0b60b9254e236281f52a0fc1ca85', '[\"*\"]', NULL, '2021-10-01 06:23:36', '2021-10-01 06:23:36'),
(9, 'App\\Models\\User', 2, 'myapptoken', '5005b0394e1dc76e64179a167d8f6dcffca596bc9f74409df1ec38f6e10b6917', '[\"*\"]', NULL, '2021-10-01 06:25:31', '2021-10-01 06:25:31'),
(10, 'App\\Models\\User', 1, 'myapptoken', 'eaf3ea19a4f8747ec50664da2c0ae23f91967f07439c3c93ed77b0598a9ae8a4', '[\"*\"]', '2021-10-01 06:53:55', '2021-10-01 06:48:12', '2021-10-01 06:53:55'),
(11, 'App\\Models\\User', 1, 'myapptoken', '9fed04df561a938e55ded3cd2b56d10534632f7ec1b58e1856f1458e2cb50edb', '[\"*\"]', NULL, '2021-10-01 06:58:21', '2021-10-01 06:58:21'),
(12, 'App\\Models\\User', 3, 'myapptoken', '9116c85fd76ffc13bc3ee6dd8d2142f6872a6831ab60fd29686114ab7fba7978', '[\"*\"]', NULL, '2021-10-04 10:02:59', '2021-10-04 10:02:59'),
(13, 'App\\Models\\User', 3, 'myapptoken', 'b53422533ceb342c9e53832cf1b574e4b9369279bff09f6a5a8072f88d589b2f', '[\"*\"]', NULL, '2021-10-04 10:07:03', '2021-10-04 10:07:03'),
(14, 'App\\Models\\User', 3, 'myapptoken', '78237b54b1172182ef0c657cd17e4565a05874a9a3c71665992910551b17cc33', '[\"*\"]', NULL, '2021-10-04 11:10:32', '2021-10-04 11:10:32'),
(15, 'App\\Models\\User', 3, 'myapptoken', '821afe4cb846d99bced058b3844aa52de9c99e9eca7afed71dac8187575de431', '[\"*\"]', NULL, '2021-10-04 11:16:23', '2021-10-04 11:16:23'),
(16, 'App\\Models\\User', 3, 'myapptoken', '0212bf70d35e8a62a249e9787c4d5f513fed51dbbb58cc224c9f2ff815c3c3d6', '[\"*\"]', NULL, '2021-10-04 11:17:16', '2021-10-04 11:17:16'),
(17, 'App\\Models\\User', 3, 'myapptoken', 'ffd814dd3184ac55bb4d1bd7d761430ab37f15dcb7a61fb8971aacaa99fba137', '[\"*\"]', NULL, '2021-10-04 11:19:02', '2021-10-04 11:19:02'),
(18, 'App\\Models\\User', 3, 'myapptoken', '742080cd64b08e52286b1311e389c8d1823322f2c75c9738cd49d44e2c918e92', '[\"*\"]', NULL, '2021-10-04 11:20:14', '2021-10-04 11:20:14'),
(19, 'App\\Models\\User', 3, 'myapptoken', '7865a7ca2fa2cd28bb8fa1cd26f8d3af9edb751112a8b2274b6237552a7f77a6', '[\"*\"]', NULL, '2021-10-04 11:20:54', '2021-10-04 11:20:54'),
(20, 'App\\Models\\User', 3, 'myapptoken', '99b9ce7b385497e371fa4da4d1357b32cec26db943074108c50466992c073a37', '[\"*\"]', NULL, '2021-10-04 11:23:18', '2021-10-04 11:23:18'),
(21, 'App\\Models\\User', 3, 'myapptoken', 'f05d5c8cedafe2a68014d7fe204954a5cdbd62e9c42c13b8366f2cff5ca641cd', '[\"*\"]', NULL, '2021-10-04 11:24:55', '2021-10-04 11:24:55'),
(22, 'App\\Models\\User', 3, 'myapptoken', '88a1c1a55e9d3a6981c7ebe118f1c746fb35a538caa3bc2c7944b06ee4c52257', '[\"*\"]', NULL, '2021-10-05 04:31:41', '2021-10-05 04:31:41'),
(23, 'App\\Models\\User', 1, 'myapptoken', '8e0e5568d59c49412264e38b7ec0de14deda87d46ddb37bbed0e94bec3b54e42', '[\"*\"]', NULL, '2021-10-05 06:41:53', '2021-10-05 06:41:53'),
(24, 'App\\Models\\User', 1, 'myapptoken', 'f9f5fab7e67723a7f6561e23e71cac86658bddb190ff3760cbabdd27715d95d2', '[\"*\"]', '2021-10-05 06:55:08', '2021-10-05 06:52:25', '2021-10-05 06:55:08');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `price`, `created_at`, `updated_at`, `image_link`, `audio_link`, `writer_name`, `category`) VALUES
(1, 'Ο Χρόνος Κυλάει', 'o_xronos_kylaei', 'Περιγραφή του \"Ο Χρόνος κυλάει\"', '5.99', '2021-10-01 05:20:48', '2021-10-01 05:20:48', '/assets/images/o_xronos_kylaei_mix_v1.jpg', '/assets/audio/o_xronos_kylaei_mix_v1.mp3', '', 1),
(2, 'Οι Καστροεπισκέπτες', 'kastroepiskeptes', 'Περιγραφή του \"Οι Καστροεπισκέπτες\"', '10.99', '2021-10-01 06:50:42', '2021-10-01 06:50:42', '/assets/images/kastroepiskeptes.jpg', '/assets/audio/kastroepiskeptes_mix_v1.mp3', '', 1),
(3, 'Μία σκάλα στο φεγγάρι', 'mia_skala_sto_feggari', 'Περιγραφή του \"Μία σκάλα στο φεγγάρι\"', '10.99', '2021-10-01 06:52:10', '2021-10-01 06:52:10', '/assets/images/mia_skala_sto_feggari.jpg', '/assets/audio/mia_skala_sto_feggari_mix_v1_revised_final.mp3', '', 1),
(4, 'Το βουητό του βόα', 'to_vouito_tou_voa', 'Περιγραφή του \"Το βουητό του βόα\"', '10.99', '2021-10-01 06:53:55', '2021-10-01 06:53:55', '/assets/images/to_vouito_tou_voa.jpg', '/assets/audio/boas_mix_v2.mp3', '', 1),
(5, 'Test', 'test-pro', 'test desc', '7.50', '2021-10-05 06:55:08', '2021-10-05 06:55:08', 'test', 'testtest', '', 1),
(6, 'test form', 'test-form', 'asdasd', '31.00', '2021-10-05 09:39:07', '2021-10-05 09:39:07', 'link', 'alink', '', 1),
(7, 'Δοκιμή φόρμας', 'dokimi', 'Δοκιμαστική περιγραφή', '50.00', '2021-10-05 09:47:27', '2021-10-05 09:47:27', 'link', 'alink', 'Κατερίνα', 2),
(8, 'test form', 'test-form2', 'asdasdas', '40.00', '2021-10-05 10:16:31', '2021-10-05 10:16:31', 'link', 'alink', 'Άννα', 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Stefanos Missin', 's.missin@zonepage.gr', NULL, '$2y$10$ARlXMkgybwQOk2ZIsoT5vukYB2teZzEnCiXAEZbqpDiY1ZKtmWbny', NULL, '2021-09-29 07:51:06', '2021-09-29 07:51:06'),
(2, 'ZonePage Admin', 'info@zonepage.gr', NULL, '$2y$10$UqrGWNB9eqt3SCdDKVErF.7o00HSyRmuGLcsF4uqimF/0/gNbydP2', NULL, '2021-10-01 06:23:36', '2021-10-01 06:23:36'),
(3, 'Nikoss', 'nziozas@gmail.com', NULL, '$2y$10$DmZemeQJT3MFDkvaviOg4.oofKVUw5V72H2r047mUGzBgquBrL04e', NULL, '2021-10-04 10:02:59', '2021-10-04 10:02:59');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Ευρετήρια για πίνακα `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Ευρετήρια για πίνακα `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Ευρετήρια για πίνακα `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT για πίνακα `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT για πίνακα `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
