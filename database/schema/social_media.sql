-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 06:31 PM
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
-- Database: `social_media`
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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tweet_id` bigint(20) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `tweet_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 191, 'el3oda fel monshar', '2025-04-12 13:50:15', '2025-04-12 13:50:15');

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
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `following_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `follower_id`, `following_id`, `created_at`, `updated_at`) VALUES
(1, 36, 48, '2025-04-12 13:44:57', '2025-04-12 13:44:57'),
(2, 26, 26, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(3, 43, 11, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(4, 31, 11, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(5, 22, 7, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(6, 31, 41, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(7, 35, 14, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(8, 41, 29, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(9, 22, 34, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(10, 47, 35, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(11, 26, 26, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(12, 20, 16, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(13, 22, 1, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(14, 8, 35, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(15, 28, 50, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(16, 10, 25, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(17, 1, 33, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(18, 37, 46, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(19, 51, 21, '2025-04-12 13:44:58', '2025-04-12 13:44:58'),
(20, 7, 46, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(21, 47, 42, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(22, 20, 34, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(23, 5, 5, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(24, 21, 3, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(25, 10, 43, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(26, 26, 31, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(27, 4, 46, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(28, 41, 43, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(29, 23, 16, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(30, 37, 19, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(31, 32, 29, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(32, 2, 29, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(33, 20, 36, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(34, 48, 41, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(35, 23, 25, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(36, 16, 22, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(37, 31, 17, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(38, 8, 34, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(39, 29, 43, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(40, 51, 4, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(41, 43, 21, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(42, 24, 22, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(43, 22, 30, '2025-04-12 13:44:59', '2025-04-12 13:44:59'),
(44, 22, 28, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(45, 6, 40, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(46, 33, 38, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(47, 13, 3, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(48, 14, 6, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(49, 37, 21, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(50, 4, 8, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(51, 47, 7, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(52, 27, 17, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(53, 11, 20, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(54, 11, 19, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(55, 17, 50, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(56, 32, 51, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(57, 22, 10, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(58, 28, 34, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(59, 29, 47, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(60, 22, 40, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(61, 22, 28, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(62, 8, 46, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(63, 23, 12, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(64, 8, 5, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(65, 42, 48, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(66, 19, 11, '2025-04-12 13:45:00', '2025-04-12 13:45:00'),
(67, 19, 29, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(68, 9, 13, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(69, 19, 42, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(70, 27, 36, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(71, 38, 15, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(72, 37, 43, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(73, 44, 8, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(74, 41, 46, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(75, 9, 23, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(76, 3, 36, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(77, 39, 31, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(78, 20, 26, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(79, 9, 38, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(80, 2, 24, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(81, 44, 27, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(82, 9, 31, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(83, 23, 44, '2025-04-12 13:45:01', '2025-04-12 13:45:01'),
(84, 36, 38, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(85, 34, 45, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(86, 36, 18, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(87, 20, 42, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(88, 8, 2, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(89, 1, 8, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(90, 15, 40, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(91, 26, 17, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(92, 6, 34, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(93, 50, 29, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(94, 10, 9, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(95, 40, 39, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(96, 39, 2, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(97, 11, 12, '2025-04-12 13:45:02', '2025-04-12 13:45:02'),
(98, 51, 3, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(99, 4, 42, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(100, 27, 37, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(101, 39, 32, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(102, 13, 42, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(103, 50, 47, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(104, 18, 34, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(105, 15, 19, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(106, 50, 38, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(107, 9, 43, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(108, 17, 42, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(109, 13, 42, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(110, 32, 17, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(111, 28, 37, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(112, 15, 31, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(113, 24, 32, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(114, 43, 46, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(115, 14, 20, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(116, 40, 18, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(117, 31, 24, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(118, 29, 51, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(119, 42, 15, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(120, 48, 26, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(121, 11, 7, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(122, 30, 34, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(123, 43, 2, '2025-04-12 13:45:03', '2025-04-12 13:45:03'),
(124, 25, 4, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(125, 37, 31, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(126, 5, 12, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(127, 41, 30, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(128, 44, 26, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(129, 27, 27, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(130, 31, 50, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(131, 7, 44, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(132, 45, 15, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(133, 21, 20, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(134, 16, 13, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(135, 22, 5, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(136, 17, 22, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(137, 30, 12, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(138, 51, 27, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(139, 51, 14, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(140, 3, 40, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(141, 4, 37, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(142, 19, 42, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(143, 24, 36, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(144, 10, 1, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(145, 50, 34, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(146, 39, 49, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(147, 33, 30, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(148, 38, 24, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(149, 28, 29, '2025-04-12 13:45:04', '2025-04-12 13:45:04'),
(150, 7, 48, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(151, 27, 28, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(152, 42, 14, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(153, 7, 15, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(154, 26, 30, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(155, 50, 30, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(156, 41, 30, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(157, 38, 31, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(158, 30, 23, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(159, 51, 50, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(160, 4, 37, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(161, 48, 9, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(162, 5, 35, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(163, 27, 10, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(164, 3, 46, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(165, 29, 16, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(166, 40, 20, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(167, 9, 24, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(168, 32, 44, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(169, 45, 49, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(170, 7, 14, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(171, 30, 37, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(172, 14, 31, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(173, 31, 45, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(174, 36, 31, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(175, 31, 1, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(176, 9, 32, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(177, 50, 45, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(178, 26, 22, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(179, 31, 17, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(180, 43, 48, '2025-04-12 13:45:05', '2025-04-12 13:45:05'),
(181, 39, 34, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(182, 2, 9, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(183, 5, 44, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(184, 4, 14, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(185, 37, 11, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(186, 5, 36, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(187, 3, 5, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(188, 21, 33, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(189, 45, 46, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(190, 12, 6, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(191, 30, 50, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(192, 34, 12, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(193, 31, 34, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(194, 25, 31, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(195, 1, 18, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(196, 20, 43, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(197, 45, 50, '2025-04-12 13:45:06', '2025-04-12 13:45:06'),
(198, 6, 29, '2025-04-12 13:45:07', '2025-04-12 13:45:07'),
(199, 7, 6, '2025-04-12 13:45:07', '2025-04-12 13:45:07'),
(200, 2, 46, '2025-04-12 13:45:07', '2025-04-12 13:45:07'),
(201, 1, 2, NULL, NULL),
(202, 1, 23, NULL, NULL),
(203, 1, 4, NULL, NULL);

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
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tweet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `tweet_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-04-12 13:47:35', '2025-04-12 13:47:35'),
(2, 1, 4, '2025-04-12 13:47:42', '2025-04-12 13:47:42'),
(3, 1, 6, '2025-04-12 13:47:48', '2025-04-12 13:47:48'),
(4, 1, 191, '2025-04-12 13:49:06', '2025-04-12 13:49:06');

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
(4, '2025_04_12_124445_create_personal_access_tokens_table', 1),
(5, '2025_04_12_132406_create_tweets_table', 1),
(6, '2025_04_12_133422_create_likes_table', 1),
(7, '2025_04_12_134008_create_comments_table', 1),
(8, '2025_04_12_134339_create_followers_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'e2b9204bdc5e493ea203dc0a67e8e3254bba2f70f86ece01be83708b525af7dd', '[\"*\"]', '2025-04-12 13:50:54', NULL, '2025-04-12 13:41:11', '2025-04-12 13:50:54');

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
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(140) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 39, 'Dolorem quia voluptatem eum consequatur et officia et adipisci temporibus quo placeat.', '2025-04-12 13:44:30', '2025-04-12 13:44:30'),
(2, 26, 'Quo rerum quaerat quaerat aut tempore dolorem cupiditate cum accusamus nostrum veniam commodi aut.', '2025-04-12 13:44:30', '2025-04-12 13:44:30'),
(3, 10, 'Odit eius adipisci et sequi rerum aut nihil minima quibusdam accusamus esse mollitia.', '2025-04-12 13:44:30', '2025-04-12 13:44:30'),
(4, 48, 'Aliquam sunt id est alias consequatur laborum consequuntur error eligendi explicabo omnis aut.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(5, 14, 'Vel asperiores enim id et et aliquam distinctio ipsum quis odit eum.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(6, 39, 'Officia voluptatem aut suscipit vitae ut et atque molestiae eligendi laboriosam reprehenderit.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(7, 10, 'Placeat quod aut qui repellat rerum qui magni autem beatae porro dolores voluptatum voluptatem ad.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(8, 47, 'Eos ex nemo ipsam debitis aut placeat molestiae dicta aut.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(9, 48, 'Est excepturi iure sed tempora accusamus sapiente in iste voluptatem accusantium placeat exercitationem eveniet.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(10, 50, 'Exercitationem ratione earum non autem ut quis.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(11, 2, 'Qui dicta reprehenderit debitis enim eos quia consequatur aut sed eos vel incidunt doloremque.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(12, 41, 'Dolor repellendus quo corporis quibusdam ad est sed quibusdam nihil non laudantium.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(13, 11, 'Aliquid eum aliquid error delectus asperiores qui unde esse quisquam ea repellat nesciunt.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(14, 12, 'Voluptatem distinctio tenetur sint in eum ducimus cupiditate atque blanditiis sit.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(15, 46, 'Porro ipsam minus fugit vel quis minima qui rerum ipsa quos qui repudiandae qui.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(16, 12, 'Et consequatur eum porro fugit earum odit consequatur dolores.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(17, 18, 'Quasi sit est voluptas fugiat maiores quaerat beatae et tempore blanditiis dolore.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(18, 26, 'Ipsa eos quam assumenda unde assumenda est sed sed fugiat sit culpa.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(19, 13, 'Earum sed nihil reprehenderit quam et autem et unde eveniet quae odio aperiam.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(20, 39, 'Est ipsa veritatis quas nisi optio rerum.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(21, 14, 'Maxime eos repudiandae eius voluptas reprehenderit libero alias laborum.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(22, 22, 'Consectetur aut culpa ex ut totam quibusdam a dolorem.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(23, 37, 'Doloremque alias maxime hic sit provident non sunt et consequatur molestiae amet delectus quo.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(24, 32, 'Vitae voluptatibus cupiditate consequuntur enim vel quis maiores veniam ratione occaecati atque tenetur nihil.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(25, 36, 'Ut veritatis eum aut laborum omnis est.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(26, 37, 'Veritatis optio ut neque dolorem est veritatis.', '2025-04-12 13:44:31', '2025-04-12 13:44:31'),
(27, 20, 'Sint non ut sunt ipsam veritatis eius accusamus qui repellendus voluptas mollitia corporis.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(28, 22, 'Aut blanditiis id et ea sequi corrupti vitae totam et aut nihil ipsum.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(29, 48, 'Et tempore voluptatum temporibus et sequi at illo qui alias.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(30, 51, 'Velit sit perferendis necessitatibus aut sunt necessitatibus vitae nulla.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(31, 22, 'Dolor eligendi temporibus eveniet fugit in magnam ut sapiente et.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(32, 50, 'Harum earum tenetur itaque ducimus quibusdam voluptatem nam ea maxime.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(33, 15, 'Aliquam magni nobis possimus earum nesciunt et quod sed placeat corporis soluta voluptatibus optio.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(34, 33, 'Nihil voluptatibus soluta pariatur enim temporibus ea repellendus eligendi.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(35, 10, 'Qui repellendus incidunt ratione provident laudantium optio aut quo eveniet sit nesciunt.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(36, 11, 'Autem molestiae recusandae minus ad optio molestiae aut sit vero aut ut qui quasi.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(37, 22, 'Accusamus voluptas consequatur quia aut nobis est quam omnis molestias aut consequatur.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(38, 16, 'Repellat nisi minima voluptatem qui veritatis quidem sit est eum.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(39, 5, 'Qui atque enim aut laboriosam molestiae quasi quia consequuntur.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(40, 7, 'Possimus nemo sunt ut veritatis porro illum.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(41, 9, 'Amet omnis amet perspiciatis facere debitis unde debitis quae voluptas.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(42, 9, 'Reprehenderit illo labore aperiam praesentium architecto sequi.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(43, 45, 'Quo facere ipsum sit voluptatum ratione et molestias fuga enim inventore totam ullam dicta.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(44, 33, 'Omnis ipsum expedita atque ab dicta similique.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(45, 51, 'Voluptatem voluptatibus repellat natus dignissimos dolorem est aut.', '2025-04-12 13:44:32', '2025-04-12 13:44:32'),
(46, 14, 'Facilis sit autem aut maxime in numquam.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(47, 6, 'Qui similique placeat quis quas aliquam fuga aliquam.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(48, 19, 'Est dolores voluptatem voluptatum veniam atque doloremque.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(49, 5, 'Tenetur ullam ea molestiae enim et libero pariatur earum asperiores ad sunt ipsam.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(50, 33, 'Hic voluptate dicta aut ut velit autem nobis asperiores magnam quod.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(51, 49, 'Excepturi enim possimus quaerat qui qui assumenda repellendus nobis et omnis.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(52, 32, 'Sed consequuntur sunt ut quod vel minima.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(53, 46, 'Et nihil consequatur aliquid ut delectus cum neque.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(54, 50, 'Tenetur aut aut quia consequatur temporibus nemo enim doloribus assumenda aut a aliquam unde.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(55, 16, 'Facere vel pariatur iusto aut harum qui quia hic deleniti repellat excepturi et quasi.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(56, 19, 'Possimus modi architecto corrupti qui qui doloremque soluta cumque quia.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(57, 40, 'Fugit qui est alias distinctio vel voluptatibus ipsam reprehenderit magni est maiores.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(58, 28, 'Sit quae dolores optio dolores animi temporibus natus et consequuntur.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(59, 46, 'Error tempora porro fugit repellat quia aspernatur earum aut corporis quo.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(60, 9, 'Voluptatum autem vero nulla enim voluptates et.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(61, 48, 'Reprehenderit assumenda voluptatem nobis consectetur quae optio eligendi.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(62, 34, 'Qui alias porro ut magni nam enim sit.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(63, 34, 'In quae nihil et voluptatem sunt eveniet dolor.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(64, 50, 'Blanditiis est pariatur qui quos unde nihil et voluptatum molestias.', '2025-04-12 13:44:33', '2025-04-12 13:44:33'),
(65, 30, 'Et praesentium fugiat expedita officia sapiente ratione voluptatibus repudiandae voluptas dolor aut.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(66, 16, 'Suscipit asperiores nihil optio velit voluptatibus molestiae dolores quia non ipsum debitis tenetur temporibus.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(67, 20, 'Voluptatem beatae iusto pariatur doloribus deleniti quisquam molestiae.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(68, 7, 'Placeat ducimus id alias consequatur et voluptatibus nam.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(69, 6, 'Accusantium nisi est aut blanditiis nostrum perferendis ad nesciunt voluptatibus inventore.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(70, 31, 'Amet aspernatur nihil id eveniet libero dolor iusto consequatur.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(71, 46, 'Quae quia architecto sed consequatur expedita qui ut et eos.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(72, 11, 'Labore occaecati velit nesciunt voluptas rerum expedita esse.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(73, 20, 'Culpa optio voluptas molestiae fugiat et in necessitatibus non omnis.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(74, 18, 'Quibusdam voluptas odio nisi sint neque voluptatem quia nesciunt.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(75, 25, 'Commodi iusto nemo tempore non autem est aut natus iure.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(76, 40, 'Quaerat est veniam mollitia nesciunt eum et ipsam.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(77, 29, 'Molestiae minus maiores esse est qui ad incidunt sit est architecto doloremque voluptatem animi ut.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(78, 37, 'Dolorem consequatur corrupti vero officiis consequatur et aspernatur sequi necessitatibus sunt ut magni ut sed.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(79, 21, 'Ipsam ut minima velit quam sunt sed id qui veritatis perspiciatis voluptatem.', '2025-04-12 13:44:34', '2025-04-12 13:44:34'),
(80, 3, 'Ullam officia labore sapiente quia velit rerum non quaerat iste vel possimus beatae minus.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(81, 3, 'Optio reiciendis quia reprehenderit qui at iusto qui nostrum autem molestiae deleniti iure aperiam.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(82, 13, 'Minima molestiae animi sed eos ea repellat laborum qui architecto harum.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(83, 38, 'Vero esse facilis corrupti voluptatem excepturi eos.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(84, 14, 'Id consequuntur ad mollitia incidunt qui porro nostrum voluptatem omnis voluptas.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(85, 13, 'Dolores perferendis quia cupiditate alias nisi qui quod.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(86, 31, 'Sint dolores odit omnis commodi autem atque modi aperiam commodi accusamus ea minima cum.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(87, 17, 'Suscipit eaque quidem est id minus velit ullam.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(88, 37, 'Omnis quis ut est tempora corrupti qui.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(89, 44, 'Enim nobis minus cumque ut quas aut a qui ipsam quidem necessitatibus sunt dolor.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(90, 46, 'Minus autem autem possimus corrupti distinctio qui tenetur minus.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(91, 16, 'Omnis voluptates sed reiciendis officia error aperiam dolorem omnis fugit qui voluptatum.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(92, 47, 'Labore aliquam modi iusto nam ut rerum qui nisi dolorum aut non exercitationem.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(93, 13, 'Ratione voluptas sed quas commodi et excepturi sint sed dolorem tenetur.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(94, 5, 'Facilis aut atque hic est tenetur ea rerum a nihil autem quia rem.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(95, 40, 'Est voluptatem doloribus harum sint labore corrupti laudantium est.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(96, 46, 'Et ut ea soluta recusandae vel autem odio nisi accusantium officia sunt possimus velit.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(97, 6, 'Voluptas et est earum voluptatum quam ipsum non quia sunt nulla voluptates.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(98, 33, 'Et vel accusamus nulla est sit reiciendis nisi.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(99, 21, 'Perspiciatis modi sapiente esse magnam modi earum sapiente magnam.', '2025-04-12 13:44:35', '2025-04-12 13:44:35'),
(100, 50, 'Voluptatibus ut accusantium officia pariatur porro voluptas.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(101, 25, 'Et quia voluptates expedita non odio tempora tempore sit et.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(102, 7, 'Nemo sed temporibus ratione aut quasi velit illum nam sunt.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(103, 7, 'Placeat enim rerum soluta sed quia ut facilis totam est rerum et qui.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(104, 6, 'Et quos quam ab doloremque quos nam quidem atque tempore omnis dolor.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(105, 33, 'Ea omnis laboriosam aperiam aut hic cum commodi fugit asperiores quia accusamus facere qui.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(106, 9, 'Dolorem ad voluptas facere quaerat quisquam debitis qui ducimus ad impedit adipisci et.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(107, 14, 'Omnis minus consequatur sit hic assumenda eum cumque laborum.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(108, 12, 'Eum nesciunt quia corrupti eaque aspernatur quibusdam fugiat sed et voluptatum aut enim.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(109, 2, 'Consequatur autem recusandae modi ut consequatur alias autem at.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(110, 21, 'Nobis blanditiis nam consequatur eum commodi esse velit optio ut quisquam molestiae ea.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(111, 48, 'Pariatur ab voluptate sed repellendus itaque dolorem consequuntur id.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(112, 23, 'Ea qui placeat quisquam ea voluptas hic mollitia natus tempore ut distinctio occaecati.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(113, 19, 'Praesentium vel non voluptatum sint unde dicta error et eius quaerat harum.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(114, 8, 'Debitis eaque in aut deleniti qui mollitia.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(115, 34, 'Nihil enim voluptas pariatur quisquam dolorem laboriosam ut quae voluptas nisi libero earum hic.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(116, 37, 'Nostrum architecto suscipit eaque aut neque in.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(117, 1, 'Eos alias quis voluptas placeat ipsa fuga et ut magni sed consequatur in id.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(118, 18, 'Nulla magnam corrupti consequuntur inventore officia provident corporis omnis.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(119, 7, 'Labore repellendus perferendis facilis qui voluptatem est cumque veritatis dolore officiis omnis.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(120, 7, 'Aut libero aliquid repellendus culpa nobis possimus ut aut nihil est.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(121, 11, 'Et reiciendis eum voluptatem officia quia et dolores quia.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(122, 17, 'Ut quisquam omnis consequatur nihil esse sit consectetur et.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(123, 27, 'Magnam quidem suscipit eum numquam aspernatur deleniti.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(124, 41, 'Unde adipisci quis et harum dolorem nostrum rem fugit molestiae impedit.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(125, 30, 'Vero aliquam voluptate hic perspiciatis blanditiis est voluptas hic.', '2025-04-12 13:44:36', '2025-04-12 13:44:36'),
(126, 49, 'Ducimus ut dicta omnis error non qui.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(127, 23, 'Rerum sed quo ut dolor aperiam veniam nulla sapiente quis dolorum aliquid et deserunt.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(128, 49, 'Quo quam nemo alias est repellat et alias.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(129, 42, 'Sed non id qui ullam ut omnis accusamus corrupti doloribus et maxime atque.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(130, 22, 'Molestiae sint odit eaque commodi odit doloribus at rerum non dolor pariatur incidunt.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(131, 28, 'Quae dolores quidem cumque quia possimus asperiores magnam laboriosam reiciendis beatae nisi repudiandae.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(132, 49, 'Sed cum voluptates dolore vitae velit quia pariatur odio ipsam ut.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(133, 22, 'Recusandae perspiciatis pariatur alias nulla autem perspiciatis est velit aut culpa quibusdam.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(134, 50, 'Ut eveniet asperiores tenetur qui vitae fuga odio modi laborum sunt sed.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(135, 9, 'Eos sed qui et consequuntur sed ea eum magni non.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(136, 26, 'Sit est harum mollitia corporis nobis veritatis ex quidem iure qui.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(137, 18, 'Nobis et dolorem quod asperiores vel unde voluptas tenetur iste.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(138, 46, 'Beatae tempora ipsam ut quia quasi aliquid magnam natus quaerat in inventore asperiores ut.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(139, 44, 'Minus voluptates a veniam sit eveniet ducimus.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(140, 39, 'Adipisci quaerat aut labore consequatur ut repellendus ut.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(141, 40, 'Reiciendis ex aut occaecati labore velit exercitationem assumenda itaque vero quibusdam aut doloremque.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(142, 26, 'Quis ut quibusdam ut delectus soluta quia culpa vel autem dolores velit accusantium placeat.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(143, 11, 'Dolorem tenetur dolores iusto ut est sapiente.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(144, 41, 'Eaque temporibus cum laborum hic suscipit quae similique voluptatem voluptatibus et non.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(145, 7, 'Est minus animi dolorum voluptas neque voluptatibus minima.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(146, 48, 'Deleniti est minus eos aperiam ut ut.', '2025-04-12 13:44:37', '2025-04-12 13:44:37'),
(147, 12, 'Eum velit ad odit soluta non expedita veritatis et numquam voluptas omnis eveniet dignissimos.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(148, 30, 'Quos vero dolorem quia voluptates quas et voluptatibus molestias sapiente facere molestiae est ex.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(149, 4, 'Qui aliquam qui tenetur mollitia qui autem maiores enim.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(150, 19, 'Minus veniam iste dolorem voluptas sit aut et nobis repellat ab libero dolorum ducimus cupiditate.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(151, 36, 'Reiciendis qui ea et eum quidem repudiandae.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(152, 37, 'Officiis exercitationem ut possimus qui eum nam voluptas et hic aperiam blanditiis.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(153, 3, 'Quia consequatur esse omnis et et odit ad saepe voluptatem.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(154, 50, 'A quae dolorem at eos doloribus sed.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(155, 39, 'Eum perferendis molestiae labore fuga odit laudantium ducimus sequi qui omnis velit.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(156, 24, 'Quasi voluptas voluptas exercitationem repellendus voluptatem ex rem at vero architecto suscipit ducimus amet.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(157, 32, 'Corporis rem fuga et tenetur sit ab voluptate quibusdam possimus ducimus eveniet quasi.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(158, 15, 'Est recusandae blanditiis magni ipsa ea et ducimus esse perferendis quo ut.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(159, 22, 'Possimus tenetur similique quidem dolore magnam molestiae quis suscipit nemo veritatis et.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(160, 5, 'Officia blanditiis qui ut molestias quia quia quia rerum veniam officia voluptates dolores.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(161, 26, 'Voluptatem quos quisquam voluptate quia omnis in non culpa nihil et dolores.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(162, 18, 'Doloremque cupiditate velit velit non itaque dolore expedita voluptatem perspiciatis tenetur quia.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(163, 41, 'Harum atque occaecati suscipit et debitis assumenda occaecati amet.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(164, 29, 'Fugiat aperiam consequatur aut accusantium id laboriosam similique hic dolores porro.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(165, 20, 'Harum occaecati accusamus hic exercitationem nam harum.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(166, 46, 'Aliquid ut tempore corrupti vel nisi rerum harum possimus rerum voluptas ea.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(167, 4, 'Ut harum dolor hic impedit nostrum qui consectetur.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(168, 46, 'Dicta blanditiis dolorem eos nulla officia amet autem qui praesentium maiores architecto.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(169, 30, 'Ut voluptate neque quam placeat et quaerat et similique doloremque voluptatem.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(170, 44, 'Id cumque quaerat voluptatem autem dolore nisi facere libero in voluptatibus impedit.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(171, 41, 'Dolorem nihil ut expedita id id nisi.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(172, 11, 'Explicabo deleniti ipsa quas repellendus voluptatum voluptatem qui voluptatem ea reprehenderit sint.', '2025-04-12 13:44:38', '2025-04-12 13:44:38'),
(173, 43, 'Doloribus excepturi quod neque suscipit molestias quam aut.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(174, 50, 'Earum repellendus perspiciatis debitis dolorum eveniet aliquid perspiciatis non hic voluptate adipisci.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(175, 10, 'Ratione suscipit maiores et repellendus atque quam magni eum labore sit reprehenderit ut est.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(176, 15, 'Praesentium deleniti ipsa sed unde quia quia sed.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(177, 37, 'Occaecati dolor est expedita aut et voluptates aliquid blanditiis consequatur.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(178, 40, 'Mollitia delectus quis fugiat accusamus sed labore cum vel dicta voluptates iure repellat occaecati.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(179, 18, 'Quod qui sunt dolores et eligendi sit ipsa vero et in.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(180, 40, 'Veritatis corporis voluptas hic vitae eius voluptates earum officiis magnam voluptas perspiciatis explicabo.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(181, 43, 'Enim dolorem ab corporis id numquam velit repellat dolorem molestiae earum aut doloremque.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(182, 12, 'Quisquam voluptas qui sit amet qui enim.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(183, 39, 'Ipsam dolore exercitationem necessitatibus quia et nulla perspiciatis.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(184, 34, 'Excepturi delectus voluptas odit eos dolorem quo dolores et porro et provident labore.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(185, 48, 'Eum est sint quo aut enim qui explicabo corrupti eligendi.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(186, 48, 'Repellendus quod aut adipisci omnis impedit facere et fuga id et qui explicabo repellat.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(187, 2, 'Sed illo nihil omnis enim enim explicabo qui cumque.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(188, 30, 'Consequuntur maiores sunt ipsa perspiciatis est porro et fugit nihil non explicabo voluptatum.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(189, 51, 'Et commodi non laborum nulla et adipisci ratione dolorem et soluta.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(190, 9, 'Ducimus ipsum modi aut est consequuntur rerum et officiis.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(191, 4, 'Rerum blanditiis repudiandae sunt sunt et omnis aspernatur sunt.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(192, 26, 'Consequatur quaerat perferendis est ad aut optio.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(193, 40, 'Et aut enim dicta quia aut sit pariatur.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(194, 45, 'Quae officiis numquam est dolorem vel consectetur.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(195, 36, 'Qui quos nulla voluptatibus tempore dicta quis eos.', '2025-04-12 13:44:39', '2025-04-12 13:44:39'),
(196, 3, 'Et placeat aliquam nostrum vero consequuntur voluptates at at quis necessitatibus unde.', '2025-04-12 13:44:40', '2025-04-12 13:44:40'),
(197, 22, 'Voluptate sunt nostrum voluptatibus qui quisquam enim quae ut et.', '2025-04-12 13:44:40', '2025-04-12 13:44:40'),
(198, 11, 'Ut est quo et sed minima at similique eaque et voluptates.', '2025-04-12 13:44:40', '2025-04-12 13:44:40'),
(199, 21, 'Minus velit sed laborum in doloremque voluptatem et quidem quasi deleniti.', '2025-04-12 13:44:40', '2025-04-12 13:44:40'),
(200, 35, 'Suscipit id nostrum recusandae deleniti id accusamus nobis.', '2025-04-12 13:44:40', '2025-04-12 13:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'soso@example.com', 'sala', NULL, NULL, '$2y$12$m4OzSrKfY1h4CGFbxRkyEenMj3My6qoj1Dg/Tm2AKsYOnl.sRcraK', NULL, '2025-04-12 13:41:11', '2025-04-12 13:41:11'),
(2, 'Amir Waters', 'schroeder.nolan@example.org', 'stacey.glover', NULL, '2025-04-12 13:44:25', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'eZsWEA5kCU', '2025-04-12 13:44:26', '2025-04-12 13:44:26'),
(3, 'Jeffry Farrell', 'jesse96@example.com', 'albert93', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'D4SkAAIsN4', '2025-04-12 13:44:26', '2025-04-12 13:44:26'),
(4, 'Mrs. Damaris Abernathy PhD', 'josephine82@example.org', 'alexandre.metz', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'vFWSe62CWW', '2025-04-12 13:44:26', '2025-04-12 13:44:26'),
(5, 'Shawna Bogan', 'otha.feeney@example.com', 'mckenzie.ida', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'OMD1UrHPBg', '2025-04-12 13:44:26', '2025-04-12 13:44:26'),
(6, 'Ali Douglas', 'ernie80@example.org', 'meghan70', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'ZbgT49aqHM', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(7, 'Ms. Elisha Spinka II', 'rowland91@example.com', 'madie.dibbert', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'TpFkEuE5nz', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(8, 'Joanne Weber', 'wsipes@example.com', 'weissnat.darryl', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'iXAMwPKnSB', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(9, 'Tiffany Cummings', 'schmidt.elisa@example.net', 'xheathcote', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'InbLAVY9AE', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(10, 'Xander Runte', 'ekemmer@example.com', 'tkling', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'wyq0pdt2mN', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(11, 'Dr. Krista Murray', 'ashton25@example.com', 'paucek.abigail', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', '6AYaidmVXB', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(12, 'Miss Alyson Gorczany', 'zward@example.com', 'rsimonis', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'FXdfjV5DUs', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(13, 'Marielle Stark IV', 'selina.heaney@example.net', 'khermiston', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'i7tTdU1Gw9', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(14, 'Verner Gutkowski', 'peyton35@example.net', 'kyra.skiles', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'p91nxPqObL', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(15, 'Herman Lemke', 'xking@example.org', 'gleichner.justice', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'j4HVLTM1HR', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(16, 'Wanda Upton', 'ariel56@example.com', 'imelda.keebler', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', '2GnyXBnvPA', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(17, 'Eva Vandervort', 'margarete16@example.net', 'zwilderman', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'OpPVgZMy46', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(18, 'Daphnee Yost I', 'eriberto.berge@example.org', 'marquise.grant', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'gD43Jl3QwZ', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(19, 'Dr. Louisa Pouros PhD', 'rutherford.gustave@example.net', 'kaia.west', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'r1WU1wIBCa', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(20, 'Caleb Crist', 'hauck.jess@example.org', 'bartell.darius', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'BeduOd6UlO', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(21, 'Prof. Deven Moen III', 'antonina78@example.com', 'kareem36', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'eaF2TCy3lH', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(22, 'Lina Grant', 'fleta.mccullough@example.net', 'rachael64', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'IYEh0i4Fg8', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(23, 'Mr. Nicholaus Langworth I', 'paxton02@example.net', 'garnett.kihn', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'VAPaykutxb', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(24, 'Moshe Koss PhD', 'molly.stiedemann@example.net', 'dylan74', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'O9nNLBaCXE', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(25, 'Miss Lorna Orn PhD', 'wehner.treva@example.com', 'marquise.hoeger', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'rmZAqaY6g7', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(26, 'Mariano Terry', 'henderson.mills@example.com', 'zander55', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'hIvREPVh40', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(27, 'Emory Ernser IV', 'katelin28@example.com', 'jcrooks', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', '9hDZsyRQV0', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(28, 'Mr. Reggie Witting III', 'hyatt.daphne@example.com', 'monahan.marques', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', '04fF3qDbyG', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(29, 'Colton Metz', 'tia.schmitt@example.net', 'zglover', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'gV38DTOBtM', '2025-04-12 13:44:27', '2025-04-12 13:44:27'),
(30, 'Prof. Candace Batz', 'johnnie21@example.com', 'johnson88', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'G4SLskuUnl', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(31, 'Lila Kuhn', 'yprice@example.com', 'shaina.rohan', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'zVdHp8vo8x', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(32, 'Nicole Reichert', 'morris.berge@example.com', 'nona08', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'ymV1G6x2kW', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(33, 'Zachery Kuhlman', 'claire54@example.net', 'ole61', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', '1afOwXv0gT', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(34, 'Prof. Laverne Lebsack II', 'egorczany@example.com', 'heller.henri', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'RS7F1X2BAg', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(35, 'Prof. Jed Leannon II', 'justina63@example.com', 'abbey.osinski', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', '3uQOvtqrWU', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(36, 'Gilberto Raynor', 'lakin.jo@example.com', 'farrell.alyce', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'REQe6hgTrA', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(37, 'Broderick Lindgren', 'velda23@example.com', 'destini73', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'ui9HJes6ac', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(38, 'Brando Cole', 'robyn06@example.com', 'hosea.turner', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'vYStpVu6dv', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(39, 'Adelbert Cole PhD', 'jalen.tremblay@example.org', 'ella.cole', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'cXuwfklVXH', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(40, 'Alize Bauch', 'santiago.hayes@example.org', 'benjamin05', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'Hg2DD9aThG', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(41, 'Akeem Wilkinson', 'blanda.erika@example.net', 'mraz.shania', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'T5sUpkLmZU', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(42, 'Destini Bayer', 'bode.karen@example.org', 'gerlach.jeanne', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'veKZ1pmOfP', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(43, 'Novella Rohan', 'beatty.eunice@example.org', 'ttreutel', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'MoqxFUgsih', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(44, 'Prof. Tatyana Gorczany V', 'gerhold.clark@example.net', 'ywelch', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'MS7LVn4RSL', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(45, 'Dr. Angel Watsica IV', 'alessandra.dooley@example.org', 'batz.noemi', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'BIkBif3pom', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(46, 'Armando Roob', 'mya54@example.org', 'kovacek.ismael', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'wq5guZIhhe', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(47, 'Prof. Stacey Rippin II', 'milo11@example.org', 'tamia.schaden', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'RZK6wRtMAX', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(48, 'Mr. Kiel Boehm', 'bauch.lawrence@example.net', 'novella17', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'x8q39sDbXT', '2025-04-12 13:44:28', '2025-04-12 13:44:28'),
(49, 'Cale Abshire V', 'eichmann.alfredo@example.org', 'lea.beahan', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'Yx31jtbeCO', '2025-04-12 13:44:29', '2025-04-12 13:44:29'),
(50, 'Alvah Pfannerstill Jr.', 'jean.kuhn@example.org', 'edd.crist', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', 'kQDxvO2BXh', '2025-04-12 13:44:29', '2025-04-12 13:44:29'),
(51, 'Chelsea Schuster', 'vritchie@example.org', 'ron.ziemann', NULL, '2025-04-12 13:44:26', '$2y$12$.opP2locz7ciPQYb3zz0lOsbrSHCnvt1bQgNifbF2WcMBB/vTJB/a', '7bqKV1K9DB', '2025-04-12 13:44:29', '2025-04-12 13:44:29');

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
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_tweet_id_foreign` (`tweet_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_follower_id_foreign` (`follower_id`),
  ADD KEY `followers_following_id_foreign` (`following_id`);

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
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_tweet_id_foreign` (`tweet_id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tweets_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_tweet_id_foreign` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `followers_following_id_foreign` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_tweet_id_foreign` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
