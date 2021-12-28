-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 10:47 PM
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
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_shops`
--

INSERT INTO `car_shops` (`id`, `local`, `location`, `location_number`, `created_at`, `updated_at`) VALUES
(1, 'Audi', 'Hans Kris', 29, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(2, 'Tesla', 'Reynold Walker', 88, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(3, 'Nissan', 'Prof. Sheldon Sauer II', 48, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(4, 'Bugatti', 'Edwin Weber IV', 68, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(5, 'BMV', 'Mr. Wiley Cronin', 57, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(6, 'Porsche', 'Mr. Brandt Hessel IV', 90, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(7, 'Jeep', 'Jamie Conn', 18, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(8, 'Rolls-Royce', 'Prof. Elijah Abshire', 28, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(9, 'Lamborghini', 'Mr. Kris Pfannerstill V', 1, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(10, 'Toyota', 'Dr. Cristopher Mertz', 66, '2021-12-28 20:10:09', '2021-12-28 20:10:09');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_26_225704_create_purchases_table', 1),
(6, '2021_12_26_225746_create_car_shops_table', 1),
(7, '2021_12_26_230340_create_vehicles_table', 1);

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
(1, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 1, 1, 1, '21:10:09', 'in installments'),
(2, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 2, 1, 1, '21:10:09', 'in installments'),
(3, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 3, 1, 1, '21:10:09', 'money'),
(4, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 4, 1, 1, '21:10:09', 'money'),
(5, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 5, 1, 1, '21:10:09', 'in installments'),
(6, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 6, 1, 1, '21:10:09', 'money'),
(7, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 7, 1, 1, '21:10:09', 'in installments'),
(8, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 8, 1, 1, '21:10:09', 'money'),
(9, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 9, 1, 1, '21:10:09', 'money'),
(10, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 10, 1, 1, '21:10:09', 'money'),
(11, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 11, 2, 2, '21:10:09', 'in installments'),
(12, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 12, 2, 2, '21:10:09', 'in installments'),
(13, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 13, 2, 2, '21:10:09', 'money'),
(14, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 14, 2, 2, '21:10:09', 'money'),
(15, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 15, 2, 2, '21:10:09', 'in installments'),
(16, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 16, 2, 2, '21:10:09', 'money'),
(17, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 17, 2, 2, '21:10:09', 'in installments'),
(18, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 18, 2, 2, '21:10:09', 'in installments'),
(19, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 19, 3, 3, '21:10:09', 'money'),
(20, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 20, 3, 3, '21:10:09', 'in installments'),
(21, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 21, 3, 3, '21:10:09', 'money'),
(22, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 22, 3, 3, '21:10:09', 'in installments'),
(23, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 23, 3, 3, '21:10:09', 'money'),
(24, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 24, 3, 3, '21:10:09', 'money'),
(25, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 25, 3, 3, '21:10:09', 'in installments'),
(26, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 26, 3, 3, '21:10:09', 'in installments'),
(27, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 27, 3, 3, '21:10:09', 'in installments'),
(28, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 28, 3, 3, '21:10:09', 'in installments'),
(29, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 29, 3, 3, '21:10:09', 'in installments'),
(30, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 30, 3, 3, '21:10:09', 'in installments'),
(31, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 31, 4, 4, '21:10:09', 'money'),
(32, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 32, 4, 4, '21:10:09', 'in installments'),
(33, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 33, 4, 4, '21:10:09', 'money'),
(34, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 34, 4, 4, '21:10:09', 'money'),
(35, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 35, 4, 4, '21:10:09', 'money'),
(36, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 36, 4, 4, '21:10:09', 'money'),
(37, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 37, 4, 4, '21:10:09', 'in installments'),
(38, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 38, 5, 5, '21:10:09', 'in installments'),
(39, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 39, 5, 5, '21:10:09', 'money'),
(40, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 40, 5, 5, '21:10:09', 'money'),
(41, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 41, 5, 5, '21:10:09', 'in installments'),
(42, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 42, 5, 5, '21:10:09', 'money'),
(43, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 43, 5, 5, '21:10:09', 'in installments'),
(44, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 44, 5, 5, '21:10:09', 'money'),
(45, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 45, 5, 5, '21:10:09', 'in installments'),
(46, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 46, 5, 5, '21:10:09', 'money'),
(47, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 47, 5, 5, '21:10:09', 'money'),
(48, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 48, 6, 6, '21:10:09', 'money'),
(49, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 49, 6, 6, '21:10:09', 'in installments'),
(50, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 50, 6, 6, '21:10:09', 'money'),
(51, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 51, 6, 6, '21:10:09', 'money'),
(52, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 52, 6, 6, '21:10:09', 'in installments'),
(53, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 53, 6, 6, '21:10:09', 'in installments'),
(54, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 54, 6, 6, '21:10:09', 'money'),
(55, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 55, 6, 6, '21:10:09', 'money'),
(56, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 56, 6, 6, '21:10:09', 'in installments'),
(57, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 57, 6, 6, '21:10:09', 'in installments'),
(58, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 58, 6, 6, '21:10:09', 'money'),
(59, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 59, 7, 7, '21:10:09', 'in installments'),
(60, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 60, 7, 7, '21:10:09', 'in installments'),
(61, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 61, 7, 7, '21:10:09', 'in installments'),
(62, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 62, 7, 7, '21:10:09', 'money'),
(63, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 63, 7, 7, '21:10:09', 'money'),
(64, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 64, 7, 7, '21:10:09', 'in installments'),
(65, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 65, 7, 7, '21:10:09', 'in installments'),
(66, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 66, 7, 7, '21:10:09', 'money'),
(67, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 67, 7, 7, '21:10:09', 'money'),
(68, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 68, 8, 8, '21:10:09', 'money'),
(69, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 69, 8, 8, '21:10:09', 'money'),
(70, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 70, 8, 8, '21:10:09', 'in installments'),
(71, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 71, 8, 8, '21:10:09', 'money'),
(72, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 72, 8, 8, '21:10:09', 'money'),
(73, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 73, 8, 8, '21:10:09', 'in installments'),
(74, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 74, 8, 8, '21:10:09', 'in installments'),
(75, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 75, 8, 8, '21:10:09', 'in installments'),
(76, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 76, 9, 9, '21:10:09', 'money'),
(77, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 77, 9, 9, '21:10:09', 'in installments'),
(78, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 78, 9, 9, '21:10:09', 'in installments'),
(79, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 79, 9, 9, '21:10:09', 'money'),
(80, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 80, 9, 9, '21:10:09', 'in installments'),
(81, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 81, 9, 9, '21:10:09', 'money'),
(82, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 82, 9, 9, '21:10:09', 'money'),
(83, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 83, 9, 9, '21:10:09', 'money'),
(84, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 84, 9, 9, '21:10:09', 'money'),
(85, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 85, 9, 9, '21:10:09', 'money'),
(86, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 86, 9, 9, '21:10:09', 'in installments'),
(87, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 87, 9, 9, '21:10:09', 'money'),
(88, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 88, 9, 9, '21:10:09', 'in installments'),
(89, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 89, 9, 9, '21:10:09', 'in installments'),
(90, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 90, 9, 9, '21:10:09', 'money'),
(91, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 91, 10, 10, '21:10:09', 'money'),
(92, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 92, 10, 10, '21:10:09', 'in installments'),
(93, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 93, 10, 10, '21:10:09', 'in installments'),
(94, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 94, 10, 10, '21:10:09', 'money'),
(95, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 95, 10, 10, '21:10:09', 'in installments'),
(96, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 96, 10, 10, '21:10:09', 'in installments'),
(97, '2021-12-28 20:10:09', '2021-12-28 20:10:09', 97, 10, 10, '21:10:09', 'in installments');

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
(1, 'Dr. Willie Bosco', 'vboehm@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y7Bn98TneV', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(2, 'Claudine Hamill', 'glover.darrick@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MtxCy49VR5', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(3, 'Bailey Treutel II', 'fahey.stacey@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eaoNovqAcY', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(4, 'Kristopher McLaughlin PhD', 'rowland45@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vwBOV7JPDg', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(5, 'Velva Luettgen MD', 'dillon33@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rgEjLiNiWm', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(6, 'Rafael Raynor I', 'nya00@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1vC64geImP', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(7, 'Jada Zemlak', 'crystel.casper@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sWDVo3E3Vo', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(8, 'Dolores Hahn', 'treutel.christopher@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9COJPJ7aQZ', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(9, 'Joaquin Rippin', 'jacobi.ramon@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2X7yGbv7ZD', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(10, 'Leonie Bogan', 'emann@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O4jT6h9v52', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(11, 'Elena Casper PhD', 'wstoltenberg@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZpVqft5VIE', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(12, 'Shyann Graham', 'clara91@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rq0TALLH8C', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(13, 'Mrs. Imelda Flatley', 'winfield93@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bvO15YVN3P', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(14, 'Ryann Ratke', 'xavier.kris@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yGTk63B6Tf', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(15, 'Jerome Stiedemann', 'schmitt.earnestine@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lk331kPsug', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(16, 'Kallie Kohler', 'tomasa74@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '036yxgrxiF', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(17, 'Jerrell Runolfsdottir', 'yemard@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U0M0jBHMqL', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(18, 'Norberto Gaylord', 'rbradtke@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vPEozE0nXO', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(19, 'Mrs. Maureen Abernathy V', 'khalil12@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nuGvgYIgjo', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(20, 'Ms. Twila Gerhold', 'tyler14@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kzqTrwYZlw', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(21, 'Ms. Lia Green', 'reyna.johnston@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MyZgr8bhG2', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(22, 'Martine Prohaska', 'bret37@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H759XkusoE', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(23, 'Miss Elda Lynch', 'daniela40@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QfPPbU1iFl', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(24, 'Heloise Baumbach', 'melyssa82@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uUJdOBfgGM', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(25, 'Jaycee Streich', 'zschimmel@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n80ywjzUzM', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(26, 'Paxton Mraz IV', 'shaylee47@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K7F40EjN0V', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(27, 'Koby Hackett DDS', 'katheryn93@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r0OGItro5q', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(28, 'Jaquelin Jones', 'easton.lynch@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AfWQ0hoSXF', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(29, 'Mrs. Yasmeen Lueilwitz III', 'jast.carol@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '18L9Vxh3Rd', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(30, 'Gladyce Morissette', 'alison.witting@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fZeLr147kO', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(31, 'Hailie White', 'dock52@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'khmod462bU', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(32, 'Violette Miller', 'nwintheiser@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dr1TzIcRxu', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(33, 'Stephon Rosenbaum', 'corene.miller@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NYxnCCbggK', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(34, 'Gideon Funk', 'nluettgen@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p5iyc2qepB', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(35, 'Dr. Fritz Haag', 'larissa57@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bYurJZxVER', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(36, 'Shaina Hermann', 'maya.douglas@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vHSIV2YOzh', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(37, 'Judson Luettgen', 'nicholas50@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ohj41AN0rn', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(38, 'Ms. Retha Rolfson', 'eichmann.rubie@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hUwjjp85rk', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(39, 'Fletcher Heathcote Jr.', 'mayert.freeman@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u8W6lNuOXU', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(40, 'Prof. Joan Schmeler', 'lemke.anabel@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FxyHU0d5Iq', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(41, 'Miss Demetris Turcotte', 'vabshire@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SKptj2d2ec', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(42, 'Mr. Consuelo Skiles', 'lpaucek@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q3KYofTMOU', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(43, 'Janae Turner', 'lgerhold@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OET6rnwR7H', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(44, 'Clifton Durgan', 'emanuel05@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zbCShBO6i1', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(45, 'Kiera VonRueden', 'amya83@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h4zId9JoMq', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(46, 'Wilma Pacocha', 'mary28@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MOJbL5IIlf', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(47, 'Dr. Stephon Collier PhD', 'gnicolas@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rEfzpO8w0k', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(48, 'Enid Haley V', 'pkertzmann@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UCW0l2w3Hb', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(49, 'Regan Crist', 'zackary.bogisich@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HKq9xVgyBS', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(50, 'Madilyn Bruen', 'gritchie@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EYLwODvBjR', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(51, 'Arvid Smith', 'wyman.valentine@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ysMLk5gtCs', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(52, 'Ara Harvey I', 'mdooley@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zjWsbKIfgx', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(53, 'Glenda Robel', 'aidan52@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4FBdFHKJGU', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(54, 'Estell Nicolas', 'lucius38@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6ANpARvhwr', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(55, 'Prof. Jarrod Will', 'carmen.gusikowski@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ILVPW2h8NB', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(56, 'Dr. Tyler Dietrich III', 'feeney.kaitlin@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nBgG3UwovC', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(57, 'Virginia Ferry', 'blair45@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OJsV6w8tB2', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(58, 'Dawson Schinner', 'ethel25@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BD4DzBCvfp', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(59, 'Emerson Green', 'mtorp@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fhHIjOydcu', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(60, 'Richard Daugherty Sr.', 'napoleon.wintheiser@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CyG0387vDT', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(61, 'Kailyn Lemke', 'schinner.petra@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cwO6NVN9sI', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(62, 'Luciano Hartmann', 'arden.gutkowski@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k5GWZV6I2t', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(63, 'Tiara Heidenreich', 'brunolfsdottir@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nANN4c1BcB', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(64, 'Tobin Zboncak Jr.', 'jlind@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sRmrmlhrYV', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(65, 'Sabryna Smith', 'kemmer.gunnar@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0tlBdmhOnC', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(66, 'Augusta Hauck', 'walter.therese@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hY6H7fTGdp', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(67, 'Mable Lehner', 'ihills@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JpWocRFMxY', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(68, 'Delpha Osinski', 'jeramie.baumbach@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vEUrrizeDw', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(69, 'Donato Gorczany', 'chadd84@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EHJvUXatF7', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(70, 'Justina Padberg III', 'bauch.brian@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oe9q1BeoLL', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(71, 'Danika Feeney', 'kautzer.donavon@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm9cl4JWB3r', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(72, 'Madilyn Gutmann', 'ziemann.pattie@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KgYFlzQDfh', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(73, 'Malvina Bode', 'leonie93@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LVJZx0eZaM', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(74, 'Prof. Weston Adams IV', 'shayne46@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'niakyzKE9U', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(75, 'Julius Bashirian', 'alvah.harber@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TTProRCqcs', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(76, 'Katrina Leuschke', 'blick.dandre@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MaTSqvCwh5', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(77, 'Boris Friesen', 'ckilback@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tPihaxnOLg', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(78, 'Kathleen Legros', 'ywyman@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D5564YuRek', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(79, 'Titus Barton', 'alangosh@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qDFLgp8Nlo', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(80, 'Mrs. Willow Mohr', 'bruen.verla@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CaU50ooSTu', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(81, 'Rosa Zieme III', 'kihn.thomas@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AYmK0tuJI2', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(82, 'Simeon Herzog', 'keegan15@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZDnQZPLD99', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(83, 'Jazmin Eichmann DVM', 'mann.tressa@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B4HkM3NFuV', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(84, 'Ms. Jacky Keebler I', 'delbert05@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hWU7KJQfUY', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(85, 'Prof. Rigoberto Kirlin', 'dooley.kaela@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sp8BP1cxgg', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(86, 'Joel Gutmann', 'nkuhlman@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UbRrOQOwfq', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(87, 'Bessie Hyatt', 'moberbrunner@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6hnCQiWi6q', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(88, 'Dr. Marisol Carter', 'houston12@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2bkaPiEHYG', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(89, 'Hyman Keeling', 'nat.stehr@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qbfuk3NOBN', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(90, 'Nia Nitzsche', 'grayce41@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tw0SLvYhaY', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(91, 'Antonietta Blick', 'cleora37@example.net', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tQ5yX1qJig', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(92, 'Ms. Elody Stamm', 'okuneva.americo@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uu4e5wv2Ko', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(93, 'Lenny Reichert Jr.', 'korbin28@example.com', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EBYxFKFK31', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(94, 'Dr. Angelita Abbott DDS', 'gerard72@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tRWoJYt1R8', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(95, 'Timothy Swift', 'gmante@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yfXa49g8pa', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(96, 'Miss Allie Vandervort IV', 'sydni.osinski@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eksVqntEOf', '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(97, 'Miss Matilda Hirthe', 'kirk.veum@example.org', '2021-12-28 20:10:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aGoEyb18Ee', '2021-12-28 20:10:09', '2021-12-28 20:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_when_made` int(11) NOT NULL,
  `number_of_seats` int(11) NOT NULL,
  `number_of_doors` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `car_shop_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `company`, `model`, `year_when_made`, `number_of_seats`, `number_of_doors`, `price`, `car_shop_id`, `created_at`, `updated_at`) VALUES
(1, 'Lamborghini', 'Toyota Camry', 2008, 7, 5, 1105, 1, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(2, 'Lamborghini', 'Toyota Camry', 2006, 8, 5, 1922, 2, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(3, 'Toyota', 'Toyota Camry', 2005, 6, 5, 1516, 3, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(4, 'Lamborghini', 'Toyota Camry', 2013, 7, 5, 1447, 4, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(5, 'Lamborghini', 'Toyota Camry', 2017, 8, 5, 1065, 5, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(6, 'Lamborghini', 'Toyota Camry', 2003, 8, 5, 1435, 6, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(7, 'Lamborghini', 'Toyota Camry', 2004, 8, 5, 1731, 7, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(8, 'Lamborghini', 'Toyota Camry', 2011, 7, 5, 1126, 8, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(9, 'Lamborghini', 'Toyota Camry', 2014, 6, 5, 1476, 9, '2021-12-28 20:10:09', '2021-12-28 20:10:09'),
(10, 'Lamborghini', 'Toyota Camry', 2011, 6, 5, 985, 10, '2021-12-28 20:10:09', '2021-12-28 20:10:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_shops`
--
ALTER TABLE `car_shops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `car_shops_local_unique` (`local`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
