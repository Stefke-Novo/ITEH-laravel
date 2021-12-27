-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 01:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `domaci_laravel`
--
CREATE DATABASE IF NOT EXISTS `domaci_laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `domaci_laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `car_shops`
--

CREATE TABLE `car_shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `local` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_shops`
--

INSERT INTO `car_shops` (`id`, `local`, `vehicle_id`, `location`, `location_number`, `created_at`, `updated_at`) VALUES
(1, 'Lamborghini', 5, 'Albina Auer', 97, '2021-12-26 23:29:51', '2021-12-26 23:29:51'),
(2, 'Lamborghini', 6, 'Ari Fisher', 30, '2021-12-26 23:29:51', '2021-12-26 23:29:51'),
(3, 'Lamborghini', 7, 'Zora Block II', 7, '2021-12-26 23:29:51', '2021-12-26 23:29:51'),
(4, 'Lamborghini', 8, 'Mr. Wiley Johnston III', 74, '2021-12-26 23:30:36', '2021-12-26 23:30:36'),
(5, 'Toyota', 9, 'Alfonzo Schmeler', 30, '2021-12-26 23:30:36', '2021-12-26 23:30:36'),
(6, 'Lamborghini', 10, 'Annie Larkin', 6, '2021-12-26 23:30:36', '2021-12-26 23:30:36'),
(7, 'Nissan', 1, 'location_1', 123, '2021-12-27 01:31:03', '2021-12-27 01:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(51, '2014_10_12_000000_create_users_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2019_08_19_000000_create_failed_jobs_table', 1),
(54, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(55, '2021_12_26_225704_create_purchases_table', 1),
(56, '2021_12_26_225746_create_car_shops_table', 1),
(57, '2021_12_26_230340_create_vehicles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `car_shop_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_time` time NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `created_at`, `updated_at`, `user_id`, `car_shop_id`, `vehicle_id`, `purchase_time`, `payment_type`) VALUES
(1, '2021-12-26 23:30:36', '2021-12-26 23:30:36', 4, 4, 8, '00:30:36', 'money'),
(2, '2021-12-26 23:30:36', '2021-12-26 23:30:36', 5, 5, 9, '00:30:36', 'in installments'),
(3, '2021-12-26 23:30:36', '2021-12-26 23:30:36', 6, 6, 10, '00:30:36', 'in installments');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Helmer Hodkiewicz I', 'lucius.labadie@example.org', '2021-12-26 23:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bxEY66B7ED', '2021-12-26 23:29:51', '2021-12-26 23:29:51'),
(2, 'Prof. Petra Greenfelder PhD', 'moore.lonnie@example.org', '2021-12-26 23:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QR3FxhIWw7', '2021-12-26 23:29:51', '2021-12-26 23:29:51'),
(3, 'Prof. Rosario Robel', 'ykling@example.net', '2021-12-26 23:29:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GDEfHBX18T', '2021-12-26 23:29:51', '2021-12-26 23:29:51'),
(4, 'Nelda Rogahn', 'lavonne47@example.com', '2021-12-26 23:30:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BHYaabjkkV', '2021-12-26 23:30:36', '2021-12-26 23:30:36'),
(5, 'Austin Waelchi', 'csmitham@example.com', '2021-12-26 23:30:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dYcgwK8J5X', '2021-12-26 23:30:36', '2021-12-26 23:30:36'),
(6, 'Ottis Harris', 'boyd88@example.net', '2021-12-26 23:30:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PEILKNnlGD', '2021-12-26 23:30:36', '2021-12-26 23:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_when_made` date NOT NULL,
  `number_of_seats` int(11) NOT NULL,
  `number_of_doors` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `company`, `model`, `date_when_made`, `number_of_seats`, `number_of_doors`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Lamborghini', 'GsbWm', '2021-12-27', 6, 5, 127256, '2021-12-26 23:28:55', '2021-12-26 23:28:55'),
(2, 'Lamborghini', 'ZMDFl', '2021-12-27', 5, 5, 199497, '2021-12-26 23:28:55', '2021-12-26 23:28:55'),
(3, 'Lamborghini', 'Lpx18', '2021-12-27', 6, 5, 190128, '2021-12-26 23:28:55', '2021-12-26 23:28:55'),
(4, 'Lamborghini', 'bjm5B', '2021-12-27', 5, 5, 145067, '2021-12-26 23:28:55', '2021-12-26 23:28:55'),
(5, 'Toyota', 'YuNOC', '2021-12-27', 8, 5, 141382, '2021-12-26 23:29:51', '2021-12-26 23:29:51'),
(6, 'Lamborghini', 'TSFgG', '2021-12-27', 6, 5, 119000, '2021-12-26 23:29:51', '2021-12-26 23:29:51'),
(7, 'Lamborghini', 'agyFF', '2021-12-27', 7, 5, 184801, '2021-12-26 23:29:51', '2021-12-26 23:29:51'),
(8, 'Lamborghini', '3dBXV', '2021-12-27', 6, 5, 107635, '2021-12-26 23:30:36', '2021-12-26 23:30:36'),
(9, 'Lamborghini', 'nFl2o', '2021-12-27', 6, 5, 86443, '2021-12-26 23:30:36', '2021-12-26 23:30:36'),
(10, 'Lamborghini', 'i2WYk', '2021-12-27', 7, 5, 150311, '2021-12-26 23:30:36', '2021-12-26 23:30:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_shops`
--
ALTER TABLE `car_shops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `car_shops_vehicle_id_unique` (`vehicle_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchases_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `purchases_car_shop_id_unique` (`car_shop_id`),
  ADD UNIQUE KEY `purchases_vehicle_id_unique` (`vehicle_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_shops`
--
ALTER TABLE `car_shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
