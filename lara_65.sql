-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2025 at 07:54 AM
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-redoanul66hasib@gmail.com|127.0.0.1', 'i:3;', 1762409839),
('laravel-cache-redoanul66hasib@gmail.com|127.0.0.1:timer', 'i:1762409839;', 1762409839);

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
(5, '2025_10_27_042345_create_roles_table', 1),
(6, '2025_11_03_051510_create_status_table', 2);

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
(1, 'Admin', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(2, 'Author', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(3, 'Editor', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(4, 'Officer', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(5, 'Marketing Officer', '2025-10-29 21:20:59', '2025-10-29 21:20:59');

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GAhuteYS0TglrpPBVXr2NISC14OQyfGCBCI7UnFB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2tqMXAxc0pCdU1DQUgzanRSM2RYZVVhdk82clRJOUhHbkZXSjhwVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4MCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1761804525);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'rerum', 0, '2025-11-03 00:27:18', '2025-11-03 00:27:18'),
(2, 'consequuntur', 0, '2025-11-03 00:27:18', '2025-11-03 00:27:18'),
(3, 'nihil', 1, '2025-11-03 00:27:18', '2025-11-03 00:27:18'),
(4, 'ut', 1, '2025-11-03 00:27:18', '2025-11-03 00:27:18'),
(5, 'est', 1, '2025-11-03 00:27:18', '2025-11-03 00:27:18'),
(6, 'qui', 1, '2025-11-03 00:27:18', '2025-11-03 00:27:18'),
(7, 'vero', 1, '2025-11-03 00:27:18', '2025-11-03 00:27:18'),
(8, 'quia', 1, '2025-11-03 00:27:18', '2025-11-03 00:27:18'),
(9, 'et', 0, '2025-11-03 00:27:18', '2025-11-03 00:27:18'),
(10, 'dolorum', 0, '2025-11-03 00:27:18', '2025-11-03 00:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `role_id`, `photo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Dayne', 'Bergstrom', 'hagenes.susanna@example.net', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'P1MsCjx418', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(4, 'Miles', 'Konopelski', 'wsteuber@example.org', 1, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'hAlL1g4Ogs', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(5, 'Daphney', 'Hickle', 'zstark@example.net', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'uat9Z64Kai', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(6, 'Stephany', 'Collins', 'aniyah36@example.org', 4, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'BTo1ZVRVcn', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(7, 'Nyah', 'Ledner', 'lockman.stefanie@example.net', 1, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', '11TGFkRYFm', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(8, 'Ramon', 'Dooley', 'stone.jacobi@example.org', 4, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'Gquyeb4jSs', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(9, 'Eliseo', 'O\'Kon', 'tod80@example.net', 5, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'a38mYRhDDe', '2025-10-29 21:20:59', '2025-10-29 21:20:59'),
(10, 'Rashad', 'Purdy', 'lowe.reva@example.org', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'gNBjjUQQAv', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(11, 'Naomi', 'Kassulke', 'mallie.labadie@example.org', 5, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'rGhJAcrYvV', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(12, 'Ciara', 'Howell', 'xjacobi@example.com', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', '8hsaeZYwCN', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(13, 'Jane', 'Stiedemann', 'price28@example.com', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'rj7cTflj5A', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(14, 'Alexandrea', 'Sipes', 'powlowski.elody@example.com', 5, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'h8qOOAPXyH', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(15, 'Nels', 'Bruen', 'hbernier@example.com', 4, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', '1bzDptrC3m', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(16, 'Antonietta', 'Hammes', 'amiya.koss@example.com', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'ZQpiMKyQqZ', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(17, 'Roberto', 'Metz', 'yberge@example.net', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'sXDnq9VRsn', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(18, 'Jack', 'Jerde', 'caesar66@example.org', 4, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'hJcXOZYQLf', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(19, 'Clementina', 'Wunsch', 'lance13@example.org', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'VsSKWrejim', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(20, 'Hayley', 'Hudson', 'jwaters@example.com', 5, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'xV4pn5XHbb', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(21, 'Mia', 'McLaughlin', 'alanis.hilpert@example.net', 1, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', '0Vqa67SioZ', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(22, 'Mariano', 'Pacocha', 'lily.kerluke@example.net', 4, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'JRN1AQDEkd', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(23, 'Merlin', 'Brekke', 'gilberto06@example.org', 1, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'lkQLZZTZOm', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(24, 'Ramon', 'Sporer', 'williamson.rex@example.org', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'FLsS68B3P9', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(25, 'Rudolph', 'Rutherford', 'dcronin@example.org', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'G1ZwJrUYKe', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(26, 'Randy', 'Pfizer', 'simonis.susan@example.net', 4, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', '7eKF2va5zU', '2025-10-29 21:21:00', '2025-10-29 21:30:01'),
(28, 'Jacky', 'Kutch', 'cassidy42@example.net', 5, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'Q06iaGqc5A', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(29, 'Christiana', 'Frami', 'kovacek.heath@example.net', 5, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'Cto3i6n973', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(30, 'Celestino', 'Hermann', 'kertzmann.dolly@example.org', 5, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'XcNPaWcEMb', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(31, 'Orrin', 'Kuhlman', 'flavie.schimmel@example.org', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'sDOtdJ1Obd', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(32, 'Ferne', 'Kirlin', 'okeefe.gregory@example.com', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'kKXbhVATq4', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(33, 'Raymond', 'Moen', 'palma69@example.net', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', '7B7qNIM0py', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(34, 'Deborah', 'Parker', 'rbarton@example.org', 4, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', '6qAV1Ix7h1', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(35, 'Madilyn', 'Heller', 'neha04@example.org', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', '6rxqIpVd9a', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(36, 'Caterina', 'Stoltenberg', 'kessler.ted@example.net', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'mHjJUI00gk', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(37, 'Alison', 'Wolf', 'uborer@example.net', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'pso3kkteQ3', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(38, 'Brendan', 'Hilpert', 'ines52@example.org', 5, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'LH5MQuRibp', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(39, 'Verner', 'Bernier', 'carmel95@example.org', 5, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'goZ4EXLxMZ', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(40, 'Bennett', 'Thompson', 'brandi99@example.com', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'AMTvQQDQ6L', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(41, 'Deontae', 'Williamson', 'vella62@example.net', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'FXqoxKxBXZ', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(42, 'Florida', 'Nitzsche', 'pgoldner@example.org', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', '67rgJn3YXB', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(43, 'Felicity', 'Bins', 'thomas.kuphal@example.org', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'NCmkfhdWz3', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(44, 'Deborah', 'Cormier', 'kristopher.gibson@example.net', 1, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'JV9qf48Xu3', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(45, 'Molly', 'Jakubowski', 'germaine32@example.com', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'A2ftCAVnMU', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(46, 'Glenna', 'Reynolds', 'enid.beier@example.com', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'O0b537vXkB', '2025-10-29 21:21:00', '2025-10-29 21:21:00'),
(47, 'Vance', 'Koelpin', 'fturner@example.com', 2, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'hyd7DsgJBV', '2025-10-29 21:21:01', '2025-10-29 21:21:01'),
(48, 'Viola', 'Stanton', 'frances26@example.net', 5, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'v2VOFpXYjl', '2025-10-29 21:21:01', '2025-10-29 21:21:01'),
(49, 'Jeff', 'Bezos', 'bjacobs@example.org', 3, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'g9GzMKrQdl', '2025-10-29 21:21:01', '2025-10-29 21:29:39'),
(50, 'Amos', 'Ryan', 'nora.kunze@example.net', 4, NULL, '2025-10-29 21:20:59', '$2y$12$c86yPWGPxiw6c1cWUhKo3.OMjTJe5gq0nWY0yvK7FvdV000tYRvtO', 'gSSgxNdm45', '2025-10-29 21:21:01', '2025-10-29 21:21:01'),
(51, 'J.K.', 'Rowling', 'jk@mail.com', 2, 'users/dEri7GCVbIftCIUngTo3VWYulliGfJOzpeHSjiUI.jpg', NULL, '$2y$12$vzmifNDCgN4KpPWwymiV2OzuucfDfbUl9JwFHsxkrzLM3xgOsIzuO', NULL, '2025-10-29 23:05:22', '2025-10-29 23:05:22'),
(53, 'example', 'name', 'ex@example.com', 0, NULL, NULL, '$2y$12$LBO4ODoMo/o/nfqFXgOmXudSys2RK47TZmd6MPzhuzstfrF8PSCJ.', NULL, NULL, NULL),
(54, 'example', 'name', 'ex@mail.com', 3, NULL, NULL, '$2y$12$LBO4ODoMo/o/nfqFXgOmXudSys2RK47TZmd6MPzhuzstfrF8PSCJ.', NULL, NULL, NULL),
(55, 'Mina', 'M.', 'mina@mail.com', 3, NULL, NULL, '$2y$12$V3C/Xbx6NHjeEx2yH7B1eupsOxDWSpRlL7h6wqxdaqoLPVvaNBpdy', NULL, '2025-11-01 01:01:19', '2025-11-01 01:01:19'),
(56, 'Hei', 'Man', 'hei@mail.com', 4, NULL, NULL, '$2y$12$fFTsnzgBHrhMkkwr3.N3fewBxKlGbKvnM4nemnBvVyNGgZld1DW7y', NULL, '2025-11-03 23:47:59', '2025-11-03 23:47:59'),
(57, 'Aug', 'r.....', 'augr@mail.com', 4, NULL, NULL, '$2y$12$/TytOaTwbyjNHUcKDNEqKOflJJ831Jdu2UhHoh6J8jWp0vIiIuUjm', NULL, '2025-11-03 23:53:53', '2025-11-03 23:53:53'),
(58, 'Cieloooo', 'Raynor', 'cielooo@asdfjhasdf.com', 5, NULL, NULL, '$2y$12$QZIeq4izwoRqLrAQ1JzdqugCyOKzpHaQHRF4GC0UgxnPsgB1iLF0O', NULL, '2025-11-03 23:57:48', '2025-11-03 23:57:48'),
(59, 'jjjjjjjj', 'kkkkkkkk', 'jjjkkk@mail.com', 5, NULL, NULL, '$2y$12$m/5CBy6IHSGqO1Vvx9gtUePbb7ZHGOTAg4M8lRoOK1CKuAn3hyVx2', NULL, '2025-11-04 00:27:01', '2025-11-04 00:27:01'),
(60, 'R.', 'Hasib', 'hasib@example.com', 2, NULL, NULL, '$2y$12$CY1GQlsCF8UGzt.koqNRK.3qgfCyoU1JJEnk5MB0fgJLpg7zMo0rC', NULL, '2025-11-04 00:30:51', '2025-11-04 00:30:51'),
(61, 'R.H.', 'Prottoy', 'redoanul66hasib@gmail.com', 1, NULL, NULL, '$2y$12$vk0jVaxXtnIxDN/vThx7DO93TffcgP9XOjxqVo48GyUPtAVX.IU0i', 'xYMawaDYjKXj1ejPW896SZktTDG1HRArWbuaTcM9TwEz7ozzfDVKLgznWa0K', '2025-11-04 00:48:38', '2025-11-05 00:02:50');

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
-- Indexes for table `status`
--
ALTER TABLE `status`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
