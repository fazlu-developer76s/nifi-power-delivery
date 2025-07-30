-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2025 at 06:45 PM
-- Server version: 8.0.43
-- PHP Version: 8.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livenerasoft_power_delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_amenties`
--

CREATE TABLE `add_amenties` (
  `id` int NOT NULL,
  `property_id` int NOT NULL COMMENT 'properties.id',
  `amenities_id` int DEFAULT NULL COMMENT 'facilities.id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_amenties`
--

INSERT INTO `add_amenties` (`id`, `property_id`, `amenities_id`, `created_at`, `updated_at`, `status`) VALUES
(4, 31, 1, '2024-12-07 06:59:46', '2024-12-07 06:59:46', 1),
(5, 31, 2, '2024-12-07 06:59:46', '2024-12-07 06:59:46', 1),
(6, 1, 1, '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(9, 26, 1, '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(10, 26, 2, '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_book_amenties`
--

CREATE TABLE `add_book_amenties` (
  `id` int NOT NULL,
  `flor_id` int NOT NULL COMMENT 'add_book_property.id',
  `amenities_id` int DEFAULT NULL COMMENT 'facilities.id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_book_amenties`
--

INSERT INTO `add_book_amenties` (`id`, `flor_id`, `amenities_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 3, 1, '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1),
(2, 3, 2, '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_book_facilities`
--

CREATE TABLE `add_book_facilities` (
  `id` int NOT NULL,
  `flor_id` int NOT NULL COMMENT 'add_book_property.id',
  `facilities_id` int DEFAULT NULL COMMENT 'facilities.id',
  `value` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_book_facilities`
--

INSERT INTO `add_book_facilities` (`id`, `flor_id`, `facilities_id`, `value`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 1, '10', '2024-12-07 08:26:47', '2024-12-07 08:26:47', 1),
(2, 2, 2, '20', '2024-12-07 08:26:47', '2024-12-07 08:26:47', 1),
(3, 2, 3, '20', '2024-12-07 08:26:47', '2024-12-07 08:26:47', 1),
(4, 2, 4, '30', '2024-12-07 08:26:47', '2024-12-07 08:26:47', 1),
(5, 3, 1, '10', '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1),
(6, 3, 2, '20', '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1),
(7, 3, 3, '20', '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1),
(8, 3, 4, '30', '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_book_property`
--

CREATE TABLE `add_book_property` (
  `id` int NOT NULL,
  `property_id` int NOT NULL,
  `flor_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `room_no` int DEFAULT NULL,
  `bed_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_book_property`
--

INSERT INTO `add_book_property` (`id`, `property_id`, `flor_no`, `room_no`, `bed_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 32, 'first', 10, 1, '2024-12-07 08:26:24', '2024-12-07 08:26:24', 1),
(2, 32, 'first', 10, 1, '2024-12-07 08:26:47', '2024-12-07 08:26:47', 1),
(3, 32, 'first', 10, 1, '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_facilities_propery`
--

CREATE TABLE `add_facilities_propery` (
  `id` int NOT NULL,
  `property_id` int NOT NULL COMMENT 'properties.id',
  `facilities_id` int DEFAULT NULL COMMENT 'facilities.id',
  `value` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_facilities_propery`
--

INSERT INTO `add_facilities_propery` (`id`, `property_id`, `facilities_id`, `value`, `created_at`, `updated_at`, `status`) VALUES
(20, 2, 1, '2', '2024-12-04 10:18:46', '2024-12-04 10:18:46', 1),
(21, 2, 2, '3', '2024-12-04 10:18:46', '2024-12-04 10:18:46', 1),
(22, 2, 3, '1', '2024-12-04 10:18:46', '2024-12-04 10:18:46', 1),
(23, 2, 4, '1', '2024-12-04 10:18:46', '2024-12-04 10:18:46', 1),
(24, 3, 1, '3', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(25, 3, 2, '2', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(26, 3, 3, '1', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(27, 3, 6, '2', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(28, 4, 1, '2', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(29, 4, 2, '2', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(30, 4, 3, '1', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(31, 4, 6, '1', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(32, 5, 1, '4', '2024-12-04 10:41:34', '2024-12-04 10:41:34', 1),
(33, 5, 2, '2', '2024-12-04 10:41:34', '2024-12-04 10:41:34', 1),
(34, 5, 3, '2', '2024-12-04 10:41:34', '2024-12-04 10:41:34', 1),
(35, 6, 1, '1', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(36, 6, 2, '3', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(37, 6, 3, '1', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(38, 6, 6, '2', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(39, 7, 1, '2', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(40, 7, 2, '3', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(41, 7, 3, '1', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(42, 7, 6, '2', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(43, 8, 1, '2', '2024-12-04 10:53:22', '2024-12-04 10:53:22', 1),
(58, 13, 1, '1', '2024-12-04 11:22:32', '2024-12-04 11:22:32', 1),
(59, 13, 2, '1', '2024-12-04 11:22:32', '2024-12-04 11:22:32', 1),
(60, 13, 3, '1', '2024-12-04 11:22:32', '2024-12-04 11:22:32', 1),
(61, 14, 1, '3', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(62, 14, 2, '1', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(63, 14, 3, '1', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(64, 14, 6, '1', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(65, 15, 1, '1', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(66, 15, 2, '2', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(67, 15, 3, '1', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(68, 15, 6, '1', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(80, 19, 1, '1', '2024-12-04 12:08:47', '2024-12-04 12:08:47', 1),
(81, 19, 2, '1', '2024-12-04 12:08:47', '2024-12-04 12:08:47', 1),
(82, 19, 6, '1', '2024-12-04 12:08:47', '2024-12-04 12:08:47', 1),
(83, 20, 1, '2', '2024-12-04 12:10:09', '2024-12-04 12:10:09', 1),
(84, 20, 2, '2', '2024-12-04 12:10:09', '2024-12-04 12:10:09', 1),
(85, 20, 6, '2', '2024-12-04 12:10:09', '2024-12-04 12:10:09', 1),
(86, 21, 1, '2', '2024-12-04 12:11:48', '2024-12-04 12:11:48', 1),
(87, 21, 2, '1', '2024-12-04 12:11:48', '2024-12-04 12:11:48', 1),
(88, 21, 6, '1', '2024-12-04 12:11:48', '2024-12-04 12:11:48', 1),
(100, 22, 1, '1', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(101, 22, 2, '1', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(102, 22, 3, '1', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(103, 22, 4, '2', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(104, 22, 5, '2', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(105, 22, 6, '2', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(106, 22, 7, '3', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(107, 22, 8, '3', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(112, 18, 1, '2', '2024-12-05 08:56:28', '2024-12-05 08:56:28', 1),
(113, 18, 2, '1', '2024-12-05 08:56:28', '2024-12-05 08:56:28', 1),
(114, 18, 3, '1', '2024-12-05 08:56:28', '2024-12-05 08:56:28', 1),
(119, 17, 1, '2', '2024-12-05 09:06:35', '2024-12-05 09:06:35', 1),
(120, 17, 2, '1', '2024-12-05 09:06:35', '2024-12-05 09:06:35', 1),
(121, 17, 3, '1', '2024-12-05 09:06:35', '2024-12-05 09:06:35', 1),
(122, 17, 6, '1', '2024-12-05 09:06:35', '2024-12-05 09:06:35', 1),
(130, 16, 1, '1', '2024-12-05 12:36:36', '2024-12-05 12:36:36', 1),
(131, 16, 2, '1', '2024-12-05 12:36:36', '2024-12-05 12:36:36', 1),
(132, 16, 3, '1', '2024-12-05 12:36:36', '2024-12-05 12:36:36', 1),
(133, 16, 6, '1', '2024-12-05 12:36:36', '2024-12-05 12:36:36', 1),
(134, 9, 1, '2', '2024-12-05 12:37:00', '2024-12-05 12:37:00', 1),
(135, 9, 2, '2', '2024-12-05 12:37:00', '2024-12-05 12:37:00', 1),
(136, 9, 3, '1', '2024-12-05 12:37:00', '2024-12-05 12:37:00', 1),
(137, 9, 6, '1', '2024-12-05 12:37:00', '2024-12-05 12:37:00', 1),
(138, 10, 1, '1', '2024-12-05 12:37:11', '2024-12-05 12:37:11', 1),
(139, 10, 2, '1', '2024-12-05 12:37:11', '2024-12-05 12:37:11', 1),
(140, 10, 3, '1', '2024-12-05 12:37:11', '2024-12-05 12:37:11', 1),
(141, 11, 1, '2', '2024-12-05 12:37:31', '2024-12-05 12:37:31', 1),
(142, 11, 2, '2', '2024-12-05 12:37:31', '2024-12-05 12:37:31', 1),
(143, 11, 3, '1', '2024-12-05 12:37:31', '2024-12-05 12:37:31', 1),
(144, 12, 1, '1', '2024-12-05 12:37:50', '2024-12-05 12:37:50', 1),
(145, 12, 2, '1', '2024-12-05 12:37:50', '2024-12-05 12:37:50', 1),
(146, 12, 3, '1', '2024-12-05 12:37:50', '2024-12-05 12:37:50', 1),
(147, 12, 6, '1', '2024-12-05 12:37:50', '2024-12-05 12:37:50', 1),
(148, 24, 1, '945', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(149, 24, 2, '965', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(150, 24, 3, '227', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(151, 24, 4, '625', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(152, 24, 6, '837', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(153, 24, 7, '330', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(154, 24, 8, '371', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(155, 25, 3, '372', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(156, 25, 5, '603', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(157, 25, 8, '6', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(158, 1, 4, '252', '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(159, 1, 5, '204', '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(160, 1, 6, '389', '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(161, 1, 7, '298', '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(162, 1, 8, '593', '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(171, 26, 1, '839', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(172, 26, 2, '98', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(173, 26, 3, '469', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(174, 26, 4, '221', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(175, 26, 5, '774', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(176, 26, 6, '397', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(177, 26, 7, '372', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_package_service`
--

CREATE TABLE `add_package_service` (
  `id` int NOT NULL,
  `package_id` int NOT NULL COMMENT 'packages.id',
  `service_id` int NOT NULL COMMENT 'services.id',
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_package_service`
--

INSERT INTO `add_package_service` (`id`, `package_id`, `service_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '2024-11-19 09:51:44', '2024-11-19 09:51:44'),
(2, 3, 2, 1, '2024-11-19 09:51:45', '2024-11-19 09:51:45'),
(3, 3, 4, 1, '2024-11-19 09:51:45', '2024-11-19 09:51:45'),
(4, 4, 1, 1, '2024-11-19 09:51:47', '2024-11-19 09:51:47'),
(5, 4, 2, 1, '2024-11-19 09:51:47', '2024-11-19 09:51:47'),
(6, 6, 1, 1, '2024-11-19 09:51:49', '2024-11-19 09:51:49'),
(7, 3, 12, 1, '2024-11-30 07:37:27', '2024-11-30 07:37:27'),
(8, 3, 11, 1, '2024-11-30 07:37:27', '2024-11-30 07:37:27'),
(9, 3, 10, 1, '2024-11-30 07:37:28', '2024-11-30 07:37:28'),
(10, 3, 9, 1, '2024-11-30 07:37:28', '2024-11-30 07:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Parking', 'amenities/l5uqA3zicJ2DAvwf5pODNpGLCAieAlMX8WATdceE.jpg', 1, '2024-12-06 11:59:49', '2024-12-07 07:15:46'),
(2, 'Free Wi-Fi', 'amenities/bLuYwFjxzuBfW19rJJ66VuR6DHla0Zq1XsiiSN6w.png', 1, '2024-12-06 12:00:56', '2024-12-07 07:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `assignroutes`
--

CREATE TABLE `assignroutes` (
  `id` bigint UNSIGNED NOT NULL,
  `route_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignroutes`
--

INSERT INTO `assignroutes` (`id`, `route_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, 2, 1, '2024-10-29 09:35:02', '2024-10-29 09:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `assign_lead`
--

CREATE TABLE `assign_lead` (
  `id` int NOT NULL,
  `lead_id` int NOT NULL COMMENT 'loan_requests.id',
  `current_user_id` int NOT NULL COMMENT 'users.id',
  `assign_user_id` int NOT NULL COMMENT 'users.id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_lead`
--

INSERT INTO `assign_lead` (`id`, `lead_id`, `current_user_id`, `assign_user_id`, `created_at`) VALUES
(1, 1, 1, 30, '2024-12-10 12:38:06'),
(2, 1, 30, 31, '2024-12-10 12:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upi_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_bank_active` tinyint NOT NULL DEFAULT '2' COMMENT '1-Active,2-Inactive',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Deactive,3-delete,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `account_name`, `account_no`, `ifsc_code`, `bank_name`, `upi_id`, `is_bank_active`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Amit Kumar', '158222817455', 'INDB0000053', 'Indusland', '155295@ybl', 1, 1, '2024-12-27 11:26:34', '2024-12-27 11:39:12'),
(2, 'Fazlu Rehman', '158222817456', 'INDB0000054', 'KOTAK', '78347@ibl', 2, 1, '2024-12-27 11:29:58', '2024-12-27 11:39:12'),
(3, 'HDDFFCC', '1234567890', 'HBHFDSFJSF OJS', 'HDDFFCCBB', 'ITIN@OKHDDFFCCB', 2, 1, '2025-01-16 17:18:53', '2025-01-16 17:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `type`, `image`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'home', 'banner/62LRCVTC1fUG35ddxli4CykKhp6II7LCTY0CV34X.png', 'Home', NULL, 3, '2024-11-27 10:29:48', '2024-12-04 13:50:10'),
(2, 'home', 'banner/mapNGPhAGa7QZBhzr8qUrhkGImVLB1eTxACG8IdT.jpg', 'Home', NULL, 1, '2024-11-27 10:29:48', '2024-12-04 13:50:05'),
(3, 'home', 'banner/tVMHtsBxyYmcfvO5thgquNnsdWEC4WvxMt9r8HR4.jpg', 'Home', NULL, 1, '2024-11-27 10:29:48', '2024-12-04 13:49:56'),
(4, 'project', 'banner/71cDZn0pn1WORpxkNJU9c549BhHyWBWwjzyxl1yn.png', 'Projects', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.', 1, '2024-11-27 10:29:48', '2024-12-04 07:13:10'),
(5, 'about ', 'banner/home_banner.png', 'About Us', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.', 1, '2024-11-27 10:29:48', '2024-11-27 10:29:52'),
(6, 'contact', 'banner/yj0P7naRLdpq1mPhY6XFYRvY4oL2EP5mTd9Bpfgk.png', 'Contact Us', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.', 1, '2024-11-27 10:29:48', '2024-12-04 07:12:56'),
(7, 'testimonial', 'banner/home_banner.png', 'Testimonials', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.', 1, '2024-11-27 10:29:48', '2024-11-27 10:29:52'),
(8, 'blog', 'banner/CgUt9G0yAf5ftHEc4rjto7bV3t2I9l8LM6mvpK3s.jpg', 'Blogs', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.', 1, '2024-11-27 10:29:48', '2024-12-04 07:58:42'),
(10, 'home', 'banner/KIqubBDIG9wPtXdtUecMxBRcqjmE1yIGbL7pgGg1.jpg', 'Home', NULL, 1, '2024-12-06 06:42:01', '2024-12-06 06:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `bedtypes`
--

CREATE TABLE `bedtypes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bedtypes`
--

INSERT INTO `bedtypes` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sdf', 1, '2024-12-06 12:13:58', '2024-12-06 12:13:58'),
(2, 'ssssss sdf', 3, '2024-12-06 12:14:22', '2024-12-06 12:14:32'),
(3, 'asdf', 1, '2024-12-06 13:49:45', '2024-12-06 13:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blog_link` text COLLATE utf8mb4_unicode_ci,
  `short_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `posted_at`, `blog_link`, `short_content`, `long_content`, `status`, `created_at`, `updated_at`) VALUES
(1, '20 Way To Sell Your Product Faster', 'blog/GpIU7tAexVrbi5PS7Yhf6eEA1YTUTJA6vVZWOQGM.png', '2024-11-27 08:03:23', NULL, 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content.', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content.', 1, '2024-11-27 08:03:23', '2024-12-04 06:31:14'),
(2, '20 Way To Sell Your Product Fasterrr', 'blog/1k0fDZMpLeOIV8qUxAFP3ujz51Fcl6FdMWu9ARht.png', '2024-11-27 08:03:23', NULL, 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content.', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content.', 1, '2024-11-27 08:03:23', '2024-12-04 06:31:06'),
(3, '20 Way To Sell Your Product Fasterr', 'blog/w8tYCrckvXd2sdysHKbtJauE9zlv7Pvm3tfXLcL2.png', '2024-11-27 08:03:23', 'https://globstay.live.devs-nerasoft.tech/blog', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales.\r\nQuisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet.\r\nPellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus.', 1, '2024-11-27 08:03:23', '2024-12-06 11:01:42'),
(4, 'First', 'blog/zPo1c9FKUaDvzn2RGCVfH5MIL021OZE3Cjf3WF4Z.jpg', '2024-12-03 10:44:00', NULL, 'first', 'second', 3, '2024-12-01 10:43:05', '2024-12-04 06:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `booking_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `booking_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Open,2-Accept,3-Rejected,4-Resolve,5-Cancel',
  `booking_type` tinyint NOT NULL DEFAULT '2' COMMENT '1-Instant,2-Schedule',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `booking_date`, `booking_time`, `description`, `vehicle_type`, `vehicle_number`, `pincode`, `name`, `email`, `mobile_no`, `soc`, `country`, `state`, `city`, `address`, `booking_status`, `booking_type`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, '2024-12-08', '14:10 40', 'lorem ipsum', 'SUV', 'DLS*JU#*JS', '201304', 'fazlu', 'fazlu.developer@gmail.com', '7428059960', 'sdf', '0', '0', NULL, NULL, 1, 1, '2024-12-23 08:22:24', '', 1),
(2, 1, '2024-12-10', '14:10 20', '451615asdsadf', 'SUV', 'DLS*JU#*JS', '201304', 'fazlu', 'fazlu.developer@gmail.com', '7428059960', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-23 08:22:34', '', 1),
(3, 1, '2024-12-10', '14:10 20', '451615asdsadf', 'SUV', 'DLS*JU#*JS', '201304', 'fazlu', 'fazlu.developer@gmail.com', '7428059960', 'sdf', '0', '0', NULL, NULL, 1, 1, '2024-12-23 11:00:59', '', 1),
(4, 1, '2024-12-10', '14:10 20', '451615asdsadf', 'SUV', 'DLS*JU#*JS', '201304', 'fazlu', 'fazlu.developer@gmail.com', '7428059960', 'sdf', '0', '0', NULL, NULL, 1, 1, '2024-12-23 11:04:56', '', 1),
(5, 36, '2024-12-10', '14:10 20', '451615asdsadf', '12345678', '2345678', '201304', 'Javed Khan', 'Test@test.com', '8287976642', 'sdf', '0', '0', NULL, NULL, 1, 1, '2024-12-23 12:27:23', '', 1),
(6, 36, '2024-12-10', '14:10 20', '451615asdsadf', '12345678', '2345678', '201304', 'Javed Khan', 'Test@test.com', '8287976642', 'sdf', '0', '0', NULL, NULL, 1, 1, '2024-12-23 12:29:43', '', 1),
(7, 36, '2024-12-10', '14:10 20', '451615asdsadf', 'Test 90', '2783973912321', '201304', 'Javed Khan', 'Test@test.com', '8287976642', 'sdf', '0', '0', NULL, NULL, 1, 1, '2024-12-23 12:38:55', '', 1),
(8, 42, '2024-12-23', '12:00 - 13:00', 'Booking for EV charging', 'Test 4', '238190339123921', '110095', 'Tester', 'test@gmail.com', '8287973554', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-23 13:07:07', '', 1),
(9, 44, '2024-12-26', '14:00 - 15:00', 'Booking for EV charging', 'Testing', '283179379231', '110083', 'Yets', 'Test@test.com', '8287976641', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-26 14:46:26', '', 1),
(10, 44, '2024-12-26', '14:00 - 15:00', 'Booking for EV charging', 'Testing', '283179379231', '110083', 'Yets', 'Test@test.com', '8287976641', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-26 14:46:27', '', 1),
(11, 44, '2024-12-26', '12:00 - 13:00', 'Booking for EV charging', 'Testing', '283179379231', '110083', 'Yets', 'Test@test.com', '8287976641', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-26 14:48:05', '', 1),
(12, 43, '2024-12-27', '14:00 - 15:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110083', 'Fazlu', 'Fazlu@gmail.com', '8287976642', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 06:15:37', '', 3),
(13, 43, '2025-01-08', '14:00 - 15:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 07:28:10', '', 3),
(14, 43, '2025-01-08', '14:00 - 15:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 07:28:42', '', 3),
(15, 43, '2025-01-08', '14:00 - 15:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 07:29:25', '', 3),
(16, 47, '2025-01-01', '14:00 - 15:00', 'Booking for EV charging', 'Testing', 'Testing', '110095', 'Javed Khan', 'Khan@gmail.com', '8287976464', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:03:10', '', 1),
(17, 48, '2024-12-28', '18:00 - 19:00', 'Booking for EV charging', 'Mahindra BE 6', 'DL@81921221', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:23:02', '', 3),
(18, 48, '2024-12-27', '12:00 - 13:00', 'Booking for EV charging', 'Tata Tiago EV', 'DL@82912', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:23:37', '', 3),
(19, 48, '2024-12-27', '14:00 - 15:00', 'Booking for EV charging', 'Tata Tiago EV', 'DL@82912', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:29:14', '', 3),
(20, 48, '2024-12-28', '14:00 - 15:00', 'Booking for EV charging', 'Tata Tiago EV', 'DL@82912', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:29:18', '', 3),
(21, 48, '2024-12-27', '14:00 - 15:00', 'Booking for EV charging', 'Mahindra BE 6', 'DL@81921221', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:29:51', '', 3),
(22, 48, '2024-12-27', '12:00 - 13:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:45:57', '', 3),
(23, 48, '2025-01-08', '16:00 - 17:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:46:13', '', 3),
(24, 48, '2024-12-27', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:54:07', '', 3),
(25, 48, '2025-01-08', '16:00 - 17:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:57:29', '', 3),
(26, 48, '2025-01-08', '16:00 - 17:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 08:59:00', '', 3),
(27, 48, '2025-01-08', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 09:00:31', '', 3),
(28, 48, '2025-01-16', '12:00 - 13:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 09:01:23', '', 3),
(29, 48, '2024-12-27', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 09:09:08', '', 3),
(30, 48, '2024-12-27', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 09:10:02', '', 3),
(31, 48, '2024-12-27', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 09:11:04', '', 3),
(32, 48, '2024-12-27', '12:00 - 13:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 09:17:47', '', 3),
(33, 48, '2024-12-28', '15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 09:29:24', '', 3),
(34, 48, '2024-12-27', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', 'sdf', '0', '0', NULL, NULL, 1, 2, '2024-12-27 09:30:10', '', 3),
(35, 1, '2024-12-10', '14:10 20', '451615asdsadf', 'Test 90', '2783973912321', '201304', 'fazlu', 'fazlu.developer@gmail.com', '7428059960', 'sdf', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 1, '2024-12-27 09:53:47', '', 1),
(36, 48, '2024-12-27', '12:00 - 13:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', NULL, 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 2, '2024-12-27 10:10:25', '', 3),
(37, 48, '2024-12-27', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 5, 2, '2024-12-27 10:11:39', '', 3),
(38, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:18:45', '', 3),
(39, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:23:41', '', 3),
(40, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:23:49', '', 3),
(41, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '30% - 40%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:23:54', '', 3),
(42, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:29:31', '', 3),
(43, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:29:34', '', 3),
(44, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:30:21', '', 3),
(45, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:30:23', '', 3),
(46, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:30:23', '', 3),
(47, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:30:24', '', 3),
(48, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:31:08', '', 3),
(49, 48, '2024-12-27', '12:00 - 13:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 2, '2024-12-27 10:31:38', '', 3),
(50, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:31:55', '', 3),
(51, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:34:17', '', 3),
(52, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:36:07', '', 3),
(53, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:36:40', '', 3),
(54, 43, '2024-12-27', 'now', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '20% - 30%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2024-12-27 10:37:59', '', 3),
(55, 43, '2024-12-27', 'now', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '20% - 30%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2024-12-27 10:43:49', '', 3),
(56, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 10:57:13', '', 3),
(57, 1, '2024-12-10', '14:10 20', '451615asdsadf', 'Test 90', '2783973912321', '201304', 'fazlu', 'fazlu.developer@gmail.com', '7428059960', 'sdf', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 1, '2024-12-27 12:39:02', '', 1),
(58, 1, '2024-12-10', '14:10 20', '451615asdsadf', 'Test 90', '2783973912321', '201304', 'fazlu', 'fazlu.developer@gmail.com', '7428059960', 'sdf', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 1, '2024-12-27 12:39:02', '', 1),
(59, 48, '2025-02-04', '14:00 - 15:00', 'lorem ipsum', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 12:41:02', '', 1),
(60, 48, '2025-01-23', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 15:06:50', '', 1),
(61, 48, '2025-01-10', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '80% - 90%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 2, '2024-12-27 15:25:57', '', 1),
(62, 43, '2024-12-28', '16:00 - 17:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '10% - 20%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2024-12-27 15:35:54', '', 1),
(63, 48, '2025-01-01', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 15:36:32', '', 1),
(64, 48, '2024-12-27', 'now', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 16:25:20', '', 1),
(65, 43, '2024-12-28', '16:00 - 17:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '20% - 30%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2024-12-27 16:44:35', '', 1),
(66, 43, '2024-12-28', '16:00 - 17:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '10% - 20%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2024-12-27 16:52:46', '', 1),
(67, 43, '2025-01-25', '14:00 - 15:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '40% - 50%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 2, '2024-12-27 16:53:49', '', 1),
(68, 43, '2024-12-28', '16:00 - 17:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '10% - 20%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2024-12-27 16:55:14', '', 1),
(69, 43, '2024-12-28', '16:00 - 17:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '10% - 20%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2024-12-27 16:55:22', '', 1),
(70, 43, '2024-12-28', '14:00 - 15:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '80% - 90%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2024-12-27 16:58:43', '', 1),
(71, 43, '2024-12-28', '16:00 - 17:00', 'Booking for EV charging', 'Test 2', '3789837193712', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '10% - 20%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2024-12-27 17:07:15', '', 1),
(72, 48, '2024-12-31', '16:00 - 17:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '50% - 60%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 2, '2024-12-27 17:52:59', '', 1),
(73, 48, '2024-12-27', '14:00 - 15:00', 'Booking for EV charging', '32113123213', '21321321312', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 2, '2024-12-27 17:56:01', '', 1),
(74, 48, '2024-12-27', 'now', 'Booking for EV charging', 'MG Comet EV', 'DL@1238913', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '80% - 90%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-27 18:23:52', '', 1),
(75, 43, '2024-12-28', 'now', 'Booking for EV charging', 'Test 2', '3789837193712', '201304', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '10% - 20%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 1, '2024-12-28 11:10:52', '', 1),
(76, 49, '2024-12-28', 'now', 'Booking for EV charging', 'Testing', '38913198322139', '110095', 'Testing', 'test@test.com', '9887878787', '10% - 20%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2024-12-28 11:12:58', '', 1),
(77, 48, '2024-12-28', 'now', 'Booking for EV charging', 'MG Comet EV', 'DL@1238913', '110083', 'Mohan', 'Mohan@gmail.com', '8787878787', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-28 11:13:57', '', 1),
(78, 50, '2025-01-11', '12:00 - 13:00', 'Booking for EV charging', 'Test 2', '821998218921', '110083', 'Ayush', 'Ayush@test.com', '8787878798', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2024-12-28 12:17:18', '', 1),
(79, 50, '2025-01-10', '12:00 - 13:00', 'Booking for EV charging', 'Test 2', '821998218921', '110083', 'Ayush', 'Ayush@test.com', '8787878798', '30% - 40%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 2, '2024-12-28 12:18:04', '', 1),
(80, 43, '2024-12-28', 'now', 'Booking for EV charging', 'Test 2', '3789837193712', '201304', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '20% - 30%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 1, '2024-12-28 14:35:07', '', 1),
(81, 43, '2025-01-09', '18:00 - 19:00', 'Booking for EV charging', 'Test', '8853644552', '201304', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '60% - 70%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 2, '2024-12-28 14:36:22', '', 1),
(82, 43, '2025-01-18', '14:00 - 15:00', 'Booking for EV charging', 'Test', '8853644552', '201304', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '20% - 30%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 1, '2024-12-28 14:54:39', '', 1),
(83, 43, '2024-12-28', '14:00 - 15:00', 'Booking for EV charging', 'Test', '8853644552', '201304', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '40% - 50%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 2, '2024-12-28 14:55:00', '', 1),
(84, 43, '2024-12-28', '14:00 - 15:00', 'Booking for EV charging', 'Test', '8853644552', '201304', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '10% - 20%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 1, '2024-12-28 14:56:38', '', 1),
(85, 43, '2024-12-28', 'now', 'Booking for EV charging', 'Test', '8853644552', '201304', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '70% - 80%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 4, 1, '2024-12-28 14:59:20', '', 1),
(86, 43, '2025-01-18', '14:00 - 15:00', 'Booking for EV charging', 'Test', '8853644552', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Dilshad Garden, - 110095, Delhi, India', 1, 1, '2025-01-02 14:06:05', '', 1),
(87, 43, '2025-01-04', '12:00 - 13:00', 'Booking for EV charging', 'Test', '8853644552', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '30% - 40%', 'India', 'Delhi', NULL, 'unnamed road, Dilshad Garden, - 110095, Delhi, India', 1, 2, '2025-01-02 14:06:37', '', 1),
(88, 43, '2025-01-04', '12:00 - 13:00', 'Booking for EV charging', 'Test', '8853644552', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Dilshad Garden, - 110095, Delhi, India', 1, 1, '2025-01-03 13:22:33', '', 1),
(89, 43, '2025-01-18', '14:00 - 15:00', 'Booking for EV charging', 'Test', '8853644552', '110095', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '30% - 40%', 'India', 'Bihar', NULL, 'NH327, Kishanganj, Bahadurganj, Bihar, India', 1, 2, '2025-01-06 07:19:29', '', 1),
(90, 50, '2025-01-07', 'now', 'Booking for EV charging', 'Test 2', '821998218921', '110083', 'Ayush', 'Ayush@test.com', '8787878798', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-01-07 08:30:11', '', 1),
(91, 50, '2025-01-08', 'now', 'Booking for EV charging', 'Test 2', '821998218921', '110083', 'Ayush', 'Ayush@test.com', '8787878798', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-01-08 16:19:01', '', 1),
(92, 43, '2025-01-15', 'now', 'Booking for EV charging', 'Test', '8853644552', '110083', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-01-15 08:22:31', '', 1),
(93, 43, '2025-01-18', '14:00 - 15:00', 'Booking for EV charging', 'Test', '8853644552', '110083', 'Fazlu', 'Fazlu@gmail.com', '8287976642', '30% - 40%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 2, '2025-01-15 09:16:04', '', 1),
(94, 63, '2025-01-15', 'now', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Jaed', 'Test@test.ckja', '8287976642', '20% - 30%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 4, 1, '2025-01-15 13:11:04', '', 1),
(95, 63, '2025-01-18', '14:00 - 15:00', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Jaed', 'Test@test.ckja', '8287976642', '30% - 40%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 2, '2025-01-15 13:12:58', '', 1),
(96, 63, '2025-02-07', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Jaed', 'Test@test.ckja', '8287976642', '50% - 60%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 1, '2025-01-15 13:13:55', '2025-02-08 00:05:23', 1),
(97, 63, '2025-01-15', 'now', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Jaed', 'Test@test.ckja', '8287976642', '70% - 80%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 4, 1, '2025-01-15 13:14:13', '', 1),
(98, 63, '2025-01-15', 'now', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Jaed', 'Test@test.ckja', '8287976642', '60% - 70%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 4, 1, '2025-01-15 13:14:39', '', 1),
(99, 63, '2025-03-05', '11:00 AM - 12:00 PM', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Jaed', 'Test@test.ckja', '8287976642', '80% - 90%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 2, '2025-01-15 13:16:08', '2025-01-27 20:40:21', 1),
(100, 63, '2025-01-15', 'now', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '110083', 'Jaed', 'Test@test.ckja', '8287976642', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 4, 1, '2025-01-15 14:08:20', '', 1),
(101, 65, '2025-01-16', 'now', 'Booking for EV charging', 'NEXON', '12345', '122001', 'RITIN', NULL, '8586800327', '40% - 50%', 'India', 'Haryana', 'Gurgaon', 'Underpass, Sector 15-I, Gurgaon - 122001, Haryana, India', 4, 1, '2025-01-16 06:54:09', '', 1),
(102, 65, '2025-01-16', '16:00 - 17:00', 'Booking for EV charging', 'NEXON', '12345', '122001', 'RITIN', NULL, '8586800327', '50% - 60%', 'India', 'Haryana', 'Gurgaon', 'Underpass, Sector 15-I, Gurgaon - 122001, Haryana, India', 3, 2, '2025-01-16 06:56:35', '', 1),
(103, 65, '2025-01-16', '16:00 - 17:00', 'Booking for EV charging', 'NEXON', '12345', '122001', 'RITIN', NULL, '8586800327', '10% - 20%', 'India', 'Haryana', 'Gurgaon', 'Underpass, Sector 15-I, Gurgaon - 122001, Haryana, India', 4, 2, '2025-01-16 06:57:05', '', 1),
(104, 64, '2025-01-16', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9192', '121001', 'Tanmay', 'Tanmaychopra29@gmail.com', '9999999999', '20% - 30%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 4, 1, '2025-01-16 07:15:03', '', 1),
(105, 63, '2025-01-16', 'now', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Jaed', 'Test@test.ckja', '8287976642', '10% - 20%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 4, 1, '2025-01-16 09:29:59', '', 1),
(106, 66, '2025-01-16', 'now', 'Booking for EV charging', 'Test 01', '238921880321', '110083', 'Javed', 'Live.javedkhan@gmail.com', '8287976641', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 4, 1, '2025-01-16 12:58:39', '', 1),
(107, 65, '2025-01-17', 'now', 'Booking for EV charging', 'NEXON', '12345', '121001', 'RITIN', NULL, '8586800327', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 4, 1, '2025-01-17 16:49:46', '', 1),
(108, 68, '2025-01-19', 'now', 'Booking for EV charging', 'Test', 'DL@128981921', '110083', 'Ritesh', 'Test@gmail.com', '8798988789', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 4, 1, '2025-01-19 09:17:59', '', 1),
(109, 69, '2025-01-20', 'now', 'Booking for EV charging', 'Test', '781991723123', '110083', 'Javed', 'Test@gmail.com', '9292929292', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 4, 1, '2025-01-20 07:57:01', '', 1),
(110, 63, '2025-01-20', 'now', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '110095', 'Jaed', 'Test@test.ckja', '8287976642', '20% - 30%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 4, 1, '2025-01-20 10:29:56', '', 1),
(111, 63, '2025-03-13', '11:00 AM - 12:00 PM', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '110095', 'Jaed', 'Test@test.ckja', '8287976642', '20% - 30%', 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', 1, 1, '2025-01-20 10:45:34', '2025-01-27 20:40:28', 1),
(112, 64, '2025-01-21', '10:00 AM - 11:00 AM', 'Booking for EV charging', 'Tata', 'HR51BE9192', '121001', 'Tanmay', 'Tanmaychopra29@gmail.com', '9999999999', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 2, '2025-01-21 06:42:27', '', 1),
(113, 64, '2025-01-23', '10:00 AM - 11:00 AM', 'Booking for EV charging', 'Tata', 'HR51BE9192', '121001', 'Tanmay', 'Tanmaychopra29@gmail.com', '9999999999', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 2, '2025-01-21 06:44:47', '', 1),
(114, 64, '2025-01-21', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9192', '121001', 'Tanmay', 'Tanmaychopra29@gmail.com', '9999999999', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 1, '2025-01-21 06:47:32', '', 1),
(115, 64, '2025-01-21', '11:00 AM - 12:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9192', '121001', 'Tanmay', 'Tanmaychopra29@gmail.com', '9999999999', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-01-21 06:47:53', '', 1),
(116, 64, '2025-01-21', '7:00 PM - 8:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9192', '121001', 'Tanmay', 'Tanmaychopra29@gmail.com', '9999999999', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-01-21 06:57:34', '', 1),
(117, 65, '2025-01-21', '14:00 - 15:00', 'Booking for EV charging', 'NEXON', '12345', '121001', 'RITIN', NULL, '8586800327', '20% - 30%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-01-21 06:59:49', '', 1),
(118, 64, '2025-01-21', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9192', '121001', 'Tanmay', 'Tanmaychopra29@gmail.com', '9999999999', '70% - 80%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-01-21 07:32:59', '', 1),
(119, 70, '2025-01-21', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '60% - 70%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-01-21 09:54:25', '', 1),
(120, 70, '2025-01-25', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 4, 2, '2025-01-21 09:54:49', '', 1),
(121, 70, '2025-01-22', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-01-22 08:09:12', '', 1),
(122, 70, '2025-01-22', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '50% - 60%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-01-22 15:07:58', '2025-01-24 16:56:48', 1),
(123, 70, '2025-01-22', '10:00 AM - 11:00 AM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-01-22 15:08:07', '', 1),
(124, 70, '2025-01-23', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-01-23 10:22:15', '', 1),
(125, 70, '2025-01-23', '9:00 PM - 10:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '50% - 60%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-01-23 10:22:53', '', 1),
(126, 70, '2025-01-24', '11:00 AM - 12:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 4, 2, '2025-01-24 06:51:40', '2025-01-24 18:01:38', 1),
(127, 70, '2025-01-24', '11:00 AM - 12:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-01-24 12:32:37', '2025-01-24 18:04:04', 1),
(128, 70, '2025-01-24', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 2, 1, '2025-01-24 12:32:47', '2025-01-27 12:37:14', 1),
(129, 70, '2025-01-29', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 4, 2, '2025-01-27 06:57:41', '2025-01-28 11:47:20', 1),
(130, 65, '2025-01-28', 'now', 'Booking for EV charging', 'NEXON', '12345', '121001', 'RITIN', NULL, '8586800327', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 4, 1, '2025-01-28 06:15:29', '2025-01-28 11:48:41', 1),
(131, 65, '2025-01-28', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'NEXON', '12345', '121001', 'RITIN', NULL, '8586800327', '20% - 30%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-01-28 06:16:22', '2025-01-28 11:46:22', 1),
(132, 70, '2025-01-30', '1:00 PM - 2:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-01-29 06:30:42', '2025-01-29 12:00:42', 1),
(133, 70, '2025-01-29', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-01-29 12:02:53', '2025-01-29 17:32:53', 1),
(134, 63, '2025-01-30', '6:00 PM - 7:00 PM', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Javed', 'Test@test.ckja', '8287976642', '20% - 30%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 2, '2025-01-30 08:01:16', '2025-01-30 13:31:16', 1),
(135, 63, '2025-02-07', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Javed', 'Test@test.ckja', '8287976642', '20% - 30%', 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', 1, 2, '2025-01-30 08:07:31', '2025-02-08 00:05:12', 1),
(136, 70, '2025-02-06', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-02-06 07:27:58', '2025-02-06 12:57:58', 1),
(137, 75, '2025-03-10', 'now', 'Booking for EV charging', 'NEXON', '11223344', '121001', 'R Ranjan', NULL, '9318453468', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 1, '2025-03-10 06:01:46', '2025-04-30 11:15:15', 1),
(138, 75, '2025-03-12', '6:00 PM - 7:00 PM', 'Booking for EV charging', 'NEXON', '11223344', '121001', 'R Ranjan', NULL, '9318453468', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 2, '2025-03-10 06:02:49', '2025-04-23 11:37:37', 1),
(139, 70, '2025-03-12', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-03-12 12:35:49', '2025-03-12 18:05:49', 1),
(140, 63, '2025-04-07', 'now', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Javed', 'Test@test.ckja', '8287976642', '60% - 70%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-04-07 11:08:09', '2025-04-07 16:38:09', 1),
(141, 63, '2025-04-18', '2:00 PM - 3:00 PM', 'Booking for EV charging', 'DL@GJH2828', '2828827227', '201304', 'Javed', 'Test@test.ckja', '8287976642', '20% - 30%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 2, '2025-04-07 11:08:25', '2025-04-07 16:38:25', 1),
(142, 80, '2025-04-14', 'now', 'Booking for EV charging', '4 wheeler', 'UP16EX4641', '121001', 'Pranav sachdeva', NULL, '8800119959', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-04-14 18:01:44', '2025-04-14 23:31:44', 1),
(143, 83, '2025-04-22', 'now', 'Booking for EV charging', 'Tata', 'HREV1001', '122001', 'Shaurya', NULL, '8933067499', '20% - 30%', 'India', 'Haryana', 'Gurgaon', 'unnamed road, Sector 32, Gurgaon - 122001, Haryana, India', 1, 1, '2025-04-22 05:37:54', '2025-04-22 11:07:54', 1),
(144, 70, '2025-04-22', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-04-22 15:07:21', '2025-04-22 20:37:21', 1),
(145, 70, '2025-04-25', '11:00 - 12:00', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-04-22 15:07:35', '2025-04-22 20:37:35', 1),
(146, 70, '2025-04-23', '1:00 PM - 2:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 2, '2025-04-23 05:58:02', '2025-04-23 11:31:45', 1),
(147, 70, '2025-04-23', '2:00 PM - 3:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '40% - 50%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 2, '2025-04-23 06:00:12', '2025-04-23 11:36:38', 1),
(148, 75, '2025-04-23', 'now', 'Booking for EV charging', 'NEXON', '11223344', '121001', 'R Ranjan', NULL, '9318453468', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 1, '2025-04-23 06:03:53', '2025-04-30 11:15:14', 1),
(149, 75, '2025-04-23', '2:00 PM - 3:00 PM', 'Booking for EV charging', 'NEXON', '11223344', '121001', 'R Ranjan', NULL, '9318453468', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 2, '2025-04-23 06:06:01', '2025-04-30 11:15:12', 1),
(150, 85, '2025-04-23', 'now', 'Booking for EV charging', 'Nexon', 'DL11GD0560', '121001', 'Abhishek Chauhan', NULL, '9560222005', '60% - 70%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 4, 1, '2025-04-23 08:49:23', '2025-04-28 11:00:24', 1),
(151, 91, '2025-04-24', 'now', 'Booking for EV charging', 'Nexon', 'HR29BB6765', '121001', 'Devish', NULL, '9910983443', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 1, '2025-04-24 13:29:38', '2025-04-24 18:59:50', 1),
(152, 86, '2025-04-27', '6:00 PM - 7:00 PM', 'Booking for EV charging', 'xuv400', 'hr51cp5001', '121001', 'Abhishek', 'primeindustry75@rediffmail.com', '9999008192', '20% - 30%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 4, 1, '2025-04-27 12:34:10', '2025-04-28 10:59:41', 1),
(153, 93, '2025-04-28', '9:00 AM - 10:00 AM', 'Booking for EV charging', 'Mahindra xuv 400', 'HR87Q4094', '121004', 'Shivam Sharma', NULL, '9355465546', '10% - 20%', 'India', 'Haryana', NULL, 'unnamed road, Faridabad, Ballabgarh - 121004, Haryana, India', 3, 2, '2025-04-27 18:13:18', '2025-04-28 10:54:23', 1),
(154, 93, '2025-04-27', 'now', 'Booking for EV charging', 'Mahindra xuv 400', 'HR87Q4094', '121004', 'Shivam Sharma', NULL, '9355465546', '10% - 20%', 'India', 'Haryana', NULL, 'unnamed road, Faridabad, Ballabgarh - 121004, Haryana, India', 3, 1, '2025-04-27 18:14:07', '2025-04-27 23:44:14', 1),
(155, 65, '2025-04-28', 'now', 'Booking for EV charging', 'NEXON', '12345', '121001', 'RITIN', NULL, '8586800327', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-04-28 05:53:07', '2025-04-28 11:23:07', 1),
(156, 75, '2025-04-28', '9:00 AM - 10:00 AM', 'Booking for EV charging', 'NEXON', '11223344', '121001', 'R Ranjan', NULL, '9318453468', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 2, '2025-04-28 05:55:47', '2025-04-29 13:01:46', 1),
(157, 70, '2025-04-28', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-04-28 13:01:52', '2025-04-28 18:31:52', 1),
(158, 70, '2025-04-28', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 2, '2025-04-28 13:03:22', '2025-04-29 13:01:33', 1),
(159, 70, '2025-04-29', '11:00 AM - 12:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 2, '2025-04-29 03:47:14', '2025-04-29 13:01:00', 1),
(160, 70, '2025-04-29', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '20% - 30%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-04-29 07:30:43', '2025-04-29 13:00:43', 1),
(161, 70, '2025-04-29', '11:00 AM - 12:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-04-29 12:42:26', '2025-04-29 18:12:26', 1),
(162, 70, '2025-04-29', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-04-29 12:52:17', '2025-04-29 18:22:17', 1),
(163, 75, '2025-04-29', 'now', 'Booking for EV charging', 'NEXON', '11223344', '121001', 'R Ranjan', NULL, '9318453468', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 1, '2025-04-29 13:13:03', '2025-04-30 11:15:09', 1),
(164, 75, '2025-04-29', 'now', 'Booking for EV charging', 'NEXON', '11223344', '121001', 'R Ranjan', NULL, '9318453468', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 1, '2025-04-29 13:13:10', '2025-04-30 11:15:08', 1),
(165, 70, '2025-04-29', '11:00 AM - 12:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '20% - 30%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-04-29 17:32:56', '2025-04-29 23:02:56', 1),
(166, 75, '2025-04-30', 'now', 'Booking for EV charging', 'NEXON', '11223344', '121001', 'R Ranjan', NULL, '9318453468', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 3, 1, '2025-04-30 05:45:02', '2025-04-30 11:15:07', 1),
(167, 70, '2025-04-30', 'now', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '20% - 30%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-04-30 06:36:00', '2025-04-30 12:06:00', 1),
(168, 70, '2025-04-30', '1:00 PM - 2:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-04-30 08:21:01', '2025-04-30 13:51:01', 1),
(169, 94, '2025-04-30', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'Tata', 'Rj42ev7658', '121001', 'Ajay', NULL, '9891018001', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-04-30 08:24:47', '2025-04-30 13:54:47', 1),
(170, 94, '2025-04-30', 'now', 'Booking for EV charging', 'Tata', 'Rj42ev7658', '121001', 'Ajay', NULL, '9891018001', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-04-30 08:24:54', '2025-04-30 13:54:54', 1),
(171, 70, '2025-04-30', '1:00 PM - 2:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-04-30 12:36:18', '2025-04-30 18:06:18', 1),
(172, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 12:58:04', '2025-04-30 18:28:04', 1),
(173, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 3, 1, '2025-04-30 12:58:16', '2025-04-30 18:40:00', 1),
(174, 71, '2025-04-30', '11:00 AM - 12:00 PM', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 2, '2025-04-30 12:58:43', '2025-04-30 18:28:43', 1),
(175, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:08:48', '2025-04-30 18:38:48', 1),
(176, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:10:02', '2025-04-30 18:40:02', 1),
(177, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:11:27', '2025-04-30 18:41:27', 1),
(178, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:16:34', '2025-04-30 18:46:34', 1),
(179, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:17:27', '2025-04-30 18:47:27', 1),
(180, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '20% - 30%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:17:34', '2025-04-30 18:47:34', 1),
(181, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:18:16', '2025-04-30 18:48:16', 1);
INSERT INTO `bookings` (`id`, `user_id`, `booking_date`, `booking_time`, `description`, `vehicle_type`, `vehicle_number`, `pincode`, `name`, `email`, `mobile_no`, `soc`, `country`, `state`, `city`, `address`, `booking_status`, `booking_type`, `created_at`, `updated_at`, `status`) VALUES
(182, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:18:16', '2025-04-30 18:48:16', 1),
(183, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:18:19', '2025-04-30 18:48:19', 1),
(184, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:21:45', '2025-04-30 18:51:45', 1),
(185, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:50:44', '2025-04-30 19:20:44', 1),
(186, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:51:20', '2025-04-30 19:21:20', 1),
(187, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 13:53:07', '2025-04-30 19:23:07', 1),
(188, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 14:00:44', '2025-04-30 19:30:44', 1),
(189, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 14:00:50', '2025-04-30 19:30:50', 1),
(190, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 14:03:51', '2025-04-30 19:33:51', 1),
(191, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 14:04:29', '2025-04-30 19:34:29', 1),
(192, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 14:06:09', '2025-04-30 19:36:09', 1),
(193, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 14:08:01', '2025-04-30 19:38:01', 1),
(194, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 14:10:00', '2025-04-30 19:40:00', 1),
(195, 71, '2025-04-30', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-04-30 14:12:34', '2025-04-30 19:42:34', 1),
(196, 65, '2025-05-01', '9:00 AM - 10:00 AM', 'Booking for EV charging', 'NEXON', '12345', '121001', 'RITIN', NULL, '8586800327', '20% - 30%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-05-01 06:30:50', '2025-05-01 12:00:50', 1),
(197, 73, '2025-05-01', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 08:43:10', '2025-05-01 14:13:10', 1),
(198, 71, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Dl2184gebr', '110083', 'Fazlu', 'Fazlu@gmail.com', '7428059960', '10% - 20%', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', 1, 1, '2025-05-01 08:44:35', '2025-05-01 14:14:35', 1),
(199, 73, '2025-05-01', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 08:45:22', '2025-05-01 14:15:22', 1),
(200, 73, '2025-05-01', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 10:09:17', '2025-05-01 15:39:17', 1),
(201, 98, '2024-12-10', '14:10 20', '451615asdsadf', 'Car', 'DL7SCR8482', '201304', 'One', 'one@gmail.com', '7428059961', 'sdf', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 10:46:58', '2025-05-01 16:16:58', 1),
(202, 98, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'DL7SCR8482', '201304', 'One', 'one@gmail.com', '7428059961', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 10:48:52', '2025-05-01 16:18:52', 1),
(203, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 10:53:03', '2025-05-01 16:23:03', 1),
(204, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 10:54:09', '2025-05-01 16:24:09', 1),
(205, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 10:54:41', '2025-05-01 16:24:41', 1),
(206, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '20% - 30%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 10:55:14', '2025-05-01 16:25:14', 1),
(207, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '20% - 30%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 10:58:48', '2025-05-01 16:28:48', 1),
(208, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '30% - 40%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:00:40', '2025-05-01 16:30:40', 1),
(209, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:07:23', '2025-05-01 16:37:23', 1),
(210, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:09:58', '2025-05-01 16:39:58', 1),
(211, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 3, 1, '2025-05-01 11:15:22', '2025-05-01 16:47:41', 1),
(212, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '50% - 60%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:15:56', '2025-05-01 16:45:56', 1),
(213, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '70% - 80%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:17:07', '2025-05-01 16:47:07', 1),
(214, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '40% - 50%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:17:31', '2025-05-01 16:47:31', 1),
(215, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '20% - 30%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:24:02', '2025-05-01 16:54:02', 1),
(216, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:27:04', '2025-05-01 16:57:04', 1),
(217, 99, '2025-05-01', 'now', 'Booking for EV charging', 'Car', 'Rstfhc75689', '201304', 'Kanhsj', 'sarthakpathak59@gmail.com', '9999925599', '30% - 40%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:27:15', '2025-05-01 16:57:15', 1),
(218, 73, '2025-05-01', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:45:28', '2025-05-01 17:15:28', 1),
(219, 73, '2025-05-01', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '20% - 30%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:45:50', '2025-05-01 17:15:50', 1),
(220, 73, '2025-05-01', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '60% - 70%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:46:02', '2025-05-01 17:16:02', 1),
(221, 73, '2025-05-01', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '20% - 30%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-01 11:48:04', '2025-05-01 17:18:04', 1),
(222, 70, '2025-05-01', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-05-01 11:49:32', '2025-05-01 17:19:32', 1),
(223, 70, '2025-05-02', '2:00 PM - 3:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-05-02 04:26:47', '2025-05-02 09:56:47', 1),
(224, 73, '2025-05-03', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-03 11:37:16', '2025-05-03 17:07:16', 1),
(225, 73, '2025-05-03', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '70% - 80%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-03 11:37:30', '2025-05-03 17:07:30', 1),
(226, 75, '2025-05-06', '11:00 - 12:00', 'Booking for EV charging', 'NEXON', '11223344', '121001', 'R Ranjan', NULL, '9318453468', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-05-06 10:09:31', '2025-05-06 15:39:31', 1),
(227, 65, '2025-05-06', '9:00 AM - 10:00 AM', 'Booking for EV charging', 'NEXON', '12345', '121001', 'RITIN', NULL, '8586800327', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-05-06 10:09:46', '2025-05-06 15:39:46', 1),
(228, 73, '2025-05-06', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-06 10:40:31', '2025-05-06 16:10:31', 1),
(229, 73, '2025-05-06', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-06 10:43:51', '2025-05-06 16:13:51', 1),
(230, 73, '2025-05-06', 'now', 'Booking for EV charging', 'Test', 'Jsjsjs7282', '201304', 'Sarthak', 'sarthakpathak59@gmail.com', '8700682075', '10% - 20%', 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', 1, 1, '2025-05-06 10:46:42', '2025-05-06 16:16:42', 1),
(231, 75, '2025-05-07', '9:00 AM - 10:00 AM', 'Booking for EV charging', 'NEXON', '11223344', '121001', 'R Ranjan', NULL, '9318453468', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-05-07 06:49:08', '2025-05-07 12:19:08', 1),
(232, 65, '2025-05-07', '9:00 AM - 10:00 AM', 'Booking for EV charging', 'NEXON', '12345', '121001', 'RITIN', NULL, '8586800327', '10% - 20%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-05-07 14:52:01', '2025-05-07 20:22:01', 1),
(233, 85, '2025-05-09', 'now', 'Booking for EV charging', 'Nexon', 'DL11GD0560', '121001', 'Abhishek Chauhan', NULL, '9560222005', '70% - 80%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 4, 1, '2025-05-09 03:32:48', '2025-05-10 13:01:18', 1),
(234, 86, '2025-05-15', '7:00 PM - 8:00 PM', 'Booking for EV charging', 'xuv400', 'hr51cp5001', '121001', 'Abhishek', 'primeindustry75@rediffmail.com', '9999008192', '70% - 80%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-05-15 13:03:14', '2025-05-15 18:34:09', 1),
(235, 94, '2025-05-22', 'now', 'Booking for EV charging', 'Tata', 'Rj42ev7658', '121001', 'Ajay', NULL, '9891018001', '30% - 40%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 1, '2025-05-22 10:22:47', '2025-05-22 15:52:47', 1),
(236, 70, '2025-05-29', '12:00 PM - 1:00 PM', 'Booking for EV charging', 'Tata', 'HR51BE9193', '121001', 'Tanmay c', NULL, '8920110530', '50% - 60%', 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', 1, 2, '2025-05-29 10:53:02', '2025-05-29 16:23:02', 1),
(237, 88, '2025-06-01', 'now', 'Booking for EV charging', 'Tata punch', 'HR87P5247', '121007', 'SANJIEV ARORRA', 'commonmail602@gmail.com', '9810000370', '20% - 30%', 'India', 'Haryana', NULL, 'unnamed road, Faridabad, SECTOR 79 - 121007, Haryana, India', 1, 1, '2025-06-01 06:21:34', '2025-06-01 11:51:34', 1),
(238, 101, '2025-06-10', '8:00 PM - 9:00 PM', 'Booking for EV charging', 'Hyundai Kona', 'HR29BB8822', '121004', 'Tarun Arora', 'Tarunarora9t@gmail.com', '8130327513', '30% - 40%', 'India', 'Haryana', NULL, 'unnamed road, Faridabad, Ballabgarh - 121004, Haryana, India', 1, 1, '2025-06-10 14:19:55', '2025-06-10 19:50:58', 1),
(239, 101, '2025-06-10', 'now', 'Booking for EV charging', 'Hyundai Kona', 'HR29BB8822', '121004', 'Tarun Arora', 'Tarunarora9t@gmail.com', '8130327513', '10% - 20%', 'India', 'Haryana', NULL, 'unnamed road, Faridabad, Ballabgarh - 121004, Haryana, India', 1, 1, '2025-06-10 14:22:21', '2025-06-10 19:52:21', 1),
(240, 93, '2025-06-13', 'now', 'Booking for EV charging', 'Mahindra xuv 400', 'HR87Q4094', '121004', 'Shivam Sharma', NULL, '9355465546', '10% - 20%', 'India', 'Haryana', NULL, 'unnamed road, Faridabad, Ballabgarh - 121004, Haryana, India', 1, 1, '2025-06-13 14:44:38', '2025-06-13 20:14:38', 1),
(241, 93, '2025-06-13', 'now', 'Booking for EV charging', 'Mahindra xuv 400', 'HR87Q4094', '121004', 'Shivam Sharma', NULL, '9355465546', '10% - 20%', 'India', 'Haryana', NULL, 'unnamed road, Faridabad, Ballabgarh - 121004, Haryana, India', 1, 1, '2025-06-13 15:02:09', '2025-06-13 20:32:09', 1),
(242, 93, '2025-06-14', 'now', 'Booking for EV charging', 'Mahindra xuv 400', 'HR87Q4094', '121004', 'Shivam Sharma', NULL, '9355465546', '10% - 20%', 'India', 'Haryana', NULL, 'unnamed road, Faridabad, Ballabgarh - 121004, Haryana, India', 1, 1, '2025-06-14 04:18:57', '2025-06-14 09:48:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,2-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Book', NULL, 1, '2024-11-27 07:18:02', '2024-12-04 06:36:04'),
(2, 'Sale', NULL, 1, '2024-11-27 07:18:02', '2024-12-04 06:35:53'),
(3, 'Purchase', NULL, 1, '2024-11-27 07:18:02', '2024-12-04 06:35:34'),
(6, 'new', 'categories/M5LfMKFYGTdtOuKqMMT8RaG1iowWyGXkzD5xlSAU.jpg', 3, '2024-12-06 09:51:12', '2024-12-06 14:02:44'),
(7, 'SSSS', NULL, 3, '2024-12-11 07:24:51', '2024-12-11 07:25:00'),
(8, 's', NULL, 3, '2024-12-11 07:24:54', '2024-12-11 07:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gst_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `gst_no`, `logo`, `favicon`, `address`, `email`, `mobile`, `created_at`, `updated_at`, `status`) VALUES
(1, 'PowerDelivery', '7YZPCX9483K2Z7', 'logos/RsQyWt1C35fSPTgdIHiwDhr2mkPhYKiMk0kbRb3t.png', 'favicons/qQM49oeJxOQHXBabE57Vqj9uye9fn4p5cxSg3kNh.png', 'C33 sec 11, FBD', 'contact@powerdelivery.in', '7827018363', '2024-10-16 10:32:37', '2025-04-23 05:59:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_url`
--

CREATE TABLE `dynamic_url` (
  `id` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dynamic_url`
--

INSERT INTO `dynamic_url` (`id`, `url`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'lead.create', 'Add Lead', '2024-10-11 12:00:11', '2024-10-11 12:00:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emi_collections`
--

CREATE TABLE `emi_collections` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_id` int NOT NULL COMMENT 'loans.id',
  `agent_id` int NOT NULL COMMENT 'users.id',
  `emi_amount` int NOT NULL,
  `payment_mode` int NOT NULL COMMENT 'payment modes.id',
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emi_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1-Pending,2-Paid',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Deactive,3-delete,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT '1' COMMENT 'users.id',
  `property_id` int DEFAULT NULL COMMENT 'properties.id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_status` tinyint NOT NULL DEFAULT '1' COMMENT '	1-Initial Stage , 2-Team Call , 3-Call Dissconected, 4-Ringing , 5-Pipeline , 6-Visit align , 7-Conversion , 8-rejected , 9-assign lead	',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `user_id`, `property_id`, `name`, `email`, `mobile_no`, `message`, `location`, `budget`, `plan_date`, `loan_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 31, NULL, 'test lead', 'test@gmail.com', '7428059960', 'test message', '', NULL, NULL, 4, 1, '2024-12-10 12:33:47', '2024-12-10 12:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Wi-Fi', 'facilities/1fEzCLzTz0M6YnJYPQJsUerblOmkdtHx3imRA982.png', 1, '2024-11-29 06:27:34', '2024-12-02 06:26:55'),
(2, 'Bath', 'facilities/GDZiFQANcKo5L0qCjMI6Sd8nybaKrsGcDs92yEkY.png', 1, '2024-11-29 06:27:34', '2024-12-02 06:33:26'),
(3, 'Resturant', 'facilities/V8SdRovyfb0Apd5AjIYeREiOJeFzMGvJhkBbYQpI.png', 1, '2024-11-29 06:27:41', '2024-12-02 06:27:11'),
(4, 'Airport Transfer', 'facilities/4c8NElzPCpWN7VV1HW3G2hLTDyCZVouN1NYFL87X.png', 1, '2024-11-29 06:27:41', '2024-12-02 06:28:35'),
(5, 'Family Room', 'facilities/7jdvKIVBmJsBsLVK34ulBXlOJ69iVyIJvt3bkLVT.png', 1, '2024-11-29 06:27:42', '2024-12-02 06:27:47'),
(6, 'Kitchen', 'facilities/KiYI9CknkcK8Kgj3o5WV943cR9AxxLlKu0DFJmMJ.png', 1, '2024-11-29 06:27:42', '2024-12-02 06:27:36'),
(7, 'Luggage storage', 'facilities/sjuWn4G8lG5kMnGxKZ1z2LAweLkUZG5RukV8o465.png', 1, '2024-11-29 06:27:42', '2024-12-02 06:31:44'),
(8, 'Breakfast', 'facilities/cZ5N5vNg23M3NOyDaJB0Sz6PEfVXZEXHFsOnDeAz.png', 1, '2024-11-29 06:27:42', '2024-12-04 06:43:58');

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
-- Table structure for table `gallaries`
--

CREATE TABLE `gallaries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallaries`
--

INSERT INTO `gallaries` (`id`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 'gallary/wZYri1FKCFjqfsqz29tIKDMEEozIcni7DRKmw0Sv.png', '2024-12-02 08:04:32', '2024-12-03 07:08:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kycdatas`
--

CREATE TABLE `kycdatas` (
  `id` int NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `response` longtext,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `kycdatas`
--

INSERT INTO `kycdatas` (`id`, `type`, `number`, `name`, `mobile`, `state`, `response`, `user_id`, `created_at`) VALUES
(1, 'aadhar', '889050479435', 'Amit Kumar', '8222817455', '7f7c99390ea5e0b62e075f8245b1463b', '{\"status\":\"success\",\"data\":{\"client_id\":\"aadhaar_v2_gjuvwdzApflyIizIMyHS\",\"full_name\":\"Amit Kumar\",\"aadhaar_number\":\"889050479435\",\"dob\":\"1997-06-27\",\"gender\":\"M\",\"address\":{\"country\":\"India\",\"dist\":\"Jhajjar\",\"state\":\"Haryana\",\"po\":\"Baghpur\",\"loc\":\"\",\"vtc\":\"Baghpur(129)\",\"subdist\":\"Beri\",\"street\":\"\",\"house\":\"\",\"landmark\":\"\"},\"face_status\":false,\"face_score\":-1,\"zip\":\"124201\",\"profile_image\":\"\\/9j\\/4AAQSkZJRgABAgAAAQABAAD\\/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL\\/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL\\/wAARCADIAKADASIAAhEBAxEB\\/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL\\/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6\\/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL\\/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6\\/9oADAMBAAIRAxEAPwDpwKCvFPxSkcVRI0LSbeakxSAUrgMIo2mpMZ600igBmKa2CcUrMqoTuHy9c9qwNV8TW9g7xgb5APunii4G8oyM0rEAc1iHxHa2tik1zIv7z7uzndxn\\/PasO88cKS4t4gFHIMxwT9AB\\/WncDs1IJqQjivPE8YXDgv5gVv7ojGP1zWlaeMvlCTxYI6vu4pXCx1hHNKBWZpuu2upvsi3bv904\\/OtcDimIgcVHtqdl5pAnFAEJGBmmd6nkX5aYEyaAK7qN9JipJF+akZKpCNgCl2mpAmBS4qCyPbRtqbyzSbcUgIgtUNT1G20y1ae4cKoOAO5PoK0mU4ry3x1qMk+oG2DfJCSuPU9z\\/n0oAqax4lubiZjC5WMnIHf9KwLi9muJS0+9j3JFV1kZchhvDcUiPLE4O7BB6EVNx2HfamHHJ9OajluXcg4+laMbJcRN5sA8zPDdMfhSyabG65jzwO3NLmQ7GYLllG0n34qwlwWRV4GOuasxaHLO3AKp\\/eNNm0OaL5o\\/mFL2kb2HyM6zwrLEZkZGVJFJDID9\\/pg+3U\\/X8K7yKcOMcbhXi1leT6bcbmQjjpkgV1mk+KEjkUyAjceSxyv59a0TIaO+bk9KcoyM1XtpxdKpRlIK53A5B+lXCAvA6VRJXk6GkU8CpHXIpmMCgCJhl6GGKk2800iqQmbm2gKM08ClwakobQVqQD2oIyOlAGXrGoxaTpst3LyFHC92J6CvHLn7RquoTzyg+ZK24nsM11\\/j6\\/abUI7GNjthG4j\\/AGj3\\/AfzNY9pAIoR\\/ePUmsak+VFwjdkdjp8duoO0bvpWjHYwynLQoT7rSxLk1ft0HTjNcM5ts64RRXXS7c4\\/cR8dPkFTCxRV+WNQPpWvBDGQMmpjbp1FZ3ZpZHPNbdtv6VVktsjFdLJAoz\\/Ws64iweBTWgNXOVvbFGUqyg5rGgYaTd\\/voRPbOMMp9Pb0NdZdoCOhNYt5b+YjKRXVSqPqc84Gzol\\/JplwoRzNZOAwPUrk9R+JAP8Avd8V3yncoIIIPIIrzTwqWmeW1aIyupX5M\\/eTIz\\/Q\\/hXpkETrCnmH59o3Y6ZxzXWtTlYhFMIqZl5qJxTsAzFNan5prVSYjdDZ96fxjkVGg4GakHSpKF4pCaWkOKBHl\\/jC3MfiQyN0kAI\\/lUEa8AHpW748jButOcdSWH6r\\/jWFM\\/kpkDJPSuaubUiwuFq7bjcRisiEXU+CIwPrV\\/7FqwjykcbDr8hzj865eTzOhTaOgt7V2TcCDT5LWePkA1i2N3qUGd+zGMYrp7O+EkYDgbj61EopGkZXM3ypnHQ1TuIGUYati61MISqqAa5jUby+kfCRjb\\/s96Iq4SlYrXCMpPpWXOoJJqxNLflDm2fnv0rLN4wl2TIyn3GK3hCxhKVzZ8HRBfE8hC\\/8sGPX3FejVwXhIY12RscG3I\\/8eWu7z713Q+E5ZbgwGajfGKeSO5qNzxVEkGcEimmntjNRmkhnQCnAj1puPeo2i3SK24jHYHrSYycU0kUtZ2tPLHpU7QyFJMABh16j+lDdlcLXOe8YoJ5rADqrsePw\\/wAKxJbfgSEZxTzNM22OcuWQnq2R9RU+DJHtA61w1ql9UddOnbRmSt7Kk6xRplz0FSf8JNqVpO9sYUDK\\/lmMk7s+ucdOP5VfXT3LjA\\/StWDR18smWOIseckDNZwlHqXKMuhVlluoLsQ30PlzHjAOQfp+dWILpYpzkZI4xUE9usGfLVc54OOBUEEYV+TkmonZ7FwTW5I03mXexskntUF3qv2O1NzFYtLErbfMYgLn\\/Io1BcAMOtSWttFdQlQFAYYZCMg04WvdkzvsjGHiGS988iyIWIZdkbIAzjNUXnivQQV57Gt+fSWtkdIVVI3+8qcA\\/UVlx2S28hITArS8ehnaVtTU8LKIriQk\\/NsA\\/DNdmpyK89Ny9sWaJmUldvydT7V1+hPcyaapumBcEgc5OPf3rrozurHNUjbU0jUbdac7YpjVsZjGFMNPOaaTQM36OlJS4J70hi1n6yVXTZGbOBjp9av7f0rM15DJpEw9NrfkwP8ASlJXTHHRnFXYMTQZx8ybqtWWOCaxr6RkvIAc7dpUfpWraHKL9K86a91HbB+8bcGzsOauR20kvVsL7VnWuAea37V02EHAOK5+p0X0MPVYBbRbifoPU1S061aZ9zjrVzWzM7o0IVimflNZEU+pwTBt0E0J5KxqVdfw5z+daJaaENpPU19S05Ejx14rO0uBmd488qc4qO81a9uFPkwZ6AtIdoH9aj0ma7TUYzK8Zxku0YKjp0568\\/yp8rsJyTehpyh0O1+R71RnEe05Fat3gsWzwR0rCu2IJFJBIzScXahe2Tj6c12ejhVsPMG7MjFjn16f0rg5G\\/0+FRyST\\/Ku\\/siBp9uB3jU\\/mK76K1ucVV6WJydzUrEfjQi4OaRvvfjXQYCHAFMp7dKZQB0Bx6UopgJzS55pFAzVQ1I7rOVOPmUjP4VebpkVRvxmE9uKAPNtcTY0EuW3I+CMcfnV6xlDqMGk1iIywSqBlhyPwrP06YlVIPI7VyVado6HRCep1du+MZ61Zm1AW0RJbnHQVlwT8DmlnjFwvJ5HSuNLU629NCN7xrlgFBy2eBTY0dH3CSMP6Fv8iqGy73FQVVeny9SKuW9pGV3STEEdt1apGS1JNQSSWPaxCA+rAGsqO5ktJFEinHqTWhPaR7SVnbPsc1lutx9zCunQZ4xTsJ6am8L8TRKQwPH5Vn3bZqOCDyOS3UdAeKjupcKfWo5ddB811qZ6Lv1RABnANeg2SbbSJCc7UC59cCuF0eMy3jSc9cV39qm2EZ9K9GnGyOKo7knQ03rT+Caa3ArQgY3OaYc07HHNMIoA3+tOxRzmlB4pFCVTvhmA1bbPaq9yhaIigDh7wfvmrnJydOu9x\\/1chJHtXWahbssrHFctq2Ln93HhthIJB79x+FZzStqXFmha3SuuQfpVkzE9G5rkba9ksm2ODgGti31COTBLD8a4pQs7o6Yz0sbUSl87TUkmnSygAHbmq1rcKD2xWkdUjhiyBuI7VC3NHaxmR6fNEx3uNw7Cop18ur7aqlwSxULnnArPu5VIJ3cU5Eq1iBp9q8mqE91ltq8sxwBVW6vkDlVOQO9Q6dFPqGrRBXEYHOWIAPtW1OGt2YSmdRo0flyKuc+prtIR+6Fczp9m0UwOcg9\\/fuD711CDCCu1HPIUjFMOKUk005JpiGmmGnMKYaQHQjFLxUggPqv50vkN6r+dMoipjYOc06eSK2AMsiqT0UcsfoByfwrKvtQkxJFBb3PQ7pUjLFAOrYHHTJ5PbHGRSbQFfUkV5FghGbiRsLngKO7Z9B6\\/X+6RXH67BFa6hHDHIJG+YswyQegHJ9l\\/nXU+HI4r2a5nuJ5XQLt8iRiHCZ6kNnaoPUg54z3rI8deZDqlrEoVIljOVjGATubGfUgHr71hOXQqO5zk9hFdIdww3ZhWJcWFxavwCV9RXSQt0qd4w68gGuZTcWdPKmccmoXUBwrnHcGpH1q6I6Ct6XSoJSTtGaqP4fiJ6sPxq1OLIcWjJXV7gDBAHPU019UnlQoTgH0rQfQEB4dqlg0eGNgx+Yj1p88RcrMy0sZrhgzAhPX1rt\\/C1jaxuJtpEiTxRs45wrEnpz3T0NZDqEXCjAFafhy6eKcoNxV5EZlzgEg\\/L78c\\/nQpNsmUbI6LxIv9lavDdqpSG6TqSgXzfTnGSR7jk5p8WrW7Qq75XIyQFJx+Qz+OMV0V5ajX9Ga0uUIaeNWhiMb7kfoGLDoPwGBXN6fZMbkK8uyQ5b50ywfJDY5ABG09jxyfStoTaWpk0W0nhnGYpUcf7LA04mpZINL+VZ4xbSbsFlyFAHckdB9T\\/jUcmmXMccb2lxHcQMud7njHruHb04xwckVopoViM0w1TXUSgU3dtLbKxwjuMq3GSc1dTbKgZGVgeRg1VwOja4jWTyly8uM+WnLfj6D3OB705IZLqPcz+XGxwBGecHHVjxyD\\/D3H3qx3J0\\/7Iib4led1cjjaitg\\/1OTz3JJp013ZQsbe7m\\/eI7lDPK0hKlsgEZbbwB+XfOKycn0KLc1nHbuZIlMUu7DPHw0gHAzknPPr145FUjYG6e1tUXEk5EhLsH8qPrkHHGcZ7ZAXjJNUpNXsWJkuL8OgLbYvljAA46uOcnjHJ2k9DkV0HhQz3U9zd3I3TXB3eYVZP3fUYDAnBIwCTyF46VDYDNSsY9yi3keCW0CiCRhlo\\/TcTnch555289RuC8J4mmN9PbOYhG0cZjkRRgI4dsjHbHH4Yr1XWI0FvgBmnIYQgDJ7ZBz1TpnPHQ8EKR5hrPmT6k3mspZQ5lHzZQqUTknqeVHvgHvWbd0VHRnPxZQ7T2q7G2RTZIMEHFKFZMEdK53qdUR7IKaUYZwxxU6gEcimsvoaVyrFV4znk0xlCirZjyailQ9hSuKxTMe881raBYTNdoI5jAZXwsgTfgKV39PZhzx1qskO1dzcVuWTTWGoaSJleGN3eMEJ98SAYz\\/wIJ+Xsa2p3uY1NEdhpnh2wms0uJLZjIg+VmmcMT0ySpx69Aaxtbu10nWVlDiP7SRJsjztEhHP8IDbgAc8fxDqa723VI7ZVBwiKM47AYrh\\/G7zWtr9ntFlmWO3j\\/dxysv8WAcDOSDj889q0g23qYMe9xaapAX8jeDxt2+ZnjuFzxWZYRKiLZRQtE3mKjvbnaFUuOSOhPL81ztprUAERurWW3m\\/5aSFSqqw6bcHOfyAH0FdHEJbiPzop5ZYiQhZGMmRgjlgMcbunPP141QHQ\\/2bZouxY2j6BimBvGAMNgcg45z6\\/TFC90mAGNbVSjBWJaMhSxHQYxt6Z5xnjqKmk1y3EUcnnxs74zFGPMbPdeDgHPHJqG61QeSZksr+Py\\/mLtbjCjuevpnmkmwMLVtVury9RJMbbeEszpeRgk45wcEc8cCl0mytpJebBZvLjVGBvUG5hnLcdcjB4\\/8A1XhpVjNqGpXGyRI0mSEjznx8zhS3X2JroLDTxYWsj29xIjGVlYKq4cqdgJyCeig9e5ptiOZvdFtLnzmWyKRC2lkUKwcgrt4BbqOeo\\/M1P4TvbbQrBoLeAxXM5LsbhxsI5C5I6dDj15yRwR0V7b7LSRhgBbOcf+g\\/4VyPmQ\\/Z4bW+VVjmBe0uSMCJgxDbvXpxnOM9D2l6oZ1MmrW6Q\\/abm5aSFkzuGFeVADkn+4nJ9\\/QD5i3Gaaya9r9zfz2qshUJCijasYGApwOevOAc+lLLZveSvpks6tiTzLm6iJfz2PKIvqPc9T2+UZ6PStM87T02KuzIPGdqkA8Z6sRyM9ugO4MaSVinZGHrWjS2IW6GGtJnIjOckfX1B5IPcdhWYIty4r1WW0i1PSntJV25XaQP4SOhGPoDXnU1q9ncvBKuGRsEVz1FZ3N6MrqzM5YipwaesBParmUYkcHFP2gVkzdFZbbjmmSWwzn0q2WROTURlDrx09qAGWVrvud8jMsUQ8x2UAkAHsD1OcDvyeeM101toIu7GddQhb\\/SEw27OUHVNmeSR1Izzk56AGl4c03+07l3mGLWBwWBBw7DnHpwD+vvXS3hk1KKbG+OCMkGUYDAjjCdgQcgk9OR6kdNNcqOOpK8tDm7DU7ZLaW0voLR7y2Xysi33tKpGBJncCOoB6nntnFRWCLNrF5tintVd4otjQLGjNkE\\/Lk5+4c4bpk8Vj6tfwwX5msLh3vrYl0liZ3U7Tzkv1z97jI575zW1pWpSaxeHUZ5Y4YkkjeGHcDyz7XY9+m76frWqM5WN6LS2W88yXyWLLtbyotgcf7WScn8ax9f0mKBGu7V3glilR5fLRUwjfKQCoBPQdTXTvOomwrFtpAIUbiCfUDpVPW0iurY27hxJKrImVITONwJOMfw1KbAw9O0+4aPYRJGxVZXklVQx3EkElcFvmV8g+taE\\/h+1kiMqRIJNpyqrhGJ77f\\/AK9RadcLcRxToikSuyMyuTukZRJ+SgEfjWs91CkQQTJvzt27hnPpVN6gYelXsct5JdPv8trlnZGXK+WAQTx6GUH8K0W1KG3trKGUSxYiUsgXDg454Pv+f8uUsrG5t9LhEb3cSPbFW2sCD5rNjoR\\/dUdK6+0tLqOFpEimZpDlmLgluwO4MpPHqKpoCS\\/1WOXTZ\\/Lsr0g2snSLkDHXHftXKRXMM+kpFLFfSMtvct5bwp8p3DBxjI65zXVXtpdHSrvzVI3W8pI+1SKRx9WH9PasawtJv7CTZGQDZ3Ryb2Q8ZXPbHXtSENm0RJUkFo0WmMScNPKdzLyCCCelLouvXGk3X9maxNDLagqkV9E4ZIyeAr46A46np345XqrG2nikkzO0TseRGQ35lgcn34\\/GsLxJpizx37SzGRoooiokjVgCzsCcACk7bDOiLNE7yZ27R82emB61zHimJPPju49u+YHeM9APunp14\\/p2pthqc2k2VvYXcfnsYYhaSKPkO7ICsP7wxx68dOpdc2UmZUuJGa6kQLsRuFPBAPvx27DripcbocXZ3OWkzjIB9hUKzE5yT16ippkYj5csSQBg5\\/Kq5iHmj\\/aHT\\/P+etc1jsUiwRuUHOfeoY23ShAVHIHJx\\/nr1prSmNGULu559varmkQb52uChMcJDMBjqTxnIPHueMCnGOopysjr7ea2g0FYkmVMKvmnIV16EnnAHQnJ4BJ5wCKy1Fz4rzbRpcJpEAX5Iysbz4xt+8RhRjjr789Mxx\\/wkN3NFE7IkUTmeSM4WdhgbVA92x1Iwe+SW7+z0+y8hCkQeJkAVZCXAXHQbs4roascZx02lixzbQ3LQNOHgWMqrsAysRkKxJzgDOPeqFlLqcumQxrdxtiGaILJCy5dmUD+Drhs\\/nXc3lnbQEMkGz50AERKAZYAn5SOxrmbLSrZYLq3hiLNDesq7zuGWDIvX\\/ax1zVJ3Qi5ave6hHE0moSszDzDFCqxtj1DHbkfnU19bSNYyss2uIY\\/m3PIpAA5PUjPA9avaZp1utoIniWQRM8SiT5wArFeAc46dquHS7AjH2G2\\/wC\\/S\\/4Urq4WPPLaeeyF5bC1WZrUsynztg2owblQcEtuA78L6its3N7PYPJ9rjEfBEccJaPHH8YBA\\/Oq+p6UltrFoF8kLcIqHaPkMiHaxI44AJPGK19PsIzpz2\\/mSuVygOSgOANpIHByu05PrVO24EdvaWiva20toiyyJAgdVGQ8YMh5\\/ED8a6wYUADt2oookCM7WWIWVRnmwuTgf8ArK01g2gxq33hZXXH\\/AANf8KKKOgHRxj\\/ST2+YVna7Zmaz1FlOD5KE\\/RWLf40UVK3GZVylpf6MYZEEiNZRHnuY1lY\\/quKbLDPaXAs7icEjLWsrLgzc5ZXP94cc985OTRRQwMHUsLfyMOjHeD9ef5\\/496oIpbLg7mIOGHQfhmiisZLU6YO6GSwmMkhRyvOD19\\/5Vc0+3kljg0+EMst2\\/wAr\\/wAIUKct+Azgep68YJRThuRUehseFLCKC0gJfZGtyyHI6AIsmT+MQ\\/Out0oj+y7MAjBgjYf98iiitWjEfqMnkwM67TKilkRjjcQOB+eK5lJRBf6qsaq2Cl2ST12MHI\\/HJoooitANWwnt7WS4tZbuHekuMFwCSVUk9e7Fq0JJ4osM0qKPUsBRRSA5XxLcWT6UVhkhZre73Elx0YFj36EsBWhps6XVyzeasgmiVwUGF3D5Wx+Hl\\/nRRT6Af\\/\\/Z\",\"has_image\":true,\"email_hash\":\"\",\"mobile_hash\":\"de3a5558a8b816e67887052aa5dfb883193b340f5222cd71810095f60c19637c\",\"raw_xml\":\"https:\\/\\/aadhaar-kyc-docs.s3.amazonaws.com\\/nerasoft\\/aadhaar_xml\\/943520241114161254745\\/943520241114161254745-2024-11-14-104254950715.xml?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAY5K3QRM5FYWPQJEB%2F20241114%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20241114T104255Z&X-Amz-Expires=432000&X-Amz-SignedHeaders=host&X-Amz-Signature=a7910666e2761ce5400b27a51b4556740ad2de763c940f227df20e25a5bd7ea5\",\"zip_data\":\"https:\\/\\/aadhaar-kyc-docs.s3.amazonaws.com\\/nerasoft\\/aadhaar_xml\\/943520241114161254745\\/943520241114161254745-2024-11-14-104254822560.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAY5K3QRM5FYWPQJEB%2F20241114%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20241114T104255Z&X-Amz-Expires=432000&X-Amz-SignedHeaders=host&X-Amz-Signature=d28082b4faffe88c5c2bc742873911f781d985adc0f78519942b0a6c4bad3d60\",\"care_of\":\"S\\/O: Ajit Singh\",\"share_code\":\"0882\",\"mobile_verified\":false,\"reference_id\":\"943520241114161254745\",\"aadhaar_pdf\":null,\"status\":\"success_aadhaar\",\"uniqueness_id\":\"ee58f364088d59d449330c7d622e51faf1ea83f3a7f98083de87d19613295f5c\"},\"timestamp\":\"2024-11-14T10:42:58.101090Z\",\"environment\":\"production\"}', NULL, '2024-11-14 10:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `loan_request_id` int NOT NULL COMMENT 'loan_request.id',
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kyc_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending,2-InProgress,3-Completed,4-Approved,5-Rejected',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Deactive,3-delete,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_leads`
--

CREATE TABLE `kyc_leads` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_request_id` int NOT NULL COMMENT 'loan_requests.id',
  `user_id` int DEFAULT NULL COMMENT 'user.id',
  `route_id` int DEFAULT NULL COMMENT 'routes.id',
  `agent_id` int DEFAULT NULL COMMENT 'users.id',
  `file_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `son_of` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `shop_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_address` text COLLATE utf8mb4_unicode_ci,
  `home_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_1_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_1_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_1_relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_2_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_2_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_2_relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_fees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_docs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_docs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elec_bill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gurn_docs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_verify` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc_vehicle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-pending,2-submitd,3-approved,4-rejected',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted,4-Permanent deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kyc_leads`
--

INSERT INTO `kyc_leads` (`id`, `loan_request_id`, `user_id`, `route_id`, `agent_id`, `file_no`, `customer_name`, `son_of`, `type_of_work`, `shop_address`, `shop_type`, `home_address`, `home_type`, `material_status`, `mobile_no`, `sms_no`, `reference_1_name`, `reference_1_mobile`, `reference_1_relation`, `reference_2_name`, `reference_2_mobile`, `reference_2_relation`, `loan_amount`, `processing_fees`, `emi`, `cheque`, `aadhar_docs`, `pan_docs`, `aadhar_no`, `pan_no`, `elec_bill`, `photo`, `business_pic`, `gurn_docs`, `side_verify`, `rc_vehicle`, `remark`, `kyc_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2024-10-29 07:57:42', '2024-10-29 07:57:42'),
(2, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-12-10 12:41:10', '2024-12-10 12:41:10'),
(3, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-12-10 12:41:13', '2024-12-10 12:41:13'),
(4, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-12-10 12:41:50', '2024-12-10 12:41:50'),
(5, 1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-12-10 12:45:46', '2024-12-10 12:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `kyc_leads_guarantor`
--

CREATE TABLE `kyc_leads_guarantor` (
  `id` int NOT NULL,
  `kyc_id` int NOT NULL COMMENT 'kyc_leads.id',
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `son_of` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `shop_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `shop_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile_no_1` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile_no_2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `home_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `land_load` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_processes`
--

CREATE TABLE `kyc_processes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_address` text COLLATE utf8mb4_unicode_ci,
  `aadhar_profile_photo` text COLLATE utf8mb4_unicode_ci,
  `aadhar_mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_aadhar_verified` tinyint NOT NULL DEFAULT '2' COMMENT '	1-Verified,2-Non verified',
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_pan_verified` tinyint NOT NULL DEFAULT '2' COMMENT 'is_pan_verified',
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_bank_verified` tinyint NOT NULL DEFAULT '2' COMMENT '1-Verified,2-Non verified	',
  `live_photo` varchar(555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-submitted,2-pending,3-approved,4-rejected',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kyc_processes`
--

INSERT INTO `kyc_processes` (`id`, `user_id`, `aadhar_no`, `aadhar_name`, `aadhar_father_name`, `aadhar_dob`, `aadhar_zipcode`, `aadhar_country`, `aadhar_state`, `aadhar_city`, `aadhar_address`, `aadhar_profile_photo`, `aadhar_mobile_no`, `is_aadhar_verified`, `pan_no`, `pan_name`, `is_pan_verified`, `ifsc_code`, `account_no`, `bank_name`, `account_holder_name`, `is_bank_verified`, `live_photo`, `live_video`, `kyc_status`, `created_at`, `updated_at`) VALUES
(6, 19, '123456789012', 'John Does', 'Father Name', '1990-01-01', '110001', 'India', 'Delhi', 'New Delhi', '123, Street Name, Locality', NULL, '9876543210', 1, 'ABCDE1234F', 'John Doe', 1, 'SBIN0000001', '1234567890', 'State Bank of India', 'John Doe', 1, NULL, NULL, 1, '2024-11-14 12:01:02', '2024-11-14 12:01:02'),
(7, 20, '123456789012', 'John Does', 'Father Name', '1990-01-01', '110001', 'India', 'Delhi', 'New Delhi', '123, Street Name, Locality', NULL, '9876543210', 1, 'ABCDE1234F', 'John Doe', 1, 'SBIN0000001', '1234567890', 'State Bank of India', 'John Doe', 1, 'kyc/2wiejTJAqDCjVgS330WRUMc2rtH0LXlHyk1ayElw.png', NULL, 1, '2024-11-14 12:07:37', '2024-11-14 12:18:49'),
(8, 1, '123456789012', 'John Does', 'Father Name', '1990-01-01', '110001', 'India', 'Delhi', 'New Delhi', '123, Street Name, Locality', NULL, '9876543210', 1, 'ABCDE1234F', 'John Doe', 1, 'SBIN0000001', '1234567890', 'State Bank of India', 'John Doe', 1, NULL, NULL, 1, '2024-11-20 13:06:09', '2024-11-20 13:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `kyc_reject_reasons`
--

CREATE TABLE `kyc_reject_reasons` (
  `id` int NOT NULL,
  `kyc_id` int NOT NULL COMMENT 'kyc_leads.id',
  `reason` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint UNSIGNED NOT NULL,
  `kyc_id` int NOT NULL COMMENT 'kyc_leads.id',
  `user_id` int DEFAULT NULL COMMENT 'users.id',
  `route_id` int DEFAULT NULL COMMENT 'route.id',
  `loan_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_of_interest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency` tinyint NOT NULL DEFAULT '3' COMMENT '1-Day,2-Weekly,3-Monthly,4-Yearly',
  `tenure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `process_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_charges_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_charges_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_charges_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_charges_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_charges_5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disbrused_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emi_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending,2-Approvad but not disbursed,3-Disbursed,4-Reject,5-Closed',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `kyc_id`, `user_id`, `route_id`, `loan_number`, `amount`, `rate_of_interest`, `frequency`, `tenure`, `process_charge`, `file_charge`, `other_charges_1`, `other_charges_2`, `other_charges_3`, `other_charges_4`, `other_charges_5`, `disbrused_amount`, `emi_amount`, `loan_start_date`, `pending_amount`, `loan_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '264784850942', '50000', '10', 1, '10', '10', '10', '10', '10', '10', '10', '10', '49940', '5,007.54', '2024-10-14', '50,075.40', 3, 1, '2024-10-14 05:17:35', '2024-10-14 05:17:35'),
(2, 1, 4, 1, '26771052699', '150000', '10', 2, '15', '5000', '1500', '2500', '3500', '1000', '500', '1500', '139500', '10,154.54', '2024-10-18', '152,318.10', 3, 1, '2024-10-15 12:12:07', '2024-10-15 12:12:07'),
(3, 7, 4, 7, '834722863097', '150000', '12', 3, '12', '1000', '100', '100', '100', '100', '100', '100', '149400', '13,327.32', '2024-09-01', '159,927.84', 3, 1, '2024-10-21 10:24:05', '2024-10-21 10:24:05'),
(4, 11, 4, 7, '7139577873', '150000', '12', 3, '12', '200', '200', '200', '200', '200', '200', '200', '148800', '13,327.32', '2024-11-01', '159,927.84', 3, 1, '2024-10-22 06:22:01', '2024-10-22 06:22:01'),
(5, 12, 4, 7, '290078504746', '150000', '12', 3, '12', '200', '200', '200', '200', '200', '200', '200', '148800', '13,327.32', '2024-10-22', '159,927.84', 2, 1, '2024-10-22 06:44:24', '2024-10-22 06:44:24'),
(6, 17, 2, 7, '552379870866', '100000', '12', 3, '12', '100', '100', '100', '100', '100', '100', '100', '99400', '8,884.88', '2024-11-01', '106,618.56', 2, 1, '2024-10-23 11:29:50', '2024-10-23 11:29:50'),
(7, 13, 4, 7, '899065274580', '150000', '12', 3, '12', '100', '100', '100', '100', '100', '100', '100', '149400', '13,327.32', '2024-11-01', '159,927.84', 2, 1, '2024-10-23 13:21:46', '2024-10-23 13:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `loan_disbursements`
--

CREATE TABLE `loan_disbursements` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_id` int NOT NULL,
  `disbursement_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disbursement_mode` int NOT NULL COMMENT 'payment_modes.id',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disbursement_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disbrused_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending,2-Success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_disbursements`
--

INSERT INTO `loan_disbursements` (`id`, `loan_id`, `disbursement_amount`, `disbursement_mode`, `image`, `disbursement_date`, `remark`, `loan_number`, `reference_no`, `created_at`, `updated_at`, `disbrused_status`) VALUES
(2, 1, '139500', 1, '1728999785_1727348006_offline.jpg', '2024-10-15', 'business loan', '26771052699', NULL, '2024-10-15 13:11:46', '2024-10-15 14:00:01', 2),
(3, 2, '139500', 1, '1729056413_1727348006_offline.jpg', '2024-10-15', 'business loan', '26771052699', NULL, '2024-10-16 05:17:00', '2024-10-16 05:26:53', 2),
(4, 3, '149400', 1, '1729507105_12lDIFbQTiiEFj_KlUvRNg.jpeg', '2024-10-21', 'business loan', '834722863097', NULL, '2024-10-21 10:33:24', '2024-10-21 10:38:29', 2),
(5, 4, '149400', 1, '1729578346_app.jpg', '2024-10-22', 'business loan', '834722863097', NULL, '2024-10-22 06:24:47', '2024-10-22 06:31:54', 2);

-- --------------------------------------------------------

--
-- Table structure for table `loan_requests`
--

CREATE TABLE `loan_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'user.id',
  `service_no` int DEFAULT NULL COMMENT 'providers.route	',
  `lead_create_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_address` text COLLATE utf8mb4_unicode_ci,
  `cheque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_thiya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_address` text COLLATE utf8mb4_unicode_ci,
  `file_hai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plus_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_loan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ser_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rn_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountant_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guarantor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guarantor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_of_loan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referal_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-pending,2-viewed,3-Under Discussion,4-pending for kyc,5-qualified,6-rejected',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted,4-Permanent deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_requests`
--

INSERT INTO `loan_requests` (`id`, `user_id`, `service_no`, `lead_create_date`, `name`, `work`, `mobile`, `work_address`, `cheque`, `shop_thiya`, `home_type`, `home_address`, `file_hai`, `loan_amount`, `tut`, `balance`, `plus_day`, `old_loan`, `loan_type`, `file_no`, `ser_no`, `rn_no`, `amount`, `accountant_sign`, `guarantor`, `guarantor_name`, `address`, `zip_code`, `reason_of_loan`, `referal_name`, `referal_mobile`, `token`, `remark`, `loan_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2024-10-29', 'Ayush Gupta', 'test', '7428059960', '9/10 Shyam Nagar  Ambala Cantt', 'Y', 'RENTED', 'OWN', 'Mohali Punjab', 'Y', '50000', '1200', '1400', '120', '500', 'New', '120', '121', '122', '5410', '123456789', 'N', 'Amit', NULL, NULL, NULL, NULL, NULL, NULL, 'first lead', 3, 1, '2024-10-28 06:06:21', '2024-12-10 07:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` bigint UNSIGNED NOT NULL,
  `receiver_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `is_read`, `created_at`, `updated_at`, `status`) VALUES
(3, 4, 5, 'Hi', 1, '2024-11-25 06:05:59', '2024-11-25 06:10:54', 1),
(4, 5, 4, 'Hello', 1, '2024-11-25 06:06:13', '2024-11-25 06:09:40', 1),
(5, 4, 5, 'Hello Hy', 1, '2024-11-25 06:06:23', '2024-11-25 06:10:54', 1),
(6, 5, 4, 'Hello By', 1, '2024-11-25 06:06:30', '2024-11-25 06:09:40', 1);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_10_01_093153_create_role_models_table', 1),
(7, '2024_10_01_093231_create_roles_table', 1),
(8, '2024_10_03_174248_create_loan_requests_table', 2),
(9, '2024_10_07_170956_create_loans_table', 3),
(10, '2024_10_15_133013_create_payment_modes_table', 4),
(11, '2024_10_15_145619_create_banks_table', 5),
(12, '2024_11_13_134153_create_refers_table', 6),
(13, '2024_11_25_110246_create_messages_table', 7),
(14, '2024_11_27_124436_create_categories_modals_table', 8),
(15, '2024_11_27_131734_create_testimonals_table', 9),
(16, '2024_11_27_132653_create_blogs_table', 10),
(17, '2024_11_27_155622_create_banners_table', 11),
(18, '2024_11_27_160527_create_enquiries_table', 12),
(19, '2024_11_29_152408_create_properties_table', 13),
(20, '2024_11_29_165249_create_facilities_table', 14),
(21, '2024_11_29_165929_create_property_reviews_table', 15),
(22, '2024_12_02_115637_create_seos_table', 16),
(23, '2024_12_02_131916_create_gallaries_table', 17),
(24, '2024_12_02_133920_create_pages_table', 18),
(25, '2024_12_18_184801_create_pincodes_table', 19),
(26, '2024_12_18_185243_create_bookings_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int NOT NULL,
  `loan_request_id` int NOT NULL COMMENT 'loan_requests.id',
  `provider_id` int DEFAULT NULL,
  `user_id` int NOT NULL COMMENT 'users.id\r\n',
  `loan_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Initial Stage , 2-Team Call , 3-Call Dissconected, 4-Ringing , 5-Pipeline , 6-Visit align , 7-Conversion , 8-rejected , 9-assign lead',
  `title` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `loan_request_id`, `provider_id`, `user_id`, `loan_status`, `title`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, NULL, 1, 1, 'Initial Stage', '2024-12-10 12:34:28', '2024-12-10 12:34:28', 1),
(2, 1, NULL, 1, 9, 'Lead Assign To first', '2024-12-10 12:38:06', '2024-12-10 12:38:06', 1),
(3, 1, NULL, 1, 5, 'sdfasddf', '2024-12-10 12:38:37', '2024-12-10 12:38:37', 1),
(4, 1, NULL, 30, 5, 'sdfsdf', '2024-12-10 12:38:59', '2024-12-10 12:38:59', 1),
(5, 1, NULL, 30, 5, 'asdfsadf', '2024-12-10 12:39:09', '2024-12-10 12:39:09', 1),
(6, 1, NULL, 30, 5, 'asdfasdf', '2024-12-10 12:39:25', '2024-12-10 12:39:25', 1),
(7, 1, NULL, 30, 5, 'sdfsdf', '2024-12-10 12:39:59', '2024-12-10 12:39:59', 1),
(8, 1, NULL, 30, 5, 'asfdasdf', '2024-12-10 12:41:10', '2024-12-10 12:41:10', 1),
(9, 1, NULL, 30, 5, 'asdfasdf', '2024-12-10 12:41:13', '2024-12-10 12:41:13', 1),
(10, 1, NULL, 30, 5, 'sdfsdfdsf', '2024-12-10 12:41:50', '2024-12-10 12:41:50', 1),
(11, 1, NULL, 30, 9, 'Lead Assign To second', '2024-12-10 12:41:56', '2024-12-10 12:41:56', 1),
(12, 1, NULL, 31, 5, 'ss', '2024-12-10 12:45:46', '2024-12-10 12:45:46', 1),
(13, 1, NULL, 1, 4, 'gdsdf', '2024-12-11 06:24:11', '2024-12-11 06:24:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_charge` int NOT NULL,
  `large_charge` int NOT NULL,
  `gaint_charge` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `small_charge`, `large_charge`, `gaint_charge`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Package 1', 100, 200, 200, 1, '2024-11-11 07:37:20', '2024-11-13 06:51:22'),
(4, 'Package 2', 50000, 0, 0, 1, '2024-11-11 07:44:22', '2024-11-11 07:46:01'),
(5, 'test', 11111111, 0, 0, 3, '2024-11-11 12:31:09', '2024-11-11 12:31:30'),
(6, 'Package 3', 1000, 20000, 30000, 1, '2024-11-13 06:51:33', '2024-11-13 06:51:33'),
(7, 'xxx', 100, 200, 300, 1, '2024-11-29 05:59:28', '2024-11-29 05:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `title`, `paragraph`, `image`, `created_at`, `updated_at`) VALUES
(1, 'privacy_policy', 'Privacy Policy', '<p>At&nbsp;<strong>Power Delivery</strong>, your privacy is our priority. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application and services. Please read this policy carefully to understand what personal data we collect and how we handle it.</p>\r\n\r\n<p>1. Service Cancellation Policy</p>\r\n\r\n<p>If applicable, www.nerasoft.in allows cancellations if the service has not started, for a full refund minus any payment processing fees.</p>\r\n\r\n<p>2. Cancellation &amp; Refunds Policy</p>\r\n\r\n<p>Services purchased through www.nerasoft.in are on-demand. www.nerasoft.in regrets that it cannot cancel orders, accept returns, or provide refunds on these services as they are on-demand. www.nerasoft.in accepts no responsibility for the quality of the content (including misspelled words, grammatical errors, etc.), its design, or its overall appearance. Our publishing platform is open to everyone and the authors decide the content and design quality. Our staff does not monitor or check individual content before publication through our website.</p>\r\n\r\n<p>www.nerasoft.in will provide a replacement copy if you receive a product with a production defect (missing pages, torn corners, etc.). Please send an e-mail to info@nerasoft.in mentioning your order number and the defect found in your purchase.</p>\r\n\r\n<p>3. Cancellation of Services:</p>\r\n\r\n<p>Clients have the right to cancel services at any time before the commencement of the website design or development process. To cancel services, clients must notify us in writing via email or through our designated cancellation request form on our website. If project terminates due to third party factors, no refund will be issued.</p>\r\n\r\n<p>4. Refund Eligibility:</p>\r\n\r\n<p>Full or partial refunds may be available before the design completed. If the cancellation request is made before any work has commenced, a full refund will be provided. If work has begun but is not completed, No refund will be issued.</p>\r\n\r\n<p>5. Non-Refundable Items:</p>\r\n\r\n<p>Any third-party costs incurred by Nerasoft during the project (e.g., domain purchases, stock imagery licenses) are non-refundable. Services that have been completed and delivered to the client as per the agreed-upon terms are not eligible for refunds.</p>\r\n\r\n<p>6. Refund Process:</p>\r\n\r\n<p>Upon receiving a valid cancellation request, we will review the request and communicate the refund amount, if applicable, within said days. Refunds will be processed using the original method of payment unless otherwise agreed upon.</p>\r\n\r\n<p>7. Delays in Services</p>\r\n\r\n<p>Neither www.nerasoft.in (including its and their Directors, employees, affiliates, agents, representatives, or subcontractors) shall be liable for any loss or liability resulting directly or indirectly from delays or interruptions due to electronic or mechanical equipment failures, telephone interconnect problems, weather, strikes, defects, acts of God, riots, armed conflicts, walkouts, fire, acts of war, or other like causes. www.nerasoft.in shall have no responsibility to provide you access to www.nerasoft.in during the interruption of www.nerasoft.in due to any such cause shall continue.</p>\r\n\r\n<p>8. Exceptions:</p>\r\n\r\n<p>Nerasoft reserves the right to make exceptions to this policy in exceptional circumstances, such as force majeure events or extenuating circumstances beyond the control of the client or our company.</p>\r\n\r\n<p>9. Communication:</p>\r\n\r\n<p>Clients are encouraged to communicate any concerns or issues regarding services and potential cancellations directly with our customer service team for clarification and resolution.</p>\r\n\r\n<p>10 . Changes to Policy:</p>\r\n\r\n<p>Nerasoft Private Limited reserves the right to update or modify this policy at any time without prior notice. Any changes will be effective immediately upon posting on our website.</p>\r\n\r\n<p>11. Jurisdiction</p>\r\n\r\n<p>The terms of this agreement are exclusively based on and subject to Indian law. You hereby consent to the exclusive jurisdiction and venue of courts in Delhi, India, in all disputes arising out of or relating to the use of this www.nerasoft.in. Use of www.nerasoft.in is unauthorized in any jurisdiction that does not affect all provisions of these terms and conditions, including without limitation this paragraph.</p>\r\n\r\n<p>Contact Us:</p>\r\n\r\n<p>For any inquiries, cancellation requests, or clarification regarding our cancellation and refund policy, please contact our customer service team at info@nerasoft.com. By engaging our services, clients acknowledge and agree to abide by this cancellation and refund policy.</p>', 'pages/3vIsC65kBk1Ubbh3NSHcBkIDzZjY5a7dvuq6SfX6.png', '2024-12-02 08:24:31', '2025-06-16 10:08:45');

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_modes`
--

CREATE TABLE `payment_modes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Deactive,3-delete,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_modes`
--

INSERT INTO `payment_modes` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 1, '2024-10-15 08:17:17', '2024-10-15 08:17:17'),
(2, 'UPI', 1, '2024-10-15 08:17:56', '2024-10-15 08:17:56'),
(3, 'Bank Transfer', 1, '2024-10-15 08:18:22', '2024-10-15 08:18:22'),
(4, 'Cheque', 1, '2024-10-15 08:18:31', '2024-10-15 12:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `per_cate_id` int NOT NULL COMMENT 'permission_category.id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `per_cate_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Create Listing', 1, '2024-12-04 11:37:29', '2024-12-06 08:05:04'),
(2, 1, 'Update Listing', 1, '2024-12-04 11:38:06', '2024-12-06 08:05:10'),
(3, 1, 'View Listing', 1, '2024-12-04 11:38:11', '2024-12-06 08:05:26'),
(4, 1, 'Approved Listing', 1, '2024-12-04 11:38:21', '2024-12-06 08:05:32'),
(5, 1, 'Deleted Listing', 1, '2024-12-06 08:00:16', '2024-12-06 08:05:39'),
(6, 2, 'Self Registration', 1, '2024-12-09 13:34:17', '2024-12-09 13:34:17'),
(7, 2, 'Property Listing', 1, '2024-12-09 13:34:24', '2024-12-09 13:34:24'),
(8, 2, 'View Properties', 1, '2024-12-09 13:34:32', '2024-12-09 13:34:32'),
(9, 2, 'Login Enable', 1, '2024-12-09 13:35:02', '2024-12-09 13:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `permission_category`
--

CREATE TABLE `permission_category` (
  `id` int NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permission_category`
--

INSERT INTO `permission_category` (`id`, `category_name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Property Listing', '2024-12-04 11:36:04', '2024-12-06 07:26:56', 1),
(2, 'Seller', '2024-12-09 13:34:06', '2024-12-09 13:34:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `pet_category`
--

CREATE TABLE `pet_category` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'users.id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pet_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pet_bred` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pet_category`
--

INSERT INTO `pet_category` (`id`, `user_id`, `title`, `image`, `pet_size`, `pet_bred`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dogs', 'pet_category/z0mWcpbhoCMacGbHUN9G5v5gCxh6ZrZFSUe9mvss.jpg', NULL, NULL, 1, '2024-11-11 06:35:24', '2024-11-11 06:41:14'),
(2, NULL, 'Birds', 'pet_category/dOKkP6VYB81HUk5Dgl1xzwG8ORMsFLZzMXXEbZ5s.jpg', NULL, NULL, 1, '2024-11-11 06:41:31', '2024-11-11 06:41:31'),
(3, NULL, 'Rabbit', 'pet_category/S9bYjljKopPPHyokmGD4kxuTWOFEbeuXOTaFafTT.jpg', NULL, NULL, 2, '2024-11-11 06:42:08', '2024-11-30 07:34:15'),
(4, NULL, 'Cats', 'pet_category/XZwJH4VVef6tUNk9CQd7I80h0NOqKYWgd7f6JmVa.jpg', NULL, NULL, 3, '2024-11-11 06:43:49', '2024-11-21 06:28:35'),
(5, 1, 'lsdfsf\nsssssssss', 'pet_category/s3lUip3FMegai8EDebLi4HJV6nbaZDHO46L62lOn.jpg', 'asdfasdf', 'asfdasfsdf', 3, '2024-11-20 11:16:33', '2024-11-21 06:28:23'),
(6, 1, 'Dogs', 'pet_category/wPjc2iMPzxo9G84DERbfyF7HmBGr35yqdsQhECec.jpg', 'XD', 'SMALL', 1, '2024-11-20 11:18:03', '2024-11-20 12:07:32'),
(7, 1, 'Dogs', 'pet_category/ItbmkF0ha1o1JaZEewMeKb9dRZ0Y7eaHjGnalGg8.jpg', 'XD', 'SMALL', 1, '2024-11-21 06:15:58', '2024-11-21 06:15:58'),
(8, 1, 'Dogss', 'pet_category/7MrSFpM8QJauabEIBncPVU4gv4SxJs8BE0sjl8lW.jpg', 'XD', 'SMALL', 1, '2024-11-21 06:16:31', '2024-11-25 05:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `pincodes`
--

CREATE TABLE `pincodes` (
  `id` bigint UNSIGNED NOT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pincodes`
--

INSERT INTO `pincodes` (`id`, `pin_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '201304', 1, '2024-12-18 13:19:57', '2025-06-14 04:58:38'),
(2, '201305', 1, '2024-12-18 13:20:45', '2025-06-14 04:58:23'),
(3, '110001', 1, '2024-12-18 13:22:06', '2025-06-14 04:58:24'),
(4, '110002', 1, '2024-12-18 13:22:06', '2025-06-14 04:58:25'),
(5, '110003', 1, '2024-12-18 13:22:06', '2025-06-14 04:58:26'),
(6, '201301', 1, '2024-12-18 13:22:06', '2025-06-14 04:58:27'),
(7, '201305', 1, '2024-12-18 13:22:06', '2025-06-14 04:58:28'),
(8, '400001', 1, '2024-12-18 13:22:06', '2025-06-14 04:58:30'),
(9, '400002', 1, '2024-12-18 13:22:06', '2025-06-14 04:58:31'),
(10, '500001', 1, '2024-12-18 13:22:06', '2025-06-14 04:58:33'),
(11, '600001', 1, '2024-12-18 13:22:06', '2025-06-14 04:58:33'),
(12, '700000', 3, '2024-12-18 13:22:06', '2024-12-19 07:33:05'),
(13, '700000', 1, '2024-12-19 07:33:06', '2025-06-14 04:58:03'),
(14, '110093', 1, '2024-12-19 07:35:09', '2025-06-14 04:58:04'),
(15, '203207', 1, '2024-12-20 11:56:11', '2025-06-14 04:58:05'),
(16, '201313', 1, '2024-12-20 11:56:23', '2025-06-14 04:58:07'),
(17, '203202', 1, '2024-12-20 11:56:29', '2025-06-14 04:58:08'),
(18, '203203', 1, '2024-12-20 11:56:38', '2025-06-14 04:58:10'),
(19, '110095', 1, '2024-12-20 12:20:27', '2025-06-14 04:58:12'),
(20, '110083', 1, '2024-12-26 14:46:21', '2025-06-14 04:58:15'),
(21, '122001', 1, '2025-01-16 06:53:41', '2025-06-14 04:58:16'),
(22, '122000', 1, '2025-01-16 06:53:45', '2025-06-14 04:58:18'),
(23, '122003', 2, '2025-01-16 06:53:50', '2025-06-14 05:00:32'),
(24, '121006', 2, '2025-01-16 06:53:56', '2025-06-14 05:00:53'),
(25, '121007', 2, '2025-01-16 06:54:00', '2025-06-14 05:00:09'),
(26, '121001', 2, '2025-01-16 07:14:44', '2025-06-14 05:00:23'),
(27, '121002', 2, '2025-01-16 07:14:48', '2025-06-14 04:59:58'),
(28, '121003', 2, '2025-01-16 07:14:51', '2025-06-14 04:58:57'),
(29, '121004', 2, '2025-01-16 07:14:55', '2025-06-14 04:59:46'),
(30, '121005', 2, '2025-01-16 07:14:59', '2025-06-14 04:59:28'),
(31, '121008', 2, '2025-01-27 07:05:54', '2025-01-27 07:05:54'),
(32, '122022', 2, '2025-04-22 05:39:17', '2025-06-14 04:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `properties_images`
--

CREATE TABLE `properties_images` (
  `id` int NOT NULL,
  `property_id` int NOT NULL COMMENT 'properties.id',
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties_images`
--

INSERT INTO `properties_images` (`id`, `property_id`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'hotel_images/GEim25wVx0ybwEHgEn2tiWtOuuzbOfXPyMO8pm79.png', '2024-12-04 09:59:35', '2024-12-04 09:59:35', 1),
(2, 1, 'hotel_images/qSOQZ081Cw222W8hmnf8SsRo61U9YthrZ00w9mKo.png', '2024-12-04 09:59:35', '2024-12-04 09:59:35', 1),
(3, 1, 'hotel_images/pGSOBnkMqVMKsvLaWvToe25SZPgm2IJHiPSSmNBk.png', '2024-12-04 09:59:35', '2024-12-04 09:59:35', 1),
(4, 2, 'hotel_images/QsLmaAK2Xe6kkt6ywKNlZbxFYGQk0Ttis3IYKyw7.png', '2024-12-04 10:14:03', '2024-12-04 10:14:03', 1),
(5, 2, 'hotel_images/tFhfXkRlJxmPKN9ZH8CxFuVAcv3BOuSceOz9VFuU.jpg', '2024-12-04 10:14:03', '2024-12-04 10:14:03', 1),
(6, 2, 'hotel_images/1IskOHfDKFqiceJFKhiEPIWZvPIw9ntYm8TSP8iC.jpg', '2024-12-04 10:14:03', '2024-12-04 10:14:03', 1),
(7, 3, 'hotel_images/Yal1QNaegr5oqvmJmY7fH2VxlWPje5DkytNJ4pxA.jpg', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(8, 3, 'hotel_images/zGbOGRud2TXzycDiNrQsLJSmb4UH0bP48f62OS4p.jpg', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(9, 4, 'hotel_images/KvME3nL4AyKmWhjMdsxkOeRu0LSZ0P31V4Q13thq.jpg', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(10, 4, 'hotel_images/WB2N7SPpgE56HMw8mS1AhC9XgP1UZyIeFxx5tSX9.jpg', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(11, 5, 'hotel_images/NRGwoWQrhuDRL8IKZqrOTyL1sI4p267eM2f9s05c.jpg', '2024-12-04 10:41:34', '2024-12-04 10:41:34', 1),
(12, 5, 'hotel_images/YdNFjErD97LKvuOYTpSe8XBD2YYCdlqRp0Y8TWC4.jpg', '2024-12-04 10:41:34', '2024-12-04 10:41:34', 1),
(13, 6, 'hotel_images/9TNqX3S90hakWZ4xxwSHEyLhf18HOCgXMgdgfEkC.jpg', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(14, 6, 'hotel_images/Ld14njAWvnLfR7IYAy49fhB11JJakcW1kmNOWofg.jpg', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(15, 7, 'hotel_images/4VNsBbv7eskq1jTcl0NL8WkOCkdd0Rpenv6O6YfM.jpg', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(16, 7, 'hotel_images/IvLakucE6DTT7HyL0dThY8ikXi9kEVq4C5I2moTd.jpg', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(17, 8, 'hotel_images/6lyheDReNAEBUSCjehD5qtQycVZtmJOnlEsRdN2D.jpg', '2024-12-04 10:53:22', '2024-12-04 10:53:22', 1),
(18, 8, 'hotel_images/USNOvtGL23QYbsCW5Bhh1GAi8AQnEGLAK8p3C0YQ.jpg', '2024-12-04 10:53:22', '2024-12-04 10:53:22', 1),
(19, 9, 'hotel_images/tqY4emQiYSILgSKd1gzv0q3kYZd0DXOtQEDMjq7w.jpg', '2024-12-04 10:55:47', '2024-12-04 10:55:47', 1),
(20, 9, 'hotel_images/NlvdbyOAYm5UOe3Q80rokR3WIaDh9fDlrRSTDnth.jpg', '2024-12-04 10:55:47', '2024-12-04 10:55:47', 1),
(21, 10, 'hotel_images/CTNByJR1RTS1ddR4TS7pDZZdjQOYEW7hmtHQQzYA.jpg', '2024-12-04 11:01:22', '2024-12-04 11:01:22', 1),
(22, 10, 'hotel_images/dCxllJUk7i9UeYC9m7KeCUVnqKICjNVut18yiVec.jpg', '2024-12-04 11:01:22', '2024-12-04 11:01:22', 1),
(23, 11, 'hotel_images/lwgmcOZDEEQCHzFtwFj3YmOZDEGtPQcf7q90drYT.jpg', '2024-12-04 11:04:27', '2024-12-04 11:04:27', 1),
(24, 11, 'hotel_images/FyDpGEnW3nyWQxoeeqtnJ47mFbjJbkL6Shdz19ln.jpg', '2024-12-04 11:04:27', '2024-12-04 11:04:27', 1),
(25, 12, 'hotel_images/P4Ak8YLsJbfLARg1dK8Jc6WFX3cyz6ytwYAf4GL7.jpg', '2024-12-04 11:07:39', '2024-12-04 11:07:39', 1),
(26, 12, 'hotel_images/7ZKrM51CCJIFQ7cvf1WO6EFmewFkBFNYS0yGcWD4.jpg', '2024-12-04 11:07:39', '2024-12-04 11:07:39', 1),
(27, 13, 'hotel_images/Mv6tb5z2n0g4djyUpJTSyLXepaFCMYVXmfIOH5od.jpg', '2024-12-04 11:22:32', '2024-12-04 11:22:32', 1),
(28, 13, 'hotel_images/uoEJarFoeBYQWUwMVYQRZHz9t45qo4jZiAQpqpxa.jpg', '2024-12-04 11:22:32', '2024-12-04 11:22:32', 1),
(29, 14, 'hotel_images/vPATgJheUN7048B4P7iRX2Rj3Ex9LGMbLKlk4x3o.jpg', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(30, 14, 'hotel_images/DWpu3PqXRE455TbQbMF6EmISQvlE93llTo2kkcLN.jpg', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(31, 15, 'hotel_images/QVl7GAT9Ihkc0QBUAWVqhy5aiVrGqB5mZ2PgIyei.jpg', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(32, 15, 'hotel_images/uwt9mabKkheKaCsvPuTYhDZNO8WEZRlq8etoPPH3.jpg', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(33, 16, 'hotel_images/VihC2aA3o7yPxSdTHleTrz7mXjg7ufkTA1KcDtiu.jpg', '2024-12-04 11:58:07', '2024-12-04 11:58:07', 1),
(34, 16, 'hotel_images/lBbcsbZgdmCNxMAk12qkLraAySGfBsDjkiu4IqLD.jpg', '2024-12-04 11:58:07', '2024-12-04 11:58:07', 1),
(35, 17, 'hotel_images/H0L9x9UMtpK7VmzL6bJPzyMrnfuLV63MeQ9J0SFK.jpg', '2024-12-04 12:02:39', '2024-12-04 12:02:39', 1),
(36, 17, 'hotel_images/7cfFbn73s1yqPoIp2bqPDpqiRkOMzBesLX02bQ2Q.jpg', '2024-12-04 12:02:39', '2024-12-04 12:02:39', 1),
(37, 18, 'hotel_images/LaOvoNVCDRDKG1pgNIuhWHxTqeMmGZaBVbaf589r.jpg', '2024-12-04 12:06:41', '2024-12-04 12:06:41', 1),
(38, 18, 'hotel_images/DWamGFa0SRKJpiFFGNQHfpuLV7n38lxXvKOBw4oj.jpg', '2024-12-04 12:06:41', '2024-12-04 12:06:41', 1),
(39, 19, 'hotel_images/xGZj0WAJDyEBd5BtsZjKq7RPTEvZh51c78BCIFem.jpg', '2024-12-04 12:08:47', '2024-12-04 12:08:47', 1),
(40, 19, 'hotel_images/9q89nfTtkg8YgR0KSCuIRuUVrrWqcIJaY6O4G4kM.jpg', '2024-12-04 12:08:47', '2024-12-04 12:08:47', 1),
(41, 20, 'hotel_images/zVZVnoVmbRvJGu5xxlVxaVC8VmtFZOEPV22shFDm.jpg', '2024-12-04 12:10:09', '2024-12-04 12:10:09', 1),
(42, 20, 'hotel_images/81TzCb66thxLvG5vtWutV95kGHugo5tYj8x0Qbpu.jpg', '2024-12-04 12:10:09', '2024-12-04 12:10:09', 1),
(43, 21, 'hotel_images/uLg8fPspDzGf85Jodltoe8YGlpjsL1iNj2gogmpj.jpg', '2024-12-04 12:11:48', '2024-12-04 12:11:48', 1),
(44, 21, 'hotel_images/nOKNo1Oy86DB0jh6kXbJTG4zResld1iP9oWi4N48.jpg', '2024-12-04 12:11:48', '2024-12-04 12:11:48', 1),
(45, 22, 'hotel_images/RIt4GtOtrLsQemkXsKSo7V5qvKHTDth5Nar0Bnbh.jpg', '2024-12-04 12:19:08', '2024-12-04 12:19:08', 1),
(46, 22, 'hotel_images/JhyPfvblt6zosGEUCWxgaaxWxq6uFdPaNMTFVQTB.jpg', '2024-12-04 12:19:08', '2024-12-04 12:19:08', 1),
(47, 23, 'hotel_images/X5HWfXefbNxU1xxsWK07hTfyaxkrwnFm1MMXNkWz.jpg', '2024-12-05 05:36:49', '2024-12-05 05:36:49', 1),
(48, 22, 'hotel_images/Fn7kvSEuAHbba0P7XDi79KB9gtyfEFmevP5eHcvk.webp', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(49, 22, 'hotel_images/w6PqbBTobmEk7KhlAiUBXy6lT5lG2j46IWgfGlq3.webp', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(50, 22, 'hotel_images/SZy9E8sBMUfNCn2Q6di7L3d76MQZnDvOrVfcp1pn.webp', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(51, 24, 'hotel_images/tMmfW97gqkH996fgsiooctVMAd5s9sHqkGmwA0DN.png', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(52, 24, 'hotel_images/gtUR16O5CJTOFpJFUgGvT5goiEj4SSSd95d1yZnq.png', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(53, 25, 'hotel_images/aou9gqjTG1CdYnU5XIMtcfKeB2ivathsMZRFPBs6.png', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(54, 25, 'hotel_images/35neNpsYgd5SIuAGuEP6TnuvDLNucg0dGtw395VX.png', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(55, 25, 'hotel_images/coOKcdEzZoZVNGPJfRlIgZBN2hCP3aIYBDurrMBn.png', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(56, 26, 'hotel_images/B5R202ZgvxSb2oLYAKgpzYhQ36xA0u4grGXF8qL0.png', '2024-12-11 07:53:56', '2024-12-11 07:53:56', 3),
(57, 26, 'hotel_images/ubA204A5WWvfMYdA7Nyk6UBAiPzZ77bHZ0Ro9Fgi.png', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_reviews`
--

CREATE TABLE `property_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL COMMENT 'Reference to users.id',
  `property_id` int DEFAULT NULL COMMENT 'properties.id',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Rating out of 5',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1-Active, 2-Inactive, 3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_reviews`
--

INSERT INTO `property_reviews` (`id`, `user_id`, `property_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 32, NULL, 'Lora ipsum dolor sit', '5', 1, '2024-12-18 13:39:36', '2024-12-18 13:39:36'),
(2, 36, NULL, 'adadadada', '5', 1, '2024-12-20 10:54:13', '2024-12-20 10:54:13'),
(3, 35, NULL, 'Test', '3', 1, '2024-12-20 10:58:22', '2024-12-20 10:58:22'),
(4, 36, NULL, 'Testing', '5', 1, '2024-12-20 11:00:47', '2024-12-20 11:00:47'),
(5, 36, NULL, 'Tesring', '5', 1, '2024-12-20 11:22:00', '2024-12-20 11:22:00'),
(6, 36, NULL, 'Testing', '5', 1, '2024-12-20 11:28:34', '2024-12-20 11:28:34'),
(7, 36, NULL, 'testing', '5', 1, '2024-12-20 11:28:44', '2024-12-20 11:28:44'),
(8, 36, NULL, 'Test', '5', 1, '2024-12-20 11:38:20', '2024-12-20 11:38:20'),
(9, 38, NULL, 'Further', '5', 1, '2024-12-20 11:57:42', '2024-12-20 11:57:42'),
(10, 39, NULL, 'Working', '5', 1, '2024-12-20 12:16:14', '2024-12-20 12:16:14'),
(11, 39, NULL, 'Working', '2', 1, '2024-12-20 12:16:28', '2024-12-20 12:16:28'),
(12, 36, NULL, 'Hdjkhakdjahdjka', '5', 1, '2024-12-20 12:21:24', '2024-12-20 12:21:24'),
(13, 36, NULL, 'hjhjhjhjhjh', '5', 1, '2024-12-20 12:21:52', '2024-12-20 12:21:52'),
(14, 40, NULL, 'Test', '5', 1, '2024-12-20 13:38:28', '2024-12-20 13:38:28'),
(15, 36, NULL, 'Testing', '5', 1, '2024-12-20 15:32:42', '2024-12-20 15:32:42'),
(16, 36, NULL, 'Testing........................................', '5', 1, '2024-12-21 09:58:09', '2024-12-21 09:58:09'),
(17, 36, NULL, 'Test', '2', 1, '2024-12-21 09:58:21', '2024-12-21 09:58:21'),
(18, 36, NULL, 'Test', '5', 1, '2024-12-23 06:30:21', '2024-12-23 06:30:21'),
(19, 36, NULL, 'Testing…', '5', 1, '2024-12-23 06:34:22', '2024-12-23 06:34:22'),
(20, 36, NULL, 'Testing', '3', 1, '2024-12-23 06:44:03', '2024-12-23 06:44:03'),
(21, 41, NULL, NULL, '2', 1, '2024-12-23 07:03:29', '2024-12-23 07:03:29'),
(22, 36, NULL, NULL, '5', 1, '2024-12-23 13:07:31', '2024-12-23 13:07:31'),
(23, 36, NULL, NULL, '3', 1, '2024-12-23 13:07:42', '2024-12-23 13:07:42'),
(24, 36, NULL, NULL, '5', 1, '2024-12-25 19:11:24', '2024-12-25 19:11:24'),
(25, 36, NULL, 'Testing', '5', 1, '2024-12-25 19:11:34', '2024-12-25 19:11:34'),
(26, 43, NULL, NULL, '5', 1, '2024-12-26 14:19:59', '2024-12-26 14:19:59'),
(27, 43, NULL, 'Test', '5', 1, '2024-12-26 16:41:30', '2024-12-26 16:41:30'),
(28, 43, NULL, NULL, '5', 1, '2024-12-27 05:44:34', '2024-12-27 05:44:34'),
(29, 43, NULL, 'Testing', '5', 1, '2024-12-27 07:31:56', '2024-12-27 07:31:56'),
(30, 48, NULL, NULL, '5', 1, '2024-12-27 09:21:01', '2024-12-27 09:21:01'),
(31, 48, NULL, NULL, '5', 1, '2024-12-27 09:38:28', '2024-12-27 09:38:28'),
(32, 48, NULL, NULL, '5', 1, '2024-12-27 09:38:38', '2024-12-27 09:38:38'),
(33, 48, NULL, NULL, '5', 1, '2024-12-27 09:40:05', '2024-12-27 09:40:05'),
(34, 48, NULL, NULL, '5', 1, '2024-12-27 09:40:15', '2024-12-27 09:40:15'),
(35, 48, NULL, NULL, '5', 1, '2024-12-27 09:40:24', '2024-12-27 09:40:24'),
(36, 48, NULL, NULL, '5', 1, '2024-12-27 09:48:30', '2024-12-27 09:48:30'),
(37, 48, NULL, NULL, '5', 1, '2024-12-27 10:55:36', '2024-12-27 10:55:36'),
(38, 48, NULL, NULL, '5', 1, '2024-12-27 10:55:44', '2024-12-27 10:55:44'),
(39, 48, NULL, NULL, '5', 1, '2024-12-27 13:04:07', '2024-12-27 13:04:07'),
(40, 43, NULL, NULL, '5', 1, '2024-12-28 06:11:45', '2024-12-28 06:11:45'),
(41, 43, NULL, NULL, '4', 1, '2024-12-28 14:35:53', '2024-12-28 14:35:53'),
(42, 43, NULL, NULL, '5', 1, '2025-01-12 16:11:33', '2025-01-12 16:11:33'),
(43, 43, NULL, NULL, '5', 1, '2025-01-15 09:25:40', '2025-01-15 09:25:40'),
(44, 63, NULL, NULL, '2', 1, '2025-01-15 13:15:25', '2025-01-15 13:15:25'),
(45, 63, NULL, NULL, '4', 1, '2025-01-15 13:15:29', '2025-01-15 13:15:29'),
(46, 65, NULL, 'EXCELLENT SERVICES', '5', 1, '2025-01-16 06:48:58', '2025-01-16 06:48:58'),
(47, 64, NULL, NULL, '5', 1, '2025-01-16 07:21:50', '2025-01-16 07:21:50'),
(48, 63, NULL, 'Ggg', '4', 1, '2025-01-16 09:31:08', '2025-01-16 09:31:08'),
(49, 64, NULL, NULL, '5', 1, '2025-01-16 18:15:31', '2025-01-16 18:15:31'),
(50, 69, NULL, NULL, '2', 1, '2025-01-20 08:08:35', '2025-01-20 08:08:35'),
(51, 63, NULL, NULL, '5', 1, '2025-01-21 09:21:49', '2025-01-21 09:21:49'),
(52, 63, NULL, NULL, '3', 1, '2025-01-26 08:26:11', '2025-01-26 08:26:11'),
(53, 63, NULL, NULL, '4', 1, '2025-03-05 08:45:18', '2025-03-05 08:45:18'),
(54, 84, NULL, NULL, '5', 1, '2025-04-22 05:37:51', '2025-04-22 05:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint UNSIGNED NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_code`
--

CREATE TABLE `referral_code` (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `user_type` tinyint NOT NULL COMMENT '1-Groomer,2-Customer',
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referral_code`
--

INSERT INTO `referral_code` (`id`, `user_id`, `user_type`, `code`, `status`, `created_at`) VALUES
(1, 16, 2, '166734A27A163EE', 1, '2024-11-13 12:58:34'),
(2, 16, 2, '1667358F9C817F2', 1, '2024-11-14 05:50:20'),
(3, 19, 2, '196735E63A7D0BE', 1, '2024-11-14 11:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `refers`
--

CREATE TABLE `refers` (
  `id` bigint UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_type` tinyint NOT NULL DEFAULT '1' COMMENT '1-Flat,2-Percent',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_coupon_reused` tinyint NOT NULL DEFAULT '2' COMMENT '1-Yes,3-No',
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted',
  `is_used_coupon` tinyint NOT NULL DEFAULT '2' COMMENT '1-Used,2-Unused',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `refers`
--

INSERT INTO `refers` (`id`, `coupon_code`, `code_type`, `value`, `is_coupon_reused`, `expiry_date`, `status`, `is_used_coupon`, `created_at`, `updated_at`) VALUES
(1, '881662', 1, '100', 2, NULL, 1, 2, '2024-11-13 09:51:27', '2024-11-13 10:00:27'),
(2, '9106212746069058', 1, '100', 1, '2024-11-23', 1, 2, '2024-11-13 10:05:42', '2024-11-13 10:05:42'),
(3, '8888038184290259', 1, '100', 2, NULL, 1, 2, '2024-11-13 10:07:34', '2024-11-13 10:07:34'),
(4, '4454917451421989', 1, '100', 2, NULL, 1, 2, '2024-11-21 10:21:09', '2024-11-21 10:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `refer_and_earn`
--

CREATE TABLE `refer_and_earn` (
  `id` int NOT NULL,
  `user_type` int NOT NULL COMMENT '1-Gromer Helper,2-Customer',
  `is_on` tinyint NOT NULL DEFAULT '2' COMMENT '1-Active,2-Inactive',
  `is_profit` tinyint NOT NULL DEFAULT '2' COMMENT '1-Active,2-Inactive',
  `billing_no` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refer_and_earn`
--

INSERT INTO `refer_and_earn` (`id`, `user_type`, `is_on`, `is_profit`, `billing_no`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 10, '2024-11-13 10:28:54', NULL),
(2, 2, 1, 1, 50, '2024-11-13 10:28:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, '2024-12-01 07:08:25', '2024-12-01 07:08:25'),
(2, 'Customer', 1, '2024-12-01 07:09:00', '2024-12-19 11:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_models`
--

CREATE TABLE `role_models` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int NOT NULL,
  `role_id` int NOT NULL COMMENT 'roles.id',
  `permission_id` int DEFAULT NULL COMMENT 'permission.id',
  `permission_status` tinyint NOT NULL DEFAULT '2' COMMENT '1-True,2-False',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`, `permission_status`, `created_at`, `status`) VALUES
(1, 3, 1, 1, '2024-12-06 08:03:45', 1),
(2, 3, 2, 1, '2024-12-06 08:03:45', 1),
(3, 3, 3, 1, '2024-12-06 08:03:45', 1),
(4, 3, 4, 2, '2024-12-06 08:03:45', 1),
(5, 3, 5, 1, '2024-12-06 08:03:45', 1),
(6, 2, 1, 2, '2024-12-09 13:43:10', 1),
(7, 2, 2, 2, '2024-12-09 13:43:10', 1),
(8, 2, 3, 2, '2024-12-09 13:43:10', 1),
(9, 2, 4, 2, '2024-12-09 13:43:10', 1),
(10, 2, 5, 2, '2024-12-09 13:43:10', 1),
(11, 2, 6, 1, '2024-12-09 13:43:10', 1),
(12, 2, 7, 1, '2024-12-09 13:43:10', 1),
(13, 2, 8, 1, '2024-12-09 13:43:10', 1),
(14, 2, 9, 1, '2024-12-09 13:43:10', 1),
(15, 4, 1, 1, '2024-12-10 07:27:34', 1),
(16, 4, 2, 2, '2024-12-10 07:27:34', 1),
(17, 4, 3, 2, '2024-12-10 07:27:34', 1),
(18, 4, 4, 2, '2024-12-10 07:27:34', 1),
(19, 4, 5, 2, '2024-12-10 07:27:34', 1),
(20, 4, 6, 2, '2024-12-10 07:27:34', 1),
(21, 4, 7, 2, '2024-12-10 07:27:34', 1),
(22, 4, 8, 2, '2024-12-10 07:27:34', 1),
(23, 4, 9, 2, '2024-12-10 07:27:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `route_logs`
--

CREATE TABLE `route_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `route_assign_id` int NOT NULL COMMENT 'assignroutes.id',
  `user_id` int NOT NULL COMMENT 'users.id',
  `route_id` int NOT NULL COMMENT 'routes.id',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Delete,4-Permanent Delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `route_logs`
--

INSERT INTO `route_logs` (`id`, `route_assign_id`, `user_id`, `route_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 2, 1, '2024-10-29 07:07:20', '2024-10-29 12:40:14', 1),
(2, 2, 6, 1, '2024-10-29 07:07:24', '2024-10-29 12:40:10', 1),
(3, 3, 9, 1, '2024-10-29 07:07:27', '2024-10-29 12:38:02', 1),
(4, 4, 9, 1, '2024-10-29 07:08:15', '2024-10-29 12:38:29', 1),
(5, 5, 2, 1, '2024-10-29 07:11:11', '2024-10-29 13:09:23', 1),
(6, 6, 2, 1, '2024-10-29 09:35:02', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `meta_robot` text COLLATE utf8mb4_unicode_ci,
  `header_script` text COLLATE utf8mb4_unicode_ci,
  `footer_script` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `url`, `meta_title`, `meta_description`, `meta_keyword`, `meta_robot`, `header_script`, `footer_script`, `created_at`, `updated_at`, `status`) VALUES
(1, 'http://127.0.0.1:8000/seo/create', 'Seo title asdf', 'seo description', 'seo keyword', 'no index seo', 'seo header script', 'seo footer script', '2024-12-02 06:47:06', '2024-12-02 12:37:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_charge` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `service_charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(2, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(4, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(5, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(6, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(7, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(8, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(9, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(10, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(11, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(12, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(13, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(14, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(15, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(16, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(17, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(18, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(19, 'Dosgs Service', 5555, 1, '2024-11-11 07:26:12', '2024-11-19 08:16:42'),
(20, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(21, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'users.id',
  `subject` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `data` text COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL COMMENT '1-Active,2-DeActive,3-Deleted,4-Permanent Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'user.id',
  `otp` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1-Active,2-Expired',
  `module_type` tinyint NOT NULL DEFAULT '1' COMMENT '1-Login,2-UpdateEmail or mobile of users,3-user location',
  `otp_type` tinyint NOT NULL DEFAULT '1' COMMENT '1-Mobile, 2-Email',
  `field_value` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`id`, `user_id`, `otp`, `status`, `module_type`, `otp_type`, `field_value`, `created_at`, `updated_at`) VALUES
(1, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-18 11:41:46', '2024-12-18 11:41:46'),
(2, NULL, '1234', 2, 1, 1, '7428059961', '2024-12-18 11:54:10', '2024-12-18 11:54:10'),
(3, NULL, '1234', 2, 1, 1, '7428059961', '2024-12-18 11:55:11', '2024-12-18 11:55:11'),
(4, NULL, '1234', 1, 1, 1, '7428059961', '2024-12-18 12:44:38', '2024-12-18 12:44:38'),
(5, NULL, '1234', 2, 1, 1, '7428059961', '2024-12-18 12:44:52', '2024-12-18 12:44:52'),
(6, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-19 06:41:37', '2024-12-19 06:41:37'),
(7, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-19 07:03:27', '2024-12-19 07:03:27'),
(8, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-19 07:05:53', '2024-12-19 07:05:53'),
(9, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-19 08:12:49', '2024-12-19 08:12:49'),
(10, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-19 12:56:02', '2024-12-19 12:56:02'),
(11, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-19 12:56:26', '2024-12-19 12:56:26'),
(12, NULL, '1234', 1, 1, 1, '7428059960', '2024-12-19 13:39:57', '2024-12-19 13:39:57'),
(13, NULL, '1234', 1, 1, 1, '7428059960', '2024-12-19 13:40:16', '2024-12-19 13:40:16'),
(14, NULL, '1234', 1, 1, 1, '7428059960', '2024-12-19 13:41:13', '2024-12-19 13:41:13'),
(15, NULL, '1234', 1, 1, 1, '7428059960', '2024-12-19 13:43:54', '2024-12-19 13:43:54'),
(16, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-19 13:45:50', '2024-12-19 13:45:50'),
(17, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-19 13:49:28', '2024-12-19 13:49:28'),
(18, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-19 14:10:03', '2024-12-19 14:10:03'),
(19, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-19 14:18:45', '2024-12-19 14:18:45'),
(20, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-19 14:43:32', '2024-12-19 14:43:32'),
(21, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-19 14:49:40', '2024-12-19 14:49:40'),
(22, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-19 15:07:20', '2024-12-19 15:07:20'),
(23, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-19 15:12:17', '2024-12-19 15:12:17'),
(24, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-19 15:12:51', '2024-12-19 15:12:51'),
(25, NULL, '1234', 2, 1, 1, '7428059962', '2024-12-19 15:13:50', '2024-12-19 15:13:50'),
(26, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-19 15:17:19', '2024-12-19 15:17:19'),
(27, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-19 15:17:27', '2024-12-19 15:17:27'),
(28, NULL, '1234', 2, 1, 1, '7428059962', '2024-12-19 15:17:44', '2024-12-19 15:17:44'),
(29, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-19 15:18:15', '2024-12-19 15:18:15'),
(30, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-19 15:18:32', '2024-12-19 15:18:32'),
(31, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-19 15:21:09', '2024-12-19 15:21:09'),
(32, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-19 17:59:26', '2024-12-19 17:59:26'),
(33, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-19 18:03:57', '2024-12-19 18:03:57'),
(34, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-19 18:04:44', '2024-12-19 18:04:44'),
(35, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-19 19:05:33', '2024-12-19 19:05:33'),
(36, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-19 19:10:02', '2024-12-19 19:10:02'),
(37, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-19 19:10:22', '2024-12-19 19:10:22'),
(38, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-20 06:39:17', '2024-12-20 06:39:17'),
(39, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 06:44:13', '2024-12-20 06:44:13'),
(40, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 07:49:31', '2024-12-20 07:49:31'),
(41, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 07:55:08', '2024-12-20 07:55:08'),
(42, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 07:57:04', '2024-12-20 07:57:04'),
(43, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-20 07:57:23', '2024-12-20 07:57:23'),
(44, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 08:05:45', '2024-12-20 08:05:45'),
(45, NULL, '1234', 1, 1, 1, '8287976642', '2024-12-20 08:06:11', '2024-12-20 08:06:11'),
(46, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 08:06:21', '2024-12-20 08:06:21'),
(47, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-20 08:06:59', '2024-12-20 08:06:59'),
(48, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 08:22:27', '2024-12-20 08:22:27'),
(49, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 08:24:27', '2024-12-20 08:24:27'),
(50, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-20 08:25:07', '2024-12-20 08:25:07'),
(51, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 08:56:27', '2024-12-20 08:56:27'),
(52, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 09:10:53', '2024-12-20 09:10:53'),
(53, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 09:32:12', '2024-12-20 09:32:12'),
(54, NULL, '1234', 1, 1, 1, '8287976642', '2024-12-20 09:53:02', '2024-12-20 09:53:02'),
(55, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 09:53:02', '2024-12-20 09:53:02'),
(56, NULL, '1234', 1, 1, 1, '8287976171', '2024-12-20 10:06:11', '2024-12-20 10:06:11'),
(57, NULL, '1234', 1, 1, 1, '8287976171', '2024-12-20 10:06:18', '2024-12-20 10:06:18'),
(58, NULL, '1234', 2, 1, 1, '8287976171', '2024-12-20 10:06:28', '2024-12-20 10:06:28'),
(59, NULL, '1234', 2, 1, 1, '8781818181', '2024-12-20 10:07:00', '2024-12-20 10:07:00'),
(60, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 10:08:51', '2024-12-20 10:08:51'),
(61, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 10:08:58', '2024-12-20 10:08:58'),
(62, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 10:09:08', '2024-12-20 10:09:08'),
(63, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 10:09:23', '2024-12-20 10:09:23'),
(64, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 10:09:44', '2024-12-20 10:09:44'),
(65, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 10:10:43', '2024-12-20 10:10:43'),
(66, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 10:18:08', '2024-12-20 10:18:08'),
(67, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 10:21:20', '2024-12-20 10:21:20'),
(68, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-20 10:26:16', '2024-12-20 10:26:16'),
(69, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 11:20:52', '2024-12-20 11:20:52'),
(70, NULL, '1234', 2, 1, 1, '8287976649', '2024-12-20 11:22:47', '2024-12-20 11:22:47'),
(71, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 11:26:52', '2024-12-20 11:26:52'),
(72, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 11:31:12', '2024-12-20 11:31:12'),
(73, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 11:37:04', '2024-12-20 11:37:04'),
(74, NULL, '1234', 2, 1, 1, '8266855865', '2024-12-20 11:54:34', '2024-12-20 11:54:34'),
(75, NULL, '1234', 2, 1, 1, '8266855865', '2024-12-20 11:59:05', '2024-12-20 11:59:05'),
(76, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 12:07:51', '2024-12-20 12:07:51'),
(77, NULL, '1234', 2, 1, 1, '9354190316', '2024-12-20 12:13:06', '2024-12-20 12:13:06'),
(78, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 12:19:54', '2024-12-20 12:19:54'),
(79, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 12:29:40', '2024-12-20 12:29:40'),
(80, NULL, '1234', 2, 1, 1, '8287976645', '2024-12-20 13:05:25', '2024-12-20 13:05:25'),
(81, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 15:32:14', '2024-12-20 15:32:14'),
(82, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-20 15:34:04', '2024-12-20 15:34:04'),
(83, NULL, '1234', 1, 1, 1, '8487878798', '2024-12-21 09:52:07', '2024-12-21 09:52:07'),
(84, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-21 09:56:25', '2024-12-21 09:56:25'),
(85, NULL, '1234', 1, 1, 1, '8679878787', '2024-12-21 10:01:43', '2024-12-21 10:01:43'),
(86, NULL, '1234', 1, 1, 1, '8679878787', '2024-12-21 10:04:54', '2024-12-21 10:04:54'),
(87, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-23 06:29:17', '2024-12-23 06:29:17'),
(88, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-23 06:32:51', '2024-12-23 06:32:51'),
(89, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-23 06:33:50', '2024-12-23 06:33:50'),
(90, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-23 06:58:43', '2024-12-23 06:58:43'),
(91, NULL, '1234', 2, 1, 1, '8298288282', '2024-12-23 07:03:03', '2024-12-23 07:03:03'),
(92, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-23 07:03:50', '2024-12-23 07:03:50'),
(93, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-23 07:05:02', '2024-12-23 07:05:02'),
(94, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-23 07:39:14', '2024-12-23 07:39:14'),
(95, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-23 08:42:17', '2024-12-23 08:42:17'),
(96, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-23 08:45:19', '2024-12-23 08:45:19'),
(97, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-23 10:00:48', '2024-12-23 10:00:48'),
(98, NULL, '1234', 2, 1, 1, '8287976643', '2024-12-23 10:11:21', '2024-12-23 10:11:21'),
(99, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-23 10:47:24', '2024-12-23 10:47:24'),
(100, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-23 11:03:43', '2024-12-23 11:03:43'),
(101, NULL, '1234', 2, 1, 1, '8287973554', '2024-12-23 11:41:37', '2024-12-23 11:41:37'),
(102, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-23 11:49:21', '2024-12-23 11:49:21'),
(103, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-23 12:04:53', '2024-12-23 12:04:53'),
(104, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-25 19:00:07', '2024-12-25 19:00:07'),
(105, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-25 19:08:04', '2024-12-25 19:08:04'),
(106, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-26 05:50:30', '2024-12-26 05:50:30'),
(107, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-26 08:07:32', '2024-12-26 08:07:32'),
(108, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-26 14:14:20', '2024-12-26 14:14:20'),
(109, NULL, '1234', 1, 1, 1, '8287976642', '2024-12-26 14:18:45', '2024-12-26 14:18:45'),
(110, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-26 14:19:02', '2024-12-26 14:19:02'),
(111, NULL, '1234', 2, 1, 1, '8287976641', '2024-12-26 14:35:42', '2024-12-26 14:35:42'),
(112, NULL, '1234', 2, 1, 1, '9878787878', '2024-12-26 14:50:01', '2024-12-26 14:50:01'),
(113, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-26 15:16:41', '2024-12-26 15:16:41'),
(114, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-26 17:24:05', '2024-12-26 17:24:05'),
(115, NULL, '1234', 2, 1, 1, '8287967662', '2024-12-26 17:24:37', '2024-12-26 17:24:37'),
(116, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 05:43:37', '2024-12-27 05:43:37'),
(117, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 05:54:03', '2024-12-27 05:54:03'),
(118, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 07:19:39', '2024-12-27 07:19:39'),
(119, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 07:53:13', '2024-12-27 07:53:13'),
(120, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 07:56:20', '2024-12-27 07:56:20'),
(121, NULL, '1234', 2, 1, 1, '8287976464', '2024-12-27 07:58:54', '2024-12-27 07:58:54'),
(122, NULL, '1234', 2, 1, 1, '8787878787', '2024-12-27 08:04:55', '2024-12-27 08:04:55'),
(123, NULL, '1234', 2, 1, 1, '8787878787', '2024-12-27 08:09:45', '2024-12-27 08:09:45'),
(124, NULL, '1234', 2, 1, 1, '8787878787', '2024-12-27 08:10:28', '2024-12-27 08:10:28'),
(125, NULL, '1234', 2, 1, 1, '7428059960', '2024-12-27 09:35:30', '2024-12-27 09:35:30'),
(126, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 10:37:46', '2024-12-27 10:37:46'),
(127, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 16:52:21', '2024-12-27 16:52:21'),
(128, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 16:54:57', '2024-12-27 16:54:57'),
(129, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 16:57:34', '2024-12-27 16:57:34'),
(130, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 18:09:17', '2024-12-27 18:09:17'),
(131, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-27 18:37:26', '2024-12-27 18:37:26'),
(132, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-28 06:12:21', '2024-12-28 06:12:21'),
(133, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-28 10:59:34', '2024-12-28 10:59:34'),
(134, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-28 11:10:45', '2024-12-28 11:10:45'),
(135, NULL, '1234', 2, 1, 1, '9887878787', '2024-12-28 11:12:09', '2024-12-28 11:12:09'),
(136, NULL, '1234', 2, 1, 1, '8787878798', '2024-12-28 12:13:15', '2024-12-28 12:13:15'),
(137, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-28 14:34:50', '2024-12-28 14:34:50'),
(138, NULL, '1234', 2, 1, 1, '8287976642', '2024-12-28 14:56:25', '2024-12-28 14:56:25'),
(139, NULL, '1234', 1, 1, 1, '7428059960', '2025-01-06 07:29:46', '2025-01-06 07:29:46'),
(140, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-14 13:53:55', '2025-01-14 13:53:55'),
(141, NULL, '1234', 1, 1, 1, '8287976642', '2025-01-15 00:16:28', '2025-01-15 00:16:28'),
(142, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 00:16:29', '2025-01-15 00:16:29'),
(143, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 08:22:19', '2025-01-15 08:22:19'),
(144, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 09:51:49', '2025-01-15 09:51:49'),
(145, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 09:52:37', '2025-01-15 09:52:37'),
(146, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 09:55:31', '2025-01-15 09:55:31'),
(147, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 09:58:21', '2025-01-15 09:58:21'),
(148, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 09:59:21', '2025-01-15 09:59:21'),
(149, NULL, '1234', 1, 1, 1, '8287976642', '2025-01-15 10:00:00', '2025-01-15 10:00:00'),
(150, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 10:00:04', '2025-01-15 10:00:04'),
(151, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 10:05:19', '2025-01-15 10:05:19'),
(152, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 10:07:16', '2025-01-15 10:07:16'),
(153, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 10:13:02', '2025-01-15 10:13:02'),
(154, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 10:13:49', '2025-01-15 10:13:49'),
(155, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 10:22:01', '2025-01-15 10:22:01'),
(156, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 10:23:23', '2025-01-15 10:23:23'),
(157, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 10:31:01', '2025-01-15 10:31:01'),
(158, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 10:32:20', '2025-01-15 10:32:20'),
(159, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 10:33:37', '2025-01-15 10:33:37'),
(160, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 11:54:48', '2025-01-15 11:54:48'),
(161, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 12:01:24', '2025-01-15 12:01:24'),
(162, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 12:58:01', '2025-01-15 12:58:01'),
(163, NULL, '1234', 1, 1, 1, '8920110530', '2025-01-15 13:29:45', '2025-01-15 13:29:45'),
(164, NULL, '1234', 1, 1, 1, '8920110530', '2025-01-15 13:30:01', '2025-01-15 13:30:01'),
(165, NULL, '1234', 2, 1, 1, '9999999999', '2025-01-15 13:31:18', '2025-01-15 13:31:18'),
(166, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 13:53:24', '2025-01-15 13:53:24'),
(167, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-15 17:37:08', '2025-01-15 17:37:08'),
(168, NULL, '1234', 2, 1, 1, '8586800327', '2025-01-16 04:47:26', '2025-01-16 04:47:26'),
(169, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-16 09:16:33', '2025-01-16 09:16:33'),
(170, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-16 09:29:42', '2025-01-16 09:29:42'),
(171, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-16 09:55:26', '2025-01-16 09:55:26'),
(172, NULL, '1234', 2, 1, 1, '8287976641', '2025-01-16 09:56:10', '2025-01-16 09:56:10'),
(173, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-18 12:12:23', '2025-01-18 12:12:23'),
(174, NULL, '1234', 2, 1, 1, '9887878988', '2025-01-19 07:01:18', '2025-01-19 07:01:18'),
(175, NULL, '1234', 2, 1, 1, '8798988789', '2025-01-19 07:17:35', '2025-01-19 07:17:35'),
(176, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-19 09:16:07', '2025-01-19 09:16:07'),
(177, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-19 11:04:21', '2025-01-19 11:04:21'),
(178, NULL, '1234', 1, 1, 1, '8287976642', '2025-01-19 17:54:43', '2025-01-19 17:54:43'),
(179, NULL, '1234', 1, 1, 1, '8287976642', '2025-01-19 17:55:21', '2025-01-19 17:55:21'),
(180, NULL, '1234', 1, 1, 1, '8287976642', '2025-01-19 17:55:22', '2025-01-19 17:55:22'),
(181, NULL, '1234', 1, 1, 1, '8287976642', '2025-01-19 17:55:22', '2025-01-19 17:55:22'),
(182, NULL, '1234', 1, 1, 1, '8287976642', '2025-01-19 17:55:24', '2025-01-19 17:55:24'),
(183, NULL, '1234', 2, 1, 1, '9292929292', '2025-01-20 07:56:29', '2025-01-20 07:56:29'),
(184, NULL, '1234', 2, 1, 1, '8287976642', '2025-01-20 07:57:24', '2025-01-20 07:57:24'),
(185, NULL, '1645', 2, 4, 1, '7428059960', '2025-01-20 08:22:04', '2025-01-20 08:22:04'),
(186, NULL, '5368', 1, 1, 1, '8586800327', '2025-01-21 06:58:10', '2025-01-21 06:58:10'),
(187, NULL, '9047', 1, 1, 1, '8586800327', '2025-01-21 06:59:02', '2025-01-21 06:59:02'),
(188, NULL, '7230', 2, 1, 1, '8586800327', '2025-01-21 06:59:14', '2025-01-21 06:59:14'),
(189, NULL, '8513', 1, 1, 1, '8586800327', '2025-01-21 09:17:23', '2025-01-21 09:17:23'),
(190, NULL, '4880', 2, 1, 1, '8287976642', '2025-01-21 09:17:34', '2025-01-21 09:17:34'),
(191, NULL, '9647', 2, 1, 1, '8287976642', '2025-01-21 09:20:00', '2025-01-21 09:20:00'),
(192, NULL, '1617', 1, 1, 1, '9999999999', '2025-01-21 09:53:02', '2025-01-21 09:53:02'),
(193, NULL, '5718', 2, 1, 1, '8920110530', '2025-01-21 09:53:30', '2025-01-21 09:53:30'),
(194, NULL, '6343', 1, 1, 1, '8287976642', '2025-01-23 07:12:31', '2025-01-23 07:12:31'),
(195, NULL, '4252', 1, 1, 1, '8287976642', '2025-01-23 07:13:22', '2025-01-23 07:13:22'),
(196, NULL, '2075', 1, 1, 1, '8287976642', '2025-01-23 07:16:07', '2025-01-23 07:16:07'),
(197, NULL, '3209', 1, 1, 1, '8287976642', '2025-01-23 07:21:38', '2025-01-23 07:21:38'),
(198, NULL, '6278', 1, 1, 1, '8287976642', '2025-01-28 09:13:52', '2025-01-28 09:13:52'),
(199, NULL, '4802', 1, 1, 1, '8287976642', '2025-01-28 09:23:08', '2025-01-28 09:23:08'),
(200, NULL, '4925', 1, 1, 1, '8086961221', '2025-02-01 05:58:29', '2025-02-01 05:58:29'),
(201, NULL, '6763', 1, 1, 1, '8287976642', '2025-02-03 07:21:09', '2025-02-03 07:21:09'),
(202, NULL, '5425', 1, 1, 1, '8287976642', '2025-02-03 07:22:20', '2025-02-03 07:22:20'),
(203, NULL, '9347', 1, 1, 1, '8287976642', '2025-02-03 07:23:35', '2025-02-03 07:23:35'),
(204, NULL, '9677', 1, 1, 1, '8287976642', '2025-02-03 07:23:50', '2025-02-03 07:23:50'),
(205, NULL, '1260', 1, 1, 1, '8287976642', '2025-02-11 06:37:35', '2025-02-11 06:37:35'),
(206, NULL, '6420', 1, 1, 1, '8287976642', '2025-02-17 06:36:07', '2025-02-17 06:36:07'),
(207, NULL, '4952', 1, 1, 1, '8287976642', '2025-02-17 06:37:01', '2025-02-17 06:37:01'),
(208, NULL, '8705', 1, 1, 1, '8287976642', '2025-02-17 06:37:15', '2025-02-17 06:37:15'),
(209, NULL, '7976', 1, 1, 1, '8287976642', '2025-02-25 01:30:58', '2025-02-25 01:30:58'),
(210, NULL, '6500', 1, 1, 1, '8287976642', '2025-02-25 01:31:45', '2025-02-25 01:31:45'),
(211, NULL, '8383', 1, 1, 1, '8287976642', '2025-02-25 01:33:01', '2025-02-25 01:33:01'),
(212, NULL, '1770', 1, 1, 1, '8287976642', '2025-02-25 01:33:02', '2025-02-25 01:33:02'),
(213, NULL, '9084', 1, 1, 1, '8287976642', '2025-02-25 01:33:02', '2025-02-25 01:33:02'),
(214, NULL, '4219', 1, 1, 1, '8287976642', '2025-02-25 01:33:03', '2025-02-25 01:33:03'),
(215, NULL, '9212', 1, 1, 1, '8287976642', '2025-02-25 01:33:03', '2025-02-25 01:33:03'),
(216, NULL, '1337', 1, 1, 1, '8287976642', '2025-02-25 01:33:03', '2025-02-25 01:33:03'),
(217, NULL, '3844', 2, 1, 1, '8287976642', '2025-02-26 09:22:42', '2025-02-26 09:22:42'),
(218, NULL, '5870', 1, 1, 1, '8287976642', '2025-02-26 09:39:20', '2025-02-26 09:39:20'),
(219, NULL, '2382', 1, 1, 1, '8287976642', '2025-02-26 09:40:01', '2025-02-26 09:40:01'),
(220, NULL, '4604', 1, 1, 1, '8287976642', '2025-02-26 09:40:53', '2025-02-26 09:40:53'),
(221, NULL, '9733', 1, 1, 1, '8287976642', '2025-02-26 09:41:38', '2025-02-26 09:41:38'),
(222, NULL, '9797', 1, 1, 1, '8221822103', '2025-02-26 09:42:42', '2025-02-26 09:42:42'),
(223, NULL, '7957', 1, 1, 1, '8221822103', '2025-02-26 09:43:41', '2025-02-26 09:43:41'),
(224, NULL, '7020', 1, 1, 1, '8221822103', '2025-02-26 09:48:48', '2025-02-26 09:48:48'),
(225, NULL, '6730', 2, 1, 1, '7428059960', '2025-02-26 09:50:55', '2025-02-26 09:50:55'),
(226, NULL, '1488', 2, 1, 1, '8287976642', '2025-02-26 11:10:49', '2025-02-26 11:10:49'),
(227, NULL, '8897', 2, 1, 1, '8287976642', '2025-02-26 11:14:54', '2025-02-26 11:14:54'),
(228, NULL, '7103', 1, 1, 1, '8287976642', '2025-02-26 11:23:52', '2025-02-26 11:23:52'),
(229, NULL, '1984', 1, 1, 1, '8287976642', '2025-02-26 11:23:54', '2025-02-26 11:23:54'),
(230, NULL, '8619', 2, 1, 1, '8287976642', '2025-02-27 08:27:35', '2025-02-27 08:27:35'),
(231, NULL, '2936', 1, 1, 1, '8287976642', '2025-02-27 08:28:14', '2025-02-27 08:28:14'),
(232, NULL, '5028', 2, 1, 1, '8221822103', '2025-02-27 08:28:51', '2025-02-27 08:28:51'),
(233, NULL, '4241', 1, 1, 1, '8287976642', '2025-02-27 13:06:49', '2025-02-27 13:06:49'),
(234, NULL, '6336', 1, 1, 1, '8287976642', '2025-02-27 13:14:33', '2025-02-27 13:14:33'),
(235, NULL, '1911', 1, 1, 1, '8287976642', '2025-02-27 14:05:05', '2025-02-27 14:05:05'),
(236, NULL, '6333', 1, 1, 1, '8287976642', '2025-02-28 10:58:26', '2025-02-28 10:58:26'),
(237, NULL, '9896', 1, 1, 1, '8287976642', '2025-03-01 11:18:32', '2025-03-01 11:18:32'),
(238, NULL, '6010', 1, 1, 1, '8287976642', '2025-03-04 10:32:49', '2025-03-04 10:32:49'),
(239, NULL, '5738', 1, 1, 1, '8287976642', '2025-03-04 10:33:04', '2025-03-04 10:33:04'),
(240, NULL, '2772', 1, 1, 1, '8287976642', '2025-03-04 10:33:45', '2025-03-04 10:33:45'),
(241, NULL, '2431', 1, 1, 1, '8287976642', '2025-03-04 10:33:46', '2025-03-04 10:33:46'),
(242, NULL, '6885', 1, 1, 1, '8287976642', '2025-03-04 10:34:25', '2025-03-04 10:34:25'),
(243, NULL, '1381', 1, 1, 1, '8287976642', '2025-03-04 10:34:42', '2025-03-04 10:34:42'),
(244, NULL, '9778', 1, 1, 1, '8287976642', '2025-03-04 11:26:42', '2025-03-04 11:26:42'),
(245, NULL, '3187', 1, 1, 1, '8287976642', '2025-03-04 11:28:45', '2025-03-04 11:28:45'),
(246, NULL, '5889', 1, 1, 1, '8287976642', '2025-03-04 11:29:00', '2025-03-04 11:29:00'),
(247, NULL, '6282', 1, 1, 1, '8700682075', '2025-03-05 06:06:13', '2025-03-05 06:06:13'),
(248, NULL, '9302', 2, 1, 1, '8700682075', '2025-03-05 06:06:40', '2025-03-05 06:06:40'),
(249, NULL, '8386', 2, 1, 1, '8287976642', '2025-03-05 08:42:16', '2025-03-05 08:42:16'),
(250, NULL, '9073', 2, 1, 1, '9555804662', '2025-03-05 12:42:42', '2025-03-05 12:42:42'),
(251, NULL, '6047', 2, 1, 1, '9318453468', '2025-03-10 06:00:34', '2025-03-10 06:00:34'),
(252, NULL, '5588', 1, 1, 1, '9318453468', '2025-03-10 06:00:57', '2025-03-10 06:00:57'),
(253, NULL, '8120', 2, 1, 1, '9625958558', '2025-03-18 09:47:29', '2025-03-18 09:47:29'),
(254, NULL, '5236', 2, 1, 1, '9650897905', '2025-03-22 07:25:02', '2025-03-22 07:25:02'),
(255, NULL, '4068', 1, 1, 1, '9818659224', '2025-04-04 17:40:52', '2025-04-04 17:40:52'),
(256, NULL, '8582', 2, 1, 1, '9818659234', '2025-04-04 17:40:59', '2025-04-04 17:40:59'),
(257, NULL, '1717', 2, 1, 1, '8287976642', '2025-04-07 10:56:02', '2025-04-07 10:56:02'),
(258, NULL, '2388', 2, 1, 1, '8287976642', '2025-04-07 11:07:53', '2025-04-07 11:07:53'),
(259, NULL, '6542', 2, 1, 1, '9528890227', '2025-04-14 05:54:21', '2025-04-14 05:54:21'),
(260, NULL, '4278', 2, 1, 1, '8800119959', '2025-04-14 17:59:21', '2025-04-14 17:59:21'),
(261, NULL, '7037', 1, 1, 1, '8287976642', '2025-04-18 14:13:55', '2025-04-18 14:13:55'),
(262, NULL, '8096', 1, 1, 1, '8933067499', '2025-04-22 03:37:33', '2025-04-22 03:37:33'),
(263, NULL, '6299', 2, 1, 1, '7275923170', '2025-04-22 03:42:45', '2025-04-22 03:42:45'),
(264, NULL, '3127', 1, 1, 1, '8178332918', '2025-04-22 03:44:06', '2025-04-22 03:44:06'),
(265, NULL, '6879', 2, 1, 1, '8178332918', '2025-04-22 04:03:51', '2025-04-22 04:03:51'),
(266, NULL, '6689', 1, 1, 1, '8933067499', '2025-04-22 05:35:34', '2025-04-22 05:35:34'),
(267, NULL, '7915', 2, 1, 1, '8933067499', '2025-04-22 05:35:35', '2025-04-22 05:35:35'),
(268, NULL, '8780', 2, 1, 1, '9934010124', '2025-04-22 05:36:18', '2025-04-22 05:36:18'),
(269, NULL, '3088', 1, 1, 1, '9934010124', '2025-04-22 05:36:18', '2025-04-22 05:36:18'),
(270, NULL, '1966', 2, 1, 1, '9560222005', '2025-04-23 08:38:09', '2025-04-23 08:38:09'),
(271, NULL, '1603', 2, 1, 1, '9999008192', '2025-04-23 08:44:03', '2025-04-23 08:44:03'),
(272, NULL, '5439', 1, 1, 1, '9999008192', '2025-04-23 08:44:03', '2025-04-23 08:44:03'),
(273, NULL, '9247', 2, 1, 1, '8130283126', '2025-04-23 08:52:47', '2025-04-23 08:52:47'),
(274, NULL, '2850', 2, 1, 1, '9810000370', '2025-04-23 09:02:46', '2025-04-23 09:02:46'),
(275, NULL, '1233', 2, 1, 1, '9818679450', '2025-04-23 09:59:57', '2025-04-23 09:59:57'),
(276, NULL, '7147', 1, 1, 1, '9953875481', '2025-04-23 12:09:08', '2025-04-23 12:09:08'),
(277, NULL, '6440', 2, 1, 1, '9953875481', '2025-04-23 12:09:22', '2025-04-23 12:09:22'),
(278, NULL, '7006', 1, 1, 1, '9870123843', '2025-04-24 09:43:41', '2025-04-24 09:43:41'),
(279, NULL, '4312', 1, 1, 1, '9870123843', '2025-04-24 09:44:08', '2025-04-24 09:44:08'),
(280, NULL, '2660', 2, 1, 1, '9910983443', '2025-04-24 09:45:54', '2025-04-24 09:45:54'),
(281, NULL, '8931', 2, 1, 1, '9910768220', '2025-04-26 07:09:08', '2025-04-26 07:09:08'),
(282, NULL, '2965', 2, 1, 1, '9355465546', '2025-04-27 18:12:24', '2025-04-27 18:12:24'),
(283, NULL, '2601', 1, 1, 1, '8287976642', '2025-04-28 06:25:41', '2025-04-28 06:25:41'),
(284, NULL, '7649', 2, 1, 1, '8287976642', '2025-04-28 06:26:09', '2025-04-28 06:26:09'),
(285, NULL, '9158', 2, 1, 1, '8700682075', '2025-04-28 07:10:35', '2025-04-28 07:10:35'),
(286, NULL, '6752', 2, 1, 1, '8700682075', '2025-04-28 11:14:18', '2025-04-28 11:14:18'),
(287, NULL, '5883', 2, 1, 1, '9891018001', '2025-04-30 08:23:00', '2025-04-30 08:23:00'),
(288, NULL, '1765', 1, 1, 1, '9891018001', '2025-04-30 08:23:59', '2025-04-30 08:23:59'),
(289, NULL, '5439', 2, 1, 1, '8700682075', '2025-04-30 12:51:52', '2025-04-30 12:51:52'),
(290, NULL, '3928', 1, 1, 1, '7428059960', '2025-04-30 12:54:37', '2025-04-30 12:54:37'),
(291, NULL, '1912', 1, 1, 1, '7428059960', '2025-04-30 12:54:37', '2025-04-30 12:54:37'),
(292, NULL, '3270', 1, 1, 1, '7428059960', '2025-04-30 12:54:37', '2025-04-30 12:54:37'),
(293, NULL, '7249', 2, 1, 1, '7428059960', '2025-04-30 12:54:37', '2025-04-30 12:54:37'),
(294, NULL, '4350', 2, 1, 1, '7428059960', '2025-04-30 13:07:40', '2025-04-30 13:07:40'),
(295, NULL, '9658', 2, 1, 1, '8287976642', '2025-04-30 13:28:06', '2025-04-30 13:28:06'),
(296, NULL, '2845', 1, 1, 1, '8287976642', '2025-04-30 13:28:58', '2025-04-30 13:28:58'),
(297, NULL, '1653', 2, 1, 1, '8287976642', '2025-04-30 13:29:35', '2025-04-30 13:29:35'),
(298, NULL, '5603', 2, 1, 1, '8700682075', '2025-04-30 13:59:16', '2025-04-30 13:59:16'),
(299, NULL, '2063', 2, 1, 1, '7428059960', '2025-04-30 14:00:19', '2025-04-30 14:00:19'),
(300, NULL, '8924', 1, 1, 1, '8287976642', '2025-04-30 14:22:14', '2025-04-30 14:22:14'),
(301, NULL, '7808', 1, 1, 1, '7428059960', '2025-04-30 14:22:30', '2025-04-30 14:22:30'),
(302, NULL, '9179', 2, 1, 1, '8287976642', '2025-04-30 14:22:47', '2025-04-30 14:22:47'),
(303, NULL, '8663', 2, 1, 1, '8287976642', '2025-04-30 14:26:32', '2025-04-30 14:26:32'),
(304, NULL, '6200', 2, 1, 1, '8700682075', '2025-04-30 14:29:48', '2025-04-30 14:29:48'),
(305, NULL, '9475', 2, 1, 1, '8287976642', '2025-04-30 14:32:51', '2025-04-30 14:32:51'),
(306, NULL, '5456', 2, 1, 1, '8700682075', '2025-04-30 14:35:37', '2025-04-30 14:35:37'),
(307, NULL, '8549', 2, 1, 1, '8700682075', '2025-04-30 15:11:43', '2025-04-30 15:11:43'),
(308, NULL, '5310', 2, 1, 1, '7017891844', '2025-04-30 15:20:46', '2025-04-30 15:20:46'),
(309, NULL, '5866', 1, 1, 1, '7017891844', '2025-04-30 15:21:19', '2025-04-30 15:21:19'),
(310, NULL, '9051', 2, 1, 1, '8588840003', '2025-05-01 05:54:51', '2025-05-01 05:54:51'),
(311, NULL, '9050', 2, 1, 1, '8700682075', '2025-05-01 06:34:53', '2025-05-01 06:34:53'),
(312, NULL, '6531', 2, 1, 1, '8700682075', '2025-05-01 07:54:51', '2025-05-01 07:54:51'),
(313, NULL, '7935', 2, 1, 1, '8700682075', '2025-05-01 07:59:09', '2025-05-01 07:59:09'),
(314, NULL, '1088', 2, 1, 1, '8700682075', '2025-05-01 08:11:43', '2025-05-01 08:11:43'),
(315, NULL, '9560', 2, 1, 1, '8700682075', '2025-05-01 08:13:22', '2025-05-01 08:13:22'),
(316, NULL, '5224', 2, 1, 1, '8700682075', '2025-05-01 08:26:24', '2025-05-01 08:26:24'),
(317, NULL, '7254', 2, 1, 1, '7428059960', '2025-05-01 08:43:52', '2025-05-01 08:43:52'),
(318, NULL, '3674', 2, 1, 1, '8700682075', '2025-05-01 08:45:05', '2025-05-01 08:45:05'),
(319, NULL, '1997', 2, 1, 1, '9516667966', '2025-05-01 08:46:10', '2025-05-01 08:46:10'),
(320, NULL, '6007', 2, 1, 1, '9516667966', '2025-05-01 08:48:06', '2025-05-01 08:48:06'),
(321, NULL, '5885', 2, 1, 1, '9516667966', '2025-05-01 08:51:31', '2025-05-01 08:51:31'),
(322, NULL, '2102', 2, 1, 1, '7428059961', '2025-05-01 09:00:52', '2025-05-01 09:00:52'),
(323, NULL, '8116', 2, 1, 1, '8700682075', '2025-05-01 10:08:42', '2025-05-01 10:08:42'),
(324, NULL, '8575', 2, 1, 1, '7428059961', '2025-05-01 10:11:02', '2025-05-01 10:11:02'),
(325, NULL, '7620', 2, 1, 1, '9999925599', '2025-05-01 10:51:55', '2025-05-01 10:51:55'),
(326, NULL, '5945', 2, 1, 1, '8700682075', '2025-05-01 11:45:06', '2025-05-01 11:45:06'),
(327, NULL, '2573', 2, 1, 1, '8287976642', '2025-05-01 12:39:53', '2025-05-01 12:39:53'),
(328, NULL, '5986', 2, 1, 1, '8287976642', '2025-05-01 12:43:16', '2025-05-01 12:43:16'),
(329, NULL, '7890', 2, 1, 1, '8287976642', '2025-05-01 12:47:42', '2025-05-01 12:47:42'),
(330, NULL, '8487', 2, 1, 1, '8700682075', '2025-05-03 11:36:56', '2025-05-03 11:36:56'),
(331, NULL, '9474', 2, 1, 1, '8287976642', '2025-05-06 10:37:55', '2025-05-06 10:37:55'),
(332, NULL, '9363', 2, 1, 1, '8700682075', '2025-05-06 10:41:38', '2025-05-06 10:41:38'),
(333, NULL, '2210', 2, 1, 1, '8700682075', '2025-05-06 10:46:20', '2025-05-06 10:46:20'),
(334, NULL, '3264', 2, 1, 1, '8700682075', '2025-05-06 10:58:39', '2025-05-06 10:58:39'),
(335, NULL, '8209', 2, 1, 1, '8700682075', '2025-05-06 10:58:40', '2025-05-06 10:58:40'),
(336, NULL, '5222', 1, 1, 1, '8700682075', '2025-05-06 10:59:22', '2025-05-06 10:59:22'),
(337, NULL, '3879', 2, 1, 1, '7428059960', '2025-05-06 11:01:57', '2025-05-06 11:01:57'),
(338, NULL, '9578', 1, 1, 1, '7428059960', '2025-05-06 11:28:04', '2025-05-06 11:28:04'),
(339, NULL, '9888', 1, 1, 1, '7428059960', '2025-05-06 11:28:04', '2025-05-06 11:28:04'),
(340, NULL, '6167', 1, 1, 1, '7428059960', '2025-05-06 11:28:04', '2025-05-06 11:28:04'),
(341, NULL, '9903', 1, 1, 1, '7428059960', '2025-05-06 11:28:04', '2025-05-06 11:28:04'),
(342, NULL, '2304', 2, 1, 1, '7428059960', '2025-05-06 11:28:04', '2025-05-06 11:28:04'),
(343, NULL, '4392', 1, 1, 1, '7428059960', '2025-05-06 11:28:04', '2025-05-06 11:28:04'),
(344, NULL, '9358', 1, 1, 1, '7428059960', '2025-05-06 11:28:04', '2025-05-06 11:28:04'),
(345, NULL, '2488', 1, 1, 1, '7428059960', '2025-05-06 11:28:04', '2025-05-06 11:28:04'),
(346, NULL, '7863', 1, 1, 1, '7428059960', '2025-05-06 11:28:04', '2025-05-06 11:28:04'),
(347, NULL, '4008', 1, 1, 1, '7428059960', '2025-05-06 11:28:04', '2025-05-06 11:28:04'),
(348, NULL, '1018', 2, 1, 1, '8700682075', '2025-05-07 05:55:43', '2025-05-07 05:55:43'),
(349, NULL, '1503', 2, 1, 1, '8700682075', '2025-05-07 05:57:10', '2025-05-07 05:57:10'),
(350, NULL, '1088', 2, 1, 1, '8130327513', '2025-05-23 13:32:04', '2025-05-23 13:32:04'),
(351, NULL, '8433', 1, 1, 1, '9090133132', '2025-05-23 13:40:07', '2025-05-23 13:40:07'),
(352, NULL, '9041', 2, 1, 1, '9090133132', '2025-05-23 13:40:07', '2025-05-23 13:40:07'),
(353, NULL, '5810', 1, 1, 1, '8130327771', '2025-05-23 13:43:17', '2025-05-23 13:43:17'),
(354, NULL, '1801', 1, 1, 1, '8130327771', '2025-05-23 13:43:34', '2025-05-23 13:43:34'),
(355, NULL, '3030', 1, 1, 1, '8130327771', '2025-05-23 13:43:55', '2025-05-23 13:43:55'),
(356, NULL, '8314', 1, 1, 1, '8130327771', '2025-05-23 13:44:00', '2025-05-23 13:44:00'),
(357, NULL, '4172', 1, 1, 1, '8130327771', '2025-05-23 13:44:29', '2025-05-23 13:44:29'),
(358, NULL, '5444', 1, 1, 1, '8130327771', '2025-05-23 13:45:04', '2025-05-23 13:45:04'),
(359, NULL, '9217', 2, 1, 1, '8130327513', '2025-05-23 13:45:18', '2025-05-23 13:45:18'),
(360, NULL, '7510', 1, 1, 1, '8130327771', '2025-05-23 13:47:41', '2025-05-23 13:47:41'),
(361, NULL, '9520', 2, 1, 1, '8130327515', '2025-05-23 13:48:34', '2025-05-23 13:48:34'),
(362, NULL, '1945', 2, 1, 1, '8130327513', '2025-06-10 14:19:33', '2025-06-10 14:19:33'),
(363, NULL, '9551', 2, 1, 1, '9945072035', '2025-06-13 07:20:48', '2025-06-13 07:20:48'),
(364, NULL, '5351', 2, 1, 1, '9811115650', '2025-06-15 15:05:42', '2025-06-15 15:05:42'),
(365, NULL, '9494', 2, 1, 1, '8789217309', '2025-06-19 06:33:30', '2025-06-19 06:33:30'),
(366, NULL, '7004', 1, 1, 1, '8454047252', '2025-07-06 10:19:54', '2025-07-06 10:19:54'),
(367, NULL, '5169', 1, 1, 1, '8454047252', '2025-07-06 10:20:14', '2025-07-06 10:20:14'),
(368, NULL, '8175', 1, 1, 1, '9958299467', '2025-07-09 00:44:27', '2025-07-09 00:44:27'),
(369, NULL, '7478', 1, 1, 1, '9958299467', '2025-07-09 00:45:02', '2025-07-09 00:45:02'),
(370, NULL, '3401', 1, 1, 1, '8692029721', '2025-07-18 06:16:51', '2025-07-18 06:16:51'),
(371, NULL, '3872', 1, 1, 1, '8692029721', '2025-07-18 06:18:25', '2025-07-18 06:18:25'),
(372, NULL, '3462', 1, 1, 1, '6358944973', '2025-07-28 12:34:04', '2025-07-28 12:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet_bookings`
--

CREATE TABLE `tbl_pet_bookings` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `pet_id` int NOT NULL,
  `booking_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `booking_time` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Delted',
  `booking_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending,2-Confirmed,3-Cancelled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pet_bookings`
--

INSERT INTO `tbl_pet_bookings` (`id`, `customer_id`, `pet_id`, `booking_date`, `booking_time`, `description`, `status`, `booking_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '20-11-2024', '10:20 PM', 'Test', 1, 3, '2024-11-20 12:44:56', '2024-11-20 12:44:56'),
(2, 1, 6, '20-11-2024', '10:20 PM', NULL, 1, 1, '2024-11-20 12:45:01', '2024-11-20 12:45:01'),
(3, 1, 5, '20-11-2024', '10:20 PM', NULL, 1, 1, '2024-11-20 13:06:36', '2024-11-20 13:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token`
--

CREATE TABLE `tbl_token` (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Expire',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_token`
--

INSERT INTO `tbl_token` (`id`, `user_id`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzY5NDI0ODgsImV4cCI6MzYxNzM2OTQyNDg4fQ.t16M4ZiR5kfH8qsDr5mkqoXCgge9QzZDluGMvuV8AzQ', 2, '2025-01-15 12:01:28', '2025-01-15 12:58:05'),
(2, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzY5NDU4ODUsImV4cCI6MzYxNzM2OTQ1ODg1fQ.rZWejEmMQEqhPbLKackJmik8wjM925wYr77JX76J1U4', 2, '2025-01-15 12:58:05', '2025-01-15 13:53:28'),
(3, 64, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjY0LCJpYXQiOjE3MzY5NDc4ODMsImV4cCI6MzYxNzM2OTQ3ODgzfQ.T0bAr8_-992K60kGcN8gMRXwvGS3Zlg_oNWG8ZARsE4', 1, '2025-01-15 13:31:23', '2025-01-15 13:31:23'),
(4, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzY5NDkyMDgsImV4cCI6MzYxNzM2OTQ5MjA4fQ.fuc63AGhmyM5N0NLMrmU2vEWrcQwU0V6L5gjYR5iRNo', 2, '2025-01-15 13:53:28', '2025-01-15 17:37:14'),
(5, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzY5NjI2MzQsImV4cCI6MzYxNzM2OTYyNjM0fQ.-7uJRVK8ADmuz75t9IzviyLuYhv6K9oj9O6THekEgNA', 2, '2025-01-15 17:37:14', '2025-01-16 09:16:37'),
(6, 65, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjY1LCJpYXQiOjE3MzcwMDI4NTIsImV4cCI6MzYxNzM3MDAyODUyfQ.LK1uVcZWQ4IKQXA5CTOaMbvR0msn0WRiVDvDzXB7F3I', 2, '2025-01-16 04:47:32', '2025-01-21 06:56:14'),
(7, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzcwMTg5OTcsImV4cCI6MzYxNzM3MDE4OTk3fQ.2EIIyti5XS9Fqhm-ljJ6GFVt_cLKuaE-I6Q0UfFj_wk', 2, '2025-01-16 09:16:37', '2025-01-16 09:29:47'),
(8, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzcwMTk3ODcsImV4cCI6MzYxNzM3MDE5Nzg3fQ.25GtMeTawK4DUWTIAxxW9vmtO9_fOFGuz2wSrgDgV44', 2, '2025-01-16 09:29:47', '2025-01-16 09:31:16'),
(9, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzcwMjEzMzMsImV4cCI6MzYxNzM3MDIxMzMzfQ.V_4AqRUgyx_UlVLrQTRbVVB5t4O4CP0ua4fsFUC2Q5E', 2, '2025-01-16 09:55:33', '2025-01-18 12:12:27'),
(10, 66, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjY2LCJpYXQiOjE3MzcwMjEzNzQsImV4cCI6MzYxNzM3MDIxMzc0fQ.J2hGCi_cgb87UYKe8wJ0cXBK56swmi-r0BI4u2jGkE4', 1, '2025-01-16 09:56:14', '2025-01-16 09:56:14'),
(11, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzcyMDIzNDcsImV4cCI6MzYxNzM3MjAyMzQ3fQ.gfAKrrR8kDRDSIsAfqDyywp3j4JG12FueBQhXeQjwQs', 2, '2025-01-18 12:12:27', '2025-01-19 09:16:11'),
(12, 67, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjY3LCJpYXQiOjE3MzcyNzAwODUsImV4cCI6MzYxNzM3MjcwMDg1fQ.a3H9q4nXH2ZXY71jV5j29VNLBKmsgF055BmGbGEtTbU', 1, '2025-01-19 07:01:25', '2025-01-19 07:01:25'),
(13, 68, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjY4LCJpYXQiOjE3MzcyNzEwNjAsImV4cCI6MzYxNzM3MjcxMDYwfQ.KIBiXOWsHTs5MQos0TRk-aqZKmzDMKQWBCMv8_729Q0', 1, '2025-01-19 07:17:40', '2025-01-19 07:17:40'),
(14, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzcyNzgxNzEsImV4cCI6MzYxNzM3Mjc4MTcxfQ.ApIDLrRmWfN6qW01GOaM16gIP1qrlbqUarY46zgfiXI', 2, '2025-01-19 09:16:11', '2025-01-19 11:04:24'),
(15, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzcyODQ2NjQsImV4cCI6MzYxNzM3Mjg0NjY0fQ.Ui2G_gD2dIOhhCfzPBIjHlENaDGse8YwcI-6WkKOU6Q', 2, '2025-01-19 11:04:24', '2025-01-20 07:57:30'),
(16, 69, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjY5LCJpYXQiOjE3MzczNTk3OTMsImV4cCI6MzYxNzM3MzU5NzkzfQ.KN7oMM57MMhp0bLyNjVgCo95qQq7rLWnMmc5nIHxo30', 1, '2025-01-20 07:56:33', '2025-01-20 07:56:33'),
(17, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3MzczNTk4NTAsImV4cCI6MzYxNzM3MzU5ODUwfQ.LWngLqXoIXbveLRis-0OGHWMP1U1hVDGxbrPvc6tcNQ', 2, '2025-01-20 07:57:30', '2025-01-21 09:17:45'),
(18, 65, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjY1LCJpYXQiOjE3Mzc0NDI3NjgsImV4cCI6MzYxNzM3NDQyNzY4fQ.LySjl5LwXBzhOpp0N4kj4r5V5JtiYiqg2-pNXRoGPkM', 1, '2025-01-21 06:59:28', '2025-01-21 06:59:28'),
(19, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3Mzc0NTEwNjUsImV4cCI6MzYxNzM3NDUxMDY1fQ.rkyUWyp8aCU0wD2l_NMeKpPzK0JHa-mu4ZkoVdhH3H0', 2, '2025-01-21 09:17:45', '2025-01-21 09:20:08'),
(20, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3Mzc0NTEyMDgsImV4cCI6MzYxNzM3NDUxMjA4fQ._evMiYJvz-2Zx_GQhc-dr1UxEs0mKCRTgvrIki1n-tE', 2, '2025-01-21 09:20:08', '2025-02-26 09:23:31'),
(21, 70, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjcwLCJpYXQiOjE3Mzc0NTMyMjIsImV4cCI6MzYxNzM3NDUzMjIyfQ.K4vqJ1PZRjvvyQatcgWoSD949CupTtpAW0QVnstK-KE', 1, '2025-01-21 09:53:42', '2025-01-21 09:53:42'),
(22, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDA1NjE4MTEsImV4cCI6MzYxNzQwNTYxODExfQ.u06i3sjbzi8soUE9sHQHnKUg7f_mAcbxZN0PkTLIFHU', 2, '2025-02-26 09:23:31', '2025-02-26 11:11:00'),
(23, 71, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjcxLCJpYXQiOjE3NDA1NjM0NzUsImV4cCI6MzYxNzQwNTYzNDc1fQ.O1QZEjD_zRI1WiCJu_PjHVZ3J-BqvTkOXhX75ytMgRw', 2, '2025-02-26 09:51:15', '2025-02-26 11:10:23'),
(24, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDA1NjgyNjAsImV4cCI6MzYxNzQwNTY4MjYwfQ.k5IsCDMptjX0VzAj8b6DFDh2HliFKJ01DoawYqRejso', 2, '2025-02-26 11:11:00', '2025-02-26 11:15:14'),
(25, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDA1Njg1MTQsImV4cCI6MzYxNzQwNTY4NTE0fQ.Loy2iP7U0I7zoJ2RXEo5Kn_0cm5XIzfy0A2CqQ8n8Ac', 2, '2025-02-26 11:15:14', '2025-02-27 08:27:48'),
(26, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDA2NDQ4NjgsImV4cCI6MzYxNzQwNjQ0ODY4fQ.qpikZFAmWnIhA2iUypuEMJzFvFiAEJZhX8TkDFj6J6c', 2, '2025-02-27 08:27:48', '2025-03-05 08:42:37'),
(27, 72, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjcyLCJpYXQiOjE3NDA2NDQ5NTAsImV4cCI6MzYxNzQwNjQ0OTUwfQ.8pRyxqYduSBcqKERvjcWKcg-aLQHuRJ89kZRPpoCOxY', 1, '2025-02-27 08:29:10', '2025-02-27 08:29:10'),
(28, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDExNTQ4MjMsImV4cCI6MzYxNzQxMTU0ODIzfQ.UCttf-HD1hEa6RU-1VEdoU6Yn9S3qAZ6lnh2ftds3DE', 2, '2025-03-05 06:07:03', '2025-03-14 13:22:20'),
(29, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDExNjQxNTcsImV4cCI6MzYxNzQxMTY0MTU3fQ.kn8-q1oC3IMBFGVmare4KSwtgKBl5gIIlSzEIsi5JRM', 2, '2025-03-05 08:42:37', '2025-04-07 10:56:24'),
(30, 74, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjc0LCJpYXQiOjE3NDExNzg1NzQsImV4cCI6MzYxNzQxMTc4NTc0fQ.vf1gDthhKDOJv9OxtC4jLUAstmj5zu7HUGPlktw-fyg', 1, '2025-03-05 12:42:54', '2025-03-05 12:42:54'),
(31, 75, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjc1LCJpYXQiOjE3NDE1ODY0NTgsImV4cCI6MzYxNzQxNTg2NDU4fQ.5F7qHxfkTsm9dDB78Vd_b_ZDdQPKhguMEWBPQO-TzM0', 1, '2025-03-10 06:00:58', '2025-03-10 06:00:58'),
(32, 76, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjc2LCJpYXQiOjE3NDIyOTEyNjIsImV4cCI6MzYxNzQyMjkxMjYyfQ.ZxgHnQcCHt3v3p_hoFkOle3jOu6jeyoOARQPQ77B3Uc', 1, '2025-03-18 09:47:42', '2025-03-18 09:47:42'),
(33, 77, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjc3LCJpYXQiOjE3NDI2MjgzMTYsImV4cCI6MzYxNzQyNjI4MzE2fQ.JuuOZl2__PdaJSLo2MS5n1eG7ccCSLA-rHTbPSK4bM8', 1, '2025-03-22 07:25:16', '2025-03-22 07:25:16'),
(34, 78, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjc4LCJpYXQiOjE3NDM3ODg0ODEsImV4cCI6MzYxNzQzNzg4NDgxfQ.SEKszv-S5gV1iBFjZr2F-10N-GQDD3fbPZ2P6YA1IZI', 1, '2025-04-04 17:41:21', '2025-04-04 17:41:21'),
(35, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDQwMjMzODQsImV4cCI6MzYxNzQ0MDIzMzg0fQ.bW_gkzcJ8iQzj__rT5umaS4pTzhea3DvRt81Chx0fHI', 2, '2025-04-07 10:56:24', '2025-04-07 11:07:36'),
(36, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDQwMjQwODQsImV4cCI6MzYxNzQ0MDI0MDg0fQ.BH3iTK9nA2RSqc_3utQqizLYBl0SFK7x0yI5TFmP5U4', 2, '2025-04-07 11:08:04', '2025-04-28 06:26:22'),
(37, 79, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjc5LCJpYXQiOjE3NDQ2MTAwNzgsImV4cCI6MzYxNzQ0NjEwMDc4fQ.eGEAgWDcubI9VZr14dnY12u4EDM1Knmyyl5FHhPcYOQ', 1, '2025-04-14 05:54:38', '2025-04-14 05:54:38'),
(38, 80, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjgwLCJpYXQiOjE3NDQ2NTM1NjksImV4cCI6MzYxNzQ0NjUzNTY5fQ.tuExpa0DjfjsvjTBbTOvR-nXLxla8rKIgUM8xYk2Rk8', 1, '2025-04-14 17:59:29', '2025-04-14 17:59:29'),
(39, 81, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjgxLCJpYXQiOjE3NDUyOTMzNzksImV4cCI6MzYxNzQ1MjkzMzc5fQ.7Zuc7BRygzUHGwBM67GxZ4If0pDY8IBiwz-dIcRxsyU', 1, '2025-04-22 03:42:59', '2025-04-22 03:42:59'),
(40, 82, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjgyLCJpYXQiOjE3NDUyOTQ2NDcsImV4cCI6MzYxNzQ1Mjk0NjQ3fQ.rCoRvlgBMkvOo6OPjOuD2XZDXKDB6GLLrJyiOfJ0rt0', 1, '2025-04-22 04:04:07', '2025-04-22 04:04:07'),
(41, 83, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjgzLCJpYXQiOjE3NDUzMDAxNTcsImV4cCI6MzYxNzQ1MzAwMTU3fQ.tgkSwrjJh1O-gFRuaykWtXhgSJnnw6hOOU8ELVlf6qc', 1, '2025-04-22 05:35:57', '2025-04-22 05:35:57'),
(42, 84, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjg0LCJpYXQiOjE3NDUzMDAxOTgsImV4cCI6MzYxNzQ1MzAwMTk4fQ.tRYPKfA_WI8_l4gD4U36y2RDEuisZ6dpHN8hOENE_U8', 1, '2025-04-22 05:36:38', '2025-04-22 05:36:38'),
(43, 85, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjg1LCJpYXQiOjE3NDUzOTc0OTksImV4cCI6MzYxNzQ1Mzk3NDk5fQ.GcCJVfwMhnD0mxYg2YXuj6zqIWxEYaU8Rz82IsbCDQ4', 1, '2025-04-23 08:38:19', '2025-04-23 08:38:19'),
(44, 86, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjg2LCJpYXQiOjE3NDUzOTc5NDMsImV4cCI6MzYxNzQ1Mzk3OTQzfQ.9nJiNjM-IraBRrW7IZyjboH4la6QbuoSqFD85zhOJtU', 1, '2025-04-23 08:45:43', '2025-04-23 08:45:43'),
(45, 87, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjg3LCJpYXQiOjE3NDUzOTgzNzcsImV4cCI6MzYxNzQ1Mzk4Mzc3fQ.havdmtQwzKbNqYLyC31kUY1eIhHjRW64TYgo70eIrwU', 1, '2025-04-23 08:52:57', '2025-04-23 08:52:57'),
(46, 88, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjg4LCJpYXQiOjE3NDUzOTg5ODAsImV4cCI6MzYxNzQ1Mzk4OTgwfQ.euPuyr2_zgvriCqm8ekfJt44_09xQ9TRbOFBMNT1MVg', 1, '2025-04-23 09:03:00', '2025-04-23 09:03:00'),
(47, 89, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjg5LCJpYXQiOjE3NDU0MDI0MTYsImV4cCI6MzYxNzQ1NDAyNDE2fQ.pbe71QIcG-sn7pzfQu95H0VXxBMs5dhxdFJ-no-d2u4', 1, '2025-04-23 10:00:16', '2025-04-23 10:00:16'),
(48, 90, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjkwLCJpYXQiOjE3NDU0MTAxNzcsImV4cCI6MzYxNzQ1NDEwMTc3fQ.6K6w4lNFIiNN-z_UIuj5mJSPfmtzkVIllPDfTQlud_s', 1, '2025-04-23 12:09:37', '2025-04-23 12:09:37'),
(49, 91, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjkxLCJpYXQiOjE3NDU0ODc5NzIsImV4cCI6MzYxNzQ1NDg3OTcyfQ.lBI6hiM3xAH5AlU4iwLE5oFM5JSjjgg-REIHjUJSDDA', 1, '2025-04-24 09:46:12', '2025-04-24 09:46:12'),
(50, 92, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjkyLCJpYXQiOjE3NDU2NTEzNjIsImV4cCI6MzYxNzQ1NjUxMzYyfQ.QR1xlwNY5ODH9q427cIu_wQNC4TLq4ZIwqSDPMRqik0', 1, '2025-04-26 07:09:22', '2025-04-26 07:09:22'),
(51, 93, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjkzLCJpYXQiOjE3NDU3Nzc1NTEsImV4cCI6MzYxNzQ1Nzc3NTUxfQ.xeCH-m5j0mkZGsvo3lKw02L5E6ZWb1uso6jhktb-3PE', 1, '2025-04-27 18:12:31', '2025-04-27 18:12:31'),
(52, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDU4MjE1ODIsImV4cCI6MzYxNzQ1ODIxNTgyfQ.CkF4_xAjcoupeAm5rQgNbSDLXjb5pNyJp0mPltM1yT4', 2, '2025-04-28 06:26:22', '2025-04-30 13:28:17'),
(53, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDU4MjQyNjYsImV4cCI6MzYxNzQ1ODI0MjY2fQ.Ua5G8Epx2Za8w2YJ67hM2zqAUtZ_ekMU1k0nR4tZWU4', 2, '2025-04-28 07:11:06', '2025-04-28 11:14:52'),
(54, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDU4Mzg4OTIsImV4cCI6MzYxNzQ1ODM4ODkyfQ.hH_-EL5o9FcEvHoKfVQFfr44VuEgxKohelD3NL4QfIw', 2, '2025-04-28 11:14:52', '2025-04-30 12:52:10'),
(55, 94, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjk0LCJpYXQiOjE3NDYwMDE0NDUsImV4cCI6MzYxNzQ2MDAxNDQ1fQ.74I5wuzdpupGWU7usc0EEcH7lwGgePmKQZ65sT5kL3Q', 1, '2025-04-30 08:24:05', '2025-04-30 08:24:05'),
(56, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwMTc1MzAsImV4cCI6MzYxNzQ2MDE3NTMwfQ.4hf0hbeWoFaNXnLjk772U2m2D9RnM3H_j-GMGJk82-Y', 2, '2025-04-30 12:52:10', '2025-04-30 13:59:28'),
(57, 71, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjcxLCJpYXQiOjE3NDYwMTc4NTAsImV4cCI6MzYxNzQ2MDE3ODUwfQ.pjpYsdDJ3A-ApkXxJy81bG0Lqkfl_m3D03C8K96SvDw', 2, '2025-04-30 12:57:30', '2025-04-30 13:08:41'),
(58, 71, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjcxLCJpYXQiOjE3NDYwMTg1MjEsImV4cCI6MzYxNzQ2MDE4NTIxfQ.GPDbZ3SZwm92OzQjYg3ZoW-GU9_Z1__I01JUlZUAYSk', 2, '2025-04-30 13:08:41', '2025-04-30 14:00:41'),
(59, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDYwMTk2OTcsImV4cCI6MzYxNzQ2MDE5Njk3fQ.VJZIB_XfXC1FWuEsoeSzvaPmKxVBNEFxf3BL36pyzUE', 2, '2025-04-30 13:28:17', '2025-04-30 13:29:47'),
(60, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDYwMTk3ODcsImV4cCI6MzYxNzQ2MDE5Nzg3fQ.uAeMu_NFtw05fNudoUvkAcAoEfYCwTj0hP94QEbvLmw', 2, '2025-04-30 13:29:47', '2025-04-30 14:23:00'),
(61, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwMjE1NjgsImV4cCI6MzYxNzQ2MDIxNTY4fQ.RzHM16sbNcOiwJO-kAxa8ZMSsqGFm44bofqc9kX1nbg', 2, '2025-04-30 13:59:28', '2025-04-30 13:59:37'),
(62, 71, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjcxLCJpYXQiOjE3NDYwMjE2NDEsImV4cCI6MzYxNzQ2MDIxNjQxfQ.KlQMaES39LgHEmN4g4CSNySMapnVa1BwaCeoEBftoW0', 2, '2025-04-30 14:00:41', '2025-05-01 08:44:32'),
(63, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDYwMjI5ODAsImV4cCI6MzYxNzQ2MDIyOTgwfQ.5mT64ooXGwZMfxzhd7GOUvdme7DdSr8pHcLhwUsaEMs', 2, '2025-04-30 14:23:00', '2025-04-30 14:26:40'),
(64, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDYwMjMyMDAsImV4cCI6MzYxNzQ2MDIzMjAwfQ.l_8C3GlD-bP2IIMM6Sa1Qb2bLiduT7NqIOUTAqKzIg4', 2, '2025-04-30 14:26:40', '2025-04-30 14:33:05'),
(65, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwMjMzOTksImV4cCI6MzYxNzQ2MDIzMzk5fQ.ilFeQPrJqpWHZ9n_jS-NXHXh2H0E02sQCk8eZbtC3zg', 2, '2025-04-30 14:29:59', '2025-04-30 14:32:33'),
(66, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDYwMjM1ODUsImV4cCI6MzYxNzQ2MDIzNTg1fQ.MStMEPlkxwt_LAPgzuZ1CzhXpkkjVj6rXiCxmLD3hx0', 2, '2025-04-30 14:33:05', '2025-04-30 14:35:17'),
(67, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwMjM3OTgsImV4cCI6MzYxNzQ2MDIzNzk4fQ.2XRLA6I01ltW5vAPyl0TbatpJM5eSfeVl0hYigVRp3g', 2, '2025-04-30 14:36:38', '2025-04-30 15:11:57'),
(68, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwMjU5MTcsImV4cCI6MzYxNzQ2MDI1OTE3fQ.Zq1vQMgtnRsQaBLHOEqouWrg1PC4O9NB6tOQeheuVGw', 2, '2025-04-30 15:11:57', '2025-04-30 15:20:21'),
(69, 95, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjk1LCJpYXQiOjE3NDYwMjY0ODAsImV4cCI6MzYxNzQ2MDI2NDgwfQ.hqk3KHIDRiyzyesPHczMxD4dMMvIT4QjZiEQdA70bJY', 1, '2025-04-30 15:21:20', '2025-04-30 15:21:20'),
(70, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjk2LCJpYXQiOjE3NDYwNzg5MDYsImV4cCI6MzYxNzQ2MDc4OTA2fQ.hn8UcnN1X0pcGEX7f2bOjaPmIZNxFEc4PtK4NtMubRk', 1, '2025-05-01 05:55:06', '2025-05-01 05:55:06'),
(71, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwODE3NTMsImV4cCI6MzYxNzQ2MDgxNzUzfQ.33MKsiyKiKYMgtqFexiecAeXyS-tiCxFFBblgTTMrZA', 2, '2025-05-01 06:42:33', '2025-05-01 07:55:04'),
(72, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwODYxMDQsImV4cCI6MzYxNzQ2MDg2MTA0fQ.HUDkGsvrL1eGdni4YhklXhT9Y81osjL4rkdt2mriRvM', 2, '2025-05-01 07:55:04', '2025-05-01 07:59:21'),
(73, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwODYzNjEsImV4cCI6MzYxNzQ2MDg2MzYxfQ.2y2Qv9rJ_ZdEfe6DZbFXFvTkHUoJYn7m8zsh9TMsIMw', 2, '2025-05-01 07:59:21', '2025-05-01 08:11:57'),
(74, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwODcxMTcsImV4cCI6MzYxNzQ2MDg3MTE3fQ.Trxu1QV3e5t9jQXri35qGhuBxG6aU5DlyrfTrb1t6VM', 2, '2025-05-01 08:11:57', '2025-05-01 08:13:33'),
(75, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwODcyMTMsImV4cCI6MzYxNzQ2MDg3MjEzfQ.aiMGmXtvp27ZJr9J1t1bnTzq6Q_AhSAG6vSBMTZbQ6w', 2, '2025-05-01 08:13:33', '2025-05-01 08:26:35'),
(76, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwODc5OTUsImV4cCI6MzYxNzQ2MDg3OTk1fQ.r7Es1lkhp_4_m7uLaSLXlLWtSHxOVkDmkPvriFybGWM', 2, '2025-05-01 08:26:35', '2025-05-01 08:43:19'),
(77, 71, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjcxLCJpYXQiOjE3NDYwODkwNzIsImV4cCI6MzYxNzQ2MDg5MDcyfQ.oUbxiPr3r678MHMDHlG9O9UjvHmiv-G4AQVc5-4EpSE', 2, '2025-05-01 08:44:32', '2025-05-01 08:44:54'),
(78, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwODkxMTcsImV4cCI6MzYxNzQ2MDg5MTE3fQ.rUbA0eRdXnNB-LpZNgtWoOnnbEzSYwI2O3xd3l5cWaQ', 2, '2025-05-01 08:45:17', '2025-05-01 08:45:37'),
(79, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjk3LCJpYXQiOjE3NDYwODkyMTYsImV4cCI6MzYxNzQ2MDg5MjE2fQ.TgPmdP1jiqG7JzhDBnqm3yBTTWhU6m4Z9ZdKXPIUi-A', 2, '2025-05-01 08:46:56', '2025-05-01 08:48:26'),
(80, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjk3LCJpYXQiOjE3NDYwODkzMDYsImV4cCI6MzYxNzQ2MDg5MzA2fQ.KiO0A0TniFTKw9VlkhSUoIk-jSa8BF3_DrDYjEWWXuE', 2, '2025-05-01 08:48:26', '2025-05-01 08:51:40'),
(81, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjk3LCJpYXQiOjE3NDYwODk1MDAsImV4cCI6MzYxNzQ2MDg5NTAwfQ.kaRaDBXX8pfsZgIR9miJS7AuTv09kk2uTOZkfpEFJjw', 1, '2025-05-01 08:51:40', '2025-05-01 08:51:40'),
(82, 98, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjk4LCJpYXQiOjE3NDYwOTAwNjYsImV4cCI6MzYxNzQ2MDkwMDY2fQ.qeoT43X3p28GlyDAWDEG1LnWYIuLn1l5GyuJgqmBC0c', 2, '2025-05-01 09:01:06', '2025-05-01 10:11:16'),
(83, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwOTQxNDgsImV4cCI6MzYxNzQ2MDk0MTQ4fQ.4q9y-UNUUrkVupX6q390pQOQTV7fZEsbH4koeExdMsg', 2, '2025-05-01 10:09:08', '2025-05-01 10:09:33'),
(84, 98, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjk4LCJpYXQiOjE3NDYwOTQyNzYsImV4cCI6MzYxNzQ2MDk0Mjc2fQ.jlto3Y6HQWPrI6rgNEvkO1TZZa5yds8Jf1fV3-ybRc0', 2, '2025-05-01 10:11:16', '2025-05-01 10:49:07'),
(85, 99, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjk5LCJpYXQiOjE3NDYwOTY3NDksImV4cCI6MzYxNzQ2MDk2NzQ5fQ.zsqmujZvz7lwaXosXG6Zt4HOrfHGi7_uB0nvG6Unvws', 1, '2025-05-01 10:52:29', '2025-05-01 10:52:29'),
(86, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYwOTk5MjEsImV4cCI6MzYxNzQ2MDk5OTIxfQ.aGDy-tZxin2A2CnEK4WzhXc1B5oQDtuIbZR-wH2QMjQ', 2, '2025-05-01 11:45:21', '2025-05-03 11:37:10'),
(87, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDYxMDMyMTgsImV4cCI6MzYxNzQ2MTAzMjE4fQ.31knEsY7Wg16G6rzCwn--boLG19UliU4rDk62cuNkkA', 2, '2025-05-01 12:40:18', '2025-05-01 12:43:25'),
(88, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDYxMDM0MDUsImV4cCI6MzYxNzQ2MTAzNDA1fQ.IbqhUIDuK3RatrdqqNhrpfBGfzcBEqDvfOegK9H-7DI', 2, '2025-05-01 12:43:25', '2025-05-01 12:47:50'),
(89, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDYxMDM2NzAsImV4cCI6MzYxNzQ2MTAzNjcwfQ.2Tm3BA7_8bE2BCkZzNqGbD_Udqk2rieiQaLTiXYGi3U', 2, '2025-05-01 12:47:50', '2025-05-06 10:38:56'),
(90, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDYyNzIyMzAsImV4cCI6MzYxNzQ2MjcyMjMwfQ.yMinGKI4MrvxoT-hFL5y1yVw59O1PKg9qr3xhvyPfOE', 2, '2025-05-03 11:37:10', '2025-05-06 10:41:52'),
(91, 63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjYzLCJpYXQiOjE3NDY1Mjc5MzYsImV4cCI6MzYxNzQ2NTI3OTM2fQ.N38SYH0qtUplAdHlaLmbo9umR5uvDpfoucq8qOiUz_0', 1, '2025-05-06 10:38:56', '2025-05-06 10:38:56'),
(92, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDY1MjgxMTIsImV4cCI6MzYxNzQ2NTI4MTEyfQ.94EUwWDFV51HF9MEpKqPuRidLgnJmLT_rWAC1Otksfk', 2, '2025-05-06 10:41:52', '2025-05-06 10:46:34'),
(93, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDY1MjgzOTQsImV4cCI6MzYxNzQ2NTI4Mzk0fQ.ndrTNh6LAHFTgqpat8lLEC933IhKE_Huq4FsF-qLSYI', 2, '2025-05-06 10:46:34', '2025-05-06 10:58:56'),
(94, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDY1MjkxMzYsImV4cCI6MzYxNzQ2NTI5MTM2fQ.OaG5EHcP_EUb4EmXs7UeAf5of5Ob3VprmNFLS2QbHAI', 2, '2025-05-06 10:58:56', '2025-05-06 10:59:47'),
(95, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDY1MjkxODcsImV4cCI6MzYxNzQ2NTI5MTg3fQ.oAZ8V8erFNmfin8S803E3S23RdDewaPISulhSbgSpnY', 2, '2025-05-06 10:59:47', '2025-05-07 05:55:56'),
(96, 71, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjcxLCJpYXQiOjE3NDY1MjkzMzYsImV4cCI6MzYxNzQ2NTI5MzM2fQ.7X_jeFqjIKaBvXyN93fsUbvLItaCkn0EjwXIHj7X6TM', 2, '2025-05-06 11:02:16', '2025-05-06 11:28:34'),
(97, 71, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjcxLCJpYXQiOjE3NDY1MzA5MTQsImV4cCI6MzYxNzQ2NTMwOTE0fQ.OQ5I7-BNKb7RDIj8XeCXEmucZIf78-o_F3hqEFq9JAw', 1, '2025-05-06 11:28:34', '2025-05-06 11:28:34'),
(98, 73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjczLCJpYXQiOjE3NDY1OTczNTYsImV4cCI6MzYxNzQ2NTk3MzU2fQ.KHrduB4OvCbNf8TWyje1IE3TklVIthkpwtnDmk1Ah78', 1, '2025-05-07 05:55:56', '2025-05-07 05:55:56'),
(99, 100, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjEwMCwiaWF0IjoxNzQ2NTk3NDQ0LCJleHAiOjM2MTc0NjU5NzQ0NH0.XOTKZW_GytL25udR5HXICzzGDOfSMjphruoZTLUwRtY', 1, '2025-05-07 05:57:24', '2025-05-07 05:57:24'),
(100, 101, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjEwMSwiaWF0IjoxNzQ4MDA3MTM5LCJleHAiOjM2MTc0ODAwNzEzOX0.ReQNXAgLGnTKWKUXFktpItBp4aUc9TZIqihYkBG50Yg', 2, '2025-05-23 13:32:19', '2025-05-23 13:45:32'),
(101, 102, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjEwMiwiaWF0IjoxNzQ4MDA3NjM0LCJleHAiOjM2MTc0ODAwNzYzNH0.DAPEVOWitWUBJTIgZHveoYL90QlT7E8zDN26fcaTxcs', 1, '2025-05-23 13:40:34', '2025-05-23 13:40:34'),
(102, 101, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjEwMSwiaWF0IjoxNzQ4MDA3OTMyLCJleHAiOjM2MTc0ODAwNzkzMn0.yySN5IT7YGLGj1VvVvkteGOelr_3CiYIppkOpUd8ooM', 2, '2025-05-23 13:45:32', '2025-05-23 13:47:29'),
(103, 103, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjEwMywiaWF0IjoxNzQ4MDA4MTM1LCJleHAiOjM2MTc0ODAwODEzNX0.BpEMsaX666mHJSjra5Dq4lqaCT_Zs37FczTieu63is8', 1, '2025-05-23 13:48:55', '2025-05-23 13:48:55'),
(104, 101, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjEwMSwiaWF0IjoxNzQ5NTY1MTgzLCJleHAiOjM2MTc0OTU2NTE4M30.Xgs_1-K67TTqTabfBdcmmpEmnJD8O0pyUfLqOfheC8A', 1, '2025-06-10 14:19:43', '2025-06-10 14:19:43'),
(105, 104, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjEwNCwiaWF0IjoxNzQ5Nzk5MjYyLCJleHAiOjM2MTc0OTc5OTI2Mn0.WPRnhLuqhUX4YEUOOLVT2mxlhAPUbCvoew8kGPWWO44', 1, '2025-06-13 07:21:02', '2025-06-13 07:21:02'),
(106, 105, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjEwNSwiaWF0IjoxNzQ5OTk5OTU1LCJleHAiOjM2MTc0OTk5OTk1NX0.bv5r-QsPRgRjDpOPu4BlBeh5Yxj-CPROA1Gi_aSyjq0', 1, '2025-06-15 15:05:55', '2025-06-15 15:05:55'),
(107, 106, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ3VzdG9tZXIiLCJzdWIiOjEwNiwiaWF0IjoxNzUwMzE0ODQxLCJleHAiOjM2MTc1MDMxNDg0MX0.nnrfDDnag5Cpyt7ku0H5cWb6EH4YRELYA2ZiW2PfHQ0', 1, '2025-06-19 06:34:01', '2025-06-19 06:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id\r\n',
  `booking_id` int NOT NULL COMMENT 'bookings.id',
  `active_bank_id` int NOT NULL COMMENT 'banks.id',
  `amount` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `transaction_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending,2-Paid',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_transaction`
--

INSERT INTO `tbl_transaction` (`id`, `user_id`, `booking_id`, `active_bank_id`, `amount`, `file`, `transaction_status`, `created_at`, `updated_at`) VALUES
(1, 1, 57, 1, '', NULL, 1, '2024-12-27 12:41:03', ''),
(2, 1, 58, 1, '', NULL, 1, '2024-12-27 12:41:03', ''),
(3, 1, 59, 1, '', NULL, 1, '2024-12-27 12:41:03', ''),
(4, 48, 60, 1, '', NULL, 1, '2024-12-27 15:06:50', NULL),
(5, 48, 61, 1, '', NULL, 1, '2024-12-27 15:25:57', NULL),
(6, 43, 62, 1, '', NULL, 1, '2024-12-27 15:35:54', NULL),
(7, 48, 63, 1, '', NULL, 1, '2024-12-27 15:36:32', NULL),
(8, 48, 64, 1, '', NULL, 1, '2024-12-27 16:25:20', NULL),
(9, 43, 65, 1, '', NULL, 1, '2024-12-27 16:44:35', NULL),
(10, 43, 66, 1, '', NULL, 1, '2024-12-27 16:52:46', NULL),
(11, 43, 67, 1, '', NULL, 1, '2024-12-27 16:53:49', NULL),
(12, 43, 68, 1, '', NULL, 1, '2024-12-27 16:55:14', NULL),
(13, 43, 69, 1, '', NULL, 1, '2024-12-27 16:55:22', NULL),
(14, 43, 70, 1, '', NULL, 1, '2024-12-27 16:58:43', NULL),
(15, 43, 71, 1, '', NULL, 1, '2024-12-27 17:07:15', NULL),
(16, 48, 72, 1, '', NULL, 1, '2024-12-27 17:52:59', NULL),
(17, 48, 73, 1, '', NULL, 1, '2024-12-27 17:56:01', NULL),
(18, 48, 74, 1, '', NULL, 1, '2024-12-27 18:23:52', NULL),
(19, 43, 75, 1, '', NULL, 1, '2024-12-28 11:10:52', NULL),
(20, 49, 76, 1, '', NULL, 1, '2024-12-28 11:12:58', NULL),
(21, 48, 77, 1, '', NULL, 1, '2024-12-28 11:13:57', NULL),
(22, 50, 78, 1, '', NULL, 1, '2024-12-28 12:17:18', NULL),
(23, 50, 79, 1, '', NULL, 1, '2024-12-28 12:18:04', NULL),
(24, 43, 80, 1, '', NULL, 1, '2024-12-28 14:35:07', NULL),
(25, 43, 81, 1, '', NULL, 1, '2024-12-28 14:36:22', NULL),
(26, 43, 82, 1, '', NULL, 1, '2024-12-28 14:54:39', NULL),
(27, 43, 83, 1, '', NULL, 1, '2024-12-28 14:55:00', NULL),
(28, 43, 84, 1, '', NULL, 1, '2024-12-28 14:56:38', NULL),
(29, 43, 85, 1, '', NULL, 1, '2024-12-28 14:59:20', NULL),
(30, 43, 86, 1, '', NULL, 1, '2025-01-02 14:06:05', NULL),
(31, 43, 87, 1, '', NULL, 1, '2025-01-02 14:06:37', NULL),
(32, 43, 88, 1, '', NULL, 1, '2025-01-03 13:22:33', NULL),
(33, 43, 89, 1, '', NULL, 1, '2025-01-06 07:19:29', NULL),
(34, 50, 90, 1, '', NULL, 1, '2025-01-07 08:30:11', NULL),
(35, 50, 91, 1, '', NULL, 1, '2025-01-08 16:19:01', NULL),
(36, 43, 92, 1, '', NULL, 1, '2025-01-15 08:22:31', NULL),
(37, 43, 93, 1, '', NULL, 1, '2025-01-15 09:16:04', NULL),
(38, 63, 94, 1, '', NULL, 1, '2025-01-15 13:11:04', NULL),
(39, 63, 95, 1, '', NULL, 1, '2025-01-15 13:12:58', NULL),
(40, 63, 96, 1, '', NULL, 1, '2025-01-15 13:13:55', NULL),
(41, 63, 97, 1, '', NULL, 1, '2025-01-15 13:14:13', NULL),
(42, 63, 98, 1, '', NULL, 1, '2025-01-15 13:14:39', NULL),
(43, 63, 99, 1, '', NULL, 1, '2025-01-15 13:16:08', NULL),
(44, 63, 100, 1, '', NULL, 1, '2025-01-15 14:08:20', NULL),
(45, 65, 101, 1, '', NULL, 1, '2025-01-16 06:54:09', NULL),
(46, 65, 102, 1, '', NULL, 1, '2025-01-16 06:56:35', NULL),
(47, 65, 103, 1, '', NULL, 1, '2025-01-16 06:57:05', NULL),
(48, 64, 104, 1, '', NULL, 1, '2025-01-16 07:15:03', NULL),
(49, 63, 105, 1, '', NULL, 1, '2025-01-16 09:29:59', NULL),
(50, 66, 106, 1, '5000', 'uploads/A6DOT8kpGfBUnjrm38LJKtBkuxOZ64VVviyjxkrU.pdf', 2, '2025-01-16 12:58:39', NULL),
(51, 65, 107, 1, '10000', 'uploads/4JFp7zLHz4MTSdxh2AmqzX22HxcV05HF6W0dANLp.png', 2, '2025-01-17 16:49:46', NULL),
(52, 68, 108, 1, '3000000', 'uploads/7flSGGhhnFovwmwr4PNFi2jnRfXwvuxqtvHwTL7Z.pdf', 2, '2025-01-19 09:17:59', NULL),
(53, 69, 109, 1, '3000', 'uploads/4Q3sNxNkM2CjMtZSNaJNZ0FvVBsT5pfJo9xZifHe.pdf', 2, '2025-01-20 07:57:01', NULL),
(54, 63, 110, 1, '30000', 'uploads/G1DGei5Rvsm6uAgNarCTyHPcQM2SiZG6t3fxTOWr.pdf', 2, '2025-01-20 10:29:56', NULL),
(55, 63, 111, 1, NULL, NULL, 1, '2025-01-20 10:45:34', NULL),
(56, 64, 112, 1, NULL, NULL, 1, '2025-01-21 06:42:27', NULL),
(57, 64, 113, 1, NULL, NULL, 1, '2025-01-21 06:44:47', NULL),
(58, 64, 114, 1, NULL, NULL, 1, '2025-01-21 06:47:32', NULL),
(59, 64, 115, 1, NULL, NULL, 1, '2025-01-21 06:47:53', NULL),
(60, 64, 116, 1, NULL, NULL, 1, '2025-01-21 06:57:34', NULL),
(61, 65, 117, 1, NULL, NULL, 1, '2025-01-21 06:59:49', NULL),
(62, 64, 118, 1, NULL, NULL, 1, '2025-01-21 07:32:59', NULL),
(63, 70, 119, 1, NULL, NULL, 1, '2025-01-21 09:54:25', NULL),
(64, 70, 120, 1, '400', 'uploads/x4RyoVIj9oHuc5usosccJa2HYTMusCcH4DN4z64d.pdf', 2, '2025-01-21 09:54:49', NULL),
(65, 70, 121, 1, NULL, NULL, 1, '2025-01-22 08:09:12', NULL),
(66, 70, 122, 1, NULL, NULL, 1, '2025-01-22 15:07:58', NULL),
(67, 70, 123, 1, NULL, NULL, 1, '2025-01-22 15:08:07', NULL),
(68, 70, 124, 1, NULL, NULL, 1, '2025-01-23 10:22:15', NULL),
(69, 70, 125, 1, NULL, NULL, 1, '2025-01-23 10:22:53', NULL),
(70, 70, 126, 1, NULL, NULL, 1, '2025-01-24 06:51:40', NULL),
(71, 70, 127, 1, NULL, NULL, 1, '2025-01-24 12:32:37', NULL),
(72, 70, 128, 1, NULL, NULL, 1, '2025-01-24 12:32:47', NULL),
(73, 70, 129, 1, NULL, NULL, 1, '2025-01-27 06:57:41', NULL),
(74, 65, 130, 1, NULL, NULL, 1, '2025-01-28 06:15:29', NULL),
(75, 65, 131, 1, NULL, NULL, 1, '2025-01-28 06:16:22', NULL),
(76, 70, 132, 1, NULL, NULL, 1, '2025-01-29 06:30:42', NULL),
(77, 70, 133, 1, NULL, NULL, 1, '2025-01-29 12:02:53', NULL),
(78, 63, 134, 1, NULL, NULL, 1, '2025-01-30 08:01:16', NULL),
(79, 63, 135, 1, NULL, NULL, 1, '2025-01-30 08:07:31', NULL),
(80, 70, 136, 1, NULL, NULL, 1, '2025-02-06 07:27:58', NULL),
(81, 75, 137, 1, NULL, NULL, 1, '2025-03-10 06:01:46', NULL),
(82, 75, 138, 1, NULL, NULL, 1, '2025-03-10 06:02:49', NULL),
(83, 70, 139, 1, NULL, NULL, 1, '2025-03-12 12:35:49', NULL),
(84, 63, 140, 1, NULL, NULL, 1, '2025-04-07 11:08:09', NULL),
(85, 63, 141, 1, NULL, NULL, 1, '2025-04-07 11:08:25', NULL),
(86, 80, 142, 1, NULL, NULL, 1, '2025-04-14 18:01:44', NULL),
(87, 83, 143, 1, NULL, NULL, 1, '2025-04-22 05:37:54', NULL),
(88, 70, 144, 1, NULL, NULL, 1, '2025-04-22 15:07:21', NULL),
(89, 70, 145, 1, NULL, NULL, 1, '2025-04-22 15:07:35', NULL),
(90, 70, 146, 1, NULL, NULL, 1, '2025-04-23 05:58:02', NULL),
(91, 70, 147, 1, NULL, NULL, 1, '2025-04-23 06:00:12', NULL),
(92, 75, 148, 1, NULL, NULL, 1, '2025-04-23 06:03:53', NULL),
(93, 75, 149, 1, NULL, NULL, 1, '2025-04-23 06:06:01', NULL),
(94, 85, 150, 1, NULL, NULL, 1, '2025-04-23 08:49:23', NULL),
(95, 91, 151, 1, NULL, NULL, 1, '2025-04-24 13:29:38', NULL),
(96, 86, 152, 1, NULL, NULL, 1, '2025-04-27 12:34:10', NULL),
(97, 93, 153, 1, NULL, NULL, 1, '2025-04-27 18:13:18', NULL),
(98, 93, 154, 1, NULL, NULL, 1, '2025-04-27 18:14:07', NULL),
(99, 65, 155, 1, NULL, NULL, 1, '2025-04-28 05:53:07', NULL),
(100, 75, 156, 1, NULL, NULL, 1, '2025-04-28 05:55:47', NULL),
(101, 70, 157, 1, NULL, NULL, 1, '2025-04-28 13:01:52', NULL),
(102, 70, 158, 1, NULL, NULL, 1, '2025-04-28 13:03:22', NULL),
(103, 70, 159, 1, NULL, NULL, 1, '2025-04-29 03:47:14', NULL),
(104, 70, 160, 1, NULL, NULL, 1, '2025-04-29 07:30:43', NULL),
(105, 70, 161, 1, NULL, NULL, 1, '2025-04-29 12:42:26', NULL),
(106, 70, 162, 1, NULL, NULL, 1, '2025-04-29 12:52:17', NULL),
(107, 75, 163, 1, NULL, NULL, 1, '2025-04-29 13:13:03', NULL),
(108, 75, 164, 1, NULL, NULL, 1, '2025-04-29 13:13:10', NULL),
(109, 70, 165, 1, NULL, NULL, 1, '2025-04-29 17:32:56', NULL),
(110, 75, 166, 1, NULL, NULL, 1, '2025-04-30 05:45:02', NULL),
(111, 70, 167, 1, NULL, NULL, 1, '2025-04-30 06:36:00', NULL),
(112, 70, 168, 1, NULL, NULL, 1, '2025-04-30 08:21:01', NULL),
(113, 94, 169, 1, NULL, NULL, 1, '2025-04-30 08:24:47', NULL),
(114, 94, 170, 1, NULL, NULL, 1, '2025-04-30 08:24:54', NULL),
(115, 70, 171, 1, NULL, NULL, 1, '2025-04-30 12:36:18', NULL),
(116, 71, 172, 1, NULL, NULL, 1, '2025-04-30 12:58:04', NULL),
(117, 71, 173, 1, NULL, NULL, 1, '2025-04-30 12:58:16', NULL),
(118, 71, 174, 1, NULL, NULL, 1, '2025-04-30 12:58:43', NULL),
(119, 71, 175, 1, NULL, NULL, 1, '2025-04-30 13:08:48', NULL),
(120, 71, 176, 1, NULL, NULL, 1, '2025-04-30 13:10:02', NULL),
(121, 71, 177, 1, NULL, NULL, 1, '2025-04-30 13:11:27', NULL),
(122, 71, 178, 1, NULL, NULL, 1, '2025-04-30 13:16:34', NULL),
(123, 71, 179, 1, NULL, NULL, 1, '2025-04-30 13:17:27', NULL),
(124, 71, 180, 1, NULL, NULL, 1, '2025-04-30 13:17:34', NULL),
(125, 71, 181, 1, NULL, NULL, 1, '2025-04-30 13:18:16', NULL),
(126, 71, 182, 1, NULL, NULL, 1, '2025-04-30 13:18:16', NULL),
(127, 71, 183, 1, NULL, NULL, 1, '2025-04-30 13:18:19', NULL),
(128, 71, 184, 1, NULL, NULL, 1, '2025-04-30 13:21:45', NULL),
(129, 71, 185, 1, NULL, NULL, 1, '2025-04-30 13:50:44', NULL),
(130, 71, 186, 1, NULL, NULL, 1, '2025-04-30 13:51:20', NULL),
(131, 71, 187, 1, NULL, NULL, 1, '2025-04-30 13:53:07', NULL),
(132, 71, 188, 1, NULL, NULL, 1, '2025-04-30 14:00:44', NULL),
(133, 71, 189, 1, NULL, NULL, 1, '2025-04-30 14:00:50', NULL),
(134, 71, 190, 1, NULL, NULL, 1, '2025-04-30 14:03:51', NULL),
(135, 71, 191, 1, NULL, NULL, 1, '2025-04-30 14:04:29', NULL),
(136, 71, 192, 1, NULL, NULL, 1, '2025-04-30 14:06:09', NULL),
(137, 71, 193, 1, NULL, NULL, 1, '2025-04-30 14:08:01', NULL),
(138, 71, 194, 1, NULL, NULL, 1, '2025-04-30 14:10:00', NULL),
(139, 71, 195, 1, NULL, NULL, 1, '2025-04-30 14:12:34', NULL),
(140, 65, 196, 1, NULL, NULL, 1, '2025-05-01 06:30:50', NULL),
(141, 73, 197, 1, NULL, NULL, 1, '2025-05-01 08:43:11', NULL),
(142, 71, 198, 1, NULL, NULL, 1, '2025-05-01 08:44:35', NULL),
(143, 73, 199, 1, NULL, NULL, 1, '2025-05-01 08:45:22', NULL),
(144, 73, 200, 1, NULL, NULL, 1, '2025-05-01 10:09:17', NULL),
(145, 98, 201, 1, NULL, NULL, 1, '2025-05-01 10:46:58', NULL),
(146, 98, 202, 1, NULL, NULL, 1, '2025-05-01 10:48:52', NULL),
(147, 99, 203, 1, NULL, NULL, 1, '2025-05-01 10:53:03', NULL),
(148, 99, 204, 1, NULL, NULL, 1, '2025-05-01 10:54:09', NULL),
(149, 99, 205, 1, NULL, NULL, 1, '2025-05-01 10:54:41', NULL),
(150, 99, 206, 1, NULL, NULL, 1, '2025-05-01 10:55:14', NULL),
(151, 99, 207, 1, NULL, NULL, 1, '2025-05-01 10:58:48', NULL),
(152, 99, 208, 1, NULL, NULL, 1, '2025-05-01 11:00:40', NULL),
(153, 99, 209, 1, NULL, NULL, 1, '2025-05-01 11:07:23', NULL),
(154, 99, 210, 1, NULL, NULL, 1, '2025-05-01 11:09:58', NULL),
(155, 99, 211, 1, NULL, NULL, 1, '2025-05-01 11:15:22', NULL),
(156, 99, 212, 1, NULL, NULL, 1, '2025-05-01 11:15:56', NULL),
(157, 99, 213, 1, NULL, NULL, 1, '2025-05-01 11:17:07', NULL),
(158, 99, 214, 1, NULL, NULL, 1, '2025-05-01 11:17:31', NULL),
(159, 99, 215, 1, NULL, NULL, 1, '2025-05-01 11:24:02', NULL),
(160, 99, 216, 1, NULL, NULL, 1, '2025-05-01 11:27:05', NULL),
(161, 99, 217, 1, NULL, NULL, 1, '2025-05-01 11:27:15', NULL),
(162, 73, 218, 1, NULL, NULL, 1, '2025-05-01 11:45:28', NULL),
(163, 73, 219, 1, NULL, NULL, 1, '2025-05-01 11:45:50', NULL),
(164, 73, 220, 1, NULL, NULL, 1, '2025-05-01 11:46:02', NULL),
(165, 73, 221, 1, NULL, NULL, 1, '2025-05-01 11:48:04', NULL),
(166, 70, 222, 1, NULL, NULL, 1, '2025-05-01 11:49:32', NULL),
(167, 70, 223, 1, NULL, NULL, 1, '2025-05-02 04:26:47', NULL),
(168, 73, 224, 1, NULL, NULL, 1, '2025-05-03 11:37:16', NULL),
(169, 73, 225, 1, NULL, NULL, 1, '2025-05-03 11:37:30', NULL),
(170, 75, 226, 1, NULL, NULL, 1, '2025-05-06 10:09:31', NULL),
(171, 65, 227, 1, NULL, NULL, 1, '2025-05-06 10:09:46', NULL),
(172, 73, 228, 1, NULL, NULL, 1, '2025-05-06 10:40:31', NULL),
(173, 73, 229, 1, NULL, NULL, 1, '2025-05-06 10:43:51', NULL),
(174, 73, 230, 1, NULL, NULL, 1, '2025-05-06 10:46:42', NULL),
(175, 75, 231, 1, NULL, NULL, 1, '2025-05-07 06:49:08', NULL),
(176, 65, 232, 1, NULL, NULL, 1, '2025-05-07 14:52:01', NULL),
(177, 85, 233, 1, NULL, NULL, 1, '2025-05-09 03:32:48', NULL),
(178, 86, 234, 1, NULL, NULL, 1, '2025-05-15 13:03:14', NULL),
(179, 94, 235, 1, NULL, NULL, 1, '2025-05-22 10:22:47', NULL),
(180, 70, 236, 1, NULL, NULL, 1, '2025-05-29 10:53:02', NULL),
(181, 88, 237, 1, NULL, NULL, 1, '2025-06-01 06:21:34', NULL),
(182, 101, 238, 1, NULL, NULL, 1, '2025-06-10 14:19:55', NULL),
(183, 101, 239, 1, NULL, NULL, 1, '2025-06-10 14:22:21', NULL),
(184, 93, 240, 1, NULL, NULL, 1, '2025-06-13 14:44:38', NULL),
(185, 93, 241, 1, NULL, NULL, 1, '2025-06-13 15:02:09', NULL),
(186, 93, 242, 1, NULL, NULL, 1, '2025-06-14 04:18:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_update_profile_request`
--

CREATE TABLE `tbl_update_profile_request` (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `field_value` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `field_type` int NOT NULL COMMENT '1-Mobile,2-Email',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending, 2-Approval,3-Reject',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_update_profile_request`
--

INSERT INTO `tbl_update_profile_request` (`id`, `user_id`, `field_value`, `field_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '9756188580', 1, 2, '2024-10-07 10:50:49', NULL),
(2, 1, 'shadab.nerasoft@gmail.com', 2, 2, '2024-10-07 11:24:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonals`
--

CREATE TABLE `testimonals` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_count` int NOT NULL DEFAULT '3',
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonals`
--

INSERT INTO `testimonals` (`id`, `name`, `image`, `rate_count`, `designation`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lead', 'testimonial/XRPMCOfhvnuJPWpfVlOqkhNkozRapqUuAFKfHgpS.png', 4, 'Lead Designer', 'It Was Very Good Experince', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus nibh mauris, nec turpis orci lectus maecenas. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu. Faucibus venenatis felis id augue sit cursus pellentesque enim arcu. Elementum felis magna pretium in tincidunt. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu.', 1, '2024-12-01 08:33:37', '2024-12-01 08:41:23'),
(6, 'Fazlu Rehman', 'testimonial/qkWfRXlKKRIS9Irqo1IIp2lDpsfFsXVfzGPJtpeF.jpg', 5, 'Developer', 'it is Amazing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus nibh mauris, nec turpis orci lectus maecenas. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu. Faucibus venenatis felis id augue sit cursus pellentesque enim arcu. Elementum felis magna pretium in tincidunt. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu.', 1, '2024-12-04 07:09:24', '2024-12-04 07:09:24'),
(7, 'Jack', 'testimonial/DxjHfKLJwZfvXcNlD0ccmJ2e2SvBzAIi9vuTMNkn.jpg', 2, 'CEO', 'Good Enough', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus nibh mauris, nec turpis orci lectus maecenas. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu. Faucibus venenatis felis id augue sit cursus pellentesque enim arcu. Elementum felis magna pretium in tincidunt. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu.', 1, '2024-12-04 07:10:58', '2024-12-04 07:10:58'),
(8, 'Ayush', 'testimonial/HrbbulswsLf0f3boHyKJZFB16QG5bxgnCNe8qHIP.webp', 4, 'CEO', 'I would highly recommend…', '\"I’ve been using [Product/Service] for the past three months, and it has truly exceeded my expectations. The ease of use and excellent customer support made my experience smooth and enjoyable. After using it, I saw a significant improvement in my [specific problem], and I’m now more efficient and organized than ever before. I highly recommend [Product/Service] to anyone looking for a reliable solution to [problem].\"', 1, '2024-12-05 07:37:28', '2024-12-05 07:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int NOT NULL COMMENT 'roles.id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `gst_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_loggedin` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted, 4- Permanent Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `image`, `mobile_no`, `email_verified_at`, `country`, `state`, `city`, `address`, `gst_no`, `vehicle_type`, `vehicle_number`, `lat`, `long`, `pincode`, `password`, `remember_token`, `is_loggedin`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'fazlu', 'fazlu.developer@gmail.com', 'profile-pictures/676432dea09c1.png', '7428059960', NULL, 'India', 'Uttar Pradesh', NULL, 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', '7YZPCX9483K2Z7', 'SUV', 'DLS*JU#*JS', '28.4959', '77.4024', '201304', '$2y$10$u0mJRa6qw3YGBFSW/Fdb0uKK/E08u5fiThDyQfk69Kl.L4MowfeYa', '6wknA8ANNmeSza6BTsZPKny9i0s38LqCOzHz0wfnFhx8ASbk6YAODjN9eh3s', '0', NULL, '2024-12-27 09:47:29', 3),
(63, 2, 'Javed', 'Test@test.ckja', 'profile-pictures/67c065e6141a3.jpg', '8287976642', NULL, 'India', 'Uttar Pradesh', 'Noida', 'Sandal Hotel, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 210305, Uttar Pradesh, India', 'hKJDHJKASDHKHJADS', NULL, NULL, '28.495758758000143', '77.40234424801076', '210305', NULL, NULL, '0', '2025-01-15 12:01:28', '2025-05-01 12:49:43', 1),
(64, 2, 'Tanmay', 'Tanmaychopra29@gmail.com', NULL, '9999999999', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.379832407918645', '77.31859230215083', '121001', NULL, NULL, '0', '2025-01-15 13:31:23', '2025-01-21 08:14:02', 1),
(65, 2, 'RITIN', NULL, NULL, '8586800327', NULL, 'India', 'Haryana', 'Palwal', 'unnamed road, Palwal, Palwal - 121102, Haryana, India', NULL, NULL, NULL, '28.218716704005978', '77.29432181215626', '121102', NULL, NULL, '0', '2025-01-16 04:47:32', '2025-06-26 09:52:38', 1),
(66, 2, 'Javed', 'Live.javedkhan@gmail.com', 'profile-pictures/6788eee3ddd11.jpg', '8287976641', NULL, 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', NULL, NULL, NULL, '28.70406', '77.102493', '110083', NULL, NULL, '0', '2025-01-16 09:56:14', '2025-04-28 05:31:39', 3),
(67, 2, 'Test', 'test@gmail.com', NULL, '9887878988', NULL, 'India', 'Delhi', NULL, 'G.T.B Road, Shahdara, - 110095, Delhi, India', NULL, NULL, NULL, '28.682806666666668', '77.312135', '110095', NULL, NULL, '0', '2025-01-19 07:01:25', '2025-01-19 07:01:32', 1),
(68, 2, 'Ritesh', 'Test@gmail.com', NULL, '8798988789', NULL, 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', NULL, NULL, NULL, '28.70406', '77.102493', '110083', NULL, NULL, '0', '2025-01-19 07:17:40', '2025-01-19 07:17:42', 1),
(69, 2, 'Javed', 'Test@gmail.com', NULL, '9292929292', NULL, 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', NULL, NULL, NULL, '28.70406', '77.102493', '110083', NULL, NULL, '0', '2025-01-20 07:56:33', '2025-01-20 07:56:36', 1),
(70, 2, 'Tanmay c', NULL, 'profile-pictures/680f7c82173fa.jpg', '8920110530', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.39738562614783', '77.32067180632966', '121001', NULL, NULL, '0', '2025-01-21 09:53:42', '2025-06-30 04:26:11', 1),
(71, 2, 'Fazlu', 'Fazlu@gmail.com', NULL, '7428059960', NULL, 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', '3890218309128312', NULL, NULL, '28.70406', '77.102493', '110083', NULL, NULL, '0', '2025-02-26 09:51:15', '2025-02-26 09:51:37', 1),
(72, 2, 'Ayush', 'Ayush.nerasoft@gmail.com', 'profile-pictures/67c02261c8631.jpg', '8221822103', NULL, 'United States', 'California', 'Mountain View', 'Google Building 40, 40 Amphitheatre Parkway, Mountain View, CA 94043, United States of America', '81380923208139013', NULL, NULL, '37.421998333333335', '-122.084', '94043', NULL, NULL, '0', '2025-02-27 08:29:10', '2025-02-27 08:29:48', 1),
(73, 2, 'Sarthak', 'sarthakpathak59@gmail.com', 'profile-pictures/67c80a7869ab9.jpg', '8700682075', NULL, 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', NULL, NULL, NULL, '28.4958099', '77.4020915', '201304', NULL, NULL, '0', '2025-03-05 06:07:03', '2025-05-07 05:56:31', 3),
(74, 2, 'Shivam', 'shivam520p@gmail.com', 'profile-pictures/67c84c38df852.jpg', '9555804662', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-03-05 12:42:54', '2025-03-05 13:07:34', 3),
(75, 2, 'R Ranjan', NULL, NULL, '9318453468', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.37980353', '77.31869933', '121001', NULL, NULL, '0', '2025-03-10 06:00:58', '2025-05-06 10:10:41', 1),
(76, 2, 'Eshita', NULL, NULL, '9625958558', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.397393385648893', '77.32060641007574', '121001', NULL, NULL, '0', '2025-03-18 09:47:42', '2025-03-18 09:48:58', 1),
(77, 2, 'Ujala yadav', 'ujalayadav7030@gmail.com', NULL, '9650897905', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-03-22 07:25:16', '2025-03-22 07:25:16', 1),
(78, 2, 'Rahul', NULL, NULL, '9818659234', NULL, 'India', 'Delhi', NULL, '10, Alaknanda, - 110019, Delhi, India', NULL, NULL, NULL, '28.537157247774303', '77.24432839080691', '110019', NULL, NULL, '0', '2025-04-04 17:41:21', '2025-04-04 17:44:53', 1),
(79, 2, 'Atul Kumar Bhaway', 'Rajs51574@gmail.com', NULL, '9528890227', NULL, 'India', 'Delhi', 'New Delhi', 'Bhagwan Mahavir Marg, Vasant Kunj, New Delhi - 110070, Delhi, India', NULL, NULL, NULL, '28.52550886', '77.15583402', '110070', NULL, NULL, '0', '2025-04-14 05:54:38', '2025-04-15 11:26:05', 1),
(80, 2, 'Pranav sachdeva', NULL, NULL, '8800119959', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.37778620042265', '77.33083102993508', '121001', NULL, NULL, '0', '2025-04-14 17:59:29', '2025-04-14 18:01:42', 1),
(81, 2, 'Aeishwary Gupta', NULL, NULL, '7275923170', NULL, 'India', 'Haryana', 'Gurgaon', 'unnamed road, Sector 32, Gurgaon - 122012, Haryana, India', NULL, NULL, NULL, '28.44245395081602', '77.04139590472353', '122012', NULL, NULL, '0', '2025-04-22 03:42:59', '2025-04-22 05:37:10', 1),
(82, 2, 'Prashant', 'chaudhary.1986@gmail.com', NULL, '8178332918', NULL, 'India', 'Haryana', 'Gurgaon', 'unnamed road, Sector 32, Gurgaon - 122012, Haryana, India', NULL, NULL, NULL, '28.442445', '77.04148666666667', '122012', NULL, NULL, '0', '2025-04-22 04:04:07', '2025-04-22 04:04:26', 1),
(83, 2, 'Shaurya', NULL, NULL, '8933067499', NULL, 'India', 'Haryana', 'Gurgaon', 'unnamed road, Sector 32, Gurgaon - 122001, Haryana, India', NULL, NULL, NULL, '28.44308467581868', '77.0408571884036', '122001', NULL, NULL, '0', '2025-04-22 05:35:57', '2025-04-22 05:37:24', 1),
(84, 2, 'Anshuman', NULL, NULL, '9934010124', NULL, 'India', 'Haryana', 'Gurgaon', 'unnamed road, Sector 32, Gurgaon - 122012, Haryana, India', NULL, NULL, NULL, '28.442473040041207', '77.0413835842405', '122012', NULL, NULL, '0', '2025-04-22 05:36:38', '2025-04-22 05:38:05', 3),
(85, 2, 'Abhishek Chauhan', NULL, NULL, '9560222005', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.41637987087472', '77.3548547829798', '121001', NULL, NULL, '0', '2025-04-23 08:38:19', '2025-05-09 03:32:38', 1),
(86, 2, 'Abhishek', 'primeindustry75@rediffmail.com', NULL, '9999008192', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.39745764', '77.31981682', '121001', NULL, NULL, '0', '2025-04-23 08:45:43', '2025-04-27 14:10:21', 1),
(87, 2, 'Amit sharma', 'Amitsh.2800@gmail.com', NULL, '8130283126', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.397078246111455', '77.31313377732415', '121001', NULL, NULL, '0', '2025-04-23 08:52:57', '2025-04-24 10:53:08', 1),
(88, 2, 'SANJIEV ARORRA', 'commonmail602@gmail.com', NULL, '9810000370', NULL, 'India', 'Haryana', NULL, 'unnamed road, Faridabad, SECTOR 79 - 121007, Haryana, India', NULL, NULL, NULL, '28.38634023178463', '77.3540329626766', '121007', NULL, NULL, '0', '2025-04-23 09:03:00', '2025-06-01 06:20:49', 1),
(89, 2, 'Sanjeev', 'sanjeev.ssglass@gmail.com', NULL, '9818679450', NULL, 'India', 'Uttar Pradesh', 'Noida', 'unnamed road, Gautam Buddha Nagar, Noida - 201303, Uttar Pradesh, India', NULL, NULL, NULL, '28.5423069', '77.3749025', '201303', NULL, NULL, '0', '2025-04-23 10:00:16', '2025-06-12 12:15:40', 1),
(90, 2, 'SUNDER SINGH', 'Sunderchoudhary96@gmail.con', NULL, '9953875481', NULL, 'India', 'Delhi', NULL, 'Lodhi Road, South East Delhi, - 110003, Delhi, India', NULL, NULL, NULL, '28.591784439053363', '77.23354659218906', '110003', NULL, NULL, '0', '2025-04-23 12:09:37', '2025-05-06 11:33:04', 1),
(91, 2, 'Devish', NULL, NULL, '9910983443', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.399279224780027', '77.32958561906369', '121001', NULL, NULL, '0', '2025-04-24 09:46:12', '2025-04-24 13:29:37', 1),
(92, 2, 'Rishi', NULL, NULL, '9910768220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-04-26 07:09:22', '2025-04-26 07:09:22', 1),
(93, 2, 'Shivam Sharma', NULL, NULL, '9355465546', NULL, 'India', 'Haryana', NULL, 'unnamed road, Faridabad, Ballabgarh - 121004, Haryana, India', NULL, NULL, NULL, '28.34527712621775', '77.32249650649278', '121004', NULL, NULL, '0', '2025-04-27 18:12:31', '2025-06-15 02:08:30', 1),
(94, 2, 'Ajay', NULL, NULL, '9891018001', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.37987137', '77.31862517', '121001', NULL, NULL, '0', '2025-04-30 08:24:05', '2025-04-30 08:24:48', 1),
(95, 2, 'Priya', 'test1233@gmail.com', NULL, '7017891844', NULL, NULL, NULL, NULL, NULL, '346565656868', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-04-30 15:21:20', '2025-04-30 15:21:47', 1),
(96, 2, 'Chetan Verma', 'ar.chetanverma@gmail.com', NULL, '8588840003', NULL, 'India', 'Tamil Nadu', NULL, 'McGan\'s Ooty School of Architecture, Perar-morigal rd, Nilgiris, Morigal hatty - 643214, Tamil Nadu, India', NULL, NULL, NULL, '11.417776666666668', '76.76779', '643214', NULL, NULL, '0', '2025-05-01 05:55:06', '2025-05-01 05:55:25', 1),
(97, 2, 'Harsh', 'Harsh@gmail.com', NULL, '9516667966', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-05-01 08:46:56', '2025-05-01 08:46:56', 1),
(98, 2, 'One', 'one@gmail.com', NULL, '7428059961', NULL, 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', NULL, NULL, NULL, '28.4958512', '77.4020861', '201304', NULL, NULL, '0', '2025-05-01 09:01:06', '2025-05-01 10:48:45', 1),
(99, 2, 'Kanhsj', 'sarthakpathak59@gmail.com', NULL, '9999925599', NULL, 'India', 'Uttar Pradesh', 'Noida', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Noida - 201304, Uttar Pradesh, India', '838682568686', NULL, NULL, '28.4958265', '77.4020647', '201304', NULL, NULL, '0', '2025-05-01 10:52:29', '2025-05-01 11:43:53', 1),
(100, 2, 'Sarthak', NULL, NULL, '8700682075', NULL, 'India', 'Uttar Pradesh', 'Noida', 'unnamed road, Gautam Buddha Nagar, Noida - 210305, Uttar Pradesh, India', NULL, NULL, NULL, '28.4981836', '77.394367', '210305', NULL, NULL, '0', '2025-05-07 05:57:24', '2025-05-11 17:56:02', 1),
(101, 2, 'Tarun Arora', 'Tarunarora9t@gmail.com', NULL, '8130327513', NULL, 'India', 'Haryana', NULL, 'unnamed road, Faridabad, Ballabgarh - 121004, Haryana, India', NULL, NULL, NULL, '28.339493146975133', '77.32716124615803', '121004', NULL, NULL, '0', '2025-05-23 13:32:19', '2025-06-10 14:19:44', 1),
(102, 2, 'Tarun Arora', NULL, NULL, '9090133132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-05-23 13:40:34', '2025-05-23 13:40:34', 1),
(103, 2, 'Ishita', NULL, NULL, '8130327515', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-05-23 13:48:55', '2025-05-23 13:48:55', 1),
(104, 2, 'Ram', 'rampr.rajendran@gmail.com', NULL, '9945072035', NULL, 'India', 'Karnataka', NULL, 'unnamed road, Veerasandra, - 560100, Karnataka, India', NULL, NULL, NULL, '12.842097770268698', '77.66916858029522', '560100', NULL, NULL, '0', '2025-06-13 07:21:02', '2025-06-13 07:22:13', 1),
(105, 2, 'Sandeep', 'sandeepjps@gmail.com', NULL, '9811115650', NULL, 'India', 'Haryana', NULL, 'unnamed road, Surajkund, Libiza town - 121009, Haryana, India', NULL, NULL, NULL, '28.48909548004942', '77.28944860406993', '121009', NULL, NULL, '0', '2025-06-15 15:05:55', '2025-06-15 15:06:01', 1),
(106, 2, 'Ashish Sharma', NULL, NULL, '8789217309', NULL, 'India', 'Haryana', 'Faridabad', 'unnamed road, Faridabad, Faridabad - 121001, Haryana, India', NULL, NULL, NULL, '28.3914628', '77.3150082', '121001', NULL, NULL, '0', '2025-06-19 06:34:01', '2025-06-19 06:34:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'users.id',
  `vehicle_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vehicle_default` tinyint NOT NULL DEFAULT '2' COMMENT '1-default,2-Not default',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `user_id`, `vehicle_type`, `vehicle_number`, `is_vehicle_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test 90', '2783973912321', 1, 3, '2024-12-23 11:55:22', '2024-12-26 14:15:49'),
(2, 36, 'Test 2', '2783', 2, 3, '2024-12-23 11:55:33', '2024-12-26 14:15:49'),
(3, 36, 'Test 32783', '2783232323', 2, 3, '2024-12-23 11:55:59', '2024-12-26 14:15:49'),
(4, 42, 'Test 1', '8921839812', 2, 3, '2024-12-23 11:56:34', '2024-12-23 12:08:10'),
(5, 42, 'Test 2', '293891203821', 2, 3, '2024-12-23 11:56:42', '2024-12-23 12:08:19'),
(6, 42, 'Test 3', '3278371239213', 2, 3, '2024-12-23 12:06:53', '2024-12-23 12:08:22'),
(7, 42, 'Test 4', '238190339123921', 1, 3, '2024-12-23 12:07:01', '2024-12-23 12:08:25'),
(8, 36, 'Testing 2', '2819082908201', 2, 3, '2024-12-23 12:14:09', '2024-12-26 14:15:49'),
(9, 36, 'Testing 3', '311132123213', 2, 3, '2024-12-23 12:15:19', '2024-12-26 14:15:49'),
(10, 36, 'Test 5', '85454546464', 2, 3, '2024-12-25 19:02:26', '2024-12-26 14:15:49'),
(11, 36, 'Testing', '85555555555', 2, 3, '2024-12-25 19:08:23', '2024-12-26 14:16:09'),
(12, 36, 'Testing', '588664466808774', 2, 3, '2024-12-25 19:12:17', '2024-12-26 14:15:49'),
(13, 36, 'Texting', '888856446644', 2, 3, '2024-12-25 19:12:37', '2024-12-26 14:15:49'),
(14, 36, 'Testing 5', '8484546464646400488448', 2, 3, '2024-12-26 05:51:00', '2024-12-26 14:16:06'),
(15, 36, 'Testing m', '5454554546', 2, 3, '2024-12-26 14:14:44', '2024-12-26 14:16:03'),
(16, 36, 'Trajan aka', '5454546464', 2, 3, '2024-12-26 14:14:53', '2024-12-26 14:16:01'),
(17, 36, 'Aagah', '54545455454', 2, 3, '2024-12-26 14:15:01', '2024-12-26 14:15:59'),
(18, 36, 'Javed', '4848485454', 1, 1, '2024-12-26 14:15:07', '2024-12-26 14:15:49'),
(19, 43, 'Test', '8853644552', 2, 1, '2024-12-26 14:19:32', '2025-01-15 09:24:00'),
(20, 43, 'Test', '55222475', 2, 3, '2024-12-26 14:19:40', '2025-01-15 09:24:00'),
(21, 44, 'Testing', '283179379231', 1, 1, '2024-12-26 14:45:29', '2024-12-26 14:45:29'),
(22, 45, '8e923', '39230293123', 1, 1, '2024-12-26 15:03:05', '2024-12-26 15:03:05'),
(23, 43, 'Test 2', '3789837193712', 2, 1, '2024-12-26 16:40:29', '2025-01-15 09:24:00'),
(24, 47, 'Testing', 'Testing', 1, 1, '2024-12-27 08:00:35', '2024-12-27 08:00:35'),
(25, 48, 'Mahindra BE 6', 'DL@81921221', 2, 1, '2024-12-27 08:11:46', '2024-12-27 18:04:33'),
(26, 48, 'MG Comet EV', 'DL@1238913', 1, 1, '2024-12-27 08:12:03', '2024-12-27 18:04:33'),
(27, 48, 'Tata Tiago EV', 'DL@82912', 2, 3, '2024-12-27 08:12:18', '2024-12-27 18:04:33'),
(28, 48, '323123123', '123123123213', 2, 3, '2024-12-27 08:30:52', '2024-12-27 18:04:33'),
(29, 48, '212321312312313', '12312312312', 2, 3, '2024-12-27 08:30:57', '2024-12-27 18:04:33'),
(30, 48, '32113123213', '21321321312', 2, 1, '2024-12-27 08:31:04', '2024-12-27 18:04:33'),
(31, 49, 'Testing', '38913198322139', 1, 1, '2024-12-28 11:12:51', '2024-12-28 11:12:51'),
(32, 50, 'Test', '2783293291923', 2, 1, '2024-12-28 12:16:45', '2025-01-08 16:21:31'),
(33, 50, 'Test 2', '821998218921', 1, 1, '2024-12-28 12:16:54', '2025-01-08 16:21:31'),
(34, 50, 'Testing 50', 'DLIU92882', 2, 1, '2025-01-08 16:20:27', '2025-01-08 16:21:31'),
(35, 50, 'Testing 3902', '81829121221', 2, 1, '2025-01-08 16:20:38', '2025-01-08 16:21:31'),
(36, 43, 'Test 89122', 'DL@89218', 1, 1, '2025-01-15 08:38:50', '2025-01-15 09:24:00'),
(37, 43, 'Test 182192', 'DL@78318932', 2, 1, '2025-01-15 09:37:15', '2025-01-15 09:37:15'),
(38, 63, 'DL@GJH2828', '2828827227', 1, 1, '2025-01-15 13:10:40', '2025-01-27 15:09:47'),
(39, 64, 'Tata', 'HR51BE9192', 1, 1, '2025-01-15 13:33:07', '2025-01-15 13:33:07'),
(40, 65, 'NEXON', '12345', 1, 1, '2025-01-16 04:48:02', '2025-01-16 04:48:02'),
(41, 66, 'Test 01', '238921880321', 1, 1, '2025-01-16 12:58:34', '2025-01-16 12:58:34'),
(42, 68, 'Test', 'DL@128981921', 1, 1, '2025-01-19 09:17:52', '2025-01-19 09:17:52'),
(43, 69, 'Test', '781991723123', 1, 1, '2025-01-20 07:56:50', '2025-01-20 07:56:50'),
(44, 70, 'Tata', 'HR51BE9193', 1, 1, '2025-01-21 09:54:13', '2025-01-21 09:54:13'),
(45, 63, 'Test@7227', 'Usuwehshv2727', 2, 1, '2025-01-27 15:09:43', '2025-01-27 15:09:47'),
(46, 72, 'Test 232', 'CSK39098312', 1, 1, '2025-02-27 11:04:32', '2025-02-27 11:04:32'),
(47, 73, 'Test', 'Jsjsjs7282', 1, 1, '2025-03-05 08:25:37', '2025-03-05 08:25:37'),
(48, 75, 'NEXON', '11223344', 1, 1, '2025-03-10 06:01:40', '2025-03-10 06:01:40'),
(49, 78, 'Mahindra everito', 'Dl3gd4033', 1, 1, '2025-04-04 17:42:03', '2025-04-04 17:42:03'),
(50, 80, '4 wheeler', 'UP16EX4641', 1, 1, '2025-04-14 18:01:37', '2025-04-14 18:01:37'),
(51, 81, '4W', '23BH1483C', 1, 1, '2025-04-22 05:36:29', '2025-04-22 05:36:29'),
(52, 83, 'Tata', 'HREV1001', 1, 1, '2025-04-22 05:37:37', '2025-04-22 05:37:37'),
(53, 85, 'Nexon', 'DL11GD0560', 1, 1, '2025-04-23 08:49:15', '2025-04-23 08:49:15'),
(54, 88, 'Tata punch', 'HR87P5247', 1, 1, '2025-04-23 09:05:08', '2025-04-23 09:05:08'),
(55, 89, 'Car', 'DL9CAT3545', 1, 1, '2025-04-23 10:03:37', '2025-04-23 10:03:37'),
(56, 90, 'Nexon Ev', 'DL5GD9238', 1, 1, '2025-04-24 10:12:21', '2025-04-24 10:12:21'),
(57, 91, 'Nexon', 'HR29BB6765', 1, 1, '2025-04-24 13:29:29', '2025-04-24 13:29:29'),
(58, 92, 'Mg', 'UP16EV0467', 1, 1, '2025-04-26 07:10:10', '2025-04-26 07:10:10'),
(59, 86, 'xuv400', 'hr51cp5001', 1, 1, '2025-04-27 12:33:57', '2025-04-27 12:33:57'),
(60, 93, 'Mahindra xuv 400', 'HR87Q4094', 1, 1, '2025-04-27 18:13:10', '2025-04-27 18:13:10'),
(61, 94, 'Tata', 'Rj42ev7658', 1, 1, '2025-04-30 08:24:38', '2025-04-30 08:24:38'),
(62, 71, 'Car', 'Dl2184gebr', 1, 1, '2025-04-30 12:57:56', '2025-04-30 12:57:56'),
(63, 95, 'Bike', '537849ru', 1, 1, '2025-04-30 15:22:03', '2025-04-30 15:22:03'),
(64, 96, 'Tata Tiago EV XT MR', 'HR51CR1042', 1, 1, '2025-05-01 06:07:55', '2025-05-01 06:07:55'),
(65, 97, 'Car', 'DL765fFv6f', 1, 1, '2025-05-01 08:47:25', '2025-05-01 08:47:25'),
(66, 98, 'Car', 'DL7SCR8482', 1, 1, '2025-05-01 09:01:39', '2025-05-01 09:01:39'),
(67, 99, 'Car', 'Rstfhc75689', 1, 1, '2025-05-01 10:52:48', '2025-05-01 10:52:48'),
(68, 100, 'Uwie', 'Isusu7e', 1, 1, '2025-05-11 17:55:15', '2025-05-11 17:55:15'),
(69, 100, '2467', 'Cbsjuee', 2, 1, '2025-05-11 17:55:22', '2025-05-11 17:55:22'),
(70, 101, 'Hyundai Kona', 'HR29BB8822', 1, 1, '2025-05-23 13:34:31', '2025-05-23 13:34:31'),
(71, 102, 'Kona', 'HR29BB8821', 1, 1, '2025-05-23 13:41:31', '2025-05-23 13:41:31'),
(72, 103, 'Ev', 'HR29AG1680', 1, 1, '2025-05-23 13:50:06', '2025-05-23 13:50:06'),
(73, 104, 'Tata Tiago', 'Ka01mr8646', 1, 1, '2025-06-13 07:21:42', '2025-06-13 07:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `whislist_property`
--

CREATE TABLE `whislist_property` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `property_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Delted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_amenties`
--
ALTER TABLE `add_amenties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_book_amenties`
--
ALTER TABLE `add_book_amenties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_book_facilities`
--
ALTER TABLE `add_book_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_book_property`
--
ALTER TABLE `add_book_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_facilities_propery`
--
ALTER TABLE `add_facilities_propery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_package_service`
--
ALTER TABLE `add_package_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignroutes`
--
ALTER TABLE `assignroutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_lead`
--
ALTER TABLE `assign_lead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bedtypes`
--
ALTER TABLE `bedtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_url`
--
ALTER TABLE `dynamic_url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emi_collections`
--
ALTER TABLE `emi_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallaries`
--
ALTER TABLE `gallaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kycdatas`
--
ALTER TABLE `kycdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_leads`
--
ALTER TABLE `kyc_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_leads_guarantor`
--
ALTER TABLE `kyc_leads_guarantor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_processes`
--
ALTER TABLE `kyc_processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_reject_reasons`
--
ALTER TABLE `kyc_reject_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_disbursements`
--
ALTER TABLE `loan_disbursements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_requests`
--
ALTER TABLE `loan_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_modes`
--
ALTER TABLE `payment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_category`
--
ALTER TABLE `pet_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincodes`
--
ALTER TABLE `pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties_images`
--
ALTER TABLE `properties_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_reviews`
--
ALTER TABLE `property_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_code`
--
ALTER TABLE `referral_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refers`
--
ALTER TABLE `refers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refer_and_earn`
--
ALTER TABLE `refer_and_earn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_models`
--
ALTER TABLE `role_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_logs`
--
ALTER TABLE `route_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pet_bookings`
--
ALTER TABLE `tbl_pet_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_token`
--
ALTER TABLE `tbl_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_update_profile_request`
--
ALTER TABLE `tbl_update_profile_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonals`
--
ALTER TABLE `testimonals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whislist_property`
--
ALTER TABLE `whislist_property`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_amenties`
--
ALTER TABLE `add_amenties`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `add_book_amenties`
--
ALTER TABLE `add_book_amenties`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `add_book_facilities`
--
ALTER TABLE `add_book_facilities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `add_book_property`
--
ALTER TABLE `add_book_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `add_facilities_propery`
--
ALTER TABLE `add_facilities_propery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `add_package_service`
--
ALTER TABLE `add_package_service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignroutes`
--
ALTER TABLE `assignroutes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assign_lead`
--
ALTER TABLE `assign_lead`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bedtypes`
--
ALTER TABLE `bedtypes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dynamic_url`
--
ALTER TABLE `dynamic_url`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emi_collections`
--
ALTER TABLE `emi_collections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallaries`
--
ALTER TABLE `gallaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kycdatas`
--
ALTER TABLE `kycdatas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc_leads`
--
ALTER TABLE `kyc_leads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kyc_leads_guarantor`
--
ALTER TABLE `kyc_leads_guarantor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc_processes`
--
ALTER TABLE `kyc_processes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kyc_reject_reasons`
--
ALTER TABLE `kyc_reject_reasons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loan_disbursements`
--
ALTER TABLE `loan_disbursements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan_requests`
--
ALTER TABLE `loan_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_modes`
--
ALTER TABLE `payment_modes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permission_category`
--
ALTER TABLE `permission_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pet_category`
--
ALTER TABLE `pet_category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pincodes`
--
ALTER TABLE `pincodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `properties_images`
--
ALTER TABLE `properties_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `property_reviews`
--
ALTER TABLE `property_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_code`
--
ALTER TABLE `referral_code`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `refers`
--
ALTER TABLE `refers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `refer_and_earn`
--
ALTER TABLE `refer_and_earn`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_models`
--
ALTER TABLE `role_models`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `route_logs`
--
ALTER TABLE `route_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `tbl_pet_bookings`
--
ALTER TABLE `tbl_pet_bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_token`
--
ALTER TABLE `tbl_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `tbl_update_profile_request`
--
ALTER TABLE `tbl_update_profile_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonals`
--
ALTER TABLE `testimonals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `whislist_property`
--
ALTER TABLE `whislist_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
