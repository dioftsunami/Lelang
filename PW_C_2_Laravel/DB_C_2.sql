-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2024 at 04:08 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u321682689_testbackend`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_item` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `kategori` varchar(255) NOT NULL,
  `kondisi_barang` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_item`, `deskripsi`, `kategori`, `kondisi_barang`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Smartphone', 'Smartphone with AMOLED display and large battery capacity', 'Electronic', 'New', 'https://i.ibb.co.com/DR6d6dD/Untitled-design-5.png', '2024-12-13 06:34:11', '2024-12-13 06:34:11'),
(2, 'DSLR Camera', 'DSLR Camera with advanced features for professional photography.', 'Electronic', 'Used', 'https://i.ibb.co.com/bvpp2DP/Untitled-design-7.png', '2024-12-13 06:34:11', '2024-12-13 06:34:11'),
(3, 'Study Desk', 'Study desk made of teak wood with minimalist design.', 'Furniture', 'New', 'https://i.ibb.co.com/PZQp0s5/Untitled-design-8.png', '2024-12-13 06:34:11', '2024-12-13 06:34:11'),
(4, 'Mountain Bike', 'Mountain bike with dual suspension for rough terrain.', 'Sport', 'New', 'https://i.ibb.co.com/gFHWTjn/Untitled-design-9.png', '2024-12-13 06:34:11', '2024-12-13 06:34:11'),
(5, 'LED Television', '50-inch LED television with 4K UHD resolution.', 'Electronic', 'New', 'https://i.ibb.co.com/9p0Wdjf/Untitled-design-10.png', '2024-12-13 06:34:11', '2024-12-13 06:34:11'),
(6, 'Gaming Chair', 'Ergonomic gaming chair with lumbar support and adjustable armrests.', 'Furniture', 'New', 'https://i.ibb.co.com/ww886dn/Untitled-design-11.png', '2024-12-14 09:26:36', '2024-12-14 09:26:36'),
(7, 'Gaming Laptop', 'Gaming laptop with high specifications, suitable for gaming and work.', 'Electronic', 'New', 'https://i.ibb.co.com/QcJ2KJm/Untitled-design-6.png', '2024-12-13 00:44:13', '2024-12-13 00:44:13'),
(8, 'Air Conditioner', 'High-efficiency air conditioner with fast cooling and remote control.', 'Electronic', 'New', 'https://i.ibb.co.com/txyxMDY/Untitled-design-12.png', '2024-12-14 09:26:36', '2024-12-14 09:26:36'),
(9, 'Electric Guitar', 'Electric guitar with solid body and humbucker pickups.', 'Music', 'Used', 'https://i.ibb.co.com/74syWjt/Untitled-design-13.png', '2024-12-14 09:26:36', '2024-12-14 09:26:36'),
(10, 'Office Desk', 'Spacious office desk with cable management and modern design.', 'Furniture', 'New', 'https://i.ibb.co.com/JQYz6yM/Untitled-design-14.png', '2024-12-14 09:26:36', '2024-12-14 09:26:36'),
(11, 'Lamborghini Aventador', 'High-performance sports car with V12 engine.', 'Sport', 'New', 'https://i.ibb.co.com/VQCczbp/Untitled-design-15.png', '2024-12-14 10:05:07', '2024-12-14 10:05:07'),
(12, 'Harley Davidson', 'Premium cruiser motorcycle with a powerful engine.', 'Sport', 'Used', 'https://i.ibb.co.com/0t3bKkt/Untitled-design-16.png', '2024-12-14 10:05:07', '2024-12-14 10:05:07'),
(13, 'Kawasaki Ninja ZX-10R', 'High-speed superbike designed for performance.', 'Sport', 'New', 'https://i.ibb.co.com/Gd3QXkj/Untitled-design-17.png', '2024-12-14 10:05:07', '2024-12-14 10:05:07'),
(14, 'Jakarta Apartment', 'Luxury apartment with city view in Central Jakarta.', 'Real Estate', 'New', 'https://i.ibb.co.com/S5tzvPs/Untitled-design-18.png', '2024-12-14 10:05:07', '2024-12-14 10:05:07'),
(15, 'Bali Beachfront Land', 'Vacant land with a stunning ocean view in Bali.', 'Real Estate', 'New', 'https://i.ibb.co.com/ZzXHmgs/Untitled-design-19.png', '2024-12-14 10:05:07', '2024-12-14 10:05:07'),
(16, 'Surabaya Apartment', 'Spacious apartment in the heart of Surabaya.', 'Real Estate', 'New', 'https://i.ibb.co.com/vjn0VNV/Untitled-design-20.png', '2024-12-14 10:05:07', '2024-12-14 10:05:07'),
(17, 'Acoustic Guitar', 'High-quality acoustic guitar with rich tones.', 'Music', 'New', 'https://i.ibb.co.com/hYZ9bKc/download.png', '2024-12-14 05:00:00', '2024-12-17 06:43:51'),
(18, 'Electric Piano', 'Compact electric piano with 88 weighted keys.', 'Music', 'New', 'https://i.ibb.co.com/vh8R4nT/PX-870-BK-xlarge-300x150.png', '2024-12-14 05:00:00', '2024-12-17 06:44:17'),
(19, 'DJ Mixer', 'Professional DJ mixer with advanced features.', 'Music', 'Used', 'https://i.ibb.co.com/7VBc9fL/DJ-Mixer.png', '2024-12-14 05:00:00', '2024-12-17 06:45:10'),
(20, 'Luxury Villa', '5-bedroom villa with private pool and garden.', 'Real Estate', 'New', 'https://i.ibb.co.com/cXXS7qP/Lux-Villa.png', '2024-12-14 05:00:00', '2024-12-17 06:45:17'),
(21, 'Office Desk', 'Modern office desk made of solid wood.', 'Furniture', 'New', 'https://i.ibb.co.com/zQNqGmK/office-desk.png', '2024-12-14 05:00:00', '2024-12-17 06:44:42'),
(27, 'samsung s24 ultra', 'bagus banget', 'Electronic', 'New', NULL, '2024-12-18 02:01:51', '2024-12-18 02:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_lelang` bigint(20) UNSIGNED NOT NULL,
  `bid_price` decimal(15,2) NOT NULL,
  `bid_time` datetime NOT NULL,
  `is_winning` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `id_user`, `id_lelang`, `bid_price`, `bid_time`, `is_winning`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5100000.00, '2024-12-10 09:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(2, 2, 1, 5200000.00, '2024-12-10 10:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(3, 3, 1, 5300000.00, '2024-12-10 11:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(7, 2, 3, 3100000.00, '2024-12-10 11:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(8, 4, 3, 3200000.00, '2024-12-10 12:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(9, 3, 4, 1100000.00, '2024-12-10 13:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(10, 1, 4, 1200000.00, '2024-12-10 14:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(11, 2, 5, 1600000.00, '2024-12-11 09:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(12, 4, 5, 1700000.00, '2024-12-11 10:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(13, 1, 6, 4100000.00, '2024-12-12 08:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(14, 3, 6, 4200000.00, '2024-12-12 09:00:00', 0, '2024-12-13 08:06:37', '2024-12-13 08:06:37'),
(15, 3, 1, 5500000.00, '2024-12-15 04:29:35', 0, '2024-12-14 21:29:35', '2024-12-14 21:29:35'),
(16, 3, 1, 5500000.00, '2024-12-15 04:30:42', 0, '2024-12-14 21:30:42', '2024-12-14 21:30:42'),
(17, 3, 1, 5600000.00, '2024-12-15 04:38:27', 0, '2024-12-14 21:38:27', '2024-12-14 21:38:27'),
(18, 3, 1, 5600000.00, '2024-12-15 04:39:57', 0, '2024-12-14 21:39:57', '2024-12-14 21:39:57'),
(19, 3, 1, 5600000.00, '2024-12-15 04:41:27', 0, '2024-12-14 21:41:27', '2024-12-14 21:41:27'),
(20, 1, 7, 5600000.00, '2024-12-15 04:42:32', 0, '2024-12-14 21:42:32', '2024-12-14 21:42:32'),
(21, 3, 1, 5600000.00, '2024-12-15 05:12:29', 0, '2024-12-14 22:12:29', '2024-12-14 22:12:29'),
(22, 3, 1, 5700000.00, '2024-12-15 05:12:40', 0, '2024-12-14 22:12:40', '2024-12-14 22:12:40'),
(23, 1, 7, 5600000.00, '2024-12-15 05:13:51', 0, '2024-12-14 22:13:51', '2024-12-14 22:13:51'),
(24, 1, 7, 5600000.00, '2024-12-15 05:14:07', 0, '2024-12-14 22:14:07', '2024-12-14 22:14:07'),
(25, 3, 1, 5700000.00, '2024-12-15 05:30:26', 0, '2024-12-14 22:30:26', '2024-12-14 22:30:26'),
(26, 3, 1, 5700000.00, '2024-12-15 05:30:31', 0, '2024-12-14 22:30:31', '2024-12-14 22:30:31'),
(27, 1, 1, 5900000.00, '2024-12-15 05:33:36', 0, '2024-12-14 22:33:36', '2024-12-14 22:33:36'),
(30, 1, 7, 5600000.00, '2024-12-15 07:47:48', 0, '2024-12-15 00:47:48', '2024-12-15 00:47:48'),
(40, 1, 1, 6000000.00, '2024-12-15 12:23:13', 0, '2024-12-15 05:23:13', '2024-12-15 05:23:13'),
(41, 1, 4, 1300000.00, '2024-12-15 15:12:49', 0, '2024-12-15 15:12:49', '2024-12-15 15:12:49'),
(42, 1, 4, 1300000.00, '2024-12-15 15:20:20', 0, '2024-12-15 15:20:20', '2024-12-15 15:20:20'),
(43, 1, 4, 1300000.00, '2024-12-15 15:28:14', 0, '2024-12-15 15:28:14', '2024-12-15 15:28:14'),
(44, 1, 3, 3300000.00, '2024-12-15 15:33:27', 0, '2024-12-15 15:33:27', '2024-12-15 15:33:27'),
(45, 1, 4, 1400000.00, '2024-12-15 15:41:46', 0, '2024-12-15 15:41:46', '2024-12-15 15:41:46'),
(46, 1, 4, 1500000.00, '2024-12-15 15:42:39', 0, '2024-12-15 15:42:39', '2024-12-15 15:42:39'),
(47, 7, 4, 1600000.00, '2024-12-15 15:54:03', 0, '2024-12-15 15:54:03', '2024-12-15 15:54:03'),
(48, 7, 4, 1900000.00, '2024-12-15 15:54:08', 0, '2024-12-15 15:54:08', '2024-12-15 15:54:08'),
(49, 1, 4, 2500000.00, '2024-12-15 15:54:13', 0, '2024-12-15 15:54:13', '2024-12-15 15:54:13'),
(50, 7, 4, 5000000000000.00, '2024-12-15 15:54:21', 1, '2024-12-15 15:54:21', '2024-12-15 16:08:38'),
(51, 9, 3, 4000000.00, '2024-12-16 04:34:54', 0, '2024-12-16 04:34:54', '2024-12-16 04:34:54'),
(53, 9, 3, 4200000.00, '2024-12-16 04:35:39', 1, '2024-12-16 04:35:39', '2024-12-16 19:59:39'),
(55, 1, 7, 5700000.00, '2024-12-16 14:39:31', 0, '2024-12-16 14:39:31', '2024-12-16 14:39:31'),
(56, 1, 7, 5800000.00, '2024-12-16 20:23:26', 0, '2024-12-16 20:23:26', '2024-12-16 20:23:26'),
(57, 1, 2, 1800000.00, '2024-12-15 08:00:00', 0, '2024-12-16 23:24:09', '2024-12-16 23:24:09'),
(58, 1, 2, 1900000.00, '2024-12-15 08:05:00', 0, '2024-12-16 23:24:09', '2024-12-16 23:24:09'),
(59, 1, 2, 2000000.00, '2024-12-15 08:10:00', 1, '2024-12-16 23:24:09', '2024-12-16 23:24:09'),
(60, 1, 8, 3100000.00, '2024-12-17 01:13:37', 0, '2024-12-17 01:13:37', '2024-12-17 01:13:37'),
(61, 1, 8, 3500000.00, '2024-12-17 01:13:43', 1, '2024-12-17 01:13:43', '2024-12-17 01:45:36'),
(62, 1, 7, 5900000.00, '2024-12-17 05:03:13', 0, '2024-12-17 05:03:13', '2024-12-17 05:03:13'),
(63, 8, 1, 6100000.00, '2024-12-17 06:51:15', 0, '2024-12-17 06:51:15', '2024-12-17 06:51:15'),
(64, 8, 7, 6000000.00, '2024-12-17 06:51:48', 0, '2024-12-17 06:51:48', '2024-12-17 06:51:48'),
(65, 8, 20, 51000000.00, '2024-12-17 06:52:41', 0, '2024-12-17 06:52:41', '2024-12-17 06:52:41'),
(66, 8, 20, 52000000.00, '2024-12-17 06:53:01', 0, '2024-12-17 06:53:01', '2024-12-17 06:53:01'),
(67, 1, 1, 6200000.00, '2024-12-17 07:53:12', 0, '2024-12-17 07:53:12', '2024-12-17 07:53:12'),
(68, 1, 1, 6300000.00, '2024-12-17 12:34:16', 0, '2024-12-17 12:34:16', '2024-12-17 12:34:16'),
(69, 8, 1, 6500000.00, '2024-12-17 12:37:08', 0, '2024-12-17 12:37:08', '2024-12-17 12:37:08'),
(70, 1, 1, 7000000.00, '2024-12-17 12:37:34', 0, '2024-12-17 12:37:34', '2024-12-17 12:37:34'),
(71, 8, 1, 7100000.00, '2024-12-17 12:37:57', 0, '2024-12-17 12:37:57', '2024-12-17 12:37:57'),
(72, 17, 1, 18000000.00, '2024-12-17 12:56:31', 1, '2024-12-17 12:56:31', '2024-12-17 15:25:32'),
(73, 1, 19, 5000000.00, '2024-12-17 12:58:51', 0, '2024-12-17 12:58:51', '2024-12-17 12:58:51'),
(75, 17, 6, 4300000.00, '2024-12-17 13:12:50', 0, '2024-12-17 13:12:50', '2024-12-17 13:12:50'),
(76, 17, 6, 4400000.00, '2024-12-17 13:13:03', 0, '2024-12-17 13:13:03', '2024-12-17 13:13:03'),
(77, 8, 7, 6100000.00, '2024-12-17 14:42:03', 0, '2024-12-17 14:42:03', '2024-12-17 14:42:03'),
(78, 8, 8, 3600000.00, '2024-12-17 15:30:48', 0, '2024-12-17 15:30:48', '2024-12-17 15:30:48'),
(79, 8, 8, 3700000.00, '2024-12-17 17:32:04', 0, '2024-12-17 17:32:04', '2024-12-17 17:32:04'),
(80, 23, 8, 365000000.00, '2024-12-17 17:32:46', 0, '2024-12-17 17:32:46', '2024-12-17 17:32:46'),
(81, 24, 10, 2600000.00, '2024-12-17 17:34:57', 0, '2024-12-17 17:34:57', '2024-12-17 17:34:57'),
(82, 23, 7, 6200000.00, '2024-12-17 17:36:34', 0, '2024-12-17 17:36:34', '2024-12-17 17:36:34'),
(83, 23, 7, 6300000.00, '2024-12-17 17:37:18', 0, '2024-12-17 17:37:18', '2024-12-17 17:37:18'),
(84, 18, 7, 7000000.00, '2024-12-17 17:41:19', 0, '2024-12-17 17:41:19', '2024-12-17 17:41:19'),
(85, 20, 7, 7100000.00, '2024-12-17 17:42:18', 0, '2024-12-17 17:42:18', '2024-12-17 17:42:18'),
(86, 24, 7, 7200000.00, '2024-12-17 17:42:26', 0, '2024-12-17 17:42:26', '2024-12-17 17:42:26'),
(87, 20, 7, 7500000.00, '2024-12-17 17:42:47', 1, '2024-12-17 17:42:47', '2024-12-17 17:42:54'),
(88, 24, 7, 7600000.00, '2024-12-17 17:43:01', 0, '2024-12-17 17:43:01', '2024-12-17 17:43:01'),
(89, 20, 7, 8000000.00, '2024-12-17 17:43:06', 0, '2024-12-17 17:43:06', '2024-12-17 17:43:06'),
(90, 24, 7, 8100000.00, '2024-12-17 17:43:28', 1, '2024-12-17 17:43:28', '2024-12-17 17:43:30'),
(91, 23, 7, 8200000.00, '2024-12-17 17:45:32', 0, '2024-12-17 17:45:32', '2024-12-17 17:45:32'),
(92, 25, 7, 8300000.00, '2024-12-17 17:51:37', 0, '2024-12-17 17:51:37', '2024-12-17 17:51:37'),
(93, 18, 7, 8400000.00, '2024-12-17 17:51:54', 0, '2024-12-17 17:51:54', '2024-12-17 17:51:54'),
(94, 25, 7, 9000000.00, '2024-12-17 17:52:05', 1, '2024-12-17 17:52:05', '2024-12-17 17:52:24'),
(95, 24, 7, 9200000.00, '2024-12-17 17:55:28', 1, '2024-12-17 17:55:28', '2024-12-17 17:58:55'),
(96, 26, 7, 9300000.00, '2024-12-17 18:22:18', 0, '2024-12-17 18:22:18', '2024-12-17 18:22:18'),
(97, 23, 7, 9400000.00, '2024-12-17 18:22:21', 0, '2024-12-17 18:22:21', '2024-12-17 18:22:21'),
(98, 26, 7, 9500000.00, '2024-12-17 18:22:30', 0, '2024-12-17 18:22:30', '2024-12-17 18:22:30'),
(99, 23, 7, 9600000.00, '2024-12-17 18:22:34', 0, '2024-12-17 18:22:34', '2024-12-17 18:22:34'),
(100, 26, 7, 10000000.00, '2024-12-17 18:22:50', 0, '2024-12-17 18:22:50', '2024-12-17 18:22:50'),
(101, 23, 7, 10100000.00, '2024-12-17 18:23:09', 1, '2024-12-17 18:23:09', '2024-12-17 18:23:15'),
(102, 26, 12, 510000000.00, '2024-12-17 18:29:17', 0, '2024-12-17 18:29:18', '2024-12-17 18:29:18'),
(103, 23, 12, 520000000.00, '2024-12-17 18:29:43', 0, '2024-12-17 18:29:43', '2024-12-17 18:29:43'),
(104, 26, 12, 530000000.00, '2024-12-17 18:33:53', 0, '2024-12-17 18:33:53', '2024-12-17 18:33:53');

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"2ebbc0fb-3dee-4b8e-b292-cb5e10688b4c\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734276020, 1734276020),
(2, 'default', '{\"uuid\":\"d5258338-acc7-43ca-8ca3-d4c3892937e1\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:43;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734276494, 1734276494),
(3, 'default', '{\"uuid\":\"4f59c4c9-2d65-401c-8381-2ec9024036ff\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:44;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734276807, 1734276807),
(4, 'default', '{\"uuid\":\"884b7c60-00d4-4767-b89f-c7a6adb2ec52\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:45;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734277306, 1734277306),
(5, 'default', '{\"uuid\":\"d54b18fd-80dc-4bc1-b004-595d776ea15e\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:46;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734277359, 1734277359),
(6, 'default', '{\"uuid\":\"fff92a47-2f10-432c-9855-838d6ecdad46\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:47;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734278043, 1734278043),
(7, 'default', '{\"uuid\":\"a9a950aa-3dab-4ab3-8e69-58df8b613e59\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:48;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734278048, 1734278048),
(8, 'default', '{\"uuid\":\"4afb8845-1c29-4c8b-873e-663fd721c8f2\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:49;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734278053, 1734278053),
(9, 'default', '{\"uuid\":\"1e2ac06c-2175-422a-b2e8-44502694566a\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:50;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734278061, 1734278061),
(10, 'default', '{\"uuid\":\"83770878-eed6-49c2-abe5-cb33a8e6baf1\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:51;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734323694, 1734323694),
(11, 'default', '{\"uuid\":\"d8809c57-31be-4819-9f6f-91edd624c07b\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:52;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734323717, 1734323717),
(12, 'default', '{\"uuid\":\"4220a0d0-6417-4029-bfe0-89ee5dbfb909\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:53;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734323739, 1734323739),
(13, 'default', '{\"uuid\":\"a041bbfa-d879-4c5f-86a5-b292dc7c657f\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:54;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734342013, 1734342013),
(14, 'default', '{\"uuid\":\"f82338c7-f3f6-4f4a-acf3-a52514cd8399\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:55;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734359971, 1734359971),
(15, 'default', '{\"uuid\":\"9264467b-7724-4095-b51f-b0552cb00fad\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:56;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734380606, 1734380606),
(16, 'default', '{\"uuid\":\"02dda131-9296-4385-b243-3c0c967363be\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:60;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734398017, 1734398017),
(17, 'default', '{\"uuid\":\"f9cfc13f-8172-4211-b471-15a0941ce003\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:61;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734398023, 1734398023),
(18, 'default', '{\"uuid\":\"b900719b-00f3-4ae4-81ee-9340cdfc3016\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:62;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734411793, 1734411793),
(19, 'default', '{\"uuid\":\"82499cad-6a42-465b-99a5-e56874fd9306\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:63;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734418275, 1734418275),
(20, 'default', '{\"uuid\":\"a76ac841-cfcd-4b5c-a0aa-9624f1cb088a\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:64;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734418308, 1734418308),
(21, 'default', '{\"uuid\":\"5b8d8cb7-861b-4943-829e-24fbd9a05b42\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:65;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734418361, 1734418361),
(22, 'default', '{\"uuid\":\"d2e12084-781c-47e7-a044-89ad9988ccd3\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:66;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734418381, 1734418381),
(23, 'default', '{\"uuid\":\"41ee6f94-c376-4cf7-a4d2-dee752354481\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:67;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734421992, 1734421992),
(24, 'default', '{\"uuid\":\"457ee1ac-2e16-40e2-8ea4-a8dba8063bf1\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:68;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734438856, 1734438856),
(25, 'default', '{\"uuid\":\"3a289b2f-86f4-4161-bbea-c0b0a40a3200\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:69;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734439028, 1734439028),
(26, 'default', '{\"uuid\":\"ed36ee1f-920e-443b-a953-aebe8a266a9f\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:70;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734439054, 1734439054),
(27, 'default', '{\"uuid\":\"2d20c375-3ae2-4112-b5f6-97dcce128a4a\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:71;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734439077, 1734439077),
(28, 'default', '{\"uuid\":\"6b5e20ea-7157-44e2-8967-a0d5bb185ed6\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:72;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734440191, 1734440191),
(29, 'default', '{\"uuid\":\"f13d5fa1-3175-441e-8ef4-4c62a464ce22\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:73;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734440331, 1734440331),
(30, 'default', '{\"uuid\":\"e8e4d467-ac28-426e-9c22-f3c66083a586\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:74;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734440732, 1734440732),
(31, 'default', '{\"uuid\":\"c62c49e4-dd1e-4ae5-907f-b71c40a46019\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:75;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734441170, 1734441170),
(32, 'default', '{\"uuid\":\"410a3048-aad0-42fb-aecc-ac2e4cca0c96\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:76;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734441183, 1734441183),
(33, 'default', '{\"uuid\":\"45407450-3dab-482b-8afb-2188db06f3ae\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:77;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734446523, 1734446523),
(34, 'default', '{\"uuid\":\"d1e08ddf-4528-433d-be80-e757a76e1764\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:78;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734449448, 1734449448),
(35, 'default', '{\"uuid\":\"df11b2b4-149f-4a90-8d15-4ea2707d770d\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:79;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734456724, 1734456724),
(36, 'default', '{\"uuid\":\"c7fb50b5-21bf-4857-9749-553b0e7a0c7b\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:80;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734456766, 1734456766),
(37, 'default', '{\"uuid\":\"e57c2b01-c087-48ca-ba84-52a3f4e05448\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:81;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734456897, 1734456897),
(38, 'default', '{\"uuid\":\"2b0d3193-5a41-40ce-b449-9b79333284df\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:82;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734456994, 1734456994),
(39, 'default', '{\"uuid\":\"efd34631-a0a3-4222-b13b-60f58e0ff1d8\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:83;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457038, 1734457038),
(40, 'default', '{\"uuid\":\"4ea9caa3-9e5d-483f-bbbe-e90d8df2e85b\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:84;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457279, 1734457279),
(41, 'default', '{\"uuid\":\"49e0c934-96bd-4d64-b49e-eb870e78540c\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:85;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457338, 1734457338),
(42, 'default', '{\"uuid\":\"33b85df5-e432-4b21-a8ed-1ee125c2bbf9\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:86;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457346, 1734457346),
(43, 'default', '{\"uuid\":\"13f3e32a-0fd2-4186-ba01-ce50c890f112\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:87;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457367, 1734457367);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(44, 'default', '{\"uuid\":\"8f993775-e1f7-4037-be22-1a8bcc66114c\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:88;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457381, 1734457381),
(45, 'default', '{\"uuid\":\"057ad03b-2194-4f3c-a2d7-74ca6afcf9f4\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:89;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457386, 1734457386),
(46, 'default', '{\"uuid\":\"62d408eb-d9d0-473b-87e0-649c28174289\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:90;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457408, 1734457408),
(47, 'default', '{\"uuid\":\"83b03b10-5380-4b1d-afe1-4e3c0dad0ee3\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:91;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457532, 1734457532),
(48, 'default', '{\"uuid\":\"f4b53724-e9d4-4425-bd98-223d30cbe34a\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:92;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457897, 1734457897),
(49, 'default', '{\"uuid\":\"e6102e9d-bba0-49ae-b48d-6bedb7a7777a\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:93;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457914, 1734457914),
(50, 'default', '{\"uuid\":\"aee1aff5-ebe5-4177-9907-10eadae8c873\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:94;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734457925, 1734457925),
(51, 'default', '{\"uuid\":\"cc2b09ed-bad1-43b9-9b51-2c55823b896a\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:95;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734458128, 1734458128),
(52, 'default', '{\"uuid\":\"4a7e0276-b4f3-4179-be94-7a1ca5aed63b\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:96;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734459738, 1734459738),
(53, 'default', '{\"uuid\":\"44c9da74-9144-46cf-b0e9-1714100aaf0f\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:97;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734459741, 1734459741),
(54, 'default', '{\"uuid\":\"4d9162b1-e3a3-415c-bba1-079180910e91\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:98;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734459750, 1734459750),
(55, 'default', '{\"uuid\":\"fed12229-d79a-46ec-9062-7660f05f8fbe\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:99;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734459754, 1734459754),
(56, 'default', '{\"uuid\":\"a1d2c6e1-acc5-41b0-b066-79193e3c045e\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:100;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734459770, 1734459770),
(57, 'default', '{\"uuid\":\"842926c8-1948-4376-8919-a2570e509786\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:101;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734459789, 1734459789),
(58, 'default', '{\"uuid\":\"be0bbe70-cadb-4197-8014-b29800e016f0\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:102;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734460158, 1734460158),
(59, 'default', '{\"uuid\":\"bd874b20-70b1-47e3-83dc-ecc1007ae2ba\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:103;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734460183, 1734460183),
(60, 'default', '{\"uuid\":\"16be2c40-1c6c-42e2-88af-cd4aece066e4\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:104;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734460433, 1734460433),
(61, 'default', '{\"uuid\":\"e637b1f4-a2f0-41c6-ab7c-ed9a031c2b58\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:105;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734460434, 1734460434),
(62, 'default', '{\"uuid\":\"52496398-ea09-431b-a7fd-b59ef4a2bd74\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:106;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734460449, 1734460449),
(63, 'default', '{\"uuid\":\"53306a47-8d41-4d06-a2ff-5aa969e47b99\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:107;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734460457, 1734460457),
(64, 'default', '{\"uuid\":\"a338faba-363a-4c84-80e4-3cf18690afde\",\"displayName\":\"App\\\\Events\\\\BidCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\BidCreated\\\":1:{s:3:\\\"bid\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:14:\\\"App\\\\Models\\\\Bid\\\";s:2:\\\"id\\\";i:108;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1734460475, 1734460475);

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
-- Table structure for table `lelang`
--

CREATE TABLE `lelang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` enum('active','completed','cancelled','ended') NOT NULL DEFAULT 'active',
  `harga_awal` decimal(15,2) NOT NULL,
  `harga_akhir` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lelang`
--

INSERT INTO `lelang` (`id`, `barang_id`, `title`, `deskripsi`, `start_time`, `end_time`, `status`, `harga_awal`, `harga_akhir`, `created_at`, `updated_at`) VALUES
(1, 7, 'Auction for Gaming Laptop', 'Auction for a high-end gaming laptop.', '2024-12-10 08:00:00', '2024-12-17 12:00:00', 'ended', 5000000.00, NULL, '2024-12-13 00:44:55', '2024-12-17 13:09:13'),
(2, 1, 'Auction for Smartphone', 'Auction for a smartphone with AMOLED display and large battery capacity.', '2024-12-10 08:00:00', '2024-12-15 12:00:00', 'ended', 2000000.00, NULL, '2024-12-13 08:00:18', '2024-12-15 03:28:20'),
(3, 2, 'Auction for DSLR Camera', 'Auction for a DSLR camera for professional photography with advanced features.', '2024-12-10 10:00:00', '2024-12-16 14:00:00', 'ended', 3000000.00, NULL, '2024-12-13 08:00:18', '2024-12-16 04:39:50'),
(4, 3, 'Auction for Study Desk', 'Auction for a teak wood study desk with a minimalist design.', '2024-12-10 09:00:00', '2024-12-17 13:00:00', 'ended', 1000000.00, NULL, '2024-12-13 08:00:18', '2024-12-15 16:08:27'),
(5, 4, 'Auction for Mountain Bike', 'Auction for a mountain bike with dual suspension for rough terrain.', '2024-12-18 08:00:00', '2024-12-18 12:00:00', 'active', 1500000.00, NULL, '2024-12-13 08:00:18', '2024-12-13 08:00:18'),
(6, 5, 'Auction for LED Television', 'Auction for a 50-inch LED television with 4K UHD resolution.', '2024-12-19 10:00:00', '2024-12-19 14:00:00', 'ended', 4000000.00, NULL, '2024-12-13 08:00:18', '2024-12-18 03:06:01'),
(7, 6, 'Auction for Gaming Chair', 'Auction for an ergonomic gaming chair with lumbar support.', '2024-12-14 10:00:00', '2024-12-20 12:00:00', 'active', 2000000.00, NULL, '2024-12-14 09:27:21', '2024-12-18 03:36:30'),
(8, 8, 'Auction for Air Conditioner', 'Auction for a high-efficiency air conditioner with fast cooling.', '2024-12-15 08:00:00', '2024-12-21 10:00:00', 'active', 3000000.00, NULL, '2024-12-14 09:27:21', '2024-12-17 01:47:46'),
(9, 9, 'Auction for Electric Guitar', 'Auction for an electric guitar with solid body and pickups.', '2024-12-16 09:00:00', '2024-12-22 11:00:00', 'active', 1500000.00, NULL, '2024-12-14 09:27:21', '2024-12-14 09:27:21'),
(10, 10, 'Auction for Office Desk', 'Auction for a spacious office desk with modern design.', '2024-12-17 09:00:00', '2024-12-23 13:00:00', 'ended', 2500000.00, NULL, '2024-12-14 09:27:21', '2024-12-18 03:05:38'),
(11, 11, 'Auction for Lamborghini Aventador', 'Auction for a high-performance sports car with V12 engine.', '2024-12-20 10:00:00', '2024-12-27 10:00:00', 'active', 8000000000.00, NULL, '2024-12-14 10:05:18', '2024-12-14 10:05:18'),
(12, 12, 'Auction for Harley Davidson', 'Auction for a premium cruiser motorcycle with a powerful engine.', '2024-12-21 09:00:00', '2024-12-28 09:00:00', 'active', 500000000.00, NULL, '2024-12-14 10:05:18', '2024-12-18 02:14:16'),
(13, 13, 'Auction for Kawasaki Ninja ZX-10R', 'Auction for a high-speed superbike designed for performance.', '2024-12-22 08:00:00', '2024-12-29 08:00:00', 'active', 400000000.00, NULL, '2024-12-14 10:05:18', '2024-12-14 10:05:18'),
(14, 14, 'Auction for Jakarta Apartment', 'Auction for a luxury apartment with city view in Central Jakarta.', '2024-12-23 10:00:00', '2024-12-30 10:00:00', 'active', 2000000000.00, NULL, '2024-12-14 10:05:18', '2024-12-14 10:05:18'),
(15, 15, 'Auction for Bali Beachfront Land', 'Auction for vacant land with a stunning ocean view in Bali.', '2024-12-24 09:00:00', '2024-12-31 09:00:00', 'active', 3000000000.00, NULL, '2024-12-14 10:05:18', '2024-12-14 10:05:18'),
(16, 16, 'Auction for Surabaya Apartment', 'Auction for a spacious apartment in the heart of Surabaya.', '2024-12-25 10:00:00', '2025-01-01 10:00:00', 'active', 1500000000.00, NULL, '2024-12-14 10:05:18', '2024-12-14 10:05:18'),
(17, 17, 'Auction for Acoustic Guitar', 'Auction for a high-quality acoustic guitar.', '2024-12-12 08:00:00', '2024-12-20 12:00:00', 'active', 1500000.00, NULL, '2024-12-14 05:00:00', '2024-12-14 05:00:00'),
(18, 18, 'Auction for Electric Piano', 'Auction for a compact electric piano with weighted keys.', '2024-12-12 09:00:00', '2024-12-21 12:00:00', 'active', 5000000.00, NULL, '2024-12-14 05:00:00', '2024-12-14 05:00:00'),
(19, 19, 'Auction for DJ Mixer', 'Auction for a professional DJ mixer with advanced features.', '2024-12-12 10:00:00', '2024-12-22 14:00:00', 'ended', 3000000.00, NULL, '2024-12-14 05:00:00', '2024-12-17 13:03:13'),
(20, 20, 'Auction for Luxury Villa', 'Auction for a luxury 5-bedroom villa with private pool.', '2024-12-12 11:00:00', '2024-12-23 16:00:00', 'active', 50000000.00, NULL, '2024-12-14 05:00:00', '2024-12-14 05:00:00'),
(21, 21, 'Auction for Office Desk', 'Auction for a modern office desk made of solid wood.', '2024-12-12 12:00:00', '2024-12-24 16:00:00', 'active', 2000000.00, NULL, '2024-12-14 05:00:00', '2024-12-14 05:00:00'),
(26, 27, 'auction for samsung s24 ultra', 'bangus banget dijamin gak nyesel', '2024-09-17 10:10:00', '2025-09-17 10:10:00', 'active', 9000000.00, NULL, '2024-12-18 02:02:28', '2024-12-18 02:03:23');

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
(1, '2024_12_15_134818_create_barang_table', 0),
(2, '2024_12_15_134818_create_bids_table', 0),
(3, '2024_12_15_134818_create_cache_table', 0),
(4, '2024_12_15_134818_create_cache_locks_table', 0),
(5, '2024_12_15_134818_create_failed_jobs_table', 0),
(6, '2024_12_15_134818_create_job_batches_table', 0),
(7, '2024_12_15_134818_create_jobs_table', 0),
(8, '2024_12_15_134818_create_lelang_table', 0),
(9, '2024_12_15_134818_create_password_reset_tokens_table', 0),
(10, '2024_12_15_134818_create_personal_access_tokens_table', 0),
(11, '2024_12_15_134818_create_sessions_table', 0),
(12, '2024_12_15_134818_create_transactions_table', 0),
(13, '2024_12_15_134818_create_users_table', 0),
(14, '2024_12_15_134821_add_foreign_keys_to_bids_table', 0),
(15, '2024_12_15_134821_add_foreign_keys_to_lelang_table', 0),
(16, '2024_12_15_134821_add_foreign_keys_to_transactions_table', 0),
(17, '2024_12_16_225258_update_foreign_keys_in_transactions', 1);

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
(1, 'App\\Models\\User', 1, 'auth_token', '07e91157644cba0d49828f7fd4f180d969622e26a24043739c48ba1a75ec5d92', '[\"*\"]', NULL, NULL, '2024-12-12 22:49:21', '2024-12-12 22:49:21'),
(4, 'App\\Models\\User', 1, 'auth_token', 'd80bf0afb14345ac5ec2eb0cdb6c46a521f5fe3773b83288d2f5bb413822fc14', '[\"*\"]', '2024-12-15 15:28:14', NULL, '2024-12-12 23:36:34', '2024-12-15 15:28:14'),
(5, 'App\\Models\\User', 1, 'auth_token', '1da7261f2d683a193ba52946f205986d0079bf31ef774b8ea30f14196e50ba7b', '[\"*\"]', '2024-12-13 04:52:54', NULL, '2024-12-13 04:06:01', '2024-12-13 04:52:54'),
(6, 'App\\Models\\User', 1, 'auth_token', '82121206c0729687ebb34da168a322103bf346acda6a034a769ad47e8204b238', '[\"*\"]', '2024-12-13 04:57:21', NULL, '2024-12-13 04:53:26', '2024-12-13 04:57:21'),
(7, 'App\\Models\\User', 1, 'auth_token', 'fbdb10e8904dc239c9382ba2f9858a8ece7fa04d67370faad358bc80497a4306', '[\"*\"]', '2024-12-13 05:12:03', NULL, '2024-12-13 04:58:01', '2024-12-13 05:12:03'),
(8, 'App\\Models\\User', 1, 'auth_token', '4cb1aecb8438a0f615e0cad9658c52985ba3b0e7dea52caaeb29a0d5a08c2d76', '[\"*\"]', '2024-12-13 05:18:26', NULL, '2024-12-13 05:12:49', '2024-12-13 05:18:26'),
(9, 'App\\Models\\User', 1, 'auth_token', '0404f6ec2eecbda36aa7ba0a7fcfe72d33291476ee83a57b53efa2e419829c26', '[\"*\"]', '2024-12-13 05:46:52', NULL, '2024-12-13 05:21:01', '2024-12-13 05:46:52'),
(10, 'App\\Models\\User', 1, 'auth_token', '2c1b340f57df98ec0b6157f6edbaa24eab897fa7c2a859b8b63e7f71ac052edc', '[\"*\"]', NULL, NULL, '2024-12-13 05:55:58', '2024-12-13 05:55:58'),
(11, 'App\\Models\\User', 1, 'auth_token', '3054488b8dc4c59178e957d4a5b82b94f62377258ed2edc9e871d9b3fa2f3634', '[\"*\"]', NULL, NULL, '2024-12-13 05:56:30', '2024-12-13 05:56:30'),
(12, 'App\\Models\\User', 1, 'auth_token', '88fe508a95ec5f55ec2568449bde5c3f6a0f744ac906bfc3e2c542e09aa63d89', '[\"*\"]', NULL, NULL, '2024-12-13 05:56:56', '2024-12-13 05:56:56'),
(13, 'App\\Models\\User', 1, 'auth_token', '2e50bac2a19ac14cf6eb0f0462194cf06852e41f00087beb9c69d0ff06b07657', '[\"*\"]', NULL, NULL, '2024-12-13 05:57:21', '2024-12-13 05:57:21'),
(14, 'App\\Models\\User', 1, 'auth_token', '5d659c64004e5b31ff260929b19aa95cc32f5965c0afb0c2a53351f1b6686932', '[\"*\"]', '2024-12-14 05:35:02', NULL, '2024-12-13 05:57:43', '2024-12-14 05:35:02'),
(15, 'App\\Models\\User', 1, 'auth_token', '0ce4be10b76cb1925b592b08d4fd711a4cadb2aa7df369e840ae1a818df4c186', '[\"*\"]', '2024-12-14 05:39:13', NULL, '2024-12-14 05:36:28', '2024-12-14 05:39:13'),
(16, 'App\\Models\\User', 1, 'auth_token', '53c589a92c3e296b339618bbb446aafd04d83200332d24a68e268ae260e133c3', '[\"*\"]', '2024-12-14 05:43:47', NULL, '2024-12-14 05:39:27', '2024-12-14 05:43:47'),
(17, 'App\\Models\\User', 1, 'auth_token', '0a01c31ec2136047a9f77b0736b9849af5107f00708809518d98eca4c6b9c7d9', '[\"*\"]', NULL, NULL, '2024-12-14 05:43:54', '2024-12-14 05:43:54'),
(18, 'App\\Models\\User', 1, 'auth_token', '081366357487e4de5f714e62def7d51088462253057814f3225037b672aaeec7', '[\"*\"]', '2024-12-14 05:46:37', NULL, '2024-12-14 05:44:42', '2024-12-14 05:46:37'),
(19, 'App\\Models\\User', 1, 'auth_token', 'ce4b1674f66acb54554a2f48ac7826fd191f0b0c9e60e8f6029a0be4d4cc1bdc', '[\"*\"]', '2024-12-14 05:47:23', NULL, '2024-12-14 05:46:46', '2024-12-14 05:47:23'),
(20, 'App\\Models\\User', 1, 'auth_token', 'e5cfa1ce594b00c05c6bd8244f048bfeb99b5cb1eb6a792f48809668d4b67d67', '[\"*\"]', '2024-12-14 06:00:10', NULL, '2024-12-14 05:47:31', '2024-12-14 06:00:10'),
(21, 'App\\Models\\User', 1, 'auth_token', 'aa92e1fc976a0597c5997e90bcdf87ad3c6b005ca36ac8f2e663f98f3190b728', '[\"*\"]', '2024-12-14 07:34:14', NULL, '2024-12-14 06:01:04', '2024-12-14 07:34:14'),
(22, 'App\\Models\\User', 1, 'auth_token', 'ff03a7eb048c592830e0f676160c42542ed310fffed606eea4a50b66b83025a2', '[\"*\"]', '2024-12-14 07:39:41', NULL, '2024-12-14 07:35:05', '2024-12-14 07:39:41'),
(23, 'App\\Models\\User', 1, 'auth_token', '0b856cb7d5c71fbcc94d58ecfc790ac35d5e5f3141d15537fde2af4bc81ecf98', '[\"*\"]', '2024-12-14 07:44:36', NULL, '2024-12-14 07:39:54', '2024-12-14 07:44:36'),
(24, 'App\\Models\\User', 1, 'auth_token', '9c5416cac4f6da9432e93acb2ec367ff0d38ee5cefe9596a5d9aa16c42ad8167', '[\"*\"]', '2024-12-14 07:45:44', NULL, '2024-12-14 07:44:56', '2024-12-14 07:45:44'),
(25, 'App\\Models\\User', 1, 'auth_token', '37f75a4e88c2704a6ef6143fc9e72395dee0307b335d3c0a3de446a30d08001d', '[\"*\"]', '2024-12-14 07:49:23', NULL, '2024-12-14 07:45:54', '2024-12-14 07:49:23'),
(26, 'App\\Models\\User', 1, 'auth_token', 'abe142de84abbbdffb4e7154d672bdbab1c1162159fc1897589e6a0781c9568b', '[\"*\"]', '2024-12-14 07:58:18', NULL, '2024-12-14 07:49:36', '2024-12-14 07:58:18'),
(27, 'App\\Models\\User', 1, 'auth_token', 'd9f881565f0e3fbee2e0767e3855b46907ee9df35af8a5fdca91d726c9de5a73', '[\"*\"]', '2024-12-14 07:59:41', NULL, '2024-12-14 07:58:35', '2024-12-14 07:59:41'),
(28, 'App\\Models\\User', 1, 'auth_token', 'bc1c7f7bf5a1b76ef3f180761388856c0e69ce032a66316c7e4af57bbe257ed2', '[\"*\"]', '2024-12-14 08:00:24', NULL, '2024-12-14 07:59:49', '2024-12-14 08:00:24'),
(29, 'App\\Models\\User', 1, 'auth_token', '8dab37009b47705d86d6392eec55fe41b4a65a26612aedf92dcafa8a2054920b', '[\"*\"]', '2024-12-14 08:03:27', NULL, '2024-12-14 08:01:48', '2024-12-14 08:03:27'),
(30, 'App\\Models\\User', 1, 'auth_token', 'f2d668a48c5ab0858b6f5b55d682d19ddd22fa670cf70fa8409cb312d3b8f348', '[\"*\"]', '2024-12-14 08:05:31', NULL, '2024-12-14 08:05:23', '2024-12-14 08:05:31'),
(31, 'App\\Models\\User', 1, 'auth_token', '4b97d85dfb9197b495b1e8fb860a199b47f68610c2c916f37f6eb60f00cc6b10', '[\"*\"]', NULL, NULL, '2024-12-14 08:06:21', '2024-12-14 08:06:21'),
(32, 'App\\Models\\User', 1, 'auth_token', 'c86c2f7a2280597b27d0ff10255d1eb1562308afa41f52dbfa09511b23bfa0a1', '[\"*\"]', '2024-12-14 08:07:20', NULL, '2024-12-14 08:06:39', '2024-12-14 08:07:20'),
(33, 'App\\Models\\User', 1, 'auth_token', '786d1d49d992ad44bd8aaca4a0db936a1e2c7ab3410b4b05586295e58df00346', '[\"*\"]', NULL, NULL, '2024-12-14 08:07:41', '2024-12-14 08:07:41'),
(34, 'App\\Models\\User', 1, 'auth_token', 'ccf47fd523665f1d62eaa317041425ee5bea00debdcb4b42cf5b2decbda1b252', '[\"*\"]', NULL, NULL, '2024-12-14 08:08:06', '2024-12-14 08:08:06'),
(35, 'App\\Models\\User', 1, 'auth_token', '642592fbb2c9934a6a066abbb187a6020d75d3008ba86fd1431b6686fb5d0c29', '[\"*\"]', NULL, NULL, '2024-12-14 08:08:22', '2024-12-14 08:08:22'),
(36, 'App\\Models\\User', 1, 'auth_token', '19eed8a1502d0adb455713088f0f8bd44337eb837202be255b3a424a82d37b3b', '[\"*\"]', '2024-12-14 08:09:58', NULL, '2024-12-14 08:09:05', '2024-12-14 08:09:58'),
(37, 'App\\Models\\User', 1, 'auth_token', '1a8ca84afff603ffbe9efbe5e716157f2451e4329aab3c95ca65268f46c4888c', '[\"*\"]', '2024-12-14 08:11:00', NULL, '2024-12-14 08:10:52', '2024-12-14 08:11:00'),
(38, 'App\\Models\\User', 1, 'auth_token', 'ce818cfd5ee10bdf5b9b129f1c48028d93b3544fcc4d99c7c624e0ae7e751db9', '[\"*\"]', '2024-12-14 08:14:16', NULL, '2024-12-14 08:14:08', '2024-12-14 08:14:16'),
(39, 'App\\Models\\User', 1, 'auth_token', '8d9852961b68f2d63a5ea5f3deae4056c4a7a8ed74280934dbfff79c5561133b', '[\"*\"]', NULL, NULL, '2024-12-14 08:17:15', '2024-12-14 08:17:15'),
(40, 'App\\Models\\User', 1, 'auth_token', 'da770e8bc24d4e4705b9ebaba040a336391bfed6e10420b266bfbb391c683369', '[\"*\"]', '2024-12-14 08:20:49', NULL, '2024-12-14 08:20:37', '2024-12-14 08:20:49'),
(41, 'App\\Models\\User', 1, 'auth_token', '2631ceed1d675afa84658c26de10d04feffc41498551f203d32a95b78341adcd', '[\"*\"]', NULL, NULL, '2024-12-14 08:21:09', '2024-12-14 08:21:09'),
(42, 'App\\Models\\User', 1, 'auth_token', 'be85411bf94ffd54009a80696af3d8531f7225ba0a3db6efddae19f03a08d3b2', '[\"*\"]', '2024-12-14 08:22:46', NULL, '2024-12-14 08:22:39', '2024-12-14 08:22:46'),
(43, 'App\\Models\\User', 1, 'auth_token', '513c3dbfb22c303af0f556c5e5706ab2315bbdce4f228593a1265f2ba66ed06d', '[\"*\"]', NULL, NULL, '2024-12-14 08:25:19', '2024-12-14 08:25:19'),
(44, 'App\\Models\\User', 1, 'auth_token', '9d3f17576d7509b2346cb73371c523c2d9b594f9bfba75772207c1c8843fcb23', '[\"*\"]', NULL, NULL, '2024-12-14 08:25:31', '2024-12-14 08:25:31'),
(45, 'App\\Models\\User', 1, 'auth_token', '9c00cd5b81aca26644a51d239ff114c075941e7cd6afdfcadcca2f5d23b5cb72', '[\"*\"]', NULL, NULL, '2024-12-14 08:33:23', '2024-12-14 08:33:23'),
(46, 'App\\Models\\User', 1, 'auth_token', '4bfd0173158fe656a83b47ab5497d3c69bd1318584c9e221bd520528d3b49024', '[\"*\"]', NULL, NULL, '2024-12-14 08:39:51', '2024-12-14 08:39:51'),
(47, 'App\\Models\\User', 1, 'auth_token', '17c6d0a20d3b0f62e31a4ba33d7f9e7fe09c457c510e78d2ea1afaab08faeb6a', '[\"*\"]', NULL, NULL, '2024-12-14 17:07:10', '2024-12-14 17:07:10'),
(48, 'App\\Models\\User', 1, 'auth_token', 'fa12de4e2dc3a330a98dca8c3b5cb94f207925c14de586483045b97f9f1660cc', '[\"*\"]', NULL, NULL, '2024-12-14 17:07:32', '2024-12-14 17:07:32'),
(49, 'App\\Models\\User', 1, 'auth_token', 'e19c2b3ac21c516159a17d62ed7c39a666d6b920f6998e453443938dc17c1cfb', '[\"*\"]', NULL, NULL, '2024-12-14 17:53:23', '2024-12-14 17:53:23'),
(50, 'App\\Models\\User', 1, 'auth_token', '085c7d1f292f37ea9075ebebfa00ee7b0665934303c6d0113fc78f98e0908233', '[\"*\"]', '2024-12-14 18:05:41', NULL, '2024-12-14 17:58:17', '2024-12-14 18:05:41'),
(51, 'App\\Models\\User', 3, 'auth_token', '1dfc7ed88ffaec81ee7955d8ade7b68c83efa2c8da98e8a76668543e22820c88', '[\"*\"]', '2024-12-14 18:06:22', NULL, '2024-12-14 18:06:18', '2024-12-14 18:06:22'),
(52, 'App\\Models\\User', 1, 'auth_token', '968bc4c79ad3240e2c9249918bb76c766b036177829952dd82cec61382738386', '[\"*\"]', '2024-12-14 18:07:55', NULL, '2024-12-14 18:06:33', '2024-12-14 18:07:55'),
(53, 'App\\Models\\User', 1, 'auth_token', '2f81457eaa82f54b6710993fce04c8d3cb9d743a53b539b0ab8a7a6badc85d6e', '[\"*\"]', '2024-12-14 18:11:42', NULL, '2024-12-14 18:10:41', '2024-12-14 18:11:42'),
(54, 'App\\Models\\User', 1, 'auth_token', '3cfa770af1bf74347d8e170ba3639cac58f2487780f70b6f39fc444cb97df1cb', '[\"*\"]', '2024-12-14 18:20:08', NULL, '2024-12-14 18:11:52', '2024-12-14 18:20:08'),
(55, 'App\\Models\\User', 1, 'auth_token', 'ddedc5864e4191f05a26f562305f4e9d290c7e140aa0d5b7cbb1feeee9a0167a', '[\"*\"]', '2024-12-14 18:23:22', NULL, '2024-12-14 18:20:28', '2024-12-14 18:23:22'),
(56, 'App\\Models\\User', 1, 'auth_token', 'c041af23f239c83655afde31e3ac2d4aac5917f11514debf26594c482b68419d', '[\"*\"]', '2024-12-14 18:26:13', NULL, '2024-12-14 18:26:09', '2024-12-14 18:26:13'),
(57, 'App\\Models\\User', 1, 'auth_token', '2ae0f19c10fbc5ac12ffabb389fc8134bd20c31a3f89235b57f9323f4565e8ca', '[\"*\"]', '2024-12-14 18:33:02', NULL, '2024-12-14 18:32:58', '2024-12-14 18:33:02'),
(58, 'App\\Models\\User', 1, 'auth_token', '880bfaa4d604a9ae40e59ddf11543b2205ca4e95796783729732780cb8abe9f7', '[\"*\"]', '2024-12-14 18:33:50', NULL, '2024-12-14 18:33:43', '2024-12-14 18:33:50'),
(59, 'App\\Models\\User', 1, 'auth_token', '0ea7eb43dcdbfc5b844f73d33a9ec7a5164ae3bc1c3f7ef293e7521b13d09998', '[\"*\"]', '2024-12-14 18:34:52', NULL, '2024-12-14 18:34:46', '2024-12-14 18:34:52'),
(60, 'App\\Models\\User', 1, 'auth_token', '2a784c11bd9ebe767b490ffeaa4c7c066931c18b6a7b09621a9cbb53fb1e63c8', '[\"*\"]', '2024-12-14 18:35:09', NULL, '2024-12-14 18:35:05', '2024-12-14 18:35:09'),
(61, 'App\\Models\\User', 1, 'auth_token', 'e60fa69384d852e9da4dc4c5509243a15aac2f9b44b74c3a8d4121675a02b195', '[\"*\"]', '2024-12-14 18:41:35', NULL, '2024-12-14 18:41:30', '2024-12-14 18:41:35'),
(62, 'App\\Models\\User', 1, 'auth_token', 'f7e218fb908e720121029900af7b6d458fb97f64f87a0e53e5f3b35facc366fe', '[\"*\"]', '2024-12-14 18:43:39', NULL, '2024-12-14 18:42:34', '2024-12-14 18:43:39'),
(63, 'App\\Models\\User', 1, 'auth_token', '209ac668721df865cd77717c027a03b24f5f66c9a44b436ce9bd57544c92cc88', '[\"*\"]', '2024-12-14 18:56:15', NULL, '2024-12-14 18:51:30', '2024-12-14 18:56:15'),
(64, 'App\\Models\\User', 1, 'auth_token', 'e046eec922fb2328d5ef198504f537d474086b873af8011ca66d29f0530ef9b4', '[\"*\"]', '2024-12-14 19:04:45', NULL, '2024-12-14 18:56:25', '2024-12-14 19:04:45'),
(65, 'App\\Models\\User', 1, 'auth_token', '898de6250dfa70c36bb7718b3017fc927f6d20b18e94f8f50e0d229c19a9df24', '[\"*\"]', '2024-12-14 19:12:03', NULL, '2024-12-14 19:04:59', '2024-12-14 19:12:03'),
(66, 'App\\Models\\User', 1, 'auth_token', '6eb7bc93c207edbcf49ac7c265f61dcb9b27ca117b04235f5d47af6771a0899b', '[\"*\"]', '2024-12-14 19:18:01', NULL, '2024-12-14 19:13:57', '2024-12-14 19:18:01'),
(67, 'App\\Models\\User', 1, 'auth_token', 'eb91fbf90b1ff4ae6ed08c58f409468dacbe2705f604e62931e09a74316327d0', '[\"*\"]', NULL, NULL, '2024-12-14 19:23:47', '2024-12-14 19:23:47'),
(68, 'App\\Models\\User', 1, 'auth_token', '643e7856ac57d28b65c90d0f294efa9b29a32671c2bddc1ff27dd0fd54e5e7b1', '[\"*\"]', NULL, NULL, '2024-12-14 19:24:40', '2024-12-14 19:24:40'),
(69, 'App\\Models\\User', 1, 'auth_token', '4717bbda100305ccca2410baf731e35ae812efdebe28432b5f5104fb32c2879f', '[\"*\"]', NULL, NULL, '2024-12-14 19:25:31', '2024-12-14 19:25:31'),
(70, 'App\\Models\\User', 1, 'auth_token', '0ad751566a63574254d7c027ca39cda7295e1a452cc32cf619a802f2051b42a2', '[\"*\"]', NULL, NULL, '2024-12-14 19:25:52', '2024-12-14 19:25:52'),
(71, 'App\\Models\\User', 1, 'auth_token', 'bc3a89d5ae051532fd53228920f064fde2be39df3126ec99e9250af43c95d97e', '[\"*\"]', '2024-12-14 19:34:58', NULL, '2024-12-14 19:33:47', '2024-12-14 19:34:58'),
(72, 'App\\Models\\User', 1, 'auth_token', '8d95573eccc5d178b772e188ca1fc851b924bb469fd6fba8c72a288105380230', '[\"*\"]', '2024-12-14 20:09:04', NULL, '2024-12-14 19:35:54', '2024-12-14 20:09:04'),
(73, 'App\\Models\\User', 1, 'auth_token', '919ec9e500875f0d375d4aec157c1039df6d5d94bfdf283f1705c9b9c0f653f1', '[\"*\"]', '2024-12-14 20:24:48', NULL, '2024-12-14 20:09:16', '2024-12-14 20:24:48'),
(74, 'App\\Models\\User', 1, 'auth_token', '2854e6bb5ab7a19827519dc94f62a5f6a0a61cca8a8d2c44e22311ea660e8b05', '[\"*\"]', '2024-12-14 20:50:57', NULL, '2024-12-14 20:25:00', '2024-12-14 20:50:57'),
(75, 'App\\Models\\User', 1, 'auth_token', 'b40e039869f0d291749554e0d245a7ceafd949a4fd6ab78d39196873c4e1c09e', '[\"*\"]', '2024-12-14 21:13:12', NULL, '2024-12-14 20:59:45', '2024-12-14 21:13:12'),
(76, 'App\\Models\\User', 1, 'auth_token', '596a92993b601a3a1faefacf6412921f8678ee95c4e387e14b14fd4c8a4e33e6', '[\"*\"]', '2024-12-14 21:18:00', NULL, '2024-12-14 21:13:29', '2024-12-14 21:18:00'),
(77, 'App\\Models\\User', 3, 'auth_token', '9fb2e99462b12c8486fb344405ef0e00e5ff11303a0188002f3a26882fd2809f', '[\"*\"]', '2024-12-14 22:32:27', NULL, '2024-12-14 21:18:06', '2024-12-14 22:32:27'),
(78, 'App\\Models\\User', 1, 'auth_token', '8f235c0953ef65052de8094ce71cbb3892e0961b0e0583d683df0fddcd3a5c99', '[\"*\"]', '2024-12-14 22:33:51', NULL, '2024-12-14 22:32:34', '2024-12-14 22:33:51'),
(79, 'App\\Models\\User', 1, 'auth_token', '9b2d7002d7455e386c1dac40a8fcf1413805b5254354638519dee91007933d80', '[\"*\"]', '2024-12-15 00:31:57', NULL, '2024-12-14 22:40:46', '2024-12-15 00:31:57'),
(80, 'App\\Models\\User', 1, 'auth_token', 'fb337825473158e490f25f22196ef7b1f26bbfe1e42b2b68539d43037311eb3e', '[\"*\"]', NULL, NULL, '2024-12-15 00:32:16', '2024-12-15 00:32:16'),
(82, 'App\\Models\\User', 1, 'auth_token', 'd9fa16c1e3b6031289eeaa537e625bd5a0d85c1120d4bc6cb2c72588a07835c7', '[\"*\"]', '2024-12-15 00:37:22', NULL, '2024-12-15 00:37:15', '2024-12-15 00:37:22'),
(83, 'App\\Models\\User', 1, 'auth_token', '5e8eccff184554df3a505d2cb49af883560c15933b37d9abc67f199c9eb051e3', '[\"*\"]', '2024-12-15 01:08:07', NULL, '2024-12-15 00:37:42', '2024-12-15 01:08:07'),
(84, 'App\\Models\\User', 3, 'auth_token', '631da0218b4c53e5f1849cc57cd9723aef38dbb804d9a5ceb53c76f2e3d8d547', '[\"*\"]', '2024-12-15 01:10:28', NULL, '2024-12-15 01:09:47', '2024-12-15 01:10:28'),
(85, 'App\\Models\\User', 1, 'auth_token', '3177334cf09c24eed77688d0eb8857117e2823cd481a4ab0051a5f4651e88943', '[\"*\"]', '2024-12-15 01:38:03', NULL, '2024-12-15 01:14:02', '2024-12-15 01:38:03'),
(86, 'App\\Models\\User', 3, 'auth_token', '173f70d7e2466da02331fb189d6ad4909f7fb9ef8c9f8a33d1deb6bdbea55205', '[\"*\"]', '2024-12-15 03:16:51', NULL, '2024-12-15 01:16:15', '2024-12-15 03:16:51'),
(87, 'App\\Models\\User', 3, 'auth_token', 'a21b98106c621b2cc6bc160c6cfcb60c784af41c67b7af58861002b045a0338a', '[\"*\"]', '2024-12-16 14:17:27', NULL, '2024-12-15 01:37:59', '2024-12-16 14:17:27'),
(88, 'App\\Models\\User', 1, 'auth_token', '85d9f764134bced18d79364f99d52d02f8f0f057f7a8e7167af8753d21c66042', '[\"*\"]', '2024-12-15 03:45:39', NULL, '2024-12-15 03:39:07', '2024-12-15 03:45:39'),
(89, 'App\\Models\\User', 1, 'auth_token', '385da8d76e3bfc48687b4d8737f165666b5f66b22671360dd06197d9a3c4db60', '[\"*\"]', '2024-12-15 03:46:17', NULL, '2024-12-15 03:45:51', '2024-12-15 03:46:17'),
(90, 'App\\Models\\User', 1, 'auth_token', 'ab2cb7251ba5480da16a47286adfd2b7fb65fba2b10fd31a877abb1e162c7091', '[\"*\"]', '2024-12-15 04:09:13', NULL, '2024-12-15 03:53:55', '2024-12-15 04:09:13'),
(91, 'App\\Models\\User', 3, 'auth_token', '66ea84f4a618bebff6da10e3364bd2931463de58af54f212528cb14a83725679', '[\"*\"]', '2024-12-15 04:09:34', NULL, '2024-12-15 04:09:26', '2024-12-15 04:09:34'),
(92, 'App\\Models\\User', 1, 'auth_token', '9816a79fcf910f54bab7a29faae5e19e67dfaca127511f0c5c51882a8e8a7cb2', '[\"*\"]', '2024-12-15 04:16:24', NULL, '2024-12-15 04:10:02', '2024-12-15 04:16:24'),
(93, 'App\\Models\\User', 5, 'auth_token', '77b10f3a1961dd2f89d41dfdf62b8e249e5e6b695fbb14261d9b1376882702f1', '[\"*\"]', '2024-12-16 23:40:12', NULL, '2024-12-15 04:10:50', '2024-12-16 23:40:12'),
(94, 'App\\Models\\User', 1, 'auth_token', '6dc02849f2f497a8933cddeaa5fed354d7d67ac81051487306ef0eab797779ee', '[\"*\"]', '2024-12-15 05:23:21', NULL, '2024-12-15 04:17:35', '2024-12-15 05:23:21'),
(95, 'App\\Models\\User', 1, 'auth_token', '0f7d536eccf6f133908dd3895b2aef27411196ab658c67664413796351827b02', '[\"*\"]', '2024-12-15 05:48:20', NULL, '2024-12-15 05:24:19', '2024-12-15 05:48:20'),
(96, 'App\\Models\\User', 3, 'auth_token', '80c7a8daf598b4eb3eb49d1f900ac4aec6db80bd3f7b7176d6e2fe3a4c37608c', '[\"*\"]', '2024-12-15 06:12:09', NULL, '2024-12-15 05:48:34', '2024-12-15 06:12:09'),
(97, 'App\\Models\\User', 1, 'auth_token', 'be25c3d493593bfffe54df7b8921fb11cb137ac556aa76f77ea940c35a11a461', '[\"*\"]', NULL, NULL, '2024-12-15 06:17:05', '2024-12-15 06:17:05'),
(98, 'App\\Models\\User', 1, 'auth_token', '2a0abfa093c0b01fadfc867469b405ae1450867d5e5d10e2c05cc3720f845bea', '[\"*\"]', NULL, NULL, '2024-12-15 06:19:54', '2024-12-15 06:19:54'),
(99, 'App\\Models\\User', 1, 'auth_token', 'e24a02295b2f68329e74270a44b6b40872288fadc16e5af0b731063b9454e75b', '[\"*\"]', '2024-12-15 06:24:55', NULL, '2024-12-15 06:24:22', '2024-12-15 06:24:55'),
(100, 'App\\Models\\User', 5, 'auth_token', 'f2361108ae1749157664ff5611ebfcc43117af0645c43454ac97d35065ede661', '[\"*\"]', NULL, NULL, '2024-12-15 14:07:40', '2024-12-15 14:07:40'),
(101, 'App\\Models\\User', 1, 'auth_token', 'ad0c51534ba02fdaf52a031c10641320736e639516012dbe341d2e8e788adbd1', '[\"*\"]', '2024-12-15 14:38:00', NULL, '2024-12-15 14:30:34', '2024-12-15 14:38:00'),
(102, 'App\\Models\\User', 1, 'auth_token', '9c11d7effab20b9cbace9e2c7563cdc86f4210168b267320a392f20115d92e4e', '[\"*\"]', '2024-12-15 14:47:41', NULL, '2024-12-15 14:45:41', '2024-12-15 14:47:41'),
(103, 'App\\Models\\User', 1, 'auth_token', 'f343c9da25c3fd9ac35eaba3f8758fea89045a15b4fa72d04061b855e2f87a14', '[\"*\"]', NULL, NULL, '2024-12-15 14:55:10', '2024-12-15 14:55:10'),
(104, 'App\\Models\\User', 1, 'auth_token', '726902cdfc657331f1c8bb5d6a4acc323b1885b30d58b822015d386cebb192bc', '[\"*\"]', '2024-12-15 15:36:55', NULL, '2024-12-15 14:55:58', '2024-12-15 15:36:55'),
(105, 'App\\Models\\User', 7, 'auth_token', '8498761bd005716641675ac2d3f868f241ffc19d5f40b283d8574cf34979a498', '[\"*\"]', '2024-12-17 06:47:17', NULL, '2024-12-15 14:56:06', '2024-12-17 06:47:17'),
(106, 'App\\Models\\User', 1, 'auth_token', 'cd26590cc3caf76119d5bb07822f3d476e7c4b2faa2f76009b3cf3fbde3775fa', '[\"*\"]', NULL, NULL, '2024-12-15 14:56:13', '2024-12-15 14:56:13'),
(107, 'App\\Models\\User', 1, 'auth_token', 'd14c547ead0c5eb861c5086eea05433047b406f935ee6e9709fae5071bcf428f', '[\"*\"]', '2024-12-15 15:52:03', NULL, '2024-12-15 14:57:07', '2024-12-15 15:52:03'),
(108, 'App\\Models\\User', 1, 'auth_token', 'fa9469399800a96a701385e02a58bc84ceaaaa507a34bd20cfcf9b5501319294', '[\"*\"]', '2024-12-15 15:22:30', NULL, '2024-12-15 14:58:34', '2024-12-15 15:22:30'),
(109, 'App\\Models\\User', 5, 'auth_token', '3d4e68fef6f2470991401710a80f85f05e836405c8bfd7b7e0b220e8ee1094f2', '[\"*\"]', '2024-12-17 04:28:15', NULL, '2024-12-15 15:10:58', '2024-12-17 04:28:15'),
(110, 'App\\Models\\User', 1, 'auth_token', 'be91af854be226219fc0b67a47c391a609e53c323f3e1eaab4e93bb3824b3f24', '[\"*\"]', '2024-12-15 15:26:49', NULL, '2024-12-15 15:22:40', '2024-12-15 15:26:49'),
(111, 'App\\Models\\User', 1, 'auth_token', 'a0d1739b28b4d6bbb1705fb6e684d7490f325d27808b1e4a1c05418220aa0cfd', '[\"*\"]', '2024-12-15 15:27:57', NULL, '2024-12-15 15:27:19', '2024-12-15 15:27:57'),
(112, 'App\\Models\\User', 1, 'auth_token', 'a1efc3ed17bdb3767c0b31853479160bd81a24441fbdd2ecf1639b530041c051', '[\"*\"]', '2024-12-15 15:33:52', NULL, '2024-12-15 15:33:13', '2024-12-15 15:33:52'),
(113, 'App\\Models\\User', 1, 'auth_token', '2d7e64ada754093d2855292f27d97cc620d448d5a3dfca1d37f61f2126d0d702', '[\"*\"]', '2024-12-17 06:30:45', NULL, '2024-12-15 15:41:06', '2024-12-17 06:30:45'),
(114, 'App\\Models\\User', 1, 'auth_token', '45d28692b44c0b8a54ca2215e042372c4d59b28b48a403a2b1d5bf0aeef6f276', '[\"*\"]', '2024-12-15 15:50:47', NULL, '2024-12-15 15:48:59', '2024-12-15 15:50:47'),
(115, 'App\\Models\\User', 1, 'auth_token', '28755eec3d386ecb73e817638f9b45ee00e09c0b9dd110f7efd825e7cd862b07', '[\"*\"]', '2024-12-15 16:09:25', NULL, '2024-12-15 15:52:09', '2024-12-15 16:09:25'),
(116, 'App\\Models\\User', 8, 'auth_token', '747a4481e7d1be80d005388c431487983f742821991f7e0c1b88766cbd31e07f', '[\"*\"]', '2024-12-17 06:37:37', NULL, '2024-12-15 18:34:32', '2024-12-17 06:37:37'),
(117, 'App\\Models\\User', 9, 'auth_token', 'a3d3663623ec26e42e3b71cb210ad5858f8fd51bbb4581cedf14e74b3c9fbb47', '[\"*\"]', '2024-12-17 02:36:50', NULL, '2024-12-16 04:29:56', '2024-12-17 02:36:50'),
(118, 'App\\Models\\User', 10, 'auth_token', '1d770469f6ded6942f1c2112ef08908abdf1965f5160c5efde14e5f47d82c63d', '[\"*\"]', '2024-12-16 04:40:33', NULL, '2024-12-16 04:33:38', '2024-12-16 04:40:33'),
(119, 'App\\Models\\User', 11, 'auth_token', '1403fdf6f2b2ed9dd027db4e068518e704d719d08e079c0a9405335be3bbc03f', '[\"*\"]', '2024-12-16 11:16:55', NULL, '2024-12-16 05:48:04', '2024-12-16 11:16:55'),
(120, 'App\\Models\\User', 12, 'auth_token', '938cbb2a722e3042111b4e9520e3f855a5ee84f0cdfd296ace4b2a85ceac6d67', '[\"*\"]', NULL, NULL, '2024-12-16 08:44:23', '2024-12-16 08:44:23'),
(121, 'App\\Models\\User', 12, 'auth_token', '89b372ab060273f5b5f866d9f05ff6f84d6ec5593c0ed661c165c8a43a48fd43', '[\"*\"]', '2024-12-16 08:45:41', NULL, '2024-12-16 08:44:24', '2024-12-16 08:45:41'),
(122, 'App\\Models\\User', 11, 'auth_token', '67f5bb61610cc0d8492d84b6d7bcaebe7d860c829082b18a4a15a6e043a94c2a', '[\"*\"]', '2024-12-17 12:16:27', NULL, '2024-12-16 09:38:21', '2024-12-17 12:16:27'),
(123, 'App\\Models\\User', 1, 'auth_token', 'dd5475e6c9b1e4f1b861089acd869660233be28bf68556e5f660208e1927be2f', '[\"*\"]', '2024-12-16 14:44:42', NULL, '2024-12-16 14:18:20', '2024-12-16 14:44:42'),
(124, 'App\\Models\\User', 1, 'auth_token', 'befaed2000ef20db47c73f420d7527980ae084b3869972e93c68fb90186fde2c', '[\"*\"]', '2024-12-16 15:17:03', NULL, '2024-12-16 14:51:27', '2024-12-16 15:17:03'),
(125, 'App\\Models\\User', 1, 'auth_token', '38defd37cfc111a8d87798959e88a0b1c9c0db02d5d00ecd8de4fa2903d202d1', '[\"*\"]', '2024-12-16 16:15:41', NULL, '2024-12-16 15:20:05', '2024-12-16 16:15:41'),
(126, 'App\\Models\\User', 1, 'auth_token', 'e268a51007edb5f5401d7f31a9bf507600d3d77768a9f4687a236b817f264582', '[\"*\"]', NULL, NULL, '2024-12-16 16:17:53', '2024-12-16 16:17:53'),
(127, 'App\\Models\\User', 1, 'auth_token', '9d710a46f2c9b67722a1862ad73d547650b1bf6941acc9eb16b79355a6d2a535', '[\"*\"]', '2024-12-16 16:49:13', NULL, '2024-12-16 16:49:06', '2024-12-16 16:49:13'),
(128, 'App\\Models\\User', 1, 'auth_token', '0419516bc6361b1949b741b23dbc3f878e8f2df46d91c4f223a379f9305e827e', '[\"*\"]', NULL, NULL, '2024-12-16 16:57:03', '2024-12-16 16:57:03'),
(129, 'App\\Models\\User', 1, 'auth_token', 'aba6e3a663e4de3de7987fa4a9ce5d80c75d4003fb75c8d63c26a5dfd44b774c', '[\"*\"]', NULL, NULL, '2024-12-16 16:58:43', '2024-12-16 16:58:43'),
(130, 'App\\Models\\User', 1, 'auth_token', '38ba3f01080b249cdb0bff4c740760616d1d4c40a97f176a89c53bd21eeae9ee', '[\"*\"]', NULL, NULL, '2024-12-16 17:14:41', '2024-12-16 17:14:41'),
(131, 'App\\Models\\User', 1, 'auth_token', 'f3e22f0c3098833b20255eedb088e9f44806c598edb090d490cfc0e942ec28c0', '[\"*\"]', NULL, NULL, '2024-12-16 17:15:08', '2024-12-16 17:15:08'),
(132, 'App\\Models\\User', 1, 'auth_token', 'c5df3db451f7720ea5110114d4894910b8c896344f913b48879b177ecf0a2b61', '[\"*\"]', NULL, NULL, '2024-12-16 17:22:27', '2024-12-16 17:22:27'),
(133, 'App\\Models\\User', 1, 'auth_token', '0e7fdaefc94cb4b1e6e097ad44998ebb10b6cff5e91c95294ffb02d1d50a640d', '[\"*\"]', NULL, NULL, '2024-12-16 17:34:28', '2024-12-16 17:34:28'),
(134, 'App\\Models\\User', 1, 'auth_token', 'eaf2081831a46b354a90fa7fe36a3a38246e1d902b2a2f8bdbb9090564e873cc', '[\"*\"]', NULL, NULL, '2024-12-16 17:36:06', '2024-12-16 17:36:06'),
(135, 'App\\Models\\User', 1, 'auth_token', 'a11144c0c4fd727f97aa2a58236b7484c4975fbbb2b4b54dc2f60d430d8ece30', '[\"*\"]', NULL, NULL, '2024-12-16 17:41:59', '2024-12-16 17:41:59'),
(136, 'App\\Models\\User', 1, 'auth_token', '1a14f595ff6a951300d8a63892e4c37a2e63d5f53abacf405276a82de9320e5a', '[\"*\"]', '2024-12-16 17:48:00', NULL, '2024-12-16 17:45:47', '2024-12-16 17:48:00'),
(137, 'App\\Models\\User', 1, 'auth_token', '1fa79749b2412dc8f1f2fc85a51c6ee9898239da68b90d9c0a7337a213f0bfa6', '[\"*\"]', NULL, NULL, '2024-12-16 17:51:38', '2024-12-16 17:51:38'),
(138, 'App\\Models\\User', 1, 'auth_token', '4692a30366b1b8b5995f52742162a2c4f67827913c906162c6dc9a006d8d3b41', '[\"*\"]', NULL, NULL, '2024-12-16 18:12:05', '2024-12-16 18:12:05'),
(139, 'App\\Models\\User', 1, 'auth_token', '8ce1120cf3f1a6264dc1c6928164a9c1d5f0f816962ae947a757c40a4ac0f7e3', '[\"*\"]', NULL, NULL, '2024-12-16 18:19:20', '2024-12-16 18:19:20'),
(140, 'App\\Models\\User', 1, 'auth_token', '7c0e121e75a3c7afc0326fc9aa8bcd323dbe50d74567641b6abc242429dad85e', '[\"*\"]', NULL, NULL, '2024-12-16 18:23:33', '2024-12-16 18:23:33'),
(141, 'App\\Models\\User', 1, 'auth_token', '3f398c560110ff232d23ef910b9a3fcbd5903c8fb4b4845cc8f6148e0134c2f4', '[\"*\"]', NULL, NULL, '2024-12-16 18:26:00', '2024-12-16 18:26:00'),
(142, 'App\\Models\\User', 1, 'auth_token', '3dcd75f2b1eabc94ae12ff818279ce11307d0cf611b0ea049a903b10d16edfff', '[\"*\"]', '2024-12-16 19:39:19', NULL, '2024-12-16 18:56:13', '2024-12-16 19:39:19'),
(143, 'App\\Models\\User', 1, 'auth_token', '2eba2346f3b53ab003fa78cb36dbcda823ecfc0e5acd35033539b025b98e811f', '[\"*\"]', '2024-12-16 21:00:56', NULL, '2024-12-16 19:44:28', '2024-12-16 21:00:56'),
(144, 'App\\Models\\User', 1, 'auth_token', '4acb49dbd0eaf1f92aab40ca3489fadc180b7d4e70de4309873cbd2c8fd1fe6a', '[\"*\"]', '2024-12-16 21:07:18', NULL, '2024-12-16 21:07:07', '2024-12-16 21:07:18'),
(145, 'App\\Models\\User', 14, 'auth_token', 'd30f6b8368f6f86b22673d4d0ce0959ccec4cbeaf0689551e7c9f0b8f83fb9d6', '[\"*\"]', '2024-12-16 21:08:40', NULL, '2024-12-16 21:08:39', '2024-12-16 21:08:40'),
(146, 'App\\Models\\User', 14, 'auth_token', '660f02b93c4903fe1ee6e06cb69ccbbef5333200e6c0014350edca553db87fdd', '[\"*\"]', '2024-12-16 21:59:13', NULL, '2024-12-16 21:14:26', '2024-12-16 21:59:13'),
(147, 'App\\Models\\User', 14, 'auth_token', '5d55637fc343f8c1471ab013ae734e24ac75f6cebea84fbd3befbf515d52d50e', '[\"*\"]', '2024-12-16 21:29:15', NULL, '2024-12-16 21:29:03', '2024-12-16 21:29:15'),
(148, 'App\\Models\\User', 1, 'auth_token', 'fd15a42b5e353b2d90ce52f9a12da4bef6ed1d159be5dc70787c15870430b646', '[\"*\"]', '2024-12-16 23:26:44', NULL, '2024-12-16 22:27:09', '2024-12-16 23:26:44'),
(149, 'App\\Models\\User', 14, 'auth_token', '2c5d10d5aa514ef18893adb616d98f70b2bc809d4f09b417ab00ba99fb04b32d', '[\"*\"]', '2024-12-16 23:44:08', NULL, '2024-12-16 23:26:55', '2024-12-16 23:44:08'),
(150, 'App\\Models\\User', 14, 'auth_token', '8b21b14bb282c8be994b349e21848919c1c6b2d788a22b91b02b5c175f854da1', '[\"*\"]', '2024-12-16 23:44:30', NULL, '2024-12-16 23:44:24', '2024-12-16 23:44:30'),
(151, 'App\\Models\\User', 14, 'auth_token', '55fc39da3f413387e67a87cdfc6253a9ce124c5be2c4b0576ed324b71c75dabc', '[\"*\"]', '2024-12-16 23:48:18', NULL, '2024-12-16 23:46:00', '2024-12-16 23:48:18'),
(152, 'App\\Models\\User', 14, 'auth_token', 'e7e33137b52953269d78585cce1ac60f78e76c3cf8ce0a407510a637532e66a1', '[\"*\"]', '2024-12-17 01:03:13', NULL, '2024-12-16 23:50:50', '2024-12-17 01:03:13'),
(153, 'App\\Models\\User', 1, 'auth_token', '8ca125dd47b61f10700e9b5db3ec610e6a8c326795ae3015f630b45653031480', '[\"*\"]', '2024-12-17 01:03:13', NULL, '2024-12-17 00:49:22', '2024-12-17 01:03:13'),
(154, 'App\\Models\\User', 14, 'auth_token', 'd2d7880a9c00cd7ae9d64b51a01fc07a042575cfc7591fe09b38abdcb8a787e3', '[\"*\"]', '2024-12-17 05:00:14', NULL, '2024-12-17 01:03:24', '2024-12-17 05:00:14'),
(155, 'App\\Models\\User', 14, 'auth_token', '5cd0ce10d69c2816d75d4887c00ebaa092dd71bfd1334f54f9826a445aa72123', '[\"*\"]', '2024-12-17 05:18:50', NULL, '2024-12-17 01:08:16', '2024-12-17 05:18:50'),
(156, 'App\\Models\\User', 1, 'auth_token', 'b1e94868bfa0fdc1a2459313f661627ed73d9e55645159dcefc575df292db2b8', '[\"*\"]', '2024-12-17 05:23:44', NULL, '2024-12-17 01:12:57', '2024-12-17 05:23:44'),
(157, 'App\\Models\\User', 1, 'auth_token', '36ff46c4f3d4697e6e4c795dd2d9f535754fdaad6a2180101fd23a006afde1e4', '[\"*\"]', '2024-12-17 05:05:39', NULL, '2024-12-17 05:00:29', '2024-12-17 05:05:39'),
(158, 'App\\Models\\User', 14, 'auth_token', '893db5952b6b52dbf17e231f145a75ce4844f23ddb56c7fce5853bb0049bd4df', '[\"*\"]', '2024-12-17 06:26:52', NULL, '2024-12-17 05:05:56', '2024-12-17 06:26:52'),
(159, 'App\\Models\\User', 14, 'auth_token', 'dd52151411de396713b9521dc18b733031b658fc0e98038360dccd2147e40580', '[\"*\"]', '2024-12-17 05:58:14', NULL, '2024-12-17 05:57:54', '2024-12-17 05:58:14'),
(160, 'App\\Models\\User', 1, 'auth_token', 'c9d8b60be8df965eb831002dcac228d27aa31c36028a0837ee3df9b09c714746', '[\"*\"]', '2024-12-17 05:59:27', NULL, '2024-12-17 05:59:25', '2024-12-17 05:59:27'),
(161, 'App\\Models\\User', 14, 'auth_token', '881f046ebe29db21b6fab1116ef20e3e424e639a7e3ed273080699b3944c4efc', '[\"*\"]', '2024-12-17 06:02:15', NULL, '2024-12-17 06:02:14', '2024-12-17 06:02:15'),
(162, 'App\\Models\\User', 1, 'auth_token', 'e982a2fa68b4ea4b6f01a3169cf2f6f75c6f238f84fe166d32e0b3ab41d1c2e2', '[\"*\"]', '2024-12-17 06:27:00', NULL, '2024-12-17 06:02:41', '2024-12-17 06:27:00'),
(163, 'App\\Models\\User', 14, 'auth_token', 'e11072e27a1265ad4ca77184205a358496823e186787e380ec357985db1b8b68', '[\"*\"]', '2024-12-17 06:34:09', NULL, '2024-12-17 06:31:10', '2024-12-17 06:34:09'),
(164, 'App\\Models\\User', 14, 'auth_token', '69fb90bb07d5dfd528349827f4041c6c948b69574cc36a1a4896c7f8a0a3cd92', '[\"*\"]', '2024-12-17 09:32:31', NULL, '2024-12-17 06:33:51', '2024-12-17 09:32:31'),
(165, 'App\\Models\\User', 16, 'auth_token', 'dd9ff8a64bef53dacba2d2b60cf6d1ba6e7d2bdef9da307608b24d063ac60a94', '[\"*\"]', '2024-12-17 06:36:04', NULL, '2024-12-17 06:35:12', '2024-12-17 06:36:04'),
(166, 'App\\Models\\User', 14, 'auth_token', 'cda5e80254fcb476dafd37f81d35b484371f337d9285ffbaae30daa230ca8940', '[\"*\"]', '2024-12-17 17:28:05', NULL, '2024-12-17 06:37:51', '2024-12-17 17:28:05'),
(167, 'App\\Models\\User', 8, 'auth_token', '2ce793b8c0f537247c2e75e4aee3762b1f809ba3b0098b4443a6f681e6f55ba3', '[\"*\"]', '2024-12-17 12:42:01', NULL, '2024-12-17 06:41:58', '2024-12-17 12:42:01'),
(168, 'App\\Models\\User', 1, 'auth_token', 'f1d49def04bba6891445fee3b75ce85dd0be5b18a3bc48a5d4f5e1176877db03', '[\"*\"]', '2024-12-17 11:38:19', NULL, '2024-12-17 06:42:42', '2024-12-17 11:38:19'),
(169, 'App\\Models\\User', 7, 'auth_token', '6d980d774f58a3803dd1dd01dd3ab7d98b5506caf7317a0f19fd834750bebd10', '[\"*\"]', '2024-12-17 07:19:50', NULL, '2024-12-17 06:47:21', '2024-12-17 07:19:50'),
(170, 'App\\Models\\User', 1, 'auth_token', '6effacd70abc6c998c7e20e0a149a15d09500be75d474e972c1d388c384949af', '[\"*\"]', '2024-12-17 07:04:54', NULL, '2024-12-17 07:03:29', '2024-12-17 07:04:54'),
(171, 'App\\Models\\User', 14, 'auth_token', '70fdc8153cee0966a433575fdd82c56c9ba8a8043ab722cc0a08c4a52e862af1', '[\"*\"]', '2024-12-17 11:48:17', NULL, '2024-12-17 11:47:45', '2024-12-17 11:48:17'),
(172, 'App\\Models\\User', 14, 'auth_token', 'a85e5743d1cb7cfb1d74faf880e912119cae6d640a28b0334a18d2055a76d88e', '[\"*\"]', '2024-12-17 12:17:39', NULL, '2024-12-17 12:16:49', '2024-12-17 12:17:39'),
(173, 'App\\Models\\User', 11, 'auth_token', 'a366f5be1673083460dc6d0265c3f7a41a9017db3390a4df97034b56e30422af', '[\"*\"]', '2024-12-17 13:18:03', NULL, '2024-12-17 12:24:45', '2024-12-17 13:18:03'),
(174, 'App\\Models\\User', 1, 'auth_token', '7d4d610d389dae7667b42aedc6d561412b3a5e1a945159920ec092186dd36c4d', '[\"*\"]', '2024-12-17 12:29:13', NULL, '2024-12-17 12:28:29', '2024-12-17 12:29:13'),
(175, 'App\\Models\\User', 1, 'auth_token', 'bbed23f51f70cef2850a2e9ebd3a0a7a1d2976cc2eead60a3afd7ad600596570', '[\"*\"]', '2024-12-17 12:38:07', NULL, '2024-12-17 12:33:48', '2024-12-17 12:38:07'),
(176, 'App\\Models\\User', 1, 'auth_token', 'd154dfd27d0915bea2c0e1bb4dabd3ec2d29619af76d9d917681af2a9367586f', '[\"*\"]', '2024-12-17 12:47:35', NULL, '2024-12-17 12:41:07', '2024-12-17 12:47:35'),
(177, 'App\\Models\\User', 14, 'auth_token', '568d056130424fa2f008135697538be3e24cea590dc49b1eb3278bbbd0abbdca', '[\"*\"]', '2024-12-17 12:58:27', NULL, '2024-12-17 12:48:08', '2024-12-17 12:58:27'),
(178, 'App\\Models\\User', 17, 'auth_token', 'e11fb6a31ab02d948db9be4adffb075fcb280527bf7e292e2e8c8a2906fe5826', '[\"*\"]', '2024-12-17 13:31:40', NULL, '2024-12-17 12:55:38', '2024-12-17 13:31:40'),
(179, 'App\\Models\\User', 1, 'auth_token', '32455df2e7c0f6f288b328de37883b0e1a28f6f2ca48b2bd17f02217364f80f4', '[\"*\"]', '2024-12-17 12:59:10', NULL, '2024-12-17 12:58:36', '2024-12-17 12:59:10'),
(180, 'App\\Models\\User', 14, 'auth_token', 'e4d50a0de65c5628acbd4fd29900be5a6b608afb0eed38f77410d1c984ad5283', '[\"*\"]', '2024-12-17 13:09:59', NULL, '2024-12-17 12:59:31', '2024-12-17 13:09:59'),
(181, 'App\\Models\\User', 1, 'auth_token', '07cfb7cade6e3ff4d7d74299fe4b9e35b6350f84d8679ee406bee1e1a85e1b8f', '[\"*\"]', '2024-12-17 13:09:00', NULL, '2024-12-17 13:00:23', '2024-12-17 13:09:00'),
(182, 'App\\Models\\User', 8, 'auth_token', '0333621193242dfd60e819aabde0c9f50c9e985a48f4221f59293254f492d6ef', '[\"*\"]', '2024-12-17 13:13:37', NULL, '2024-12-17 13:13:36', '2024-12-17 13:13:37'),
(183, 'App\\Models\\User', 14, 'auth_token', '27d02589895e736667d0f64e22abe10516baf1612be0b46d65e65be86dca1078', '[\"*\"]', '2024-12-17 13:19:11', NULL, '2024-12-17 13:19:09', '2024-12-17 13:19:11'),
(184, 'App\\Models\\User', 14, 'auth_token', '4053eaa3457a79feb66a30c10e08e353adb360247b0700678b3ae55028309e5b', '[\"*\"]', '2024-12-17 15:24:31', NULL, '2024-12-17 13:25:49', '2024-12-17 15:24:31'),
(185, 'App\\Models\\User', 8, 'auth_token', 'a835a5578b79c5ab683b02d9f7beac0ae8ea821ea75275754d6039808123a999', '[\"*\"]', '2024-12-17 15:27:55', NULL, '2024-12-17 13:28:46', '2024-12-17 15:27:55'),
(186, 'App\\Models\\User', 17, 'auth_token', '858bcef8a97965240f3428caafd9c57fcda70fa5436ca496d5364cf0c4036cab', '[\"*\"]', '2024-12-17 13:49:12', NULL, '2024-12-17 13:48:05', '2024-12-17 13:49:12'),
(187, 'App\\Models\\User', 17, 'auth_token', '6cae357dcec6def4f308d3456c1e082b561c1ff222305c30f4182cfe792fc98a', '[\"*\"]', '2024-12-17 14:14:30', NULL, '2024-12-17 14:11:48', '2024-12-17 14:14:30'),
(188, 'App\\Models\\User', 17, 'auth_token', '2cedcecdce2a7e2ea48bb8f27b1faa98bab35c056dcd23a83348a9cf3dd78af0', '[\"*\"]', '2024-12-17 14:14:51', NULL, '2024-12-17 14:14:50', '2024-12-17 14:14:51'),
(189, 'App\\Models\\User', 18, 'auth_token', 'a688efe4430727171e7d9d44aa3da7dc68aad47dd39ff42fa46c3783794472c2', '[\"*\"]', '2024-12-17 14:21:15', NULL, '2024-12-17 14:18:36', '2024-12-17 14:21:15'),
(190, 'App\\Models\\User', 18, 'auth_token', '366e34902a3b9a86a9561b135e34b58ce9bf2ef2283da8bfff1346b8f833c1bf', '[\"*\"]', '2024-12-17 14:21:44', NULL, '2024-12-17 14:21:42', '2024-12-17 14:21:44'),
(191, 'App\\Models\\User', 18, 'auth_token', '61c4cc3b323d62d2b8b698e695bccd15b231617b1f44ebc78c7faf84f40a356a', '[\"*\"]', '2024-12-17 14:29:46', NULL, '2024-12-17 14:26:15', '2024-12-17 14:29:46'),
(192, 'App\\Models\\User', 18, 'auth_token', '01891e2d7c26865bd189d7df58fc06de52dd2877508d8a08b9d87ad9367e73b6', '[\"*\"]', '2024-12-17 14:30:13', NULL, '2024-12-17 14:30:11', '2024-12-17 14:30:13'),
(193, 'App\\Models\\User', 8, 'auth_token', 'bacd1c4f32570ef034c912302d0d666fd87c76393b42c99dd55198fb3465b6cc', '[\"*\"]', '2024-12-17 18:02:32', NULL, '2024-12-17 14:41:41', '2024-12-17 18:02:32'),
(194, 'App\\Models\\User', 18, 'auth_token', '2d8068181287cee5ec9741a0dee44b5ddc16645681104f45f845fc68c9913a38', '[\"*\"]', '2024-12-17 14:50:50', NULL, '2024-12-17 14:47:39', '2024-12-17 14:50:50'),
(195, 'App\\Models\\User', 18, 'auth_token', '4e53da47593954e4d4707f910ff7361dbc90f48d94eee90ce6a7e1d6a04b27f4', '[\"*\"]', '2024-12-17 17:36:38', NULL, '2024-12-17 14:51:14', '2024-12-17 17:36:38'),
(196, 'App\\Models\\User', 19, 'auth_token', '985b8c65433f5f34154f1c079ec9ec0456b4c58d233a47f13a9a2f6fe4e7c4eb', '[\"*\"]', '2024-12-17 15:23:38', NULL, '2024-12-17 15:22:49', '2024-12-17 15:23:38'),
(197, 'App\\Models\\User', 11, 'auth_token', '97c33297dc43412b744b3c90fba021a3a635682803768a135a19da19857a6d7d', '[\"*\"]', '2024-12-17 15:24:52', NULL, '2024-12-17 15:24:51', '2024-12-17 15:24:52'),
(198, 'App\\Models\\User', 20, 'auth_token', '7fe9e7d8fd47944b944fde44c3da65c7076e55ede08a0ba3bbe001872b0a0788', '[\"*\"]', '2024-12-17 15:30:14', NULL, '2024-12-17 15:28:42', '2024-12-17 15:30:14'),
(199, 'App\\Models\\User', 8, 'auth_token', '5e5b54cc4643f6527e8f1b601c92500dfe5c030c18aaf6f44f54997538aafd0c', '[\"*\"]', '2024-12-17 18:08:22', NULL, '2024-12-17 15:30:25', '2024-12-17 18:08:22'),
(200, 'App\\Models\\User', 21, 'auth_token', '56e69ca05c6e1a1fa20fb8694f1a47923488ef5d98ec9a2ae4a537f32fe110b3', '[\"*\"]', '2024-12-17 15:34:56', NULL, '2024-12-17 15:34:55', '2024-12-17 15:34:56'),
(201, 'App\\Models\\User', 14, 'auth_token', '5625e86daa21d3ff2c321766c1349f2093faa4f00e4e90dd131839b0a5c43df2', '[\"*\"]', '2024-12-17 15:35:31', NULL, '2024-12-17 15:35:30', '2024-12-17 15:35:31'),
(202, 'App\\Models\\User', 22, 'auth_token', '6786e09e8a7da660bc98a98c81b9d568b7bea9546663b889ba048c9ecd264212', '[\"*\"]', '2024-12-17 15:50:37', NULL, '2024-12-17 15:50:35', '2024-12-17 15:50:37'),
(203, 'App\\Models\\User', 14, 'auth_token', 'c3d554a146dc2be3c50cb9ee911ee180a06a3cf3f3b2fca28cbca6657074b1e4', '[\"*\"]', '2024-12-17 15:51:26', NULL, '2024-12-17 15:51:25', '2024-12-17 15:51:26'),
(204, 'App\\Models\\User', 23, 'auth_token', 'c06529470a82b89aa8366588f8beda821387c12e164918b8feb2d2016e7bbe9f', '[\"*\"]', '2024-12-17 18:36:37', NULL, '2024-12-17 17:20:31', '2024-12-17 18:36:37'),
(205, 'App\\Models\\User', 8, 'auth_token', '85ae902112df5385df79f1e9a1529b07e54a2f5022fb60a3b9fe176a104c84fe', '[\"*\"]', '2024-12-17 17:28:52', NULL, '2024-12-17 17:28:10', '2024-12-17 17:28:52'),
(206, 'App\\Models\\User', 8, 'auth_token', '24a50c554ec67159c1b2a5073c96669f12f0a27e107f0c213d4348c165ee2b5d', '[\"*\"]', '2024-12-17 17:38:24', NULL, '2024-12-17 17:28:59', '2024-12-17 17:38:24'),
(207, 'App\\Models\\User', 24, 'auth_token', '0ae03155c670047f2408a6a91b86409a04dade555ae9445af25faefa93eeba43', '[\"*\"]', '2024-12-17 18:00:47', NULL, '2024-12-17 17:32:42', '2024-12-17 18:00:47'),
(208, 'App\\Models\\User', 23, 'auth_token', '96dd3855130823c63c7f34b17bf65d3a47a219106600a350ea583d01e2303b79', '[\"*\"]', '2024-12-18 03:12:51', NULL, '2024-12-17 17:36:09', '2024-12-18 03:12:51'),
(209, 'App\\Models\\User', 14, 'auth_token', '38160d75046a1fe4c697398d28f9a11bdea46bec0c88844c7176f7b8ee66ab79', '[\"*\"]', '2024-12-17 17:53:05', NULL, '2024-12-17 17:37:08', '2024-12-17 17:53:05'),
(210, 'App\\Models\\User', 20, 'auth_token', '4ba4c04de88138331e1c5364956899611b3384277de532c8e6405613e4f10def', '[\"*\"]', '2024-12-17 17:47:21', NULL, '2024-12-17 17:38:53', '2024-12-17 17:47:21'),
(211, 'App\\Models\\User', 18, 'auth_token', 'b32594718f6d8231748a9c2d5d3febde5c8068615b3592304989a6cf58247021', '[\"*\"]', '2024-12-17 17:54:12', NULL, '2024-12-17 17:40:40', '2024-12-17 17:54:12'),
(212, 'App\\Models\\User', 25, 'auth_token', '451c0cbe3b33680536a0c45a4cd744bb2ae6bf7b876610be7b4ad6ee24a50e0c', '[\"*\"]', '2024-12-17 17:53:31', NULL, '2024-12-17 17:49:45', '2024-12-17 17:53:31'),
(213, 'App\\Models\\User', 14, 'auth_token', 'cfbc21b302f5d29541320ef5e8c491220b5494e3535cf963a2f559de8e9439ff', '[\"*\"]', '2024-12-18 03:42:15', NULL, '2024-12-17 18:00:01', '2024-12-18 03:42:15'),
(214, 'App\\Models\\User', 14, 'auth_token', '38e373f519e651ccdc8b4c33def86c3bebedf4d1b9423d4e65da3d92a4bdb5d4', '[\"*\"]', '2024-12-17 19:03:40', NULL, '2024-12-17 18:02:47', '2024-12-17 19:03:40'),
(215, 'App\\Models\\User', 26, 'auth_token', '3f9e6c673f57f19103394863739b4b5989361c2f3e6fa321cb438dc5855d3a26', '[\"*\"]', '2024-12-17 18:36:09', NULL, '2024-12-17 18:18:16', '2024-12-17 18:36:09'),
(216, 'App\\Models\\User', 18, 'auth_token', '6cfaed5c1937138f365276703d134c14073d5464c8d5b21ca59316e727567d46', '[\"*\"]', '2024-12-18 00:01:06', NULL, '2024-12-18 00:00:12', '2024-12-18 00:01:06'),
(217, 'App\\Models\\User', 14, 'auth_token', '27e893aa9ff666719c2623ae05a5498da7d075587bcc59c97df946f5e024ef77', '[\"*\"]', '2024-12-18 03:06:52', NULL, '2024-12-18 01:45:17', '2024-12-18 03:06:52'),
(218, 'App\\Models\\User', 1, 'auth_token', '7e7b7de6143d423dade3913fc3f5d960abd375ab027bc47266fea49af4793081', '[\"*\"]', '2024-12-18 01:46:15', NULL, '2024-12-18 01:46:10', '2024-12-18 01:46:15'),
(219, 'App\\Models\\User', 14, 'auth_token', '805960f64b370af30bba64ffad993ba9b3db13278cf4541b2d63ba3aae1cbf44', '[\"*\"]', '2024-12-18 03:30:09', NULL, '2024-12-18 01:55:06', '2024-12-18 03:30:09'),
(220, 'App\\Models\\User', 14, 'auth_token', '439f7607ff8277e85a85b3739a3000fb0dc3bbbd65b7ac68c2d6023fd3f443cf', '[\"*\"]', '2024-12-18 03:27:43', NULL, '2024-12-18 02:09:13', '2024-12-18 03:27:43'),
(221, 'App\\Models\\User', 14, 'auth_token', '73451134d280d385644f17d4c6fb272f0d23b1205b45606b4b1c5c2de2df27a0', '[\"*\"]', '2024-12-18 03:36:31', NULL, '2024-12-18 03:08:46', '2024-12-18 03:36:31');

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
('58shwPFTFQWUML2Aq6XDZqA0Dw3OGbnEKN2gu7cl', NULL, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2ptald2dERJSFQ5RHZ0SEE0bG1wT0hVUEhaSnU2Tjd6czhrZHM2bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vbWVkaXVtcHVycGxlLWJlYXItNjc5NjA5Lmhvc3RpbmdlcnNpdGUuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734314404),
('AbQCKFRlxPFAdwioNNem53yT4RwL5tzRkeyYSr9q', NULL, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0gwbUdyanJWR2pJbURhQkx2aWdHanhpRUhVckpEOGNrcUlNVUJUZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vbWVkaXVtcHVycGxlLWJlYXItNjc5NjA5Lmhvc3RpbmdlcnNpdGUuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734482401),
('biDDmLBXslk7xNKmvaEs2K1DVuZnPgxa8pUnFSjE', NULL, '182.253.183.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHM1Q3pkd1JDWEg5UlBOSnZWUUdJWFE2ek5TV0VUbmM3T0NUWmdrZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vbWVkaXVtcHVycGxlLWJlYXItNjc5NjA5Lmhvc3RpbmdlcnNpdGUuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734272894),
('d13r2Y1Uke5Did03kCOmQYFVOLVdlgCoaiJLwBzz', NULL, '104.248.75.7', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1RoVEREc0s2VkU3M1NqRVhEV3MzRko1RTNyR1h3WEJ3WnNKUjlvSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vbWVkaXVtcHVycGxlLWJlYXItNjc5NjA5Lmhvc3RpbmdlcnNpdGUuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734417937),
('hw6Ruwa1RdHqR7VfEF7uipUV3eJK3r121q1vhitq', NULL, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXJyNU5NRlgzWVQ3YXVMb01WWWZYSVI0dkJxQ3A3RFFvRWtkWDE0SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vbWVkaXVtcHVycGxlLWJlYXItNjc5NjA5Lmhvc3RpbmdlcnNpdGUuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734396629),
('XXWVBZVQCk8qUc0ho38XHnDtTAWjkLZr1Cb9nbPl', NULL, '46.17.174.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVBSZ2Q2SHJiZEk2c1ZSYVN0TWo4azRaRnRlaDl4M0FDMGs1SHhadiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8vbWVkaXVtcHVycGxlLWJlYXItNjc5NjA5Lmhvc3RpbmdlcnNpdGUuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734479995);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `id_lelang` bigint(20) UNSIGNED DEFAULT NULL,
  `id_bid` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_address` varchar(255) DEFAULT NULL,
  `total_price` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipment_status` varchar(255) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `id_user`, `id_lelang`, `id_bid`, `shipment_address`, `total_price`, `created_at`, `updated_at`, `shipment_status`) VALUES
(1, 1, 2, 59, 'rumah rumah', 3400000.00, '2024-12-15 03:31:23', '2024-12-17 13:00:58', 'Delivered'),
(3, 7, 4, 50, 'rumah nando', 5000000000000.00, '2024-12-15 16:08:27', '2024-12-17 00:48:59', 'pending'),
(16, 1, 19, 73, NULL, 5000000.00, '2024-12-17 13:03:13', '2024-12-17 13:03:13', 'pending'),
(19, 17, 1, 72, NULL, 18000000.00, '2024-12-17 13:09:13', '2024-12-17 13:09:13', 'pending'),
(21, 25, 7, 94, 'Jl. Babarsari', 9000000.00, '2024-12-17 17:52:20', '2024-12-18 03:35:07', 'On Shipment'),
(22, 24, 7, 95, NULL, 9200000.00, '2024-12-17 18:01:32', '2024-12-17 18:01:32', 'pending'),
(26, 24, 10, 81, NULL, 2600000.00, '2024-12-18 03:05:38', '2024-12-18 03:05:38', 'pending'),
(27, 17, 6, 76, NULL, 4400000.00, '2024-12-18 03:06:01', '2024-12-18 03:06:01', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `uang_dp` decimal(15,2) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `telepon`, `date_of_birth`, `uang_dp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nandonandonando', 'nando@example.com', NULL, '$2y$12$YtXk4XnC4LR0zn.YPMNty.paUSJcRODtVsT0ftxvN1MNfbIrqY1NS', '082336000276', '1991-01-01', 30095400250.00, NULL, '2024-12-12 22:46:34', '2024-12-18 01:59:40'),
(2, 'Rizky', 'rizky@example.com', NULL, '$2y$12$Dp07i86pX4LjD/aSgnN4xuD/yRC8wabVbM1NliYUsu0I0ZpcTjTBK', NULL, '2000-02-03', 900000.00, NULL, '2024-12-13 01:01:40', '2024-12-13 01:01:40'),
(3, 'Tomy', 'Tomy@example.com', NULL, '$2y$12$89JkPYB2PhHohsiQV3gZYunsAyxRMqpOGJdxij/hb0dud4g7hgQtq', NULL, '2004-02-03', 6800000.00, NULL, '2024-12-13 01:01:55', '2024-12-14 21:29:26'),
(4, 'Hary', 'Hary@example.com', NULL, '$2y$12$afwaFskblWMC/L/gQFApsuGQiQRZAJuDrdljeYu3d6chD.1KqBjN2', NULL, '2003-02-03', 950000.00, NULL, '2024-12-13 01:02:33', '2024-12-13 01:02:33'),
(5, 'Nando', 'nando1@example.com', NULL, '$2y$12$4rk0G2eLCphqoptKaEKdHem.OvMv5iuX8Zn3d6G0itiZ7HY5qSH9i', NULL, '2004-09-17', 0.00, NULL, '2024-12-13 05:33:36', '2024-12-13 05:33:36'),
(6, 'nando', 'nando2@example.com', NULL, '$2y$12$nrLE1uNSXeI.dzvEd2q5NOoBFfCpLVyD1GSWytPF6P6xkmpbH26NC', NULL, '2004-09-17', 0.00, NULL, '2024-12-13 05:55:14', '2024-12-13 05:55:14'),
(7, 'Gabriella Amanda', '12345@gmail.com', NULL, '$2y$12$gEYFEPXxL83N0UZBRFU61eL/zKGYdJtpXg7OZ8aWJY7nibCYvRuvW', NULL, '2004-09-17', 5005100001021.00, NULL, '2024-12-15 14:56:00', '2024-12-15 16:10:18'),
(8, 'Russel', 'a@gmail.com', NULL, '$2y$12$oNwyiiqtXhaRM01RapnE/uA2XH937Bm.5E8ZevKsLyrEFcKv.zmMS', NULL, '2000-03-30', 510001111.00, NULL, '2024-12-15 18:34:19', '2024-12-17 15:27:55'),
(9, 'Tes', 'tes@gmail.com', NULL, '$2y$12$2dViRRLZUMGO/OmWwQfYv.htbFO/RvQTfsD3iPW77y3zxn5eot8cK', NULL, '2024-12-12', 195800000.00, NULL, '2024-12-16 04:29:25', '2024-12-16 04:40:44'),
(10, 'yum', 'yum@gmail.com', NULL, '$2y$12$QtEw95dmgkMIx3JPc/IRNeHVwGL5V.NLnOpAfqCzYDZN4vz/s.iJy', NULL, '2004-12-07', 3200000000.00, NULL, '2024-12-16 04:33:27', '2024-12-16 04:37:39'),
(11, 'Diof Tsunami Firdaus', 'dioftsunami@gmail.com', NULL, '$2y$12$VUTCxWgE4Ky0U4HKviitre62.8MYnkvnnymZWq9o81XHcmqLtOMvu', '0812345678912', '2024-12-17', 2000000.00, NULL, '2024-12-16 05:47:49', '2024-12-17 12:25:32'),
(12, 'Gabriel', 'gabriel@gmail.com', NULL, '$2y$12$C/X5PD7za4R5JEwJFvGIq.nIqa02VOUyrHPhroEb7QqmyGvihmklO', NULL, '2024-06-07', 100000.00, NULL, '2024-12-16 08:44:07', '2024-12-16 08:44:59'),
(13, 'nando', 'nando5@example.com', NULL, '$2y$12$ygT0wEqUkVtX4w1eD5ESYufZSehxv3OL85FiMVcjU4rHqQahIgkjG', NULL, '2004-09-17', 0.00, NULL, '2024-12-16 18:50:50', '2024-12-16 18:50:50'),
(14, 'admin', 'admin@admin.com', NULL, '$2y$12$xusYWgpVxyny0xjPVK8o/Objw1wfDjTUfc2Z.DnEEUF7e1a3t2HsS', NULL, '2003-09-17', 0.00, NULL, '2024-12-16 21:04:47', '2024-12-16 21:04:47'),
(15, 'testinguserbaru', 'testinguserbaru@gmail.com', NULL, '$2y$12$VvDYrp2txaE0Ip0FfNamReWf7q/hw6yV23yNk9678/5HE6OgJrdIy', NULL, '2004-09-17', NULL, NULL, '2024-12-17 00:27:49', '2024-12-17 00:27:49'),
(16, 'Maria Regina Chiquitita', 's130321156@student.ubaya.ac.id', NULL, '$2y$12$DW9xhJQrRHwfRT3vyA.uZ.iJHgCBVCj9zx0u2eUXBX4xxvXy6JlYW', NULL, '2002-12-08', 0.00, NULL, '2024-12-17 06:35:06', '2024-12-17 06:35:06'),
(17, 'Gabriel', 'mario@gmail.com', NULL, '$2y$12$nf3cMBJhr1Og6XYwQObi0.D2U8P3V4yS2GZ5nOk2RK4dAz5Ax2.Dq', '08975578242', '2022-10-09', 100000000.00, NULL, '2024-12-17 12:55:24', '2024-12-17 14:14:16'),
(18, 'Mario Binsar', 'gabriel12@gmail.com', NULL, '$2y$12$SVYj18FwcCOjgZZ9gP1Ab.NDi5GEQuBUKn7nxAOX36Xi7lS1Slqvy', '0987654321', '2003-11-11', 1000000000.00, NULL, '2024-12-17 14:17:44', '2024-12-17 17:41:07'),
(19, 'Jomok', 'jomok@gmail.com', NULL, '$2y$12$gzLDGUMx0MlAhEuf3Yx8Ae/a6SihxqMLEazy/94krJ9cqtWLWXaD2', NULL, '2006-12-15', 0.00, NULL, '2024-12-17 15:22:39', '2024-12-17 15:22:39'),
(20, 'Rush', 'rtest@gmail.com', NULL, '$2y$12$wWDouJnCQ/uif5JKyVLQF.CBxq5nKh8KjI3ELIUy3tL74qVDmmb6q', NULL, '2011-11-11', 1000000000.00, NULL, '2024-12-17 15:28:31', '2024-12-17 17:41:54'),
(21, 'Diof Tsunami', 'diof@gmail.com', NULL, '$2y$12$lh.Zib.QesOuvW1xGM39I.k6J5ZWj0sxgIqEY1j8oteS2usHBGDma', NULL, '2024-12-17', 0.00, NULL, '2024-12-17 15:34:43', '2024-12-17 15:34:43'),
(22, 'Diof Tsunami Firdaus', 'dioftsunami10@gmail.com', NULL, '$2y$12$MVdsFWpAriI0W8NKKbsSOul2VzMjZEAPv2Y2Qt3YQa3ve.wzd1Xna', NULL, '2024-12-17', 0.00, NULL, '2024-12-17 15:50:17', '2024-12-17 15:50:17'),
(23, 'Lilscube', 'anjesvernanda9@gmail.com', NULL, '$2y$12$0kW9r2WB9AEIhc5xQ1h.pOSBonDgaU9H/JOfh.XQSX8WAlvymTD.m', NULL, '2004-01-01', 3123456789.00, NULL, '2024-12-17 17:20:19', '2024-12-17 18:24:43'),
(24, 'sen', 'sen@gmail.com', NULL, '$2y$12$xhAduIQriJCGhHjw0KZTkOZlzZFuIGFgBFBFPhTiGL.ui6pv9W45K', NULL, '2004-11-26', 100000000.00, NULL, '2024-12-17 17:32:31', '2024-12-17 17:33:18'),
(25, 'Russell', 'russell@gmail.com', NULL, '$2y$12$KC7aItiN6fVOJ5rcs3dM8uNhm69vtDv3lNszC8gPpYBqqn8gh1k76', NULL, '2001-10-10', 1000000000.00, NULL, '2024-12-17 17:48:07', '2024-12-17 17:51:16'),
(26, 'Russell', 'test1@gmail.com', NULL, '$2y$12$TDUsytEGwnfK3wWFg.HznObItpvJhxqvDQ2HS/M59fS5yaTN8idfu', NULL, '2011-11-11', 1000000000.00, NULL, '2024-12-17 18:18:02', '2024-12-17 18:33:22'),
(27, 'nando', 'nando6@example.com', NULL, '$2y$12$n/SPPkPjdVihagbBUy.3Oeh4nJBtbyNJIRAU9Q8tAY1EprxiMRooW', NULL, '2004-09-17', NULL, NULL, '2024-12-18 01:48:27', '2024-12-18 01:48:27'),
(28, 'Nandonando', 'nando8@example.com', NULL, '$2y$12$0fvvoeulGrEJd6H.9L39yecbT9ctZIJ/i.g26WxxSPSG4OmqrSl7W', NULL, '2004-09-17', NULL, NULL, '2024-12-18 01:49:45', '2024-12-18 01:49:45'),
(29, 'test', 'testtest@example.com', NULL, '$2y$12$rJxw7TrBmMt3PTfVDQO7rOME/oUxfGcHuW.H8aY/kNwEnCyJ/fOjm', NULL, '2003-12-12', NULL, NULL, '2024-12-18 02:00:06', '2024-12-18 02:00:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bids_id_user_foreign` (`id_user`),
  ADD KEY `bids_id_lelang_foreign` (`id_lelang`);

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
-- Indexes for table `lelang`
--
ALTER TABLE `lelang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lelang_barang_id_foreign` (`barang_id`);

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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_id_user_foreign` (`id_user`),
  ADD KEY `transactions_id_lelang_foreign` (`id_lelang`),
  ADD KEY `transactions_id_bid_foreign` (`id_bid`);

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
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `lelang`
--
ALTER TABLE `lelang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_id_lelang_foreign` FOREIGN KEY (`id_lelang`) REFERENCES `lelang` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bids_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lelang`
--
ALTER TABLE `lelang`
  ADD CONSTRAINT `lelang_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_id_bid_foreign` FOREIGN KEY (`id_bid`) REFERENCES `bids` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_id_lelang_foreign` FOREIGN KEY (`id_lelang`) REFERENCES `lelang` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
