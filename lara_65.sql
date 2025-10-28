-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2025 at 08:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_65`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_27_032452_crete_status_table', 1),
(5, '2025_10_27_042345_create_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2025-10-26 22:29:29', '2025-10-26 22:29:29'),
(2, 'Editor', '2025-10-26 22:29:29', '2025-10-26 22:29:29'),
(3, 'Author', '2025-10-26 22:29:29', '2025-10-26 22:29:29'),
(4, 'Officer', '2025-10-26 22:29:29', '2025-10-26 22:29:29'),
(5, 'Sales Person', '2025-10-26 22:29:29', '2025-10-26 22:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Timothy', 'Dare', 'nolan.callie@example.org', '1', '2025-10-26 22:29:29', '$2y$12$3avLoDIGmUGXJoQWGzSKoO/ag9mlNRufeYZVdV80uFV/vJVDkaoVy', 'cNMu9gUh3x', '2025-10-26 22:29:29', '2025-10-26 22:29:29'),
(2, 'Reba', 'Heller', 'rodger42@example.org', '3', '2025-10-26 22:29:29', '$2y$12$3avLoDIGmUGXJoQWGzSKoO/ag9mlNRufeYZVdV80uFV/vJVDkaoVy', 'gTvyU6ki3g', '2025-10-26 22:29:29', '2025-10-26 22:29:29'),
(3, 'Autumn', 'Torp', 'maggio.felipa@example.com', '2', '2025-10-26 22:29:29', '$2y$12$3avLoDIGmUGXJoQWGzSKoO/ag9mlNRufeYZVdV80uFV/vJVDkaoVy', '8IpjT7gQhs', '2025-10-26 22:29:30', '2025-10-26 22:29:30'),
(4, 'Lucius', 'Kuphal', 'rutherford.josiah@example.org', '3', '2025-10-26 22:29:29', '$2y$12$3avLoDIGmUGXJoQWGzSKoO/ag9mlNRufeYZVdV80uFV/vJVDkaoVy', '8GGVrKt12c', '2025-10-26 22:29:30', '2025-10-26 22:29:30'),
(5, 'Giovanny', 'Trantow', 'lyda.hansen@example.com', '4', '2025-10-26 22:29:29', '$2y$12$3avLoDIGmUGXJoQWGzSKoO/ag9mlNRufeYZVdV80uFV/vJVDkaoVy', 'YUtg4f7Bx6', '2025-10-26 22:29:30', '2025-10-26 22:29:30'),
(6, 'Minerva', 'Von', 'rachelle.rogahn@example.org', '4', '2025-10-26 22:29:29', '$2y$12$3avLoDIGmUGXJoQWGzSKoO/ag9mlNRufeYZVdV80uFV/vJVDkaoVy', 'YfafuCfYSm', '2025-10-26 22:29:30', '2025-10-26 22:29:30'),
(7, 'Anabelle', 'Lockman', 'ike.jenkins@example.org', '5', '2025-10-26 22:29:29', '$2y$12$3avLoDIGmUGXJoQWGzSKoO/ag9mlNRufeYZVdV80uFV/vJVDkaoVy', 'tCgup7386N', '2025-10-26 22:29:30', '2025-10-26 22:29:30'),
(8, 'Buford', 'Blick', 'theodore33@example.com', '1', '2025-10-26 22:29:29', '$2y$12$3avLoDIGmUGXJoQWGzSKoO/ag9mlNRufeYZVdV80uFV/vJVDkaoVy', 'mzRHlOpbj2', '2025-10-26 22:29:30', '2025-10-26 22:29:30'),
(9, 'Tianna', 'Larkin', 'ksenger@example.com', '5', '2025-10-26 22:29:29', '$2y$12$3avLoDIGmUGXJoQWGzSKoO/ag9mlNRufeYZVdV80uFV/vJVDkaoVy', 'SAb6j34Osh', '2025-10-26 22:29:30', '2025-10-26 22:29:30'),
(10, 'Elbert', 'Kemmer', 'tschoen@example.net', '1', '2025-10-26 22:29:29', '$2y$12$3avLoDIGmUGXJoQWGzSKoO/ag9mlNRufeYZVdV80uFV/vJVDkaoVy', 'VPBiWWMn7F', '2025-10-26 22:29:30', '2025-10-26 22:29:30'),
(11, 'Twila', 'Nicolas', 'turner.tina@example.net', '2', '2025-10-27 00:25:44', '$2y$12$fJf4eotaAwENqnr9efGjP.OABKcVt1aZNcbHY3AYuMdtL80EWBucC', 'KkULB8Wnt8', '2025-10-27 00:25:44', '2025-10-27 00:25:44'),
(12, 'Ayana', 'Mueller', 'rosalee04@example.org', '4', '2025-10-27 00:25:44', '$2y$12$fJf4eotaAwENqnr9efGjP.OABKcVt1aZNcbHY3AYuMdtL80EWBucC', 'dG20jA3ICP', '2025-10-27 00:25:44', '2025-10-27 00:25:44'),
(13, 'Stephan', 'Halvorson', 'wintheiser.harrison@example.org', '1', '2025-10-27 00:25:44', '$2y$12$fJf4eotaAwENqnr9efGjP.OABKcVt1aZNcbHY3AYuMdtL80EWBucC', 'FnwpeFeYdW', '2025-10-27 00:25:44', '2025-10-27 00:25:44'),
(14, 'Alessia', 'Olson', 'mwest@example.net', '1', '2025-10-27 00:25:44', '$2y$12$fJf4eotaAwENqnr9efGjP.OABKcVt1aZNcbHY3AYuMdtL80EWBucC', 'M2dPQXSVnl', '2025-10-27 00:25:44', '2025-10-27 00:25:44'),
(15, 'Cleveland', 'Crona', 'hailie31@example.com', '2', '2025-10-27 00:25:44', '$2y$12$fJf4eotaAwENqnr9efGjP.OABKcVt1aZNcbHY3AYuMdtL80EWBucC', 'tg3sUVKXR0', '2025-10-27 00:25:44', '2025-10-27 00:25:44'),
(16, 'Breanna', 'Jacobi', 'wilkinson.adrienne@example.com', '9', '2025-10-27 00:25:44', '$2y$12$fJf4eotaAwENqnr9efGjP.OABKcVt1aZNcbHY3AYuMdtL80EWBucC', 'LccXOTIYjP', '2025-10-27 00:25:44', '2025-10-27 00:25:44'),
(17, 'Eugene', 'Bogan', 'stehr.marilou@example.com', '3', '2025-10-27 00:25:44', '$2y$12$fJf4eotaAwENqnr9efGjP.OABKcVt1aZNcbHY3AYuMdtL80EWBucC', '2vhi1CHfwX', '2025-10-27 00:25:44', '2025-10-27 00:25:44'),
(18, 'Meta', 'Roberts', 'carolanne.blick@example.net', '9', '2025-10-27 00:25:44', '$2y$12$fJf4eotaAwENqnr9efGjP.OABKcVt1aZNcbHY3AYuMdtL80EWBucC', '0jKVIk1aWt', '2025-10-27 00:25:44', '2025-10-27 00:25:44'),
(19, 'Beaulah', 'Koss', 'zaria29@example.org', '1', '2025-10-27 00:25:44', '$2y$12$fJf4eotaAwENqnr9efGjP.OABKcVt1aZNcbHY3AYuMdtL80EWBucC', 'd18XhyuAKg', '2025-10-27 00:25:44', '2025-10-27 00:25:44'),
(20, 'Cielo', 'Lemke', 'eturner@example.com', '7', '2025-10-27 00:25:44', '$2y$12$fJf4eotaAwENqnr9efGjP.OABKcVt1aZNcbHY3AYuMdtL80EWBucC', 'krgXxxTNip', '2025-10-27 00:25:44', '2025-10-27 00:25:44'),
(21, 'Josie', 'Shanahan', 'jovan.wiegand@example.net', '15', '2025-10-27 00:25:53', '$2y$12$jPt6QR0iEhtKia/wBXiy6.7f7hxhJknxx6v6LODE.UmjsGxu8kJ72', 'YmAFdNBkiD', '2025-10-27 00:25:54', '2025-10-27 00:25:54'),
(22, 'Austyn', 'Senger', 'emmerich.horace@example.com', '6', '2025-10-27 00:25:54', '$2y$12$jPt6QR0iEhtKia/wBXiy6.7f7hxhJknxx6v6LODE.UmjsGxu8kJ72', '91EyYpfWiI', '2025-10-27 00:25:54', '2025-10-27 00:25:54'),
(23, 'Amani', 'Schaefer', 'clarkin@example.org', '3', '2025-10-27 00:25:54', '$2y$12$jPt6QR0iEhtKia/wBXiy6.7f7hxhJknxx6v6LODE.UmjsGxu8kJ72', '1COthgCsBj', '2025-10-27 00:25:54', '2025-10-27 00:25:54'),
(24, 'Noemie', 'Kutch', 'feeney.mina@example.net', '1', '2025-10-27 00:25:54', '$2y$12$jPt6QR0iEhtKia/wBXiy6.7f7hxhJknxx6v6LODE.UmjsGxu8kJ72', 'WU5UP9e3My', '2025-10-27 00:25:54', '2025-10-27 00:25:54'),
(25, 'Monica', 'Orn', 'gottlieb.miracle@example.com', '11', '2025-10-27 00:25:54', '$2y$12$jPt6QR0iEhtKia/wBXiy6.7f7hxhJknxx6v6LODE.UmjsGxu8kJ72', 'iPrXxrSYS0', '2025-10-27 00:25:54', '2025-10-27 00:25:54'),
(27, 'Mitchel', 'Haag', 'tito.predovic@example.org', '11', '2025-10-27 00:25:54', '$2y$12$jPt6QR0iEhtKia/wBXiy6.7f7hxhJknxx6v6LODE.UmjsGxu8kJ72', 'MCQUFFvq77', '2025-10-27 00:25:54', '2025-10-27 00:25:54'),
(28, 'Noble', 'Huels', 'ddavis@example.com', '12', '2025-10-27 00:25:54', '$2y$12$jPt6QR0iEhtKia/wBXiy6.7f7hxhJknxx6v6LODE.UmjsGxu8kJ72', 'OaanEQDKMO', '2025-10-27 00:25:54', '2025-10-27 00:25:54'),
(29, 'Melvina', 'McKenzie', 'ugreenfelder@example.com', '11', '2025-10-27 00:25:54', '$2y$12$jPt6QR0iEhtKia/wBXiy6.7f7hxhJknxx6v6LODE.UmjsGxu8kJ72', 'KIvQiQvqPQ', '2025-10-27 00:25:54', '2025-10-27 00:25:54'),
(30, 'Riley', 'Cassin', 'kaitlin.breitenberg@example.org', '10', '2025-10-27 00:25:54', '$2y$12$jPt6QR0iEhtKia/wBXiy6.7f7hxhJknxx6v6LODE.UmjsGxu8kJ72', 'WT5J7ZseQG', '2025-10-27 00:25:54', '2025-10-27 00:25:54'),
(31, 'Manley', 'Weimann', 'elmore.romaguera@example.net', '8', '2025-10-27 00:25:57', '$2y$12$RxGOu5QBthaK4vBAbebt7.HOFWncxrxmCEBXgvsbWKwIZk6Eg5fTy', 'rxaOxGG7C2', '2025-10-27 00:25:57', '2025-10-27 00:25:57'),
(32, 'Adeline', 'Sipes', 'kfisher@example.com', '18', '2025-10-27 00:25:57', '$2y$12$RxGOu5QBthaK4vBAbebt7.HOFWncxrxmCEBXgvsbWKwIZk6Eg5fTy', '1sdSLWEaIm', '2025-10-27 00:25:57', '2025-10-27 00:25:57'),
(33, 'Britney', 'Beer', 'waters.marcia@example.com', '12', '2025-10-27 00:25:57', '$2y$12$RxGOu5QBthaK4vBAbebt7.HOFWncxrxmCEBXgvsbWKwIZk6Eg5fTy', 's3TOl5Gi4p', '2025-10-27 00:25:57', '2025-10-27 00:25:57'),
(35, 'Randall', 'Kulas', 'bertram58@example.org', '8', '2025-10-27 00:25:57', '$2y$12$RxGOu5QBthaK4vBAbebt7.HOFWncxrxmCEBXgvsbWKwIZk6Eg5fTy', 'Eqi6JOY2DR', '2025-10-27 00:25:57', '2025-10-27 00:25:57'),
(36, 'Thelma', 'Dare', 'laurine.stokes@example.com', '4', '2025-10-27 00:25:57', '$2y$12$RxGOu5QBthaK4vBAbebt7.HOFWncxrxmCEBXgvsbWKwIZk6Eg5fTy', 'dPJe7RvwPi', '2025-10-27 00:25:57', '2025-10-27 00:25:57'),
(37, 'Sheila', 'Gutmann', 'hagenes.michale@example.com', '2', '2025-10-27 00:25:57', '$2y$12$RxGOu5QBthaK4vBAbebt7.HOFWncxrxmCEBXgvsbWKwIZk6Eg5fTy', 'mfcAoAVnC1', '2025-10-27 00:25:57', '2025-10-27 00:25:57'),
(38, 'Velma', 'Fay', 'earl74@example.net', '5', '2025-10-27 00:25:57', '$2y$12$RxGOu5QBthaK4vBAbebt7.HOFWncxrxmCEBXgvsbWKwIZk6Eg5fTy', 'STbp42hFtD', '2025-10-27 00:25:57', '2025-10-27 00:25:57'),
(39, 'Gerard', 'Roob', 'cristal.leffler@example.org', '9', '2025-10-27 00:25:57', '$2y$12$RxGOu5QBthaK4vBAbebt7.HOFWncxrxmCEBXgvsbWKwIZk6Eg5fTy', 'CCNE8sA1p4', '2025-10-27 00:25:57', '2025-10-27 00:25:57'),
(40, 'Sarai', 'Hessel', 'larry.stracke@example.org', '11', '2025-10-27 00:25:57', '$2y$12$RxGOu5QBthaK4vBAbebt7.HOFWncxrxmCEBXgvsbWKwIZk6Eg5fTy', 'vuUVeveSFd', '2025-10-27 00:25:57', '2025-10-27 00:25:57'),
(41, 'Elwyn', 'Price', 'lilyan.bauch@example.org', '25', '2025-10-27 00:25:59', '$2y$12$7dNFIs2tbPmJKJcZsEoWR.hLWhx2h8yVKlSPXZko/f890f2gKsKpG', 'XGp0Ckdtdn', '2025-10-27 00:26:00', '2025-10-27 00:26:00'),
(42, 'Serena', 'McLaughlin', 'vpouros@example.com', '18', '2025-10-27 00:26:00', '$2y$12$7dNFIs2tbPmJKJcZsEoWR.hLWhx2h8yVKlSPXZko/f890f2gKsKpG', 'Hr2MOCWhCX', '2025-10-27 00:26:00', '2025-10-27 00:26:00'),
(43, 'Amani', 'Dare', 'denis08@example.org', '11', '2025-10-27 00:26:00', '$2y$12$7dNFIs2tbPmJKJcZsEoWR.hLWhx2h8yVKlSPXZko/f890f2gKsKpG', '2t2wHzr7c6', '2025-10-27 00:26:00', '2025-10-27 00:26:00'),
(44, 'Helena', 'Cole', 'emilia67@example.com', '2', '2025-10-27 00:26:00', '$2y$12$7dNFIs2tbPmJKJcZsEoWR.hLWhx2h8yVKlSPXZko/f890f2gKsKpG', 'QcIxYGW3Wb', '2025-10-27 00:26:00', '2025-10-27 00:26:00'),
(45, 'Americo', 'Cruickshank', 'terrence61@example.org', '3', '2025-10-27 00:26:00', '$2y$12$7dNFIs2tbPmJKJcZsEoWR.hLWhx2h8yVKlSPXZko/f890f2gKsKpG', '3lx0fq4Cig', '2025-10-27 00:26:00', '2025-10-27 00:26:00'),
(46, 'Katrine', 'Schimmel', 'neoma.sauer@example.org', '5', '2025-10-27 00:26:00', '$2y$12$7dNFIs2tbPmJKJcZsEoWR.hLWhx2h8yVKlSPXZko/f890f2gKsKpG', 'q5ROFFLr6Q', '2025-10-27 00:26:00', '2025-10-27 00:26:00'),
(47, 'Augustine', 'Raynor', 'chance.mckenzie@example.net', '8', '2025-10-27 00:26:00', '$2y$12$7dNFIs2tbPmJKJcZsEoWR.hLWhx2h8yVKlSPXZko/f890f2gKsKpG', 'Wi2NLNhksT', '2025-10-27 00:26:00', '2025-10-27 00:26:00'),
(61, 'R.H.', 'Prottoy', 'prottoy@mail.com', '1', NULL, '$2y$12$LO2ss9KPiWO./FKZzyu8puSn5HvT6deES0gcA1ym7I8vrfwbU1TCG', NULL, '2025-10-28 00:47:15', '2025-10-28 00:47:15'),
(62, 'R.H.', 'Prottoy', 'hasib@example.com', '1', NULL, '$2y$12$SxYR3KpOtWWoUmg48olGZeOyoHqh290arWpXJcdeN5PPOoHLj6l.y', NULL, '2025-10-28 01:16:31', '2025-10-28 01:16:31');

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
