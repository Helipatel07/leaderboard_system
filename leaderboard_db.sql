-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 25, 2024 at 07:03 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leaderboard_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE IF NOT EXISTS `activities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `points` int NOT NULL DEFAULT '20',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, 20, '2024-12-18 18:30:00', '2024-10-25 13:05:20'),
(2, 1, 20, '2021-02-01 18:30:00', '2024-10-25 13:05:20'),
(3, 1, 20, '2024-04-15 18:30:00', '2024-10-25 13:05:20'),
(4, 2, 20, '2020-03-21 18:30:00', '2024-10-25 13:05:20'),
(5, 3, 20, '2024-06-15 18:30:00', '2024-10-25 13:05:20'),
(6, 3, 20, '2022-05-03 18:30:00', '2024-10-25 13:05:20'),
(7, 3, 20, '2020-07-17 18:30:00', '2024-10-25 13:05:20'),
(8, 3, 20, '2020-11-06 18:30:00', '2024-10-25 13:05:20'),
(9, 3, 20, '2022-03-09 18:30:00', '2024-10-25 13:05:20'),
(10, 3, 20, '2023-04-10 18:30:00', '2024-10-25 13:05:20'),
(11, 4, 20, '2024-07-26 18:30:00', '2024-10-25 13:05:20'),
(12, 4, 20, '2020-04-19 18:30:00', '2024-10-25 13:05:20'),
(13, 5, 20, '2024-12-14 18:30:00', '2024-10-25 13:05:20'),
(14, 5, 20, '2020-01-18 18:30:00', '2024-10-25 13:05:20'),
(15, 5, 20, '2020-02-06 18:30:00', '2024-10-25 13:05:20'),
(16, 5, 20, '2020-01-23 18:30:00', '2024-10-25 13:05:20'),
(17, 5, 20, '2020-03-05 18:30:00', '2024-10-25 13:05:20'),
(18, 6, 20, '2023-08-24 18:30:00', '2024-10-25 13:05:20'),
(19, 6, 20, '2021-03-19 18:30:00', '2024-10-25 13:05:20'),
(20, 6, 20, '2021-12-20 18:30:00', '2024-10-25 13:05:20'),
(21, 6, 20, '2024-01-26 18:30:00', '2024-10-25 13:05:20'),
(22, 7, 20, '2022-09-19 18:30:00', '2024-10-25 13:05:20'),
(23, 7, 20, '2020-12-07 18:30:00', '2024-10-25 13:05:20'),
(24, 8, 20, '2024-02-11 18:30:00', '2024-10-25 13:05:20'),
(25, 8, 20, '2020-08-13 18:30:00', '2024-10-25 13:05:20'),
(26, 8, 20, '2021-10-07 18:30:00', '2024-10-25 13:05:20'),
(27, 9, 20, '2023-07-12 18:30:00', '2024-10-25 13:05:20'),
(28, 9, 20, '2024-08-10 18:30:00', '2024-10-25 13:05:20'),
(29, 9, 20, '2021-01-15 18:30:00', '2024-10-25 13:05:20'),
(30, 9, 20, '2023-12-04 18:30:00', '2024-10-25 13:05:20'),
(31, 10, 20, '2024-03-05 18:30:00', '2024-10-25 13:05:20'),
(32, 10, 20, '2023-05-08 18:30:00', '2024-10-25 13:05:20'),
(33, 11, 20, '2022-08-10 18:30:00', '2024-10-25 13:05:20'),
(34, 11, 20, '2022-10-13 18:30:00', '2024-10-25 13:05:20'),
(35, 12, 20, '2022-12-21 18:30:00', '2024-10-25 13:05:20'),
(36, 12, 20, '2023-10-25 18:30:00', '2024-10-25 13:05:20'),
(37, 12, 20, '2023-09-25 18:30:00', '2024-10-25 13:05:20'),
(38, 13, 20, '2020-04-26 18:30:00', '2024-10-25 13:05:20'),
(39, 13, 20, '2024-03-18 18:30:00', '2024-10-25 13:05:20'),
(40, 13, 20, '2023-04-01 18:30:00', '2024-10-25 13:05:20'),
(41, 14, 20, '2023-12-16 18:30:00', '2024-10-25 13:05:20'),
(42, 14, 20, '2021-04-06 18:30:00', '2024-10-25 13:05:20'),
(43, 14, 20, '2023-04-18 18:30:00', '2024-10-25 13:05:20'),
(44, 14, 20, '2023-03-01 18:30:00', '2024-10-25 13:05:20'),
(45, 14, 20, '2023-01-16 18:30:00', '2024-10-25 13:05:20'),
(46, 15, 20, '2020-02-27 18:30:00', '2024-10-25 13:05:20'),
(47, 15, 20, '2020-09-29 18:30:00', '2024-10-25 13:05:20'),
(48, 15, 20, '2020-03-17 18:30:00', '2024-10-25 13:05:20'),
(49, 15, 20, '2020-11-03 18:30:00', '2024-10-25 13:05:20'),
(50, 15, 20, '2020-07-03 18:30:00', '2024-10-25 13:05:20'),
(51, 15, 20, '2024-01-05 18:30:00', '2024-10-25 13:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_25_155805_create_activities_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` int NOT NULL DEFAULT '0',
  `total_points` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `rank`, `total_points`, `created_at`, `updated_at`) VALUES
(1, 'Lea Ebert', 4, 60, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(2, 'Doyle Heller IV', 6, 20, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(3, 'Ricardo Russel', 1, 120, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(4, 'Columbus Homenick', 5, 40, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(5, 'Meaghan Morissette', 2, 100, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(6, 'Bonita Thiel I', 3, 80, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(7, 'Maritza Braun', 5, 40, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(8, 'Lynn Miller DVM', 4, 60, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(9, 'Prof. Gino Skiles III', 3, 80, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(10, 'Miss Avis Schmeler DVM', 5, 40, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(11, 'Velva Abernathy', 5, 40, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(12, 'Torey Kautzer', 4, 60, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(13, 'Odie Murray', 4, 60, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(14, 'Demarcus Block', 2, 100, '2024-10-25 13:05:20', '2024-10-25 13:05:30'),
(15, 'Loren O\'Kon', 1, 120, '2024-10-25 13:05:20', '2024-10-25 13:05:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
