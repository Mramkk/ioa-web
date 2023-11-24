-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 08:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jissoftware_ioa`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` bigint(12) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address_line_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `address_notes` varchar(255) DEFAULT NULL,
  `active` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `uid`, `name`, `mobile`, `pincode`, `state`, `city`, `address_line_1`, `address_line_2`, `address_notes`, `active`, `created_at`, `updated_at`) VALUES
(27, '22061618', 'Vishal Kumar Prajapati', 7004019567, 815311, 'Jharkhand', 'Giridih', 'Akdonikala', 'Pani tanki ke paas', 'hanuman mandir ke samne gali me', '0', '2022-06-17 02:29:43', '2022-06-17 02:29:43'),
(29, '22061618', 'Vishal Kumar Prajapati', 7004019567, 815311, 'Jharkhand', 'Giridih', 'Akdonikala', 'Pani tanki ke paas', 'hanuman mandir ke samne gali me', '0', '2022-06-17 02:29:45', '2022-06-17 02:45:28'),
(30, '22061618', 'Vishal Kumar Prajapati', 7004019567, 815311, 'Jharkhand', 'Giridih', 'Akdonikala', 'Pani tanki ke paas', 'hanuman mandir ke samne gali me', '0', '2022-06-17 02:46:42', '2022-06-17 02:46:42'),
(50, '22061013', 'Ram Kumar Bedia', 9771537376, 835101, 'Jharkhand', 'Ranchi', 'skskskks slslslls', 'skskskks slallala', 'sjssjkksk akkaka', '0', '2022-06-29 00:59:49', '2022-06-29 00:59:49'),
(51, '22061013', 'Rahul Kumar bedia', 9771537376, 835101, 'Jharkhand', 'Ranchi', 'sksksks slslslls alal;lal;a', 'akakkaka akaklala', 'skskskks slsllala', '0', '2022-06-29 01:02:10', '2022-06-29 01:02:10'),
(53, '22070420', 'Ram Kumar Bedia', 9771537376, 835101, 'Jharkhand', 'Ranchi', 'sjjsjsj sklslls', 'jsjsjjs skksksks skksks', 'shhshha ajajjaj akkakak', '0', '2022-07-05 00:49:30', '2022-07-05 00:49:30'),
(54, '22070622', 'Ram Kumar Bedia', 9771537376, 835101, 'Jharkhand', 'Ranchi', 'sjjsksks llslls ksllsls allala', 'sksksk lallalal lallalal ajjajja', 'ahjajaj kkskks kakakka', '0', '2022-07-06 04:40:51', '2022-07-06 04:40:51'),
(58, '22072021', 'Ram Kumar Bedia', 9771234526, 835101, 'Jharkhand', 'Ranchi', 'sjsjksks skskkalla', 'shsjjsj akkakaka akkakak', 'ajajaja ajkakakak', '0', '2022-07-20 11:17:47', '2022-07-20 11:17:47'),
(72, '2207144', 'Ram Kumar Bedia', 9771234514, 834008, 'Jharkhand', 'Ranchi', 'Janki', 'Morabadi', 'Other', '0', '2022-07-27 07:17:02', '2022-07-27 07:17:02'),
(73, '2207144', 'Ram Kumar Bedia', 9771234515, 834008, 'Jharkhand', 'Ranchi', 'Janki Tower', 'Morabadi', 'Home', '0', '2022-07-27 07:18:30', '2022-07-27 07:18:30'),
(74, '2207141', 'Ram Bedia', 7004019567, 815311, 'Jharkhand', 'Giridih', 'Akdonikala', 'Pani tanki ke paas', 'hanuman mandir ke samne gali me', '0', '2022-07-29 12:20:23', '2022-08-01 06:35:55'),
(75, '2207141', 'Vishal Kumar Prajapati', 7004019567, 815311, 'Jharkhand', 'Giridih', 'Akdonikala', 'Pani tanki ke paas', 'hanuman mandir ke samne gali me', '0', '2022-07-29 12:20:27', '2022-07-29 12:20:27'),
(77, '22080226', 'Vishal Kumar', 7878787887, 815301, 'Jharkahnd', 'GIRIDIH', 'Akdonikala', 'Baddiha', 'hanuman Mandir', '0', '2022-08-02 11:38:51', '2022-08-02 11:38:51'),
(78, '22080527', 'ram kumar', 6209009007, 834008, 'Jharkhand', 'Ranchi', '3rd floor Janki Tower', 'Morabadi', 'Home', '0', '2022-12-07 12:35:18', '2022-12-07 12:41:54'),
(80, '23030532', 'test', 8267864418, 834110, 'jh', 'morabadi', 'test', 'test', 'Home', '0', '2023-03-05 09:54:32', '2023-03-05 09:54:32'),
(82, '23030532', 'test', 8267864418, 825001, 'Jharkhand', 'mh', 'rnc', 'sa', 'as', '0', '2023-03-26 12:47:23', '2023-03-26 12:47:23'),
(89, '22121330', 'Ram Kumar Bedia', 9771537376, 835101, 'Jharkhand', 'Rampur', 'ghujhg', 'ghuji', 'Home', '1', '2023-09-22 06:52:19', '2023-09-22 06:52:19'),
(90, '22080527', 'ram', 6209009007, 834008, 'Jharkhand', 'Ranchi', '24', 'Morabadi', 'Home', '0', '2023-10-06 20:35:33', '2023-10-06 20:35:33'),
(91, '22080527', 'Ram kumar', 9771537355, 834009, 'Jharkhand', 'Ranchi', 'dghj', 'Morabadi', 'Home', '0', '2023-10-06 20:43:08', '2023-10-06 20:43:08'),
(92, '22080527', 'ram', 6209009007, 834009, 'Jharkhand', 'Ranchi', '1', 'Morabadi', 'Work', '0', '2023-10-06 20:45:07', '2023-10-06 20:45:07'),
(93, '22080527', 'Ram', 6209009007, 834008, 'Jharkhand', 'Ranchi', '3rd floor', 'Morabadi', 'Home', '0', '2023-10-06 21:41:35', '2023-10-06 21:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `pid` varchar(225) NOT NULL,
  `qty` tinyint(11) NOT NULL DEFAULT 1,
  `shipping_charges` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `uid`, `coupon_code`, `pid`, `qty`, `shipping_charges`, `created_at`, `updated_at`) VALUES
(62, 27, NULL, '651e9453751d5', 1, 65.00, '2023-10-06 21:43:45', '2023-10-06 21:43:45'),
(63, 33, NULL, '650a9e7e54848', 1, 65.00, '2023-10-06 21:57:00', '2023-10-06 21:57:00'),
(64, 33, NULL, '64e451916feb6', 1, 65.00, '2023-10-06 21:57:12', '2023-10-06 21:57:12'),
(300, 30, NULL, '650aa69e4e181', 1, 65.00, '2023-11-18 12:22:20', '2023-11-18 12:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(15, 'Plant', 'plant', 'Plant', '15.jpg', 1, '2023-08-09 08:23:27', '2023-08-09 08:23:27'),
(16, 'Product', 'product', 'Product', '16.jpg', 1, '2023-09-20 05:08:49', '2023-11-07 07:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `chat_users`
--

CREATE TABLE `chat_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` bigint(12) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) DEFAULT NULL,
  `last_date` varchar(50) DEFAULT NULL,
  `last_time` varchar(50) DEFAULT NULL,
  `last_msg` text DEFAULT NULL,
  `msg_count` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_users`
--

INSERT INTO `chat_users` (`id`, `uid`, `name`, `mobile`, `profile_image`, `seen`, `last_date`, `last_time`, `last_msg`, `msg_count`, `created_at`, `updated_at`) VALUES
(1, '22071414', 'Ram Kumar Bedia', 9771234512, 'user.png', 1, '14/07/2022', '03:07 PM', 'hello', NULL, '2022-07-14 09:37:17', '2022-07-14 12:41:30'),
(2, '22071416', 'office', 9771234515, 'user.png', 1, '14/07/2022', '05:21 PM', 'hi', NULL, '2022-07-14 11:51:35', '2022-07-29 05:54:26'),
(3, '22071415', 'shubodh', 9771234514, 'pro_image_22071415.jpg', 1, '14/07/2022', '06:13 PM', NULL, NULL, '2022-07-14 12:41:06', '2022-07-29 06:09:52'),
(4, '2207141', 'Vishal Kumar', 7004019567, 'pro_image_2207141.jpg', 1, '12/08/2022', '02:15 PM', 'hello', NULL, '2022-07-15 08:47:12', '2023-08-09 07:19:08'),
(5, '22071518', 'Ajay', 9771234520, 'user.png', 1, '15/07/2022', '03:19 PM', NULL, NULL, '2022-07-15 09:27:26', '2022-07-20 12:07:25'),
(6, '2207144', 'Rahul Kumar', 9771234513, 'pro_image_2207144.jpg', 1, '12/12/2022', '01:04 PM', 'hello', NULL, '2022-07-18 05:40:53', '2023-08-09 07:19:11'),
(7, '22080527', 'ram', 6209009007, 'user.png', 1, '06/10/2023', '06:18 PM', NULL, NULL, '2022-08-18 07:21:54', '2023-10-06 22:18:05'),
(8, '22121330', 'Ram Kumar Bedia', 9771537376, 'user.png', 1, '31/10/2023', '01:52 PM', 'hi', NULL, '2022-12-13 08:19:25', '2023-10-31 08:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `discount` decimal(4,2) NOT NULL,
  `img_sm` varchar(255) DEFAULT NULL,
  `img_lg` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `uid`, `title`, `description`, `code`, `discount`, `img_sm`, `img_lg`, `status`, `created_at`, `updated_at`) VALUES
(1, 19, 'DEEPAWALI', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an', 'mJBQQLwA7ijE', 10.00, 'public/img/coupon/6543530b871bd.webp', 'public/img/coupon/6543530b871be.webp', '1', '2023-11-02 07:43:07', '2023-11-16 06:15:37');

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
-- Table structure for table `first_buys`
--

CREATE TABLE `first_buys` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `discount` decimal(4,2) NOT NULL DEFAULT 20.00,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_buys`
--

INSERT INTO `first_buys` (`id`, `uid`, `title`, `description`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 30, NULL, NULL, 20.00, '0', '2023-11-16 10:06:19', '2023-11-18 07:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `header_menus`
--

CREATE TABLE `header_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT 'header_menu',
  `icon` varchar(255) DEFAULT NULL,
  `order_no` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_addresses`
--

CREATE TABLE `invoice_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `cart_id` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` bigint(12) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address_line_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `address_notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_addresses`
--

INSERT INTO `invoice_addresses` (`id`, `uid`, `cart_id`, `name`, `mobile`, `pincode`, `state`, `city`, `address_line_1`, `address_line_2`, `address_notes`, `created_at`, `updated_at`) VALUES
(27, '22061618', NULL, 'Vishal Kumar Prajapati', 7004019567, 815311, 'Jharkhand', 'Giridih', 'Akdonikala', 'Pani tanki ke paas', 'hanuman mandir ke samne gali me', '2022-06-17 02:29:43', '2022-06-17 02:29:43'),
(29, '22061618', NULL, 'Vishal Kumar Prajapati', 7004019567, 815311, 'Jharkhand', 'Giridih', 'Akdonikala', 'Pani tanki ke paas', 'hanuman mandir ke samne gali me', '2022-06-17 02:29:45', '2022-06-17 02:45:28'),
(30, '22061618', NULL, 'Vishal Kumar Prajapati', 7004019567, 815311, 'Jharkhand', 'Giridih', 'Akdonikala', 'Pani tanki ke paas', 'hanuman mandir ke samne gali me', '2022-06-17 02:46:42', '2022-06-17 02:46:42'),
(37, '22061013', NULL, 'Ram Kumar Bedia', 1234567890, 835101, 'Jharkhand', 'Ranchi', 'wuiwuwus jkkskks lslsowow', 'sjjsjs sjjsjsk lslslls', 'sjjsjsjsj skskwiwis ksksk', '2022-06-28 05:29:50', '2022-06-28 05:29:50'),
(38, '22061013', 'CART00008', 'Ram Kumar Bedia', 1234567890, 835101, 'Jharkhand', 'Ranchi', 'wuiwuwus jkkskks lslsowow', 'sjjsjs sjjsjsk lslslls', 'sjjsjsjsj skskwiwis ksksk', '2022-06-28 05:58:06', '2022-06-28 05:58:06'),
(39, '22061013', 'CART00011', 'Rahul Kumar bedia', 9771537376, 835101, 'Jharkhand', 'Ranchi', 'sksksks slslslls alal;lal;a', 'akakkaka akaklala', 'skskskks slsllala', '2022-06-29 01:26:26', '2022-06-29 01:26:26'),
(40, '22070420', 'CART00014', 'Ram Kumar Bedia', 9771537376, 835101, 'Jharkhand', 'Ranchi', 'sjjsjsj sklslls', 'jsjsjjs skksksks skksks', 'shhshha ajajjaj akkakak', '2022-07-05 00:49:42', '2022-07-05 00:49:42'),
(41, '22070622', 'CART00015', 'Ram Kumar Bedia', 9771537376, 835101, 'Jharkhand', 'Ranchi', 'sjjsksks llslls ksllsls allala', 'sksksk lallalal lallalal ajjajja', 'ahjajaj kkskks kakakka', '2022-07-06 04:58:36', '2022-07-06 04:58:36'),
(42, '2207144', 'CART00017', 'Ram Kumar Bedia', 9771234513, 835101, 'Jharkhand', 'Ranchi', 'sjjsjss sklslla alalla', 'ajjajaj akjkakakai alklala', 'sahhjajaj dkaklal llalal', '2022-07-16 07:18:32', '2022-07-16 07:18:32'),
(43, '2207144', 'CART00021', 'Ram Kumar Bedia', 9771234513, 835101, 'Jharkhand', 'Ranchi', 'sjjsjss sklslla alalla', 'ajjajaj akjkakakai alklala', 'sahhjajaj dkaklal llalal', '2022-07-16 08:17:23', '2022-07-16 08:17:23'),
(44, '2207144', 'CART00023', 'Ram Kumar Bedia', 9771234513, 835101, 'Jharkhand', 'Ranchi', 'hsjskks kskkskk lslslsl', 'sjsjsjs kskkskks slalla', 'sjjsjs sjsjakka skksksk', '2022-07-19 10:29:24', '2022-07-19 10:29:24'),
(45, '22072021', 'CART00025', 'Ram Kumar Bedia', 9771234526, 835101, 'Jharkhand', 'Ranchi', 'sjsjksks skskkalla', 'shsjjsj akkakaka akkakak', 'ajajaja ajkakakak', '2022-07-20 11:45:05', '2022-07-20 11:45:05'),
(46, '2207144', 'CART00028', 'Ram Kumar Bedia', 9771234515, 835101, 'Jharkhand', 'Ranchi', 'hsjskks kskkskk lslslsl', 'sjsjsjs kskkskks slalla', 'sjjsjs sjsjakka skksksk', '2022-07-21 10:12:45', '2022-07-21 10:12:45'),
(47, '2207144', 'CART00039', 'Ram Kumar Bedia', 9771234515, 835101, 'Jharkhand', 'Ranchi', 'hsjskks kskkskk lslslsl', 'sjsjsjs kskkskks slalla', 'sjjsjs sjsjakka skksksk', '2022-07-21 10:30:24', '2022-07-21 10:30:24'),
(48, '2207144', 'CART00040', 'Ram Kumar Bedia', 9771234515, 835101, 'Jharkhand', 'Ranchi', 'hsjskks kskkskk lslslsl', 'sjsjsjs kskkskks slalla', 'sjjsjs sjsjakka skksksk', '2022-07-21 10:32:17', '2022-07-21 10:32:17'),
(49, '2207144', 'CART00041', 'Ram Kumar Bedia', 9771234515, 835101, 'Jharkhand', 'Ranchi', 'hsjskks kskkskk lslslsl', 'sjsjsjs kskkskks slalla', 'sjjsjs sjsjakka skksksk', '2022-07-21 10:36:10', '2022-07-21 10:36:10'),
(50, '2207144', 'CART00062', 'Ram Kumar Bedia', 9771234514, 835101, 'Jharkhand', 'Ranchi', 'skskskks skkslsls', 'skksksk skakkaka', 'sjjsjs akakkaka', '2022-07-23 09:50:40', '2022-07-26 10:23:46'),
(51, '2207141', 'CART00072', 'Ram Bedia', 7004019567, 815311, 'Jharkhand', 'Giridih', 'Akdonikala', 'Pani tanki ke paas', 'hanuman mandir ke samne gali me', '2022-08-01 07:52:59', '2022-08-01 07:52:59'),
(52, '22080226', 'CART00081', 'Vishal Kumar', 7878787887, 815301, 'Jharkahnd', 'GIRIDIH', 'Akdonikala', 'Baddiha', 'hanuman Mandir', '2022-08-02 11:39:46', '2022-08-02 11:39:46'),
(53, '22121330', 'CART00094', 'Ram kumar', 9771537376, 0, 'Jharkhand', 'Ranchi', 'vhjkk', 'fhhj', 'Other', '2023-03-05 11:30:59', '2023-03-05 12:33:40'),
(54, '22121330', 'CART00097', 'Ram kumar', 9771537376, 0, 'Jharkhand', 'Ranchi', 'vhjkk', 'fhhj', 'Other', '2023-03-06 10:27:25', '2023-04-26 11:58:52'),
(55, '23030532', 'CART00096', 'test', 8267864418, 825001, 'Jharkhand', 'mh', 'rnc', 'sa', 'as', '2023-03-27 03:13:02', '2023-03-27 03:13:02'),
(56, '22080527', 'CART00087', 'ram kumar', 6209009007, 834008, 'Jharkhand', 'Ranchi', '3rd floor Janki Tower', 'Morabadi', 'Home', '2023-07-05 09:15:02', '2023-07-05 09:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `main_sliders`
--

CREATE TABLE `main_sliders` (
  `id` bigint(20) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `button_name` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `order_no` tinyint(4) NOT NULL,
  `img_sm` varchar(255) DEFAULT NULL,
  `img_lg` varchar(225) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_sliders`
--

INSERT INTO `main_sliders` (`id`, `slider_name`, `title`, `description`, `button_name`, `button_link`, `order_no`, `img_sm`, `img_lg`, `status`, `created_at`, `updated_at`) VALUES
(4, 'slider 1', 'slider 1', 'slider 1', 'slider 1', 'slider 1', 1, 'public/img/slider/main/6548a3bcef878.webp', 'public/img/slider/main/6548a3bcef87c.webp', '1', '2023-11-06 08:28:44', '2023-11-06 09:18:02'),
(5, 'slider 2', 'slider 2', 'slider 2', 'slider 2', 'slider 2', 2, 'public/img/slider/main/6548a3cddc05b.webp', 'public/img/slider/main/6548a3cddc05e.webp', '1', '2023-11-06 08:29:01', '2023-11-06 08:29:02'),
(6, 'slider 3', 'slider 3', 'slider 3', 'slider 3', 'slider 3', 3, 'public/img/slider/main/6548a3e0a83bb.webp', 'public/img/slider/main/6548a3e0a83bd.webp', '1', '2023-11-06 08:29:20', '2023-11-06 08:29:20'),
(7, 'slider 4', 'slider 4', 'slider 4', 'slider 4', 'slider 4', 4, 'public/img/slider/main/6548a3f7c5a1e.webp', 'public/img/slider/main/6548a3f7c5a22.webp', '1', '2023-11-06 08:29:43', '2023-11-06 08:29:44'),
(8, 'slider 5', 'slider 5', 'slider 5', 'slider 5', 'slider 5', 5, 'public/img/slider/main/6548a40cba497.webp', 'public/img/slider/main/6548a40cba49b.webp', '1', '2023-11-06 08:30:04', '2023-11-06 08:30:05'),
(9, 'slider 6', 'slider 6', 'slider 6', 'slider 6', 'slider 6', 6, 'public/img/slider/main/6548a421829f9.webp', 'public/img/slider/main/6548a421829fc.webp', '1', '2023-11-06 08:30:25', '2023-11-06 08:30:25'),
(10, 'slider 7', 'slider 7', 'slider 7', 'slider 7', 'slider 7', 7, 'public/img/slider/main/6548a43a305bb.webp', 'public/img/slider/main/6548a43a305bd.webp', '1', '2023-11-06 08:30:50', '2023-11-06 08:30:50'),
(11, 'slider 8', 'slider 8', 'slider 8', 'slider 8', 'slider 8', 8, 'public/img/slider/main/6548a44d9ed1c.webp', 'public/img/slider/main/6548a44d9ed1f.webp', '1', '2023-11-06 08:31:09', '2023-11-06 08:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `send_id` varchar(100) DEFAULT NULL,
  `recevied_id` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `msg_date` varchar(100) DEFAULT NULL,
  `msg_time` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `send_id`, `recevied_id`, `message`, `image`, `msg_date`, `msg_time`, `created_at`, `updated_at`) VALUES
(1, '22071414', 'admin', 'hello', NULL, '14/07/2022', '03:07 PM', '2022-07-14 09:37:17', '2022-07-14 09:37:17'),
(2, 'admin', '22071414', NULL, 'message2.jpg', '14/07/2022', '03:38 PM', '2022-07-14 10:08:57', '2022-07-14 10:08:57'),
(3, 'admin', '22071414', NULL, 'message3.jpg', '14/07/2022', '03:39 PM', '2022-07-14 10:09:01', '2022-07-14 10:09:01'),
(4, 'admin', '22071414', 'Hi', NULL, '14/07/2022', '04:19 PM', '2022-07-14 10:49:46', '2022-07-14 10:49:46'),
(5, 'admin', '22071414', 'Hey', NULL, '14/07/2022', '04:19 PM', '2022-07-14 10:49:52', '2022-07-14 10:49:52'),
(6, '22071416', 'admin', 'hi', NULL, '14/07/2022', '05:21 PM', '2022-07-14 11:51:35', '2022-07-14 11:51:35'),
(7, 'admin', '22071416', 'Hi', NULL, '14/07/2022', '06:08 PM', '2022-07-14 12:38:56', '2022-07-14 12:38:56'),
(8, 'admin', '22071414', NULL, 'message8.jpg', '14/07/2022', '06:09 PM', '2022-07-14 12:39:51', '2022-07-14 12:39:51'),
(9, '22071415', 'admin', 'hello sir', NULL, '14/07/2022', '06:11 PM', '2022-07-14 12:41:06', '2022-07-14 12:41:06'),
(10, '22071415', 'admin', 'asdfgh', NULL, '14/07/2022', '06:11 PM', '2022-07-14 12:41:29', '2022-07-14 12:41:29'),
(11, 'admin', '22071415', 'Hey', NULL, '14/07/2022', '06:11 PM', '2022-07-14 12:41:40', '2022-07-14 12:41:40'),
(12, '22071415', 'admin', NULL, 'message12.jpg', '14/07/2022', '06:13 PM', '2022-07-14 12:43:52', '2022-07-14 12:43:53'),
(13, 'admin', '22071415', 'नमस्ते', NULL, '14/07/2022', '06:14 PM', '2022-07-14 12:44:20', '2022-07-14 12:44:20'),
(14, '2207141', 'admin', 'Hello IOA', NULL, '15/07/2022', '02:17 PM', '2022-07-15 08:47:12', '2022-07-15 08:47:12'),
(15, '2207141', 'admin', 'hi', NULL, '15/07/2022', '02:54 PM', '2022-07-15 09:24:47', '2022-07-15 09:24:47'),
(16, '2207141', 'admin', 'Hello', NULL, '15/07/2022', '02:56 PM', '2022-07-15 09:26:03', '2022-07-15 09:26:03'),
(17, '2207141', 'admin', 'Hi', NULL, '15/07/2022', '02:56 PM', '2022-07-15 09:26:12', '2022-07-15 09:26:12'),
(18, '2207141', 'admin', 'Hey', 'message18.jpg', '15/07/2022', '02:56 PM', '2022-07-15 09:26:37', '2022-07-15 09:26:37'),
(19, '22071518', 'admin', 'hi', NULL, '15/07/2022', '02:57 PM', '2022-07-15 09:27:26', '2022-07-15 09:27:26'),
(20, 'admin', '2207141', 'Hi', NULL, '15/07/2022', '02:57 PM', '2022-07-15 09:27:31', '2022-07-15 09:27:31'),
(21, 'admin', '22071518', 'Hey', NULL, '15/07/2022', '02:57 PM', '2022-07-15 09:27:38', '2022-07-15 09:27:38'),
(22, '22071518', 'admin', 'how are you', NULL, '15/07/2022', '03:02 PM', '2022-07-15 09:32:45', '2022-07-15 09:32:45'),
(23, '2207141', 'admin', 'test', NULL, '15/07/2022', '03:05 PM', '2022-07-15 09:35:54', '2022-07-15 09:35:54'),
(24, '22071518', 'admin', '123', NULL, '15/07/2022', '03:08 PM', '2022-07-15 09:38:09', '2022-07-15 09:38:09'),
(25, '22071518', 'admin', 'jahjsja', NULL, '15/07/2022', '03:10 PM', '2022-07-15 09:40:19', '2022-07-15 09:40:19'),
(26, '22071518', 'admin', '123', NULL, '15/07/2022', '03:16 PM', '2022-07-15 09:46:22', '2022-07-15 09:46:22'),
(27, '22071518', 'admin', 'hello mr admin', NULL, '15/07/2022', '03:19 PM', '2022-07-15 09:49:11', '2022-07-15 09:49:11'),
(28, '22071518', 'admin', NULL, 'message28.jpg', '15/07/2022', '03:19 PM', '2022-07-15 09:49:41', '2022-07-15 09:49:41'),
(29, '2207141', 'admin', 'Hi', NULL, '15/07/2022', '03:23 PM', '2022-07-15 09:53:53', '2022-07-15 09:53:53'),
(30, '2207141', 'admin', 'Hi', NULL, '15/07/2022', '03:24 PM', '2022-07-15 09:54:12', '2022-07-15 09:54:12'),
(31, 'admin', '2207141', 'Hello', NULL, '15/07/2022', '03:24 PM', '2022-07-15 09:54:53', '2022-07-15 09:54:53'),
(32, '2207144', 'admin', NULL, 'message32.jpg', '18/07/2022', '11:10 AM', '2022-07-18 05:40:52', '2022-07-18 05:40:53'),
(33, '2207144', 'admin', 'hi', NULL, '18/07/2022', '11:14 AM', '2022-07-18 05:44:42', '2022-07-18 05:44:42'),
(34, '2207144', 'admin', '123456789', NULL, '18/07/2022', '11:27 AM', '2022-07-18 05:57:03', '2022-07-18 05:57:03'),
(35, '2207144', 'admin', NULL, 'message35.jpg', '19/07/2022', '04:23 PM', '2022-07-19 10:53:19', '2022-07-19 10:53:19'),
(36, '2207144', 'admin', '1234', NULL, '20/07/2022', '01:46 PM', '2022-07-20 08:16:37', '2022-07-20 08:16:37'),
(37, '2207144', 'admin', '1', NULL, '20/07/2022', '01:46 PM', '2022-07-20 08:16:55', '2022-07-20 08:16:55'),
(38, 'admin', '2207144', 'Hi', NULL, '20/07/2022', '05:37 PM', '2022-07-20 12:07:03', '2022-07-20 12:07:03'),
(39, '2207144', 'admin', 'hii', NULL, '22/07/2022', '10:45 AM', '2022-07-22 05:15:46', '2022-07-22 05:15:46'),
(40, '2207144', 'admin', 'sjjsjjjsj kkskskks ksksksk lsllslslsl klsllslsl lslsllsl sllslssl', NULL, '22/07/2022', '03:20 PM', '2022-07-22 09:50:58', '2022-07-22 09:50:58'),
(41, '2207144', 'admin', 'hhdjsjk ksksksk ksksks', NULL, '22/07/2022', '03:25 PM', '2022-07-22 09:55:25', '2022-07-22 09:55:25'),
(42, '2207144', 'admin', 'sjjsjsjs skksks sklslsls lslsl\nskskskskks', NULL, '22/07/2022', '03:25 PM', '2022-07-22 09:55:42', '2022-07-22 09:55:42'),
(43, 'admin', '2207144', 'hello mr', NULL, '22/07/2022', '03:26 PM', '2022-07-22 09:56:40', '2022-07-22 09:56:40'),
(44, '2207144', 'admin', 'dhdkskks sklslsl', NULL, '22/07/2022', '03:30 PM', '2022-07-22 10:00:51', '2022-07-22 10:00:51'),
(45, 'admin', '2207144', 'sjksksk skksksks', NULL, '22/07/2022', '03:31 PM', '2022-07-22 10:01:05', '2022-07-22 10:01:05'),
(46, '2207144', 'admin', 'hhsjssk ksksks', NULL, '22/07/2022', '03:33 PM', '2022-07-22 10:03:02', '2022-07-22 10:03:02'),
(47, '2207144', 'admin', 'ksiowo ksksks;a; kalalal', NULL, '22/07/2022', '03:33 PM', '2022-07-22 10:03:16', '2022-07-22 10:03:16'),
(48, 'admin', '2207144', 'slll sllsls iwiwin klslslsl', NULL, '22/07/2022', '03:33 PM', '2022-07-22 10:03:38', '2022-07-22 10:03:38'),
(49, 'admin', '2207144', 'wiii lllsl s;;s;s;', NULL, '22/07/2022', '03:47 PM', '2022-07-22 10:17:27', '2022-07-22 10:17:27'),
(50, 'admin', '22071416', 'Hi', NULL, '29/07/2022', '11:24 AM', '2022-07-29 05:54:25', '2022-07-29 05:54:25'),
(51, 'admin', '22071415', 'hi', NULL, '29/07/2022', '11:39 AM', '2022-07-29 06:09:52', '2022-07-29 06:09:52'),
(52, 'admin', '2207141', 'hi', NULL, '29/07/2022', '11:39 AM', '2022-07-29 06:09:57', '2022-07-29 06:09:57'),
(53, 'admin', '2207141', 'hello', NULL, '29/07/2022', '11:40 AM', '2022-07-29 06:10:03', '2022-07-29 06:10:03'),
(54, 'admin', '2207141', 'Hello', NULL, '29/07/2022', '11:40 AM', '2022-07-29 06:10:30', '2022-07-29 06:10:30'),
(55, 'admin', '2207141', 'Hello', NULL, '29/07/2022', '11:42 AM', '2022-07-29 06:12:04', '2022-07-29 06:12:04'),
(56, 'admin', '2207144', 'Hi', NULL, '29/07/2022', '12:51 PM', '2022-07-29 07:21:16', '2022-07-29 07:21:16'),
(57, 'admin', '2207144', 'hello buddy', NULL, '29/07/2022', '12:56 PM', '2022-07-29 07:26:55', '2022-07-29 07:26:55'),
(58, 'admin', '2207144', 'testing 1', NULL, '29/07/2022', '01:00 PM', '2022-07-29 07:30:34', '2022-07-29 07:30:34'),
(59, 'admin', '2207144', 'chat testing 2', NULL, '29/07/2022', '01:02 PM', '2022-07-29 07:32:31', '2022-07-29 07:32:31'),
(60, 'admin', '2207144', 'chat testing 2', NULL, '29/07/2022', '01:03 PM', '2022-07-29 07:33:43', '2022-07-29 07:33:43'),
(61, 'admin', '2207144', 'chat testing 3', NULL, '29/07/2022', '01:05 PM', '2022-07-29 07:35:52', '2022-07-29 07:35:52'),
(62, 'admin', '2207144', 'chat tesing 4', NULL, '29/07/2022', '01:08 PM', '2022-07-29 07:38:19', '2022-07-29 07:38:19'),
(63, 'admin', '2207144', 'chat testing 5', NULL, '29/07/2022', '01:09 PM', '2022-07-29 07:39:35', '2022-07-29 07:39:35'),
(64, 'admin', '2207144', 'chat testing 6', NULL, '29/07/2022', '01:10 PM', '2022-07-29 07:40:30', '2022-07-29 07:40:30'),
(65, 'admin', '2207144', 'chat testing 7', NULL, '29/07/2022', '01:15 PM', '2022-07-29 07:45:23', '2022-07-29 07:45:23'),
(66, 'admin', '2207144', 'chat testing 8', NULL, '29/07/2022', '01:16 PM', '2022-07-29 07:46:15', '2022-07-29 07:46:15'),
(67, 'admin', '2207144', 'chat testing 9', NULL, '29/07/2022', '01:21 PM', '2022-07-29 07:51:20', '2022-07-29 07:51:20'),
(68, 'admin', '2207144', 'chat testing 10', NULL, '29/07/2022', '01:21 PM', '2022-07-29 07:51:40', '2022-07-29 07:51:40'),
(69, 'admin', '2207144', 'chat testing 11', NULL, '29/07/2022', '01:23 PM', '2022-07-29 07:53:14', '2022-07-29 07:53:14'),
(70, 'admin', '2207144', 'chat testing 12', NULL, '29/07/2022', '01:23 PM', '2022-07-29 07:53:33', '2022-07-29 07:53:33'),
(71, 'admin', '2207144', 'chat testing 13', NULL, '29/07/2022', '01:29 PM', '2022-07-29 07:59:36', '2022-07-29 07:59:36'),
(72, 'admin', '2207144', 'chat testing 14', NULL, '29/07/2022', '01:30 PM', '2022-07-29 08:00:58', '2022-07-29 08:00:58'),
(73, 'admin', '2207144', 'chat testing 15', NULL, '29/07/2022', '01:31 PM', '2022-07-29 08:01:26', '2022-07-29 08:01:26'),
(74, 'admin', '2207144', 'chat testing 16', NULL, '29/07/2022', '01:31 PM', '2022-07-29 08:01:41', '2022-07-29 08:01:41'),
(75, 'admin', '2207144', 'chat testing 17', NULL, '29/07/2022', '01:48 PM', '2022-07-29 08:18:05', '2022-07-29 08:18:05'),
(76, 'admin', '2207144', 'chat testing 18', NULL, '29/07/2022', '01:48 PM', '2022-07-29 08:18:34', '2022-07-29 08:18:34'),
(77, 'admin', '2207144', 'chat testing 19', NULL, '29/07/2022', '01:48 PM', '2022-07-29 08:18:56', '2022-07-29 08:18:56'),
(78, 'admin', '2207144', 'chat testing 20', NULL, '29/07/2022', '01:49 PM', '2022-07-29 08:19:10', '2022-07-29 08:19:10'),
(79, 'admin', '2207144', 'chat testing 21', NULL, '29/07/2022', '01:49 PM', '2022-07-29 08:19:28', '2022-07-29 08:19:28'),
(80, 'admin', '2207144', 'chat testing 22', NULL, '29/07/2022', '01:50 PM', '2022-07-29 08:20:09', '2022-07-29 08:20:09'),
(81, 'admin', '2207144', 'chat testing 23', NULL, '29/07/2022', '01:59 PM', '2022-07-29 08:29:59', '2022-07-29 08:29:59'),
(82, 'admin', '2207144', 'chat testing 24', NULL, '29/07/2022', '02:00 PM', '2022-07-29 08:30:25', '2022-07-29 08:30:25'),
(83, 'admin', '2207144', 'chat testing 25', NULL, '29/07/2022', '02:02 PM', '2022-07-29 08:32:33', '2022-07-29 08:32:33'),
(84, 'admin', '2207144', 'chat testing 26', NULL, '29/07/2022', '02:02 PM', '2022-07-29 08:32:51', '2022-07-29 08:32:51'),
(85, 'admin', '2207144', 'chat testing 27', NULL, '29/07/2022', '02:04 PM', '2022-07-29 08:34:12', '2022-07-29 08:34:12'),
(86, 'admin', '2207144', 'chat testing 28', NULL, '29/07/2022', '02:06 PM', '2022-07-29 08:36:40', '2022-07-29 08:36:40'),
(87, 'admin', '2207144', 'chat testing 29', NULL, '29/07/2022', '02:06 PM', '2022-07-29 08:36:56', '2022-07-29 08:36:56'),
(88, 'admin', '2207144', 'chat testing 30', NULL, '29/07/2022', '02:08 PM', '2022-07-29 08:38:02', '2022-07-29 08:38:02'),
(89, 'admin', '2207144', 'chat testing 31', NULL, '29/07/2022', '02:08 PM', '2022-07-29 08:38:53', '2022-07-29 08:38:53'),
(90, 'admin', '2207144', 'chat testing 32', NULL, '29/07/2022', '02:30 PM', '2022-07-29 09:00:52', '2022-07-29 09:00:52'),
(91, 'admin', '2207144', 'chat testing 33', NULL, '29/07/2022', '02:32 PM', '2022-07-29 09:02:04', '2022-07-29 09:02:04'),
(92, 'admin', '2207144', 'chat testing 34', NULL, '29/07/2022', '02:34 PM', '2022-07-29 09:04:21', '2022-07-29 09:04:21'),
(93, 'admin', '2207144', 'chat testing 35', NULL, '29/07/2022', '02:34 PM', '2022-07-29 09:04:44', '2022-07-29 09:04:44'),
(94, 'admin', '2207144', 'chat testing 35', NULL, '29/07/2022', '02:34 PM', '2022-07-29 09:04:59', '2022-07-29 09:04:59'),
(95, 'admin', '2207144', 'chat testing 36', NULL, '29/07/2022', '02:37 PM', '2022-07-29 09:07:34', '2022-07-29 09:07:34'),
(96, 'admin', '2207144', 'chat testing 37', NULL, '29/07/2022', '02:37 PM', '2022-07-29 09:07:49', '2022-07-29 09:07:49'),
(97, 'admin', '2207144', 'chat testing 38', NULL, '29/07/2022', '02:39 PM', '2022-07-29 09:09:12', '2022-07-29 09:09:12'),
(98, 'admin', '2207144', 'chat testing 39', NULL, '29/07/2022', '02:51 PM', '2022-07-29 09:21:21', '2022-07-29 09:21:21'),
(99, 'admin', '2207144', 'chat testing 40', NULL, '29/07/2022', '02:54 PM', '2022-07-29 09:24:12', '2022-07-29 09:24:12'),
(100, '2207144', 'admin', 'testing 1', NULL, '29/07/2022', '02:55 PM', '2022-07-29 09:25:15', '2022-07-29 09:25:15'),
(101, 'admin', '2207144', 'chat testing 41', NULL, '29/07/2022', '03:05 PM', '2022-07-29 09:35:17', '2022-07-29 09:35:17'),
(102, 'admin', '2207144', 'chat testing 42', NULL, '29/07/2022', '03:05 PM', '2022-07-29 09:35:40', '2022-07-29 09:35:40'),
(103, 'admin', '2207144', 'chat testing 43', NULL, '29/07/2022', '03:12 PM', '2022-07-29 09:42:11', '2022-07-29 09:42:11'),
(104, 'admin', '2207144', 'chat testing 44', NULL, '29/07/2022', '03:12 PM', '2022-07-29 09:42:38', '2022-07-29 09:42:38'),
(105, 'admin', '2207144', 'chat testing 45', NULL, '29/07/2022', '03:14 PM', '2022-07-29 09:44:06', '2022-07-29 09:44:06'),
(106, 'admin', '2207144', 'chat testing 46', NULL, '29/07/2022', '03:29 PM', '2022-07-29 09:59:27', '2022-07-29 09:59:27'),
(107, 'admin', '2207144', 'chat testing 47', NULL, '29/07/2022', '03:29 PM', '2022-07-29 09:59:52', '2022-07-29 09:59:52'),
(108, 'admin', '2207144', 'chat testing 48', NULL, '29/07/2022', '04:02 PM', '2022-07-29 10:32:20', '2022-07-29 10:32:20'),
(109, 'admin', '2207144', 'chat testing 49', NULL, '29/07/2022', '04:03 PM', '2022-07-29 10:33:02', '2022-07-29 10:33:02'),
(110, 'admin', '2207144', 'chat testing 50', NULL, '29/07/2022', '04:04 PM', '2022-07-29 10:34:03', '2022-07-29 10:34:03'),
(111, 'admin', '2207144', 'chat testing 51', NULL, '29/07/2022', '04:05 PM', '2022-07-29 10:35:39', '2022-07-29 10:35:39'),
(112, 'admin', '2207144', 'chat testing 52', NULL, '29/07/2022', '04:07 PM', '2022-07-29 10:37:05', '2022-07-29 10:37:05'),
(113, 'admin', '2207144', 'chat testing 53', NULL, '29/07/2022', '04:08 PM', '2022-07-29 10:38:23', '2022-07-29 10:38:23'),
(114, 'admin', '2207144', 'chat testing 54', NULL, '29/07/2022', '04:09 PM', '2022-07-29 10:39:19', '2022-07-29 10:39:19'),
(115, 'admin', '2207144', 'chat testing 55', NULL, '29/07/2022', '04:10 PM', '2022-07-29 10:40:49', '2022-07-29 10:40:49'),
(116, 'admin', '2207144', 'chat testing 56', NULL, '29/07/2022', '04:11 PM', '2022-07-29 10:41:32', '2022-07-29 10:41:32'),
(117, 'admin', '2207144', 'chat testing 57', NULL, '29/07/2022', '04:13 PM', '2022-07-29 10:43:55', '2022-07-29 10:43:55'),
(118, 'admin', '2207144', 'chat testing 58', NULL, '29/07/2022', '04:17 PM', '2022-07-29 10:47:02', '2022-07-29 10:47:02'),
(119, 'admin', '2207144', 'chat testing 59', NULL, '29/07/2022', '04:18 PM', '2022-07-29 10:48:30', '2022-07-29 10:48:30'),
(120, 'admin', '2207144', 'chat testing 60', NULL, '29/07/2022', '04:19 PM', '2022-07-29 10:49:40', '2022-07-29 10:49:40'),
(121, 'admin', '2207144', 'chat testing 61', NULL, '29/07/2022', '04:20 PM', '2022-07-29 10:50:27', '2022-07-29 10:50:27'),
(122, 'admin', '2207144', 'chat testing 62', NULL, '29/07/2022', '04:21 PM', '2022-07-29 10:51:47', '2022-07-29 10:51:47'),
(123, 'admin', '2207144', 'chat testing 63', NULL, '29/07/2022', '04:22 PM', '2022-07-29 10:52:15', '2022-07-29 10:52:15'),
(124, 'admin', '2207144', 'chat testing 64', NULL, '29/07/2022', '04:23 PM', '2022-07-29 10:53:29', '2022-07-29 10:53:29'),
(125, 'admin', '2207144', 'chat testing 65', NULL, '29/07/2022', '04:27 PM', '2022-07-29 10:57:45', '2022-07-29 10:57:45'),
(126, 'admin', '2207144', 'chat testing 66', NULL, '29/07/2022', '04:31 PM', '2022-07-29 11:01:31', '2022-07-29 11:01:31'),
(127, 'admin', '2207144', 'chat testing 67', NULL, '29/07/2022', '04:32 PM', '2022-07-29 11:02:07', '2022-07-29 11:02:07'),
(128, 'admin', '2207144', 'chat testing 68', NULL, '29/07/2022', '04:41 PM', '2022-07-29 11:11:38', '2022-07-29 11:11:38'),
(129, 'admin', '2207144', 'chat testing 69', NULL, '29/07/2022', '04:41 PM', '2022-07-29 11:11:52', '2022-07-29 11:11:52'),
(130, 'admin', '2207144', 'chat testing 70', NULL, '29/07/2022', '04:42 PM', '2022-07-29 11:12:16', '2022-07-29 11:12:16'),
(131, 'admin', '2207144', 'chat testing 71', NULL, '29/07/2022', '04:50 PM', '2022-07-29 11:20:47', '2022-07-29 11:20:47'),
(132, 'admin', '2207144', 'chat testing 70', NULL, '29/07/2022', '04:50 PM', '2022-07-29 11:20:59', '2022-07-29 11:20:59'),
(133, 'admin', '2207144', 'chat testing 72', NULL, '29/07/2022', '04:51 PM', '2022-07-29 11:21:17', '2022-07-29 11:21:17'),
(134, 'admin', '2207144', 'chat testing 72', NULL, '29/07/2022', '05:01 PM', '2022-07-29 11:31:08', '2022-07-29 11:31:08'),
(135, 'admin', '2207144', 'chat testing 73', NULL, '29/07/2022', '05:01 PM', '2022-07-29 11:31:22', '2022-07-29 11:31:22'),
(136, 'admin', '2207144', 'chat testing 73', NULL, '29/07/2022', '05:18 PM', '2022-07-29 11:48:22', '2022-07-29 11:48:22'),
(137, 'admin', '2207144', 'chat testing 74', NULL, '29/07/2022', '05:18 PM', '2022-07-29 11:48:45', '2022-07-29 11:48:45'),
(138, 'admin', '2207144', 'chat testing 75', NULL, '29/07/2022', '05:36 PM', '2022-07-29 12:06:35', '2022-07-29 12:06:35'),
(139, 'admin', '2207144', 'chat testing 76', NULL, '29/07/2022', '05:58 PM', '2022-07-29 12:28:56', '2022-07-29 12:28:56'),
(140, 'admin', '2207144', 'chat testing 77', NULL, '29/07/2022', '06:06 PM', '2022-07-29 12:36:11', '2022-07-29 12:36:11'),
(141, 'admin', '2207144', 'chat testing 77', NULL, '29/07/2022', '06:12 PM', '2022-07-29 12:42:35', '2022-07-29 12:42:35'),
(142, 'admin', '2207144', 'chat testing 78', NULL, '29/07/2022', '06:19 PM', '2022-07-29 12:49:47', '2022-07-29 12:49:47'),
(143, 'admin', '2207144', 'chat testing 79', NULL, '29/07/2022', '06:21 PM', '2022-07-29 12:51:32', '2022-07-29 12:51:32'),
(144, 'admin', '2207144', 'chat testing 80', NULL, '29/07/2022', '06:21 PM', '2022-07-29 12:51:59', '2022-07-29 12:51:59'),
(145, '2207144', 'admin', 'chat testing 2', NULL, '30/07/2022', '11:00 AM', '2022-07-30 05:30:24', '2022-07-30 05:30:24'),
(146, '2207144', 'admin', 'chating 3', NULL, '30/07/2022', '11:54 AM', '2022-07-30 06:24:15', '2022-07-30 06:24:15'),
(147, '2207144', 'admin', 'chat testing 4', NULL, '30/07/2022', '11:56 AM', '2022-07-30 06:26:27', '2022-07-30 06:26:27'),
(148, '2207144', 'admin', 'chat testing 5', NULL, '30/07/2022', '11:57 AM', '2022-07-30 06:27:37', '2022-07-30 06:27:37'),
(149, '2207144', 'admin', 'chat testing 6', NULL, '30/07/2022', '12:00 PM', '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(150, '2207144', 'admin', 'chat testing', NULL, '30/07/2022', '12:00 PM', '2022-07-30 06:30:53', '2022-07-30 06:30:53'),
(151, '2207144', 'admin', 'chat testing', NULL, '30/07/2022', '12:03 PM', '2022-07-30 06:33:51', '2022-07-30 06:33:51'),
(152, '2207144', 'admin', 'chat testing 8', NULL, '30/07/2022', '12:04 PM', '2022-07-30 06:34:14', '2022-07-30 06:34:14'),
(153, '2207144', 'admin', 'chat testing 9', NULL, '30/07/2022', '12:06 PM', '2022-07-30 06:36:54', '2022-07-30 06:36:54'),
(154, '2207144', 'admin', 'chat testing 9', NULL, '30/07/2022', '12:08 PM', '2022-07-30 06:38:04', '2022-07-30 06:38:04'),
(155, '2207144', 'admin', 'chating 10', NULL, '30/07/2022', '12:08 PM', '2022-07-30 06:38:20', '2022-07-30 06:38:20'),
(156, '2207144', 'admin', 'chat testing 11', NULL, '30/07/2022', '12:09 PM', '2022-07-30 06:39:24', '2022-07-30 06:39:24'),
(157, '2207144', 'admin', NULL, NULL, '30/07/2022', '12:09 PM', '2022-07-30 06:39:36', '2022-07-30 06:39:36'),
(158, '2207144', 'admin', 'chat testing 12', NULL, '30/07/2022', '12:11 PM', '2022-07-30 06:41:23', '2022-07-30 06:41:23'),
(159, '2207144', 'admin', 'chat 13', NULL, '05/08/2022', '04:56 PM', '2022-08-05 11:26:11', '2022-08-05 11:26:11'),
(160, '2207144', 'admin', 'chat 101', NULL, '05/08/2022', '04:57 PM', '2022-08-05 11:27:19', '2022-08-05 11:27:19'),
(161, '2207144', 'admin', NULL, 'message161.jpg', '05/08/2022', '04:57 PM', '2022-08-05 11:27:52', '2022-08-05 11:27:52'),
(162, '2207144', 'admin', 'testing', NULL, '12/08/2022', '12:58 PM', '2022-08-12 07:28:48', '2022-08-12 07:28:48'),
(163, '2207141', 'admin', 'hello', NULL, '12/08/2022', '02:15 PM', '2022-08-12 08:45:25', '2022-08-12 08:45:25'),
(164, '2207144', 'admin', 'testing 123', NULL, '16/08/2022', '11:44 AM', '2022-08-16 06:14:05', '2022-08-16 06:14:05'),
(165, '2207144', 'admin', 'testing 321', NULL, '16/08/2022', '01:05 PM', '2022-08-16 07:35:13', '2022-08-16 07:35:13'),
(166, '2207144', 'admin', '011111', NULL, '16/08/2022', '01:06 PM', '2022-08-16 07:36:41', '2022-08-16 07:36:41'),
(167, '2207144', 'admin', '10101', NULL, '16/08/2022', '01:09 PM', '2022-08-16 07:39:12', '2022-08-16 07:39:12'),
(168, '22080527', 'admin', 'fjjsksks', NULL, '18/08/2022', '12:51 PM', '2022-08-18 07:21:54', '2022-08-18 07:21:54'),
(169, '2207144', 'admin', 'hello', NULL, '12/12/2022', '01:04 PM', '2022-12-12 07:34:01', '2022-12-12 07:34:01'),
(170, '22121330', 'admin', 'hi', NULL, '13/12/2022', '01:49 PM', '2022-12-13 08:19:25', '2022-12-13 08:19:25'),
(171, '22080527', 'admin', 'fhjkfj', NULL, '13/12/2022', '02:12 PM', '2022-12-13 08:42:08', '2022-12-13 08:42:08'),
(172, '22121330', 'admin', 'hello', NULL, '07/02/2023', '06:12 PM', '2023-02-07 12:42:21', '2023-02-07 12:42:21'),
(173, '22121330', 'admin', 'hh', NULL, '02/03/2023', '06:16 PM', '2023-03-02 12:46:12', '2023-03-02 12:46:12'),
(174, '22080527', 'admin', 'hi', NULL, '03/03/2023', '03:42 PM', '2023-03-03 10:12:12', '2023-03-03 10:12:12'),
(175, '22121330', 'admin', 'mkk', NULL, '05/03/2023', '06:13 PM', '2023-03-05 12:43:58', '2023-03-05 12:43:58'),
(176, '22121330', 'admin', 'kk', NULL, '10/04/2023', '10:28 AM', '2023-04-10 04:58:11', '2023-04-10 04:58:11'),
(177, 'admin', '22121330', 'how are you', NULL, '21/09/2023', '04:43 PM', '2023-09-21 11:13:05', '2023-09-21 11:13:05'),
(178, '22121330', 'admin', 'hello', NULL, '06/10/2023', '04:49 PM', '2023-10-06 20:49:07', '2023-10-06 20:49:07'),
(179, 'admin', '22121330', 'hello', NULL, '06/10/2023', '04:49 PM', '2023-10-06 20:49:14', '2023-10-06 20:49:14'),
(180, 'admin', '22121330', 'hello how are u', NULL, '06/10/2023', '04:49 PM', '2023-10-06 20:49:23', '2023-10-06 20:49:23'),
(181, 'admin', '22121330', NULL, '181.jpg', '06/10/2023', '04:49 PM', '2023-10-06 20:49:32', '2023-10-06 20:49:32'),
(182, '22121330', 'admin', NULL, 'message182.jpg', '06/10/2023', '04:49 PM', '2023-10-06 20:49:44', '2023-10-06 20:49:44'),
(183, '22121330', 'admin', NULL, 'message183.jpg', '06/10/2023', '04:49 PM', '2023-10-06 20:49:49', '2023-10-06 20:49:49'),
(184, '22080527', 'admin', 'hello', NULL, '06/10/2023', '06:17 PM', '2023-10-06 22:17:05', '2023-10-06 22:17:05'),
(185, '22080527', 'admin', NULL, NULL, '06/10/2023', '06:17 PM', '2023-10-06 22:17:56', '2023-10-06 22:17:56'),
(186, '22080527', 'admin', NULL, NULL, '06/10/2023', '06:18 PM', '2023-10-06 22:18:04', '2023-10-06 22:18:04'),
(187, '22121330', 'admin', 'hi', NULL, '31/10/2023', '01:52 PM', '2023-10-31 08:22:20', '2023-10-31 08:22:20'),
(188, 'admin', '22121330', 'hello', NULL, '31/10/2023', '01:52 PM', '2023-10-31 08:22:52', '2023-10-31 08:22:52');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_05_072047_create_students_table', 1),
(6, '2022_05_05_072329_create_teachers_table', 1),
(7, '2022_05_07_061144_create_classlists_table', 1),
(8, '2022_05_11_070025_create_categories_table', 2),
(9, '2022_05_13_092508_create_sliders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `morders`
--

CREATE TABLE `morders` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `address_id` bigint(225) NOT NULL,
  `orderid` varchar(225) NOT NULL,
  `payment_id` varchar(225) NOT NULL,
  `coupon_id` varchar(225) DEFAULT NULL,
  `total_amt` decimal(10,2) NOT NULL,
  `status` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `morders`
--

INSERT INTO `morders` (`id`, `uid`, `address_id`, `orderid`, `payment_id`, `coupon_id`, `total_amt`, `status`, `created_at`, `updated_at`) VALUES
(1, 30, 89, 'OGD0001', 'pay_N1uHFk5sGJf9VG', NULL, 191.00, 'Confirmed', '2023-11-18 10:38:46', '2023-11-18 10:38:46'),
(2, 30, 89, 'OGD0002', 'pay_N1uJvjHrQKhpYl', '1', 292.50, 'Confirmed', '2023-11-18 10:41:18', '2023-11-18 10:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `mpayments`
--

CREATE TABLE `mpayments` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `payment_id` varchar(225) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `contact` varchar(225) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `method` varchar(225) NOT NULL,
  `currency` varchar(225) NOT NULL,
  `status` varchar(255) NOT NULL,
  `captured` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mpayments`
--

INSERT INTO `mpayments` (`id`, `uid`, `payment_id`, `order_id`, `email`, `contact`, `amount`, `method`, `currency`, `status`, `captured`, `created_at`, `updated_at`) VALUES
(1, 30, 'pay_N1uHFk5sGJf9VG', 'order_N1uH5mMGf2Kxas', 'jisramkumarbedia@gmail.com', '+919771537376', 191.00, 'netbanking', 'INR', 'captured', '1', '2023-11-18 10:38:46', '2023-11-18 10:38:46'),
(2, 30, 'pay_N1uJvjHrQKhpYl', 'order_N1uJp8ZoR6jf5M', 'jisramkumarbedia@gmail.com', '+919771537376', 292.50, 'netbanking', 'INR', 'captured', '1', '2023-11-18 10:41:17', '2023-11-18 10:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `mplants`
--

CREATE TABLE `mplants` (
  `id` bigint(20) NOT NULL,
  `title` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL,
  `sub_category` varchar(225) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `soil` longtext DEFAULT NULL,
  `time_of_showing` longtext DEFAULT NULL,
  `watering` longtext DEFAULT NULL,
  `fertilizer_requirement` longtext DEFAULT NULL,
  `pest_and_diseases` longtext DEFAULT NULL,
  `special_care` longtext DEFAULT NULL,
  `icon` varchar(225) DEFAULT NULL,
  `img` varchar(225) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mplants`
--

INSERT INTO `mplants` (`id`, `title`, `category`, `sub_category`, `description`, `soil`, `time_of_showing`, `watering`, `fertilizer_requirement`, `pest_and_diseases`, `special_care`, `icon`, `img`, `status`, `created_at`, `updated_at`) VALUES
(3, 'APPLE', 'FRUITS', 'TEMPERATE REGIONS', NULL, 'Red lateritic soils with good drainage and high organic matter are more suitable. The soil pH should be around 5.8 to 6.2.', 'Planting spreads from June to December.', 'Watering is done until the plants get established.', 'For a bearing tree apply FYM 25 Kg, N 500 g and each one Kg of P and K per bearing tree.', 'Common pests- wooly aphis, parasite Aphelinus mali Disease- Apple scab', 'The tree is trained to open centre system. Pruning done during November enables harvest during June – July and pruning during January will enable harvest during July – September.', 'public/plants/icon/654224d8c6d03.webp', 'public/plants/img/654224d8f181b.webp', '1', '2023-11-01 10:13:44', '2023-11-01 11:02:24'),
(4, 'PEAR', 'FRUITS', 'TEMPERATE REGIONS', NULL, 'Red laterite soil with good drainage and high organic matter content is ideally suited for commercial condition. This can also be grown at an elevation of above 1200 m with a soil pH 5.8 to 6.2.', 'The ideal planting season is June to December.', 'Watering is done until the plants get established.', 'Apply FYM 25 kg, N 500 g and 1 kg in each of P and K per bearing tree/year', 'No serious pest and disease are noticed in this crop. Spray neem oil after pruning.', 'Remove stock sprouts regularly and train the plants to open centre system and prune every year in November – December.', 'public/img/mplant/icon/654333ee4f7ae.webp', 'public/img/mplant/654333eea3601.webp', '1', '2023-11-02 05:30:22', '2023-11-02 05:30:22'),
(5, 'PEACH', 'FRUITS', 'TEMPERATE REGIONS', NULL, 'Red lateritic soil with good drainage and high organic matter is suitable. This can be grown at an elevation of 2000 m with a soil pH of 5.8 to 6.2.', 'The ideal planting season is June – December.', 'Watering is done until the plants get established.', 'Apply FYM 25 kg/tree, N 500 g and 1 kg in each of P and K per bearing tree.', 'Pest- Fruit Fly Disease- Leaf curl, Powdery mildew.', 'Open centre system of training is adopted for getting higher yield. Dried, diseased, water shoots and cress - cross branches may be removed annually during December – January.', 'public/img/mplant/icon/6543348ebcf2d.webp', 'public/img/mplant/6543348f09e96.webp', '1', '2023-11-02 05:33:02', '2023-11-02 05:33:03'),
(6, 'NETARINE', 'FRUITS', 'TEMPERATE REGIONS', NULL, 'A nectarine tree\'s ideal growing medium is a well-drained sandy soil that has a pH between 6 and 7.', 'Plant a container-grown nectarine tree in early spring so it has the entire growing season to adjust to the environment before winter.', 'Watering is done until the plants get established.', 'Choose a fertilizer high in phosphorus and low in nitrogen for best results.', 'Pest - aphids and red spider mites Disease- leaf curl and brown rot.', 'Prune trees annually to increase fruit production. Thin out the smaller nectarines', 'public/img/mplant/icon/6543356299e88.webp', 'public/img/mplant/65433562c6bab.webp', '1', '2023-11-02 05:36:34', '2023-11-02 05:36:34'),
(7, 'PLUM', 'FRUITS', 'TEMPERATE REGIONS', NULL, 'Red lateritic soil with good drainage is suitable getting higher yield in plum. The soil pH should be around 5.8 to 6.2 and rich in organic matter.', 'Plant a container-grown nectarine tree in early spring so it has the entire growing season to adjust to the environment before winter.', 'Watering is done until the plants get established.', 'Apply FYM 30 kg and 500 g of N and 1 kg in each of P and K for bearing tree during October – November.', 'Pest - Fruit Fly', 'The growing points tipped at a height of 50 – 60 cm to allow the side shoots to develop. Open centre system of training is adopted in this crop. Pruning can be done during December – January. Dried, dead, diseased water shoots and cress - cross branches are removed.', 'public/img/mplant/icon/654336652b80c.webp', 'public/img/mplant/654336655c551.webp', '1', '2023-11-02 05:40:53', '2023-11-02 05:40:53'),
(8, 'APRICOT', 'FRUITS', 'TEMPERATE REGIONS', NULL, 'The trees need deep, well-drained soil with plenty of organic matter. Apricot tree growing is fairly simple, provided you have the soil, sun, and drainage necessary. Apricots are not tolerant of high levels of salt, boron, chloride and other elements.', 'Best is to plant your apricot tree in fall. You can also plant your apricot tree in spring or summer but provide for regular watering at the beginning.', 'The trees will need an inch (2.5 cm.) of water weekly, especially during bloom and fruiting. Use a drip irrigation system to avoid wet leaves, flowers and fruit.', 'Apply FYM 30 kg and 500 g of N and 1 kg in each of P and K for bearing tree during once in a year.', 'Disease- European brown rot, Powdery mildew Pest-Aphids.', 'The growing points tipped at a height of 50 – 60 cm to allow the side shoots to develop. Open centre system of training is adopted in this crop. Pruning can be done during December – January. Dried, dead, diseased water shoots and criss - cross branches are removed.', 'public/img/mplant/icon/6543373a94c25.webp', 'public/img/mplant/6543373b24cbe.webp', '1', '2023-11-02 05:44:26', '2023-11-02 05:44:27'),
(9, 'ALMOND', 'FRUITS', 'TEMPERATE REGIONS', NULL, 'Almond trees need full sun and well-draining loam soil to thrive.', 'Feb- March', 'Wait until spring to start fertilizing your tree. Young trees can benefit from small amounts of nitrogen fertilizer applied regularly throughout the growing season, while mature trees need a lot less fertilizer. Once your tree is established and starts fruiting, give it a one-time treatment of two pounds of urea, and it will be set for life.', 'Disease - Almond trees tend to contract diseases when their bark is damaged or cut by old, dirty garden equipment.Pest-Almonds trees are also vulnerable to peach tree borers—grub-like pests that attack the tree itself by burrowing into the base of the trunk.', 'Trim off any small twigs near the base of the tree. Young trees need pruning in order to focus all of their growth on their trunk and branches.', NULL, 'public/img/mplant/icon/65433a41dfbcc.webp', 'public/img/mplant/65433a42cfb01.webp', '1', '2023-11-02 05:57:21', '2023-11-02 05:57:22'),
(10, 'CHERRY', 'FRUITS', 'TEMPERATE REGIONS', NULL, 'Cherry requires well-draining and fertile soil with a pH between 6-7.5. Light sandy to loamy soil is good for the plant’s growth.', 'Dec- Jan', 'Water cherries when the topsoil feels a bit dry to touch. Do not overwater the plant and make sure the soil is never going completely dry.', 'Avoid fertilizing the cherry tree with a nitrogen-rich fertilizer, as it will stimulate more foliar growth. Use a balanced fertilizer like 7-7-7, once every 4-6 weeks during the growth period.  Topdressing the soil with compost once a year is also good.', 'Cherry is susceptible to spider mites, thrips, aphids, critters, and fruit fly. Keep them at bay using organic neem oil solutions. Avoid overwatering the plant to keep most of the potential diseases at bay.', 'Prune the plant to keep it in shape and to increase air circulation. You can lightly trim the plant twice a year to remove dead and broken branches.', 'public/img/mplant/icon/65433ac53ae12.webp', 'public/img/mplant/65433ac56df20.webp', '1', '2023-11-02 05:59:33', '2023-11-02 05:59:33'),
(11, 'WALNUT', 'FRUITS', 'TEMPERATE REGIONS', NULL, 'Plant your walnut tree in fertile, well-draining soil that receives full sun to partial shade.', 'Spring, fall', 'Water young walnut once a week from spring through late summer. Use a garden hose or a soaker hose to give your tree between 3 and 5 gallons of water each irrigation session for the tree\'s first year of growth. Irrigate established walnuts every two to three weeks.', 'Fertilize established walnut trees in the early spring. In addition to an initial application of manure at planting, trees should be provided with 100-400gms of nitrogen per tree until the fifth year. In the sixth year, trees may be provided with up to 100 kgs of Nitrogen per hectare.', 'Antracnose, Armilaria root rot and some bacterial disease.', 'Prune your walnut tree in the winter dormant season before the leaves drop. Cut out any dead, damaged or diseased limbs and thin out crowded areas to let more sunlight and air reach the centre of the tree.', 'public/img/mplant/icon/65433b3c95061.webp', 'public/img/mplant/65433b3cccb90.webp', '1', '2023-11-02 06:01:32', '2023-11-02 06:01:32'),
(12, 'TOMATO', 'VEGETABLES', 'RAIN SEASON', NULL, 'Well drained loamy soils rich in organic matter with a pH range of 6.5-7.5.', 'May - June and November – December.', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Basal dose : FYM 25 t/ha, NPK 75:100:50 kg / ha  Borax 10 kg and Zinc sulphate 50 kg / ha  Top dressing : 75 kg N/ha on 30th day of planting or during earthing up.', 'Common pests- Fruit Borer, Serpentine leaf miner, Leaf eating caterpillar, Whitefly, Thrips, Striped mealybug, Red spider mite, Pinworm  Diseases- Damping Off, Early Blight, Fusarium wilt, Septoria Leaf Spot, Bacterial wilt, Bacterial Leaf Spot, Tomato Mosaic Virus, , Tomato Leaf Curl Virus, Tomato Spotted Wilt Disease.', NULL, 'public/img/mplant/icon/6543973f72f97.webp', 'public/img/mplant/654397405df54.webp', '1', '2023-11-02 12:34:07', '2023-11-02 12:34:08'),
(13, 'BRINJAL', 'VEGETABLES', 'RAIN SEASON', NULL, 'Well drained soil rich in organic matter with pH of 6.5-7.5.', 'December – January and May – June.', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Basal dose : FYM 25 t/ha, NPK 50:50:30 kg/ ha. Top dressing : 50 kg N/ha on 30th day of planting or during earthing up.', 'Common pests- Shoot and fruit borer, Stem borer, Hadda / spotted beetle, Ash weevils, Brown leaf hopper, Lace wing bug Diseases- Damping Off, Cercospora leaf Spot, Alternaria leaf Spot, Tobaco Mosaic Virus, Collar rot', NULL, 'public/img/mplant/icon/654397b8c7192.webp', 'public/img/mplant/654397b8e3ae1.webp', '1', '2023-11-02 12:36:08', '2023-11-02 12:36:09'),
(14, 'CHILLI', 'VEGETABLES', 'RAIN SEASON', NULL, 'Well drained loamy soils rich in organic matter with pH range 6.5-7.5.', 'January – February, June – July, September- October.', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Basal dose : FYM 25 t/ha, NPK 30:60:30 kg/ ha. Potassium as K2SO4 for quality improvement. Application of potassium in the form of potassium sulphate will increase quality of chilli. Top dressing : 30 kg N/ha in equal splits on 30, 60 and 90 days after planting.', 'Common pests- Chilli thrips, Aphids, Tobacco cut worm, gram caterpiler, Diseases- Damping Off Fruit Rot and Die Back, Powdery mildew,  Bacterial leaf Spot, Cercospora leaf spot, Fusarium wilt Leaf curl virus', NULL, 'public/img/mplant/icon/654398307126d.webp', 'public/img/mplant/654398308fc79.webp', '1', '2023-11-02 12:38:08', '2023-11-02 12:38:08'),
(15, 'BITTER GOURD', 'VEGETABLES', 'RAIN SEASON', NULL, 'Sandy loam soils rich in organic matter with good drainage and pH range of 6.5-7.5 is suited for bitter gourd cultivation. This crop requires a moderate warm temperature.', 'For summer crop: January-March For monsoon crop: June-July (plains) and March-June (hills).', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Apply 10 kg of FYM per pit (20 t/ha) 100 g of NPK 6:12:12/pit as basal and 10 g of N/pit 30 days after sowing. Apply Azospirillum and Phosphobacteria 2 kg/ha and Pseudomonas @ 2.5 kg/ha along with FYM 50 kg and neem cake @ 100 kg before last ploughing.', 'Pest- Fruit flies, caterpillars, and beetles, Aphids, Mites Diseases- Downy Mildew, Powdery Mildew.', NULL, 'public/img/mplant/icon/65439af519c3f.webp', 'public/img/mplant/65439af5450f1.webp', '1', '2023-11-02 12:49:57', '2023-11-04 21:29:19'),
(16, 'SPINACH', 'VEGETABLES', 'RAIN SEASON', NULL, 'Spinach can grow well in the average soil, but it will thrive in soil rich in organic matter.', 'Any time.', 'Spinach plant has a relatively shallow root system. As a result, the plant prefers smaller and more frequent irrigation sessions, in order to produce an acceptable yield.', 'Apply well-rotted organic manure and any nitrogen rich organic fertilizer. Then side dress with any nitrogen rich organic fertilizer when the plant has at least 4 true leaves.', 'Pest-Leaf miner, Spinach crown mite, Beet armyworm, Tobacco caterpillar, Amaranthus weevil, Leaf eating caterpillars, Aphids, Cutworm Diseases- Downy Mildew, Anthracnose, Leaf spot, Damping off.', NULL, 'public/img/mplant/icon/65447f054792e.webp', 'public/img/mplant/65447f0627278.webp', '1', '2023-11-03 05:03:01', '2023-11-03 05:03:02'),
(17, 'SWEET POTATO', 'VEGETABLES', 'RAIN SEASON', NULL, 'Sweet potato can be grown in loamy soil with a pH range of 5.6 - 6.6.  It requires a warm and moist climate.', 'June – July and September are highly suitable for planting.', 'Irrigate is done before planting, again on 3rd day and there after once in a week. Stop irrigation one week before harvest.', 'Apply 25 t/ha FYM and 20:40:60 kg NPK/ha as basal and 20:40:60 kg NPK/ha after 30 days.', 'Pest- Sweet potato weevil Diseases- Soft rot.', NULL, 'public/img/mplant/icon/65448ed3689a1.webp', 'public/img/mplant/65448ed42de21.webp', '1', '2023-11-03 06:10:27', '2023-11-03 06:10:28'),
(18, 'ELEPHANT FOOT YAM', 'VEGETABLES', 'RAIN SEASON', NULL, 'A rich red-loamy soil with a pH range of 5.5-7.0 is preferred. It is a tropical and subtropical crop. It requires well distributed rainfall with humid and warm weather during vegetative phase and cool and dry weather during the corm development period.', 'April – May is the planting season. The pieces are planted in such a way that the sprouting region (the ring) is kept above the soil. Sprouting takes place in about a month.', 'It is mostly raised as a rainfed crop. However, irrigation is required when monsoon fails, where it is grown on a large scale. Water stagnation is harmful to the crop. Wherever irrigation facility is available, irrigation can be given once a week.', 'Apply 25 tonnes of FYM/ha during last ploughing. The recommended dose of NPK/ha is 80:60:100 kg. Apply 40:60:50 kg NPK/ha at 45 days after planting along with weeding and intercultural operations. Top dress with 40:50 N and K one month later along with shallow intercultural operations.', 'Diseases- Leaf spot, Collar rot.', NULL, 'public/img/mplant/icon/65448f676f84e.webp', 'public/img/mplant/65448f67a3f54.webp', '1', '2023-11-03 06:12:55', '2023-11-03 06:12:55'),
(19, 'TINDA', 'VEGETABLES', 'RAIN SEASON', NULL, 'Sandy loam soils rich in organic matter with good drainage and pH ranging from 6.5-7.5 is best suited for Tinda cultivation. This crop requires a moderate warm temperature.', 'Seeds are sown during January-February.', 'Irrigate the field before dibbling the seeds and thereafter once in a week daily in pot depending on the soil and weather conditions.', 'Apply FYM 10 t/ha, N 20 kg/ha as basal and N 20 kg/ha 30 days after sowing.Apply Azospirillum and Phosphobacteria @ 2 kg/ha and Pseudomonas @ 2.5 kg/ha along with FYM 50 kg and neem cake @ 100 kg before last ploughing.', 'Pest- Beetles, Fruit fly, White fly.', NULL, 'public/img/mplant/icon/65448fd116dc7.webp', 'public/img/mplant/65448fd1315e6.webp', '1', '2023-11-03 06:14:41', '2023-11-03 06:14:41'),
(20, 'TERO ROOT (ARBI)', 'VEGETABLES', 'RAIN SEASON', NULL, 'It comes up well in loamy soils with a pH range of 5.5-7. 0. In areas where rainfall is less, a good amount of supplementary irrigation is required for successful production.', 'June – July and February – March is the suitable season for cultivation.', 'Irrigation is done once in a week.', 'Apply 25 tonnes of FYM, 20 kg N, 30 kg P and 60 kg K/ha as basal and 20 kg N, 30 kg P and 60 kg K/ha on 45 days after planting.', 'Pest- Aphids and worms are pests attacking the leaves. Diseases- Leaf blight', NULL, 'public/img/mplant/icon/6544903f13f28.webp', 'public/img/mplant/6544903f2e523.webp', '1', '2023-11-03 06:16:31', '2023-11-03 06:16:31'),
(21, 'SEM PHALI', 'VEGETABLES', 'RAIN SEASON', NULL, 'Well drained loamy soil with pH range of 6.5-8.5 is suited.', 'Bush type can be grown throughout year; Pandal type can be grown during July – August.', 'Irrigation is done once in a week.', 'Apply 10 kg FYM per pit (20 t/ha) 100 g of NPK 6:12:12 mixture as basal and 10 g N per pit after 30 days.  Apply 2 kg each of Azospyrillum and Phosphobacterium per ha at the time of sowing.', 'Pest- Sucking pests, Pod borer Diseases- Powdery mildew.', NULL, 'public/img/mplant/icon/654490a69efb6.webp', 'public/img/mplant/654490a6b7048.webp', '1', '2023-11-03 06:18:14', '2023-11-03 06:18:14'),
(22, 'CAPSICUM', 'VEGETABLES', 'RAIN SEASON', NULL, 'Well drained loamy soil rich in organic matter.', 'September - February.', 'Irrigate the field before dibbling the seeds and thereafter once in a week daily in pot depending on the soil and weather conditions.', 'Apply FYM 25 t/ha and NPK 40:60:30 kg /ha as basal and 40 kg N/ha each on 30, 60 and 90 days of planting as top dressing.', 'Diseases- Powdery mildew, Dieback and fruit rot.', NULL, 'public/img/mplant/icon/6544910da36f0.webp', 'public/img/mplant/6544910dba357.webp', '1', '2023-11-03 06:19:57', '2023-11-03 06:19:57'),
(23, 'TOMATO', 'VEGETABLES', 'WINTER SEASON', NULL, 'Well drained loamy soils rich in organic matter with a pH range of 6.5-7.5.', 'May - June and November – December.', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Basal dose : FYM 25 t/ha, NPK 75:100:50 kg / ha  Borax 10 kg and Zinc sulphate 50 kg / ha  Top dressing : 75 kg N/ha on 30th day of planting or during earthing up.', 'Common pests- Fruit Borer, Serpentine leaf miner, Leaf eating caterpillar, Whitefly, Thrips, Striped mealybug, Red spider mite, Pinworm  Diseases- Damping Off, Early Blight, Fusarium wilt, Septoria Leaf Spot, Bacterial wilt, Bacterial Leaf Spot, Tomato Mosaic Virus, , Tomato Leaf Curl Virus, Tomato Spotted Wilt Disease.', NULL, 'public/img/mplant/icon/6543973f72f97.webp', 'public/img/mplant/654397405df54.webp', '1', '2023-11-02 12:34:07', '2023-11-02 12:34:08'),
(24, 'BRINJAL', 'VEGETABLES', 'WINTER SEASON', NULL, 'Well drained soil rich in organic matter with pH of 6.5-7.5.', 'December – January and May – June.', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Basal dose : FYM 25 t/ha, NPK 50:50:30 kg/ ha. Top dressing : 50 kg N/ha on 30th day of planting or during earthing up.', 'Common pests- Shoot and fruit borer, Stem borer, Hadda / spotted beetle, Ash weevils, Brown leaf hopper, Lace wing bug Diseases- Damping Off, Cercospora leaf Spot, Alternaria leaf Spot, Tobaco Mosaic Virus, Collar rot', NULL, 'public/img/mplant/icon/654397b8c7192.webp', 'public/img/mplant/654397b8e3ae1.webp', '1', '2023-11-02 12:36:08', '2023-11-02 12:36:09'),
(25, 'CHILLI', 'VEGETABLES', 'WINTER SEASON', NULL, 'Well drained loamy soils rich in organic matter with pH range 6.5-7.5.', 'January – February, June – July, September- October.', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Basal dose : FYM 25 t/ha, NPK 30:60:30 kg/ ha. Potassium as K2SO4 for quality improvement. Application of potassium in the form of potassium sulphate will increase quality of chilli. Top dressing : 30 kg N/ha in equal splits on 30, 60 and 90 days after planting.', 'Common pests- Chilli thrips, Aphids, Tobacco cut worm, gram caterpiler, Diseases- Damping Off Fruit Rot and Die Back, Powdery mildew,  Bacterial leaf Spot, Cercospora leaf spot, Fusarium wilt Leaf curl virus', NULL, 'public/img/mplant/icon/654398307126d.webp', 'public/img/mplant/654398308fc79.webp', '1', '2023-11-02 12:38:08', '2023-11-02 12:38:08'),
(26, 'CABBAGE', 'VEGETABLES', 'WINTER SEASON', NULL, 'It is commonly cultivated in cool moist climate.  It is grown as a winter crop in plains.  It is grown in varied types of soils ranging from sandy loam to clay.  It requires a pH ranging from 5.5 to 6.5 for higher production.', 'August – November is suitable season.', 'Provide continuous supply of moisture.', 'Apply 20 t/ha of FYM, 50 kg N, 125 kg P and 25 kg K/ha along with 2 kg Azospirillum as basal and 50 kg N after one month of planting and earth up.', 'Common pests- Cut worms, Aphids, Diamond backmoth Diseases- Ring spot, Leaf Spot, Leaf Blight, Downy mildew, Black rot.', NULL, 'public/img/mplant/icon/65449afdaf5bf.webp', 'public/img/mplant/65449afe313eb.webp', '1', '2023-11-03 07:02:21', '2023-11-03 07:02:22'),
(27, 'BOTTLE GOURD', 'VEGETABLES', 'WINTER SEASON', NULL, 'Bottle Guard can be cultivated on a wide range of soils; however, they thrive best in well-drained fertile sandy loam soil. The seedlings will emerge freely in loose soil. This  plant is heavy feeder so the soil must be rich in organic matter.', 'Bottle gourd can be grown year-round using the seed planting method. The optimal time to plant seeds is during the summer and monsoon seasons.', 'Bottle gourd needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Apply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.', 'Common pests-  Beetles, fruit flies and caterpillars, Aphids, mites Diseases- Powdery mildew, Downy Mildew.', NULL, 'public/img/mplant/icon/65449b7830f5b.webp', 'public/img/mplant/65449b7849429.webp', '1', '2023-11-03 07:04:24', '2023-11-03 07:04:24'),
(28, 'RIDGE GOURD', 'VEGETABLES', 'WINTER SEASON', NULL, 'Prepare a good growing medium. A good, simple option is a mix of two parts potting soil, one part Coco Peat  and one part Vermi Compost.', 'Starting from beginning of summers till beginning of winters.', 'Ridge gourd needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Apply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.', 'Common pests-  Beetles, fruit flies and caterpillars, Aphids, mites Diseases- Powdery mildew, Downy Mildew.', NULL, 'public/img/mplant/icon/65449c2a18a71.webp', 'public/img/mplant/65449c2a31250.webp', '1', '2023-11-03 07:07:22', '2023-11-03 07:07:22'),
(29, 'SPONGE GOURD', 'VEGETABLES', 'WINTER SEASON', NULL, 'Prepare a good growing medium. A good, simple option is a mix of two parts potting soil, one part Coco Peat  and one part Vermi Compost .', 'Starting from beginning of summers till beginning of winters.', 'Sponge gourd needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Apply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.', 'Common pests-  Beetles, fruit flies and caterpillars, Aphids, mites Diseases- Powdery mildew, Downy Mildew.', NULL, 'public/img/mplant/icon/65449d84204dd.webp', 'public/img/mplant/65449d844f960.webp', '1', '2023-11-03 07:13:08', '2023-11-03 07:13:08'),
(30, 'PUMPKIN', 'VEGETABLES', 'WINTER SEASON', NULL, 'Pumpkin requires sunny location with well-drained soil. Add neem cake or neem solution to the soil a week before planting. Mix organic matter, wood ash and well-rotted manure into the soil.', 'June- July and December- January.', 'Pumpkin needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Apply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.', 'Common pests-  Beetles and caterpillars, Fruit fly, Aphids, mites Diseases- Powdery mildew, Downy Mildew.', NULL, 'public/img/mplant/icon/6544a5d72f5d1.webp', 'public/img/mplant/6544a5d755e48.webp', '1', '2023-11-03 07:32:03', '2023-11-03 07:48:39'),
(31, 'CUCUMBER', 'VEGETABLES', 'WINTER SEASON', NULL, 'Sandy loam rich in organic matter with good drainage and pH range from 6.5-7.5 are ideal for cucumber cultivation. This crop requires a moderate warm temperature.', 'Sow the seeds during June or January to April.', 'Pumpkin needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Cucumbers have low nitrogen requirements, but they need high potassium and high phosphorus levels. So apply fertilizer which has less nitrogen content and more phosphorus and potassium.', 'Common pests-  Fruit fly Diseases-  Downy Mildew.', NULL, 'public/img/mplant/icon/6544a3fa88bf5.webp', 'public/img/mplant/6544a3fab994f.webp', '1', '2023-11-03 07:40:42', '2023-11-03 07:40:42'),
(32, 'LADY FINGER', 'VEGETABLES', 'WINTER SEASON', NULL, 'It is adaptable to a wide range of soils from sandy loam to clayey loam.', 'Planting can be done during June - August and February.', 'Bhindi needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Basal dose FYM @ 25 t/ha, N @ 20 kg, P @ 50 kg and K @ 30 kg/ha as basal and 20 kg N/ha at 30 days after sowing.', 'Common pests-  Fruit borers, White fly and Aphids, Leaf hopper, Ash weevil, Nematode Diseases-  Yellow vein mosaic virus, Powdery mildew.', NULL, 'public/img/mplant/icon/6544a51dddd37.webp', 'public/img/mplant/6544a51e0c14c.webp', '1', '2023-11-03 07:45:33', '2023-11-03 07:45:34'),
(33, 'BEANS', 'VEGETABLES', 'WINTER SEASON', NULL, 'A well drained loamy soil with pH range of 5.5-6.0 with cool climate is suited for French bean cultivation.', 'Hills February –March Plains October- November.', 'Irrigation is done immediately after sowing and again on third day and thereafter as per requirement. It needs a constant supply of moisture to thrive.', 'Apply FYM 25 t/ha during last ploughing. 90 kg of N and P 125 kg of P/ha should be applied on one side of the ridges. For rainfed conditions of Shevaroy hills, apply as a basal dose of 62.5 kg/ha of Phosphorous as super phosphate and with another half of 62.5 kg/ha Phosphorous as FYM enriched super phosphate.', 'Common pests-  Pod borers, White fly and Aphids, Thrips, Ash weevil, Diseases-  Rust, Anthracnose, Leaf spot, Root rot, Powdery mildew.', NULL, 'public/img/mplant/icon/6544a59158a9c.webp', 'public/img/mplant/6544a591d0a38.webp', '1', '2023-11-03 07:47:29', '2023-11-03 07:47:29'),
(34, 'POTATO', 'VEGETABLES', 'WINTER SEASON', NULL, 'The soil should be friable, porous and well drained. The optimum soil pH range is 4.8 to 5.4. It prefers a cool weather.', 'Hills Summer:  March – April Autumn : August – SeptemberIrrigated : January – February Plains Planting is done during October – November in plains.', 'Irrigate the crop 10 days after planting. Subsequent irrigation should be given once in a week.', 'Apply 15 t/ha of FYM and 2 kg each of Azospirillum and Phosphobacterium as basal and 120 kg N, 240 kg P and 120 kg K/ha in two splits; half as basal and the balance for top dressing on 30 days after sowing.  Apply Magnesium sulphate at 60 kg/ha as basal dose.', 'Common pests-  Nematodes, Cut worms, Aphids, White grub, Potato tuber moth, Diseases-  Late blight, Brown rot, Early blight, Virus diseases.', NULL, 'public/img/mplant/icon/6544a669f131f.webp', 'public/img/mplant/6544a66a45d77.webp', '1', '2023-11-03 07:51:05', '2023-11-03 07:51:06'),
(35, 'SPINACH', 'VEGETABLES', 'WINTER SEASON', NULL, 'Spinach can grow well in the average soil, but it will thrive in soil rich in organic matter.', 'Any time.', 'Spinach plant has a relatively shallow root system. As a result, the plant prefers smaller and more frequent irrigation sessions, in order to produce an acceptable yield.', 'Apply well-rotted organic manure and any nitrogen rich organic fertilizer. Then side dress with any nitrogen rich organic fertilizer when the plant has at least 4 true leaves.', 'Pest-Leaf miner, Spinach crown mite, Beet armyworm, Tobacco caterpillar, Amaranthus weevil, Leaf eating caterpillars, Aphids, Cutworm Diseases- Downy Mildew, Anthracnose, Leaf spot, Damping off.', NULL, 'public/img/mplant/icon/65447f054792e.webp', 'public/img/mplant/65447f0627278.webp', '1', '2023-11-03 05:03:01', '2023-11-03 05:03:02'),
(36, 'CAPSICUM', 'VEGETABLES', 'WINTER SEASON', NULL, 'Well drained loamy soil rich in organic matter.', 'September - February.', 'Irrigate the field before dibbling the seeds and thereafter once in a week daily in pot depending on the soil and weather conditions.', 'Apply FYM 25 t/ha and NPK 40:60:30 kg /ha as basal and 40 kg N/ha each on 30, 60 and 90 days of planting as top dressing.', 'Diseases- Powdery mildew, Dieback and fruit rot.', NULL, 'public/img/mplant/icon/6544910da36f0.webp', 'public/img/mplant/6544910dba357.webp', '1', '2023-11-03 06:19:57', '2023-11-03 06:19:57'),
(37, 'MARIGOLD', 'FLOWERS', 'WINTER SEASON', NULL, 'Grows better in well drained loamy soil. The soil pH should be 7.0 to 7.5. Saline and acidic soils are not suitable for cultivation.', 'Seeds are sown throughout the year.', 'Once a week or as and when necessary. Water stagnation to avoid.', 'Apply balanced nutrient organic fertilizer every 15 days at intervals. It will promote healthy growth and produce lots of flowers.', 'Common pests- Aphids, Mealybug, Spider mite, etc. Spray suitable organic pesticides to get rid of them. Spray neem oil regularly to avoid/treat any fungal disease.', 'Pruning- pruning young plants will help in promoting bushy growth. Thirty days after planting terminal portion should be tipped/removed to encourage the branching. Dead heading- Removing the dried flower from the plant, it will promote the new bud information and hence flowering.', 'public/img/mplant/icon/6544a9643efd5.webp', 'public/img/mplant/6544a9647be4f.webp', '1', '2023-11-03 08:03:48', '2023-11-03 08:03:48'),
(38, 'COSMOS', 'FLOWERS', 'WINTER SEASON', NULL, 'Cosmos don’t need any special soil preparation. They like soil that is not too rich, as rich soil will encourage foliage at the expense of blooms. Soil should be well-draining. Cosmos are tolerant of most soil pH levels, but grow best in neutral to alkaline soils.', 'Direct-sow seeds outdoors once the danger of frost has passed.  Alternatively, sow seeds indoors 4 to 6 weeks before your last spring frost date in trays or pots with a good seed-starting mixture. Move them into 5-inch pots as soon as they’re 3 or 4 inches tall. Young plants (transplants) can be planted outdoors once the danger of frost has passed.', 'Water once in a week or when necessary. Stagnation of water should be avoided.', 'Apply balanced nutrient organic fertilizer every 15 days at intervals. It will promote healthy growth and produce lots of flowers.', 'Common pests- Stem canker, Powdery mildew, Gray mould, Aphids. Spray suitable organic pesticide to get rid of them, Spray neem oil regularly to avoid/treat any fungal disease.', 'Deadheading- always remove the dried flower from the plant. It will promote the new branch and bud formation and the flowering in the plant.', 'public/img/mplant/icon/6544ab01500d6.webp', 'public/img/mplant/6544ab017086a.webp', '1', '2023-11-03 08:10:41', '2023-11-03 08:10:41'),
(39, 'SUNFLOWER', 'FLOWERS', 'WINTER SEASON', NULL, 'Well drained soil. If you want your sunflower to grow tall, then ground is the best place for its growth. Apply plenty of organic matter to it.', 'Early spring- Mid spring- sow the sunflower outdoors, directly into the garden.Winter- sow the seeds in plastic milk jug outdoor (method known as winter sowing).', 'Water it once a week or when necessary, water stagnation should be avoided.', 'Sunflower is a heavy feeder. Apply balance nutrient organic fertilizer every 15 days at intervals. It will promote healthy growth and produce lots of flowers.', 'Common pest- Sunflowers are relatively insect-free. A small grey moth sometimes lays its eggs in the blossoms. Pick the worms from the plants. Downy mildew, rust, and powdery mildew can also affect the plants. If fungal diseases are spotted early, spray with a general garden fungicide.', 'Deadheading- always remove the dried flower from the plant. It will promote the new branch and bud formation and the flowering in the plant.', 'public/img/mplant/icon/6544ac6186cd9.webp', 'public/img/mplant/6544ac61f2276.webp', '1', '2023-11-03 08:16:33', '2023-11-03 08:16:34'),
(40, 'ROSE', 'FLOWERS', 'WINTER SEASON', NULL, 'They should also be planted in well-drained soil that is rich in organic matter.', 'Roses are best planted in the spring (after the last frost) or fall (at least six weeks before your average first frost). Roses purchased in containers give you more flexibility in planting time.', 'Soil should be kept evenly moist throughout the growing season. The amount and frequency of watering will depend on your soil type and climate.', 'Fertilize the rose plant with Rose fertilizer which is specially formulated for the rose plants. And is suitable for all varieties of roses.', 'Pesky insects that like to feed on rose bushes include aphids, Japanese beetles, spider mites, and sawflies. Most of these pests can be controlled with neem oil or insecticidal soap. Powdery mildew and black spot are fungal diseases.', 'Deadheading- Remove the dried flower from the plant. It will promote the new bud formation and hence flowering. Pruning Remove the sucker carefully.', 'public/img/mplant/icon/6544ad3394472.webp', 'public/img/mplant/6544ad33b5418.webp', '1', '2023-11-03 08:20:03', '2023-11-03 08:20:03'),
(41, 'CALENDULA', 'FLOWERS', 'WINTER SEASON', NULL, 'They should also be planted in well-drained soil that is rich in organic matter. Mix 2 to 4 inches of compost into the planting soil to promote optimal plant health.', 'COLD season', 'Soil should be kept evenly moist throughout the growing season. The amount and frequency of watering will depend on your soil type and climate.', 'Although fertilization isn\'t necessary for calendulas, incorporating an all-purpose fertilizer into the soil promotes vigor and flowering.', 'Aphids and whiteflies Powdery mildew and other fungal diseases.', 'Deadheading- Remove spent flowers to keep your plant looking tidy and to encourage additional blooms. inch back young calendulas to promote a bushier form. Remove the sucker carefully.', 'public/img/mplant/icon/6544adbfca05e.webp', 'public/img/mplant/6544adc002312.webp', '1', '2023-11-03 08:22:23', '2023-11-03 08:22:24'),
(42, 'HIBISCUS', 'FLOWERS', 'WINTER SEASON', NULL, 'They should also be planted in well-drained soil that is rich in organic matter. It needs at least six hours of sunlight.', 'It bloom through out the year. When hibiscus is in their blooming stage, they require large amounts of water. Do not overwater as it can kill the hibiscus plant.', 'Soil should be kept evenly moist throughout the growing season. The amount and frequency of watering will depend on your soil type and climate.', 'A growing hibiscus plant needs lots of nutrients to bloom well. It needs high potassium for nice bloom. Use specially formulated hibiscus fertilizer.', 'Aphids and whiteflies Powdery mildew and other fungal  diseases.', 'Slight pruning is required for continuous flowering.', 'public/img/mplant/icon/6544ae322e9e0.webp', 'public/img/mplant/6544ae3254cf0.webp', '1', '2023-11-03 08:24:18', '2023-11-03 08:24:18'),
(43, 'SADABAHAR (VINCA ROSEA)', 'FLOWERS', 'WINTER SEASON', NULL, 'Only required well-drained garden soil when you grow it in the container but if you grow in the lawn you no need to worries about. Vinca is a sun-loving plant so it requires at least 6 to 8 hours direct sunlight.', 'December-February', 'Use shower for watering when the soil gets dry upper layer than use water.', 'Fertilize it at least twice a month balance organic fertilizer.', 'Save your plant from pest and diseases just apply organic insecticide neem oil sprays twice a week if require.', 'No special care is required.', 'public/img/mplant/icon/6544aeb934e63.webp', 'public/img/mplant/6544aeb965d75.webp', '1', '2023-11-03 08:26:33', '2023-11-03 08:26:33'),
(44, 'PETUNIA', 'FLOWERS', 'WINTER SEASON', NULL, 'The soil should drain well and not stay overly wet, especially in containers. It should also be moderately fertile to promote the best growth.', 'Winter season also bloom in summer season but in semi shed area.', 'Use shower for watering when the soil gets dry upper layer than use water.', 'Fertilize petunias monthly with a balanced fertilizer to support their rapid growth and heavy blooming. Double-flowered cultivars enjoy a biweekly dose of fertilizer.', 'Petunias have few serious insect or disease pests, though aphids and slugs can be an issue.', 'Remove faded, old, or dead blossoms (a practice called “deadheading”) to both improve blooms and attractiveness, especially for the larger-flowered petunias.', 'public/img/mplant/icon/6544b17a3ea99.webp', 'public/img/mplant/6544b17a66852.webp', '1', '2023-11-03 08:38:18', '2023-11-03 08:38:18'),
(45, 'BLANKET FLOWER(GAILLARDIA)', 'FLOWERS', 'WINTER SEASON', NULL, 'Gaillardia prefers poor soil. Do not amend with rich matter or overly fertilize. These plants thrive best in full sun.', 'Blooming usually occurs anywhere from May through September.', 'Immediately after planting, water deeply to encourage good root development. Check soil frequently (every other day or so) to ensure the soil is moist but not soggy one inch below soil line. Once established, Gaillardia is extremely drought tolerant.', 'Poor soils seem to encourage more flowering than rich soils, so go easy on (or avoid) the fertilizer.', 'It has few serious insect or disease pests, though aphids and slugs can be an issue.  Fungal disease', 'Deadheading isn\'t mandatory, but it may stimulate additional blooms.', 'public/img/mplant/icon/6544b32470a94.webp', 'public/img/mplant/6544b324a40f1.webp', '1', '2023-11-03 08:45:24', '2023-11-03 08:45:24'),
(46, 'GLORIOSA DAISY', 'FLOWERS', 'WINTER SEASON', NULL, 'This flower will grow in most soil types, including dry soil, but prefers wet soil moisture. The most important soil quality is sharp drainage. This plant performs best and produces the most blossoms in full sun.', 'Bloom Time’s in late summer and continues through mid-autumn.', 'Immediately after planting, water deeply to encourage good root development. Check soil frequently (every other day or so) to ensure the soil is moist but not soggy one inch below soil line. Once established, it is extremely drought tolerant.', 'Fertilizer is not necessary as long as the soil is well amended with organic compost.', 'Powdery Mildew, Leaf Spot, Smut, Rust Additionally, aphids, slugs, and snails are more attracted to crowded, damp, stressed plants.', 'Black-Eyed Susan is very carefree, but if you want to promote more blossoms and discourage self-seeding, deadhead frequently throughout the growing season.', 'public/img/mplant/icon/6544b3f89bbc4.webp', 'public/img/mplant/6544b3f8bdfbb.webp', '1', '2023-11-03 08:48:56', '2023-11-03 08:48:56'),
(47, 'BOUGANVILLEA', 'FLOWERS', 'WINTER SEASON', NULL, 'The soil must be well-drained soil. Bougainvillea needs lots of sun.', 'Bougainvillea blooms mostly during the months of November to May.', 'Water after planting and then weekly until the plant is established. Once it\'s established (which generally takes one to two years), stop watering it except in times of extreme drought. Bougainvillea likes it dry.', 'Fertilizer is not necessary as long as the soil is well amended with organic compost. But in pot Fertilize every two weeks during blooming season. Bougainvillea in pots is a heavy feeder.', 'Bougainvillea is relatively disease- and pest-free, but sometimes it\'s vulnerable to the following- Aphids, Leaf MinerBacterial and Fungal Leaf Spot, Scale Insects,Thrips,Spider Mites,Slugs and Snails, Caterpillar.', 'Prune your plant throughout the year, but especially in the late winter before the new growth cycle. Pinch off the ends of vines that are about to bloom.', 'public/img/mplant/icon/6544ba81f0783.webp', 'public/img/mplant/6544ba82d2223.webp', '1', '2023-11-03 09:16:49', '2023-11-03 09:16:50'),
(48, 'DAHLIA', 'FLOWERS', 'WINTER SEASON', NULL, 'These plants prefer well-drained, acidic loam but will grow relatively well in any soil as long as it isn’t soggy.', 'Mid Summer to Winter.', 'Provide plenty of water to your plants. Water plants deeply once or twice per week.', 'Fertilize with balance nutrient organic fertilizer. Twice a month.', 'Dahlia  is relatively disease- and pest-free, but sometimes it\'s vulnerable to the following- Aphids, Leaf MinerBacterial and Fungal Leaf Spot, powdery mildew, Scale Insects,Thrips,Spider Mites,Slugs and Snails, Caterpillar.', 'Prune your plant throughout the year, but especially in the late winter before the new growth cycle. Pinch off the ends of vines that are about to bloom.', 'public/img/mplant/icon/6544bb0e1152d.webp', 'public/img/mplant/6544bb0e60f6b.webp', '1', '2023-11-03 09:19:09', '2023-11-03 09:19:10'),
(49, 'CHRYSANTHEMUMS', 'VEGETABLES', 'WINTER SEASON', NULL, 'Then pot mixture is prepared with one part of garden soil, one part of farm yard manure, two parts of leaf mould (if available), two tablespoons of bone meal.', 'Winter', 'Chrysanthemums do not tolerate over watering, which can cause rotting of roots and yellowing of leaves. Therefore, irrigation should be as per need basis.', 'Chrysanthemum is a heavy feeder. Apply Nitrogen rich organic fertilizer in their growing stage After that on blooming stage Fertilize with balance nutrient organic fertilizer. Twice a month.', 'Dahlia  is relatively disease- and pest-free, but sometimes it\'s vulnerable to the following- Aphids, Leaf MinerBacterial and Fungal Leaf Spot, powdery mildew, Scale Insects,Thrips,Spider Mites,Slugs and Snails, Caterpillar.', 'Pinching is done to the main stem to promote the side branching and increase number of flowers. Staking is done to support and contain the flower spread and also maintain its good form.', 'public/img/mplant/icon/6544bbdbd3f82.webp', 'public/img/mplant/6544bbdc53eab.webp', '1', '2023-11-03 09:22:35', '2023-11-03 09:22:36'),
(50, 'DAFFODILS', 'FLOWERS', 'WINTER SEASON', NULL, 'Most daffodils tolerate a range of soils but grow best in moderately fertile, well-drained soil that is kept moist during the growing season.', 'Spring and early summer', 'It does not tolerate over watering, which can cause rotting of roots and yellowing of leaves. Therefore, irrigation should be as per need basis.', 'Apply a low-nitrogen, high-potash (potassium) fertilizer after flowering if bulbs are not performing as desired. Once daffodils and tulips have gone by, add bonemeal to the soil for next year’s blooms.', 'The most common problems include large narcissus bulb fly, bulb scale mite, narcissus nematode, slugs, narcissus basal rot and other fungal infections, and viruses.', 'Deadhead plants as flowers fade (for neater garden appearance) and allow leaves to remain for at least 6 weeks.', 'public/img/mplant/icon/6544bcec5a6e3.webp', 'public/img/mplant/6544bcec953c2.webp', '1', '2023-11-03 09:27:08', '2023-11-03 09:27:08'),
(51, 'LOTUS', 'FLOWERS', 'WINTER SEASON', NULL, 'Make sure the pot or bucket does not have any drainage holes at the bottom. Now fill the pot with 2 parts clay and 1 part sandy soil. Add a layer of potting mix soil about 6 inches above it. Press the seeds gently into the top of the soil about 2 inches. After placing the seedlings in a pot cover it with a fertile soil.', 'Throughout the year', 'Place the pot in a shallow water maximum of 20-30 cms deep and the best temperature to grow lotus plants is 70F. Once the temperature reaches 80F, the plants will begin to bloom.', 'Apply high nitrogen, high phosphorus fertilizer.', 'Water lotus and other aquatic plants are vulnerable to attacks by several species of leaf-eating pests. Leafrollers often infest lotuses, cutting leaf edges and rolling up inside. The larvae of the water lily beetle (Galerucella nymphaeae) also feed on leaves, and overwinter in plant debris.', 'Make certain your lotus is receiving at least 6 hours of sunlight per day.', 'public/img/mplant/icon/6544bd85e9f8a.webp', 'public/img/mplant/6544bd8669475.webp', '1', '2023-11-03 09:29:41', '2023-11-03 09:29:42'),
(61, 'CHRYSANTHEMUMS', 'FLOWERS', 'WINTER SEASON', NULL, 'Then pot mixture is prepared with one part of garden soil, one part of farm yard manure, two parts of leaf mould (if available), two tablespoons of bone meal.', 'Winter', 'Chrysanthemums do not tolerate over watering, which can cause rotting of roots and yellowing of leaves. Therefore, irrigation should be as per need basis.', 'Chrysanthemum is a heavy feeder. Apply Nitrogen rich organic fertilizer in their growing stage After that on blooming stage Fertilize with balance nutrient organic fertilizer. Twice a month.', 'Dahlia  is relatively disease- and pest-free, but sometimes it\'s vulnerable to the following- Aphids, Leaf Miner\r\nBacterial and Fungal Leaf Spot, powdery mildew, Scale Insects,Thrips,Spider Mites,Slugs and Snails, Caterpillar.', 'Pinching is done to the main stem to promote the side branching and increase number of flowers. Staking is done to support and contain the flower spread and also maintain its good form.', 'public/img/mplant/icon/6544d3aa8a551.webp', 'public/img/mplant/6544d3aab7296.webp', '1', '2023-11-03 11:04:10', '2023-11-03 11:04:10'),
(62, 'PORTULACA', 'FLOWERS', 'WINTER SEASON', NULL, 'The plant can grow in any kind of soil but it prefers sandy and well- drained soil.', 'Summer season.\r\nIt loves full sunlight and spread itself very well.', 'Water it once a week or when necessary. Water stagnation to avoid.', 'Apply balance nutrient organic fertilizer every 30 days at intervals. It will promote healthy growth and produce lots of flowers.', '•	Common pest- Sunflowers are relatively insect-free. A small grey moth sometimes lays its eggs in the blossoms. Pick the worms from the plants.\r\n•	Downy mildew, rust, and powdery mildew can also affect the plants. If fungal diseases are spotted early, spray with a general garden fungicide.', 'Deadheading- always remove the dried flower from the plant. It will promote the new branch and bud formation and the flowering in the plant.', 'public/img/mplant/icon/6544d477d8e1c.webp', 'public/img/mplant/6544d478036e9.webp', '1', '2023-11-03 11:07:35', '2023-11-03 11:07:36'),
(63, 'NASTURTIUM', 'FLOWERS', 'WINTER SEASON', NULL, 'Any kind, but required well drained soil.', 'Nasturtium is a cool-season annual. That means they\'re exhausted as soon as temperatures top 85 degrees, so grow them in early spring or fall.', 'Water regularly, about one inch per week. Nasturtium gets ratty-looking and stops blooming fast if they get too dry.', 'Do not fertilize them. This is rule one of nasturtium care. If you overfeed them, they\'ll put out lots of leaves and not many flowers.', 'cabbage caterpillars, Aphids, Whitefly', 'Clip off faded flowers to keep them blooming.', 'public/img/mplant/icon/6544d5613ada9.webp', 'public/img/mplant/6544d5616b694.webp', '1', '2023-11-03 11:11:29', '2023-11-03 11:11:29'),
(64, 'ZINNIA', 'FLOWERS', 'WINTER SEASON', NULL, 'It can grow in most soil conditions, but the ideal soil will be rich in organic matter and well-draining.\r\n6 to 8 hours of sunlight per day is essential.', 'Summer, Fall', 'Maintain moderate soil moisture', 'fertilize lightly to maximize growth and blooms.', 'Bacterial and fungal spots, powdery mildew, and bacterial wilt may affect zinnias. Minimize wetting of foliage and space plants properly to avoid disease.\r\nCaterpillars, mealybugs, and spider mites also cause problems. Some leaf damage is not an issue, so avoid spraying unless there’s a true infestation.', 'After zinnias flower, cut off the old flowers (a process called “deadheading”) to encourage more flowers to form.', 'public/img/mplant/icon/6544d689f36c5.webp', 'public/img/mplant/6544d68a25cbe.webp', '1', '2023-11-03 11:16:25', '2023-11-03 11:16:26'),
(65, 'APARAJITA (CLITORIA)', 'FLOWERS', 'WINTER SEASON', NULL, 'So the Potting Soil for Aparajita should look like this:\r\n•	Garden Soil -1/3 part\r\n•	Coco peat – 1/3 part\r\n•	Compost – 1/3 part (cow dung or vermicompost)', 'Spring and summer', 'Drought resistant, water when the soil is dry', 'Although fertilization isn\'t necessary for Aparajita but applies compost regularly for healthy growth and flowering', 'Aphids and mites and some fungal diseases.', 'Pinch the growing tips once a month to promote branching. Remove any dead or infected leaves or other parts of the plants. Deadheading of the flowers can also be done.', 'public/img/mplant/icon/6544d97311277.webp', 'public/img/mplant/6544d9732fa43.webp', '1', '2023-11-03 11:28:50', '2023-11-03 11:28:51'),
(66, 'MOGRA', 'FLOWERS', 'WINTER SEASON', NULL, 'It demands well-drained, organic-rich soil. A potting combination consisting of two parts loam soil, and one part well-decomposed cow dung is suitable.', 'In the blooming season of summer and monsoon.', 'The Mogra plant care involves keeping it wet. Mogra plant water requirements are the simple act of watering the plant if the top two inches of soil appear to be dry. Overwatering the plant can cause root rot. So never water the mogra flower while the soil is still moist.', 'Apply nitrogen-rich organic fertilizer in the growing stage but after maturity apply phosphorus-rich organic fertilizer for flowering.', 'Aphids and mites and some fungal diseases.', 'You must prune your jasmine plant regularly.', 'public/img/mplant/icon/6544d9f9091d7.webp', 'public/img/mplant/6544d9f93bc62.webp', '1', '2023-11-03 11:31:04', '2023-11-03 11:31:05');
INSERT INTO `mplants` (`id`, `title`, `category`, `sub_category`, `description`, `soil`, `time_of_showing`, `watering`, `fertilizer_requirement`, `pest_and_diseases`, `special_care`, `icon`, `img`, `status`, `created_at`, `updated_at`) VALUES
(67, 'MORNING GLORY', 'FLOWERS', 'WINTER SEASON', NULL, 'Even with the plant’s tolerance of poor soil, it actually prefers well-draining soil that is moist, but not soggy.', 'Blooming usually occurs anywhere from May through September, opening in the morning and closing in the afternoon.', 'Use shower for watering when the soil gets dry upper layer than use water.', 'Fertilize monthly with a balanced fertilizer to support their rapid growth and heavy blooming.', 'Morning glory has few serious insect or disease pests, though aphids and slugs can be an issue.  Fungal disease', 'To reduce re-seeding and control unwanted spreading, simply remove spent blooms as they fade or all the dead vines after the first killing frost in fall.', 'public/img/mplant/icon/6544da98a5275.webp', 'public/img/mplant/6544da98c3e3a.webp', '1', '2023-11-03 11:33:44', '2023-11-03 11:33:44'),
(68, 'LILIES', 'FLOWERS', 'WINTER SEASON', NULL, 'Lilies need lots of sun. For dependable blooms, lilies should get 6 to 8 hours of direct sunlight a day. Well drained soil is good. we recommend a soil mix of 2 parts sandy loam, 2 parts peat and 1 part sand.', 'Blooming usually occurs anywhere from May through September.', 'Use shower for watering when the soil gets dry upper layer than use water.', 'Fertilize monthly with a balanced fertilizer to support their rapid growth and heavy blooming.', 'Lilies have few serious insect or disease pests, though aphids and slugs can be an issue.  Fungal disease', 'If flowers fed cut back the stalk to the base of the plant. After bloom divide lilies.', 'public/img/mplant/icon/6544db3acb84f.webp', 'public/img/mplant/6544db3b45074.webp', '1', '2023-11-03 11:36:26', '2023-11-03 11:36:27'),
(70, 'KIWIFRUIT', 'FRUITS', 'TEMPERATE REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463ecc0619b.webp', 'public/img/mplant/65463ecc20e79.webp', '1', '2023-11-04 06:55:13', '2023-11-04 12:53:32'),
(71, 'PECAN NUT', 'FRUITS', 'TEMPERATE REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463eb3da176.webp', 'public/img/mplant/65463eb403dc1.webp', '1', '2023-11-04 06:56:59', '2023-11-04 12:53:08'),
(72, 'PERSIMMON', 'FRUITS', 'TEMPERATE REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463e9b38ac4.webp', 'public/img/mplant/65463e9b4f577.webp', '1', '2023-11-04 06:57:33', '2023-11-04 12:52:43'),
(73, 'SWEET ORANGE', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463e32851ed.webp', 'public/img/mplant/65463e32a844f.webp', '1', '2023-11-04 06:58:56', '2023-11-04 12:50:58'),
(74, 'MANDARIN', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463e1bc846a.webp', 'public/img/mplant/65463e1be82c9.webp', '1', '2023-11-04 06:59:32', '2023-11-04 12:50:36'),
(75, 'GRAPE FRUIT', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463dff8537e.webp', 'public/img/mplant/65463dffa7dc3.webp', '1', '2023-11-04 07:00:39', '2023-11-04 12:50:07'),
(76, 'LIME', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463de4a0bb8.webp', 'public/img/mplant/65463de4c873f.webp', '1', '2023-11-04 07:01:37', '2023-11-04 12:49:40'),
(77, 'LEMON', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463dbac0956.webp', 'public/img/mplant/65463dbae0d73.webp', '1', '2023-11-04 07:02:04', '2023-11-04 12:48:59'),
(78, 'LITCHI', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463d9889229.webp', 'public/img/mplant/65463d98b287c.webp', '1', '2023-11-04 07:02:38', '2023-11-04 12:48:24'),
(80, 'GUAVA', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463d3aa8234.webp', 'public/img/mplant/65463d3ac9602.webp', '1', '2023-11-04 07:03:46', '2023-11-04 12:46:50'),
(81, 'PHALSA', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463d1d2056d.webp', 'public/img/mplant/65463d1d4ec74.webp', '1', '2023-11-04 07:04:14', '2023-11-04 12:46:21'),
(82, 'FIG', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463cd417b44.webp', 'public/img/mplant/65463cd438d84.webp', '1', '2023-11-04 07:04:49', '2023-11-04 12:45:08'),
(83, 'POMEGRANATE', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549c87f2ca9e.webp', 'public/img/mplant/6549c87f51cc3.webp', '1', '2023-11-04 07:05:16', '2023-11-07 05:17:51'),
(84, 'AVOCADO', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463c912b604.webp', 'public/img/mplant/65463c914d846.webp', '1', '2023-11-04 07:05:41', '2023-11-04 12:44:01'),
(85, 'MANGO', 'FRUITS', 'TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463c4291a42.webp', 'public/img/mplant/65463c42b2e1b.webp', '1', '2023-11-04 07:06:59', '2023-11-04 12:42:42'),
(86, 'BANANA', 'FRUITS', 'TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463a218d4eb.webp', 'public/img/mplant/65463a2226dd2.webp', '1', '2023-11-04 07:07:38', '2023-11-04 12:33:38'),
(87, 'SAPOTA', 'FRUITS', 'TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463c2756766.webp', 'public/img/mplant/65463c2777586.webp', '1', '2023-11-04 07:08:10', '2023-11-04 12:42:15'),
(88, 'PINEAPPLE', 'FRUITS', 'TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463b69ea8ea.webp', 'public/img/mplant/65463b6a1ddd7.webp', '1', '2023-11-04 07:08:44', '2023-11-04 12:39:06'),
(89, 'PAPAYA', 'FRUITS', 'TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463b8cc0a42.webp', 'public/img/mplant/65463b8ce4263.webp', '1', '2023-11-04 07:09:12', '2023-11-04 12:39:41'),
(91, 'GRAPES', 'FRUITS', 'TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549ce1413d8b.webp', 'public/img/mplant/6549ce145df62.webp', '1', '2023-11-04 07:10:40', '2023-11-07 05:41:40'),
(92, 'CASHEW NUT', 'FRUITS', 'TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/65463befba97d.webp', 'public/img/mplant/65463befdc94f.webp', '1', '2023-11-04 07:11:17', '2023-11-04 12:41:19'),
(93, 'SUNFLOWER', 'FLOWERS', 'SUMMER SEASON', NULL, 'Well drained soil. If you want your sunflower to grow tall, then ground is the best place for its growth. Apply plenty of organic matter to it.', 'Early spring- Mid spring- sow the sunflower outdoors, directly into the garden.Winter- sow the seeds in plastic milk jug outdoor (method known as winter sowing).', 'Water it once a week or when necessary, water stagnation should be avoided.', 'Sunflower is a heavy feeder. Apply balance nutrient organic fertilizer every 15 days at intervals. It will promote healthy growth and produce lots of flowers.', 'Common pest- Sunflowers are relatively insect-free. A small grey moth sometimes lays its eggs in the blossoms. Pick the worms from the plants. Downy mildew, rust, and powdery mildew can also affect the plants. If fungal diseases are spotted early, spray with a general garden fungicide.', 'Deadheading- always remove the dried flower from the plant. It will promote the new branch and bud formation and the flowering in the plant.', 'public/img/mplant/icon/6544ac6186cd9.webp', 'public/img/mplant/6544ac61f2276.webp', '1', '2023-11-03 08:16:33', '2023-11-03 08:16:34'),
(94, 'PORTULACA', 'FLOWERS', 'SUMMER SEASON', NULL, 'The plant can grow in any kind of soil but it prefers sandy and well- drained soil.', 'Summer season.\r\nIt loves full sunlight and spread itself very well.', 'Water it once a week or when necessary. Water stagnation to avoid.', 'Apply balance nutrient organic fertilizer every 30 days at intervals. It will promote healthy growth and produce lots of flowers.', '•	Common pest- Sunflowers are relatively insect-free. A small grey moth sometimes lays its eggs in the blossoms. Pick the worms from the plants.\r\n•	Downy mildew, rust, and powdery mildew can also affect the plants. If fungal diseases are spotted early, spray with a general garden fungicide.', 'Deadheading- always remove the dried flower from the plant. It will promote the new branch and bud formation and the flowering in the plant.', 'public/img/mplant/icon/6544d477d8e1c.webp', 'public/img/mplant/6544d478036e9.webp', '1', '2023-11-03 11:07:35', '2023-11-03 11:07:36'),
(95, 'NASTURTIUM', 'FLOWERS', 'SUMMER SEASON', NULL, 'Any kind, but required well drained soil.', 'Nasturtium is a cool-season annual. That means they\'re exhausted as soon as temperatures top 85 degrees, so grow them in early spring or fall.', 'Water regularly, about one inch per week. Nasturtium gets ratty-looking and stops blooming fast if they get too dry.', 'Do not fertilize them. This is rule one of nasturtium care. If you overfeed them, they\'ll put out lots of leaves and not many flowers.', 'cabbage caterpillars, Aphids, Whitefly', 'Clip off faded flowers to keep them blooming.', 'public/img/mplant/icon/6544d5613ada9.webp', 'public/img/mplant/6544d5616b694.webp', '1', '2023-11-03 11:11:29', '2023-11-03 11:11:29'),
(96, 'ZINNIA', 'FLOWERS', 'SUMMER SEASON', NULL, 'It can grow in most soil conditions, but the ideal soil will be rich in organic matter and well-draining.\r\n6 to 8 hours of sunlight per day is essential.', 'Summer, Fall', 'Maintain moderate soil moisture', 'fertilize lightly to maximize growth and blooms.', 'Bacterial and fungal spots, powdery mildew, and bacterial wilt may affect zinnias. Minimize wetting of foliage and space plants properly to avoid disease.\r\nCaterpillars, mealybugs, and spider mites also cause problems. Some leaf damage is not an issue, so avoid spraying unless there’s a true infestation.', 'After zinnias flower, cut off the old flowers (a process called “deadheading”) to encourage more flowers to form.', 'public/img/mplant/icon/6544d689f36c5.webp', 'public/img/mplant/6544d68a25cbe.webp', '1', '2023-11-03 11:16:25', '2023-11-03 11:16:26'),
(97, 'HIBISCUS', 'FLOWERS', 'SUMMER SEASON', NULL, 'They should also be planted in well-drained soil that is rich in organic matter. It needs at least six hours of sunlight.', 'It bloom through out the year. When hibiscus is in their blooming stage, they require large amounts of water. Do not overwater as it can kill the hibiscus plant.', 'Soil should be kept evenly moist throughout the growing season. The amount and frequency of watering will depend on your soil type and climate.', 'A growing hibiscus plant needs lots of nutrients to bloom well. It needs high potassium for nice bloom. Use specially formulated hibiscus fertilizer.', 'Aphids and whiteflies Powdery mildew and other fungal  diseases.', 'Slight pruning is required for continuous flowering.', 'public/img/mplant/icon/6544ae322e9e0.webp', 'public/img/mplant/6544ae3254cf0.webp', '1', '2023-11-03 08:24:18', '2023-11-03 08:24:18'),
(98, 'APARAJITA (CLITORIA)', 'FLOWERS', 'SUMMER SEASON', NULL, 'So the Potting Soil for Aparajita should look like this:\r\n•	Garden Soil -1/3 part\r\n•	Coco peat – 1/3 part\r\n•	Compost – 1/3 part (cow dung or vermicompost)', 'Spring and summer', 'Drought resistant, water when the soil is dry', 'Although fertilization isn\'t necessary for Aparajita but applies compost regularly for healthy growth and flowering', 'Aphids and mites and some fungal diseases.', 'Pinch the growing tips once a month to promote branching. Remove any dead or infected leaves or other parts of the plants. Deadheading of the flowers can also be done.', 'public/img/mplant/icon/6544d97311277.webp', 'public/img/mplant/6544d9732fa43.webp', '1', '2023-11-03 11:28:50', '2023-11-03 11:28:51'),
(99, 'MOGRA', 'FLOWERS', 'SUMMER SEASON', NULL, 'It demands well-drained, organic-rich soil. A potting combination consisting of two parts loam soil, and one part well-decomposed cow dung is suitable.', 'In the blooming season of summer and monsoon.', 'The Mogra plant care involves keeping it wet. Mogra plant water requirements are the simple act of watering the plant if the top two inches of soil appear to be dry. Overwatering the plant can cause root rot. So never water the mogra flower while the soil is still moist.', 'Apply nitrogen-rich organic fertilizer in the growing stage but after maturity apply phosphorus-rich organic fertilizer for flowering.', 'Aphids and mites and some fungal diseases.', 'You must prune your jasmine plant regularly.', 'public/img/mplant/icon/6544d9f9091d7.webp', 'public/img/mplant/6544d9f93bc62.webp', '1', '2023-11-03 11:31:04', '2023-11-03 11:31:05'),
(100, 'PETUNIA', 'FLOWERS', 'SUMMER SEASON', NULL, 'The soil should drain well and not stay overly wet, especially in containers. It should also be moderately fertile to promote the best growth.', 'Winter season also bloom in summer season but in semi shed area.', 'Use shower for watering when the soil gets dry upper layer than use water.', 'Fertilize petunias monthly with a balanced fertilizer to support their rapid growth and heavy blooming. Double-flowered cultivars enjoy a biweekly dose of fertilizer.', 'Petunias have few serious insect or disease pests, though aphids and slugs can be an issue.', 'Remove faded, old, or dead blossoms (a practice called “deadheading”) to both improve blooms and attractiveness, especially for the larger-flowered petunias.', 'public/img/mplant/icon/6544b17a3ea99.webp', 'public/img/mplant/6544b17a66852.webp', '1', '2023-11-03 08:38:18', '2023-11-03 08:38:18'),
(101, 'MORNING GLORY', 'FLOWERS', 'SUMMER SEASON', NULL, 'Even with the plant’s tolerance of poor soil, it actually prefers well-draining soil that is moist, but not soggy.', 'Blooming usually occurs anywhere from May through September, opening in the morning and closing in the afternoon.', 'Use shower for watering when the soil gets dry upper layer than use water.', 'Fertilize monthly with a balanced fertilizer to support their rapid growth and heavy blooming.', 'Morning glory has few serious insect or disease pests, though aphids and slugs can be an issue.  Fungal disease', 'To reduce re-seeding and control unwanted spreading, simply remove spent blooms as they fade or all the dead vines after the first killing frost in fall.', 'public/img/mplant/icon/6544da98a5275.webp', 'public/img/mplant/6544da98c3e3a.webp', '1', '2023-11-03 11:33:44', '2023-11-03 11:33:44'),
(102, 'LILIES', 'FLOWERS', 'SUMMER SEASON', NULL, 'Lilies need lots of sun. For dependable blooms, lilies should get 6 to 8 hours of direct sunlight a day. Well drained soil is good. we recommend a soil mix of 2 parts sandy loam, 2 parts peat and 1 part sand.', 'Blooming usually occurs anywhere from May through September.', 'Use shower for watering when the soil gets dry upper layer than use water.', 'Fertilize monthly with a balanced fertilizer to support their rapid growth and heavy blooming.', 'Lilies have few serious insect or disease pests, though aphids and slugs can be an issue.  Fungal disease', 'If flowers fed cut back the stalk to the base of the plant. After bloom divide lilies.', 'public/img/mplant/icon/6544db3acb84f.webp', 'public/img/mplant/6544db3b45074.webp', '1', '2023-11-03 11:36:26', '2023-11-03 11:36:27'),
(103, 'TOMATO', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Well drained loamy soils rich in organic matter with a pH range of 6.5-7.5.', 'May - June and November – December.', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Basal dose : FYM 25 t/ha, NPK 75:100:50 kg / ha  Borax 10 kg and Zinc sulphate 50 kg / ha  Top dressing : 75 kg N/ha on 30th day of planting or during earthing up.', 'Common pests- Fruit Borer, Serpentine leaf miner, Leaf eating caterpillar, Whitefly, Thrips, Striped mealybug, Red spider mite, Pinworm  Diseases- Damping Off, Early Blight, Fusarium wilt, Septoria Leaf Spot, Bacterial wilt, Bacterial Leaf Spot, Tomato Mosaic Virus, , Tomato Leaf Curl Virus, Tomato Spotted Wilt Disease.', NULL, 'public/img/mplant/icon/6543973f72f97.webp', 'public/img/mplant/654397405df54.webp', '1', '2023-11-02 12:34:07', '2023-11-02 12:34:08'),
(104, 'BRINJAL', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Well drained soil rich in organic matter with pH of 6.5-7.5.', 'December – January and May – June.', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Basal dose : FYM 25 t/ha, NPK 50:50:30 kg/ ha. Top dressing : 50 kg N/ha on 30th day of planting or during earthing up.', 'Common pests- Shoot and fruit borer, Stem borer, Hadda / spotted beetle, Ash weevils, Brown leaf hopper, Lace wing bug Diseases- Damping Off, Cercospora leaf Spot, Alternaria leaf Spot, Tobaco Mosaic Virus, Collar rot', NULL, 'public/img/mplant/icon/654397b8c7192.webp', 'public/img/mplant/654397b8e3ae1.webp', '1', '2023-11-02 12:36:08', '2023-11-02 12:36:09'),
(105, 'CHILLI', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Well drained loamy soils rich in organic matter with pH range 6.5-7.5.', 'January – February, June – July, September- October.', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Basal dose : FYM 25 t/ha, NPK 30:60:30 kg/ ha. Potassium as K2SO4 for quality improvement. Application of potassium in the form of potassium sulphate will increase quality of chilli. Top dressing : 30 kg N/ha in equal splits on 30, 60 and 90 days after planting.', 'Common pests- Chilli thrips, Aphids, Tobacco cut worm, gram caterpiler, Diseases- Damping Off Fruit Rot and Die Back, Powdery mildew,  Bacterial leaf Spot, Cercospora leaf spot, Fusarium wilt Leaf curl virus', NULL, 'public/img/mplant/icon/654398307126d.webp', 'public/img/mplant/654398308fc79.webp', '1', '2023-11-02 12:38:08', '2023-11-02 12:38:08'),
(106, 'BOTTLE GOURD', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Bottle Guard can be cultivated on a wide range of soils; however, they thrive best in well-drained fertile sandy loam soil. The seedlings will emerge freely in loose soil. This  plant is heavy feeder so the soil must be rich in organic matter.', 'Bottle gourd can be grown year-round using the seed planting method. The optimal time to plant seeds is during the summer and monsoon seasons.', 'Bottle gourd needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Apply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.', 'Common pests-  Beetles, fruit flies and caterpillars, Aphids, mites Diseases- Powdery mildew, Downy Mildew.', NULL, 'public/img/mplant/icon/65449b7830f5b.webp', 'public/img/mplant/65449b7849429.webp', '1', '2023-11-03 07:04:24', '2023-11-03 07:04:24'),
(107, 'PUMPKIN', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Pumpkin requires sunny location with well-drained soil. Add neem cake or neem solution to the soil a week before planting. Mix organic matter, wood ash and well-rotted manure into the soil.', 'June- July and December- January.', 'Pumpkin needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Apply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.', 'Common pests-  Beetles and caterpillars, Fruit fly, Aphids, mites Diseases- Powdery mildew, Downy Mildew.', NULL, 'public/img/mplant/icon/6544a5d72f5d1.webp', 'public/img/mplant/6544a5d755e48.webp', '1', '2023-11-03 07:32:03', '2023-11-03 07:48:39'),
(108, 'CUCUMBER', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Sandy loam rich in organic matter with good drainage and pH range from 6.5-7.5 are ideal for cucumber cultivation. This crop requires a moderate warm temperature.', 'Sow the seeds during June or January to April.', 'Pumpkin needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Cucumbers have low nitrogen requirements, but they need high potassium and high phosphorus levels. So apply fertilizer which has less nitrogen content and more phosphorus and potassium.', 'Common pests-  Fruit fly Diseases-  Downy Mildew.', NULL, 'public/img/mplant/icon/6544a3fa88bf5.webp', 'public/img/mplant/6544a3fab994f.webp', '1', '2023-11-03 07:40:42', '2023-11-03 07:40:42'),
(109, 'LADY FINGER', 'VEGETABLES', 'SUMMER SEASON', NULL, 'It is adaptable to a wide range of soils from sandy loam to clayey loam.', 'Planting can be done during June - August and February.', 'Bhindi needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Basal dose FYM @ 25 t/ha, N @ 20 kg, P @ 50 kg and K @ 30 kg/ha as basal and 20 kg N/ha at 30 days after sowing.', 'Common pests-  Fruit borers, White fly and Aphids, Leaf hopper, Ash weevil, Nematode Diseases-  Yellow vein mosaic virus, Powdery mildew.', NULL, 'public/img/mplant/icon/6544a51dddd37.webp', 'public/img/mplant/6544a51e0c14c.webp', '1', '2023-11-03 07:45:33', '2023-11-03 07:45:34'),
(110, 'BEANS', 'VEGETABLES', 'SUMMER SEASON', NULL, 'A well drained loamy soil with pH range of 5.5-6.0 with cool climate is suited for French bean cultivation.', 'Hills February –March Plains October- November.', 'Irrigation is done immediately after sowing and again on third day and thereafter as per requirement. It needs a constant supply of moisture to thrive.', 'Apply FYM 25 t/ha during last ploughing. 90 kg of N and P 125 kg of P/ha should be applied on one side of the ridges. For rainfed conditions of Shevaroy hills, apply as a basal dose of 62.5 kg/ha of Phosphorous as super phosphate and with another half of 62.5 kg/ha Phosphorous as FYM enriched super phosphate.', 'Common pests-  Pod borers, White fly and Aphids, Thrips, Ash weevil, Diseases-  Rust, Anthracnose, Leaf spot, Root rot, Powdery mildew.', NULL, 'public/img/mplant/icon/6544a59158a9c.webp', 'public/img/mplant/6544a591d0a38.webp', '1', '2023-11-03 07:47:29', '2023-11-03 07:47:29'),
(111, 'SPINACH', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Spinach can grow well in the average soil, but it will thrive in soil rich in organic matter.', 'Any time.', 'Spinach plant has a relatively shallow root system. As a result, the plant prefers smaller and more frequent irrigation sessions, in order to produce an acceptable yield.', 'Apply well-rotted organic manure and any nitrogen rich organic fertilizer. Then side dress with any nitrogen rich organic fertilizer when the plant has at least 4 true leaves.', 'Pest-Leaf miner, Spinach crown mite, Beet armyworm, Tobacco caterpillar, Amaranthus weevil, Leaf eating caterpillars, Aphids, Cutworm Diseases- Downy Mildew, Anthracnose, Leaf spot, Damping off.', NULL, 'public/img/mplant/icon/65447f054792e.webp', 'public/img/mplant/65447f0627278.webp', '1', '2023-11-03 05:03:01', '2023-11-03 05:03:02'),
(112, 'SWEET POTATO', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Sweet potato can be grown in loamy soil with a pH range of 5.6 - 6.6.  It requires a warm and moist climate.', 'June – July and September are highly suitable for planting.', 'Irrigate is done before planting, again on 3rd day and there after once in a week. Stop irrigation one week before harvest.', 'Apply 25 t/ha FYM and 20:40:60 kg NPK/ha as basal and 20:40:60 kg NPK/ha after 30 days.', 'Pest- Sweet potato weevil Diseases- Soft rot.', NULL, 'public/img/mplant/icon/65448ed3689a1.webp', 'public/img/mplant/65448ed42de21.webp', '1', '2023-11-03 06:10:27', '2023-11-03 06:10:28'),
(113, 'RIDGE GOURD', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Prepare a good growing medium. A good, simple option is a mix of two parts potting soil, one part Coco Peat  and one part Vermi Compost.', 'Starting from beginning of summers till beginning of winters.', 'Ridge gourd needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Apply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.', 'Common pests-  Beetles, fruit flies and caterpillars, Aphids, mites Diseases- Powdery mildew, Downy Mildew.', NULL, 'public/img/mplant/icon/65449c2a18a71.webp', 'public/img/mplant/65449c2a31250.webp', '1', '2023-11-03 07:07:22', '2023-11-03 07:07:22'),
(114, 'SPONGE GOURD', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Prepare a good growing medium. A good, simple option is a mix of two parts potting soil, one part Coco Peat  and one part Vermi Compost .', 'Starting from beginning of summers till beginning of winters.', 'Sponge gourd needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Apply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.', 'Common pests-  Beetles, fruit flies and caterpillars, Aphids, mites Diseases- Powdery mildew, Downy Mildew.', NULL, 'public/img/mplant/icon/65449d84204dd.webp', 'public/img/mplant/65449d844f960.webp', '1', '2023-11-03 07:13:08', '2023-11-03 07:13:08'),
(115, 'BITTER GOURD', 'VEGETABLES', 'SUMMER SEASON', NULL, 'Sandy loam soils rich in organic matter with good drainage and pH range of 6.5-7.5 is suited for bitter gourd cultivation. This crop requires a moderate warm temperature.', 'For summer crop: January-March For monsoon crop: June-July (plains) and March-June (hills).', 'After establishment of seedlings, irrigate at weekly intervals in field and daily in pot depending on the soil and weather conditions.', 'Apply 10 kg of FYM per pit (20 t/ha) 100 g of NPK 6:12:12/pit as basal and 10 g of N/pit 30 days after sowing. Apply Azospirillum and Phosphobacteria 2 kg/ha and Pseudomonas @ 2.5 kg/ha along with FYM 50 kg and neem cake @ 100 kg before last ploughing.', 'Pest- Fruit flies, caterpillars, and beetles, Aphids, Mites Diseases- Downy Mildew, Powdery Mildew.', NULL, 'public/img/mplant/icon/65439af519c3f.webp', 'public/img/mplant/65439af5450f1.webp', '1', '2023-11-02 12:49:57', '2023-11-04 21:29:19'),
(116, 'BOTTLE GOURD', 'VEGETABLES', 'RAIN SEASON', NULL, 'Bottle Guard can be cultivated on a wide range of soils; however, they thrive best in well-drained fertile sandy loam soil. The seedlings will emerge freely in loose soil. This  plant is heavy feeder so the soil must be rich in organic matter.', 'Bottle gourd can be grown year-round using the seed planting method. The optimal time to plant seeds is during the summer and monsoon seasons.', 'Bottle gourd needs lots of water to grow well. It needs a constant supply of moisture to thrive.', 'Apply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.', 'Common pests-  Beetles, fruit flies and caterpillars, Aphids, mites Diseases- Powdery mildew, Downy Mildew.', NULL, 'public/img/mplant/icon/65449b7830f5b.webp', 'public/img/mplant/65449b7849429.webp', '1', '2023-11-03 07:04:24', '2023-11-03 07:04:24'),
(118, 'HOLY BASIL (OCIMUM TENUIFLORUM)', 'HARBALS', 'HARBALS', 'Holi basil or tulsi is native to indian subcontinent, cultivated for regional and traditional medcine purpose. Tulsi is the most common herbs that is used in ayurveda.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6548d872af366.webp', 'public/img/mplant/6548d873f1b20.webp', '1', '2023-11-06 12:13:38', '2023-11-13 08:21:05'),
(119, 'MINT (MENTHA PULEGIUM)', 'HARBALS', 'HARBALS', 'Mentha leaves or mint are used as a medicinal herb to treat stomach ache. Mint leaves along with basil, rose mary, sage, oragano, and catnip are most popular common cooking herbs in india.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6548d8ad3e34e.webp', 'public/img/mplant/6548d8ae50240.webp', '1', '2023-11-06 12:14:37', '2023-11-13 08:20:25'),
(120, 'GRAPES', 'FRUITS', 'SUB TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549c82b276b8.webp', 'public/img/mplant/6549c82b47e63.webp', '1', '2023-11-04 07:10:40', '2023-11-07 05:16:27'),
(121, 'POMEGRANATE', 'FRUITS', 'TROPICAL REGIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549c89791726.webp', 'public/img/mplant/6549c897b0483.webp', '1', '2023-11-04 07:05:16', '2023-11-07 05:18:15'),
(122, 'CURRY LEAVES (MURRAYA KOENIGAI)', 'HARBALS', 'HARBALS', 'Curry leaves from curry tree or sweet neem leaves are native ti india and used in many dishes mostly in curries the leaves are known to have anti- diabetic properties and helps in losing weight.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d63faadbf.webp', 'public/img/mplant/6549d6403b00d.webp', '1', '2023-11-07 06:16:31', '2023-11-13 08:19:46'),
(123, 'FENUGREEK (TRIGONELLA FOENUM-GRAECUM)', 'HARBALS', 'HARBALS', 'Feenugreek plant are cultivated for seeds and leaves ehich are common ingredients in the dishes of india.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d6a27c1d4.webp', 'public/img/mplant/6549d6a2b9d6b.webp', '1', '2023-11-07 06:18:10', '2023-11-13 08:19:04'),
(124, 'FENNEL PLANT (FOENICULUM VULGARE)', 'HARBALS', 'HARBALS', 'Feenels are highly aromatic and flavourful herbs used as a vegetable sin many parts of the world. Seeds of fennel plants are one of the most important spices in kashmiri pandits culinary culture of india.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d6cf146c8.webp', 'public/img/mplant/6549d6cf3583d.webp', '1', '2023-11-07 06:18:55', '2023-11-13 08:18:16'),
(125, 'CORIANDER (CORIANDRUM SATIVUM)', 'HARBALS', 'HARBALS', 'Coriander plants produce fresh leaves and seeds, most tradionally used in cooking in india.The fresh leaves are wonderful sources of fibres, magnesium and manganese and rich in vitamin a and vitamin C.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d700bf09e.webp', 'public/img/mplant/6549d700ecce9.webp', '1', '2023-11-07 06:19:44', '2023-11-13 08:17:35'),
(126, 'MUSTARD PLANT', 'HARBALS', 'HARBALS', 'Mustard plants are good sources of many vitamins and minerals, the anti-oxidants and anti-inflammatory agents helps in lowering the cholesterols and detoxifying the body.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d72aaec1a.webp', 'public/img/mplant/6549d72ad06cc.webp', '1', '2023-11-07 06:20:26', '2023-11-13 08:16:52'),
(127, 'AJWAIN PLANT', 'HARBALS', 'HARBALS', 'Ajwain or carom plant originated in indiaand consumed by humans in culinary culture. The leaves and dried seeds are used in traditional ayurveda for indigestion and loss of appetite.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d74dd0cad.webp', 'public/img/mplant/6549d74e04fb2.webp', '1', '2023-11-07 06:21:01', '2023-11-13 08:16:15'),
(128, 'GREEN GARLIC', 'HARBALS', 'HARBALS', 'Garlic used as a traditional medicine in ayureveda to lower cholesterol levels and to regulate blood pressure. The magical herb contains medicinal properties and reduce hypertension.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d7813c8d3.webp', 'public/img/mplant/6549d7817466f.webp', '1', '2023-11-07 06:21:53', '2023-11-13 08:15:36'),
(129, 'GINGER PLANT', 'HARBALS', 'HARBALS', 'Gringer used as a spice and nest home remedy to treat common cold and cough. The hot fragrant kitchen spice is the key ingredient in india especially in meat-based dishes and traditional indian drinks.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d7b98ec73.webp', 'public/img/mplant/6549d7b9ae8bb.webp', '1', '2023-11-07 06:22:49', '2023-11-13 08:14:57'),
(130, 'TURMERIC PLANT', 'HARBALS', 'HARBALS', 'Turmeric is native to the indian subcontinent and the dried roots are used in cooking as well as in ayurvedic medicine. Turmeric powder is traditional medicine and contains lists of powerful properties and incredible health benefits.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d7e753dae.webp', 'public/img/mplant/6549d7e783bf2.webp', '1', '2023-11-07 06:23:35', '2023-11-13 08:14:15'),
(131, 'DILL HERB', 'HARBALS', 'HARBALS', 'Dill delicate herbs are used as spice for flavouring foods in india and widely grows in eurasia. In india dill is known as shepu or savaa and traditional dishes made with potatoes and fresh fenugreek leaves are very good antigas properties.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d80ede35e.webp', 'public/img/mplant/6549d80f1409a.webp', '1', '2023-11-07 06:24:14', '2023-11-13 08:13:38'),
(132, 'CHAANGERI', 'HARBALS', 'HARBALS', 'Indian changeri it has a taste of lemon and the entire plant is rich in vitamin C. Medicinal use .', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d8382d803.webp', 'public/img/mplant/6549d8385e6b6.webp', '1', '2023-11-07 06:24:56', '2023-11-13 08:13:00'),
(133, 'GILOY (TINOSPORA CORDIFOLIA)', 'HARBALS', 'HARBALS', 'Giloy is also know as root sof immortality or amrit in sanskrit.The roots are used in ayurvedic medicine and one of the most divine herb in india.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d863596e9.webp', 'public/img/mplant/6549d86375629.webp', '1', '2023-11-07 06:25:39', '2023-11-13 08:12:12'),
(134, 'ALOE VERA', 'HARBALS', 'HARBALS', 'Aloe vera is used in cosmetics and one of the best home remedies for burns and sunburns.', NULL, NULL, NULL, NULL, NULL, NULL, 'public/img/mplant/icon/6549d896c5e1f.webp', 'public/img/mplant/6549d896e785c.webp', '1', '2023-11-07 06:26:30', '2023-11-13 08:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `mplant_categories`
--

CREATE TABLE `mplant_categories` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `img_sm` varchar(255) DEFAULT NULL,
  `img_lg` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mplant_categories`
--

INSERT INTO `mplant_categories` (`id`, `category`, `description`, `img_sm`, `img_lg`, `status`, `created_at`, `updated_at`) VALUES
(3, 'FRUITS', NULL, 'public/img/mplant/category/6541e36838e89.webp', 'public/img/mplant/category/6541e36838e8a.webp', '1', '2023-11-01 05:34:32', '2023-11-01 05:56:34'),
(4, 'FLOWERS', NULL, 'public/img/mplant/category/6541e3cb08f8a.webp', 'public/img/mplant/category/6541e3cb08f8c.webp', '1', '2023-11-01 05:36:11', '2023-11-01 06:02:53'),
(5, 'VEGETABLES', NULL, 'public/img/mplant/category/6541e40428e03.webp', 'public/img/mplant/category/6541e40428e04.webp', '1', '2023-11-01 05:37:08', '2023-11-01 06:05:06'),
(7, 'HARBALS', NULL, 'public/img/mplant/category/6548b1e578fc1.webp', 'public/img/mplant/category/6548b1e578fc3.webp', '1', '2023-11-06 09:29:09', '2023-11-06 09:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `mplant_sub_categories`
--

CREATE TABLE `mplant_sub_categories` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `img_sm` varchar(255) DEFAULT NULL,
  `img_lg` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mplant_sub_categories`
--

INSERT INTO `mplant_sub_categories` (`id`, `category`, `sub_category`, `description`, `img_sm`, `img_lg`, `status`, `created_at`, `updated_at`) VALUES
(2, 'FRUITS', 'TROPICAL REGIONS', '<!-- wp:heading {\"level\":3} --><h3>The tropical wet climate regions of india are:</h3><!-- /wp:heading --><!-- wp:paragraph --><p>The western ghats, the Malabar coast, Southern assam, Lakshwadeep &amp; Andaman &amp; the Nicobar island.</p><!-- /wp:paragraph -->', 'public/img/mplant/sub-category/6541e65b2ce37.webp', 'public/img/mplant/sub-category/6541e65b2ce38.webp', '1', '2023-11-01 05:47:07', '2023-11-08 12:15:48'),
(3, 'FRUITS', 'SUB TROPICAL REGIONS', '<!-- wp:heading {\"level\":3} --><h3>Climate of subtropical regions is hot &amp; humid in summers. winters are mild cold , the area falls under sub tropical regions are:</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Parts Of Pujab Assam &amp; Rajasthan, Parts Of Jammu &amp; Kashmir, Himachal Pradesh &amp; Uttarakhand, Rajasthan, Gujarat &amp; Haryana</p><!-- /wp:paragraph -->', 'public/img/mplant/sub-category/6541e6bbc6824.webp', 'public/img/mplant/sub-category/6541e6bbc6825.webp', '1', '2023-11-01 05:48:43', '2023-11-08 12:23:21'),
(4, 'FRUITS', 'TEMPERATE REGIONS', '<!-- wp:heading {\"level\":3} --><h3>Temperate regions in india are areas where the temperature falls below the freezing point during the winters , the region generally includes:</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Himalayan Region, Northern Parts Of Punjab &amp; Southern Parts Of Jammu &amp; Kasmir, Thar Dessert Of Rajasthan, South Western Parts Of Haryana, Kutch Of Gujarat, Punjab, Haryana, Eastern Uttar Pradesh, Ubion Territory Of Delhi, North West Plateau Area Of Madhya Pradesh &amp; Eastern Rajasthan, &amp; Bihar</p><!-- /wp:paragraph -->', 'public/img/mplant/sub-category/6541e714335d4.webp', 'public/img/mplant/sub-category/6541e714335d5.webp', '1', '2023-11-01 05:50:12', '2023-11-08 12:25:39'),
(5, 'FLOWERS', 'WINTER SEASON', NULL, 'public/img/mplant/sub-category/6541e81b09159.webp', 'public/img/mplant/sub-category/6541e81b0915a.webp', '1', '2023-11-01 05:54:35', '2023-11-01 06:03:13'),
(6, 'FLOWERS', 'SUMMER SEASON', NULL, 'public/img/mplant/sub-category/6541e84c01b5b.webp', 'public/img/mplant/sub-category/6541e84c01b5c.webp', '1', '2023-11-01 05:55:24', '2023-11-01 06:03:27'),
(7, 'FLOWERS', 'RAIN SEASON', NULL, 'public/img/mplant/sub-category/6541e8716cbe0.webp', 'public/img/mplant/sub-category/6541e8716cbe3.webp', '1', '2023-11-01 05:56:01', '2023-11-01 06:03:44'),
(8, 'VEGETABLES', 'WINTER SEASON', NULL, 'public/img/mplant/sub-category/6541eab7f0ed9.webp', 'public/img/mplant/sub-category/6541eab7f0eda.webp', '1', '2023-11-01 06:05:44', '2023-11-01 06:05:44'),
(9, 'VEGETABLES', 'SUMMER SEASON', NULL, 'public/img/mplant/sub-category/6541ead6e517e.webp', 'public/img/mplant/sub-category/6541ead6e517f.webp', '1', '2023-11-01 06:06:15', '2023-11-01 06:06:15'),
(10, 'VEGETABLES', 'RAIN SEASON', NULL, 'public/img/mplant/sub-category/6541eaf188ec1.webp', 'public/img/mplant/sub-category/6541eaf188ec2.webp', '1', '2023-11-01 06:06:41', '2023-11-01 06:06:41'),
(12, 'HARBALS', 'HARBALS', NULL, 'public/img/mplant/sub-category/6548b82ed2431.webp', 'public/img/mplant/sub-category/6548b82ed2432.webp', '1', '2023-11-06 09:55:59', '2023-11-06 09:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `nursery_sliders`
--

CREATE TABLE `nursery_sliders` (
  `id` bigint(20) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `button_name` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `order_no` tinyint(4) NOT NULL,
  `img_sm` varchar(255) DEFAULT NULL,
  `img_lg` varchar(225) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nursery_sliders`
--

INSERT INTO `nursery_sliders` (`id`, `slider_name`, `title`, `description`, `button_name`, `button_link`, `order_no`, `img_sm`, `img_lg`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slider 1', 'slider 1', 'slider 1', 'slider 1', 'slider 1', 1, 'public/img/slider/nursery/6543500c4bfbe.webp', 'public/img/slider/nursery/6543500c4bfc2.webp', '1', '2023-11-02 07:30:20', '2023-11-02 07:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_items`
--

CREATE TABLE `ordered_items` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `orderid` varchar(225) NOT NULL,
  `pid` varchar(225) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `shipping_charges` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordered_items`
--

INSERT INTO `ordered_items` (`id`, `uid`, `orderid`, `pid`, `coupon_code`, `qty`, `shipping_charges`, `created_at`, `updated_at`) VALUES
(1, 30, 'OGD0001', '650aa69e4e181', NULL, 1, 65.00, '2023-11-18 10:38:46', '2023-11-18 10:38:46'),
(2, 30, 'OGD0002', '651e8ea13fde8', 'mJBQQLwA7ijE', 1, 65.00, '2023-11-18 10:41:18', '2023-11-18 10:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `cart_id` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(50) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `image1` varchar(50) DEFAULT NULL,
  `image2` varchar(50) DEFAULT NULL,
  `image3` varchar(50) DEFAULT NULL,
  `regular_price` decimal(10,2) DEFAULT 0.00,
  `selling_price` decimal(10,2) DEFAULT 0.00,
  `discount` int(10) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `coupon_discount_price` decimal(10,2) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `shipping_charge` decimal(10,2) DEFAULT 0.00,
  `address_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `cart_id`, `invoice_no`, `product_id`, `product_name`, `image1`, `image2`, `image3`, `regular_price`, `selling_price`, `discount`, `quantity`, `coupon_code`, `coupon_discount_price`, `weight`, `shipping_charge`, `address_id`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, '22061013', 'CART00002', 'IOA00001', 8, 'OGD10 High Nutrient Garden Soil-25kg', 'product81.jpg', 'product82.jpg', NULL, 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 50.00, NULL, 'placed', NULL, '2022-06-28 01:04:47', '2022-06-28 01:05:34'),
(2, '22061013', 'CART00002', 'IOA00001', 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-06-28 01:04:56', '2022-06-28 01:05:34'),
(3, '22061013', 'CART00004', 'IOA00002', 8, 'OGD10 High Nutrient Garden Soil-25kg', 'product81.jpg', 'product82.jpg', NULL, 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 50.00, NULL, 'dispatched', NULL, '2022-06-28 01:13:17', '2022-06-28 03:22:54'),
(4, '22061013', 'CART00004', 'IOA00002', 5, 'OGD5 Booster Vegetable & Fruit Fertlizer-2kg', 'product51.jpg', 'product52.jpg', NULL, 594.00, 326.00, 45, 1, NULL, NULL, 2.00, 0.00, NULL, 'placed', NULL, '2022-06-28 01:13:25', '2022-06-28 01:13:51'),
(5, '22061013', 'CART00005', 'IOA00003', 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-06-28 01:16:54', '2022-06-28 01:20:01'),
(6, '22061013', 'CART00005', 'IOA00003', 4, 'OGD1 Flower & Plant Nutrient Fertilizer-1kg', 'product41.jpg', 'product42.jpg', NULL, 210.00, 126.00, 40, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-06-28 01:19:28', '2022-06-28 01:20:01'),
(7, '22061013', 'CART00005', 'IOA00003', 3, 'OGD1 Flower & Plant Nutrient Fertilizer-5kg', 'product31.jpg', 'product32.jpg', NULL, 1050.00, 525.00, 50, 1, NULL, NULL, 2.00, 0.00, NULL, 'placed', NULL, '2022-06-28 01:19:35', '2022-06-28 01:20:01'),
(8, '22061013', 'CART00008', 'IOA00004', 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-06-28 01:21:30', '2022-06-28 05:59:09'),
(9, '22061013', 'CART00008', 'IOA00004', 3, 'OGD1 Flower & Plant Nutrient Fertilizer-5kg', 'product31.jpg', 'product32.jpg', NULL, 1050.00, 525.00, 50, 1, NULL, NULL, 2.00, 0.00, NULL, 'placed', NULL, '2022-06-28 01:21:36', '2022-06-28 05:59:09'),
(10, '22061013', 'CART00008', 'IOA00004', 2, 'OGD1 Flower & Plant Nutrient Fertilizer', 'product21.jpg', 'product22.jpg', 'product23.jpg', 500.00, 400.00, 20, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-06-28 01:21:44', '2022-06-28 05:59:09'),
(11, '22061013', 'CART00011', 'IOA00007', 8, 'OGD10 High Nutrient Garden Soil-25kg', 'product81.jpg', 'product82.jpg', NULL, 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 50.00, NULL, 'placed', NULL, '2022-06-28 06:05:11', '2022-06-29 01:42:31'),
(12, '22061013', 'CART00011', 'IOA00007', 5, 'OGD5 Booster Vegetable & Fruit Fertlizer-2kg', 'product51.jpg', 'product52.jpg', NULL, 594.00, 326.00, 45, 1, NULL, NULL, 2.00, 0.00, NULL, 'placed', NULL, '2022-06-28 06:05:21', '2022-06-29 01:42:31'),
(13, '22061013', NULL, NULL, 8, 'OGD10 High Nutrient Garden Soil-25kg', 'product81.jpg', 'product82.jpg', NULL, 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 50.00, NULL, 'added', NULL, '2022-06-30 01:21:04', '2022-06-30 01:56:11'),
(14, '22070420', 'CART00014', 'IOA00008', 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-07-04 23:51:38', '2022-07-05 00:59:31'),
(15, '22070622', 'CART00015', 'IOA00009', 8, 'OGD10 High Nutrient Garden Soil-25kg', 'product81.jpg', 'product82.jpg', NULL, 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 50.00, NULL, 'placed', NULL, '2022-07-06 04:39:29', '2022-07-06 04:58:57'),
(17, '2207144', 'CART00017', 'IOA00010', 5, 'OGD5 Booster Vegetable & Fruit Fertlizer-2kg', 'product51.jpg', 'product52.jpg', NULL, 594.00, 326.00, 45, 1, NULL, NULL, 2.00, 0.00, NULL, 'placed', NULL, '2022-07-16 07:16:17', '2022-07-16 07:18:56'),
(21, '2207144', 'CART00021', 'IOA00011', 8, 'OGD10 High Nutrient Garden Soil-25kg', 'product81.jpg', 'product82.jpg', NULL, 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 50.00, NULL, 'placed', NULL, '2022-07-16 08:01:42', '2022-07-16 08:17:41'),
(22, '2207144', 'CART00021', 'IOA00011', 5, 'OGD5 Booster Vegetable & Fruit Fertlizer-2kg', 'product51.jpg', 'product52.jpg', NULL, 594.00, 326.00, 45, 1, NULL, NULL, 2.00, 0.00, NULL, 'placed', NULL, '2022-07-16 08:16:36', '2022-07-16 08:17:41'),
(23, '2207144', 'CART00023', 'IOA00012', 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-07-19 10:03:27', '2022-07-19 11:17:57'),
(25, '22072021', 'CART00025', NULL, 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, NULL, NULL, 1.00, 0.00, NULL, 'added', NULL, '2022-07-20 09:54:21', '2022-07-20 11:45:05'),
(28, '2207144', 'CART00028', 'IOA00013', 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 2, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-07-21 07:14:09', '2022-07-21 10:29:33'),
(37, '2207144', 'CART00028', 'IOA00013', 8, 'OGD10 High Nutrient Garden Soil-25kg', 'ogd10-high-nutrient-garden-soil-25kg_81.jpg', 'product82.jpg', 'ogd10-high-nutrient-garden-soil-25kg_83.jpg', 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 50.00, NULL, 'placed', NULL, '2022-07-21 10:02:05', '2022-07-21 10:29:33'),
(38, '2207144', 'CART00028', 'IOA00013', 7, 'OGD8 Vermicompost Fertilizer-1kg', 'product71.jpg', 'product72.jpg', NULL, 55.00, 44.00, 20, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-07-21 10:02:12', '2022-07-21 10:29:33'),
(39, '2207144', 'CART00039', 'IOA00014', 7, 'OGD8 Vermicompost Fertilizer-1kg', 'product71.jpg', 'product72.jpg', NULL, 55.00, 44.00, 20, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-07-21 10:30:06', '2022-07-21 10:30:44'),
(40, '2207144', 'CART00040', 'IOA00015', 4, 'OGD1 Flower & Plant Nutrient Fertilizer-1kg', 'product41.jpg', 'product42.jpg', NULL, 210.00, 126.00, 40, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-07-21 10:31:56', '2022-07-21 10:33:04'),
(41, '2207144', 'CART00041', 'IOA00016', 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, NULL, NULL, 1.00, 0.00, NULL, 'placed', NULL, '2022-07-21 10:35:26', '2022-07-21 10:36:26'),
(42, '2207144', 'CART00041', 'IOA00016', 5, 'OGD5 Booster Vegetable & Fruit Fertlizer-2kg', 'product51.jpg', 'product52.jpg', NULL, 594.00, 326.00, 45, 1, NULL, NULL, 2.00, 0.00, NULL, 'placed', NULL, '2022-07-21 10:35:33', '2022-07-21 10:36:26'),
(59, NULL, NULL, NULL, 2, 'OGD1 Flower & Plant Nutrient Fertilizer', 'product21.jpg', 'product22.jpg', 'product23.jpg', 500.00, 400.00, 20, 2, '54ASD84', 100.00, 1.00, 0.00, NULL, 'added', NULL, '2022-07-22 12:28:12', '2022-07-22 12:28:43'),
(62, '2207144', 'CART00062', 'IOA00017', 5, 'OGD5 Booster Vegetable & Fruit Fertlizer-2kg', 'product51.jpg', 'product52.jpg', NULL, 594.00, 326.00, 45, 1, NULL, NULL, 2.00, 0.00, NULL, 'placed', NULL, '2022-07-23 05:33:57', '2022-07-26 10:24:07'),
(64, '2207144', 'CART00062', 'IOA00017', 8, 'OGD10 High Nutrient Garden Soil-25kg', 'ogd10-high-nutrient-garden-soil-25kg_81.jpg', 'product82.jpg', 'ogd10-high-nutrient-garden-soil-25kg_83.jpg', 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 35.00, NULL, 'placed', NULL, '2022-07-26 10:14:27', '2022-07-26 10:24:07'),
(69, NULL, NULL, NULL, 8, 'OGD10 High Nutrient Garden Soil-25kg', 'ogd10-high-nutrient-garden-soil-25kg_81.jpg', 'product82.jpg', 'ogd10-high-nutrient-garden-soil-25kg_83.jpg', 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 35.00, NULL, 'added', NULL, '2022-07-29 07:18:57', '2022-07-29 07:18:57'),
(70, NULL, NULL, NULL, 1, 'OGD1 Flower & Plant Nutrient Fertilizer-10kg', 'product11.jpg', 'product12.jpg', 'product13.jpg', 500.00, 350.00, 30, 1, NULL, NULL, 100.00, 0.00, NULL, 'added', NULL, '2022-07-29 07:18:59', '2022-07-29 07:18:59'),
(71, NULL, NULL, NULL, 5, 'OGD5 Booster Vegetable & Fruit Fertlizer-2kg', 'product51.jpg', 'product52.jpg', NULL, 594.00, 326.00, 45, 3, NULL, NULL, 2.00, 0.00, NULL, 'added', NULL, '2022-07-29 07:19:01', '2022-07-29 07:22:59'),
(72, '2207141', 'CART00072', NULL, 1, 'OGD1 Flower & Plant Nutrient Fertilizer-10kg', 'product11.jpg', 'product12.jpg', 'product13.jpg', 500.00, 350.00, 30, 2, NULL, NULL, 100.00, 0.00, 74, 'added', NULL, '2022-07-29 12:09:59', '2022-08-02 05:51:40'),
(73, '2207141', 'CART00072', NULL, 2, 'OGD1 Flower & Plant Nutrient Fertilizer', 'product21.jpg', 'product22.jpg', 'product23.jpg', 500.00, 400.00, 20, 2, NULL, NULL, 1.00, 0.00, 74, 'added', NULL, '2022-07-29 12:10:00', '2022-08-02 05:51:40'),
(74, '2207141', 'CART00072', NULL, 3, 'OGD1 Flower & Plant Nutrient Fertilizer-5kg', 'product31.jpg', 'product32.jpg', NULL, 1050.00, 525.00, 50, 1, NULL, NULL, 2.00, 0.00, 74, 'added', NULL, '2022-08-01 06:35:13', '2022-08-02 05:51:40'),
(75, '2207141', 'CART00072', NULL, 4, 'OGD1 Flower & Plant Nutrient Fertilizer-1kg', 'product41.jpg', 'product42.jpg', NULL, 210.00, 126.00, 40, 2, NULL, NULL, 1.00, 0.00, 74, 'added', NULL, '2022-08-01 06:35:14', '2022-08-02 06:04:42'),
(76, '2207141', NULL, NULL, 7, 'OGD8 Vermicompost Fertilizer-1kg', 'product71.jpg', 'product72.jpg', NULL, 55.00, 44.00, 20, 2, NULL, NULL, 1.00, 0.00, 74, 'added', NULL, '2022-08-02 05:51:31', '2022-08-02 05:58:08'),
(77, '2207141', NULL, NULL, 8, 'OGD10 High Nutrient Garden Soil-25kg', 'ogd10-high-nutrient-garden-soil-25kg_81.jpg', 'product82.jpg', 'ogd10-high-nutrient-garden-soil-25kg_83.jpg', 2625.00, 1899.00, 28, 3, NULL, NULL, 25.00, 35.00, 74, 'added', NULL, '2022-08-02 05:51:32', '2022-08-02 05:58:06'),
(78, '2207141', NULL, NULL, 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, NULL, NULL, 1.00, 0.00, 74, 'added', NULL, '2022-08-02 05:51:33', '2022-08-02 05:51:40'),
(79, '22080225', NULL, NULL, 8, 'OGD10 High Nutrient Garden Soil-25kg', 'ogd10-high-nutrient-garden-soil-25kg_81.jpg', 'product82.jpg', 'ogd10-high-nutrient-garden-soil-25kg_83.jpg', 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 35.00, NULL, 'added', NULL, '2022-08-02 10:42:50', '2022-08-02 10:42:50'),
(80, '22080225', NULL, NULL, 1, 'OGD1 Flower & Plant Nutrient Fertilizer-10kg', 'product11.jpg', 'product12.jpg', 'product13.jpg', 500.00, 350.00, 30, 1, NULL, NULL, 100.00, 0.00, NULL, 'added', NULL, '2022-08-02 10:42:50', '2022-08-02 10:42:50'),
(81, '22080226', 'CART00081', NULL, 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, '123456', 100.00, 1.00, 0.00, 77, 'added', NULL, '2022-08-02 11:28:16', '2022-08-02 11:39:46'),
(82, '22080226', 'CART00081', NULL, 5, 'OGD5 Booster Vegetable & Fruit Fertlizer-2kg', 'product51.jpg', 'product52.jpg', NULL, 594.00, 326.00, 45, 1, '123456', 100.00, 2.00, 0.00, 77, 'added', NULL, '2022-08-02 11:28:16', '2022-08-02 11:39:46'),
(83, '22080226', 'CART00081', NULL, 8, 'OGD10 High Nutrient Garden Soil-25kg', 'ogd10-high-nutrient-garden-soil-25kg_81.jpg', 'product82.jpg', 'ogd10-high-nutrient-garden-soil-25kg_83.jpg', 2625.00, 1899.00, 28, 1, '123456', 100.00, 25.00, 35.00, 77, 'added', NULL, '2022-08-02 11:31:33', '2022-08-02 11:39:46'),
(84, '22080226', 'CART00081', NULL, 4, 'OGD1 Flower & Plant Nutrient Fertilizer-1kg', 'product41.jpg', 'product42.jpg', NULL, 210.00, 126.00, 40, 1, '123456', 100.00, 1.00, 0.00, 77, 'added', NULL, '2022-08-02 11:31:58', '2022-08-02 11:39:46'),
(85, '22080226', 'CART00081', NULL, 3, 'OGD1 Flower & Plant Nutrient Fertilizer-5kg', 'product31.jpg', 'product32.jpg', NULL, 1050.00, 525.00, 50, 1, '123456', 100.00, 2.00, 0.00, 77, 'added', NULL, '2022-08-02 11:31:59', '2022-08-02 11:39:46'),
(86, '2207144', NULL, NULL, 8, 'OGD10 High Nutrient Garden Soil-25kg', 'ogd10-high-nutrient-garden-soil-25kg_81.jpg', 'product82.jpg', 'ogd10-high-nutrient-garden-soil-25kg_83.jpg', 2625.00, 1899.00, 28, 2, NULL, NULL, 25.00, 35.00, 72, 'added', NULL, '2022-08-12 08:37:17', '2022-08-12 11:26:03'),
(87, '22080527', 'CART00087', NULL, 8, 'OGD10 High Nutrient Garden Soil-25kg', 'ogd10-high-nutrient-garden-soil-25kg_81.jpg', 'product82.jpg', 'ogd10-high-nutrient-garden-soil-25kg_83.jpg', 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 35.00, 78, 'added', NULL, '2022-08-12 10:41:37', '2023-07-05 09:15:02'),
(88, '22081228', NULL, NULL, 8, 'OGD10 High Nutrient Garden Soil-25kg', 'ogd10-high-nutrient-garden-soil-25kg_81.jpg', 'product82.jpg', 'ogd10-high-nutrient-garden-soil-25kg_83.jpg', 2625.00, 1899.00, 28, 1, NULL, NULL, 25.00, 35.00, NULL, 'added', NULL, '2022-08-12 10:45:25', '2022-08-12 10:45:25'),
(89, '2207144', NULL, NULL, 7, 'OGD8 Vermicompost Fertilizer-1kg', 'product71.jpg', 'product72.jpg', NULL, 55.00, 44.00, 20, 2, NULL, NULL, 1.00, 0.00, 72, 'added', NULL, '2022-08-12 11:25:59', '2022-08-12 11:26:31'),
(90, '22080527', 'CART00087', NULL, 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, NULL, NULL, 1.00, 0.00, 78, 'added', NULL, '2022-08-19 15:01:02', '2023-07-05 09:15:02'),
(92, '22080527', 'CART00087', NULL, 7, 'OGD8 Vermicompost Fertilizer-1kg', 'product71.jpg', 'product72.jpg', NULL, 55.00, 44.00, 20, 1, NULL, NULL, 1.00, 0.00, 78, 'added', NULL, '2022-12-13 08:36:59', '2023-07-05 09:15:02'),
(93, '22121331', NULL, NULL, 1, 'OGD1 Flower & Plant Nutrient Fertilizer-10kg', 'product11.jpg', 'product12.jpg', 'product13.jpg', 500.00, 350.00, 30, 1, NULL, NULL, 100.00, 0.00, NULL, 'added', NULL, '2022-12-13 09:00:24', '2022-12-13 09:00:24'),
(94, '22121330', 'CART00094', 'IOA00018', 2, 'OGD1 Flower & Plant Nutrient Fertilizer', 'product21.jpg', 'product22.jpg', 'product23.jpg', 500.00, 400.00, 20, 1, NULL, NULL, 1.00, 0.00, 79, 'placed', NULL, '2023-02-07 12:36:46', '2023-03-05 12:43:09'),
(96, '23030532', 'CART00096', NULL, 7, 'OGD8 Vermicompost Fertilizer-1kg', 'product71.jpg', 'product72.jpg', NULL, 55.00, 44.00, 20, 1, NULL, NULL, 1.00, 0.00, 80, 'added', NULL, '2023-03-05 09:55:10', '2023-03-27 03:12:59'),
(97, '22121330', 'CART00097', NULL, 7, 'OGD8 Vermicompost Fertilizer-1kg', 'product71.jpg', 'product72.jpg', NULL, 55.00, 44.00, 20, 1, NULL, NULL, 1.00, 0.00, 89, 'added', NULL, '2023-03-06 10:26:49', '2023-09-23 10:07:56'),
(98, '22121330', 'CART00097', NULL, 3, 'OGD1 Flower & Plant Nutrient Fertilizer-5kg', 'product31.jpg', 'product32.jpg', NULL, 1050.00, 525.00, 50, 1, NULL, NULL, 2.00, 0.00, 89, 'added', NULL, '2023-03-06 10:28:03', '2023-09-23 10:07:56'),
(99, '23032634', NULL, NULL, 6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'product61.jpg', 'product62.jpg', NULL, 297.00, 178.00, 40, 1, NULL, NULL, 1.00, 0.00, 82, 'added', NULL, '2023-03-26 12:46:12', '2023-03-26 12:47:30'),
(100, '23030532', 'CART00096', NULL, 2, 'OGD1 Flower & Plant Nutrient Fertilizer', 'product21.jpg', 'product22.jpg', 'product23.jpg', 500.00, 400.00, 20, 1, NULL, NULL, 1.00, 0.00, NULL, 'cancelled', NULL, '2023-03-27 03:08:27', '2023-03-27 16:42:52'),
(101, '22080527', 'CART00087', NULL, 4, 'OGD1 Flower & Plant Nutrient Fertilizer-1kg', 'product41.jpg', 'product42.jpg', NULL, 210.00, 126.00, 40, 1, NULL, NULL, 1.00, 0.00, 78, 'added', NULL, '2023-07-05 09:14:52', '2023-07-05 09:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `order_settings`
--

CREATE TABLE `order_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting` varchar(50) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_settings`
--

INSERT INTO `order_settings` (`id`, `setting`, `value`, `created_at`, `updated_at`) VALUES
(1, 'shipping_charge', '35', '2022-06-21 04:50:10', '2022-07-23 09:42:48'),
(2, 'setting', NULL, '2022-06-21 04:52:52', '2022-06-21 05:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `placed_order_id` bigint(20) DEFAULT NULL,
  `cart_id` varchar(50) DEFAULT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `amount_refunded` decimal(10,2) DEFAULT NULL,
  `refund_status` varchar(50) DEFAULT NULL,
  `captured` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `address_id` int(12) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `uid`, `placed_order_id`, `cart_id`, `payment_id`, `order_id`, `amount`, `method`, `amount_refunded`, `refund_status`, `captured`, `description`, `email`, `contact`, `address_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '22061013', 1, 'CART00002', 'pay_Jmol9ZDAFj2zW9', NULL, 332700.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 35, 'authorized', '2022-06-28 01:05:13', '2022-06-28 01:05:34'),
(2, '22061013', 2, 'CART00004', 'pay_Jmotuag0r1mZKJ', NULL, 347500.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 35, 'authorized', '2022-06-28 01:13:34', '2022-06-28 01:13:51'),
(3, '22061013', 3, 'CART00005', 'pay_Jmp0R2TjQ4Y9J8', NULL, 82900.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 35, 'authorized', '2022-06-28 01:19:44', '2022-06-28 01:20:01'),
(4, '22061013', 4, 'CART00008', 'pay_JmVidmtufPaEmy', NULL, 344500.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 38, 'authorized', '2022-06-28 05:58:06', '2022-06-28 06:02:55'),
(5, '22061013', NULL, 'CART00011', NULL, NULL, 3475.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 39, 'start', '2022-06-29 01:26:26', '2022-06-29 01:26:26'),
(6, '22061013', NULL, 'CART00011', NULL, NULL, 3475.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 39, 'start', '2022-06-29 01:26:59', '2022-06-29 01:26:59'),
(7, '22061013', 7, 'CART00011', 'pay_JnDvJD1079Jx0m', NULL, 3475.00, NULL, 0.00, NULL, 0, NULL, NULL, NULL, 39, 'authorized', '2022-06-29 01:27:52', '2022-07-04 02:44:17'),
(8, '22061013', NULL, 'CART00011', NULL, NULL, 3475.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 39, 'start', '2022-06-29 01:38:45', '2022-06-29 01:38:45'),
(9, '22061013', 9, 'CART00011', 'pay_JnDvJD1079Jx0mXXX', NULL, 347500.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 39, 'authorized', '2022-06-29 01:42:14', '2022-06-29 01:42:31'),
(10, '22070420', 10, 'CART00014', 'pay_JpaEbZBJa4bYSg', NULL, 17800.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234518', 40, 'authorized', '2022-07-05 00:49:42', '2022-07-05 00:50:04'),
(11, '22070420', 11, 'CART00014', 'pay_JpaIJdg4lfJBLd', NULL, 17800.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234518', 40, 'authorized', '2022-07-05 00:53:16', '2022-07-05 00:53:33'),
(12, '22070420', 12, 'CART00014', 'pay_JpaJs2uitJsZKT', NULL, 17800.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234518', 40, 'authorized', '2022-07-05 00:54:46', '2022-07-05 00:55:02'),
(13, '22070420', 13, 'CART00014', 'pay_JpaOV8Gpst0mXX', NULL, 17800.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234518', 40, 'authorized', '2022-07-05 00:59:00', '2022-07-05 00:59:31'),
(14, '22070622', 14, 'CART00015', 'pay_Jq30cMasNDBz5V', NULL, 314900.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234523', 41, 'authorized', '2022-07-06 04:58:36', '2022-07-06 04:58:57'),
(15, '2207144', 15, 'CART00017', 'pay_Jtx77WRSU3PwLu', NULL, 32600.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 42, 'authorized', '2022-07-16 07:18:32', '2022-07-16 07:18:56'),
(16, '2207144', 16, 'CART00021', 'pay_Jty7BSdWFAj0HV', NULL, 347500.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 43, 'authorized', '2022-07-16 08:17:23', '2022-07-16 08:17:41'),
(17, '2207144', NULL, 'CART00023', NULL, NULL, 178.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 44, 'start', '2022-07-19 10:29:25', '2022-07-19 10:29:25'),
(18, '2207144', NULL, 'CART00023', NULL, NULL, 178.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 44, 'start', '2022-07-19 10:35:38', '2022-07-19 10:35:38'),
(19, '2207144', NULL, 'CART00023', NULL, NULL, 178.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 44, 'start', '2022-07-19 10:40:12', '2022-07-19 10:40:12'),
(20, '2207144', 20, 'CART00023', 'pay_JvCmxnzME2j0C4', NULL, 17800.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 44, 'authorized', '2022-07-19 11:17:30', '2022-07-19 11:17:57'),
(21, '22072021', NULL, 'CART00025', NULL, NULL, 178.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 45, 'start', '2022-07-20 11:45:05', '2022-07-20 11:45:05'),
(22, '2207144', NULL, 'CART00028', NULL, NULL, 3549.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 46, 'start', '2022-07-21 10:12:45', '2022-07-21 10:12:45'),
(23, '2207144', 23, 'CART00028', 'pay_Jvz25RZ4RRx6S7', NULL, 354900.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 46, 'authorized', '2022-07-21 10:29:11', '2022-07-21 10:29:33'),
(24, '2207144', 24, 'CART00039', 'pay_Jvz3LTn8JeiSTb', NULL, 4400.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 47, 'authorized', '2022-07-21 10:30:24', '2022-07-21 10:30:44'),
(25, '2207144', NULL, 'CART00040', NULL, NULL, 126.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 48, 'start', '2022-07-21 10:32:17', '2022-07-21 10:32:17'),
(26, '2207144', 26, 'CART00040', 'pay_Jvz5ocXNXX6alr', NULL, 12600.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 48, 'authorized', '2022-07-21 10:32:41', '2022-07-21 10:33:04'),
(27, '2207144', 27, 'CART00041', 'pay_Jvz9Nswug3k0cL', NULL, 50400.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 49, 'authorized', '2022-07-21 10:36:10', '2022-07-21 10:36:26'),
(28, '2207144', NULL, 'CART00062', NULL, NULL, 326.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 50, 'start', '2022-07-23 09:50:40', '2022-07-23 09:50:40'),
(29, '2207144', NULL, 'CART00062', NULL, NULL, 326.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 50, 'start', '2022-07-23 10:04:15', '2022-07-23 10:04:15'),
(30, '2207144', 30, 'CART00062', 'pay_JxxbyKBG8u3lGV', NULL, 310000.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771234513', 50, 'authorized', '2022-07-26 10:23:46', '2022-07-26 10:24:07'),
(31, '2207141', NULL, 'CART00072', NULL, 'order_K0IJulagnscIgf', 215100.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 51, 'created', '2022-08-01 07:57:31', '2022-08-01 07:57:31'),
(32, '22080226', NULL, 'CART00081', NULL, 'order_K0kdp0mXOm4c2B', 382900.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 52, 'created', '2022-08-02 11:39:47', '2022-08-02 11:39:47'),
(33, '22121330', NULL, 'CART00094', NULL, 'order_LNpLTVdETxJDsP', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 11:31:00', '2023-03-05 11:31:00'),
(34, '22121330', NULL, 'CART00094', NULL, 'order_LNpTIhzDSFv4eN', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 11:38:25', '2023-03-05 11:38:25'),
(35, '22121330', NULL, 'CART00094', NULL, 'order_LNpktaw0jK5KnU', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 11:55:04', '2023-03-05 11:55:04'),
(36, '22121330', NULL, 'CART00094', NULL, 'order_LNpl5wrgAHTgSY', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 11:55:15', '2023-03-05 11:55:15'),
(37, '22121330', NULL, 'CART00094', NULL, 'order_LNplEBL5MraD5w', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 11:55:23', '2023-03-05 11:55:23'),
(38, '22121330', NULL, 'CART00094', NULL, 'order_LNpmrDswIW2nl1', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 11:56:56', '2023-03-05 11:56:56'),
(39, '22121330', NULL, 'CART00094', NULL, 'order_LNpn4m38VaF11k', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 11:57:08', '2023-03-05 11:57:08'),
(40, '22121330', NULL, 'CART00094', NULL, 'order_LNpqGmd6kqszML', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:00:09', '2023-03-05 12:00:09'),
(41, '22121330', NULL, 'CART00094', NULL, 'order_LNqLNLaPwaDeoo', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:29:36', '2023-03-05 12:29:36'),
(42, '22121330', NULL, 'CART00094', NULL, 'order_LNqO6AlGcyNwOJ', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:32:11', '2023-03-05 12:32:11'),
(43, '22121330', NULL, 'CART00094', NULL, 'order_LNqOS5MNwzvUvT', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:32:31', '2023-03-05 12:32:31'),
(44, '22121330', NULL, 'CART00094', NULL, 'order_LNqPQXWU1pj4Jb', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:33:26', '2023-03-05 12:33:26'),
(45, '22121330', NULL, 'CART00094', NULL, 'order_LNqPgnw9PNEzck', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:33:41', '2023-03-05 12:33:41'),
(46, '22121330', NULL, 'CART00094', NULL, 'order_LNqQDFOPe9bKGK', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:34:11', '2023-03-05 12:34:11'),
(47, '22121330', NULL, 'CART00094', NULL, 'order_LNqRnBhEzaj4XE', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:35:41', '2023-03-05 12:35:41'),
(48, '22121330', NULL, 'CART00094', NULL, 'order_LNqSiFqTTA2IH6', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:36:33', '2023-03-05 12:36:33'),
(49, '22121330', NULL, 'CART00094', NULL, 'order_LNqVl7w57uFor5', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:39:26', '2023-03-05 12:39:26'),
(50, '22121330', NULL, 'CART00094', NULL, 'order_LNqWkcxiZnYl2n', 40000.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 53, 'created', '2023-03-05 12:40:22', '2023-03-05 12:40:22'),
(51, '22121330', 51, 'CART00094', 'pay_LNqZZroHIVTImi', 'order_LNqZJvbfr7up9L', 40000.00, 'netbanking', NULL, NULL, 0, 'Agriculture Products', 'email', '+919771537376', 53, 'authorized', '2023-03-05 12:42:48', '2023-03-05 12:43:09'),
(52, '22121330', NULL, 'CART00097', NULL, 'order_LOCnRgUJS48rQA', 4400.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 54, 'created', '2023-03-06 10:27:26', '2023-03-06 10:27:26'),
(53, '22121330', NULL, 'CART00097', NULL, 'order_LOCoIxaPVL8D51', 56900.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 54, 'created', '2023-03-06 10:28:15', '2023-03-06 10:28:15'),
(54, '23030532', NULL, 'CART00096', NULL, 'order_LWcLGMWNS3LV7v', 44400.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 55, 'created', '2023-03-27 16:38:48', '2023-03-27 16:38:48'),
(55, '23030532', NULL, 'CART00096', NULL, 'order_LWcNVcoxwM5yMl', 44400.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 55, 'created', '2023-03-27 16:40:56', '2023-03-27 16:40:56'),
(56, '22121330', NULL, 'CART00097', NULL, 'order_LiPbBNswhzuLJ6', 56900.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 54, 'created', '2023-04-26 11:58:53', '2023-04-26 11:58:53'),
(57, '22121330', NULL, 'CART00097', NULL, 'order_LiPxwgXOzmXQte', 56900.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 54, 'created', '2023-04-26 12:20:26', '2023-04-26 12:20:26'),
(58, '22121330', NULL, 'CART00097', NULL, 'order_LiQRzFY5NnTWtH', 56900.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 54, 'created', '2023-04-26 12:48:52', '2023-04-26 12:48:52'),
(59, '22080527', NULL, 'CART00087', NULL, 'order_MA4CZ3oviI8ejU', 312200.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 56, 'created', '2023-07-05 09:15:03', '2023-07-05 09:15:03'),
(60, '22080527', NULL, 'CART00087', NULL, 'order_MA4CpB8I0t7llI', 312200.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, 56, 'created', '2023-07-05 09:15:18', '2023-07-05 09:15:18');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, '7004019567', 'b99cb7c4611f105e4002a7fee1f1824e1c9cec602a6dcacc18dcfd86514c7d7d', '[\"*\"]', NULL, '2022-07-14 07:53:04', '2022-07-14 07:53:04'),
(2, 'App\\Models\\User', 1, '7004019567', 'c29e9ae8274df62ecae5bd70b620577b487fed3a3c36bb613f70ae194eb164fb', '[\"*\"]', '2022-07-14 07:53:22', '2022-07-14 07:53:11', '2022-07-14 07:53:22'),
(3, 'App\\Models\\User', 2, '9771234501', '375b01030771a176fd6d8eb0ea500d82e59bdd50d35d99b90ea937f7ec63eb8f', '[\"*\"]', '2022-07-14 07:59:48', '2022-07-14 07:56:58', '2022-07-14 07:59:48'),
(4, 'App\\Models\\User', 3, '9771234502', '74c3a6d3676d1aebe78425566d451dcd7fab5327742d4373ff48b42b6b7d9367', '[\"*\"]', NULL, '2022-07-14 08:00:27', '2022-07-14 08:00:27'),
(5, 'App\\Models\\User', 3, '9771234502', '4442458af6ff69edef35553851ceb1ce4316b015b39f8793729d3d1145e810ec', '[\"*\"]', '2022-07-14 08:01:56', '2022-07-14 08:00:59', '2022-07-14 08:01:56'),
(6, 'App\\Models\\User', 4, '9771234513', 'b629f7e72714dca26b012fecfe0b5b5bf4aa1a5f3debff937339bba181c25c44', '[\"*\"]', NULL, '2022-07-14 08:02:21', '2022-07-14 08:02:21'),
(7, 'App\\Models\\User', 3, '9771234502', '68094007fda141b4a5cf54f05f7779db7a8c77e339ecb1794281e5361f059a0c', '[\"*\"]', '2022-07-14 08:04:27', '2022-07-14 08:02:49', '2022-07-14 08:04:27'),
(15, 'App\\Models\\User', 5, '9771234503', '762060ae007576a86547b615e10f6966c1783f4198b5acd77a0535d9f8717fa6', '[\"*\"]', NULL, '2022-07-14 08:49:17', '2022-07-14 08:49:17'),
(18, 'App\\Models\\User', 2, '9771234501', 'b93830b7e1a617a1684541d5852a24591d7d64233fe4dc8f17f9c35db0fe1713', '[\"*\"]', '2022-07-14 08:51:43', '2022-07-14 08:51:30', '2022-07-14 08:51:43'),
(26, 'App\\Models\\User', 10, '9771234508', '4f17b3b9fd4f1b600ea3621cca182ad4f92572b91c8f989a4226daca2dbfc62a', '[\"*\"]', NULL, '2022-07-14 09:24:35', '2022-07-14 09:24:35'),
(28, 'App\\Models\\User', 11, '9771234509', 'eabd5e632cba8dc74ce3bbd243dfec321f373e803508265d4253fdce8933a5c8', '[\"*\"]', '2022-07-14 09:26:32', '2022-07-14 09:26:26', '2022-07-14 09:26:32'),
(33, 'App\\Models\\User', 14, '9771234512', 'e276c8e2dbaf9a84d6539110109418021683ae35b821fc05d2df9f988ba1249e', '[\"*\"]', '2022-07-14 09:44:50', '2022-07-14 09:44:44', '2022-07-14 09:44:50'),
(45, 'App\\Models\\User', 1, '7004019567', 'abe8ab623984169e729e489dd76fc7534a8330f87bc132054c37c01563fd2fae', '[\"*\"]', '2022-07-14 10:26:39', '2022-07-14 10:26:33', '2022-07-14 10:26:39'),
(58, 'App\\Models\\User', 15, '9771234514', '89d4c6d732fd33fbaf0c7423b7b08716df993dd721c792baa0163a655c6de663', '[\"*\"]', NULL, '2022-07-14 11:08:47', '2022-07-14 11:08:47'),
(59, 'App\\Models\\User', 14, '9771234512', 'd1e3ed897051a09bad07ff9d0409edf95de34dc48a5e88ae51d679cece3f35cb', '[\"*\"]', NULL, '2022-07-14 11:09:56', '2022-07-14 11:09:56'),
(66, 'App\\Models\\User', 4, '9771234513', '104b261a5885ba1b8708ee8c32f94cf3d1e6c3b5eb0a042255adb8a1171f5c28', '[\"*\"]', '2022-07-14 11:37:20', '2022-07-14 11:36:36', '2022-07-14 11:37:20'),
(72, 'App\\Models\\User', 18, '9771234520', '37f6555d4dbf0207759b9aedbf817c9f189d699b0bc76565498f5c5e6d2327ec', '[\"*\"]', '2022-07-14 11:52:42', '2022-07-14 11:52:34', '2022-07-14 11:52:42'),
(77, 'App\\Models\\User', 4, '9771234513', 'ae07fdf6174d8719ddbc86293e65ea33338219c30f79695b7645507583a4c8cc', '[\"*\"]', NULL, '2022-07-14 12:11:00', '2022-07-14 12:11:00'),
(82, 'App\\Models\\User', 15, '9771234514', 'c23c11fb968db4eaf841c4a3593e9cb9421bb09ec10e02248ed132bd9c627ad0', '[\"*\"]', '2022-07-14 12:38:04', '2022-07-14 12:31:43', '2022-07-14 12:38:04'),
(94, 'App\\Models\\User', 4, '9771234513', '32210143431e7673a532da1bee5fb1d8cd1d266cdce71ac0330ccf356f8f109c', '[\"*\"]', '2022-07-14 13:26:20', '2022-07-14 13:25:56', '2022-07-14 13:26:20'),
(96, 'App\\Models\\User', 4, '9771234513', 'e149da08ac24ba54a241f4530d8c364a864af71103929041a5f92f611fe1a8c5', '[\"*\"]', '2022-07-14 13:41:43', '2022-07-14 13:37:22', '2022-07-14 13:41:43'),
(97, 'App\\Models\\User', 4, '9771234513', '1cd79275c6ad2323432521d69999c101c2af28b8366c0fa528a2fdd0ad995455', '[\"*\"]', '2022-07-14 13:44:13', '2022-07-14 13:43:54', '2022-07-14 13:44:13'),
(98, 'App\\Models\\User', 1, '7004019567', 'f463e6b9096c2e2ea65619ffc579b10da67abc9a2697b304b6fc76286476ff4b', '[\"*\"]', '2022-08-12 10:27:25', '2022-07-15 08:46:29', '2022-08-12 10:27:25'),
(100, 'App\\Models\\User', 17, '9771234512', '9eee898d5ae194dba5281aa59b4a75c5ed2812135eef7b4aa2d84479612c768d', '[\"*\"]', '2022-07-15 09:09:45', '2022-07-15 09:09:35', '2022-07-15 09:09:45'),
(101, 'App\\Models\\User', 13, '9771234511', 'c39f477e15a700e9ebb415fc7971e4ec27041fa4d899f7d0cb9f2ca3174ab376', '[\"*\"]', '2022-07-15 09:18:52', '2022-07-15 09:18:41', '2022-07-15 09:18:52'),
(105, 'App\\Models\\User', 1, '7004019567', '0d01ec234e35d010a531f0a83dece47ebe3c57bb055bcd9b3e233fa04148bd6b', '[\"*\"]', '2022-07-18 08:04:03', '2022-07-15 09:53:12', '2022-07-18 08:04:03'),
(107, 'App\\Models\\User', 4, '9771234513', 'b5c8c3969d889f22670a634e38a84f35f2d687e99eea7c5d90da8148ab464d5f', '[\"*\"]', '2022-07-16 07:19:52', '2022-07-16 06:55:30', '2022-07-16 07:19:52'),
(110, 'App\\Models\\User', 4, '9771234513', '113ce39ab13daf1da69490b4e0b235b925325d3a67a942aa8024656d6dc8a3a7', '[\"*\"]', '2022-07-16 08:01:43', '2022-07-16 07:59:00', '2022-07-16 08:01:43'),
(111, 'App\\Models\\User', 4, '9771234513', '3e35851aac88335465633da411491d43649116db98f9daa5d1760ee3883f1d0c', '[\"*\"]', '2022-07-16 08:08:24', '2022-07-16 08:07:38', '2022-07-16 08:08:24'),
(112, 'App\\Models\\User', 4, '9771234513', '3b6d93fd3863468e8d5b429976e4beeeb38cf80f09f0f1356e962227d522465e', '[\"*\"]', '2022-07-16 08:18:35', '2022-07-16 08:09:19', '2022-07-16 08:18:35'),
(114, 'App\\Models\\User', 4, '9771234513', 'a4389edce196f91eb4dcbba96253fe6872443865e8efa1331d85cd6e875d3957', '[\"*\"]', '2022-07-16 10:43:51', '2022-07-16 09:25:37', '2022-07-16 10:43:51'),
(115, 'App\\Models\\User', 4, '9771234513', 'f8f520edac91e58a6645a36a72c287ba7b539a18304b262bd85cb81b00aa91c6', '[\"*\"]', '2022-07-18 07:56:12', '2022-07-18 05:39:53', '2022-07-18 07:56:12'),
(117, 'App\\Models\\User', 4, '9771234513', 'd15d91c37ccbba9a3dd48f9ea6e3e66df6d7a29505a65375821d5851d6d2c56e', '[\"*\"]', '2022-07-19 08:22:58', '2022-07-19 07:11:22', '2022-07-19 08:22:58'),
(118, 'App\\Models\\User', 4, '9771234513', '039124c2ac6c411ae369148dc3d471bdb808e876c5b91cd3458939174b8a20e4', '[\"*\"]', '2022-07-19 12:04:35', '2022-07-19 08:29:21', '2022-07-19 12:04:35'),
(119, 'App\\Models\\User', 4, '9771234513', '8340607d05309e96011cccdd3d897c8d05b5080adcef420a09812c752b2b1434', '[\"*\"]', '2022-07-19 12:09:17', '2022-07-19 12:07:32', '2022-07-19 12:09:17'),
(124, 'App\\Models\\User', 21, '9771234526', '974de183b19427197b1313caefaf836610f293051775fc12f2e8478a2b4c0040', '[\"*\"]', '2022-07-20 11:55:07', '2022-07-20 11:31:54', '2022-07-20 11:55:07'),
(125, 'App\\Models\\User', 21, '9771234526', 'e592ea0b16e52dabb5fed9a1160f85446478daa9ee9174811bb606e74dab6cf6', '[\"*\"]', '2022-07-20 12:01:41', '2022-07-20 11:57:21', '2022-07-20 12:01:41'),
(126, 'App\\Models\\User', 4, '9771234513', 'b19c4d90eefa3eb0aee2af478382f70f379441ae8cf9555a0dcbb6a28f38a681', '[\"*\"]', '2022-07-21 05:31:16', '2022-07-21 05:31:04', '2022-07-21 05:31:16'),
(130, 'App\\Models\\User', 4, '9771234513', '0672741a7856fb6d24ab28548386ba22bc46a286de86f80a58dc818f072daee5', '[\"*\"]', '2022-07-21 12:26:13', '2022-07-21 10:44:04', '2022-07-21 12:26:13'),
(131, 'App\\Models\\User', 4, '9771234513', 'f1cb53372b3ea65446aee2fc82c192237f0c086f7a62e27034b8aa41370aae6c', '[\"*\"]', '2022-07-22 06:17:20', '2022-07-22 05:05:47', '2022-07-22 06:17:20'),
(134, 'App\\Models\\User', 4, '9771234513', 'e61ba8fb88e4edd8f6d40081931bab72c83dc1b0af095a598d077207318a9a18', '[\"*\"]', '2022-07-23 08:12:12', '2022-07-23 05:29:50', '2022-07-23 08:12:12'),
(135, 'App\\Models\\User', 4, '9771234513', 'a0e0f33b42bef3233f04d16cfe5f10fa5888592725dc2bc2bb00f155a0463e0f', '[\"*\"]', '2022-07-23 10:04:28', '2022-07-23 08:23:47', '2022-07-23 10:04:28'),
(136, 'App\\Models\\User', 4, '9771234513', 'f034a99fc7b834e0723fc72abb75f4117b578fff35d12684c4ba7d730622eece', '[\"*\"]', '2022-07-23 10:24:18', '2022-07-23 10:13:31', '2022-07-23 10:24:18'),
(138, 'App\\Models\\User', 4, '9771234513', 'c114afb8ac019ff434b6a8eecc7eb416b45b5e9cef2c17649a6c402b77593112', '[\"*\"]', '2022-07-25 12:30:55', '2022-07-25 06:48:51', '2022-07-25 12:30:55'),
(139, 'App\\Models\\User', 4, '9771234513', '5a353390a602b9ffeb973d86c5c465e496a289792628c8808f8f3d17a5598c9e', '[\"*\"]', '2022-07-26 08:13:30', '2022-07-26 06:54:19', '2022-07-26 08:13:30'),
(144, 'App\\Models\\User', 4, '9771234513', '75e4e0cad143086fc609e0f746d87ddd25c1b5f5f691d484dd8a9c69ca9b659c', '[\"*\"]', '2022-07-26 09:50:10', '2022-07-26 09:48:51', '2022-07-26 09:50:10'),
(146, 'App\\Models\\User', 4, '9771234513', '601a3345b9bad58c58bd00e070797b4119ecfdb2f5968497b220748757001b06', '[\"*\"]', '2022-07-26 10:05:13', '2022-07-26 10:04:59', '2022-07-26 10:05:13'),
(147, 'App\\Models\\User', 4, '9771234513', '79f291c2b10d9d35e9edbce105155278f2ea225b92ce8089e88cdbd8dd64ea25', '[\"*\"]', '2022-07-26 10:14:53', '2022-07-26 10:13:21', '2022-07-26 10:14:53'),
(148, 'App\\Models\\User', 4, '9771234513', '86897d9616857197a0abfd51f2c5d14b94bf56eddbe6fcf74ddea3f4264211ae', '[\"*\"]', '2022-07-26 11:05:28', '2022-07-26 10:19:08', '2022-07-26 11:05:28'),
(150, 'App\\Models\\User', 4, '9771234513', 'b1aa25567b46de4906cb2d08fdf834c445db030c664dedf0f736eef28a60e2bf', '[\"*\"]', '2022-07-26 11:27:03', '2022-07-26 11:18:59', '2022-07-26 11:27:03'),
(151, 'App\\Models\\User', 4, '9771234513', 'ae8a9a91b44d336d58a0680bb6e42ad10c8522c59471123710321eeeace75131', '[\"*\"]', '2022-07-26 13:11:06', '2022-07-26 11:30:01', '2022-07-26 13:11:06'),
(153, 'App\\Models\\User', 4, '9771234513', 'd3ba0a70acb60da6f238d0dc156a80ccdc6c29087513e8a52c67ffb29321b20f', '[\"*\"]', NULL, '2022-07-27 07:39:04', '2022-07-27 07:39:04'),
(156, 'App\\Models\\User', 4, '9771234513', '38d72f62feb90114eca7c0763753db6a78424e028237bb0931466f5835256ddf', '[\"*\"]', '2022-07-27 07:43:34', '2022-07-27 07:41:08', '2022-07-27 07:43:34'),
(157, 'App\\Models\\User', 4, '9771234513', '95ce5ee46046e0de0eb4f7b85bda1c0d81db9810931f95100209f840194b6628', '[\"*\"]', '2022-07-27 09:45:53', '2022-07-27 08:06:23', '2022-07-27 09:45:53'),
(158, 'App\\Models\\User', 4, '9771234513', '51b0db2a75d7b42ebf6189c55d38d192173a619e53d72a3db2c9fa6b0ee335ad', '[\"*\"]', '2022-07-28 07:36:38', '2022-07-28 06:28:47', '2022-07-28 07:36:38'),
(159, 'App\\Models\\User', 4, '9771234513', '378d5e67f78bd4a04230d50436649633e0572165f23009d9c1d579d10e1efe45', '[\"*\"]', '2022-07-28 08:47:11', '2022-07-28 08:46:01', '2022-07-28 08:47:11'),
(160, 'App\\Models\\User', 4, '9771234513', 'a5dc3e164c58a8188cad935d73f53f96b466898c7f3158559d585a68be27ccfc', '[\"*\"]', '2022-07-28 09:33:35', '2022-07-28 09:33:25', '2022-07-28 09:33:35'),
(165, 'App\\Models\\User', 4, '9771234513', 'b41b7d0635b68571bf3257d3388f582afe9d5e4ba5549a9b2b3cfd90cfe4e14d', '[\"*\"]', '2022-07-29 08:01:45', '2022-07-28 10:58:18', '2022-07-29 08:01:45'),
(166, 'App\\Models\\User', 4, '9771234513', 'ba11103473c8fca8dfef4c7bf8d0e7c092951cc0f2237a395791769647a206da', '[\"*\"]', '2022-07-29 08:19:42', '2022-07-29 08:16:59', '2022-07-29 08:19:42'),
(170, 'App\\Models\\User', 4, '9771234513', 'f8435277447cb850b2cab9ee0ef9beeb81331848183981f87d76565e2c351862', '[\"*\"]', '2022-07-29 11:31:10', '2022-07-29 11:30:45', '2022-07-29 11:31:10'),
(172, 'App\\Models\\User', 4, '9771234513', 'f31a84b18a4222e36f60a72194de0a49ba8f40c6732aa2429888820275be84c5', '[\"*\"]', '2022-07-29 12:27:14', '2022-07-29 11:58:23', '2022-07-29 12:27:14'),
(173, 'App\\Models\\User', 4, '9771234513', '9bd83a5fea203296db432306881d8867cb3dfa1196b179e4e8bc63ab2510d44d', '[\"*\"]', '2022-07-29 12:28:32', '2022-07-29 12:28:27', '2022-07-29 12:28:32'),
(174, 'App\\Models\\User', 4, '9771234513', 'd8ea706cab24b08463324508b771801b5d9ec74be776c4403f5391dcb39cc8c1', '[\"*\"]', '2022-07-29 12:35:52', '2022-07-29 12:35:31', '2022-07-29 12:35:52'),
(175, 'App\\Models\\User', 4, '9771234513', 'd7ea97ee93686d512ac7c9fe88643a5e2656a0d66a99f31355314c8e457bea79', '[\"*\"]', '2022-07-29 12:42:09', '2022-07-29 12:42:05', '2022-07-29 12:42:09'),
(176, 'App\\Models\\User', 4, '9771234513', 'c848147f7fc26f3fb81ebc0942bce305886f6ce7156183a6b54e9858113cc197', '[\"*\"]', '2022-08-01 07:27:01', '2022-07-29 12:49:22', '2022-08-01 07:27:01'),
(179, 'App\\Models\\User', 4, '9771234513', '902afdaecc617c2f2f726488e49d8ea33c6cce14ba74ff1c6dc29a48f7a9db10', '[\"*\"]', '2022-08-08 13:23:07', '2022-08-05 13:12:47', '2022-08-08 13:23:07'),
(180, 'App\\Models\\User', 27, '6209009007', '1e38fc9afacff9e19e4713ae4e69a204336afec1a6f85cf0908f393c72a855c8', '[\"*\"]', '2023-08-08 22:26:11', '2022-08-05 13:13:11', '2023-08-08 22:26:11'),
(181, 'App\\Models\\User', 4, '9771234513', 'ed33808da20a3910f71fe019d6888b0db413cdd9f7f5c88476b0f297219a3881', '[\"*\"]', '2022-08-09 08:28:05', '2022-08-08 13:37:32', '2022-08-09 08:28:05'),
(185, 'App\\Models\\User', 1, '7004019567', '6ff651c7c028c22f93325e454e62887a16b95ba65c3728796062a31accc78bb6', '[\"*\"]', '2022-08-12 08:19:14', '2022-08-12 08:18:42', '2022-08-12 08:19:14'),
(191, 'App\\Models\\User', 4, '9771234513', '8fc10ea06a8006ba720c17378ebd0c5904f11b4626643ab50b9e042bfaa5643b', '[\"*\"]', '2022-08-12 09:12:31', '2022-08-12 08:31:57', '2022-08-12 09:12:31'),
(192, 'App\\Models\\User', 4, '9771234513', 'c2631ad8dd818f3387885591d4d86e01846dcfd3f3cd77ab98ede6603e0a8faa', '[\"*\"]', '2022-08-12 10:16:02', '2022-08-12 10:15:57', '2022-08-12 10:16:02'),
(193, 'App\\Models\\User', 4, '9771234513', 'b221c178ebe8097e3382a916d15152bb4749a74c6bd7c0c9f76d04850d7948eb', '[\"*\"]', '2022-08-12 10:19:00', '2022-08-12 10:18:12', '2022-08-12 10:19:00'),
(194, 'App\\Models\\User', 4, '9771234513', '408647cfab145e8439f96d216b5f5ba004b02b9e5ece78e715ad18ca0714cbc7', '[\"*\"]', '2022-08-12 10:27:10', '2022-08-12 10:22:11', '2022-08-12 10:27:10'),
(195, 'App\\Models\\User', 1, '7004019567', 'e11dce432fcb01be3453a567461c1c0624f75a8b1cfdd9ede413980f4aaa1bc4', '[\"*\"]', '2022-08-12 10:26:48', '2022-08-12 10:26:36', '2022-08-12 10:26:48'),
(199, 'App\\Models\\User', 1, '7004019567', 'b0f671b4aa8ee2a6b4441f025bdccb840367e4f425043651d6bf37a090238dd0', '[\"*\"]', '2022-08-12 10:51:25', '2022-08-12 10:49:12', '2022-08-12 10:51:25'),
(200, 'App\\Models\\User', 4, '9771234513', '42e7dae2dd6a866dd7fc67dfe62204dd31813c53cc1813be0a4cc2e3cbe36bb6', '[\"*\"]', '2022-08-12 11:07:24', '2022-08-12 11:02:49', '2022-08-12 11:07:24'),
(203, 'App\\Models\\User', 4, '9771234513', 'cd49aa0e358dc4f61f257a0609b60653a93f9d18fda32978103b3f6367b5ed5a', '[\"*\"]', NULL, '2022-08-13 06:59:41', '2022-08-13 06:59:41'),
(205, 'App\\Models\\User', 29, '7004019576', 'fd020754dd72d8056ed049d2c4fbdf951972bb6cb52ede80bbb406b23f25553f', '[\"*\"]', '2022-08-19 06:23:59', '2022-08-19 06:23:37', '2022-08-19 06:23:59'),
(206, 'App\\Models\\User', 4, '9771234513', 'bbb91d0559cafd2f5b4302d48751907492a4ba7a5e753355969f320b186a1b18', '[\"*\"]', NULL, '2022-08-25 08:36:03', '2022-08-25 08:36:03'),
(208, 'App\\Models\\User', 4, '9771234513', 'd077d068bf7178be6ed37f2a016e97a847ea19a112ffa004910915604040799f', '[\"*\"]', '2022-12-12 10:15:12', '2022-09-06 08:08:34', '2022-12-12 10:15:12'),
(209, 'App\\Models\\User', 30, '9771537376', '0bfc3f5a888872902ece743ebe07aa146b93615420db53ac0320db7cf429396d', '[\"*\"]', '2022-12-13 05:58:05', '2022-12-13 05:35:50', '2022-12-13 05:58:05'),
(210, 'App\\Models\\User', 30, '9771537376', 'c89f281a69502a6300950c1754f2a0f377c1f91fdc30a84a5b1f03d7c3c4360f', '[\"*\"]', '2022-12-13 06:06:57', '2022-12-13 05:58:16', '2022-12-13 06:06:57'),
(211, 'App\\Models\\User', 4, '9771234513', '64607be44ce6b7056ef57ef011699a8614765b09d941c02c970484a46a476dfc', '[\"*\"]', NULL, '2022-12-13 06:11:54', '2022-12-13 06:11:54'),
(212, 'App\\Models\\User', 4, '9771234513', '26093d55acdc314a78ecff77cd0675e20a7a63b16b109cb7a92b354faaeb35c4', '[\"*\"]', NULL, '2022-12-13 06:13:02', '2022-12-13 06:13:02'),
(213, 'App\\Models\\User', 4, '9771234513', 'ad1e6fd10f5271d75e88cada08a1c461de1dd6be974accd95edcfbf1f1d6f5ad', '[\"*\"]', NULL, '2022-12-13 07:06:41', '2022-12-13 07:06:41'),
(214, 'App\\Models\\User', 4, '9771234513', 'cee4b5a4efd5c0ac45fa77a507c0711ef74f51855e972103df65c6da931e24d0', '[\"*\"]', NULL, '2022-12-13 07:08:54', '2022-12-13 07:08:54'),
(215, 'App\\Models\\User', 30, '9771537376', '72823b8adbfecafa11c7c46a316e2cbd48bf48776a86169a2594b6144670e8b4', '[\"*\"]', NULL, '2022-12-13 07:12:47', '2022-12-13 07:12:47'),
(216, 'App\\Models\\User', 30, '9771537376', '75fd90ad82655a93574efa0b06bc41be896aa4c91a25067c68d956e4b21da7c7', '[\"*\"]', NULL, '2022-12-13 07:16:08', '2022-12-13 07:16:08'),
(217, 'App\\Models\\User', 30, '9771537376', '05805289abf7bb37648c4c36eb5a58a3cf91f1bb23b183d81c29e681c696eac7', '[\"*\"]', '2022-12-13 07:23:13', '2022-12-13 07:18:10', '2022-12-13 07:23:13'),
(218, 'App\\Models\\User', 30, '9771537376', 'ada7201a55f207c154bb66337c8df28cae69a56fa081ff59f1a86b9c43bdfaa8', '[\"*\"]', NULL, '2022-12-13 07:38:29', '2022-12-13 07:38:29'),
(221, 'App\\Models\\User', 30, '9771537376', '3d5ed88c2aa66bb221266d65e6cc3297d736d086c17c81911816f32a68d2cb57', '[\"*\"]', '2023-02-07 12:47:42', '2023-02-07 10:57:18', '2023-02-07 12:47:42'),
(222, 'App\\Models\\User', 30, '9771537376', '85ddd5b89dffa36cf1f7c803b65b56d26553f7e6bc847cb7fdfd159227f8b396', '[\"*\"]', '2023-02-12 02:04:30', '2023-02-08 09:55:42', '2023-02-12 02:04:30'),
(223, 'App\\Models\\User', 30, '9771537376', 'fa2b52ad6897b5fff8d4205e3630768f2f395f540c47c83bf12f53d35bfd2765', '[\"*\"]', '2023-02-09 10:28:05', '2023-02-08 10:11:27', '2023-02-09 10:28:05'),
(224, 'App\\Models\\User', 30, '9771537376', 'efcc96c99a2a1b5f8dc7d7ba4ba4fb1c69fcdd24f650b3ecbe1049e404a327ec', '[\"*\"]', '2023-02-12 05:32:57', '2023-02-09 10:28:09', '2023-02-12 05:32:57'),
(225, 'App\\Models\\User', 30, '9771537376', 'd6bdd6ada6cab8cb460dece1aa9274ce20130648a2a46c59a2c13e839b8a4b92', '[\"*\"]', '2023-02-13 03:07:22', '2023-02-12 05:33:07', '2023-02-13 03:07:22'),
(226, 'App\\Models\\User', 30, '9771537376', '231225b737ecc551a6fbd90458b55f719add4ccc74f40c05759c8f70d3ae200b', '[\"*\"]', '2023-02-25 11:50:53', '2023-02-13 03:07:25', '2023-02-25 11:50:53'),
(227, 'App\\Models\\User', 30, '9771537376', '2e19e7ade041517fcc387c17c254bb83f61f91153d23c102d99b96de264a46fc', '[\"*\"]', '2023-03-01 18:30:23', '2023-02-25 11:50:57', '2023-03-01 18:30:23'),
(228, 'App\\Models\\User', 30, '9771537376', '9e1f82b30520f82a631fcebe94e5562147a2d690479523768196e29d6e7193ba', '[\"*\"]', '2023-03-02 12:39:19', '2023-03-01 18:30:33', '2023-03-02 12:39:19'),
(229, 'App\\Models\\User', 30, '9771537376', 'e3137525129d9bff029403f50f3b36e0b527580e45a275ea2fd90ef8a5d4728a', '[\"*\"]', '2023-03-02 12:39:59', '2023-03-02 12:39:22', '2023-03-02 12:39:59'),
(231, 'App\\Models\\User', 30, '9771537376', '4b465a7edad04c901302a5b7076ae79401ba43620c6d20b89ecdc41b7cd6ec0c', '[\"*\"]', '2023-03-02 12:49:06', '2023-03-02 12:42:01', '2023-03-02 12:49:06'),
(232, 'App\\Models\\User', 30, '9771537376', 'a8fcf91edb82516b8355046b8aceda122478077fe761efe9c4a97e4a537535a8', '[\"*\"]', '2023-03-02 12:50:04', '2023-03-02 12:49:15', '2023-03-02 12:50:04'),
(233, 'App\\Models\\User', 30, '9771537376', 'd2f8fb955760e1e722009b8bbd542db3fcc83ebb7fb4dfdb2121b1b6441b86fb', '[\"*\"]', '2023-03-02 13:09:21', '2023-03-02 12:50:08', '2023-03-02 13:09:21'),
(234, 'App\\Models\\User', 30, '9771537376', '8e675d2a7b77fc697ff34584f34ff82dc458e8fafc8123491f0c51f71c56a9c7', '[\"*\"]', '2023-03-03 07:31:49', '2023-03-02 13:09:21', '2023-03-03 07:31:49'),
(235, 'App\\Models\\User', 30, '9771537376', '92a4447de44f6f06619bb5817c107ecd6cf4aa840b8c32b3de25131ef9e662ec', '[\"*\"]', '2023-03-03 07:35:46', '2023-03-03 07:31:50', '2023-03-03 07:35:46'),
(236, 'App\\Models\\User', 30, '9771537376', '4dc9780629c4aa7deb29487aabbd33242a1622d44ddbd3f19fa945897d14dcd5', '[\"*\"]', '2023-03-03 07:37:08', '2023-03-03 07:36:02', '2023-03-03 07:37:08'),
(237, 'App\\Models\\User', 30, '9771537376', 'ddb5b85c7162c2ef71bbdedb622c1883469b98932d872b2f11425c050ebc824a', '[\"*\"]', '2023-03-03 13:41:54', '2023-03-03 07:37:08', '2023-03-03 13:41:54'),
(238, 'App\\Models\\User', 30, '9771537376', '507c2e7006b538660512465ad626190cfe37b9d69b043f47ed154ddffb404f52', '[\"*\"]', '2023-03-05 09:36:14', '2023-03-03 13:42:07', '2023-03-05 09:36:14'),
(243, 'App\\Models\\User', 30, '9771537376', '4d9f59260af36fc50a1891ac1f76895689d10927637c89c3a557ea51164c8c01', '[\"*\"]', '2023-03-05 10:10:54', '2023-03-05 10:10:12', '2023-03-05 10:10:54'),
(244, 'App\\Models\\User', 30, '9771537376', 'ad0df9754b54978203b34f7552eff03cb577169aa9611f7ae23db13766553dcc', '[\"*\"]', '2023-03-05 10:44:15', '2023-03-05 10:44:07', '2023-03-05 10:44:15'),
(245, 'App\\Models\\User', 30, '9771537376', 'cd17c1f241e932918f71573fe5d09d24c2b2ff6de522117aae1e266f2cbad7c1', '[\"*\"]', '2023-03-05 10:48:08', '2023-03-05 10:47:35', '2023-03-05 10:48:08'),
(246, 'App\\Models\\User', 30, '9771537376', 'fcf530b0c80f92b8ea6b1685a7dd061d7a5ae5b9ae13717cc7a40fd3fc90d439', '[\"*\"]', '2023-03-05 11:21:30', '2023-03-05 11:00:23', '2023-03-05 11:21:30'),
(248, 'App\\Models\\User', 30, '9771537376', 'bf69e4d323fc682914386e6038e6d53a58dd8cc7784111456cce03cfe8c00659', '[\"*\"]', '2023-03-05 12:45:24', '2023-03-05 12:42:14', '2023-03-05 12:45:24'),
(249, 'App\\Models\\User', 30, '9771537376', '41de59b1d9662e745448e383caf9cba706a256f4ca598461c0ac9675bb95815d', '[\"*\"]', '2023-03-05 13:11:27', '2023-03-05 13:11:16', '2023-03-05 13:11:27'),
(250, 'App\\Models\\User', 30, '9771537376', 'f452a9d99155c079c19c4f0174c1302227e7d85b7dad4d0e6ac1a78d3e5ee9cf', '[\"*\"]', '2023-03-06 09:11:39', '2023-03-05 15:34:38', '2023-03-06 09:11:39'),
(251, 'App\\Models\\User', 30, '9771537376', '5da8a6d4f43022d0be9c02158f40f3f265324520b66780c7898c2f29c08036c7', '[\"*\"]', '2023-04-04 09:26:09', '2023-03-06 10:25:48', '2023-04-04 09:26:09'),
(252, 'App\\Models\\User', 33, '8210218747', '4cd99f0c5aded7287dfe26706154ef2e5fe98892a493e20f3ec3ec30e8b6fd57', '[\"*\"]', '2023-04-04 07:57:58', '2023-03-10 05:13:00', '2023-04-04 07:57:58'),
(255, 'App\\Models\\User', 32, '8267864418', '14be68eb3d6087ed67555686e23f2e5cabb58393ab64d311f49e811df9a58f60', '[\"*\"]', '2023-03-27 17:21:25', '2023-03-22 17:43:34', '2023-03-27 17:21:25'),
(256, 'App\\Models\\User', 30, '9771537376', 'c4d99d4ba07a543535e75b4f0e1fe5019508854bb9bec8f9e24e52b7b0bc0461', '[\"*\"]', '2023-04-04 09:48:54', '2023-04-04 09:31:34', '2023-04-04 09:48:54'),
(257, 'App\\Models\\User', 30, '9771537376', 'b35a99be7e121a3cf8f49281d9dacf0ad05d53455f1bc0c604e56f70502204a0', '[\"*\"]', '2023-04-10 05:18:48', '2023-04-04 10:04:11', '2023-04-10 05:18:48'),
(258, 'App\\Models\\User', 33, '8210218747', 'bb469e46ddcee1310c32df9a0caf8019bff4ab14f8e0890f774de37493e2960e', '[\"*\"]', '2023-04-04 10:05:15', '2023-04-04 10:04:15', '2023-04-04 10:05:15'),
(259, 'App\\Models\\User', 33, '8210218747', 'f03c550b76e0024e5b0edf944b8e3dc5166a741636b4e08ec9c8e54a5490092a', '[\"*\"]', '2023-04-06 07:53:41', '2023-04-04 10:53:50', '2023-04-06 07:53:41'),
(260, 'App\\Models\\User', 35, '8227005107', '2372cf8b29af281dccb333d5825fbf34443f3d6ff669b9ed5cd9131c4963be39', '[\"*\"]', '2023-05-27 07:19:40', '2023-04-04 11:59:19', '2023-05-27 07:19:40'),
(261, 'App\\Models\\User', 30, '9771537376', '8c68f499c90ec3e33bf35b45fb375056913e3b9b9595a166e903cf7193299657', '[\"*\"]', '2023-04-11 08:17:07', '2023-04-10 08:03:51', '2023-04-11 08:17:07'),
(262, 'App\\Models\\User', 30, '9771537376', '66be67c51e2a8f9c8d90e284d18fb1fc5600bcc8ff24812e0d19e4b21451f3e9', '[\"*\"]', '2023-04-11 08:25:44', '2023-04-11 08:25:28', '2023-04-11 08:25:44'),
(263, 'App\\Models\\User', 30, '9771537376', 'a74900f945bc6cdb6d0a86c8c63cbdf13e5111e1c0f7b06160ea3298b2828e61', '[\"*\"]', '2023-04-11 11:43:57', '2023-04-11 08:33:45', '2023-04-11 11:43:57'),
(264, 'App\\Models\\User', 30, '9771537376', 'd68a20df39e5a5830b08b1f8b7cbe3ecbb2ba51b23e134721088f34706d437f0', '[\"*\"]', '2023-04-11 12:54:45', '2023-04-11 11:59:56', '2023-04-11 12:54:45'),
(266, 'App\\Models\\User', 33, '8210218747', '98fd84255fe5127801ab845f12039f38a7859eb1fe7e2a64599277a4512e90a9', '[\"*\"]', '2023-09-04 15:48:55', '2023-04-12 10:58:38', '2023-09-04 15:48:55'),
(269, 'App\\Models\\User', 30, '9771537376', 'ccca93ca051d7d58be689f0fa014a4f8dfe95c7974feb120f66c254537f6e00b', '[\"*\"]', '2023-04-26 12:24:46', '2023-04-26 12:03:16', '2023-04-26 12:24:46'),
(271, 'App\\Models\\User', 36, '7458944954', '1c96a78dcf9d4a9572cccac5953c42057e33ad892b9145807118be127b808aa1', '[\"*\"]', '2023-05-01 06:48:16', '2023-05-01 06:46:24', '2023-05-01 06:48:16'),
(272, 'App\\Models\\User', 30, '9771537376', 'd7a2932ae23d2484ca60c92373edcb9066f362bf01c98d579dea58c0fb7f66d7', '[\"*\"]', '2023-05-31 13:09:59', '2023-05-30 08:27:19', '2023-05-31 13:09:59'),
(273, 'App\\Models\\User', 30, '9771537376', '4c5e34833c36b612c1bbfc93aef76aeb6f5433a950b6adca21d66a3e4575c185', '[\"*\"]', '2023-06-07 10:01:53', '2023-05-31 13:18:09', '2023-06-07 10:01:53'),
(274, 'App\\Models\\User', 30, '9771537376', 'c1041fa416c5aa1e9d46ad55af89761b7928039c131515df7061a34f604c8baf', '[\"*\"]', '2023-08-09 16:33:56', '2023-06-23 06:53:20', '2023-08-09 16:33:56'),
(275, 'App\\Models\\User', 35, '8227005107', '673714e60afeb801fc49373506df232c1e65cfedf91cc4fbbf2500953b63a38d', '[\"*\"]', '2023-08-24 15:43:45', '2023-08-03 17:39:57', '2023-08-24 15:43:45'),
(276, 'App\\Models\\User', 30, '9771537376', 'c7ccf4d7938e782596a7533566c5cfa753776f0000150da2d1df9d66a1816cd3', '[\"*\"]', '2023-08-19 23:18:55', '2023-08-18 22:00:55', '2023-08-19 23:18:55'),
(277, 'App\\Models\\User', 30, '9771537376', 'a0fe1299effad4859b784a689c79b8885191b89066dc597dfafd9361980c4e89', '[\"*\"]', '2023-09-23 11:15:17', '2023-08-19 23:25:39', '2023-09-23 11:15:17'),
(278, 'App\\Models\\User', 27, '6209009007', 'b06973bab20aaabc02472036c8959d34a03cc2335fdc5fb0596a1a0d2287b47c', '[\"*\"]', '2023-08-20 17:54:44', '2023-08-19 23:28:41', '2023-08-20 17:54:44'),
(279, 'App\\Models\\User', 27, '6209009007', '0f4dba008cbb6f209d721ba3a5307f3355d3677dd94dac4e21af1c22561b4c59', '[\"*\"]', '2023-08-23 19:02:59', '2023-08-23 19:01:34', '2023-08-23 19:02:59'),
(280, 'App\\Models\\User', 30, '9771537376', '90386b3771504bb1ffd984fb287ecd6d766102a70bef80b271a7694e8dde76ec', '[\"*\"]', '2023-08-23 19:59:28', '2023-08-23 19:58:21', '2023-08-23 19:59:28'),
(281, 'App\\Models\\User', 27, '6209009007', '8480435d1382d4aa0af0771eb0c5a5e908e972873ae07124283f2c18cf3d6b79', '[\"*\"]', '2023-09-04 16:06:35', '2023-08-23 20:15:05', '2023-09-04 16:06:35'),
(282, 'App\\Models\\User', 30, '9771537376', '7d2bd6d9ced16e2102bfb59cbf80cb3c1f11295d3172bddbadabff240d814be1', '[\"*\"]', '2023-09-01 17:35:22', '2023-08-29 21:15:00', '2023-09-01 17:35:22'),
(284, 'App\\Models\\User', 30, '9771537376', '09d8ef852a6d9c8ea4e0880793e53e4b26f37d6e1cb164cfc97680e8189cdd73', '[\"*\"]', '2023-09-02 16:40:08', '2023-09-02 11:15:04', '2023-09-02 16:40:08'),
(285, 'App\\Models\\User', 30, '9771537376', 'fc4c628f431490bd1b8b59aed858e88b81d1f671201b0955d6d327d8ff8f88ed', '[\"*\"]', '2023-09-04 16:50:39', '2023-09-02 17:13:44', '2023-09-04 16:50:39'),
(286, 'App\\Models\\User', 33, '8210218747', '1c18cca79a0684c460f88479b8bb4c3c45e82dba71feaaaa533c3d129ab16824', '[\"*\"]', '2023-09-05 20:40:46', '2023-09-04 16:03:24', '2023-09-05 20:40:46'),
(287, 'App\\Models\\User', 27, '6209009007', 'b007e71590585be63808f3800746eea1f69de9d1442608220b50ac6f671c8a3c', '[\"*\"]', '2023-09-04 16:08:07', '2023-09-04 16:07:04', '2023-09-04 16:08:07'),
(288, 'App\\Models\\User', 30, '9771537376', 'ad92dcff3a5365630477373468d574519f7435403af2dab37840d107628c21ca', '[\"*\"]', '2023-09-12 05:51:00', '2023-09-08 20:26:45', '2023-09-12 05:51:00'),
(289, 'App\\Models\\User', 30, '9771537376', 'dcaf05b453ffb8c52eab3e798fee6fe7e746393afee68aeff2df5feb7dbf4964', '[\"*\"]', '2023-09-18 11:32:08', '2023-09-13 07:15:05', '2023-09-18 11:32:08'),
(292, 'App\\Models\\User', 30, '9771537376', 'dcd9af60f9d8fdfe259799367cc096fa73b43b709752a3be4c0ee8ce2eb8bee2', '[\"*\"]', '2023-09-29 07:44:38', '2023-09-22 04:37:19', '2023-09-29 07:44:38'),
(295, 'App\\Models\\User', 33, '8210218747', 'c9832a1dc555e15efe8868604e2ca30026566c32c970e239d07c189edb65055c', '[\"*\"]', '2023-10-26 14:00:11', '2023-10-06 16:30:02', '2023-10-26 14:00:11'),
(297, 'App\\Models\\User', 27, '6209009007', 'c13e7b452705bc54159aa0fa85031492e24d6b03e69eaa86ccacb8c87ba8d4b9', '[\"*\"]', '2023-10-06 20:58:39', '2023-10-06 20:43:57', '2023-10-06 20:58:39'),
(299, 'App\\Models\\User', 30, '9771537376', 'd105d1f38b1e4dbbffb4cc597a8b401a1f0db0fd44ce6f64476546a3f90c26ef', '[\"*\"]', '2023-10-06 21:24:11', '2023-10-06 20:46:17', '2023-10-06 21:24:11'),
(301, 'App\\Models\\User', 27, '6209009007', '9e0da7e32a5911cc6455135ecb28249bc3c89ff74ab3395209cdbdeab50c2445', '[\"*\"]', '2023-10-06 22:39:45', '2023-10-06 21:39:32', '2023-10-06 22:39:45'),
(305, 'App\\Models\\User', 30, '9771537376', '00c5ae36258edeb57c371b3c642abe0b3941ce385c4ad643a8d96085ea7665c0', '[\"*\"]', '2023-10-31 06:35:36', '2023-10-31 06:33:12', '2023-10-31 06:35:36'),
(306, 'App\\Models\\User', 30, '9771537376', '4609a59c39d08ae23ab136c51b1e287689edc686184d7075ffd17ca2f0fbebc3', '[\"*\"]', '2023-11-03 11:41:23', '2023-10-31 06:35:58', '2023-11-03 11:41:23'),
(307, 'App\\Models\\User', 30, '9771537376', '87612d43782daa1b18a204b949dd94532a1fdfd3b9fee55c7779ec8d15bb830c', '[\"*\"]', '2023-11-06 05:32:23', '2023-10-31 07:53:13', '2023-11-06 05:32:23'),
(308, 'App\\Models\\User', 30, '9771537376', '74853344e46245017af96854f5992026b8c46467b04dadd941a786abfafe0aee', '[\"*\"]', '2023-11-04 10:11:52', '2023-11-04 06:30:31', '2023-11-04 10:11:52'),
(309, 'App\\Models\\User', 30, '9771537376', '4bae0b631522c4c9fda74004d490169d2d0066a5c1b10dd91c2167e1dd109c55', '[\"*\"]', '2023-11-04 21:53:43', '2023-11-04 20:31:15', '2023-11-04 21:53:43'),
(310, 'App\\Models\\User', 35, '8227005107', 'f1aa5f9ee8b943b4bf2dffdbebb27015fcf4f881c776c0f89137a4b740af1ecb', '[\"*\"]', '2023-11-04 21:44:55', '2023-11-04 20:42:58', '2023-11-04 21:44:55'),
(311, 'App\\Models\\User', 30, '9771537376', '641005a9fedcb7e3cd01b108fff6227321e39d2df3839f0aa6f1b3ad53b38bf4', '[\"*\"]', '2023-11-06 09:08:08', '2023-11-06 05:25:41', '2023-11-06 09:08:08'),
(312, 'App\\Models\\User', 30, '9771537376', 'ecb96b5e03dce47f23a361055200a8f05468fb1e938163947a1cc3d449cacf37', '[\"*\"]', '2023-11-06 06:05:35', '2023-11-06 06:05:09', '2023-11-06 06:05:35'),
(313, 'App\\Models\\User', 30, '9771537376', '1f6e136903f3d5ea0df283de13e3790dde706a4d803427016d6783339a1044f5', '[\"*\"]', '2023-11-06 11:54:43', '2023-11-06 08:31:53', '2023-11-06 11:54:43'),
(317, 'App\\Models\\User', 30, '9771537376', 'a20d25a37aeba7fe6a76d8992d1380dd09e5ade680d406c28ccb38b6d1b944c3', '[\"*\"]', '2023-11-06 10:45:59', '2023-11-06 10:18:58', '2023-11-06 10:45:59'),
(318, 'App\\Models\\User', 30, '9771537376', '23ae031ba52914f4400ba5e7d7dc1d797b8abbfb229ef2619ec41f88f7bd11f9', '[\"*\"]', '2023-11-07 11:10:03', '2023-11-06 22:51:22', '2023-11-07 11:10:03'),
(319, 'App\\Models\\User', 30, '9771537376', '61c05fd0a7e9e59876aaae07bf0716e35b9b4f4d9f561d53f9c35fb48c0c4d77', '[\"*\"]', '2023-11-06 23:29:12', '2023-11-06 23:03:39', '2023-11-06 23:29:12'),
(320, 'App\\Models\\User', 27, '6209009007', '260e3f82f614171f6b7c3fd0b4d822f2e60fdc7babf8144f93ede9983f960279', '[\"*\"]', '2023-11-06 23:29:16', '2023-11-06 23:27:15', '2023-11-06 23:29:16'),
(322, 'App\\Models\\User', 30, '9771537376', '79ec549ddb2ed2426f78c0a72e367d1f6b9a84a57d81728a1c8a2e891e6f90a1', '[\"*\"]', '2023-11-07 15:35:25', '2023-11-07 15:35:12', '2023-11-07 15:35:25'),
(324, 'App\\Models\\User', 30, '9771537376', 'c9e80780d6bcc89e83ffe3ea112540baa38b9606cd0d98ec2b6daabf8549526a', '[\"*\"]', '2023-11-22 06:01:03', '2023-11-08 10:43:21', '2023-11-22 06:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `placed_orders`
--

CREATE TABLE `placed_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `cart_id` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(50) DEFAULT NULL,
  `order_title` varchar(255) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT 0.00,
  `address_id` bigint(20) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT 'pending',
  `payment_id` varchar(50) DEFAULT NULL,
  `tracking_id` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `placed_orders`
--

INSERT INTO `placed_orders` (`id`, `uid`, `cart_id`, `username`, `invoice_no`, `order_title`, `total_amount`, `address_id`, `payment_status`, `payment_id`, `tracking_id`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, '22061013', 'CART00002', 'ram kumar', 'IOA00001', 'Order #pay_Jmol9ZDAFj2zW9', 332700.00, 35, 'pending', NULL, NULL, 'refunded', NULL, '2022-06-28 01:05:34', '2022-06-28 04:45:36'),
(2, '22061013', 'CART00004', 'ram kumar', 'IOA00002', 'Order #pay_Jmotuag0r1mZKJ', 347500.00, 35, 'pending', NULL, NULL, 'cancelled', NULL, '2022-06-28 01:13:51', '2022-06-28 04:42:38'),
(3, '22061013', 'CART00005', 'ram kumar', 'IOA00003', 'Order #pay_Jmp0R2TjQ4Y9J8', 82900.00, 35, 'pending', NULL, NULL, 'cancelled', NULL, '2022-06-28 01:20:01', '2022-06-28 04:42:44'),
(4, '22061013', 'CART00008', 'ram kumar', 'IOA00004', 'Order #pay_JmVidmtufPaEmy', 344500.00, 38, 'pending', NULL, NULL, 'payment pending', NULL, '2022-06-28 05:59:09', '2022-07-04 05:29:21'),
(5, '22061013', NULL, 'ram kumar', NULL, 'Order #pay_JmVidmtufPaEmy', 344500.00, 38, 'pending', NULL, NULL, 'placed', NULL, '2022-06-28 06:02:39', '2022-06-28 06:02:39'),
(6, '22061013', NULL, 'ram kumar', NULL, 'Order #pay_JmVidmtufPaEmy', 344500.00, 38, 'pending', NULL, NULL, 'completed', NULL, '2022-06-28 06:02:55', '2022-07-04 00:38:44'),
(7, '22061013', 'CART00011', 'ram kumar', 'IOA00007', 'Order #pay_JnDvJD1079Jx0m', 347500.00, 39, 'authorized', NULL, NULL, 'refunded', NULL, '2022-06-29 01:42:31', '2022-07-04 02:34:41'),
(8, '22070420', 'CART00014', 'Ram Kumar Bedia', 'IOA00008', 'Order #pay_JpaOV8Gpst0mXX', 17800.00, 40, 'authorized', 'pay_JpaOV8Gpst0mXX', NULL, 'completed', NULL, '2022-07-05 00:59:31', '2022-07-05 02:24:57'),
(9, '22070622', 'CART00015', 'Ram Kumar Bedia', 'IOA00009', 'Order #pay_Jq30cMasNDBz5V', 314900.00, 41, 'authorized', 'pay_Jq30cMasNDBz5V', 'csd545613', 'completed', NULL, '2022-07-06 04:58:57', '2022-07-07 00:51:58'),
(10, '2207144', 'CART00017', 'Rahul Kumar', 'IOA00010', 'Order #pay_Jtx77WRSU3PwLu', 32600.00, 42, 'authorized', 'pay_Jtx77WRSU3PwLu', NULL, 'placed', NULL, '2022-07-16 07:18:56', '2022-07-16 07:18:56'),
(11, '2207144', 'CART00021', 'Rahul Kumar', 'IOA00011', 'Order #pay_Jty7BSdWFAj0HV', 347500.00, 43, 'authorized', 'pay_Jty7BSdWFAj0HV', NULL, 'placed', NULL, '2022-07-16 08:17:41', '2022-07-16 08:17:41'),
(12, '2207144', 'CART00023', 'Rahul Kumar', 'IOA00012', 'Order #pay_JvCmxnzME2j0C4', 17800.00, 44, 'authorized', 'pay_JvCmxnzME2j0C4', NULL, 'placed', NULL, '2022-07-19 11:17:57', '2022-07-19 11:17:57'),
(13, '2207144', 'CART00028', 'Rahul Kumar', 'IOA00013', 'Order #pay_Jvz25RZ4RRx6S7', 354900.00, 46, 'authorized', 'pay_Jvz25RZ4RRx6S7', NULL, 'placed', NULL, '2022-07-21 10:29:33', '2022-07-21 10:29:33'),
(14, '2207144', 'CART00039', 'Rahul Kumar', 'IOA00014', 'Order #pay_Jvz3LTn8JeiSTb', 4400.00, 47, 'authorized', 'pay_Jvz3LTn8JeiSTb', NULL, 'placed', NULL, '2022-07-21 10:30:44', '2022-07-21 10:30:44'),
(15, '2207144', 'CART00040', 'Rahul Kumar', 'IOA00015', 'Order #pay_Jvz5ocXNXX6alr', 12600.00, 48, 'authorized', 'pay_Jvz5ocXNXX6alr', NULL, 'placed', NULL, '2022-07-21 10:33:04', '2022-07-21 10:33:04'),
(16, '2207144', 'CART00041', 'Rahul Kumar', 'IOA00016', 'Order #pay_Jvz9Nswug3k0cL', 50400.00, 49, 'authorized', 'pay_Jvz9Nswug3k0cL', NULL, 'cancelled', NULL, '2022-07-21 10:36:26', '2022-07-22 08:29:45'),
(17, '2207144', 'CART00062', 'Rahul Kumar', 'IOA00017', 'Order #pay_JxxbyKBG8u3lGV', 310000.00, 50, 'authorized', 'pay_JxxbyKBG8u3lGV', NULL, 'completed', NULL, '2022-07-26 10:24:07', '2022-07-27 08:14:41'),
(18, '22121330', 'CART00094', 'Ram Kumar Bedia', 'IOA00018', 'Order #pay_LNqZZroHIVTImi', 40000.00, 53, 'authorized', 'pay_LNqZZroHIVTImi', NULL, 'placed', NULL, '2023-03-05 12:43:09', '2023-03-05 12:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` bigint(20) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `long_description` longtext DEFAULT NULL,
  `unit` varchar(225) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `regular_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `rating` double NOT NULL,
  `stock` tinyint(4) NOT NULL DEFAULT 0,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`id`, `pid`, `title`, `slug`, `short_description`, `long_description`, `unit`, `weight`, `regular_price`, `selling_price`, `discount`, `category`, `sub_category`, `rating`, `stock`, `status`, `created_at`, `updated_at`) VALUES
(1, '64e451916feb6', 'Aglaonema Lady Valentine', 'aglaonema-lady-valentine', 'Aglaonema lady valentine', '<!-- wp:paragraph --><p>Aglaonema lady valentine</p><!-- /wp:paragraph -->', 'KG', NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 15:41:29', '2023-11-07 12:24:36'),
(2, '64e4550507372', 'Aglaonema Siam Aurora', 'aglaonema-siam-aurora', 'Aglaonema Siam Aurora', '<!-- wp:paragraph --><p>Aglaonema Siam Aurora</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 15:56:13', '2023-08-22 15:56:13'),
(3, '64e4557d2e3be', 'Aglaonema Snow White', 'aglaonema-snow-white', 'Aglaonema Snow White', '<!-- wp:paragraph --><p>Aglaonema Snow White</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 15:58:13', '2023-08-22 15:58:13'),
(4, '64e4559ed3037', 'Air Plant', 'air-plant', 'Air Plant', '<!-- wp:paragraph --><p>Air Plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 15:58:46', '2023-08-22 15:58:46'),
(5, '64e455c359eef', 'Alocasia Hybrid', 'alocasia-hybrid', 'Alocasia Hybrid', '<!-- wp:paragraph --><p>Alocasia Hybrid</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 15:59:23', '2023-08-22 15:59:23'),
(6, '64e455e8611a2', 'Anthurium (red)', 'anthurium-red', 'Anthurium (red)', '<!-- wp:paragraph --><p>Anthurium (red)</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:00:00', '2023-08-22 16:00:00'),
(7, '64e45618890ae', 'Anthurium', 'anthurium', 'Anthurium', '<!-- wp:paragraph --><p>Anthurium</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:00:48', '2023-08-22 16:00:48'),
(8, '64e4563bce870', 'Aralia Black', 'aralia-black', 'Aralia Black', '<!-- wp:paragraph --><p>Aralia Black</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:01:23', '2023-08-22 16:01:23'),
(9, '64e4565bc2ba8', 'Aralia Miniature', 'aralia-miniature', 'Aralia Miniature', '<!-- wp:paragraph --><p>Aralia Miniature</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:01:55', '2023-08-22 16:01:55'),
(10, '64e4568e62a88', 'Areca Palm', 'areca-palm', 'Areca Palm', '<!-- wp:paragraph --><p>Areca Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:02:46', '2023-08-22 16:02:46'),
(11, '64e456cfca051', 'Chamaedorea Elegans', 'chamaedorea-elegans', 'Chamaedorea Elegans', '<!-- wp:paragraph --><p>Chamaedorea Elegans</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:03:51', '2023-08-22 16:03:51'),
(12, '64e45711dcccb', 'Chlorophytum', 'chlorophytum', 'Chlorophytum', '<!-- wp:paragraph --><p>Chlorophytum</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:04:57', '2023-08-22 16:04:57'),
(13, '64e4574b7376b', 'Christmas Cactus', 'christmas-cactus', 'Christmas Cactus', '<!-- wp:paragraph --><p>Christmas Cactus</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:05:55', '2023-08-22 16:05:55'),
(14, '64e45775cbece', 'Dieffenbachia Maculate', 'dieffenbachia-maculate', 'Dieffenbachia Maculate', '<!-- wp:paragraph --><p>Dieffenbachia Maculate</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:06:37', '2023-08-22 16:06:37'),
(15, '64e4579ec1a4d', 'Aloe Vera', 'aloe-vera', 'Aloe Vera', '<!-- wp:paragraph --><p>Aloe Vera</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:07:18', '2023-08-22 16:07:18'),
(16, '64e457a2314b6', 'Elephant Blush', 'elephant-blush', 'Elephant Blush', '<!-- wp:paragraph --><p>Elephant Blush</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:07:22', '2023-08-22 16:07:22'),
(17, '64e457d056003', 'Ficus Bonsai', 'ficus-bonsai', 'Ficus Bonsai', '<!-- wp:paragraph --><p>Ficus Bonsai</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:08:08', '2023-08-22 16:08:08'),
(18, '64e457f9ec35d', 'Ficus Microcarpa Bonsai', 'ficus-microcarpa-bonsai', 'Ficus Microcarpa Bonsai', '<!-- wp:paragraph --><p>Ficus Microcarpa Bonsai</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:08:49', '2023-08-22 16:08:49'),
(19, '64e45811409c6', 'Arbian Jasmine', 'arbian-jasmine', 'Arbian Jasmine', '<!-- wp:paragraph --><p>Arbian Jasmine</p><!-- /wp:paragraph -->', NULL, NULL, 800.00, 650.00, 19.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:09:13', '2023-08-22 16:09:13'),
(20, '64e458218f2f4', 'Grape Ivy', 'grape-ivy', 'Grape Ivy', '<!-- wp:paragraph --><p>Grape Ivy</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:09:29', '2023-08-22 16:09:29'),
(21, '64e4584e3a894', 'Haworthia Margaritifera', 'haworthia-margaritifera', 'Haworthia Margaritifera', '<!-- wp:paragraph --><p>Haworthia Margaritifera</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:10:14', '2023-08-22 16:10:14'),
(22, '64e4588745a4d', 'Jade Bonsai', 'jade-bonsai', 'Jade Bonsai', '<!-- wp:paragraph --><p>Jade Bonsai</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:11:11', '2023-08-22 16:11:11'),
(23, '64e458f5decc8', 'Areca Palm (Small)', 'areca-palm-small', 'Areca Palm (Small)', '<!-- wp:paragraph --><p>Areca Palm (Small)</p><!-- /wp:paragraph -->', NULL, NULL, 400.00, 250.00, 38.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:13:01', '2023-08-22 16:13:01'),
(24, '64e4599659e42', 'Areca Palm', 'areca-palm', 'Areca Palm', '<!-- wp:paragraph --><p>Areca Palm</p><!-- /wp:paragraph -->', NULL, NULL, 300.00, 200.00, 33.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:15:42', '2023-08-22 16:15:42'),
(25, '64e459cf34029', 'Jade Plant', 'jade-plant', 'Jade Plant', '<!-- wp:paragraph --><p>Jade Plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:16:39', '2023-08-22 16:16:39'),
(26, '64e459f3c9bac', 'Marble Prince', 'marble-prince', 'Marble Prince', '<!-- wp:paragraph --><p>Marble Prince</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:17:15', '2023-08-22 16:17:15'),
(27, '64e459fbbe3b6', 'Boston Fern', 'boston-fern', 'Boston Fern', '<!-- wp:paragraph --><p>Boston Fern</p><!-- /wp:paragraph -->', NULL, NULL, 200.00, 150.00, 25.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:17:23', '2023-08-22 16:17:23'),
(28, '64e45a1e6bd25', 'Marble Queen', 'marble-queen', 'Marble Queen', '<!-- wp:paragraph --><p>Marble Queen</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:17:58', '2023-08-22 16:17:58'),
(29, '64e45a4fd0ecb', 'Money Plant (golden)', 'money-plant-golden', 'Money Plant (golden)', '<!-- wp:paragraph --><p>Money Plant (golden)</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:18:47', '2023-08-22 16:18:47'),
(30, '64e45a8987f04', 'Money Plant', 'money-plant', 'Money Plant', '<!-- wp:paragraph --><p>Money Plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:19:45', '2023-08-22 16:19:45'),
(31, '64e45a9e82143', 'Bougainvillea(Pink)', 'bougainvilleapink', 'Bougainvillea(Pink)', '<!-- wp:paragraph --><p>Bougainvillea(Pink)</p><!-- /wp:paragraph -->', NULL, NULL, 100.00, 80.00, 20.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:20:06', '2023-08-22 16:20:06'),
(32, '64e45acc29bcc', 'Monstera Obliqua', 'monstera-obliqua', 'Monstera Obliqua', '<!-- wp:paragraph --><p>Monstera Obliqua</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:20:52', '2023-08-22 16:20:52'),
(33, '64e45afe5baa8', 'Multidrop Lotus Tiger Stick Lucky Bamboo', 'multidrop-lotus-tiger-stick-lucky-bamboo', 'Multidrop Lotus Tiger Stick Lucky Bamboo', '<!-- wp:paragraph --><p>Multidrop Lotus Tiger Stick Lucky Bamboo</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:21:42', '2023-08-22 16:21:42'),
(34, '64e45b4944906', 'Nephrolepis Exaltata', 'nephrolepis-exaltata', 'Nephrolepis Exaltata', '<!-- wp:paragraph --><p>Nephrolepis Exaltata</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:22:57', '2023-08-22 16:22:57'),
(35, '64e45b5453776', 'Catharanthus Roseus(Any Colour)', 'catharanthus-roseusany-colour', 'Catharanthus Roseus(Any Colour)', '<!-- wp:paragraph --><p>Catharanthus Roseus(Any Colour)</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 950.00, 5.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:23:08', '2023-08-22 16:23:08'),
(36, '64e45b72a40f0', 'Peace-Lily', 'peace-lily', 'Peace-Lily', '<!-- wp:paragraph --><p>Peace-Lily</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:23:38', '2023-08-22 16:23:38'),
(37, '64e45bcb1dfe2', 'Peperomia Magnolifolia', 'peperomia-magnolifolia', 'Peperomia Magnolifolia', '<!-- wp:paragraph --><p>Peperomia Magnolifolia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:25:07', '2023-08-22 16:25:07'),
(38, '64e45bf3ea9a7', 'Peperomia Obtusifolia – Succulent', 'peperomia-obtusifolia-succulent', 'Peperomia Obtusifolia – Succulent', '<!-- wp:paragraph --><p>Peperomia Obtusifolia – Succulent</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:25:47', '2023-08-22 16:25:47'),
(39, '64e45bfd5073b', 'Clitoria Ternatea', 'clitoria-ternatea', 'Clitoria Ternatea', '<!-- wp:paragraph --><p>Clitoria Ternatea</p><!-- /wp:paragraph -->', NULL, NULL, 950.00, 850.00, 11.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:25:57', '2023-08-22 16:25:57'),
(40, '64e45c1b3d480', 'Peperomia Orba', 'peperomia-orba', 'Peperomia Orba', '<!-- wp:paragraph --><p>Peperomia Orba</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:26:27', '2023-08-22 16:26:27'),
(41, '64e45c3fe2656', 'Philodendron Ceylon', 'philodendron-ceylon', 'Philodendron Ceylon', '<!-- wp:paragraph --><p>Philodendron Ceylon</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:27:03', '2023-08-22 16:27:03'),
(42, '64e45c77e1fc2', 'Common Mint Plant', 'common-mint-plant', 'Common Mint Plant', '<!-- wp:paragraph --><p>Common Mint Plant</p><!-- /wp:paragraph -->', NULL, NULL, 900.00, 850.00, 6.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:27:59', '2023-08-22 16:27:59'),
(43, '64e45c913d837', 'Philodendron Scandens Oxycardium', 'philodendron-scandens-oxycardium', 'Philodendron Scandens Oxycardium', '<!-- wp:paragraph --><p>Philodendron Scandens Oxycardium</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:28:25', '2023-08-22 16:28:25'),
(44, '64e45cb21e191', 'Philodendron Xanadu Green', 'philodendron-xanadu-green', 'Philodendron Xanadu Green', '<!-- wp:paragraph --><p>Philodendron Xanadu Green</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:28:58', '2023-08-22 16:28:58'),
(45, '64e45cdb1c0d1', 'Curry Leaves', 'curry-leaves', 'Curry Leaves', '<!-- wp:paragraph --><p>Curry Leaves</p><!-- /wp:paragraph -->', NULL, NULL, 850.00, 700.00, 18.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:29:39', '2023-08-22 16:29:39'),
(46, '64e45d343bfaf', 'Curtain Creeper', 'curtain-creeper', 'Curtain Creeper', '<!-- wp:paragraph --><p>Curtain Creeper</p><!-- /wp:paragraph -->', NULL, NULL, 850.00, 750.00, 12.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:31:08', '2023-08-22 16:31:08'),
(47, '64e45d41edfbc', 'Pickle Cactus Delosperma Echinatum', 'pickle-cactus-delosperma-echinatum', 'Pickle Cactus Delosperma Echinatum', '<!-- wp:paragraph --><p>Pickle Cactus Delosperma Echinatum</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:31:21', '2023-08-22 16:31:21'),
(48, '64e45d5c6c857', 'Poinsettia', 'poinsettia', 'Poinsettia', '<!-- wp:paragraph --><p>Poinsettia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:31:48', '2023-08-22 16:31:48'),
(49, '64e45d878f632', 'Elephant Bush', 'elephant-bush', 'Elephant Bush', '<!-- wp:paragraph --><p>Elephant Bush</p><!-- /wp:paragraph -->', NULL, NULL, 800.00, 680.00, 15.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:32:31', '2023-08-22 16:32:31'),
(50, '64e45d9624335', 'Radermachera China Doll', 'radermachera-china-doll', 'Radermachera China Doll', '<!-- wp:paragraph --><p>Radermachera China Doll</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:32:46', '2023-08-22 16:32:46'),
(51, '64e45db9a9895', 'Rubber Tree', 'rubber-tree', 'Rubber Tree', '<!-- wp:paragraph --><p>Rubber Tree</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:33:21', '2023-08-22 16:33:21'),
(52, '64e45df666318', 'Sansevieria Trifasciata', 'sansevieria-trifasciata', 'Sansevieria Trifasciata', '<!-- wp:paragraph --><p>Sansevieria Trifasciata</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:34:22', '2023-08-22 16:34:22'),
(53, '64e45e1bb562c', 'Snake Plant', 'snake-plant', 'Snake Plant', '<!-- wp:paragraph --><p>Snake Plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:34:59', '2023-08-22 16:34:59'),
(54, '64e45e3609d57', 'Sparkles', 'sparkles', 'Sparkles', '<!-- wp:paragraph --><p>Sparkles</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:35:26', '2023-08-22 16:35:26'),
(55, '64e45e5866cdc', 'Syngonium Podophyllum Mini', 'syngonium-podophyllum-mini', 'Syngonium Podophyllum Mini', '<!-- wp:paragraph --><p>Syngonium Podophyllum Mini</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:36:00', '2023-08-22 16:36:00'),
(56, '64e45e854bce0', 'Fiddle Leaf Fig', 'fiddle-leaf-fig', 'Fiddle Leaf Fig', '<!-- wp:paragraph --><p>Fiddle Leaf Fig</p><!-- /wp:paragraph -->', NULL, NULL, 750.00, 600.00, 20.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:36:45', '2023-08-22 16:36:45'),
(57, '64e45ea2ca8c1', 'Syngonium (pink)', 'syngonium-pink', 'Syngonium (pink)', '<!-- wp:paragraph --><p>Syngonium (pink)</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:37:14', '2023-08-22 16:37:14'),
(58, '64e45ec04fc52', 'Variegated Jade Plant', 'variegated-jade-plant', 'Variegated Jade Plant', '<!-- wp:paragraph --><p>Variegated Jade Plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:37:44', '2023-08-22 16:37:44'),
(59, '64e45ee28bf66', 'Gardenia', 'gardenia', 'Gardenia', '<!-- wp:paragraph --><p>Gardenia</p><!-- /wp:paragraph -->', NULL, NULL, 750.00, 660.00, 12.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:38:18', '2023-08-22 16:38:18'),
(60, '64e45ef34837d', 'Zamioculcas Zamifolia', 'zamioculcas-zamifolia', 'Zamioculcas Zamifolia', '<!-- wp:paragraph --><p>Zamioculcas Zamifolia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Gardening Trending Plant', 4, 0, '1', '2023-08-22 16:38:35', '2023-08-22 16:38:35'),
(61, '64e45f5530448', 'Jasmine Auriculatum', 'jasmine-auriculatum', 'Jasmine Auriculatum', '<!-- wp:paragraph --><p>Jasmine Auriculatum</p><!-- /wp:paragraph -->', NULL, NULL, 650.00, 620.00, 5.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:40:13', '2023-08-22 16:40:13'),
(62, '64e45fe60c089', 'Krishna Kamal', 'krishna-kamal', 'Krishna Kamal', '<!-- wp:paragraph --><p>Krishna Kamal</p><!-- /wp:paragraph -->', NULL, NULL, 680.00, 620.00, 9.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:42:38', '2023-08-22 16:42:38'),
(63, '64e45feac2bd9', 'Areca Palm(Small)', 'areca-palmsmall', 'Areca Palm(Small)', '<!-- wp:paragraph --><p>Areca Palm(Small)</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 16:42:42', '2023-08-22 16:42:42'),
(64, '64e4600e99701', 'Areca Palm', 'areca-palm', 'Areca Palm', '<!-- wp:paragraph --><p>Areca Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 16:43:18', '2023-08-22 16:43:18'),
(65, '64e4603435e8a', 'Kunda', 'kunda', 'Kunda', '<!-- wp:paragraph --><p>Kunda</p><!-- /wp:paragraph -->', NULL, NULL, 650.00, 600.00, 8.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:43:56', '2023-08-22 16:43:56'),
(66, '64e4604e59302', 'Bismarckia Palm', 'bismarckia-palm', 'Bismarckia Palm', '<!-- wp:paragraph --><p>Bismarckia Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 16:44:22', '2023-08-22 16:44:22'),
(67, '64e46082cee5e', 'Bottle Palm With Trunk', 'bottle-palm-with-trunk', 'Bottle Palm With Trunk', '<!-- wp:paragraph --><p>Bottle Palm With Trunk</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 16:45:14', '2023-08-22 16:45:14'),
(68, '64e460a54c529', 'Lemon Grass', 'lemon-grass', 'Lemon Grass', '<!-- wp:paragraph --><p>Lemon Grass</p><!-- /wp:paragraph -->', NULL, NULL, 550.00, 500.00, 9.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:45:49', '2023-08-22 16:45:49'),
(69, '64e460b0c6fdd', 'Caryota Palms', 'caryota-palms', 'Caryota Palms', '<!-- wp:paragraph --><p>Caryota Palms</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Organic Fertilizers', 'Palm Plants', 4, 0, '1', '2023-08-22 16:46:00', '2023-08-22 16:46:00'),
(70, '64e461153feab', 'Maghai Paan', 'maghai-paan', 'Maghai Paan', '<!-- wp:paragraph --><p>Maghai Paan</p><!-- /wp:paragraph -->', NULL, NULL, 520.00, 480.00, 8.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:47:41', '2023-08-22 16:47:41'),
(71, '64e4617bd2cff', 'Money Plant', 'money-plant', 'Money Plant', '<!-- wp:paragraph --><p>Money Plant</p><!-- /wp:paragraph -->', NULL, NULL, 560.00, 510.00, 9.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:49:23', '2023-08-22 16:49:23'),
(72, '64e461e9d49f9', 'Parijat Tree', 'parijat-tree', 'Parijat Tree', '<!-- wp:paragraph --><p>Parijat Tree</p><!-- /wp:paragraph -->', NULL, NULL, 480.00, 450.00, 6.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:51:13', '2023-08-22 16:51:13'),
(73, '64e4624207fb4', 'Portulaca, 9’0 Clock', 'portulaca-90-clock', 'Portulaca, 9’0 Clock', '<!-- wp:paragraph --><p>Portulaca, 9’0 Clock</p><!-- /wp:paragraph -->', NULL, NULL, 450.00, 410.00, 9.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:52:42', '2023-08-22 16:52:42'),
(74, '64e4629b5636e', 'Rain Lily', 'rain-lily', 'Rain Lily', '<!-- wp:paragraph --><p>Rain Lily</p><!-- /wp:paragraph -->', NULL, NULL, 470.00, 430.00, 9.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:54:11', '2023-08-22 16:54:11'),
(75, '64e462fc7e799', 'Rangoon Creeper', 'rangoon-creeper', 'Rangoon Creeper', '<!-- wp:paragraph --><p>Rangoon Creeper</p><!-- /wp:paragraph -->', NULL, NULL, 540.00, 510.00, 6.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:55:48', '2023-08-22 16:55:48'),
(76, '64e4637a59494', 'Russelia (Red)', 'russelia-red', 'Russelia (Red)', '<!-- wp:paragraph --><p>Russelia (Red)</p><!-- /wp:paragraph -->', NULL, NULL, 350.00, 300.00, 14.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 16:57:54', '2023-08-22 16:57:54'),
(77, '64e463e36a603', 'Chamaedorea Metallic Palm', 'chamaedorea-metallic-palm', 'Chamaedorea Metallic Palm', '<!-- wp:paragraph --><p>Chamaedorea Metallic Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 16:59:39', '2023-08-22 16:59:39'),
(78, '64e463fb1e7d6', 'Sedeveria Green Rose', 'sedeveria-green-rose', 'Sedeveria Green Rose', '<!-- wp:paragraph --><p>Sedeveria Green Rose</p><!-- /wp:paragraph -->', NULL, NULL, 480.00, 410.00, 15.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 17:00:03', '2023-08-22 17:00:03'),
(79, '64e4645438d67', 'Christmas Palm', 'christmas-palm', 'Christmas Palm', '<!-- wp:paragraph --><p>Christmas Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:01:32', '2023-08-22 17:01:32'),
(80, '64e46469b427d', 'Snake Plant', 'snake-plant', 'Snake Plant', '<!-- wp:paragraph --><p>Snake Plant</p><!-- /wp:paragraph -->', NULL, NULL, 350.00, 250.00, 29.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 17:01:53', '2023-08-22 17:01:53'),
(81, '64e464a85e274', 'Cluster Palm', 'cluster-palm', 'Cluster Palm', '<!-- wp:paragraph --><p>Cluster Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:02:56', '2023-08-22 17:02:56'),
(82, '64e464b925166', 'Syngonium', 'syngonium', 'Syngonium', '<!-- wp:paragraph --><p>Syngonium</p><!-- /wp:paragraph -->', NULL, NULL, 200.00, 100.00, 50.00, 'Plant', 'Low Maintance Plants', 4, 0, '1', '2023-08-22 17:03:13', '2023-08-22 17:03:13'),
(83, '64e464c7df75c', 'Date Palm', 'date-palm', 'Date Palm', '<!-- wp:paragraph --><p>Date Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:03:27', '2023-08-22 17:03:27'),
(84, '64e4651b83bec', 'Dessert  Fan Palm', 'dessert-fan-palm', 'Dessert  Fan Palm', '<!-- wp:paragraph --><p>Dessert Fan Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:04:51', '2023-08-22 17:04:51'),
(85, '64e46542b443f', 'Fiji Fan Palm', 'fiji-fan-palm', 'Fiji Fan Palm', '<!-- wp:paragraph --><p>Fiji Fan Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:05:30', '2023-08-22 17:05:30'),
(86, '64e46571b930b', 'Fox Tail Palm', 'fox-tail-palm', 'Fox Tail Palm', '<!-- wp:paragraph --><p>Fox Tail Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:06:17', '2023-08-22 17:06:17'),
(87, '64e465982b206', 'Jelly Palm', 'jelly-palm', 'Jelly Palm', '<!-- wp:paragraph --><p>Jelly Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:06:56', '2023-08-22 17:06:56'),
(88, '64e465d72af55', 'African Marigold', 'african-marigold', 'African Marigold', '<!-- wp:paragraph --><p>African Marigold</p><!-- /wp:paragraph -->', NULL, NULL, 100.00, 50.00, 50.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:07:59', '2023-08-22 17:07:59'),
(89, '64e465db738a5', 'Kentia Palm', 'kentia-palm', 'Kentia Palm', '<!-- wp:paragraph --><p>Kentia Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:08:03', '2023-08-22 17:08:03'),
(90, '64e46601708f0', 'King Palm', 'king-palm', 'King Palm', '<!-- wp:paragraph --><p>King Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:08:41', '2023-08-22 17:08:41'),
(91, '64e4663b78334', 'African Violets', 'african-violets', 'African Violets', '<!-- wp:paragraph --><p>African Violets</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 950.00, 5.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:09:39', '2023-08-22 17:09:39'),
(92, '64e466593ada9', 'Parlor Palm', 'parlor-palm', 'Parlor Palm', '<!-- wp:paragraph --><p>Parlor Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:10:09', '2023-08-22 17:10:09'),
(93, '64e46681d6ef3', 'Pny Tail Palm', 'pny-tail-palm', 'Pny Tail Palm', '<!-- wp:paragraph --><p>Pny Tail Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:10:49', '2023-08-22 17:10:49'),
(94, '64e4669dc1b45', 'Allamanda Tiger', 'allamanda-tiger', 'Allamanda Tiger', '<!-- wp:paragraph --><p>Allamanda Tiger</p><!-- /wp:paragraph -->', NULL, NULL, 950.00, 800.00, 16.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:11:17', '2023-08-22 17:11:17'),
(95, '64e466af81aff', 'Pygmy Date Palm', 'pygmy-date-palm', 'Pygmy Date Palm', '<!-- wp:paragraph --><p>Pygmy Date Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:11:35', '2023-08-22 17:11:35'),
(96, '64e466d8371e7', 'Queen Sago', 'queen-sago', 'Queen Sago', '<!-- wp:paragraph --><p>Queen Sago</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:12:16', '2023-08-22 17:12:16'),
(97, '64e466fb86198', 'Raphis Palm', 'raphis-palm', 'Raphis Palm', '<!-- wp:paragraph --><p>Raphis Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:12:51', '2023-08-22 17:12:51'),
(98, '64e4670b517e6', 'Alpinia Purpurata', 'alpinia-purpurata', 'Alpinia Purpurata', '<!-- wp:paragraph --><p>Alpinia Purpurata</p><!-- /wp:paragraph -->', NULL, NULL, 920.00, 850.00, 8.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:13:07', '2023-08-22 17:13:07'),
(99, '64e4672c5288b', 'Red Latan Palm', 'red-latan-palm', 'Red Latan Palm', '<!-- wp:paragraph --><p>Red Latan Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:13:40', '2023-08-22 17:13:40'),
(100, '64e4675bc836d', 'Red Neck Palm', 'red-neck-palm', 'Red Neck Palm', '<!-- wp:paragraph --><p>Red Neck Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:14:27', '2023-08-22 17:14:27'),
(101, '64e4677f6e905', 'Royal Palm', 'royal-palm', 'Royal Palm', '<!-- wp:paragraph --><p>Royal Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:15:03', '2023-08-22 17:15:03'),
(102, '64e46790d5547', 'Alstonia Scholaris', 'alstonia-scholaris', 'Alstonia Scholaris', '<!-- wp:paragraph --><p>Alstonia Scholaris</p><!-- /wp:paragraph -->', NULL, NULL, 820.00, 650.00, 21.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:15:20', '2023-08-22 17:15:20'),
(103, '64e467aaa0cc4', 'Ruffled Fan Palm', 'ruffled-fan-palm', 'Ruffled Fan Palm', '<!-- wp:paragraph --><p>Ruffled Fan Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:15:46', '2023-08-22 17:15:46'),
(104, '64e467cf46311', 'Ruffled Latan Palm', 'ruffled-latan-palm', 'Ruffled Latan Palm', '<!-- wp:paragraph --><p>Ruffled Latan Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:16:23', '2023-08-22 17:16:23'),
(105, '64e467f6d96ea', 'Table Palm', 'table-palm', 'Table Palm', '<!-- wp:paragraph --><p>Table Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:17:02', '2023-08-22 17:17:02'),
(106, '64e4681949684', 'Angel Wing Begonia', 'angel-wing-begonia', 'Angel Wing Begonia', '<!-- wp:paragraph --><p>Angel Wing Begonia</p><!-- /wp:paragraph -->', NULL, NULL, 800.00, 640.00, 20.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:17:37', '2023-08-22 17:17:37'),
(107, '64e4681f8b444', 'Travellai Palm', 'travellai-palm', 'Travellai Palm', '<!-- wp:paragraph --><p>Travellai Palm</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Palm Plants', 4, 0, '1', '2023-08-22 17:17:43', '2023-08-22 17:17:43'),
(108, '64e46891540d8', 'Anthurium', 'anthurium', 'Anthurium', '<!-- wp:paragraph --><p>Anthurium</p><!-- /wp:paragraph -->', NULL, NULL, 750.00, 720.00, 4.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:19:37', '2023-08-22 17:19:37'),
(109, '64e468f213c2f', 'Aster-Plant', 'aster-plant', 'Aster-Plant', '<!-- wp:paragraph --><p>Aster-Plant</p><!-- /wp:paragraph -->', NULL, NULL, 760.00, 710.00, 7.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:21:14', '2023-08-22 17:21:14'),
(110, '64e46972e2eae', 'Bird of Paradise', 'bird-of-paradise', 'Bird of Paradise', '<!-- wp:paragraph --><p>Bird of Paradise</p><!-- /wp:paragraph -->', NULL, NULL, 680.00, 600.00, 12.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:23:22', '2023-08-22 17:23:22'),
(111, '64e469ee7882f', 'Bleeding Heart Plant', 'bleeding-heart-plant', 'Bleeding Heart Plant', '<!-- wp:paragraph --><p>Bleeding Heart Plant</p><!-- /wp:paragraph -->', NULL, NULL, 540.00, 480.00, 11.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:25:26', '2023-08-22 17:25:26'),
(112, '64e46a59c8cc2', 'Bush Allamanda', 'bush-allamanda', 'Bush Allamanda', '<!-- wp:paragraph --><p>Bush Allamanda</p><!-- /wp:paragraph -->', NULL, NULL, 420.00, 390.00, 7.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:27:13', '2023-08-22 17:27:13'),
(113, '64e46b8d543c2', 'Calla Lily', 'calla-lily', 'Calla Lily', '<!-- wp:paragraph --><p>Calla Lily</p><!-- /wp:paragraph -->', NULL, NULL, 420.00, 360.00, 14.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:32:21', '2023-08-22 17:32:21'),
(114, '64e46c1d60e9e', 'Carnation (Red)', 'carnation-red', 'Carnation (Red)', '<!-- wp:paragraph --><p>Carnation (Red)</p><!-- /wp:paragraph -->', NULL, NULL, 450.00, 350.00, 22.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:34:45', '2023-08-22 17:34:45'),
(115, '64e46c9de4289', 'Catharanthus Roseus', 'catharanthus-roseus', 'Catharanthus Roseus', '<!-- wp:paragraph --><p>Catharanthus Roseus</p><!-- /wp:paragraph -->', NULL, NULL, 300.00, 250.00, 17.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:36:53', '2023-08-22 17:36:53'),
(116, '64e46cbd950b7', 'Aloe Humilis', 'aloe-humilis', 'Aloe Humilis', '<!-- wp:paragraph --><p>Aloe Humilis</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:37:25', '2023-08-22 17:37:25'),
(117, '64e46cf9e7656', 'Aloe Juvenna', 'aloe-juvenna', 'Aloe Juvenna', '<!-- wp:paragraph --><p>Aloe Juvenna</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:38:25', '2023-08-22 17:38:25'),
(118, '64e46cfa95327', 'Catharanthus', 'catharanthus', 'Catharanthus', '<!-- wp:paragraph --><p>Catharanthus</p><!-- /wp:paragraph -->', NULL, NULL, 250.00, 220.00, 12.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:38:26', '2023-08-22 17:38:26'),
(119, '64e46d33b996d', 'Aloe Vera', 'aloe-vera', 'Aloe Vera', '<!-- wp:paragraph --><p>Aloe Vera</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:39:23', '2023-08-22 17:39:23'),
(120, '64e46d71421ba', 'Chrysanthemum', 'chrysanthemum', 'Chrysanthemum', '<!-- wp:paragraph --><p>Chrysanthemum</p><!-- /wp:paragraph -->', NULL, NULL, 280.00, 250.00, 11.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:40:25', '2023-08-22 17:40:25'),
(121, '64e46dd085660', 'Cathedral Window Haworthia', 'cathedral-window-haworthia', 'Cathedral Window Haworthia', '<!-- wp:paragraph --><p>Cathedral Window Haworthia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:42:00', '2023-08-22 17:42:00'),
(122, '64e46de4cf0cc', 'Clerodendrum Inerme', 'clerodendrum-inerme', 'Clerodendrum Inerme', '<!-- wp:paragraph --><p>Clerodendrum Inerme</p><!-- /wp:paragraph -->', NULL, NULL, 250.00, 120.00, 52.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:42:20', '2023-08-22 17:42:20'),
(123, '64e46e03a1503', 'Crassula Camfire', 'crassula-camfire', 'Crassula Camfire', '<!-- wp:paragraph --><p>Crassula Camfire</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:42:51', '2023-08-22 17:42:51'),
(124, '64e46e2f7618f', 'Crassula Hobbit', 'crassula-hobbit', 'Crassula Hobbit', '<!-- wp:paragraph --><p>Crassula Hobbit</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:43:35', '2023-08-22 17:43:35'),
(125, '64e46e54d5e0a', 'Creeper Rose', 'creeper-rose', 'Creeper Rose', '<!-- wp:paragraph --><p>Creeper Rose</p><!-- /wp:paragraph -->', NULL, NULL, 150.00, 100.00, 33.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:44:12', '2023-08-22 17:44:12'),
(126, '64e46e5bc626e', 'Crassula Ovata', 'crassula-ovata', 'Crassula Ovata', '<!-- wp:paragraph --><p>Crassula Ovata</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:44:19', '2023-08-22 17:44:19'),
(127, '64e46eb34d0b2', 'Crassula Tetragona', 'crassula-tetragona', 'Crassula Tetragona', '<!-- wp:paragraph --><p>Crassula Tetragona</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:45:47', '2023-08-22 17:45:47'),
(128, '64e46ee332c28', 'Cupid Peperomia', 'cupid-peperomia', 'Cupid Peperomia', '<!-- wp:paragraph --><p>Cupid Peperomia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:46:35', '2023-08-22 17:46:35'),
(129, '64e46ef236fd7', 'Creeping Wood Sorrel', 'creeping-wood-sorrel', 'Creeping Wood Sorrel', '<!-- wp:paragraph --><p>Creeping Wood Sorrel</p><!-- /wp:paragraph -->', NULL, NULL, 100.00, 50.00, 50.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:46:50', '2023-08-22 17:46:50'),
(130, '64e46f11ec2de', 'Elephant Bush', 'elephant-bush', 'Elephant Bush', '<!-- wp:paragraph --><p>Elephant Bush</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:47:21', '2023-08-22 17:47:21'),
(131, '64e46f4db59df', 'Graptoveria Dowglas Huth', 'graptoveria-dowglas-huth', 'Graptoveria Dowglas Huth', '<!-- wp:paragraph --><p>Graptoveria Dowglas Huth</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:48:21', '2023-08-22 17:48:21'),
(132, '64e46f88193c6', 'Crinum Lily', 'crinum-lily', 'Crinum Lily', '<!-- wp:paragraph --><p>Crinum Lily</p><!-- /wp:paragraph -->', NULL, NULL, 180.00, 120.00, 33.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:49:20', '2023-08-22 17:49:20'),
(134, '64e46fc9c6bd0', 'Haworthia Retusa', 'haworthia-retusa', 'Haworthia Retusa', '<!-- wp:paragraph --><p>Haworthia Retusa</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:50:25', '2023-08-22 17:50:25'),
(135, '64e46ff50f4ef', 'Huernia Species', 'huernia-species', 'Huernia Species', '<!-- wp:paragraph --><p>Huernia Species</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:51:09', '2023-08-22 17:51:09'),
(136, '64e4702bd576e', 'Huernia Zebrina', 'huernia-zebrina', 'Huernia Zebrina', '<!-- wp:paragraph --><p>Huernia Zebrina</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:52:03', '2023-08-22 17:52:03'),
(137, '64e4705919e42', 'Cuphea Hyssopifolia', 'cuphea-hyssopifolia', 'Cuphea Hyssopifolia', '<!-- wp:paragraph --><p>Cuphea Hyssopifolia</p><!-- /wp:paragraph -->', NULL, NULL, 150.00, 80.00, 47.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 17:52:49', '2023-08-22 17:52:49'),
(138, '64e470751430c', 'Kalanchoe Pumila Silver Grey', 'kalanchoe-pumila-silver-grey', 'Kalanchoe Pumila Silver Grey', '<!-- wp:paragraph --><p>Kalanchoe Pumila Silver Grey</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 17:53:17', '2023-08-22 17:53:17'),
(139, '64e472f2ef3dc', 'Graptoveria Opalina', 'graptoveria-opalina', 'Graptoveria Opalina', '<!-- wp:paragraph --><p>Graptoveria Opalina</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:03:54', '2023-08-22 18:03:54'),
(140, '64e473cdb9688', 'Haworthia Retusa', 'haworthia-retusa', 'Haworthia Retusa', '<!-- wp:paragraph --><p>Haworthia Retusa</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:07:33', '2023-08-22 18:07:33'),
(141, '64e4740bf33b4', 'Huernia Species', 'huernia-species', 'Huernia Species', '<!-- wp:paragraph --><p>Huernia Species</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:08:35', '2023-08-22 18:08:35'),
(142, '64e474429777b', 'Huernia Zebrina', 'huernia-zebrina', 'Huernia Zebrina', '<!-- wp:paragraph --><p>Huernia Zebrina</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:09:30', '2023-08-22 18:09:30'),
(143, '64e4747f56fb5', 'Kalanchoe  Pumila Silver grey', 'kalanchoe-pumila-silver-grey', 'Kalanchoe  Pumila Silver grey', '<!-- wp:paragraph --><p>Kalanchoe Pumila Silver grey</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:10:31', '2023-08-22 18:10:31'),
(144, '64e4751245e62', 'Kalanchoe Tomentosa Nigra', 'kalanchoe-tomentosa-nigra', 'Kalanchoe Tomentosa Nigra', '<!-- wp:paragraph --><p>Kalanchoe Tomentosa Nigra</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:12:58', '2023-08-22 18:12:58'),
(145, '64e4756131f57', 'Parodia Leninghausii', 'parodia-leninghausii', 'Parodia Leninghausii', '<!-- wp:paragraph --><p>Parodia Leninghausii</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:14:17', '2023-08-22 18:14:17'),
(146, '64e475bb556b0', 'Peperomia Magnolifolia', 'peperomia-magnolifolia', 'Peperomia Magnolifolia', '<!-- wp:paragraph --><p>Peperomia Magnolifolia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:15:47', '2023-08-22 18:15:47'),
(147, '64e47641eeacb', 'Peperomia Obtusifolia', 'peperomia-obtusifolia', 'Peperomia Obtusifolia', '<!-- wp:paragraph --><p>Peperomia Obtusifolia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:18:01', '2023-08-22 18:18:01'),
(148, '64e4769651fa2', 'Peperomia Orba', 'peperomia-orba', 'Peperomia Orba', '<!-- wp:paragraph --><p>Peperomia Orba</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:19:26', '2023-08-22 18:19:26'),
(149, '64e476cbf2e1d', 'Pickle Cactus', 'pickle-cactus', 'PIckle Cactus', '<!-- wp:paragraph --><p>PIckle Cactus</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:20:19', '2023-08-22 18:31:07'),
(150, '64e47836dc891', 'Portulaca', 'portulaca', 'Portulaca', '<!-- wp:paragraph --><p>Portulaca</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:26:22', '2023-08-22 18:26:22'),
(151, '64e47988abbdc', 'Red Bunny Cactus', 'red-bunny-cactus', 'Red Bunny Cactus', '<!-- wp:paragraph --><p>Red Bunny Cactus</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:32:00', '2023-08-22 18:32:00'),
(152, '64e479fe1b19e', 'Sansevieria Trifasciata Hahnii', 'sansevieria-trifasciata-hahnii', 'Sansevieria Trifasciata Hahnii', '<!-- wp:paragraph --><p>Sansevieria Trifasciata Hahnii</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:33:58', '2023-08-22 18:33:58'),
(153, '64e47a2a97805', 'Sedum Adophii', 'sedum-adophii', 'Sedum Adophii', '<!-- wp:paragraph --><p>Sedum Adophii</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:34:42', '2023-08-22 18:34:42'),
(154, '64e47a6add95c', 'Sedum Angelina', 'sedum-angelina', 'Sedum Angelina', '<!-- wp:paragraph --><p>Sedum Angelina</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:35:46', '2023-08-22 18:35:46'),
(155, '64e47ab31f209', 'Senecio Serpens', 'senecio-serpens', 'Senecio Serpens', '<!-- wp:paragraph --><p>Senecio Serpens</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Cactus and succlents', 4, 0, '1', '2023-08-22 18:36:59', '2023-08-22 18:36:59'),
(156, '64e47c1332647', 'Adenium plant', 'adenium-plant', 'Adenium plant', '<!-- wp:paragraph --><p>Adenium plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 18:42:51', '2023-08-22 18:42:51'),
(157, '64e47c6cd70eb', 'Alpinia Purpurata Variegated', 'alpinia-purpurata-variegated', 'Alpinia Purpurata Variegated', '<!-- wp:paragraph --><p>Alpinia Purpurata Variegated</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 18:44:20', '2023-08-22 18:44:20'),
(159, '64e47cbbe90a4', 'Bottle Brush Plant', 'bottle-brush-plant', 'Bottle Brush Plant', '<!-- wp:paragraph --><p>Bottle Brush Plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 18:45:39', '2023-08-22 18:45:39'),
(160, '64e47efa0543a', 'Arbian Jasmine', 'arbian-jasmine', 'Arbian Jasmine', '<!-- wp:paragraph --><p>Arbian Jasmine</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 18:55:14', '2023-08-22 18:55:14'),
(161, '64e47f47adc42', 'Bougaunvillea', 'bougaunvillea', 'Bougaunvillea', '<!-- wp:paragraph --><p>Bougaunvillea</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 18:56:31', '2023-08-22 18:56:44'),
(162, '64e47f900f1f6', 'Bush Alamanda', 'bush-alamanda', 'Bush Alamanda', '<!-- wp:paragraph --><p>Bush Alamanda</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 18:57:44', '2023-08-22 18:57:44'),
(163, '64e47fc85df1e', 'Cascabela Thevetia', 'cascabela-thevetia', 'Cascabela Thevetia', '<!-- wp:paragraph --><p>Cascabela Thevetia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 18:58:40', '2023-08-22 18:58:40'),
(164, '64e47ff79227d', 'Cassia Fistula', 'cassia-fistula', 'Cassia Fistula', '<!-- wp:paragraph --><p>Cassia Fistula</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 18:59:27', '2023-08-22 18:59:27'),
(165, '64e480243351c', 'Clematis Heynei', 'clematis-heynei', 'Clematis Heynei', '<!-- wp:paragraph --><p>Clematis Heynei</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:00:12', '2023-08-22 19:00:12'),
(166, '64e48055e9c05', 'Damascus  Rose', 'damascus-rose', 'Damascus  Rose', '<!-- wp:paragraph --><p>Damascus Rose</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:01:01', '2023-08-22 19:01:01'),
(167, '64e4807d85f6f', 'Dianthus', 'dianthus', 'Dianthus', '<!-- wp:paragraph --><p>Dianthus</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:01:41', '2023-08-22 19:01:41'),
(168, '64e4809c65430', 'Eurphorbia', 'eurphorbia', 'Eurphorbia', '<!-- wp:paragraph --><p>Eurphorbia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:02:12', '2023-08-22 19:02:12'),
(169, '64e480b29ac12', 'Gardenia', 'gardenia', 'Gardenia', '<!-- wp:paragraph --><p>Gardenia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:02:34', '2023-08-22 19:02:34'),
(170, '64e480d938a9b', 'Gerbera', 'gerbera', 'Gerbera', '<!-- wp:paragraph --><p>Gerbera</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:03:13', '2023-08-22 19:03:13'),
(171, '64e48112d5169', 'Gulmohar Tree', 'gulmohar-tree', 'Gulmohar Tree', '<!-- wp:paragraph --><p>Gulmohar Tree</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:04:10', '2023-08-22 19:04:10'),
(172, '64e4813a64dc0', 'Hemerocallis, Day Lily (any colour) Plant', 'hemerocallis-day-lily-any-colour-plant', 'Hemerocallis, Day Lily (any colour) Plant', '<!-- wp:paragraph --><p>Hemerocallis, Day Lily (any colour) Plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:04:50', '2023-08-22 19:04:50'),
(173, '64e48152076cf', 'Insulin plant', 'insulin-plant', 'Insulin plant', '<!-- wp:paragraph --><p>Insulin plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:05:14', '2023-08-22 19:05:14'),
(174, '64e4816cb60da', 'Ixora mini dwarf', 'ixora-mini-dwarf', 'Ixora mini dwarf', '<!-- wp:paragraph --><p>Ixora mini dwarf</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:05:40', '2023-08-22 19:05:40'),
(175, '64e4819ab8db3', 'Jasminum Auriculatum', 'jasminum-auriculatum', 'Jasminum Auriculatum', '<!-- wp:paragraph --><p>Jasminum Auriculatum</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:06:26', '2023-08-22 19:06:26'),
(176, '64e481b345713', 'Kalanchoe', 'kalanchoe', 'Kalanchoe', '<!-- wp:paragraph --><p>Kalanchoe</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:06:51', '2023-08-22 19:06:51'),
(177, '64e4820ff2538', 'Kaner , Nerium Oleander (any colour) – Plant', 'kaner-nerium-oleander-any-colour-plant', 'Kaner , Nerium Oleander (any colour) – Plant', '<!-- wp:paragraph --><p>Kaner , Nerium Oleander (any colour) – Plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:08:23', '2023-08-22 19:08:23'),
(178, '64e4823fcfc05', 'Kaner , Nerium Oleander (any colour) – Plant2', 'kaner-nerium-oleander-any-colour-plant2', 'Kaner , Nerium Oleander (any colour) – Plant2', '<!-- wp:paragraph --><p>Kaner , Nerium Oleander (any colour) – Plant2</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:09:11', '2023-08-22 19:09:11'),
(179, '64e4827c9cf07', 'Krishna Kamal', 'krishna-kamal', 'Krishna Kamal', '<!-- wp:paragraph --><p>Krishna Kamal</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:10:12', '2023-08-22 19:10:12'),
(180, '64e4830debc98', 'Kunda', 'kunda', 'Kunda', '<!-- wp:paragraph --><p>Kunda</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:12:37', '2023-08-22 19:12:37'),
(181, '64e487012a44a', 'Madhumalti Dwarf', 'madhumalti-dwarf', 'Madhumalti Dwarf', '<!-- wp:paragraph --><p>Madhumalti Dwarf</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:29:29', '2023-08-22 19:29:29'),
(182, '64e4872fdd1e8', 'Minature Rose', 'minature-rose', 'Minature Rose', '<!-- wp:paragraph --><p>Minature Rose</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:30:15', '2023-08-22 19:30:15');
INSERT INTO `plants` (`id`, `pid`, `title`, `slug`, `short_description`, `long_description`, `unit`, `weight`, `regular_price`, `selling_price`, `discount`, `category`, `sub_category`, `rating`, `stock`, `status`, `created_at`, `updated_at`) VALUES
(183, '64e4875068a42', 'Murraya Paniculate', 'murraya-paniculate', 'Murraya Paniculate', '<!-- wp:paragraph --><p>Murraya Paniculate</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:30:48', '2023-08-22 19:30:48'),
(184, '64e4879841dd8', 'Neel Mohar , Jacaranda Mimosifolia – plant', 'neel-mohar-jacaranda-mimosifolia-plant', 'Neel Mohar , Jacaranda Mimosifolia – plant', '<!-- wp:paragraph --><p>Neel Mohar , Jacaranda Mimosifolia – plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:32:00', '2023-08-22 19:32:00'),
(185, '64e487bc2a2df', 'Pentas  (dark pink)- plant', 'pentas-dark-pink-plant', 'Pentas  (dark pink)- plant', '<!-- wp:paragraph --><p>Pentas  (dark pink)- plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:32:36', '2023-08-22 19:32:36'),
(186, '64e487e639db5', 'Plumeria, Champa (white)- plant', 'plumeria-champa-white-plant', 'Plumeria, Champa (white)- plant', '<!-- wp:paragraph --><p>Plumeria, Champa (white)- plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:33:18', '2023-08-22 19:38:39'),
(187, '64e48819a368f', 'Portulaca, 9’0 Clock', 'portulaca-90-clock', 'Portulaca, 9’0 Clock', '<!-- wp:paragraph --><p>Portulaca, 9’0 Clock</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:34:09', '2023-08-22 19:34:09'),
(188, '64e4883f0381b', 'Portulaca, 10’0 Clock', 'portulaca-100-clock', 'Portulaca, 10’0 Clock', '<!-- wp:paragraph --><p>Portulaca, 10’0 Clock</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:34:47', '2023-08-22 19:34:47'),
(189, '64e48868e0db9', 'Rajnigandha', 'rajnigandha', 'Rajnigandha', '<!-- wp:paragraph --><p>Rajnigandha</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:35:28', '2023-08-22 19:35:28'),
(190, '64e488a47c540', 'Rangoon Creeper', 'rangoon-creeper', 'Rangoon Creeper', '<!-- wp:paragraph --><p>Rangoon Creeper</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:36:28', '2023-08-22 19:36:28'),
(191, '64e488c94d9eb', 'Rose (peach)- plant', 'rose-peach-plant', 'Rose (peach)- plant', '<!-- wp:paragraph --><p>Rose (peach)- plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:37:05', '2023-08-22 19:37:05'),
(192, '64e488f4d8723', 'Rose (red)', 'rose-red', 'Rose (red)', '<!-- wp:paragraph --><p>Rose (red)</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:37:48', '2023-08-22 19:37:48'),
(193, '64e4895297c12', 'Rose', 'rose', 'Rose', '<!-- wp:paragraph --><p>Rose</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:39:22', '2023-08-22 19:39:22'),
(194, '64e4896b53fa2', 'Rosemary', 'rosemary', 'Rosemary', '<!-- wp:paragraph --><p>Rosemary</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:39:47', '2023-08-22 19:39:47'),
(195, '64e4898942542', 'Russelia (red)- plant', 'russelia-red-plant', 'Russelia (red)- plant', '<!-- wp:paragraph --><p>Russelia (red)- plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:40:17', '2023-08-22 19:40:17'),
(196, '64e489c2e4607', 'Salvia Splender', 'salvia-splender', 'Salvia Splender', '<!-- wp:paragraph --><p>Salvia Splender</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:41:14', '2023-08-22 19:41:14'),
(197, '64e489e7721a9', 'Scented Rose', 'scented-rose', 'Scented Rose', '<!-- wp:paragraph --><p>Scented Rose</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:41:51', '2023-08-22 19:41:51'),
(198, '64e489ff7d570', 'Stachytarpneta', 'stachytarpneta', 'Stachytarpneta', '<!-- wp:paragraph --><p>Stachytarpneta</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:42:15', '2023-08-22 19:42:15'),
(199, '64e48a3f2ab4c', 'Tagar Mini', 'tagar-mini', 'Tagar Mini', '<!-- wp:paragraph --><p>Tagar Mini</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:43:19', '2023-08-22 19:43:19'),
(200, '64e48a5b1ff9a', 'Tecoma (shrub, orange)- plant', 'tecoma-shrub-orange-plant', 'Tecoma (shrub, orange)- plant', '<!-- wp:paragraph --><p>Tecoma (shrub, orange)- plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:43:47', '2023-08-22 19:43:47'),
(201, '64e48a76cb04f', 'Terenia Plant', 'terenia-plant', 'Terenia Plant', '<!-- wp:paragraph --><p>Terenia Plant</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:44:14', '2023-08-22 19:44:14'),
(202, '64e48a94487b5', 'Thumbergia', 'thumbergia', 'Thumbergia', '<!-- wp:paragraph --><p>Thumbergia</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:44:44', '2023-08-22 19:44:44'),
(203, '64e48ab26e3e4', 'Thumbergua', 'thumbergua', 'Thumbergua', '<!-- wp:paragraph --><p>Thumbergua</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:45:14', '2023-08-22 19:45:14'),
(204, '64e48acf52953', 'Vinca', 'vinca', 'Vinca', '<!-- wp:paragraph --><p>Vinca</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Summer Plants', 4, 0, '1', '2023-08-22 19:45:43', '2023-08-22 19:45:43'),
(205, '64e4a268ebf49', 'Dahlia', 'dahlia', 'Dahlia', '<!-- wp:paragraph --><p>Dahlia</p><!-- /wp:paragraph -->', NULL, NULL, 850.00, 600.00, 29.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 21:26:24', '2023-08-22 21:26:24'),
(206, '64e4a2e9734d9', 'English Rose', 'english-rose', 'English Rose', '<!-- wp:paragraph --><p>English Rose</p><!-- /wp:paragraph -->', NULL, NULL, 750.00, 600.00, 20.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 21:28:33', '2023-08-22 21:28:33'),
(207, '64e4a347e67ac', 'Euphorbia Leucocephala', 'euphorbia-leucocephala', 'Euphorbia Leucocephala', '<!-- wp:paragraph --><p>Euphorbia Leucocephala</p><!-- /wp:paragraph -->', NULL, NULL, 800.00, 600.00, 25.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 21:30:07', '2023-08-22 21:30:07'),
(208, '64e4a3ab2d60a', 'European Lily', 'european-lily', 'European Lily', '<!-- wp:paragraph --><p>European Lily</p><!-- /wp:paragraph -->', NULL, NULL, 500.00, 250.00, 50.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 21:31:47', '2023-08-22 21:31:47'),
(209, '64e4a3fb9e038', 'Fire Cracker Flower', 'fire-cracker-flower', 'Fire Cracker Flower', '<!-- wp:paragraph --><p>Fire Cracker Flower</p><!-- /wp:paragraph -->', NULL, NULL, 670.00, 600.00, 10.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 21:33:07', '2023-08-22 21:33:07'),
(210, '64e4a453cc75e', 'Flying Duck Orchid', 'flying-duck-orchid', 'Flying Duck Orchid', '<!-- wp:paragraph --><p>Flying Duck Orchid</p><!-- /wp:paragraph -->', NULL, NULL, 100.00, 80.00, 20.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 21:34:35', '2023-08-22 21:34:35'),
(211, '64e4a4ab616ea', 'Fragrant Panama Rose', 'fragrant-panama-rose', 'Fragrant Panama Rose', '<!-- wp:paragraph --><p>Fragrant Panama Rose</p><!-- /wp:paragraph -->', NULL, NULL, 900.00, 850.00, 6.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 21:36:03', '2023-08-22 21:36:03'),
(212, '64e4a54d4295e', 'Gazania', 'gazania', 'Gazania', '<!-- wp:paragraph --><p>Gazania</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 21:38:45', '2023-08-22 21:38:45'),
(213, '64e4a6527302e', 'Gerbera', 'gerbera', 'Gerbera', '<!-- wp:paragraph --><p>Gerbera</p><!-- /wp:paragraph -->', NULL, NULL, 800.00, 600.00, 25.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-22 21:43:06', '2023-08-22 21:43:06'),
(214, '64e5afd5829b9', 'Gladiator', 'gladiator', 'Gladiator', '<!-- wp:paragraph --><p>Gladiator</p><!-- /wp:paragraph -->', NULL, NULL, 850.00, 670.00, 21.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 16:35:57', '2023-08-23 16:35:57'),
(215, '64e5b033b3355', 'Gulmohar Tree', 'gulmohar-tree', 'Gulmohar Tree', '<!-- wp:paragraph --><p>Gulmohar Tree</p><!-- /wp:paragraph -->', NULL, NULL, 800.00, 600.00, 25.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 16:37:31', '2023-08-23 16:37:31'),
(216, '64e5b0a63dcde', 'Honey Suckle', 'honey-suckle', 'Honey Suckle', '<!-- wp:paragraph --><p>Honey Suckle</p><!-- /wp:paragraph -->', NULL, NULL, 750.00, 670.00, 11.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 16:39:26', '2023-08-23 16:39:26'),
(217, '64e5b1608ea9e', 'Hydrangea Macrophylla', 'hydrangea-macrophylla', 'Hydrangea Macrophylla', '<!-- wp:paragraph --><p>Hydrangea Macrophylla</p><!-- /wp:paragraph -->', NULL, NULL, 670.00, 600.00, 10.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 16:42:32', '2023-08-23 16:42:32'),
(218, '64e5b306f1a4f', 'Kalanchoe', 'kalanchoe', 'Kalanchoe', '<!-- wp:paragraph --><p>Kalanchoe</p><!-- /wp:paragraph -->', NULL, NULL, 100.00, 80.00, 20.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 16:49:34', '2023-08-23 16:49:34'),
(219, '64e5bb90f18da', 'Loropetalum', 'loropetalum', 'Loropetalum', '<!-- wp:paragraph --><p>Loropetalum</p><!-- /wp:paragraph -->', NULL, NULL, 750.00, 600.00, 20.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:26:00', '2023-08-23 17:26:00'),
(220, '64e5bc4f2eb5a', 'Magnolia Liliifera', 'magnolia-liliifera', 'Magnolia Liliifera', '<!-- wp:paragraph --><p>Magnolia Liliifera</p><!-- /wp:paragraph -->', NULL, NULL, 400.00, 250.00, 38.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:29:11', '2023-08-23 17:29:11'),
(221, '64e5bd19a1ef6', 'Mimosa Pudica', 'mimosa-pudica', 'Mimosa Pudica', '<!-- wp:paragraph --><p>Mimosa Pudica</p><!-- /wp:paragraph -->', NULL, NULL, 300.00, 230.00, 23.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:32:33', '2023-08-23 17:32:33'),
(222, '64e5bd7173d48', 'Minature Rose', 'minature-rose', 'Minature Rose', '<!-- wp:paragraph --><p>Minature Rose</p><!-- /wp:paragraph -->', NULL, NULL, 250.00, 220.00, 12.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:34:01', '2023-08-23 17:34:01'),
(223, '64e5be282d9ec', 'Mussaenda', 'mussaenda', 'Mussaenda', '<!-- wp:paragraph --><p>Mussaenda</p><!-- /wp:paragraph -->', NULL, NULL, 250.00, 200.00, 20.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:37:04', '2023-08-23 17:37:04'),
(224, '64e5bea761a19', 'Nelumbo Nucifera', 'nelumbo-nucifera', 'Nelumbo Nucifera', '<!-- wp:paragraph --><p>Nelumbo Nucifera</p><!-- /wp:paragraph -->', NULL, NULL, 220.00, 150.00, 32.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:39:11', '2023-08-23 17:39:11'),
(225, '64e5bf092f3ae', 'Nerium Oleander', 'nerium-oleander', 'Nerium Oleander', '<!-- wp:paragraph --><p>Nerium Oleander</p><!-- /wp:paragraph -->', NULL, NULL, 150.00, 100.00, 33.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:40:49', '2023-08-23 17:40:49'),
(226, '64e5bf7fd362b', 'New Guinea Impatiens', 'new-guinea-impatiens', 'New Guinea Impatiens', '<!-- wp:paragraph --><p>New Guinea Impatiens</p><!-- /wp:paragraph -->', NULL, NULL, 260.00, 210.00, 19.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:42:47', '2023-08-23 17:42:47'),
(227, '64e5bfd0d58a3', 'Orchid Plant', 'orchid-plant', 'Orchid Plant', '<!-- wp:paragraph --><p>Orchid Plant</p><!-- /wp:paragraph -->', NULL, NULL, 280.00, 180.00, 36.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:44:08', '2023-08-23 17:44:08'),
(228, '64e5c021e3d45', 'Peace-Lily', 'peace-lily', 'Peace-Lily', '<!-- wp:paragraph --><p>Peace-Lily</p><!-- /wp:paragraph -->', NULL, NULL, 320.00, 250.00, 22.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:45:29', '2023-08-23 17:45:29'),
(229, '64e5c07cc4722', 'Petunia', 'petunia', 'Petunia', '<!-- wp:paragraph --><p>Petunia</p><!-- /wp:paragraph -->', NULL, NULL, 450.00, 380.00, 16.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:47:00', '2023-08-23 17:47:00'),
(230, '64e5c0c1e4d5c', 'Pink Ball Tree', 'pink-ball-tree', 'Pink Ball Tree', '<!-- wp:paragraph --><p>Pink Ball Tree</p><!-- /wp:paragraph -->', NULL, NULL, 390.00, 250.00, 36.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:48:09', '2023-08-23 17:48:09'),
(231, '64e5c10fb0d37', 'Pink Trumpet', 'pink-trumpet', 'Pink Trumpet', '<!-- wp:paragraph --><p>Pink Trumpet</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 800.00, 20.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:49:27', '2023-08-23 17:49:27'),
(232, '64e5c15f39c81', 'Poinsettia', 'poinsettia', 'Poinsettia', '<!-- wp:paragraph --><p>Poinsettia</p><!-- /wp:paragraph -->', NULL, NULL, 240.00, 160.00, 33.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:50:47', '2023-08-23 17:50:47'),
(233, '64e5c1a954368', 'Powder Puff Plant', 'powder-puff-plant', 'Powder Puff Plant', '<!-- wp:paragraph --><p>Powder Puff Plant</p><!-- /wp:paragraph -->', NULL, NULL, 670.00, 600.00, 10.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:52:01', '2023-08-23 17:52:01'),
(234, '64e5c210d8e1e', 'Raat Rani Night Blooming Jasmine', 'raat-rani-night-blooming-jasmine', 'Raat Rani Night Blooming Jasmine', '<!-- wp:paragraph --><p>Raat Rani Night Blooming Jasmine</p><!-- /wp:paragraph -->', NULL, NULL, 750.00, 620.00, 17.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:53:44', '2023-08-23 17:53:44'),
(235, '64e5c24d18d05', 'Rajnigandha', 'rajnigandha', 'Rajnigandha', '<!-- wp:paragraph --><p>Rajnigandha</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 900.00, 10.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:54:45', '2023-08-23 17:54:45'),
(236, '64e5c28f07bb2', 'Rose (Red)', 'rose-red', 'Rose (Red)', '<!-- wp:paragraph --><p>Rose (Red)</p><!-- /wp:paragraph -->', NULL, NULL, 850.00, 600.00, 29.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:55:51', '2023-08-23 17:55:51'),
(237, '64e5c2d03e1c5', 'Rubia Ornamental', 'rubia-ornamental', 'Rubia Ornamental', '<!-- wp:paragraph --><p>Rubia Ornamental</p><!-- /wp:paragraph -->', NULL, NULL, 750.00, 500.00, 33.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:56:56', '2023-08-23 17:56:56'),
(238, '64e5c32ac01d4', 'Salvia Splendens Red', 'salvia-splendens-red', 'Salvia Splendens Red', '<!-- wp:paragraph --><p>Salvia Splendens Red</p><!-- /wp:paragraph -->', NULL, NULL, 460.00, 380.00, 17.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:58:26', '2023-08-23 17:58:26'),
(239, '64e5c3736fe39', 'Sankrant Vel', 'sankrant-vel', 'Sankrant Vel', '<!-- wp:paragraph --><p>Sankrant Vel</p><!-- /wp:paragraph -->', NULL, NULL, 800.00, 750.00, 6.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 17:59:39', '2023-08-23 17:59:39'),
(240, '64e5c3b827d78', 'Scented Rose', 'scented-rose', 'Scented Rose', '<!-- wp:paragraph --><p>Scented Rose</p><!-- /wp:paragraph -->', NULL, NULL, 1000.00, 850.00, 15.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 18:00:48', '2023-08-23 18:00:48'),
(241, '64e5c41b14958', 'Torenia Pink', 'torenia-pink', 'Torenia Pink', '<!-- wp:paragraph --><p>Torenia Pink</p><!-- /wp:paragraph -->', NULL, NULL, 100.00, 80.00, 20.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 18:02:27', '2023-08-23 18:02:27'),
(242, '64e5c45529147', 'Torenia', 'torenia', 'Torenia', '<!-- wp:paragraph --><p>Torenia</p><!-- /wp:paragraph -->', NULL, NULL, 750.00, 600.00, 20.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 18:03:25', '2023-08-23 18:03:25'),
(243, '64e5c4a3bb81a', 'Tulbaghia Fragrans', 'tulbaghia-fragrans', 'Tulbaghia Fragrans', '<!-- wp:paragraph --><p>Tulbaghia Fragrans</p><!-- /wp:paragraph -->', NULL, NULL, 500.00, 450.00, 10.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 18:04:43', '2023-08-23 18:04:43'),
(244, '64e5c4ef60c1d', 'Zinnia', 'zinnia', 'Zinnia', '<!-- wp:paragraph --><p>Zinnia</p><!-- /wp:paragraph -->', NULL, NULL, 360.00, 320.00, 11.00, 'Plant', 'Winter Flowering plant', 4, 0, '1', '2023-08-23 18:05:59', '2023-08-23 18:05:59'),
(245, '650a9b3bc0eb1', 'OGD11 Decorative Ball & Rings-1kg-6mm', 'ogd11-decorative-ball-rings-1kg-6mm', 'OGD11 Decorative Ball & Rings-1kg-6mm', '<!-- wp:paragraph --><p>OGD11 Decorative Ball &amp; Rings-1kg-6mm</p><!-- /wp:paragraph -->', 'KG', 1.00, 230.00, 103.50, 55.00, 'Product', 'Decorative Balls', 4, 0, '1', '2023-09-20 07:11:55', '2023-11-07 07:38:46'),
(246, '650a9e7e54848', 'OGD13 All Purpose Pesticide Cum Vaccine-100ml', 'ogd13-all-purpose-pesticide-cum-vaccine-100ml', 'OGD13 All Purpose Pesticide Cum Vaccine-100ml', '<!-- wp:paragraph --><p>OGD13 All Purpose Pesticide Cum Vaccine-100ml</p><!-- /wp:paragraph -->', 'ML', 100.00, 204.00, 142.80, 30.00, 'Product', 'Diseases and Controls', 4, 0, '1', '2023-09-20 07:25:50', '2023-11-07 07:41:19'),
(247, '650aa4cc4d63e', 'OGD17 All Purpose Insecticide-1ltr', 'ogd17-all-purpose-insecticide-1ltr', 'OGD17 All Purpose Insecticide-1ltr', '<!-- wp:paragraph --><p>OGD17 All Purpose Insecticide-1ltr</p><!-- /wp:paragraph -->', 'Ltr', 1.00, 935.00, 514.25, 45.00, 'Product', 'Pest Killer', 4, 0, '1', '2023-09-20 07:52:44', '2023-11-07 07:42:02'),
(248, '650aa57a62594', 'OGD9 High Nutrient Potting Soil-5kg', 'ogd9-high-nutrient-potting-soil-5kg', 'OGD9 High Nutrient Potting Soil-5kg', '<!-- wp:paragraph --><p>OGD9 High Nutrient Potting Soil-5kg</p><!-- /wp:paragraph -->', 'KG', 5.00, 525.00, 315.00, 40.00, 'Product', 'Soil Enrichment', 4, 0, '1', '2023-09-20 07:55:38', '2023-11-07 07:42:40'),
(249, '650aa6237592f', 'OGD32 Cocopeat Block 5kg', 'ogd32-cocopeat-block-5kg', 'OGD32 Cocopeat Block 5kg', '<!-- wp:paragraph --><p>OGD32 Cocopeat Block 5kg</p><!-- /wp:paragraph -->', 'KG', 5.00, 450.00, 450.00, 0.00, 'Product', 'Cocopeat', 4, 0, '1', '2023-09-20 07:58:27', '2023-11-07 07:43:17'),
(250, '650aa69e4e181', 'OGD1 Flower & Plant Nutrient Fertilizer-1kg', 'ogd1-flower-plant-nutrient-fertilizer-1kg', 'It is an innovative scientifically formulated flower grade fertilizer. Product has been developed by natural and organic components. Hence, it is a best class product to increase the number of lowers Per plant.', '<!-- wp:paragraph --><p>It is an innovative scientifically formulated flower grade fertilizer. Product has been developed by natural and organic components. Hence, it is a best class product to increase the number of lowers Per plant.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nutrition Value</h3><!-- /wp:heading --><!-- wp:table {\"align\":\"left\"} --><figure class=\"wp-block-table alignleft\"><table><tbody><tr><td><strong>SL.NO</strong></td><td><strong>NUTRIENT</strong></td><td><strong>PERCENTAGE</strong></td></tr><tr><td>1</td><td>Nitrogen</td><td>3%</td></tr><tr><td>2</td><td>Phosphorus</td><td>14%</td></tr><tr><td>3</td><td>Potasium</td><td>3%</td></tr></tbody></table></figure><!-- /wp:table --><!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It enhances the quality and quantity of flowers</li><li>It is easy to use and very effective.</li><li>It is having all the nutrients in balance proportion required to enhance the flowering.</li><li>This fertilizer can be used for flowering plant or to increase the flowering of any type of plant. Eventually, maximizes fruit formation</li><li>It contains high-quality organic ingredients viz. plant and animal wastes and natural organic minerals.</li><li>Enhances plant growth and increase the immunity to fight with pests and diseases</li><li>Improves soil health.</li><li>Provides all essential micro and macronutrients</li><li>Slowly and contentiously releases nutrients for almost a month after the applying to the soil. It alsokeeps the soil nourished.</li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Apply 40-50 gm before watering the plant during early morning or late evening per pot (Medium size). Per Plant Water the plants immediately after the application. Apply the product after every 2 weeks.</p><!-- /wp:paragraph --><!-- wp:columns --><div class=\"wp-block-columns\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"sizeSlug\":\"large\"} --><figure class=\"wp-block-image aligncenter size-large\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li></ul><!-- /wp:list --><!-- wp:paragraph --><p>Categories:&nbsp;<a href=\"https://innovativeorganicagri.com/product-category/ogd1-flower-and-plant-nutrient-fertilizer/\">OGD1 Flower &amp; Plant Nutrient Fertilizer</a>,&nbsp;<a href=\"https://innovativeorganicagri.com/product-category/organic-fertilizers/\">Organic Fertilizers</a></p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph -->', 'KG', 1.00, 210.00, 126.00, 40.00, 'Product', 'Organic Fertilizers', 4, 0, '1', '2023-09-20 08:00:30', '2023-11-08 09:25:55'),
(251, '650aa74087e7e', 'Combo1', 'combo1', 'Combo1', '<!-- wp:paragraph --><p>Combo1</p><!-- /wp:paragraph -->', 'Combo', 6.00, 3121.00, 2184.70, 30.00, 'Product', 'Combo', 4, 0, '1', '2023-09-20 08:03:12', '2023-11-07 07:44:25'),
(252, '651e89947e5f2', 'OGD3 Vegetable & Fruit Nutrient Fertilizer-1kg', 'ogd3-vegetable-fruit-nutrient-fertilizer-1kg', 'It is an innovative scientiically formulated vegetable grade fertilizer. Product has been developed by natural and organic components. Hence, it is a best class product to increase the number of fruits from per plant.', '<!-- wp:paragraph --><p>It is an innovative scientiically formulated vegetable grade fertilizer. Product has been developed by natural and organic components. Hence, it is a best class product to increase the number of fruits from per plant.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nutrition Value</h3><!-- /wp:heading --><!-- wp:table --><figure class=\"wp-block-table\"><table><tbody><tr><td>SL.NO</td><td><strong>NUTRIENT</strong></td><td><strong>PERCENTAGE</strong></td></tr><tr><td>1</td><td>Nitrogen</td><td>3%</td></tr><tr><td>2</td><td>Phosphorus</td><td>4%</td></tr><tr><td>3</td><td>Potasium</td><td>14%</td></tr></tbody></table></figure><!-- /wp:table --><!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It enhances the quality and quantity of fruits.</li><li>It Increase the number of Flowers&amp; fruits. Moreover, prevents fruit &amp; flower drop.</li><li>Stimulate root formation. Enhances plant growth, Balanced nutrition, quality and protects from diseases &amp; pests.</li><li>It is easy to use and very effective. Improvises soil and aerates it through natural processes.</li><li>It is having all the nutrients in balance proportion required to enhance the fruiting. Hence, Increase the fertility of the soil</li><li>It contains high-quality organic ingredients viz. plant and animal wastes and natural organic minerals</li><li>It Enhances plant growth and increase the immunity to fight withpests, drought, frost and other diseases.</li><li>Improves soil health. Formulated to loosen heavy soils and enhance water retention.</li><li>Provides all essential micro and macro nutrients for fruit formation.Slowly and continuously releases nutrients for almost a month after 100% the applying to the soil. It also NATURAL keeps the soil nourished.</li><li></li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:list {\"ordered\":true} --><ol><li>1. Loosen the top layer of the soil to the depth of 1 inch around the plant.</li><li>2. Apply about 15g of OGD3 for each pot and mix the soil.</li><li>3. Water enough to moist the media immediately.</li><li>4. Repeat the process once in 30 days.</li><li></li></ol><!-- /wp:list --><!-- wp:columns --><div class=\"wp-block-columns\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"sizeSlug\":\"large\"} --><figure class=\"wp-block-image aligncenter size-large\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li><li></li></ul><!-- /wp:list --><!-- wp:paragraph --><p>Categories:&nbsp;<a href=\"https://innovativeorganicagri.com/product-category/ogd3-vegetable-and-fruit-nutrient-fertilizer/\">OGD3 Vegetable &amp; Fruit Nutrient Fertilizer</a>,&nbsp;<a href=\"https://innovativeorganicagri.com/product-category/organic-fertilizers/\">Organic Fertilizers</a></p><!-- /wp:paragraph --></div><!-- /wp:column --></div><!-- /wp:columns -->', 'KG', 1.00, 260.00, 156.00, 40.00, 'Product', 'Organic Fertilizers', 4, 0, '1', '2023-10-05 19:31:56', '2023-11-07 10:57:00'),
(253, '651e8aa8c68e5', 'OGD2 Leaf & Lawn Fertilizer-1kg', 'ogd2-leaf-lawn-fertilizer-1kg', 'OGD2 Leaf & Lawn Fertilizer-1kg', '<!-- wp:paragraph --><p>It is an innovative scientifically enhanced leaf and lawn fertilizer. It is having high nitrogen for vegetative growth and balanced phosphorus and potassium for strong root growth of leafy plants and lawns.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nutrition Value</h3><!-- /wp:heading --><!-- wp:table --><figure class=\"wp-block-table\"><table><tbody><tr><td><strong>SL.NO</strong></td><td><strong>NUTRIENT</strong></td><td><strong>PERCENTAGE</strong></td></tr><tr><td>1</td><td>Nitrogen</td><td>10%</td></tr><tr><td>2</td><td>Phosphorus</td><td>7%</td></tr><tr><td>3</td><td>Potasium</td><td>4%</td></tr></tbody></table></figure><!-- /wp:table --><!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It enhances the quality and quantity of fruits.</li><li>It Increase the number of Flowers&amp; fruits. Moreover, prevents fruit &amp; flower drop.</li><li>Stimulate root formation. Enhances plant growth, Balanced nutrition, quality and protects from diseases &amp; pests.</li><li>It is easy to use and very effective. Improvises soil and aerates it through natural processes.</li><li>It is having all the nutrients in balance proportion required to enhance the fruiting. Hence, Increase the fertility of the soil</li><li>It contains high-quality organic ingredients viz. plant and animal wastes and natural organic minerals</li><li>It Enhances plant growth and increase the immunity to fight withpests, drought, frost and other diseases.</li><li>Improves soil health. Formulated to loosen heavy soils and enhance water retention.</li><li>Provides all essential micro and macro nutrients for fruit formation.Slowly and continuously releases nutrients for almost a month after 100% the applying to the soil. It also NATURAL keeps the soil nourished.</li><li></li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:list --><ul><li>1. Loosen the top layer of the soil to the depth of 1 inch around the plant.</li><li>2. Apply about 15g of OGD3 for each pot and mix the soil.</li><li>3. Water enough to moist the media immediately.</li><li>4. Repeat the process once in 30 days.</li><li></li></ul><!-- /wp:list --><!-- wp:columns --><div class=\"wp-block-columns\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"sizeSlug\":\"large\"} --><figure class=\"wp-block-image aligncenter size-large\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li><li></li></ul><!-- /wp:list --><!-- wp:paragraph --><p>Categories:&nbsp;<a href=\"https://innovativeorganicagri.com/product-category/ogd3-vegetable-and-fruit-nutrient-fertilizer/\">OGD3 Vegetable &amp; Fruit Nutrient Fertilizer</a>,&nbsp;<a href=\"https://innovativeorganicagri.com/product-category/organic-fertilizers/\">Organic Fertilizers</a></p><!-- /wp:paragraph -->', 'KG', 1.00, 253.00, 164.45, 35.00, 'Product', 'Organic Fertilizers', 4, 0, '1', '2023-10-05 19:36:32', '2023-11-07 10:50:45'),
(254, '651e8cbaddf07', 'OGD31 Boron 15 1kg', 'ogd31-boron-15-1kg', 'OGD31 Boron 15 1kg', '<!-- wp:paragraph --><p>OGD31 Boron 15 1kg</p><!-- /wp:paragraph -->', 'KG', 1.00, 820.00, 820.00, 0.00, 'Product', 'Boron 15', 4, 0, '1', '2023-10-05 19:45:22', '2023-11-07 07:45:46'),
(255, '651e8da7b02b2', 'OGD30 Epsum Salt (MgSo4) 10kg', 'ogd30-epsum-salt-mgso4-10kg', 'OGD30 Epsum Salt (MgSo4) 10kg', '<!-- wp:paragraph --><p>OGD30 Epsum Salt (MgSo4) 10kg</p><!-- /wp:paragraph -->', 'KG', 1.00, 125.00, 125.00, 0.00, 'Product', 'Epsum Salt', 4, 0, '1', '2023-10-05 19:49:19', '2023-11-07 07:46:13'),
(256, '651e8e4037ac1', 'OGD27 Fishmeal Organic Fertilizer 1kg', 'ogd27-fishmeal-organic-fertilizer-1kg', 'OGD27 Fishmeal Organic Fertilizer 1kg', '<!-- wp:paragraph --><p>OGD27 Fishmeal Organic Fertilizer 1kg</p><!-- /wp:paragraph -->', 'KG', 1.00, 155.00, 155.00, 0.00, 'Product', 'Organic Fertilizers', 4, 0, '1', '2023-10-05 19:51:52', '2023-11-07 07:46:40'),
(257, '651e8ea13fde8', 'OGD38 Hibiscus Fertilizer', 'ogd38-hibiscus-fertilizer', 'OGD38 Hibiscus Fertilizer', '<!-- wp:paragraph --><p>OGD38 Hibiscus Fertilizer</p><!-- /wp:paragraph -->', 'KG', 1.00, 370.00, 260.00, 30.00, 'Product', 'Organic Fertilizers', 4, 0, '1', '2023-10-05 19:53:29', '2023-11-07 07:47:04'),
(258, '651e8fbc7462f', 'OGD33 Enriched Cocopeat Compost 1kg', 'ogd33-enriched-cocopeat-compost-1kg', 'OGD33 Enriched Cocopeat Compost 1kg', '<!-- wp:paragraph --><p>OGD33 Enriched Cocopeat Compost 1kg</p><!-- /wp:paragraph -->', 'KG', 1.00, 65.00, 58.00, 11.00, 'Product', 'Cocopeat', 4, 0, '1', '2023-10-05 19:58:12', '2023-11-07 07:47:23'),
(259, '651e914635595', 'OGD7 All Purpose Fertilizer & Nutrient – 1kg', 'ogd7-all-purpose-fertilizer-nutrient-1kg', 'OGD7 All Purpose Fertilizer & Nutrient – 1kg', '<!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It releases balanced plant nutrition quickly, yet continues to feed for several months.</li><li>It also helps in balancing phosphorous content in nitrogen rich organic manure.</li><li>Eco friendly, No chemicals, Easy application. Excellent water holding capacity.</li><li>It Provides best environment to the plant’s roots.</li><li>This fertilizer can be used for any type of plant. It provides excellent air porosity.</li><li>Specially formulated fertilizer provides good plant health in short time.</li><li>It contains high-quality organic ingredients viz.animal wastes, Plant wastes and Natural minerals.</li><li>Enhances plant growth and increase the immunity to fight with pests and diseases</li><li>Improves soil health.</li><li>Slowly and contentiously releases nutrients for almost a month after the applying to the soil. It alsokeeps the soil nourished.</li><li></li><li></li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:list --><ul><li><strong>Flowering plants, KitchenGarden/vegetables: </strong>100-150gm in the pot per plant, 2-3 kg in the ground per sq. meter once a month.</li><li><strong>Indoor and outdoor plants:</strong>100gm in the pot per plant.</li><li><strong>Once a month in Kitchen garden: </strong>100gm in the pot per plant.</li><li><strong>Lawns: </strong>2-4 kg in the ground per sq meter every 3 months</li><li><strong>Bonsai plants: </strong>50-100 gm in the pot per plant, every 2 months.</li><li><strong>Fruit trees:</strong>2-3 kg in the pot per plant, 3-5 kg in the ground per sq every 3 months</li><li><strong>NOTE:</strong>This plant food applies around the plant and away from the plant main stem.</li></ul><!-- /wp:list --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:columns --><div class=\"wp-block-columns\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:columns {\"align\":\"full\"} --><div class=\"wp-block-columns alignfull\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"sizeSlug\":\"large\"} --><figure class=\"wp-block-image aligncenter size-large\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li><li></li></ul><!-- /wp:list --><!-- wp:paragraph --><p>Categories: <a href=\"https://innovativeorganicagri.com/product-category/ogd7-all-purpose-fertilizer-and-nutrient/\">OGD7 All Purpose Fertilizer &amp; Nutrient</a>, <a href=\"https://innovativeorganicagri.com/product-category/organic-fertilizers/\">Organic Fertilizers</a></p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Tags: <a href=\"https://innovativeorganicagri.com/product-tag/all-purpose-fertilizer-nutrient/\">All Purpose Fertilizer &amp; Nutrient</a>, <a href=\"https://innovativeorganicagri.com/product-tag/buy-organic-fertilizer-online/\">Buy Organic Fertilizer Online</a>, <a href=\"https://innovativeorganicagri.com/product-tag/cheap-organic-fertilizers/\">Cheap Organic Fertilizers</a>, <a href=\"https://innovativeorganicagri.com/product-tag/fertilizer-nutrient-online/\">Fertilizer &amp; Nutrient Online</a>, <a href=\"https://innovativeorganicagri.com/product-tag/online-organic-fertilizers/\">Online Organic Fertilizers</a></p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --></div><!-- /wp:column --></div><!-- /wp:columns --></div><!-- /wp:column --></div><!-- /wp:columns -->', 'KG', 1.00, 308.00, 184.80, 40.00, 'Product', 'Organic Fertilizers', 4, 0, '1', '2023-10-05 20:04:46', '2023-11-07 10:03:28'),
(260, '651e91a51416c', 'OGD8 Vermicompost Fertilizer-1kg', 'ogd8-vermicompost-fertilizer-1kg', 'OGD8 Vermicompost Fertilizer-1kg', '<!-- wp:paragraph --><p>OGD8 Vermicompost Fertilizer-1kg</p><!-- /wp:paragraph -->', 'KG', 1.00, 55.00, 44.00, 20.00, 'Product', 'Organic Fertilizers', 4, 0, '1', '2023-10-05 20:06:21', '2023-11-07 07:48:00'),
(261, '651e922f011ca', 'OGD21 All Purpose Pesticides-100+30gm', 'ogd21-all-purpose-pesticides-10030gm', 'OGD21 All Purpose Pesticides-100+30gm', '<!-- wp:paragraph --><p>OGD21 All Purpose Pesticides-100+30gm</p><!-- /wp:paragraph -->', 'GM', 130.00, 196.00, 117.00, 40.00, 'Product', 'Pest Killer', 4, 0, '1', '2023-10-05 20:08:39', '2023-11-07 07:48:31'),
(262, '651e92708d9ae', 'OGD22 Pest Killer-250gm', 'ogd22-pest-killer-250gm', 'OGD22 Pest Killer-250gm', '<!-- wp:paragraph --><p>OGD22 Pest Killer-250gm</p><!-- /wp:paragraph -->', 'GM', 248.00, 148.00, 72.00, 51.00, 'Product', 'Pest Killer', 4, 0, '1', '2023-10-05 20:09:44', '2023-11-07 07:48:49'),
(263, '651e93a00eabd', 'OGD23 NEEM OIL 100ml', 'ogd23-neem-oil-100ml', 'OGD23 NEEM OIL 100ml', '<!-- wp:paragraph --><p>OGD23 NEEM OIL 100ml</p><!-- /wp:paragraph -->', 'ML', 100.00, 205.00, 205.00, 0.00, 'Product', 'Pest Killer', 4, 0, '1', '2023-10-05 20:14:48', '2023-11-07 07:49:10'),
(264, '651e9453751d5', 'OGD24 Neem Cake Powder 1kg', 'ogd24-neem-cake-powder-1kg', 'OGD24 Neem Cake Powder 1kg', '<!-- wp:paragraph --><p>OGD24 Neem Cake Powder 1kg</p><!-- /wp:paragraph -->', 'KG', 1.00, 165.00, 165.00, 0.00, 'Product', 'Soil Enrichment', 4, 0, '1', '2023-10-05 20:17:47', '2023-11-07 07:49:30'),
(265, '651e94b4b10b1', 'OGD8 Vermicompost Fertilizer-1kg', 'ogd8-vermicompost-fertilizer-1kg', 'OGD8 Vermicompost Fertilizer-1kg', '<!-- wp:paragraph --><p>It is an innovative scienti‹ically enhanced vermicompost fertilizer. It is a humic-acid rich compost prepared by decomposition of organic waste by earthworms. Hence, OGD 08 Vermicompost is used as a soil additive, conditioner, and fertilizer.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nutrition Value</h3><!-- /wp:heading --><!-- wp:table --><figure class=\"wp-block-table\"><table><tbody><tr><td><strong>SL.NO</strong></td><td><strong>NUTRIENT</strong></td><td><strong>PERCENTAGE</strong></td></tr><tr><td>1</td><td>Nitrogen</td><td>2%</td></tr><tr><td>2</td><td>Phosphorus</td><td>2%</td></tr><tr><td>3</td><td>Potasium</td><td>1%</td></tr></tbody></table></figure><!-- /wp:table --><!-- wp:heading --><h2>Qualities</h2><!-- /wp:heading --><!-- wp:list --><ul><li>It functions to add humus and organic matter to the soil providing bioavailable nutrients to the plants, increasing soil tilth.</li><li>It helps with water infiltration and retention, while buffering excessive acid or alkaline soil conditions.</li><li>It helps store nutrients and keeps them safe from leeching and irrigation.</li><li></li><li></li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Benefits</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Enriched with organic plant nutrients.</li><li>Improves soil quality.</li><li>Helps to balance soil pH.</li><li>Completely organic product.</li><li>100% Chemical free.</li><li>It is free flowing easy to apply.</li><li></li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>How to use?</h3><!-- /wp:heading --><!-- wp:list --><ul><li>1. For new plant take one part of vermicompost and mix with 3 part of Organo Green Delight-Potting Soil (OGD 09).</li><li>2. For Potted plant apply 150-250gms OGD08 at the plant base, away from mail stem,3-4 time in a year.</li><li>3. Lewns: 2-4kg in the ground per 100sq. feet every month</li><li>4. Used for organic nursery, green house, home gardens, kitchen garden, root terrace gardens, tissue culture, flowers, vegetables.</li></ul><!-- /wp:list --><!-- wp:columns --><div class=\"wp-block-columns\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"sizeSlug\":\"large\"} --><figure class=\"wp-block-image aligncenter size-large\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li></ul><!-- /wp:list --></div><!-- /wp:column --></div><!-- /wp:columns -->', 'KG', 1.00, 55.00, 44.00, 20.00, 'Product', 'Organic Fertilizers', 4, 0, '1', '2023-10-05 20:19:24', '2023-11-07 10:25:13'),
(266, '654dd33ff3998', 'Aglaonema butterfly manis', 'aglaonema-butterfly-manis', 'Aglaonema butterfly manis', '<!-- wp:paragraph --><p>Aglaonema butterfly manis</p><!-- /wp:paragraph -->', 'KG', NULL, 1000.00, 900.00, 10.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:22:47', '2023-11-10 17:22:47'),
(267, '654dd3afccf3d', 'Aglaonema Commutatum Malay Beauty', 'aglaonema-commutatum-malay-beauty', 'Aglaonema Commutatum Malay Beauty', '<!-- wp:paragraph --><p>Aglaonema Commutatum Malay Beauty</p><!-- /wp:paragraph -->', 'KG', NULL, 550.00, 380.00, 31.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:24:39', '2023-11-10 17:24:39'),
(268, '654dd458dc4df', 'Aglaonema Commutatum', 'aglaonema-commutatum', 'Aglaonema Commutatum', '<!-- wp:paragraph --><p>Aglaonema Commutatum</p><!-- /wp:paragraph -->', 'KG', NULL, 450.00, 350.00, 22.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:27:28', '2023-11-10 17:27:28'),
(269, '654dd48b8285d', 'Aglaonema Green Compact', 'aglaonema-green-compact', 'Aglaonema Green Compact', '<!-- wp:paragraph --><p>Aglaonema Green Compact</p><!-- /wp:paragraph -->', 'KG', NULL, 850.00, 750.00, 12.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:28:19', '2023-11-10 17:28:19'),
(270, '654dd5668ceed', 'Aglaonema Siam Aurora', 'aglaonema-siam-aurora', 'Aglaonema Siam Aurora', '<!-- wp:paragraph --><p>Aglaonema Siam Aurora</p><!-- /wp:paragraph -->', 'KG', NULL, 850.00, 750.00, 12.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:31:58', '2023-11-10 17:31:58'),
(271, '654dd58ec69ef', 'Aglaonema Snow White', 'aglaonema-snow-white', 'Aglaonema Snow White', '<!-- wp:paragraph --><p>Aglaonema Snow White</p><!-- /wp:paragraph -->', 'KG', NULL, 450.00, 350.00, 22.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:32:38', '2023-11-10 17:32:38'),
(272, '654dd5ca15796', 'Aglaonema Stripes', 'aglaonema-stripes', 'Aglaonema Stripes', '<!-- wp:paragraph --><p>Aglaonema Stripes</p><!-- /wp:paragraph -->', 'KG', NULL, 250.00, 150.00, 40.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:33:38', '2023-11-10 17:33:38'),
(273, '654dd60fa9084', 'Alocasia Hybrid', 'alocasia-hybrid', 'Alocasia Hybrid', '<!-- wp:paragraph --><p>Alocasia Hybrid</p><!-- /wp:paragraph -->', 'KG', NULL, 550.00, 450.00, 18.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:34:47', '2023-11-10 17:34:47'),
(274, '654dd634362be', 'Chamaedorea Elegans', 'chamaedorea-elegans', 'Chamaedorea Elegans', '<!-- wp:paragraph --><p>Chamaedorea Elegans</p><!-- /wp:paragraph -->', 'KG', NULL, 1000.00, 900.00, 10.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:35:24', '2023-11-10 17:35:24'),
(275, '654dd654c309d', 'Chorophytum', 'chorophytum', 'Chorophytum', '<!-- wp:paragraph --><p>Chorophytum</p><!-- /wp:paragraph -->', 'KG', NULL, 1200.00, 1000.00, 17.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:35:56', '2023-11-10 17:35:56'),
(276, '654dd6e3e7d64', 'Dracaena Limelight Dragon Tree', 'dracaena-limelight-dragon-tree', 'Dracaena Limelight Dragon Tree', '<!-- wp:paragraph --><p>Dracaena Limelight Dragon Tree</p><!-- /wp:paragraph -->', 'KG', NULL, 1250.00, 1000.00, 20.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:38:19', '2023-11-10 17:38:19'),
(277, '654dd71d797ea', 'Dracaena Mahatma', 'dracaena-mahatma', 'Dracaena Mahatma', '<!-- wp:paragraph --><p>Dracaena Mahatma</p><!-- /wp:paragraph -->', 'KG', NULL, 650.00, 550.00, 15.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:39:17', '2023-11-10 17:39:17'),
(278, '654dd75d05aca', 'Dracaena Massangeana', 'dracaena-massangeana', 'Dracaena Massangeana', '<!-- wp:paragraph --><p>Dracaena Massangeana</p><!-- /wp:paragraph -->', 'KG', NULL, 1520.00, 1250.00, 18.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:40:21', '2023-11-10 17:40:21'),
(279, '654dd789eb916', 'Dracaena Mysore Ruby', 'dracaena-mysore-ruby', 'Dracaena Mysore Ruby', '<!-- wp:paragraph --><p>Dracaena Mysore Ruby</p><!-- /wp:paragraph -->', 'KG', NULL, 1200.00, 850.00, 29.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:41:05', '2023-11-10 17:41:05'),
(280, '654dd7efac959', 'Ficus Bonsai', 'ficus-bonsai', 'Ficus Bonsai', '<!-- wp:paragraph --><p>Ficus Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 520.00, 470.00, 10.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:42:47', '2023-11-10 17:42:47'),
(281, '654dd8296a335', 'Gerbera', 'gerbera', 'Gerbera', '<!-- wp:paragraph --><p>Gerbera</p><!-- /wp:paragraph -->', 'KG', NULL, 420.00, 300.00, 29.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:43:45', '2023-11-10 17:43:45'),
(282, '654dd85945c9e', 'Marble Prince', 'marble-prince', 'Marble Prince', '<!-- wp:paragraph --><p>Marble Prince</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 250.00, 17.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:44:33', '2023-11-10 17:44:33'),
(283, '654dd88b25ea8', 'Marble Queen', 'marble-queen', 'Marble Queen', '<!-- wp:paragraph --><p>Marble Queen</p><!-- /wp:paragraph -->', 'KG', NULL, 380.00, 300.00, 21.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:45:23', '2023-11-10 17:45:23'),
(284, '654dd8d9943b6', 'Marginata', 'marginata', 'Marginata', '<!-- wp:paragraph --><p>Marginata</p><!-- /wp:paragraph -->', 'KG', NULL, 420.00, 350.00, 17.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:46:41', '2023-11-10 17:46:41'),
(285, '654dd93597793', 'Money Plant (Golden)', 'money-plant-golden', 'Money Plant (Golden)', '<!-- wp:paragraph --><p>Money Plant (Golden)</p><!-- /wp:paragraph -->', 'KG', NULL, 850.00, 550.00, 35.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:48:13', '2023-11-10 17:48:13'),
(286, '654dd9be629be', 'Peace-Lily', 'peace-lily', 'Peace-Lily', '<!-- wp:paragraph --><p>Peace-Lily</p><!-- /wp:paragraph -->', 'KG', NULL, 850.00, 350.00, 59.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:50:30', '2023-11-10 17:50:30'),
(287, '654dda3156ad8', 'Philodendron Ceylon', 'philodendron-ceylon', 'Philodendron Ceylon', '<!-- wp:paragraph --><p>Philodendron Ceylon</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 250.00, 17.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:52:25', '2023-11-10 17:52:25'),
(288, '654dda66c132d', 'Philodendron Xanadu Green', 'philodendron-xanadu-green', 'Philodendron Xanadu Green', '<!-- wp:paragraph --><p>Philodendron Xanadu Green</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:53:18', '2023-11-10 17:53:18'),
(289, '654ddaa033d72', 'Rubber Tree', 'rubber-tree', 'Rubber Tree', '<!-- wp:paragraph --><p>Rubber Tree</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 17:54:16', '2023-11-10 17:54:16'),
(290, '654ddcd859e7c', 'Sansevieria Trifasiata', 'sansevieria-trifasiata', 'Sansevieria Trifasiata', '<!-- wp:paragraph --><p>Sansevieria Trifasiata</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 18:03:44', '2023-11-10 18:03:44'),
(291, '654ddd084afd5', 'Snake Plant', 'snake-plant', 'Snake Plant', '<!-- wp:paragraph --><p>Snake Plant</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 18:04:32', '2023-11-10 18:04:32'),
(292, '654ddd57dd513', 'Syngonium Cream Allusion', 'syngonium-cream-allusion', 'Syngonium Cream Allusion', '<!-- wp:paragraph --><p>Syngonium Cream Allusion</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 18:05:51', '2023-11-10 18:05:51'),
(293, '654ddd803b99f', 'Syngonium Green', 'syngonium-green', 'Syngonium Green', '<!-- wp:paragraph --><p>Syngonium Green</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 18:06:32', '2023-11-10 18:06:32'),
(294, '654ddda940f2e', 'Syngonium Podophyllum Mini', 'syngonium-podophyllum-mini', 'Syngonium Podophyllum Mini', '<!-- wp:paragraph --><p>Syngonium Podophyllum Mini</p><!-- /wp:paragraph -->', 'KG', NULL, 580.00, 580.00, 0.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 18:07:13', '2023-11-10 18:07:13'),
(295, '654dddd121d96', 'Syngonium Podophyllum Silver', 'syngonium-podophyllum-silver', 'Syngonium Podophyllum Silver', '<!-- wp:paragraph --><p>Syngonium Podophyllum Silver</p><!-- /wp:paragraph -->', 'KG', NULL, 550.00, 550.00, 0.00, 'Plant', 'Air Purifying Plants', 4, 0, '1', '2023-11-10 18:07:53', '2023-11-10 18:07:53'),
(296, '654de81c4365b', 'Aglaonema Butterfly Manis', 'aglaonema-butterfly-manis', 'Aglaonema Butterfly Manis', '<!-- wp:paragraph --><p>Aglaonema Butterfly Manis</p><!-- /wp:paragraph -->', 'KG', NULL, 380.00, 380.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 18:51:48', '2023-11-10 18:51:48'),
(297, '654de8b35fd64', 'Aglaonema Commutatum', 'aglaonema-commutatum', 'Aglaonema Commutatum', '<!-- wp:paragraph --><p>Aglaonema Commutatum</p><!-- /wp:paragraph -->', 'KG', NULL, 550.00, 550.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 18:54:19', '2023-11-10 18:54:19'),
(298, '654de921cb847', 'Aglaonema Jubliee Petite', 'aglaonema-jubliee-petite', 'Aglaonema Jubliee Petite', '<!-- wp:paragraph --><p>Aglaonema Jubliee Petite</p><!-- /wp:paragraph -->', 'KG', NULL, 580.00, 580.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 18:56:09', '2023-11-10 18:56:09');
INSERT INTO `plants` (`id`, `pid`, `title`, `slug`, `short_description`, `long_description`, `unit`, `weight`, `regular_price`, `selling_price`, `discount`, `category`, `sub_category`, `rating`, `stock`, `status`, `created_at`, `updated_at`) VALUES
(299, '654de9fe0f76f', 'Aglaonema Stripes', 'aglaonema-stripes', 'Aglaonema Stripes', '<!-- wp:paragraph --><p>Aglaonema Stripes</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 18:59:50', '2023-11-10 18:59:50'),
(300, '654dea597cea8', 'Alocasia Hybrid', 'alocasia-hybrid', 'Alocasia Hybrid', '<!-- wp:paragraph --><p>Alocasia Hybrid</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:01:21', '2023-11-10 19:01:21'),
(301, '654dea965cb50', 'Chamaedorea Elegans', 'chamaedorea-elegans', 'Chamaedorea Elegans', '<!-- wp:paragraph --><p>Chamaedorea Elegans</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:02:22', '2023-11-10 19:02:22'),
(302, '654deb2a03a3d', 'Chlorophytum', 'chlorophytum', 'Chlorophytum', '<!-- wp:paragraph --><p>Chlorophytum</p><!-- /wp:paragraph -->', 'KG', NULL, 420.00, 420.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:04:50', '2023-11-10 19:04:50'),
(303, '654debca1fc78', 'Dracaenal Limelight Dragon Tree', 'dracaenal-limelight-dragon-tree', 'Dracaenal Limelight Dragon Tree', '<!-- wp:paragraph --><p>Dracaenal Limelight Dragon Tree</p><!-- /wp:paragraph -->', 'KG', NULL, 580.00, 580.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:07:30', '2023-11-10 19:07:30'),
(304, '654dec019f514', 'Dracaena Mahatma', 'dracaena-mahatma', 'Dracaena Mahatma', '<!-- wp:paragraph --><p>Dracaena Mahatma</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:08:25', '2023-11-10 19:08:25'),
(305, '654dec58652bd', 'Dracaena Massangeana', 'dracaena-massangeana', 'Dracaena Massangeana', '<!-- wp:paragraph --><p>Dracaena Massangeana</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:09:52', '2023-11-10 19:09:52'),
(306, '654decc0777cb', 'Dracaena Surculosa Aurea', 'dracaena-surculosa-aurea', 'Dracaena Surculosa Aurea', '<!-- wp:paragraph --><p>Dracaena Surculosa Aurea</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:11:36', '2023-11-10 19:11:36'),
(307, '654decfcdcd83', 'Ficus Bonsai', 'ficus-bonsai', 'Ficus Bonsai', '<!-- wp:paragraph --><p>Ficus Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:12:36', '2023-11-10 19:12:36'),
(308, '654df5a94eaa8', 'Chlorophytum', 'chlorophytum', 'Chlorophytum', '<!-- wp:paragraph --><p>Chlorophytum</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:49:37', '2023-11-10 19:49:37'),
(309, '654df5f4ba911', 'Dracaena Limelight Dragon Tree', 'dracaena-limelight-dragon-tree', 'Dracaena Limelight Dragon Tree', '<!-- wp:paragraph --><p>Dracaena Limelight Dragon Tree</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:50:52', '2023-11-10 19:50:52'),
(310, '654df6372fd8b', 'Dracaena Mahatma', 'dracaena-mahatma', 'Dracaena Mahatma', '<!-- wp:paragraph --><p>Dracaena Mahatma</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:51:59', '2023-11-10 19:51:59'),
(311, '654df66f37b5f', 'Dracaena Massangeana', 'dracaena-massangeana', 'Dracaena Massangeana', '<!-- wp:paragraph --><p>Dracaena Massangeana</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:52:55', '2023-11-10 19:52:55'),
(312, '654df6b15a2b6', 'Dracaena Surculosa Aurea', 'dracaena-surculosa-aurea', 'Dracaena Surculosa Aurea', '<!-- wp:paragraph --><p>Dracaena Surculosa Aurea</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:54:01', '2023-11-10 19:54:01'),
(313, '654df711ce082', 'Ficus Bonsai', 'ficus-bonsai', 'Ficus Bonsai', '<!-- wp:paragraph --><p>Ficus Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:55:37', '2023-11-10 19:55:37'),
(314, '654df750b4105', 'Gerbera', 'gerbera', 'Gerbera', '<!-- wp:paragraph --><p>Gerbera</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:56:40', '2023-11-10 19:56:40'),
(315, '654df797de3b4', 'Marble Queen', 'marble-queen', 'Marble Queen', '<!-- wp:paragraph --><p>Marble Queen</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:57:51', '2023-11-10 19:57:51'),
(316, '654df7d37c0c8', 'Marginata', 'marginata', 'Marginata', '<!-- wp:paragraph --><p>Marginata</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 19:58:51', '2023-11-10 19:58:51'),
(317, '654df81b3c406', 'Peace-Lily', 'peace-lily', 'Peace-Lily', '<!-- wp:paragraph --><p>Peace-Lily</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 20:00:03', '2023-11-10 20:00:03'),
(318, '654df8654ca5f', 'Philodendron Red Congo', 'philodendron-red-congo', 'Philodendron Red Congo', '<!-- wp:paragraph --><p>Philodendron Red Congo</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 20:01:17', '2023-11-10 20:01:17'),
(319, '654df8c55193c', 'Philodendron Scandens Oxycardium', 'philodendron-scandens-oxycardium', 'Philodendron Scandens Oxycardium', '<!-- wp:paragraph --><p>Philodendron Scandens Oxycardium</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 20:02:53', '2023-11-10 20:02:53'),
(320, '654df8f5c2060', 'Rubber Tree', 'rubber-tree', 'Rubber Tree', '<!-- wp:paragraph --><p>Rubber Tree</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 20:03:41', '2023-11-10 20:03:41'),
(321, '654df93c198cb', 'Sansevieria Trifasciata', 'sansevieria-trifasciata', 'Sansevieria Trifasciata', '<!-- wp:paragraph --><p>Sansevieria Trifasciata</p><!-- /wp:paragraph -->', 'KG', NULL, 850.00, 350.00, 59.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 20:04:52', '2023-11-10 20:04:52'),
(322, '654df9780a4bf', 'Scindapsus (Green)', 'scindapsus-green', 'Scindapsus (Green)', '<!-- wp:paragraph --><p>Scindapsus (Green)</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 20:05:52', '2023-11-10 20:05:52'),
(323, '654df9964cdd2', 'Silver Queen', 'silver-queen', 'Silver Queen', '<!-- wp:paragraph --><p>Silver Queen</p><!-- /wp:paragraph -->', 'KG', NULL, 420.00, 420.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 20:06:22', '2023-11-10 20:06:22'),
(324, '654df9fc4bd3e', 'Syngonium Cream Allusion', 'syngonium-cream-allusion', 'Syngonium Cream Allusion', '<!-- wp:paragraph --><p>Syngonium Cream Allusion</p><!-- /wp:paragraph -->', 'KG', NULL, 550.00, 550.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 20:08:04', '2023-11-10 20:08:04'),
(325, '654dfbb4bbb78', 'Syngonium Pink', 'syngonium-pink', 'Syngonium Pink', '<!-- wp:paragraph --><p>Syngonium Pink</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Oxygen Plant', 4, 0, '1', '2023-11-10 20:15:24', '2023-11-10 20:16:55'),
(326, '654e01e81531d', 'Banyan Tree Bonsai', 'banyan-tree-bonsai', 'Banyan Tree Bonsai', '<!-- wp:paragraph --><p>Banyan Tree Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:41:52', '2023-11-10 20:41:52'),
(327, '654e026595c39', 'Boxwood Bonsai', 'boxwood-bonsai', 'Boxwood Bonsai', '<!-- wp:paragraph --><p>Boxwood Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:43:57', '2023-11-10 20:43:57'),
(328, '654e030e2f060', 'Buxus Bonsai', 'buxus-bonsai', 'Buxus Bonsai', '<!-- wp:paragraph --><p>Buxus Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:46:46', '2023-11-10 20:46:46'),
(329, '654e0366b032a', 'Chinese Pepper Bonsai', 'chinese-pepper-bonsai', 'Chinese Pepper Bonsai', '<!-- wp:paragraph --><p>Chinese Pepper Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:48:14', '2023-11-10 20:48:14'),
(330, '654e03acf2824', 'Ficus Bonsai', 'ficus-bonsai', 'Ficus Bonsai', '<!-- wp:paragraph --><p>Ficus Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:49:24', '2023-11-10 20:49:24'),
(331, '654e040529101', 'Ficus Iceland', 'ficus-iceland', 'Ficus Iceland', '<!-- wp:paragraph --><p>Ficus Iceland</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:50:53', '2023-11-10 20:50:53'),
(332, '654e04464a1b9', 'Ficus Macrocarpa Bonsai', 'ficus-macrocarpa-bonsai', 'Ficus Macrocarpa Bonsai', '<!-- wp:paragraph --><p>Ficus Macrocarpa Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:51:58', '2023-11-10 20:51:58'),
(333, '654e0486e2c33', 'Ficus Panda Bonsai', 'ficus-panda-bonsai', 'Ficus Panda Bonsai', '<!-- wp:paragraph --><p>Ficus Panda Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:53:02', '2023-11-10 20:53:02'),
(334, '654e04dc6632e', 'Golden Cypress Bonsai', 'golden-cypress-bonsai', 'Golden Cypress Bonsai', '<!-- wp:paragraph --><p>Golden Cypress Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:54:28', '2023-11-10 20:54:28'),
(335, '654e050a802c9', 'Jade Bonsai', 'jade-bonsai', 'Jade Bonsai', '<!-- wp:paragraph --><p>Jade Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:55:14', '2023-11-10 20:55:14'),
(336, '654e054cd42da', 'Silver Cypress Bonsai', 'silver-cypress-bonsai', 'Silver Cypress Bonsai', '<!-- wp:paragraph --><p>Silver Cypress Bonsai</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Bonasi', 4, 0, '1', '2023-11-10 20:56:20', '2023-11-10 20:56:20'),
(337, '654e07c0340cd', 'African Marigold', 'african-marigold', 'African Marigold', '<!-- wp:paragraph --><p>African Marigold</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:06:48', '2023-11-10 21:06:48'),
(338, '654e07ff6e37c', 'Agarwood', 'agarwood', 'Agarwood', '<!-- wp:paragraph --><p>Agarwood</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:07:51', '2023-11-10 21:07:51'),
(339, '654e085084e60', 'Arbian Jasmine', 'arbian-jasmine', 'Arbian Jasmine', '<!-- wp:paragraph --><p>Arbian Jasmine</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:09:12', '2023-11-10 21:09:12'),
(340, '654e0bb36b064', 'Aster', 'aster', 'Aster', '<!-- wp:paragraph --><p>Aster</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:23:39', '2023-11-10 21:23:39'),
(341, '654e0be1676cd', 'Auriculatum', 'auriculatum', 'Auriculatum', '<!-- wp:paragraph --><p>Auriculatum</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:24:25', '2023-11-10 21:24:25'),
(342, '654e0c0280152', 'Bitter Buttons', 'bitter-buttons', 'Bitter Buttons', '<!-- wp:paragraph --><p>Bitter Buttons</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:24:58', '2023-11-10 21:24:58'),
(343, '654e0c2904ac7', 'Charming  Champa', 'charming-champa', 'Charming  Champa', '<!-- wp:paragraph --><p>Charming Champa</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:25:37', '2023-11-10 21:25:37'),
(344, '654e0c7ecb994', 'Damascus Rose', 'damascus-rose', 'Damascus Rose', '<!-- wp:paragraph --><p>Damascus Rose</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:27:02', '2023-11-10 21:27:02'),
(345, '654e0cb165cbc', 'Downy Jasmine', 'downy-jasmine', 'Downy Jasmine', '<!-- wp:paragraph --><p>Downy Jasmine</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:27:53', '2023-11-10 21:27:53'),
(346, '654e0ce47ffc5', 'Epiphyllum Oxypetalum', 'epiphyllum-oxypetalum', 'Epiphyllum Oxypetalum', '<!-- wp:paragraph --><p>Epiphyllum Oxypetalum</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:28:44', '2023-11-10 21:28:44'),
(347, '654e0d027a262', 'European lily', 'european-lily', 'European lily', '<!-- wp:paragraph --><p>European lily</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:29:14', '2023-11-10 21:29:14'),
(348, '654e0d3653c9b', 'Gardenia', 'gardenia', 'Gardenia', '<!-- wp:paragraph --><p>Gardenia</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:30:06', '2023-11-10 21:30:06'),
(349, '654e0d6656f4a', 'Gilly flower', 'gilly-flower', 'Gilly flower', '<!-- wp:paragraph --><p>Gilly flower</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:30:54', '2023-11-10 21:30:54'),
(350, '654e0d838456b', 'Hari Champa', 'hari-champa', 'Hari Champa', '<!-- wp:paragraph --><p>Hari Champa</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:31:23', '2023-11-10 21:31:23'),
(351, '654e0dac455f9', 'Jasminum', 'jasminum', 'Jasminum', '<!-- wp:paragraph --><p>Jasminum</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:32:04', '2023-11-10 21:32:04'),
(352, '654e0dd0df709', 'Kapoor Tulsi', 'kapoor-tulsi', 'Kapoor Tulsi', '<!-- wp:paragraph --><p>Kapoor Tulsi</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:32:40', '2023-11-10 21:32:40'),
(353, '654e0dec78601', 'Khus', 'khus', 'Khus', '<!-- wp:paragraph --><p>Khus</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:33:08', '2023-11-10 21:33:08'),
(354, '654e0e0e0fe9d', 'Krishna Tulsi Plant', 'krishna-tulsi-plant', 'Krishna Tulsi Plant', '<!-- wp:paragraph --><p>Krishna Tulsi Plant</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:33:42', '2023-11-10 21:33:42'),
(355, '654e0e3fb0db0', 'Magnolia Liliifera', 'magnolia-liliifera', 'Magnolia Liliifera', '<!-- wp:paragraph --><p>Magnolia Liliifera</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:34:31', '2023-11-10 21:34:31'),
(356, '654e0e678d8e6', 'Mexcian Marigold', 'mexcian-marigold', 'Mexcian Marigold', '<!-- wp:paragraph --><p>Mexcian Marigold</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:35:11', '2023-11-10 21:35:11'),
(357, '654e0e843e926', 'Michelia', 'michelia', 'Michelia', '<!-- wp:paragraph --><p>Michelia</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:35:40', '2023-11-10 21:35:40'),
(358, '654e0ea60e060', 'Murraya Paniculate', 'murraya-paniculate', 'Murraya Paniculate', '<!-- wp:paragraph --><p>Murraya Paniculate</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:36:14', '2023-11-10 21:36:14'),
(359, '654e0eccf161e', 'Nagkeshar', 'nagkeshar', 'Nagkeshar', '<!-- wp:paragraph --><p>Nagkeshar</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:36:52', '2023-11-10 21:36:52'),
(360, '654e0efd42b92', 'Night Blooming Jasmine', 'night-blooming-jasmine', 'Night Blooming Jasmine', '<!-- wp:paragraph --><p>Night Blooming Jasmine</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:37:41', '2023-11-10 21:37:41'),
(361, '654e0f3ee3ab6', 'Oregeano', 'oregeano', 'Oregeano', '<!-- wp:paragraph --><p>Oregeano</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:38:46', '2023-11-10 21:38:46'),
(362, '654e0ff7da868', 'Parijat Tree', 'parijat-tree', 'Parijat Tree', '<!-- wp:paragraph --><p>Parijat Tree</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:41:51', '2023-11-10 21:41:51'),
(363, '654e1054e91ea', 'Pink Ball Tree', 'pink-ball-tree', 'Pink Ball Tree', '<!-- wp:paragraph --><p>Pink Ball Tree</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:43:24', '2023-11-10 21:43:24'),
(364, '654e10b20d060', 'Plumeria, champa (white)- plant.', 'plumeria-champa-white-plant', 'Plumeria, champa (white)- plant.', '<!-- wp:paragraph --><p>Plumeria, champa (white)- plant.</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:44:58', '2023-11-10 21:44:58'),
(365, '654e10cf9721f', 'Rajnigandha', 'rajnigandha', 'Rajnigandha', '<!-- wp:paragraph --><p>Rajnigandha</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:45:27', '2023-11-10 21:45:27'),
(366, '654e11147c761', 'Randeletia', 'randeletia', 'Randeletia', '<!-- wp:paragraph --><p>Randeletia</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:46:36', '2023-11-10 21:46:36'),
(367, '654e113e7b94a', 'Rosemary', 'rosemary', 'Rosemary', '<!-- wp:paragraph --><p>Rosemary</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:47:18', '2023-11-10 21:47:18'),
(368, '654e115c1870d', 'Sabja Plant', 'sabja-plant', 'Sabja Plant', '<!-- wp:paragraph --><p>Sabja Plant</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:47:48', '2023-11-10 21:47:48'),
(369, '654e117995902', 'Scented rose', 'scented-rose', 'Scented rose', '<!-- wp:paragraph --><p>Scented rose</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:48:17', '2023-11-10 21:48:17'),
(370, '654e11989dc85', 'Shevanti', 'shevanti', 'Shevanti', '<!-- wp:paragraph --><p>Shevanti</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:48:48', '2023-11-10 21:48:48'),
(372, '654e122ed4a1a', 'Tulbaghia Fragrans', 'tulbaghia-fragrans', 'Tulbaghia Fragrans', '<!-- wp:paragraph --><p>Tulbaghia Fragrans</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:51:18', '2023-11-10 21:51:18'),
(373, '654e127987b18', 'White Ginger Lily', 'white-ginger-lily', 'White Ginger Lily', '<!-- wp:paragraph --><p>White Ginger Lily</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:52:33', '2023-11-10 21:52:33'),
(375, '654e139204cf9', 'White Sandalwood Tree', 'white-sandalwood-tree', 'White Sandalwood Tree', '<!-- wp:paragraph --><p>White Sandalwood Tree</p><!-- /wp:paragraph -->', 'KG', NULL, 300.00, 300.00, 0.00, 'Plant', 'Aromatic Plants', 4, 0, '1', '2023-11-10 21:57:14', '2023-11-10 21:57:14'),
(376, '6551c9e0cea95', 'Albizia Julibrissing', 'albizia-julibrissing', 'Albizia Julibrissing', '<!-- wp:paragraph --><p>Albizia Julibrissing</p><!-- /wp:paragraph -->', 'KG', NULL, 1000.00, 900.00, 10.00, 'Plant', 'Avenue Tree', 4, 0, '1', '2023-11-13 07:01:52', '2023-11-13 07:01:52'),
(377, '6551d4a66c669', 'Alstonia Scholaris', 'alstonia-scholaris', 'Alstonia Scholaris', '<!-- wp:paragraph --><p>Alstonia Scholaris</p><!-- /wp:paragraph -->', 'KG', NULL, 1000.00, 900.00, 10.00, 'Plant', 'Avenue Tree', 4, 0, '1', '2023-11-13 07:47:50', '2023-11-13 07:47:50'),
(378, '6551d66eb4592', 'Ashoka Tree', 'ashoka-tree', 'Ashoka Tree', '<!-- wp:paragraph --><p>Ashoka Tree</p><!-- /wp:paragraph -->', 'KG', NULL, 1000.00, 900.00, 10.00, 'Plant', 'Avenue Tree', 4, 0, '1', '2023-11-13 07:55:26', '2023-11-13 07:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `plant_imgs`
--

CREATE TABLE `plant_imgs` (
  `id` bigint(20) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `slno` tinyint(4) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plant_imgs`
--

INSERT INTO `plant_imgs` (`id`, `pid`, `slno`, `type`, `image`, `created_at`, `updated_at`) VALUES
(1, '64e451916feb6', 1, 'md', 'public/img/plants/64e451917263a.webp', '2023-08-22 15:41:29', '2023-08-22 15:41:29'),
(2, '64e451916feb6', 1, 'lg', 'public/img/plants/64e451919b2f4.webp', '2023-08-22 15:41:29', '2023-08-22 15:41:29'),
(3, '64e4550507372', 1, 'md', 'public/img/plants/64e455050a22d.webp', '2023-08-22 15:56:13', '2023-08-22 15:56:13'),
(4, '64e4550507372', 1, 'lg', 'public/img/plants/64e455053704c.webp', '2023-08-22 15:56:13', '2023-08-22 15:56:13'),
(5, '64e4557d2e3be', 1, 'md', 'public/img/plants/64e4557d317ab.webp', '2023-08-22 15:58:13', '2023-08-22 15:58:13'),
(6, '64e4557d2e3be', 1, 'lg', 'public/img/plants/64e4557d6226b.webp', '2023-08-22 15:58:13', '2023-08-22 15:58:13'),
(7, '64e4559ed3037', 1, 'md', 'public/img/plants/64e4559ed5219.webp', '2023-08-22 15:58:47', '2023-08-22 15:58:47'),
(8, '64e4559ed3037', 1, 'lg', 'public/img/plants/64e4559f0951e.webp', '2023-08-22 15:58:47', '2023-08-22 15:58:47'),
(9, '64e455c359eef', 1, 'md', 'public/img/plants/64e455c35d3a8.webp', '2023-08-22 15:59:23', '2023-08-22 15:59:23'),
(10, '64e455c359eef', 1, 'lg', 'public/img/plants/64e455c3885ac.webp', '2023-08-22 15:59:23', '2023-08-22 15:59:23'),
(11, '64e455e8611a2', 1, 'md', 'public/img/plants/64e455e8637de.webp', '2023-08-22 16:00:00', '2023-08-22 16:00:00'),
(12, '64e455e8611a2', 1, 'lg', 'public/img/plants/64e455e89230f.webp', '2023-08-22 16:00:00', '2023-08-22 16:00:00'),
(13, '64e45618890ae', 1, 'md', 'public/img/plants/64e456188b176.webp', '2023-08-22 16:00:48', '2023-08-22 16:00:48'),
(14, '64e45618890ae', 1, 'lg', 'public/img/plants/64e45618b384a.webp', '2023-08-22 16:00:48', '2023-08-22 16:00:48'),
(15, '64e4563bce870', 1, 'md', 'public/img/plants/64e4563bd0b52.webp', '2023-08-22 16:01:24', '2023-08-22 16:01:24'),
(16, '64e4563bce870', 1, 'lg', 'public/img/plants/64e4563c01683.webp', '2023-08-22 16:01:24', '2023-08-22 16:01:24'),
(17, '64e4565bc2ba8', 1, 'md', 'public/img/plants/64e4565bc4ec3.webp', '2023-08-22 16:01:55', '2023-08-22 16:01:55'),
(18, '64e4565bc2ba8', 1, 'lg', 'public/img/plants/64e4565be5604.webp', '2023-08-22 16:01:56', '2023-08-22 16:01:56'),
(19, '64e4568e62a88', 1, 'md', 'public/img/plants/64e4568e64de3.webp', '2023-08-22 16:02:46', '2023-08-22 16:02:46'),
(20, '64e4568e62a88', 1, 'lg', 'public/img/plants/64e4568e90d2f.webp', '2023-08-22 16:02:46', '2023-08-22 16:02:46'),
(21, '64e456cfca051', 1, 'md', 'public/img/plants/64e456cfcc3db.webp', '2023-08-22 16:03:52', '2023-08-22 16:03:52'),
(22, '64e456cfca051', 1, 'lg', 'public/img/plants/64e456d004ca9.webp', '2023-08-22 16:03:52', '2023-08-22 16:03:52'),
(23, '64e45711dcccb', 1, 'md', 'public/img/plants/64e45711dedf0.webp', '2023-08-22 16:04:58', '2023-08-22 16:04:58'),
(24, '64e45711dcccb', 1, 'lg', 'public/img/plants/64e45712167e7.webp', '2023-08-22 16:04:58', '2023-08-22 16:04:58'),
(25, '64e4574b7376b', 1, 'md', 'public/img/plants/64e4574b7593c.webp', '2023-08-22 16:05:55', '2023-08-22 16:05:55'),
(26, '64e4574b7376b', 1, 'lg', 'public/img/plants/64e4574b9c380.webp', '2023-08-22 16:05:55', '2023-08-22 16:05:55'),
(27, '64e45775cbece', 1, 'md', 'public/img/plants/64e45775ce3ee.webp', '2023-08-22 16:06:38', '2023-08-22 16:06:38'),
(28, '64e45775cbece', 1, 'lg', 'public/img/plants/64e4577603e73.webp', '2023-08-22 16:06:38', '2023-08-22 16:06:38'),
(29, '64e4579ec1a4d', 1, 'md', 'public/img/plants/64e4579ec3cb3.webp', '2023-08-22 16:07:18', '2023-08-22 16:07:18'),
(30, '64e4579ec1a4d', 1, 'lg', 'public/img/plants/64e4579eec8e9.webp', '2023-08-22 16:07:19', '2023-08-22 16:07:19'),
(31, '64e457a2314b6', 1, 'md', 'public/img/plants/64e457a233823.webp', '2023-08-22 16:07:22', '2023-08-22 16:07:22'),
(32, '64e457a2314b6', 1, 'lg', 'public/img/plants/64e457a256e41.webp', '2023-08-22 16:07:22', '2023-08-22 16:07:22'),
(33, '64e457d056003', 1, 'md', 'public/img/plants/64e457d0587dc.webp', '2023-08-22 16:08:08', '2023-08-22 16:08:08'),
(34, '64e457d056003', 1, 'lg', 'public/img/plants/64e457d0842fd.webp', '2023-08-22 16:08:08', '2023-08-22 16:08:08'),
(35, '64e457f9ec35d', 1, 'md', 'public/img/plants/64e457f9ee67b.webp', '2023-08-22 16:08:50', '2023-08-22 16:08:50'),
(36, '64e457f9ec35d', 1, 'lg', 'public/img/plants/64e457fa23a12.webp', '2023-08-22 16:08:50', '2023-08-22 16:08:50'),
(37, '64e45811409c6', 1, 'md', 'public/img/plants/64e4581142eea.webp', '2023-08-22 16:09:13', '2023-08-22 16:09:13'),
(38, '64e45811409c6', 1, 'lg', 'public/img/plants/64e458116b512.webp', '2023-08-22 16:09:13', '2023-08-22 16:09:13'),
(39, '64e458218f2f4', 1, 'md', 'public/img/plants/64e458219215e.webp', '2023-08-22 16:09:29', '2023-08-22 16:09:29'),
(40, '64e458218f2f4', 1, 'lg', 'public/img/plants/64e45821b6d81.webp', '2023-08-22 16:09:29', '2023-08-22 16:09:29'),
(41, '64e4584e3a894', 1, 'md', 'public/img/plants/64e4584e3cdf2.webp', '2023-08-22 16:10:14', '2023-08-22 16:10:14'),
(42, '64e4584e3a894', 1, 'lg', 'public/img/plants/64e4584e64baf.webp', '2023-08-22 16:10:14', '2023-08-22 16:10:14'),
(43, '64e4588745a4d', 1, 'md', 'public/img/plants/64e45887483b0.webp', '2023-08-22 16:11:11', '2023-08-22 16:11:11'),
(44, '64e4588745a4d', 1, 'lg', 'public/img/plants/64e4588771f12.webp', '2023-08-22 16:11:11', '2023-08-22 16:11:11'),
(45, '64e458f5decc8', 1, 'md', 'public/img/plants/64e458f5e201f.webp', '2023-08-22 16:13:02', '2023-08-22 16:13:02'),
(46, '64e458f5decc8', 1, 'lg', 'public/img/plants/64e458f6213a1.webp', '2023-08-22 16:13:02', '2023-08-22 16:13:02'),
(47, '64e4599659e42', 1, 'md', 'public/img/plants/64e459965ca1e.webp', '2023-08-22 16:15:42', '2023-08-22 16:15:42'),
(48, '64e4599659e42', 1, 'lg', 'public/img/plants/64e459968f0ef.webp', '2023-08-22 16:15:42', '2023-08-22 16:15:42'),
(49, '64e459cf34029', 1, 'md', 'public/img/plants/64e459cf3784e.webp', '2023-08-22 16:16:39', '2023-08-22 16:16:39'),
(50, '64e459cf34029', 1, 'lg', 'public/img/plants/64e459cf61b74.webp', '2023-08-22 16:16:39', '2023-08-22 16:16:39'),
(51, '64e459f3c9bac', 1, 'md', 'public/img/plants/64e459f3cbe47.webp', '2023-08-22 16:17:15', '2023-08-22 16:17:15'),
(52, '64e459f3c9bac', 1, 'lg', 'public/img/plants/64e459f3f2923.webp', '2023-08-22 16:17:16', '2023-08-22 16:17:16'),
(53, '64e459fbbe3b6', 1, 'md', 'public/img/plants/64e459fbc0504.webp', '2023-08-22 16:17:23', '2023-08-22 16:17:23'),
(54, '64e459fbbe3b6', 1, 'lg', 'public/img/plants/64e459fbe422e.webp', '2023-08-22 16:17:24', '2023-08-22 16:17:24'),
(55, '64e45a1e6bd25', 1, 'md', 'public/img/plants/64e45a1e6e8cb.webp', '2023-08-22 16:17:58', '2023-08-22 16:17:58'),
(56, '64e45a1e6bd25', 1, 'lg', 'public/img/plants/64e45a1e9abb5.webp', '2023-08-22 16:17:58', '2023-08-22 16:17:58'),
(57, '64e45a4fd0ecb', 1, 'md', 'public/img/plants/64e45a4fd4280.webp', '2023-08-22 16:18:48', '2023-08-22 16:18:48'),
(58, '64e45a4fd0ecb', 1, 'lg', 'public/img/plants/64e45a500cc36.webp', '2023-08-22 16:18:48', '2023-08-22 16:18:48'),
(59, '64e45a8987f04', 1, 'md', 'public/img/plants/64e45a898a948.webp', '2023-08-22 16:19:45', '2023-08-22 16:19:45'),
(60, '64e45a8987f04', 1, 'lg', 'public/img/plants/64e45a89b45c6.webp', '2023-08-22 16:19:45', '2023-08-22 16:19:45'),
(61, '64e45a9e82143', 1, 'md', 'public/img/plants/64e45a9e847c7.webp', '2023-08-22 16:20:06', '2023-08-22 16:20:06'),
(62, '64e45a9e82143', 1, 'lg', 'public/img/plants/64e45a9eae646.webp', '2023-08-22 16:20:06', '2023-08-22 16:20:06'),
(63, '64e45acc29bcc', 1, 'md', 'public/img/plants/64e45acc2bd16.webp', '2023-08-22 16:20:52', '2023-08-22 16:20:52'),
(64, '64e45acc29bcc', 1, 'lg', 'public/img/plants/64e45acc55ac0.webp', '2023-08-22 16:20:52', '2023-08-22 16:20:52'),
(65, '64e45afe5baa8', 1, 'md', 'public/img/plants/64e45afe5ea79.webp', '2023-08-22 16:21:42', '2023-08-22 16:21:42'),
(66, '64e45afe5baa8', 1, 'lg', 'public/img/plants/64e45afe87f74.webp', '2023-08-22 16:21:42', '2023-08-22 16:21:42'),
(67, '64e45b4944906', 1, 'md', 'public/img/plants/64e45b4948a6b.webp', '2023-08-22 16:22:57', '2023-08-22 16:22:57'),
(68, '64e45b4944906', 1, 'lg', 'public/img/plants/64e45b4973800.webp', '2023-08-22 16:22:57', '2023-08-22 16:22:57'),
(69, '64e45b5453776', 1, 'md', 'public/img/plants/64e45b545c921.webp', '2023-08-22 16:23:08', '2023-08-22 16:23:08'),
(70, '64e45b5453776', 1, 'lg', 'public/img/plants/64e45b54830e2.webp', '2023-08-22 16:23:08', '2023-08-22 16:23:08'),
(71, '64e45b72a40f0', 1, 'md', 'public/img/plants/64e45b72a6105.webp', '2023-08-22 16:23:38', '2023-08-22 16:23:38'),
(72, '64e45b72a40f0', 1, 'lg', 'public/img/plants/64e45b72d1b15.webp', '2023-08-22 16:23:39', '2023-08-22 16:23:39'),
(73, '64e45bcb1dfe2', 1, 'md', 'public/img/plants/64e45bcb207ac.webp', '2023-08-22 16:25:07', '2023-08-22 16:25:07'),
(74, '64e45bcb1dfe2', 1, 'lg', 'public/img/plants/64e45bcb475f2.webp', '2023-08-22 16:25:07', '2023-08-22 16:25:07'),
(75, '64e45bf3ea9a7', 1, 'md', 'public/img/plants/64e45bf3ed288.webp', '2023-08-22 16:25:48', '2023-08-22 16:25:48'),
(76, '64e45bf3ea9a7', 1, 'lg', 'public/img/plants/64e45bf42554d.webp', '2023-08-22 16:25:48', '2023-08-22 16:25:48'),
(77, '64e45bfd5073b', 1, 'md', 'public/img/plants/64e45bfd526c6.webp', '2023-08-22 16:25:57', '2023-08-22 16:25:57'),
(78, '64e45bfd5073b', 1, 'lg', 'public/img/plants/64e45bfd78d88.webp', '2023-08-22 16:25:57', '2023-08-22 16:25:57'),
(79, '64e45c1b3d480', 1, 'md', 'public/img/plants/64e45c1b3f62e.webp', '2023-08-22 16:26:27', '2023-08-22 16:26:27'),
(80, '64e45c1b3d480', 1, 'lg', 'public/img/plants/64e45c1b6614b.webp', '2023-08-22 16:26:27', '2023-08-22 16:26:27'),
(81, '64e45c3fe2656', 1, 'md', 'public/img/plants/64e45c3fe69d7.webp', '2023-08-22 16:27:04', '2023-08-22 16:27:04'),
(82, '64e45c3fe2656', 1, 'lg', 'public/img/plants/64e45c4019f5b.webp', '2023-08-22 16:27:04', '2023-08-22 16:27:04'),
(83, '64e45c77e1fc2', 1, 'md', 'public/img/plants/64e45c77e415b.webp', '2023-08-22 16:28:00', '2023-08-22 16:28:00'),
(84, '64e45c77e1fc2', 1, 'lg', 'public/img/plants/64e45c781641d.webp', '2023-08-22 16:28:00', '2023-08-22 16:28:00'),
(85, '64e45c913d837', 1, 'md', 'public/img/plants/64e45c914054a.webp', '2023-08-22 16:28:25', '2023-08-22 16:28:25'),
(86, '64e45c913d837', 1, 'lg', 'public/img/plants/64e45c9168f23.webp', '2023-08-22 16:28:25', '2023-08-22 16:28:25'),
(87, '64e45cb21e191', 1, 'md', 'public/img/plants/64e45cb21ffcb.webp', '2023-08-22 16:28:58', '2023-08-22 16:28:58'),
(88, '64e45cb21e191', 1, 'lg', 'public/img/plants/64e45cb24a63e.webp', '2023-08-22 16:28:58', '2023-08-22 16:28:58'),
(89, '64e45cdb1c0d1', 1, 'md', 'public/img/plants/64e45cdb1e8d1.webp', '2023-08-22 16:29:39', '2023-08-22 16:29:39'),
(90, '64e45cdb1c0d1', 1, 'lg', 'public/img/plants/64e45cdb4785b.webp', '2023-08-22 16:29:39', '2023-08-22 16:29:39'),
(91, '64e45d343bfaf', 1, 'md', 'public/img/plants/64e45d343eb99.webp', '2023-08-22 16:31:08', '2023-08-22 16:31:08'),
(92, '64e45d343bfaf', 1, 'lg', 'public/img/plants/64e45d3465664.webp', '2023-08-22 16:31:08', '2023-08-22 16:31:08'),
(93, '64e45d41edfbc', 1, 'md', 'public/img/plants/64e45d41f0973.webp', '2023-08-22 16:31:22', '2023-08-22 16:31:22'),
(94, '64e45d41edfbc', 1, 'lg', 'public/img/plants/64e45d4223f6f.webp', '2023-08-22 16:31:22', '2023-08-22 16:31:22'),
(95, '64e45d5c6c857', 1, 'md', 'public/img/plants/64e45d5c6f085.webp', '2023-08-22 16:31:48', '2023-08-22 16:31:48'),
(96, '64e45d5c6c857', 1, 'lg', 'public/img/plants/64e45d5c98c68.webp', '2023-08-22 16:31:48', '2023-08-22 16:31:48'),
(97, '64e45d878f632', 1, 'md', 'public/img/plants/64e45d8791c28.webp', '2023-08-22 16:32:31', '2023-08-22 16:32:31'),
(98, '64e45d878f632', 1, 'lg', 'public/img/plants/64e45d87b85bd.webp', '2023-08-22 16:32:32', '2023-08-22 16:32:32'),
(99, '64e45d9624335', 1, 'md', 'public/img/plants/64e45d96263fe.webp', '2023-08-22 16:32:46', '2023-08-22 16:32:46'),
(100, '64e45d9624335', 1, 'lg', 'public/img/plants/64e45d964cebf.webp', '2023-08-22 16:32:46', '2023-08-22 16:32:46'),
(101, '64e45db9a9895', 1, 'md', 'public/img/plants/64e45db9ab92f.webp', '2023-08-22 16:33:21', '2023-08-22 16:33:21'),
(102, '64e45db9a9895', 1, 'lg', 'public/img/plants/64e45db9d43f3.webp', '2023-08-22 16:33:22', '2023-08-22 16:33:22'),
(103, '64e45df666318', 1, 'md', 'public/img/plants/64e45df6686e8.webp', '2023-08-22 16:34:22', '2023-08-22 16:34:22'),
(104, '64e45df666318', 1, 'lg', 'public/img/plants/64e45df68fedf.webp', '2023-08-22 16:34:22', '2023-08-22 16:34:22'),
(105, '64e45e1bb562c', 1, 'md', 'public/img/plants/64e45e1bb7b97.webp', '2023-08-22 16:34:59', '2023-08-22 16:34:59'),
(106, '64e45e1bb562c', 1, 'lg', 'public/img/plants/64e45e1be6e6c.webp', '2023-08-22 16:35:00', '2023-08-22 16:35:00'),
(107, '64e45e3609d57', 1, 'md', 'public/img/plants/64e45e360c5b7.webp', '2023-08-22 16:35:26', '2023-08-22 16:35:26'),
(108, '64e45e3609d57', 1, 'lg', 'public/img/plants/64e45e3635861.webp', '2023-08-22 16:35:26', '2023-08-22 16:35:26'),
(109, '64e45e5866cdc', 1, 'md', 'public/img/plants/64e45e58698c7.webp', '2023-08-22 16:36:00', '2023-08-22 16:36:00'),
(110, '64e45e5866cdc', 1, 'lg', 'public/img/plants/64e45e589410b.webp', '2023-08-22 16:36:00', '2023-08-22 16:36:00'),
(111, '64e45e854bce0', 1, 'md', 'public/img/plants/64e45e854e059.webp', '2023-08-22 16:36:45', '2023-08-22 16:36:45'),
(112, '64e45e854bce0', 1, 'lg', 'public/img/plants/64e45e8577376.webp', '2023-08-22 16:36:45', '2023-08-22 16:36:45'),
(113, '64e45ea2ca8c1', 1, 'md', 'public/img/plants/64e45ea2ccfe7.webp', '2023-08-22 16:37:15', '2023-08-22 16:37:15'),
(114, '64e45ea2ca8c1', 1, 'lg', 'public/img/plants/64e45ea30281b.webp', '2023-08-22 16:37:15', '2023-08-22 16:37:15'),
(115, '64e45ec04fc52', 1, 'md', 'public/img/plants/64e45ec052c2e.webp', '2023-08-22 16:37:44', '2023-08-22 16:37:44'),
(116, '64e45ec04fc52', 1, 'lg', 'public/img/plants/64e45ec08006a.webp', '2023-08-22 16:37:44', '2023-08-22 16:37:44'),
(117, '64e45ee28bf66', 1, 'md', 'public/img/plants/64e45ee28eacf.webp', '2023-08-22 16:38:18', '2023-08-22 16:38:18'),
(118, '64e45ee28bf66', 1, 'lg', 'public/img/plants/64e45ee2bbb46.webp', '2023-08-22 16:38:19', '2023-08-22 16:38:19'),
(119, '64e45ef34837d', 1, 'md', 'public/img/plants/64e45ef34a814.webp', '2023-08-22 16:38:35', '2023-08-22 16:38:35'),
(120, '64e45ef34837d', 1, 'lg', 'public/img/plants/64e45ef372e94.webp', '2023-08-22 16:38:35', '2023-08-22 16:38:35'),
(121, '64e45f5530448', 1, 'md', 'public/img/plants/64e45f5533248.webp', '2023-08-22 16:40:13', '2023-08-22 16:40:13'),
(122, '64e45f5530448', 1, 'lg', 'public/img/plants/64e45f555c224.webp', '2023-08-22 16:40:13', '2023-08-22 16:40:13'),
(123, '64e45fe60c089', 1, 'md', 'public/img/plants/64e45fe60ef36.webp', '2023-08-22 16:42:38', '2023-08-22 16:42:38'),
(124, '64e45fe60c089', 1, 'lg', 'public/img/plants/64e45fe63b999.webp', '2023-08-22 16:42:38', '2023-08-22 16:42:38'),
(125, '64e45feac2bd9', 1, 'md', 'public/img/plants/64e45feac49e9.webp', '2023-08-22 16:42:42', '2023-08-22 16:42:42'),
(126, '64e45feac2bd9', 1, 'lg', 'public/img/plants/64e45feaeaed9.webp', '2023-08-22 16:42:43', '2023-08-22 16:42:43'),
(127, '64e4600e99701', 1, 'md', 'public/img/plants/64e4600e9bed2.webp', '2023-08-22 16:43:18', '2023-08-22 16:43:18'),
(128, '64e4600e99701', 1, 'lg', 'public/img/plants/64e4600ec8cda.webp', '2023-08-22 16:43:19', '2023-08-22 16:43:19'),
(129, '64e4603435e8a', 1, 'md', 'public/img/plants/64e4603438443.webp', '2023-08-22 16:43:56', '2023-08-22 16:43:56'),
(130, '64e4603435e8a', 1, 'lg', 'public/img/plants/64e4603462047.webp', '2023-08-22 16:43:56', '2023-08-22 16:43:56'),
(131, '64e4604e59302', 1, 'md', 'public/img/plants/64e4604e5bff7.webp', '2023-08-22 16:44:22', '2023-08-22 16:44:22'),
(132, '64e4604e59302', 1, 'lg', 'public/img/plants/64e4604e89dc4.webp', '2023-08-22 16:44:22', '2023-08-22 16:44:22'),
(133, '64e46082cee5e', 1, 'md', 'public/img/plants/64e46082d13d4.webp', '2023-08-22 16:45:14', '2023-08-22 16:45:14'),
(134, '64e46082cee5e', 1, 'lg', 'public/img/plants/64e4608300540.webp', '2023-08-22 16:45:15', '2023-08-22 16:45:15'),
(135, '64e460a54c529', 1, 'md', 'public/img/plants/64e460a54f1d5.webp', '2023-08-22 16:45:49', '2023-08-22 16:45:49'),
(136, '64e460a54c529', 1, 'lg', 'public/img/plants/64e460a578912.webp', '2023-08-22 16:45:49', '2023-08-22 16:45:49'),
(137, '64e460b0c6fdd', 1, 'md', 'public/img/plants/64e460b0c9034.webp', '2023-08-22 16:46:00', '2023-08-22 16:46:00'),
(138, '64e460b0c6fdd', 1, 'lg', 'public/img/plants/64e460b0f06d3.webp', '2023-08-22 16:46:01', '2023-08-22 16:46:01'),
(139, '64e461153feab', 1, 'md', 'public/img/plants/64e461154231f.webp', '2023-08-22 16:47:41', '2023-08-22 16:47:41'),
(140, '64e461153feab', 1, 'lg', 'public/img/plants/64e461156c3b6.webp', '2023-08-22 16:47:41', '2023-08-22 16:47:41'),
(141, '64e4617bd2cff', 1, 'md', 'public/img/plants/64e4617bd51dd.webp', '2023-08-22 16:49:24', '2023-08-22 16:49:24'),
(142, '64e4617bd2cff', 1, 'lg', 'public/img/plants/64e4617c091f6.webp', '2023-08-22 16:49:24', '2023-08-22 16:49:24'),
(143, '64e461e9d49f9', 1, 'md', 'public/img/plants/64e461e9d6c0a.webp', '2023-08-22 16:51:14', '2023-08-22 16:51:14'),
(144, '64e461e9d49f9', 1, 'lg', 'public/img/plants/64e461ea0b2c0.webp', '2023-08-22 16:51:14', '2023-08-22 16:51:14'),
(145, '64e4624207fb4', 1, 'md', 'public/img/plants/64e462420a575.webp', '2023-08-22 16:52:42', '2023-08-22 16:52:42'),
(146, '64e4624207fb4', 1, 'lg', 'public/img/plants/64e4624236951.webp', '2023-08-22 16:52:42', '2023-08-22 16:52:42'),
(147, '64e4629b5636e', 1, 'md', 'public/img/plants/64e4629b591b6.webp', '2023-08-22 16:54:11', '2023-08-22 16:54:11'),
(148, '64e4629b5636e', 1, 'lg', 'public/img/plants/64e4629b81754.webp', '2023-08-22 16:54:11', '2023-08-22 16:54:11'),
(149, '64e462fc7e799', 1, 'md', 'public/img/plants/64e462fc816d2.webp', '2023-08-22 16:55:48', '2023-08-22 16:55:48'),
(150, '64e462fc7e799', 1, 'lg', 'public/img/plants/64e462fcac401.webp', '2023-08-22 16:55:48', '2023-08-22 16:55:48'),
(151, '64e4637a59494', 1, 'md', 'public/img/plants/64e4637a5bdc1.webp', '2023-08-22 16:57:54', '2023-08-22 16:57:54'),
(152, '64e4637a59494', 1, 'lg', 'public/img/plants/64e4637a85bd8.webp', '2023-08-22 16:57:54', '2023-08-22 16:57:54'),
(153, '64e463e36a603', 1, 'md', 'public/img/plants/64e463e36cf19.webp', '2023-08-22 16:59:39', '2023-08-22 16:59:39'),
(154, '64e463e36a603', 1, 'lg', 'public/img/plants/64e463e397598.webp', '2023-08-22 16:59:39', '2023-08-22 16:59:39'),
(155, '64e463fb1e7d6', 1, 'md', 'public/img/plants/64e463fb2125e.webp', '2023-08-22 17:00:03', '2023-08-22 17:00:03'),
(156, '64e463fb1e7d6', 1, 'lg', 'public/img/plants/64e463fb4c11a.webp', '2023-08-22 17:00:03', '2023-08-22 17:00:03'),
(157, '64e4645438d67', 1, 'md', 'public/img/plants/64e464543bb47.webp', '2023-08-22 17:01:32', '2023-08-22 17:01:32'),
(158, '64e4645438d67', 1, 'lg', 'public/img/plants/64e46454687e9.webp', '2023-08-22 17:01:32', '2023-08-22 17:01:32'),
(159, '64e46469b427d', 1, 'md', 'public/img/plants/64e46469b677e.webp', '2023-08-22 17:01:53', '2023-08-22 17:01:53'),
(160, '64e46469b427d', 1, 'lg', 'public/img/plants/64e46469de3c7.webp', '2023-08-22 17:01:54', '2023-08-22 17:01:54'),
(161, '64e464a85e274', 1, 'md', 'public/img/plants/64e464a8610ab.webp', '2023-08-22 17:02:56', '2023-08-22 17:02:56'),
(162, '64e464a85e274', 1, 'lg', 'public/img/plants/64e464a88a3d0.webp', '2023-08-22 17:02:56', '2023-08-22 17:02:56'),
(163, '64e464b925166', 1, 'md', 'public/img/plants/64e464b927193.webp', '2023-08-22 17:03:13', '2023-08-22 17:03:13'),
(164, '64e464b925166', 1, 'lg', 'public/img/plants/64e464b94ece7.webp', '2023-08-22 17:03:13', '2023-08-22 17:03:13'),
(165, '64e464c7df75c', 1, 'md', 'public/img/plants/64e464c7e2648.webp', '2023-08-22 17:03:28', '2023-08-22 17:03:28'),
(166, '64e464c7df75c', 1, 'lg', 'public/img/plants/64e464c81a5e1.webp', '2023-08-22 17:03:28', '2023-08-22 17:03:28'),
(167, '64e4651b83bec', 1, 'md', 'public/img/plants/64e4651b86e76.webp', '2023-08-22 17:04:51', '2023-08-22 17:04:51'),
(168, '64e4651b83bec', 1, 'lg', 'public/img/plants/64e4651bb8684.webp', '2023-08-22 17:04:52', '2023-08-22 17:04:52'),
(169, '64e46542b443f', 1, 'md', 'public/img/plants/64e46542b6400.webp', '2023-08-22 17:05:30', '2023-08-22 17:05:30'),
(170, '64e46542b443f', 1, 'lg', 'public/img/plants/64e46542e033c.webp', '2023-08-22 17:05:31', '2023-08-22 17:05:31'),
(171, '64e46571b930b', 1, 'md', 'public/img/plants/64e46571bc203.webp', '2023-08-22 17:06:17', '2023-08-22 17:06:17'),
(172, '64e46571b930b', 1, 'lg', 'public/img/plants/64e46571e5ffb.webp', '2023-08-22 17:06:18', '2023-08-22 17:06:18'),
(173, '64e465982b206', 1, 'md', 'public/img/plants/64e465982dc1d.webp', '2023-08-22 17:06:56', '2023-08-22 17:06:56'),
(174, '64e465982b206', 1, 'lg', 'public/img/plants/64e4659858f37.webp', '2023-08-22 17:06:56', '2023-08-22 17:06:56'),
(175, '64e465d72af55', 1, 'md', 'public/img/plants/64e465d72d175.webp', '2023-08-22 17:07:59', '2023-08-22 17:07:59'),
(176, '64e465d72af55', 1, 'lg', 'public/img/plants/64e465d758061.webp', '2023-08-22 17:07:59', '2023-08-22 17:07:59'),
(177, '64e465db738a5', 1, 'md', 'public/img/plants/64e465db764d8.webp', '2023-08-22 17:08:03', '2023-08-22 17:08:03'),
(178, '64e465db738a5', 1, 'lg', 'public/img/plants/64e465db9cefb.webp', '2023-08-22 17:08:03', '2023-08-22 17:08:03'),
(179, '64e46601708f0', 1, 'md', 'public/img/plants/64e4660172d5c.webp', '2023-08-22 17:08:41', '2023-08-22 17:08:41'),
(180, '64e46601708f0', 1, 'lg', 'public/img/plants/64e466019eeb8.webp', '2023-08-22 17:08:41', '2023-08-22 17:08:41'),
(181, '64e4663b78334', 1, 'md', 'public/img/plants/64e4663b7bb57.webp', '2023-08-22 17:09:39', '2023-08-22 17:09:39'),
(182, '64e4663b78334', 1, 'lg', 'public/img/plants/64e4663ba95d5.webp', '2023-08-22 17:09:39', '2023-08-22 17:09:39'),
(183, '64e466593ada9', 1, 'md', 'public/img/plants/64e466593d1ef.webp', '2023-08-22 17:10:09', '2023-08-22 17:10:09'),
(184, '64e466593ada9', 1, 'lg', 'public/img/plants/64e46659659f1.webp', '2023-08-22 17:10:09', '2023-08-22 17:10:09'),
(185, '64e46681d6ef3', 1, 'md', 'public/img/plants/64e46681d92d1.webp', '2023-08-22 17:10:50', '2023-08-22 17:10:50'),
(186, '64e46681d6ef3', 1, 'lg', 'public/img/plants/64e4668218ebf.webp', '2023-08-22 17:10:50', '2023-08-22 17:10:50'),
(187, '64e4669dc1b45', 1, 'md', 'public/img/plants/64e4669dc4148.webp', '2023-08-22 17:11:17', '2023-08-22 17:11:17'),
(188, '64e4669dc1b45', 1, 'lg', 'public/img/plants/64e4669dededf.webp', '2023-08-22 17:11:18', '2023-08-22 17:11:18'),
(189, '64e466af81aff', 1, 'md', 'public/img/plants/64e466af83c05.webp', '2023-08-22 17:11:35', '2023-08-22 17:11:35'),
(190, '64e466af81aff', 1, 'lg', 'public/img/plants/64e466afab240.webp', '2023-08-22 17:11:35', '2023-08-22 17:11:35'),
(191, '64e466d8371e7', 1, 'md', 'public/img/plants/64e466d839f66.webp', '2023-08-22 17:12:16', '2023-08-22 17:12:16'),
(192, '64e466d8371e7', 1, 'lg', 'public/img/plants/64e466d8648ac.webp', '2023-08-22 17:12:16', '2023-08-22 17:12:16'),
(193, '64e466fb86198', 1, 'md', 'public/img/plants/64e466fb88d7b.webp', '2023-08-22 17:12:51', '2023-08-22 17:12:51'),
(194, '64e466fb86198', 1, 'lg', 'public/img/plants/64e466fbb3a69.webp', '2023-08-22 17:12:51', '2023-08-22 17:12:51'),
(195, '64e4670b517e6', 1, 'md', 'public/img/plants/64e4670b53da1.webp', '2023-08-22 17:13:07', '2023-08-22 17:13:07'),
(196, '64e4670b517e6', 1, 'lg', 'public/img/plants/64e4670b7d9c2.webp', '2023-08-22 17:13:07', '2023-08-22 17:13:07'),
(197, '64e4672c5288b', 1, 'md', 'public/img/plants/64e4672c55931.webp', '2023-08-22 17:13:40', '2023-08-22 17:13:40'),
(198, '64e4672c5288b', 1, 'lg', 'public/img/plants/64e4672c82334.webp', '2023-08-22 17:13:40', '2023-08-22 17:13:40'),
(199, '64e4675bc836d', 1, 'md', 'public/img/plants/64e4675bca969.webp', '2023-08-22 17:14:27', '2023-08-22 17:14:27'),
(200, '64e4675bc836d', 1, 'lg', 'public/img/plants/64e4675befe46.webp', '2023-08-22 17:14:28', '2023-08-22 17:14:28'),
(201, '64e4677f6e905', 1, 'md', 'public/img/plants/64e4677f70a8a.webp', '2023-08-22 17:15:03', '2023-08-22 17:15:03'),
(202, '64e4677f6e905', 1, 'lg', 'public/img/plants/64e4677f98e77.webp', '2023-08-22 17:15:03', '2023-08-22 17:15:03'),
(203, '64e46790d5547', 1, 'md', 'public/img/plants/64e46790d7bd2.webp', '2023-08-22 17:15:21', '2023-08-22 17:15:21'),
(204, '64e46790d5547', 1, 'lg', 'public/img/plants/64e467910b8c8.webp', '2023-08-22 17:15:21', '2023-08-22 17:15:21'),
(205, '64e467aaa0cc4', 1, 'md', 'public/img/plants/64e467aaa3408.webp', '2023-08-22 17:15:46', '2023-08-22 17:15:46'),
(206, '64e467aaa0cc4', 1, 'lg', 'public/img/plants/64e467aacb308.webp', '2023-08-22 17:15:47', '2023-08-22 17:15:47'),
(207, '64e467cf46311', 1, 'md', 'public/img/plants/64e467cf48d90.webp', '2023-08-22 17:16:23', '2023-08-22 17:16:23'),
(208, '64e467cf46311', 1, 'lg', 'public/img/plants/64e467cf740da.webp', '2023-08-22 17:16:23', '2023-08-22 17:16:23'),
(209, '64e467f6d96ea', 1, 'md', 'public/img/plants/64e467f6dbb56.webp', '2023-08-22 17:17:03', '2023-08-22 17:17:03'),
(210, '64e467f6d96ea', 1, 'lg', 'public/img/plants/64e467f711728.webp', '2023-08-22 17:17:03', '2023-08-22 17:17:03'),
(211, '64e4681949684', 1, 'md', 'public/img/plants/64e468194c5eb.webp', '2023-08-22 17:17:37', '2023-08-22 17:17:37'),
(212, '64e4681949684', 1, 'lg', 'public/img/plants/64e4681989aac.webp', '2023-08-22 17:17:37', '2023-08-22 17:17:37'),
(213, '64e4681f8b444', 1, 'md', 'public/img/plants/64e4681f8d767.webp', '2023-08-22 17:17:43', '2023-08-22 17:17:43'),
(214, '64e4681f8b444', 1, 'lg', 'public/img/plants/64e4681fb76b3.webp', '2023-08-22 17:17:43', '2023-08-22 17:17:43'),
(215, '64e46891540d8', 1, 'md', 'public/img/plants/64e46891561ba.webp', '2023-08-22 17:19:37', '2023-08-22 17:19:37'),
(216, '64e46891540d8', 1, 'lg', 'public/img/plants/64e468918ca41.webp', '2023-08-22 17:19:37', '2023-08-22 17:19:37'),
(217, '64e468f213c2f', 1, 'md', 'public/img/plants/64e468f216b70.webp', '2023-08-22 17:21:14', '2023-08-22 17:21:14'),
(218, '64e468f213c2f', 1, 'lg', 'public/img/plants/64e468f23f65f.webp', '2023-08-22 17:21:14', '2023-08-22 17:21:14'),
(219, '64e46972e2eae', 1, 'md', 'public/img/plants/64e46972e5225.webp', '2023-08-22 17:23:23', '2023-08-22 17:23:23'),
(220, '64e46972e2eae', 1, 'lg', 'public/img/plants/64e4697318fc9.webp', '2023-08-22 17:23:23', '2023-08-22 17:23:23'),
(221, '64e469ee7882f', 1, 'md', 'public/img/plants/64e469ee7ac26.webp', '2023-08-22 17:25:26', '2023-08-22 17:25:26'),
(222, '64e469ee7882f', 1, 'lg', 'public/img/plants/64e469eea29b9.webp', '2023-08-22 17:25:26', '2023-08-22 17:25:26'),
(223, '64e46a59c8cc2', 1, 'md', 'public/img/plants/64e46a59cae54.webp', '2023-08-22 17:27:14', '2023-08-22 17:27:14'),
(224, '64e46a59c8cc2', 1, 'lg', 'public/img/plants/64e46a5a02b63.webp', '2023-08-22 17:27:14', '2023-08-22 17:27:14'),
(225, '64e46b8d543c2', 1, 'md', 'public/img/plants/64e46b8d568fc.webp', '2023-08-22 17:32:21', '2023-08-22 17:32:21'),
(226, '64e46b8d543c2', 1, 'lg', 'public/img/plants/64e46b8d801a1.webp', '2023-08-22 17:32:21', '2023-08-22 17:32:21'),
(227, '64e46c1d60e9e', 1, 'md', 'public/img/plants/64e46c1d635a9.webp', '2023-08-22 17:34:45', '2023-08-22 17:34:45'),
(228, '64e46c1d60e9e', 1, 'lg', 'public/img/plants/64e46c1d8c673.webp', '2023-08-22 17:34:45', '2023-08-22 17:34:45'),
(229, '64e46c9de4289', 1, 'md', 'public/img/plants/64e46c9de7388.webp', '2023-08-22 17:36:54', '2023-08-22 17:36:54'),
(230, '64e46c9de4289', 1, 'lg', 'public/img/plants/64e46c9e1f6fc.webp', '2023-08-22 17:36:54', '2023-08-22 17:36:54'),
(231, '64e46cbd950b7', 1, 'md', 'public/img/plants/64e46cbd97331.webp', '2023-08-22 17:37:25', '2023-08-22 17:37:25'),
(232, '64e46cbd950b7', 1, 'lg', 'public/img/plants/64e46cbdbed9e.webp', '2023-08-22 17:37:26', '2023-08-22 17:37:26'),
(233, '64e46cf9e7656', 1, 'md', 'public/img/plants/64e46cf9e9cca.webp', '2023-08-22 17:38:26', '2023-08-22 17:38:26'),
(234, '64e46cf9e7656', 1, 'lg', 'public/img/plants/64e46cfa1f69f.webp', '2023-08-22 17:38:26', '2023-08-22 17:38:26'),
(235, '64e46cfa95327', 1, 'md', 'public/img/plants/64e46cfa97991.webp', '2023-08-22 17:38:26', '2023-08-22 17:38:26'),
(236, '64e46cfa95327', 1, 'lg', 'public/img/plants/64e46cfabd1f6.webp', '2023-08-22 17:38:26', '2023-08-22 17:38:26'),
(237, '64e46d33b996d', 1, 'md', 'public/img/plants/64e46d33bbd18.webp', '2023-08-22 17:39:23', '2023-08-22 17:39:23'),
(238, '64e46d33b996d', 1, 'lg', 'public/img/plants/64e46d33e6d7c.webp', '2023-08-22 17:39:24', '2023-08-22 17:39:24'),
(239, '64e46d71421ba', 1, 'md', 'public/img/plants/64e46d7144473.webp', '2023-08-22 17:40:25', '2023-08-22 17:40:25'),
(240, '64e46d71421ba', 1, 'lg', 'public/img/plants/64e46d7172a99.webp', '2023-08-22 17:40:25', '2023-08-22 17:40:25'),
(241, '64e46dd085660', 1, 'md', 'public/img/plants/64e46dd0883b1.webp', '2023-08-22 17:42:00', '2023-08-22 17:42:00'),
(242, '64e46dd085660', 1, 'lg', 'public/img/plants/64e46dd0aff25.webp', '2023-08-22 17:42:00', '2023-08-22 17:42:00'),
(243, '64e46de4cf0cc', 1, 'md', 'public/img/plants/64e46de4d10f8.webp', '2023-08-22 17:42:21', '2023-08-22 17:42:21'),
(244, '64e46de4cf0cc', 1, 'lg', 'public/img/plants/64e46de5045fd.webp', '2023-08-22 17:42:21', '2023-08-22 17:42:21'),
(245, '64e46e03a1503', 1, 'md', 'public/img/plants/64e46e03a341c.webp', '2023-08-22 17:42:51', '2023-08-22 17:42:51'),
(246, '64e46e03a1503', 1, 'lg', 'public/img/plants/64e46e03ca7ea.webp', '2023-08-22 17:42:52', '2023-08-22 17:42:52'),
(247, '64e46e2f7618f', 1, 'md', 'public/img/plants/64e46e2f78532.webp', '2023-08-22 17:43:35', '2023-08-22 17:43:35'),
(248, '64e46e2f7618f', 1, 'lg', 'public/img/plants/64e46e2f9ec8e.webp', '2023-08-22 17:43:35', '2023-08-22 17:43:35'),
(249, '64e46e54d5e0a', 1, 'md', 'public/img/plants/64e46e54d8080.webp', '2023-08-22 17:44:13', '2023-08-22 17:44:13'),
(250, '64e46e54d5e0a', 1, 'lg', 'public/img/plants/64e46e550bf35.webp', '2023-08-22 17:44:13', '2023-08-22 17:44:13'),
(251, '64e46e5bc626e', 1, 'md', 'public/img/plants/64e46e5bc8b2c.webp', '2023-08-22 17:44:19', '2023-08-22 17:44:19'),
(252, '64e46e5bc626e', 1, 'lg', 'public/img/plants/64e46e5becfc9.webp', '2023-08-22 17:44:20', '2023-08-22 17:44:20'),
(253, '64e46eb34d0b2', 1, 'md', 'public/img/plants/64e46eb34f655.webp', '2023-08-22 17:45:47', '2023-08-22 17:45:47'),
(254, '64e46eb34d0b2', 1, 'lg', 'public/img/plants/64e46eb378e0d.webp', '2023-08-22 17:45:47', '2023-08-22 17:45:47'),
(255, '64e46ee332c28', 1, 'md', 'public/img/plants/64e46ee33575f.webp', '2023-08-22 17:46:35', '2023-08-22 17:46:35'),
(256, '64e46ee332c28', 1, 'lg', 'public/img/plants/64e46ee365483.webp', '2023-08-22 17:46:35', '2023-08-22 17:46:35'),
(257, '64e46ef236fd7', 1, 'md', 'public/img/plants/64e46ef2394b0.webp', '2023-08-22 17:46:50', '2023-08-22 17:46:50'),
(258, '64e46ef236fd7', 1, 'lg', 'public/img/plants/64e46ef262c4b.webp', '2023-08-22 17:46:50', '2023-08-22 17:46:50'),
(259, '64e46f11ec2de', 1, 'md', 'public/img/plants/64e46f11eea85.webp', '2023-08-22 17:47:22', '2023-08-22 17:47:22'),
(260, '64e46f11ec2de', 1, 'lg', 'public/img/plants/64e46f122139b.webp', '2023-08-22 17:47:22', '2023-08-22 17:47:22'),
(261, '64e46f4db59df', 1, 'md', 'public/img/plants/64e46f4db8056.webp', '2023-08-22 17:48:21', '2023-08-22 17:48:21'),
(262, '64e46f4db59df', 1, 'lg', 'public/img/plants/64e46f4ddf1eb.webp', '2023-08-22 17:48:22', '2023-08-22 17:48:22'),
(263, '64e46f88193c6', 1, 'md', 'public/img/plants/64e46f881b7db.webp', '2023-08-22 17:49:20', '2023-08-22 17:49:20'),
(264, '64e46f88193c6', 1, 'lg', 'public/img/plants/64e46f88461d1.webp', '2023-08-22 17:49:20', '2023-08-22 17:49:20'),
(265, '64e46fc9c6bd0', 1, 'md', 'public/img/plants/64e46fc9c91e4.webp', '2023-08-22 17:50:25', '2023-08-22 17:50:25'),
(266, '64e46fc9c6bd0', 1, 'lg', 'public/img/plants/64e46fc9ef32a.webp', '2023-08-22 17:50:26', '2023-08-22 17:50:26'),
(267, '64e46ff50f4ef', 1, 'md', 'public/img/plants/64e46ff511f49.webp', '2023-08-22 17:51:09', '2023-08-22 17:51:09'),
(268, '64e46ff50f4ef', 1, 'lg', 'public/img/plants/64e46ff53a019.webp', '2023-08-22 17:51:09', '2023-08-22 17:51:09'),
(269, '64e4702bd576e', 1, 'md', 'public/img/plants/64e4702bd8034.webp', '2023-08-22 17:52:04', '2023-08-22 17:52:04'),
(270, '64e4702bd576e', 1, 'lg', 'public/img/plants/64e4702c11e61.webp', '2023-08-22 17:52:04', '2023-08-22 17:52:04'),
(271, '64e4705919e42', 1, 'md', 'public/img/plants/64e470591bf3e.webp', '2023-08-22 17:52:49', '2023-08-22 17:52:49'),
(272, '64e4705919e42', 1, 'lg', 'public/img/plants/64e4705943cfe.webp', '2023-08-22 17:52:49', '2023-08-22 17:52:49'),
(273, '64e470751430c', 1, 'md', 'public/img/plants/64e47075163dd.webp', '2023-08-22 17:53:17', '2023-08-22 17:53:17'),
(274, '64e470751430c', 1, 'lg', 'public/img/plants/64e4707539823.webp', '2023-08-22 17:53:17', '2023-08-22 17:53:17'),
(275, '64e472f2ef3dc', 1, 'md', 'public/img/plants/64e472f2f195b.webp', '2023-08-22 18:03:55', '2023-08-22 18:03:55'),
(276, '64e472f2ef3dc', 1, 'lg', 'public/img/plants/64e472f325136.webp', '2023-08-22 18:03:55', '2023-08-22 18:03:55'),
(277, '64e473cdb9688', 1, 'md', 'public/img/plants/64e473cdbbb4f.webp', '2023-08-22 18:07:33', '2023-08-22 18:07:33'),
(278, '64e473cdb9688', 1, 'lg', 'public/img/plants/64e473cde2c13.webp', '2023-08-22 18:07:34', '2023-08-22 18:07:34'),
(279, '64e4740bf33b4', 1, 'md', 'public/img/plants/64e4740c02446.webp', '2023-08-22 18:08:36', '2023-08-22 18:08:36'),
(280, '64e4740bf33b4', 1, 'lg', 'public/img/plants/64e4740c29e77.webp', '2023-08-22 18:08:36', '2023-08-22 18:08:36'),
(281, '64e474429777b', 1, 'md', 'public/img/plants/64e474429a50e.webp', '2023-08-22 18:09:30', '2023-08-22 18:09:30'),
(282, '64e474429777b', 1, 'lg', 'public/img/plants/64e47442c17ec.webp', '2023-08-22 18:09:31', '2023-08-22 18:09:31'),
(283, '64e4747f56fb5', 1, 'md', 'public/img/plants/64e4747f593aa.webp', '2023-08-22 18:10:31', '2023-08-22 18:10:31'),
(284, '64e4747f56fb5', 1, 'lg', 'public/img/plants/64e4747f7edaf.webp', '2023-08-22 18:10:31', '2023-08-22 18:10:31'),
(285, '64e4751245e62', 1, 'md', 'public/img/plants/64e475124870d.webp', '2023-08-22 18:12:58', '2023-08-22 18:12:58'),
(286, '64e4751245e62', 1, 'lg', 'public/img/plants/64e4751274ba0.webp', '2023-08-22 18:12:58', '2023-08-22 18:12:58'),
(287, '64e4756131f57', 1, 'md', 'public/img/plants/64e4756133e61.webp', '2023-08-22 18:14:17', '2023-08-22 18:14:17'),
(288, '64e4756131f57', 1, 'lg', 'public/img/plants/64e475615b2c3.webp', '2023-08-22 18:14:17', '2023-08-22 18:14:17'),
(289, '64e475bb556b0', 1, 'md', 'public/img/plants/64e475bb57a3d.webp', '2023-08-22 18:15:47', '2023-08-22 18:15:47'),
(290, '64e475bb556b0', 1, 'lg', 'public/img/plants/64e475bb7e36d.webp', '2023-08-22 18:15:47', '2023-08-22 18:15:47'),
(291, '64e47641eeacb', 1, 'md', 'public/img/plants/64e47641f0d46.webp', '2023-08-22 18:18:02', '2023-08-22 18:18:02'),
(292, '64e47641eeacb', 1, 'lg', 'public/img/plants/64e4764224129.webp', '2023-08-22 18:18:02', '2023-08-22 18:18:02'),
(293, '64e4769651fa2', 1, 'md', 'public/img/plants/64e47696545d5.webp', '2023-08-22 18:19:26', '2023-08-22 18:19:26'),
(294, '64e4769651fa2', 1, 'lg', 'public/img/plants/64e4769679cd5.webp', '2023-08-22 18:19:26', '2023-08-22 18:19:26'),
(295, '64e476cbf2e1d', 1, 'md', 'public/img/plants/64e476cc01134.webp', '2023-08-22 18:20:20', '2023-08-22 18:20:20'),
(296, '64e476cbf2e1d', 1, 'lg', 'public/img/plants/64e476cc28458.webp', '2023-08-22 18:20:20', '2023-08-22 18:20:20'),
(297, '64e47836dc891', 1, 'md', 'public/img/plants/64e47836deb7c.webp', '2023-08-22 18:26:23', '2023-08-22 18:26:23'),
(298, '64e47836dc891', 1, 'lg', 'public/img/plants/64e47837145e5.webp', '2023-08-22 18:26:23', '2023-08-22 18:26:23'),
(299, '64e47988abbdc', 1, 'md', 'public/img/plants/64e47988adf7f.webp', '2023-08-22 18:32:00', '2023-08-22 18:32:00'),
(300, '64e47988abbdc', 1, 'lg', 'public/img/plants/64e47988d6daf.webp', '2023-08-22 18:32:01', '2023-08-22 18:32:01'),
(301, '64e479fe1b19e', 1, 'md', 'public/img/plants/64e479fe1d3ae.webp', '2023-08-22 18:33:58', '2023-08-22 18:33:58'),
(302, '64e479fe1b19e', 1, 'lg', 'public/img/plants/64e479fe43f73.webp', '2023-08-22 18:33:58', '2023-08-22 18:33:58'),
(303, '64e47a2a97805', 1, 'md', 'public/img/plants/64e47a2a99be8.webp', '2023-08-22 18:34:42', '2023-08-22 18:34:42'),
(304, '64e47a2a97805', 1, 'lg', 'public/img/plants/64e47a2ac17ea.webp', '2023-08-22 18:34:43', '2023-08-22 18:34:43'),
(305, '64e47a6add95c', 1, 'md', 'public/img/plants/64e47a6ae0adc.webp', '2023-08-22 18:35:47', '2023-08-22 18:35:47'),
(306, '64e47a6add95c', 1, 'lg', 'public/img/plants/64e47a6b24ee6.webp', '2023-08-22 18:35:47', '2023-08-22 18:35:47'),
(307, '64e47ab31f209', 1, 'md', 'public/img/plants/64e47ab3215e4.webp', '2023-08-22 18:36:59', '2023-08-22 18:36:59'),
(308, '64e47ab31f209', 1, 'lg', 'public/img/plants/64e47ab350a61.webp', '2023-08-22 18:36:59', '2023-08-22 18:36:59'),
(309, '64e47c1332647', 1, 'md', 'public/img/plants/64e47c1334c56.webp', '2023-08-22 18:42:51', '2023-08-22 18:42:51'),
(310, '64e47c1332647', 1, 'lg', 'public/img/plants/64e47c135fc16.webp', '2023-08-22 18:42:51', '2023-08-22 18:42:51'),
(311, '64e47c6cd70eb', 1, 'md', 'public/img/plants/64e47c6cd988b.webp', '2023-08-22 18:44:21', '2023-08-22 18:44:21'),
(312, '64e47c6cd70eb', 1, 'lg', 'public/img/plants/64e47c6d0f48b.webp', '2023-08-22 18:44:21', '2023-08-22 18:44:21'),
(313, '64e47cbbe90a4', 1, 'md', 'public/img/plants/64e47cbbeb446.webp', '2023-08-22 18:45:40', '2023-08-22 18:45:40'),
(314, '64e47cbbe90a4', 1, 'lg', 'public/img/plants/64e47cbc31c00.webp', '2023-08-22 18:45:40', '2023-08-22 18:45:40'),
(315, '64e47efa0543a', 1, 'md', 'public/img/plants/64e47efa06367.webp', '2023-08-22 18:55:14', '2023-08-22 18:55:14'),
(316, '64e47efa0543a', 1, 'lg', 'public/img/plants/64e47efa316a1.webp', '2023-08-22 18:55:14', '2023-08-22 18:55:14'),
(317, '64e47f47adc42', 1, 'md', 'public/img/plants/64e47f47aea99.webp', '2023-08-22 18:56:31', '2023-08-22 18:56:31'),
(318, '64e47f47adc42', 1, 'lg', 'public/img/plants/64e47f47da165.webp', '2023-08-22 18:56:32', '2023-08-22 18:56:32'),
(319, '64e47f900f1f6', 1, 'md', 'public/img/plants/64e47f9010127.webp', '2023-08-22 18:57:44', '2023-08-22 18:57:44'),
(320, '64e47f900f1f6', 1, 'lg', 'public/img/plants/64e47f9039dde.webp', '2023-08-22 18:57:44', '2023-08-22 18:57:44'),
(321, '64e47fc85df1e', 1, 'md', 'public/img/plants/64e47fc85f5a3.webp', '2023-08-22 18:58:40', '2023-08-22 18:58:40'),
(322, '64e47fc85df1e', 1, 'lg', 'public/img/plants/64e47fc88a767.webp', '2023-08-22 18:58:40', '2023-08-22 18:58:40'),
(323, '64e47ff79227d', 1, 'md', 'public/img/plants/64e47ff7930b3.webp', '2023-08-22 18:59:27', '2023-08-22 18:59:27'),
(324, '64e47ff79227d', 1, 'lg', 'public/img/plants/64e47ff7bccfa.webp', '2023-08-22 18:59:28', '2023-08-22 18:59:28'),
(325, '64e480243351c', 1, 'md', 'public/img/plants/64e4802434188.webp', '2023-08-22 19:00:12', '2023-08-22 19:00:12'),
(326, '64e480243351c', 1, 'lg', 'public/img/plants/64e480245bca0.webp', '2023-08-22 19:00:12', '2023-08-22 19:00:12'),
(327, '64e48055e9c05', 1, 'md', 'public/img/plants/64e48055ebc06.webp', '2023-08-22 19:01:02', '2023-08-22 19:01:02'),
(328, '64e48055e9c05', 1, 'lg', 'public/img/plants/64e4805643938.webp', '2023-08-22 19:01:02', '2023-08-22 19:01:02'),
(329, '64e4807d85f6f', 1, 'md', 'public/img/plants/64e4807d86d8b.webp', '2023-08-22 19:01:41', '2023-08-22 19:01:41'),
(330, '64e4807d85f6f', 1, 'lg', 'public/img/plants/64e4807daefd8.webp', '2023-08-22 19:01:41', '2023-08-22 19:01:41'),
(331, '64e4809c65430', 1, 'md', 'public/img/plants/64e4809c6df7f.webp', '2023-08-22 19:02:12', '2023-08-22 19:02:12'),
(332, '64e4809c65430', 1, 'lg', 'public/img/plants/64e4809c9a16f.webp', '2023-08-22 19:02:13', '2023-08-22 19:02:13'),
(333, '64e480b29ac12', 1, 'md', 'public/img/plants/64e480b29bb0f.webp', '2023-08-22 19:02:34', '2023-08-22 19:02:34'),
(334, '64e480b29ac12', 1, 'lg', 'public/img/plants/64e480b2cdb20.webp', '2023-08-22 19:02:35', '2023-08-22 19:02:35'),
(335, '64e480d938a9b', 1, 'md', 'public/img/plants/64e480d939d4d.webp', '2023-08-22 19:03:13', '2023-08-22 19:03:13'),
(336, '64e480d938a9b', 1, 'lg', 'public/img/plants/64e480d963440.webp', '2023-08-22 19:03:13', '2023-08-22 19:03:13'),
(337, '64e48112d5169', 1, 'md', 'public/img/plants/64e48112d5f7d.webp', '2023-08-22 19:04:11', '2023-08-22 19:04:11'),
(338, '64e48112d5169', 1, 'lg', 'public/img/plants/64e481130b89a.webp', '2023-08-22 19:04:11', '2023-08-22 19:04:11'),
(339, '64e4813a64dc0', 1, 'md', 'public/img/plants/64e4813a65ae7.webp', '2023-08-22 19:04:50', '2023-08-22 19:04:50'),
(340, '64e4813a64dc0', 1, 'lg', 'public/img/plants/64e4813a91277.webp', '2023-08-22 19:04:50', '2023-08-22 19:04:50'),
(341, '64e48152076cf', 1, 'md', 'public/img/plants/64e4815208a7e.webp', '2023-08-22 19:05:14', '2023-08-22 19:05:14'),
(342, '64e48152076cf', 1, 'lg', 'public/img/plants/64e4815232689.webp', '2023-08-22 19:05:14', '2023-08-22 19:05:14'),
(343, '64e4816cb60da', 1, 'md', 'public/img/plants/64e4816cb7817.webp', '2023-08-22 19:05:40', '2023-08-22 19:05:40'),
(344, '64e4816cb60da', 1, 'lg', 'public/img/plants/64e4816ce0035.webp', '2023-08-22 19:05:41', '2023-08-22 19:05:41'),
(345, '64e4819ab8db3', 1, 'md', 'public/img/plants/64e4819ab9d1f.webp', '2023-08-22 19:06:26', '2023-08-22 19:06:26'),
(346, '64e4819ab8db3', 1, 'lg', 'public/img/plants/64e4819ae49a3.webp', '2023-08-22 19:06:27', '2023-08-22 19:06:27'),
(347, '64e481b345713', 1, 'md', 'public/img/plants/64e481b346535.webp', '2023-08-22 19:06:51', '2023-08-22 19:06:51'),
(348, '64e481b345713', 1, 'lg', 'public/img/plants/64e481b36d37a.webp', '2023-08-22 19:06:51', '2023-08-22 19:06:51'),
(349, '64e4820ff2538', 1, 'md', 'public/img/plants/64e4820ff353e.webp', '2023-08-22 19:08:24', '2023-08-22 19:08:24'),
(350, '64e4820ff2538', 1, 'lg', 'public/img/plants/64e4821027182.webp', '2023-08-22 19:08:24', '2023-08-22 19:08:24'),
(351, '64e4823fcfc05', 1, 'md', 'public/img/plants/64e4823fd0a28.webp', '2023-08-22 19:09:12', '2023-08-22 19:09:12'),
(352, '64e4823fcfc05', 1, 'lg', 'public/img/plants/64e482400479d.webp', '2023-08-22 19:09:12', '2023-08-22 19:09:12'),
(353, '64e4827c9cf07', 1, 'md', 'public/img/plants/64e4827c9e534.webp', '2023-08-22 19:10:12', '2023-08-22 19:10:12'),
(354, '64e4827c9cf07', 1, 'lg', 'public/img/plants/64e4827cc635e.webp', '2023-08-22 19:10:13', '2023-08-22 19:10:13'),
(355, '64e4830debc98', 1, 'md', 'public/img/plants/64e4830decae8.webp', '2023-08-22 19:12:38', '2023-08-22 19:12:38'),
(356, '64e4830debc98', 1, 'lg', 'public/img/plants/64e4830e24376.webp', '2023-08-22 19:12:38', '2023-08-22 19:12:38'),
(357, '64e487012a44a', 1, 'md', 'public/img/plants/64e487012b478.webp', '2023-08-22 19:29:29', '2023-08-22 19:29:29'),
(358, '64e487012a44a', 1, 'lg', 'public/img/plants/64e4870153c1d.webp', '2023-08-22 19:29:29', '2023-08-22 19:29:29'),
(359, '64e4872fdd1e8', 1, 'md', 'public/img/plants/64e4872fde12e.webp', '2023-08-22 19:30:16', '2023-08-22 19:30:16'),
(360, '64e4872fdd1e8', 1, 'lg', 'public/img/plants/64e4873011b78.webp', '2023-08-22 19:30:16', '2023-08-22 19:30:16'),
(361, '64e4875068a42', 1, 'md', 'public/img/plants/64e4875069871.webp', '2023-08-22 19:30:48', '2023-08-22 19:30:48'),
(362, '64e4875068a42', 1, 'lg', 'public/img/plants/64e4875092f4c.webp', '2023-08-22 19:30:48', '2023-08-22 19:30:48'),
(363, '64e4879841dd8', 1, 'md', 'public/img/plants/64e48798430ab.webp', '2023-08-22 19:32:00', '2023-08-22 19:32:00'),
(364, '64e4879841dd8', 1, 'lg', 'public/img/plants/64e4879873a61.webp', '2023-08-22 19:32:00', '2023-08-22 19:32:00'),
(365, '64e487bc2a2df', 1, 'md', 'public/img/plants/64e487bc2b265.webp', '2023-08-22 19:32:36', '2023-08-22 19:32:36'),
(366, '64e487bc2a2df', 1, 'lg', 'public/img/plants/64e487bc5551f.webp', '2023-08-22 19:32:36', '2023-08-22 19:32:36'),
(367, '64e487e639db5', 1, 'md', 'public/img/plants/64e487e63be97.webp', '2023-08-22 19:33:18', '2023-08-22 19:33:18'),
(368, '64e487e639db5', 1, 'lg', 'public/img/plants/64e487e671ef6.webp', '2023-08-22 19:33:18', '2023-08-22 19:33:18'),
(369, '64e48819a368f', 1, 'md', 'public/img/plants/64e48819a428a.webp', '2023-08-22 19:34:09', '2023-08-22 19:34:09'),
(370, '64e48819a368f', 1, 'lg', 'public/img/plants/64e48819cb307.webp', '2023-08-22 19:34:10', '2023-08-22 19:34:10'),
(371, '64e4883f0381b', 1, 'md', 'public/img/plants/64e4883f04e36.webp', '2023-08-22 19:34:47', '2023-08-22 19:34:47'),
(372, '64e4883f0381b', 1, 'lg', 'public/img/plants/64e4883f2fb25.webp', '2023-08-22 19:34:47', '2023-08-22 19:34:47'),
(373, '64e48868e0db9', 1, 'md', 'public/img/plants/64e48868e1e0b.webp', '2023-08-22 19:35:29', '2023-08-22 19:35:29'),
(374, '64e48868e0db9', 1, 'lg', 'public/img/plants/64e488691ded0.webp', '2023-08-22 19:35:29', '2023-08-22 19:35:29'),
(375, '64e488a47c540', 1, 'md', 'public/img/plants/64e488a47d23e.webp', '2023-08-22 19:36:28', '2023-08-22 19:36:28'),
(376, '64e488a47c540', 1, 'lg', 'public/img/plants/64e488a4aa385.webp', '2023-08-22 19:36:28', '2023-08-22 19:36:28'),
(377, '64e488c94d9eb', 1, 'md', 'public/img/plants/64e488c94ebaa.webp', '2023-08-22 19:37:05', '2023-08-22 19:37:05'),
(378, '64e488c94d9eb', 1, 'lg', 'public/img/plants/64e488c978185.webp', '2023-08-22 19:37:05', '2023-08-22 19:37:05'),
(379, '64e488f4d8723', 1, 'md', 'public/img/plants/64e488f4d9dd5.webp', '2023-08-22 19:37:49', '2023-08-22 19:37:49'),
(380, '64e488f4d8723', 1, 'lg', 'public/img/plants/64e488f50c17b.webp', '2023-08-22 19:37:49', '2023-08-22 19:37:49'),
(381, '64e4895297c12', 1, 'md', 'public/img/plants/64e4895298aee.webp', '2023-08-22 19:39:22', '2023-08-22 19:39:22'),
(382, '64e4895297c12', 1, 'lg', 'public/img/plants/64e48952c4997.webp', '2023-08-22 19:39:23', '2023-08-22 19:39:23'),
(383, '64e4896b53fa2', 1, 'md', 'public/img/plants/64e4896b55f2f.webp', '2023-08-22 19:39:47', '2023-08-22 19:39:47'),
(384, '64e4896b53fa2', 1, 'lg', 'public/img/plants/64e4896b7fa77.webp', '2023-08-22 19:39:47', '2023-08-22 19:39:47'),
(385, '64e4898942542', 1, 'md', 'public/img/plants/64e4898943e06.webp', '2023-08-22 19:40:17', '2023-08-22 19:40:17'),
(386, '64e4898942542', 1, 'lg', 'public/img/plants/64e4898976b2f.webp', '2023-08-22 19:40:17', '2023-08-22 19:40:17'),
(387, '64e489c2e4607', 1, 'md', 'public/img/plants/64e489c2e58c6.webp', '2023-08-22 19:41:15', '2023-08-22 19:41:15'),
(388, '64e489c2e4607', 1, 'lg', 'public/img/plants/64e489c31f507.webp', '2023-08-22 19:41:15', '2023-08-22 19:41:15'),
(389, '64e489e7721a9', 1, 'md', 'public/img/plants/64e489e773c48.webp', '2023-08-22 19:41:51', '2023-08-22 19:41:51'),
(390, '64e489e7721a9', 1, 'lg', 'public/img/plants/64e489e7a0e13.webp', '2023-08-22 19:41:51', '2023-08-22 19:41:51'),
(391, '64e489ff7d570', 1, 'md', 'public/img/plants/64e489ff7ec7f.webp', '2023-08-22 19:42:15', '2023-08-22 19:42:15'),
(392, '64e489ff7d570', 1, 'lg', 'public/img/plants/64e489ffa8170.webp', '2023-08-22 19:42:15', '2023-08-22 19:42:15'),
(393, '64e48a3f2ab4c', 1, 'md', 'public/img/plants/64e48a3f2bb7f.webp', '2023-08-22 19:43:19', '2023-08-22 19:43:19'),
(394, '64e48a3f2ab4c', 1, 'lg', 'public/img/plants/64e48a3f5679e.webp', '2023-08-22 19:43:19', '2023-08-22 19:43:19'),
(395, '64e48a5b1ff9a', 1, 'md', 'public/img/plants/64e48a5b21341.webp', '2023-08-22 19:43:47', '2023-08-22 19:43:47'),
(396, '64e48a5b1ff9a', 1, 'lg', 'public/img/plants/64e48a5b4e7d1.webp', '2023-08-22 19:43:47', '2023-08-22 19:43:47'),
(397, '64e48a76cb04f', 1, 'md', 'public/img/plants/64e48a76cbf31.webp', '2023-08-22 19:44:14', '2023-08-22 19:44:14'),
(398, '64e48a76cb04f', 1, 'lg', 'public/img/plants/64e48a76f39dd.webp', '2023-08-22 19:44:15', '2023-08-22 19:44:15'),
(399, '64e48a94487b5', 1, 'md', 'public/img/plants/64e48a94495c7.webp', '2023-08-22 19:44:44', '2023-08-22 19:44:44'),
(400, '64e48a94487b5', 1, 'lg', 'public/img/plants/64e48a9474653.webp', '2023-08-22 19:44:44', '2023-08-22 19:44:44'),
(401, '64e48ab26e3e4', 1, 'md', 'public/img/plants/64e48ab270058.webp', '2023-08-22 19:45:14', '2023-08-22 19:45:14'),
(402, '64e48ab26e3e4', 1, 'lg', 'public/img/plants/64e48ab29a3e9.webp', '2023-08-22 19:45:14', '2023-08-22 19:45:14'),
(403, '64e48acf52953', 1, 'md', 'public/img/plants/64e48acf537af.webp', '2023-08-22 19:45:43', '2023-08-22 19:45:43'),
(404, '64e48acf52953', 1, 'lg', 'public/img/plants/64e48acf7c564.webp', '2023-08-22 19:45:43', '2023-08-22 19:45:43'),
(405, '64e4a268ebf49', 1, 'md', 'public/img/plants/64e4a268ed1e0.webp', '2023-08-22 21:26:25', '2023-08-22 21:26:25'),
(406, '64e4a268ebf49', 1, 'lg', 'public/img/plants/64e4a26922d6a.webp', '2023-08-22 21:26:25', '2023-08-22 21:26:25'),
(407, '64e4a2e9734d9', 1, 'md', 'public/img/plants/64e4a2e9744f3.webp', '2023-08-22 21:28:33', '2023-08-22 21:28:33'),
(408, '64e4a2e9734d9', 1, 'lg', 'public/img/plants/64e4a2e99d06a.webp', '2023-08-22 21:28:33', '2023-08-22 21:28:33'),
(409, '64e4a347e67ac', 1, 'md', 'public/img/plants/64e4a347e784b.webp', '2023-08-22 21:30:08', '2023-08-22 21:30:08'),
(410, '64e4a347e67ac', 1, 'lg', 'public/img/plants/64e4a34825041.webp', '2023-08-22 21:30:08', '2023-08-22 21:30:08'),
(411, '64e4a3ab2d60a', 1, 'md', 'public/img/plants/64e4a3ab2e473.webp', '2023-08-22 21:31:47', '2023-08-22 21:31:47'),
(412, '64e4a3ab2d60a', 1, 'lg', 'public/img/plants/64e4a3ab58976.webp', '2023-08-22 21:31:47', '2023-08-22 21:31:47'),
(413, '64e4a3fb9e038', 1, 'md', 'public/img/plants/64e4a3fb9f48a.webp', '2023-08-22 21:33:07', '2023-08-22 21:33:07'),
(414, '64e4a3fb9e038', 1, 'lg', 'public/img/plants/64e4a3fbc84fc.webp', '2023-08-22 21:33:08', '2023-08-22 21:33:08'),
(415, '64e4a453cc75e', 1, 'md', 'public/img/plants/64e4a453cd88f.webp', '2023-08-22 21:34:36', '2023-08-22 21:34:36'),
(416, '64e4a453cc75e', 1, 'lg', 'public/img/plants/64e4a45400cf0.webp', '2023-08-22 21:34:36', '2023-08-22 21:34:36'),
(417, '64e4a4ab616ea', 1, 'md', 'public/img/plants/64e4a4ab62860.webp', '2023-08-22 21:36:03', '2023-08-22 21:36:03'),
(418, '64e4a4ab616ea', 1, 'lg', 'public/img/plants/64e4a4ab8cc76.webp', '2023-08-22 21:36:03', '2023-08-22 21:36:03'),
(419, '64e4a54d4295e', 1, 'md', 'public/img/plants/64e4a54d43e14.webp', '2023-08-22 21:38:45', '2023-08-22 21:38:45'),
(420, '64e4a54d4295e', 1, 'lg', 'public/img/plants/64e4a54d795b7.webp', '2023-08-22 21:38:45', '2023-08-22 21:38:45'),
(421, '64e4a6527302e', 1, 'md', 'public/img/plants/64e4a652761c4.webp', '2023-08-22 21:43:06', '2023-08-22 21:43:06'),
(422, '64e4a6527302e', 1, 'lg', 'public/img/plants/64e4a652a3bfb.webp', '2023-08-22 21:43:06', '2023-08-22 21:43:06'),
(423, '64e5afd5829b9', 1, 'md', 'public/img/plants/64e5afd583c06.webp', '2023-08-23 16:35:57', '2023-08-23 16:35:57'),
(424, '64e5afd5829b9', 1, 'lg', 'public/img/plants/64e5afd5b6738.webp', '2023-08-23 16:35:58', '2023-08-23 16:35:58'),
(425, '64e5b033b3355', 1, 'md', 'public/img/plants/64e5b033b40aa.webp', '2023-08-23 16:37:31', '2023-08-23 16:37:31'),
(426, '64e5b033b3355', 1, 'lg', 'public/img/plants/64e5b033de174.webp', '2023-08-23 16:37:32', '2023-08-23 16:37:32'),
(427, '64e5b0a63dcde', 1, 'md', 'public/img/plants/64e5b0a63ed46.webp', '2023-08-23 16:39:26', '2023-08-23 16:39:26');
INSERT INTO `plant_imgs` (`id`, `pid`, `slno`, `type`, `image`, `created_at`, `updated_at`) VALUES
(428, '64e5b0a63dcde', 1, 'lg', 'public/img/plants/64e5b0a667ad8.webp', '2023-08-23 16:39:26', '2023-08-23 16:39:26'),
(429, '64e5b1608ea9e', 1, 'md', 'public/img/plants/64e5b1609011a.webp', '2023-08-23 16:42:32', '2023-08-23 16:42:32'),
(430, '64e5b1608ea9e', 1, 'lg', 'public/img/plants/64e5b160ba3d2.webp', '2023-08-23 16:42:33', '2023-08-23 16:42:33'),
(431, '64e5b306f1a4f', 1, 'md', 'public/img/plants/64e5b306f2db9.webp', '2023-08-23 16:49:35', '2023-08-23 16:49:35'),
(432, '64e5b306f1a4f', 1, 'lg', 'public/img/plants/64e5b30727e44.webp', '2023-08-23 16:49:35', '2023-08-23 16:49:35'),
(433, '64e5bb90f18da', 1, 'md', 'public/img/plants/64e5bb90f2bbd.webp', '2023-08-23 17:26:01', '2023-08-23 17:26:01'),
(434, '64e5bb90f18da', 1, 'lg', 'public/img/plants/64e5bb912cb13.webp', '2023-08-23 17:26:01', '2023-08-23 17:26:01'),
(435, '64e5bc4f2eb5a', 1, 'md', 'public/img/plants/64e5bc4f3044d.webp', '2023-08-23 17:29:11', '2023-08-23 17:29:11'),
(436, '64e5bc4f2eb5a', 1, 'lg', 'public/img/plants/64e5bc4f5b759.webp', '2023-08-23 17:29:11', '2023-08-23 17:29:11'),
(437, '64e5bd19a1ef6', 1, 'md', 'public/img/plants/64e5bd19a3014.webp', '2023-08-23 17:32:33', '2023-08-23 17:32:33'),
(438, '64e5bd19a1ef6', 1, 'lg', 'public/img/plants/64e5bd19cd93c.webp', '2023-08-23 17:32:34', '2023-08-23 17:32:34'),
(439, '64e5bd7173d48', 1, 'md', 'public/img/plants/64e5bd7174b7a.webp', '2023-08-23 17:34:01', '2023-08-23 17:34:01'),
(440, '64e5bd7173d48', 1, 'lg', 'public/img/plants/64e5bd719ed83.webp', '2023-08-23 17:34:01', '2023-08-23 17:34:01'),
(441, '64e5be282d9ec', 1, 'md', 'public/img/plants/64e5be282ebf7.webp', '2023-08-23 17:37:04', '2023-08-23 17:37:04'),
(442, '64e5be282d9ec', 1, 'lg', 'public/img/plants/64e5be2859fe8.webp', '2023-08-23 17:37:04', '2023-08-23 17:37:04'),
(443, '64e5bea761a19', 1, 'md', 'public/img/plants/64e5bea763170.webp', '2023-08-23 17:39:11', '2023-08-23 17:39:11'),
(444, '64e5bea761a19', 1, 'lg', 'public/img/plants/64e5bea78af98.webp', '2023-08-23 17:39:11', '2023-08-23 17:39:11'),
(445, '64e5bf092f3ae', 1, 'md', 'public/img/plants/64e5bf09302b4.webp', '2023-08-23 17:40:49', '2023-08-23 17:40:49'),
(446, '64e5bf092f3ae', 1, 'lg', 'public/img/plants/64e5bf095b3a3.webp', '2023-08-23 17:40:49', '2023-08-23 17:40:49'),
(447, '64e5bf7fd362b', 1, 'md', 'public/img/plants/64e5bf7fd4877.webp', '2023-08-23 17:42:48', '2023-08-23 17:42:48'),
(448, '64e5bf7fd362b', 1, 'lg', 'public/img/plants/64e5bf80074af.webp', '2023-08-23 17:42:48', '2023-08-23 17:42:48'),
(449, '64e5bfd0d58a3', 1, 'md', 'public/img/plants/64e5bfd0d6b45.webp', '2023-08-23 17:44:09', '2023-08-23 17:44:09'),
(450, '64e5bfd0d58a3', 1, 'lg', 'public/img/plants/64e5bfd10e279.webp', '2023-08-23 17:44:09', '2023-08-23 17:44:09'),
(451, '64e5c021e3d45', 1, 'md', 'public/img/plants/64e5c021e4c3d.webp', '2023-08-23 17:45:30', '2023-08-23 17:45:30'),
(452, '64e5c021e3d45', 1, 'lg', 'public/img/plants/64e5c0221f14c.webp', '2023-08-23 17:45:30', '2023-08-23 17:45:30'),
(453, '64e5c07cc4722', 1, 'md', 'public/img/plants/64e5c07cc55ef.webp', '2023-08-23 17:47:01', '2023-08-23 17:47:01'),
(454, '64e5c07cc4722', 1, 'lg', 'public/img/plants/64e5c07d025c5.webp', '2023-08-23 17:47:01', '2023-08-23 17:47:01'),
(455, '64e5c0c1e4d5c', 1, 'md', 'public/img/plants/64e5c0c1e702c.webp', '2023-08-23 17:48:10', '2023-08-23 17:48:10'),
(456, '64e5c0c1e4d5c', 1, 'lg', 'public/img/plants/64e5c0c242ec9.webp', '2023-08-23 17:48:10', '2023-08-23 17:48:10'),
(457, '64e5c10fb0d37', 1, 'md', 'public/img/plants/64e5c10fbb38c.webp', '2023-08-23 17:49:27', '2023-08-23 17:49:27'),
(458, '64e5c10fb0d37', 1, 'lg', 'public/img/plants/64e5c10fe6f1a.webp', '2023-08-23 17:49:28', '2023-08-23 17:49:28'),
(459, '64e5c15f39c81', 1, 'md', 'public/img/plants/64e5c15f3b958.webp', '2023-08-23 17:50:47', '2023-08-23 17:50:47'),
(460, '64e5c15f39c81', 1, 'lg', 'public/img/plants/64e5c15f64007.webp', '2023-08-23 17:50:47', '2023-08-23 17:50:47'),
(461, '64e5c1a954368', 1, 'md', 'public/img/plants/64e5c1a95532d.webp', '2023-08-23 17:52:01', '2023-08-23 17:52:01'),
(462, '64e5c1a954368', 1, 'lg', 'public/img/plants/64e5c1a97fce6.webp', '2023-08-23 17:52:01', '2023-08-23 17:52:01'),
(463, '64e5c210d8e1e', 1, 'md', 'public/img/plants/64e5c210d9f42.webp', '2023-08-23 17:53:45', '2023-08-23 17:53:45'),
(464, '64e5c210d8e1e', 1, 'lg', 'public/img/plants/64e5c2110f351.webp', '2023-08-23 17:53:45', '2023-08-23 17:53:45'),
(465, '64e5c24d18d05', 1, 'md', 'public/img/plants/64e5c24d1a866.webp', '2023-08-23 17:54:45', '2023-08-23 17:54:45'),
(466, '64e5c24d18d05', 1, 'lg', 'public/img/plants/64e5c24d4494c.webp', '2023-08-23 17:54:45', '2023-08-23 17:54:45'),
(467, '64e5c28f07bb2', 1, 'md', 'public/img/plants/64e5c28f091e7.webp', '2023-08-23 17:55:51', '2023-08-23 17:55:51'),
(468, '64e5c28f07bb2', 1, 'lg', 'public/img/plants/64e5c28f311d2.webp', '2023-08-23 17:55:51', '2023-08-23 17:55:51'),
(469, '64e5c2d03e1c5', 1, 'md', 'public/img/plants/64e5c2d03f5a6.webp', '2023-08-23 17:56:56', '2023-08-23 17:56:56'),
(470, '64e5c2d03e1c5', 1, 'lg', 'public/img/plants/64e5c2d067ddb.webp', '2023-08-23 17:56:56', '2023-08-23 17:56:56'),
(471, '64e5c32ac01d4', 1, 'md', 'public/img/plants/64e5c32ac1504.webp', '2023-08-23 17:58:26', '2023-08-23 17:58:26'),
(472, '64e5c32ac01d4', 1, 'lg', 'public/img/plants/64e5c32ae9bbe.webp', '2023-08-23 17:58:27', '2023-08-23 17:58:27'),
(473, '64e5c3736fe39', 1, 'md', 'public/img/plants/64e5c373712a8.webp', '2023-08-23 17:59:39', '2023-08-23 17:59:39'),
(474, '64e5c3736fe39', 1, 'lg', 'public/img/plants/64e5c3739cdd6.webp', '2023-08-23 17:59:39', '2023-08-23 17:59:39'),
(475, '64e5c3b827d78', 1, 'md', 'public/img/plants/64e5c3b828dc5.webp', '2023-08-23 18:00:48', '2023-08-23 18:00:48'),
(476, '64e5c3b827d78', 1, 'lg', 'public/img/plants/64e5c3b8568af.webp', '2023-08-23 18:00:48', '2023-08-23 18:00:48'),
(477, '64e5c41b14958', 1, 'md', 'public/img/plants/64e5c41b1562c.webp', '2023-08-23 18:02:27', '2023-08-23 18:02:27'),
(478, '64e5c41b14958', 1, 'lg', 'public/img/plants/64e5c41b3e118.webp', '2023-08-23 18:02:27', '2023-08-23 18:02:27'),
(479, '64e5c45529147', 1, 'md', 'public/img/plants/64e5c4552a0f0.webp', '2023-08-23 18:03:25', '2023-08-23 18:03:25'),
(480, '64e5c45529147', 1, 'lg', 'public/img/plants/64e5c4555133f.webp', '2023-08-23 18:03:25', '2023-08-23 18:03:25'),
(481, '64e5c4a3bb81a', 1, 'md', 'public/img/plants/64e5c4a3bcb76.webp', '2023-08-23 18:04:43', '2023-08-23 18:04:43'),
(482, '64e5c4a3bb81a', 1, 'lg', 'public/img/plants/64e5c4a3e4e03.webp', '2023-08-23 18:04:44', '2023-08-23 18:04:44'),
(483, '64e5c4ef60c1d', 1, 'md', 'public/img/plants/64e5c4ef61dd7.webp', '2023-08-23 18:05:59', '2023-08-23 18:05:59'),
(484, '64e5c4ef60c1d', 1, 'lg', 'public/img/plants/64e5c4ef8dd9a.webp', '2023-08-23 18:05:59', '2023-08-23 18:05:59'),
(485, '650a9b3bc0eb1', 1, 'md', 'public/img/plants/650a9b3bdca55.webp', '2023-09-20 07:11:56', '2023-09-20 07:11:56'),
(486, '650a9b3bc0eb1', 1, 'lg', 'public/img/plants/650a9b3c6316c.webp', '2023-09-20 07:11:56', '2023-09-20 07:11:56'),
(487, '650a9e7e54848', 1, 'md', 'public/img/plants/650a9e7e6e77d.webp', '2023-09-20 07:25:50', '2023-09-20 07:25:50'),
(488, '650a9e7e54848', 1, 'lg', 'public/img/plants/650a9e7ea6570.webp', '2023-09-20 07:25:50', '2023-09-20 07:25:50'),
(489, '650aa4cc4d63e', 1, 'md', 'public/img/plants/650aa4cc613cc.webp', '2023-09-20 07:52:44', '2023-09-20 07:52:44'),
(490, '650aa4cc4d63e', 1, 'lg', 'public/img/plants/650aa4cc9b5e1.webp', '2023-09-20 07:52:44', '2023-09-20 07:52:44'),
(491, '650aa57a62594', 1, 'md', 'public/img/plants/650aa57a793bf.webp', '2023-09-20 07:55:38', '2023-09-20 07:55:38'),
(492, '650aa57a62594', 1, 'lg', 'public/img/plants/650aa57abcd7f.webp', '2023-09-20 07:55:39', '2023-09-20 07:55:39'),
(493, '650aa6237592f', 1, 'md', 'public/img/plants/650aa623851d6.webp', '2023-09-20 07:58:27', '2023-09-20 07:58:27'),
(494, '650aa6237592f', 1, 'lg', 'public/img/plants/650aa623ef724.webp', '2023-09-20 07:58:28', '2023-09-20 07:58:28'),
(497, '650aa74087e7e', 1, 'md', 'public/img/plants/650aa7409ae83.webp', '2023-09-20 08:03:12', '2023-09-20 08:03:12'),
(498, '650aa74087e7e', 1, 'lg', 'public/img/plants/650aa740ebb37.webp', '2023-09-20 08:03:13', '2023-09-20 08:03:13'),
(509, '651e8e4037ac1', 1, 'md', 'public/img/plants/651e8e4038ee8.webp', '2023-10-05 19:51:52', '2023-10-05 19:51:52'),
(510, '651e8e4037ac1', 1, 'lg', 'public/img/plants/651e8e4056532.webp', '2023-10-05 19:51:52', '2023-10-05 19:51:52'),
(519, '651e922f011ca', 1, 'md', 'public/img/plants/651e922f02d4a.webp', '2023-10-05 20:08:39', '2023-10-05 20:08:39'),
(520, '651e922f011ca', 1, 'lg', 'public/img/plants/651e922f1f852.webp', '2023-10-05 20:08:39', '2023-10-05 20:08:39'),
(525, '651e9453751d5', 1, 'md', 'public/img/plants/651e9453761ec.webp', '2023-10-05 20:17:47', '2023-10-05 20:17:47'),
(526, '651e9453751d5', 1, 'lg', 'public/img/plants/651e945393b96.webp', '2023-10-05 20:17:47', '2023-10-05 20:17:47'),
(531, '651e8aa8c68e5', 1, 'md', 'public/img/plants/6548ee0b63655.webp', '2023-11-06 13:45:47', '2023-11-06 13:45:47'),
(532, '651e8aa8c68e5', 1, 'lg', 'public/img/plants/6548ee0baae63.webp', '2023-11-06 13:45:47', '2023-11-06 13:45:47'),
(533, '651e89947e5f2', 1, 'md', 'public/img/plants/6548ee2f1b3a0.webp', '2023-11-06 13:46:23', '2023-11-06 13:46:23'),
(534, '651e89947e5f2', 1, 'lg', 'public/img/plants/6548ee2f8e0b6.webp', '2023-11-06 13:46:23', '2023-11-06 13:46:23'),
(535, '651e8ea13fde8', 1, 'md', 'public/img/plants/6548ee55df455.webp', '2023-11-06 13:47:02', '2023-11-06 13:47:02'),
(536, '651e8ea13fde8', 1, 'lg', 'public/img/plants/6548ee56acb76.webp', '2023-11-06 13:47:02', '2023-11-06 13:47:02'),
(537, '651e8fbc7462f', 1, 'md', 'public/img/plants/6548ee962b356.webp', '2023-11-06 13:48:06', '2023-11-06 13:48:06'),
(538, '651e8fbc7462f', 1, 'lg', 'public/img/plants/6548ee96707d5.webp', '2023-11-06 13:48:06', '2023-11-06 13:48:06'),
(539, '651e914635595', 1, 'md', 'public/img/plants/6548eef5b93dc.webp', '2023-11-06 13:49:41', '2023-11-06 13:49:41'),
(540, '651e914635595', 1, 'lg', 'public/img/plants/6548eef60ee1c.webp', '2023-11-06 13:49:42', '2023-11-06 13:49:42'),
(541, '651e93a00eabd', 1, 'md', 'public/img/plants/6548ef1fd8886.webp', '2023-11-06 13:50:24', '2023-11-06 13:50:24'),
(542, '651e93a00eabd', 1, 'lg', 'public/img/plants/6548ef2025b78.webp', '2023-11-06 13:50:24', '2023-11-06 13:50:24'),
(543, '651e91a51416c', 1, 'md', 'public/img/plants/6548ef42ada6a.webp', '2023-11-06 13:50:58', '2023-11-06 13:50:58'),
(544, '651e91a51416c', 1, 'lg', 'public/img/plants/6548ef4308c1e.webp', '2023-11-06 13:50:59', '2023-11-06 13:50:59'),
(545, '651e8cbaddf07', 1, 'md', 'public/img/plants/6548ef5e8bdd6.webp', '2023-11-06 13:51:26', '2023-11-06 13:51:26'),
(546, '651e8cbaddf07', 1, 'lg', 'public/img/plants/6548ef5ed35fc.webp', '2023-11-06 13:51:26', '2023-11-06 13:51:26'),
(547, '651e8da7b02b2', 1, 'md', 'public/img/plants/6548ef79d488a.webp', '2023-11-06 13:51:54', '2023-11-06 13:51:54'),
(548, '651e8da7b02b2', 1, 'lg', 'public/img/plants/6548ef7a49f50.webp', '2023-11-06 13:51:54', '2023-11-06 13:51:54'),
(549, '651e92708d9ae', 1, 'md', 'public/img/plants/6548efa16c9ec.webp', '2023-11-06 13:52:33', '2023-11-06 13:52:33'),
(550, '651e92708d9ae', 1, 'lg', 'public/img/plants/6548efa1afdbd.webp', '2023-11-06 13:52:33', '2023-11-06 13:52:33'),
(557, '651e8aa8c68e5', 2, 'md', 'public/img/plants/6549f858dbaef.webp', '2023-11-07 08:42:00', '2023-11-07 08:42:00'),
(558, '651e8aa8c68e5', 2, 'lg', 'public/img/plants/6549f8590ff73.webp', '2023-11-07 08:42:01', '2023-11-07 08:42:01'),
(559, '651e8aa8c68e5', 3, 'md', 'public/img/plants/6549f85992fc7.webp', '2023-11-07 08:42:01', '2023-11-07 08:42:01'),
(560, '651e8aa8c68e5', 3, 'lg', 'public/img/plants/6549f859b1175.webp', '2023-11-07 08:42:01', '2023-11-07 08:42:01'),
(561, '651e89947e5f2', 2, 'md', 'public/img/plants/654a012a2e3be.webp', '2023-11-07 09:19:38', '2023-11-07 09:19:38'),
(562, '651e89947e5f2', 2, 'lg', 'public/img/plants/654a012a46be2.webp', '2023-11-07 09:19:38', '2023-11-07 09:19:38'),
(563, '651e89947e5f2', 3, 'md', 'public/img/plants/654a012a61c86.webp', '2023-11-07 09:19:38', '2023-11-07 09:19:38'),
(564, '651e89947e5f2', 3, 'lg', 'public/img/plants/654a012a7596a.webp', '2023-11-07 09:19:38', '2023-11-07 09:19:38'),
(565, '651e94b4b10b1', 1, 'md', 'public/img/plants/654a10895c721.webp', '2023-11-07 10:25:13', '2023-11-07 10:25:13'),
(566, '651e94b4b10b1', 1, 'lg', 'public/img/plants/654a1089a0b2a.webp', '2023-11-07 10:25:13', '2023-11-07 10:25:13'),
(567, '651e94b4b10b1', 2, 'md', 'public/img/plants/654a1089c5a7b.webp', '2023-11-07 10:25:13', '2023-11-07 10:25:13'),
(568, '651e94b4b10b1', 2, 'lg', 'public/img/plants/654a1089e5d93.webp', '2023-11-07 10:25:14', '2023-11-07 10:25:14'),
(569, '651e94b4b10b1', 3, 'md', 'public/img/plants/654a108a686c3.webp', '2023-11-07 10:25:14', '2023-11-07 10:25:14'),
(570, '651e94b4b10b1', 3, 'lg', 'public/img/plants/654a108a86304.webp', '2023-11-07 10:25:14', '2023-11-07 10:25:14'),
(571, '64e451916feb6', 2, 'md', 'public/img/plants/654a2c8503405.webp', '2023-11-07 12:24:37', '2023-11-07 12:24:37'),
(572, '64e451916feb6', 2, 'lg', 'public/img/plants/654a2c8561de5.webp', '2023-11-07 12:24:37', '2023-11-07 12:24:37'),
(573, '64e451916feb6', 3, 'md', 'public/img/plants/654a2c858f1fc.webp', '2023-11-07 12:24:37', '2023-11-07 12:24:37'),
(574, '64e451916feb6', 3, 'lg', 'public/img/plants/654a2c85b9841.webp', '2023-11-07 12:24:37', '2023-11-07 12:24:37'),
(587, '650aa69e4e181', 1, 'md', 'public/img/plants/654b598bae717.webp', '2023-11-08 09:48:59', '2023-11-08 09:48:59'),
(588, '650aa69e4e181', 1, 'lg', 'public/img/plants/654b598be9e53.webp', '2023-11-08 09:49:00', '2023-11-08 09:49:00'),
(589, '650aa69e4e181', 2, 'md', 'public/img/plants/654b598c430e0.webp', '2023-11-08 09:49:00', '2023-11-08 09:49:00'),
(590, '650aa69e4e181', 2, 'lg', 'public/img/plants/654b598c56f19.webp', '2023-11-08 09:49:00', '2023-11-08 09:49:00'),
(591, '650aa69e4e181', 3, 'md', 'public/img/plants/654b598c82207.webp', '2023-11-08 09:49:00', '2023-11-08 09:49:00'),
(592, '650aa69e4e181', 3, 'lg', 'public/img/plants/654b598c9610b.webp', '2023-11-08 09:49:00', '2023-11-08 09:49:00'),
(593, '654dd33ff3998', 1, 'md', 'public/img/plants/654dd3400065f.webp', '2023-11-10 17:22:48', '2023-11-10 17:22:48'),
(594, '654dd33ff3998', 1, 'lg', 'public/img/plants/654dd34028df4.webp', '2023-11-10 17:22:48', '2023-11-10 17:22:48'),
(595, '654dd3afccf3d', 1, 'md', 'public/img/plants/654dd3afce5d2.webp', '2023-11-10 17:24:40', '2023-11-10 17:24:40'),
(596, '654dd3afccf3d', 1, 'lg', 'public/img/plants/654dd3b004aa3.webp', '2023-11-10 17:24:40', '2023-11-10 17:24:40'),
(597, '654dd458dc4df', 1, 'md', 'public/img/plants/654dd458de510.webp', '2023-11-10 17:27:29', '2023-11-10 17:27:29'),
(598, '654dd458dc4df', 1, 'lg', 'public/img/plants/654dd4591a7e9.webp', '2023-11-10 17:27:29', '2023-11-10 17:27:29'),
(599, '654dd48b8285d', 1, 'md', 'public/img/plants/654dd48b83dd9.webp', '2023-11-10 17:28:19', '2023-11-10 17:28:19'),
(600, '654dd48b8285d', 1, 'lg', 'public/img/plants/654dd48babfd5.webp', '2023-11-10 17:28:19', '2023-11-10 17:28:19'),
(601, '654dd5668ceed', 1, 'md', 'public/img/plants/654dd5668ead2.webp', '2023-11-10 17:31:58', '2023-11-10 17:31:58'),
(602, '654dd5668ceed', 1, 'lg', 'public/img/plants/654dd566c04d8.webp', '2023-11-10 17:31:59', '2023-11-10 17:31:59'),
(603, '654dd58ec69ef', 1, 'md', 'public/img/plants/654dd58ec8969.webp', '2023-11-10 17:32:38', '2023-11-10 17:32:38'),
(604, '654dd58ec69ef', 1, 'lg', 'public/img/plants/654dd58ef1e56.webp', '2023-11-10 17:32:39', '2023-11-10 17:32:39'),
(605, '654dd5ca15796', 1, 'md', 'public/img/plants/654dd5ca16faa.webp', '2023-11-10 17:33:38', '2023-11-10 17:33:38'),
(606, '654dd5ca15796', 1, 'lg', 'public/img/plants/654dd5ca44600.webp', '2023-11-10 17:33:38', '2023-11-10 17:33:38'),
(607, '654dd60fa9084', 1, 'md', 'public/img/plants/654dd60faa097.webp', '2023-11-10 17:34:47', '2023-11-10 17:34:47'),
(608, '654dd60fa9084', 1, 'lg', 'public/img/plants/654dd60fd41f7.webp', '2023-11-10 17:34:48', '2023-11-10 17:34:48'),
(609, '654dd634362be', 1, 'md', 'public/img/plants/654dd63437c3b.webp', '2023-11-10 17:35:24', '2023-11-10 17:35:24'),
(610, '654dd634362be', 1, 'lg', 'public/img/plants/654dd634628a2.webp', '2023-11-10 17:35:24', '2023-11-10 17:35:24'),
(611, '654dd654c309d', 1, 'md', 'public/img/plants/654dd654c4214.webp', '2023-11-10 17:35:56', '2023-11-10 17:35:56'),
(612, '654dd654c309d', 1, 'lg', 'public/img/plants/654dd654eca43.webp', '2023-11-10 17:35:57', '2023-11-10 17:35:57'),
(613, '654dd6e3e7d64', 1, 'md', 'public/img/plants/654dd6e3e8d40.webp', '2023-11-10 17:38:20', '2023-11-10 17:38:20'),
(614, '654dd6e3e7d64', 1, 'lg', 'public/img/plants/654dd6e41ec7e.webp', '2023-11-10 17:38:20', '2023-11-10 17:38:20'),
(615, '654dd71d797ea', 1, 'md', 'public/img/plants/654dd71d7ac7f.webp', '2023-11-10 17:39:17', '2023-11-10 17:39:17'),
(616, '654dd71d797ea', 1, 'lg', 'public/img/plants/654dd71da2446.webp', '2023-11-10 17:39:17', '2023-11-10 17:39:17'),
(617, '654dd75d05aca', 1, 'md', 'public/img/plants/654dd75d07213.webp', '2023-11-10 17:40:21', '2023-11-10 17:40:21'),
(618, '654dd75d05aca', 1, 'lg', 'public/img/plants/654dd75d32112.webp', '2023-11-10 17:40:21', '2023-11-10 17:40:21'),
(619, '654dd789eb916', 1, 'md', 'public/img/plants/654dd789ec733.webp', '2023-11-10 17:41:06', '2023-11-10 17:41:06'),
(620, '654dd789eb916', 1, 'lg', 'public/img/plants/654dd78a22827.webp', '2023-11-10 17:41:06', '2023-11-10 17:41:06'),
(621, '654dd7efac959', 1, 'md', 'public/img/plants/654dd7efaddce.webp', '2023-11-10 17:42:47', '2023-11-10 17:42:47'),
(622, '654dd7efac959', 1, 'lg', 'public/img/plants/654dd7efd9a2e.webp', '2023-11-10 17:42:48', '2023-11-10 17:42:48'),
(623, '654dd8296a335', 1, 'md', 'public/img/plants/654dd8296b25e.webp', '2023-11-10 17:43:45', '2023-11-10 17:43:45'),
(624, '654dd8296a335', 1, 'lg', 'public/img/plants/654dd82992a05.webp', '2023-11-10 17:43:45', '2023-11-10 17:43:45'),
(625, '654dd85945c9e', 1, 'md', 'public/img/plants/654dd859481e7.webp', '2023-11-10 17:44:33', '2023-11-10 17:44:33'),
(626, '654dd85945c9e', 1, 'lg', 'public/img/plants/654dd85972589.webp', '2023-11-10 17:44:33', '2023-11-10 17:44:33'),
(627, '654dd88b25ea8', 1, 'md', 'public/img/plants/654dd88b27582.webp', '2023-11-10 17:45:23', '2023-11-10 17:45:23'),
(628, '654dd88b25ea8', 1, 'lg', 'public/img/plants/654dd88b52691.webp', '2023-11-10 17:45:23', '2023-11-10 17:45:23'),
(629, '654dd8d9943b6', 1, 'md', 'public/img/plants/654dd8d9952ad.webp', '2023-11-10 17:46:41', '2023-11-10 17:46:41'),
(630, '654dd8d9943b6', 1, 'lg', 'public/img/plants/654dd8d9c21cd.webp', '2023-11-10 17:46:42', '2023-11-10 17:46:42'),
(631, '654dd93597793', 1, 'md', 'public/img/plants/654dd9359a256.webp', '2023-11-10 17:48:13', '2023-11-10 17:48:13'),
(632, '654dd93597793', 1, 'lg', 'public/img/plants/654dd935c7421.webp', '2023-11-10 17:48:14', '2023-11-10 17:48:14'),
(633, '654dd9be629be', 1, 'md', 'public/img/plants/654dd9be63c1d.webp', '2023-11-10 17:50:30', '2023-11-10 17:50:30'),
(634, '654dd9be629be', 1, 'lg', 'public/img/plants/654dd9be985b9.webp', '2023-11-10 17:50:30', '2023-11-10 17:50:30'),
(635, '654dda3156ad8', 1, 'md', 'public/img/plants/654dda3157657.webp', '2023-11-10 17:52:25', '2023-11-10 17:52:25'),
(636, '654dda3156ad8', 1, 'lg', 'public/img/plants/654dda3181675.webp', '2023-11-10 17:52:25', '2023-11-10 17:52:25'),
(637, '654dda66c132d', 1, 'md', 'public/img/plants/654dda66c23c2.webp', '2023-11-10 17:53:18', '2023-11-10 17:53:18'),
(638, '654dda66c132d', 1, 'lg', 'public/img/plants/654dda66eef51.webp', '2023-11-10 17:53:19', '2023-11-10 17:53:19'),
(639, '654ddaa033d72', 1, 'md', 'public/img/plants/654ddaa034d46.webp', '2023-11-10 17:54:16', '2023-11-10 17:54:16'),
(640, '654ddaa033d72', 1, 'lg', 'public/img/plants/654ddaa0625c0.webp', '2023-11-10 17:54:16', '2023-11-10 17:54:16'),
(641, '654ddcd859e7c', 1, 'md', 'public/img/plants/654ddcd85ad4f.webp', '2023-11-10 18:03:44', '2023-11-10 18:03:44'),
(642, '654ddcd859e7c', 1, 'lg', 'public/img/plants/654ddcd882bf2.webp', '2023-11-10 18:03:44', '2023-11-10 18:03:44'),
(643, '654ddd084afd5', 1, 'md', 'public/img/plants/654ddd084c4ef.webp', '2023-11-10 18:04:32', '2023-11-10 18:04:32'),
(644, '654ddd084afd5', 1, 'lg', 'public/img/plants/654ddd0875273.webp', '2023-11-10 18:04:32', '2023-11-10 18:04:32'),
(645, '654ddd57dd513', 1, 'md', 'public/img/plants/654ddd57de3af.webp', '2023-11-10 18:05:52', '2023-11-10 18:05:52'),
(646, '654ddd57dd513', 1, 'lg', 'public/img/plants/654ddd5815628.webp', '2023-11-10 18:05:52', '2023-11-10 18:05:52'),
(647, '654ddd803b99f', 1, 'md', 'public/img/plants/654ddd803d195.webp', '2023-11-10 18:06:32', '2023-11-10 18:06:32'),
(648, '654ddd803b99f', 1, 'lg', 'public/img/plants/654ddd8065928.webp', '2023-11-10 18:06:32', '2023-11-10 18:06:32'),
(649, '654ddda940f2e', 1, 'md', 'public/img/plants/654ddda941cb6.webp', '2023-11-10 18:07:13', '2023-11-10 18:07:13'),
(650, '654ddda940f2e', 1, 'lg', 'public/img/plants/654ddda96df19.webp', '2023-11-10 18:07:13', '2023-11-10 18:07:13'),
(651, '654dddd121d96', 1, 'md', 'public/img/plants/654dddd12372c.webp', '2023-11-10 18:07:53', '2023-11-10 18:07:53'),
(652, '654dddd121d96', 1, 'lg', 'public/img/plants/654dddd14ca28.webp', '2023-11-10 18:07:53', '2023-11-10 18:07:53'),
(653, '654de81c4365b', 1, 'md', 'public/img/plants/654de81c444b5.webp', '2023-11-10 18:51:48', '2023-11-10 18:51:48'),
(654, '654de81c4365b', 1, 'lg', 'public/img/plants/654de81c6db9c.webp', '2023-11-10 18:51:48', '2023-11-10 18:51:48'),
(655, '654de8b35fd64', 1, 'md', 'public/img/plants/654de8b3610a6.webp', '2023-11-10 18:54:19', '2023-11-10 18:54:19'),
(656, '654de8b35fd64', 1, 'lg', 'public/img/plants/654de8b38d87e.webp', '2023-11-10 18:54:19', '2023-11-10 18:54:19'),
(657, '654de921cb847', 1, 'md', 'public/img/plants/654de921cc5d8.webp', '2023-11-10 18:56:10', '2023-11-10 18:56:10'),
(658, '654de921cb847', 1, 'lg', 'public/img/plants/654de92202337.webp', '2023-11-10 18:56:10', '2023-11-10 18:56:10'),
(659, '654de9fe0f76f', 1, 'md', 'public/img/plants/654de9fe1168f.webp', '2023-11-10 18:59:50', '2023-11-10 18:59:50'),
(660, '654de9fe0f76f', 1, 'lg', 'public/img/plants/654de9fe3d09d.webp', '2023-11-10 18:59:50', '2023-11-10 18:59:50'),
(661, '654dea597cea8', 1, 'md', 'public/img/plants/654dea597dcd5.webp', '2023-11-10 19:01:21', '2023-11-10 19:01:21'),
(662, '654dea597cea8', 1, 'lg', 'public/img/plants/654dea59a6173.webp', '2023-11-10 19:01:21', '2023-11-10 19:01:21'),
(663, '654dea965cb50', 1, 'md', 'public/img/plants/654dea965df5a.webp', '2023-11-10 19:02:22', '2023-11-10 19:02:22'),
(664, '654dea965cb50', 1, 'lg', 'public/img/plants/654dea9689022.webp', '2023-11-10 19:02:22', '2023-11-10 19:02:22'),
(665, '654deb2a03a3d', 1, 'md', 'public/img/plants/654deb2a0603e.webp', '2023-11-10 19:04:50', '2023-11-10 19:04:50'),
(666, '654deb2a03a3d', 1, 'lg', 'public/img/plants/654deb2a30f10.webp', '2023-11-10 19:04:50', '2023-11-10 19:04:50'),
(667, '654debca1fc78', 1, 'md', 'public/img/plants/654debca20ce9.webp', '2023-11-10 19:07:30', '2023-11-10 19:07:30'),
(668, '654debca1fc78', 1, 'lg', 'public/img/plants/654debca4aa29.webp', '2023-11-10 19:07:30', '2023-11-10 19:07:30'),
(669, '654dec019f514', 1, 'md', 'public/img/plants/654dec01a0361.webp', '2023-11-10 19:08:25', '2023-11-10 19:08:25'),
(670, '654dec019f514', 1, 'lg', 'public/img/plants/654dec01c79d0.webp', '2023-11-10 19:08:26', '2023-11-10 19:08:26'),
(671, '654dec58652bd', 1, 'md', 'public/img/plants/654dec5866679.webp', '2023-11-10 19:09:52', '2023-11-10 19:09:52'),
(672, '654dec58652bd', 1, 'lg', 'public/img/plants/654dec58917a3.webp', '2023-11-10 19:09:52', '2023-11-10 19:09:52'),
(673, '654decc0777cb', 1, 'md', 'public/img/plants/654decc078c32.webp', '2023-11-10 19:11:36', '2023-11-10 19:11:36'),
(674, '654decc0777cb', 1, 'lg', 'public/img/plants/654decc0a5297.webp', '2023-11-10 19:11:36', '2023-11-10 19:11:36'),
(675, '654decfcdcd83', 1, 'md', 'public/img/plants/654decfcdee42.webp', '2023-11-10 19:12:37', '2023-11-10 19:12:37'),
(676, '654decfcdcd83', 1, 'lg', 'public/img/plants/654decfd15589.webp', '2023-11-10 19:12:37', '2023-11-10 19:12:37'),
(677, '654df5a94eaa8', 1, 'md', 'public/img/plants/654df5a95038b.webp', '2023-11-10 19:49:37', '2023-11-10 19:49:37'),
(678, '654df5a94eaa8', 1, 'lg', 'public/img/plants/654df5a97c4c8.webp', '2023-11-10 19:49:37', '2023-11-10 19:49:37'),
(679, '654df5f4ba911', 1, 'md', 'public/img/plants/654df5f4bbe04.webp', '2023-11-10 19:50:52', '2023-11-10 19:50:52'),
(680, '654df5f4ba911', 1, 'lg', 'public/img/plants/654df5f4e8a08.webp', '2023-11-10 19:50:53', '2023-11-10 19:50:53'),
(681, '654df6372fd8b', 1, 'md', 'public/img/plants/654df63730ff6.webp', '2023-11-10 19:51:59', '2023-11-10 19:51:59'),
(682, '654df6372fd8b', 1, 'lg', 'public/img/plants/654df6375847b.webp', '2023-11-10 19:51:59', '2023-11-10 19:51:59'),
(683, '654df66f37b5f', 1, 'md', 'public/img/plants/654df66f38ccc.webp', '2023-11-10 19:52:55', '2023-11-10 19:52:55'),
(684, '654df66f37b5f', 1, 'lg', 'public/img/plants/654df66f6273c.webp', '2023-11-10 19:52:55', '2023-11-10 19:52:55'),
(685, '654df6b15a2b6', 1, 'md', 'public/img/plants/654df6b15b0bd.webp', '2023-11-10 19:54:01', '2023-11-10 19:54:01'),
(686, '654df6b15a2b6', 1, 'lg', 'public/img/plants/654df6b185360.webp', '2023-11-10 19:54:01', '2023-11-10 19:54:01'),
(687, '654df711ce082', 1, 'md', 'public/img/plants/654df711cf203.webp', '2023-11-10 19:55:38', '2023-11-10 19:55:38'),
(688, '654df711ce082', 1, 'lg', 'public/img/plants/654df71209736.webp', '2023-11-10 19:55:38', '2023-11-10 19:55:38'),
(689, '654df750b4105', 1, 'md', 'public/img/plants/654df750b512e.webp', '2023-11-10 19:56:40', '2023-11-10 19:56:40'),
(690, '654df750b4105', 1, 'lg', 'public/img/plants/654df750e4b4c.webp', '2023-11-10 19:56:41', '2023-11-10 19:56:41'),
(691, '654df797de3b4', 1, 'md', 'public/img/plants/654df797df765.webp', '2023-11-10 19:57:52', '2023-11-10 19:57:52'),
(692, '654df797de3b4', 1, 'lg', 'public/img/plants/654df79813b83.webp', '2023-11-10 19:57:52', '2023-11-10 19:57:52'),
(693, '654df7d37c0c8', 1, 'md', 'public/img/plants/654df7d37e0af.webp', '2023-11-10 19:58:51', '2023-11-10 19:58:51'),
(694, '654df7d37c0c8', 1, 'lg', 'public/img/plants/654df7d3a6e2d.webp', '2023-11-10 19:58:51', '2023-11-10 19:58:51'),
(695, '654df81b3c406', 1, 'md', 'public/img/plants/654df81b3d4ca.webp', '2023-11-10 20:00:03', '2023-11-10 20:00:03'),
(696, '654df81b3c406', 1, 'lg', 'public/img/plants/654df81b6b4bf.webp', '2023-11-10 20:00:03', '2023-11-10 20:00:03'),
(697, '654df8654ca5f', 1, 'md', 'public/img/plants/654df8654da2e.webp', '2023-11-10 20:01:17', '2023-11-10 20:01:17'),
(698, '654df8654ca5f', 1, 'lg', 'public/img/plants/654df86576c1f.webp', '2023-11-10 20:01:17', '2023-11-10 20:01:17'),
(699, '654df8c55193c', 1, 'md', 'public/img/plants/654df8c552f5e.webp', '2023-11-10 20:02:53', '2023-11-10 20:02:53'),
(700, '654df8c55193c', 1, 'lg', 'public/img/plants/654df8c580306.webp', '2023-11-10 20:02:53', '2023-11-10 20:02:53'),
(701, '654df8f5c2060', 1, 'md', 'public/img/plants/654df8f5c311a.webp', '2023-11-10 20:03:41', '2023-11-10 20:03:41'),
(702, '654df8f5c2060', 1, 'lg', 'public/img/plants/654df8f5f0740.webp', '2023-11-10 20:03:42', '2023-11-10 20:03:42'),
(703, '654df93c198cb', 1, 'md', 'public/img/plants/654df93c1aaf4.webp', '2023-11-10 20:04:52', '2023-11-10 20:04:52'),
(704, '654df93c198cb', 1, 'lg', 'public/img/plants/654df93c42359.webp', '2023-11-10 20:04:52', '2023-11-10 20:04:52'),
(705, '654df9780a4bf', 1, 'md', 'public/img/plants/654df9780b53f.webp', '2023-11-10 20:05:52', '2023-11-10 20:05:52'),
(706, '654df9780a4bf', 1, 'lg', 'public/img/plants/654df97833a96.webp', '2023-11-10 20:05:52', '2023-11-10 20:05:52'),
(707, '654df9964cdd2', 1, 'md', 'public/img/plants/654df9964dc44.webp', '2023-11-10 20:06:22', '2023-11-10 20:06:22'),
(708, '654df9964cdd2', 1, 'lg', 'public/img/plants/654df996760f9.webp', '2023-11-10 20:06:22', '2023-11-10 20:06:22'),
(709, '654df9fc4bd3e', 1, 'md', 'public/img/plants/654df9fc4d3f0.webp', '2023-11-10 20:08:04', '2023-11-10 20:08:04'),
(710, '654df9fc4bd3e', 1, 'lg', 'public/img/plants/654df9fc7759b.webp', '2023-11-10 20:08:04', '2023-11-10 20:08:04'),
(711, '654dfbb4bbb78', 1, 'md', 'public/img/plants/654dfbb4bc9d2.webp', '2023-11-10 20:15:24', '2023-11-10 20:15:24'),
(712, '654dfbb4bbb78', 1, 'lg', 'public/img/plants/654dfbb4e8d25.webp', '2023-11-10 20:15:25', '2023-11-10 20:15:25'),
(713, '654e01e81531d', 1, 'md', 'public/img/plants/654e01e816473.webp', '2023-11-10 20:41:52', '2023-11-10 20:41:52'),
(714, '654e01e81531d', 1, 'lg', 'public/img/plants/654e01e84412f.webp', '2023-11-10 20:41:52', '2023-11-10 20:41:52'),
(715, '654e026595c39', 1, 'md', 'public/img/plants/654e026596b17.webp', '2023-11-10 20:43:57', '2023-11-10 20:43:57'),
(716, '654e026595c39', 1, 'lg', 'public/img/plants/654e0265c6f3a.webp', '2023-11-10 20:43:58', '2023-11-10 20:43:58'),
(717, '654e030e2f060', 1, 'md', 'public/img/plants/654e030e2ffde.webp', '2023-11-10 20:46:46', '2023-11-10 20:46:46'),
(718, '654e030e2f060', 1, 'lg', 'public/img/plants/654e030e5a42d.webp', '2023-11-10 20:46:46', '2023-11-10 20:46:46'),
(719, '654e0366b032a', 1, 'md', 'public/img/plants/654e0366b1fe2.webp', '2023-11-10 20:48:14', '2023-11-10 20:48:14'),
(720, '654e0366b032a', 1, 'lg', 'public/img/plants/654e0366e2e17.webp', '2023-11-10 20:48:15', '2023-11-10 20:48:15'),
(721, '654e03acf2824', 1, 'md', 'public/img/plants/654e03acf35c2.webp', '2023-11-10 20:49:25', '2023-11-10 20:49:25'),
(722, '654e03acf2824', 1, 'lg', 'public/img/plants/654e03ad2b22c.webp', '2023-11-10 20:49:25', '2023-11-10 20:49:25'),
(723, '654e040529101', 1, 'md', 'public/img/plants/654e04052a09b.webp', '2023-11-10 20:50:53', '2023-11-10 20:50:53'),
(724, '654e040529101', 1, 'lg', 'public/img/plants/654e040554bdf.webp', '2023-11-10 20:50:53', '2023-11-10 20:50:53'),
(725, '654e04464a1b9', 1, 'md', 'public/img/plants/654e04464af0a.webp', '2023-11-10 20:51:58', '2023-11-10 20:51:58'),
(726, '654e04464a1b9', 1, 'lg', 'public/img/plants/654e04467602b.webp', '2023-11-10 20:51:58', '2023-11-10 20:51:58'),
(727, '654e0486e2c33', 1, 'md', 'public/img/plants/654e0486e3c1e.webp', '2023-11-10 20:53:03', '2023-11-10 20:53:03'),
(728, '654e0486e2c33', 1, 'lg', 'public/img/plants/654e048719ad8.webp', '2023-11-10 20:53:03', '2023-11-10 20:53:03'),
(729, '654e04dc6632e', 1, 'md', 'public/img/plants/654e04dc6725f.webp', '2023-11-10 20:54:28', '2023-11-10 20:54:28'),
(730, '654e04dc6632e', 1, 'lg', 'public/img/plants/654e04dc8eda4.webp', '2023-11-10 20:54:28', '2023-11-10 20:54:28'),
(731, '654e050a802c9', 1, 'md', 'public/img/plants/654e050a81017.webp', '2023-11-10 20:55:14', '2023-11-10 20:55:14'),
(732, '654e050a802c9', 1, 'lg', 'public/img/plants/654e050aa9045.webp', '2023-11-10 20:55:14', '2023-11-10 20:55:14'),
(733, '654e054cd42da', 1, 'md', 'public/img/plants/654e054cd5f76.webp', '2023-11-10 20:56:21', '2023-11-10 20:56:21'),
(734, '654e054cd42da', 1, 'lg', 'public/img/plants/654e054d0d98e.webp', '2023-11-10 20:56:21', '2023-11-10 20:56:21'),
(735, '654e07c0340cd', 1, 'md', 'public/img/plants/654e07c034ed9.webp', '2023-11-10 21:06:48', '2023-11-10 21:06:48'),
(736, '654e07c0340cd', 1, 'lg', 'public/img/plants/654e07c05d44b.webp', '2023-11-10 21:06:48', '2023-11-10 21:06:48'),
(737, '654e07ff6e37c', 1, 'md', 'public/img/plants/654e07ff6f6ca.webp', '2023-11-10 21:07:51', '2023-11-10 21:07:51'),
(738, '654e07ff6e37c', 1, 'lg', 'public/img/plants/654e07ff9a021.webp', '2023-11-10 21:07:51', '2023-11-10 21:07:51'),
(739, '654e085084e60', 1, 'md', 'public/img/plants/654e085085f5c.webp', '2023-11-10 21:09:12', '2023-11-10 21:09:12'),
(740, '654e085084e60', 1, 'lg', 'public/img/plants/654e0850adc53.webp', '2023-11-10 21:09:12', '2023-11-10 21:09:12'),
(741, '654e0bb36b064', 1, 'md', 'public/img/plants/654e0bb36bcb8.webp', '2023-11-10 21:23:39', '2023-11-10 21:23:39'),
(742, '654e0bb36b064', 1, 'lg', 'public/img/plants/654e0bb3944f8.webp', '2023-11-10 21:23:39', '2023-11-10 21:23:39'),
(743, '654e0be1676cd', 1, 'md', 'public/img/plants/654e0be168d6d.webp', '2023-11-10 21:24:25', '2023-11-10 21:24:25'),
(744, '654e0be1676cd', 1, 'lg', 'public/img/plants/654e0be192830.webp', '2023-11-10 21:24:25', '2023-11-10 21:24:25'),
(745, '654e0c0280152', 1, 'md', 'public/img/plants/654e0c0281171.webp', '2023-11-10 21:24:58', '2023-11-10 21:24:58'),
(746, '654e0c0280152', 1, 'lg', 'public/img/plants/654e0c02ac24c.webp', '2023-11-10 21:24:58', '2023-11-10 21:24:58'),
(747, '654e0c2904ac7', 1, 'md', 'public/img/plants/654e0c29062f0.webp', '2023-11-10 21:25:37', '2023-11-10 21:25:37'),
(748, '654e0c2904ac7', 1, 'lg', 'public/img/plants/654e0c2938ecf.webp', '2023-11-10 21:25:37', '2023-11-10 21:25:37'),
(749, '654e0c7ecb994', 1, 'md', 'public/img/plants/654e0c7eccb6c.webp', '2023-11-10 21:27:03', '2023-11-10 21:27:03'),
(750, '654e0c7ecb994', 1, 'lg', 'public/img/plants/654e0c7f00c0b.webp', '2023-11-10 21:27:03', '2023-11-10 21:27:03'),
(751, '654e0cb165cbc', 1, 'md', 'public/img/plants/654e0cb166de0.webp', '2023-11-10 21:27:53', '2023-11-10 21:27:53'),
(752, '654e0cb165cbc', 1, 'lg', 'public/img/plants/654e0cb18f263.webp', '2023-11-10 21:27:53', '2023-11-10 21:27:53'),
(753, '654e0ce47ffc5', 1, 'md', 'public/img/plants/654e0ce481394.webp', '2023-11-10 21:28:44', '2023-11-10 21:28:44'),
(754, '654e0ce47ffc5', 1, 'lg', 'public/img/plants/654e0ce4aa1ae.webp', '2023-11-10 21:28:44', '2023-11-10 21:28:44'),
(755, '654e0d027a262', 1, 'md', 'public/img/plants/654e0d027bc85.webp', '2023-11-10 21:29:14', '2023-11-10 21:29:14'),
(756, '654e0d027a262', 1, 'lg', 'public/img/plants/654e0d02a6abd.webp', '2023-11-10 21:29:14', '2023-11-10 21:29:14'),
(757, '654e0d3653c9b', 1, 'md', 'public/img/plants/654e0d3655742.webp', '2023-11-10 21:30:06', '2023-11-10 21:30:06'),
(758, '654e0d3653c9b', 1, 'lg', 'public/img/plants/654e0d368614e.webp', '2023-11-10 21:30:06', '2023-11-10 21:30:06'),
(759, '654e0d6656f4a', 1, 'md', 'public/img/plants/654e0d6657db9.webp', '2023-11-10 21:30:54', '2023-11-10 21:30:54'),
(760, '654e0d6656f4a', 1, 'lg', 'public/img/plants/654e0d667dace.webp', '2023-11-10 21:30:54', '2023-11-10 21:30:54'),
(761, '654e0d838456b', 1, 'md', 'public/img/plants/654e0d838518a.webp', '2023-11-10 21:31:23', '2023-11-10 21:31:23'),
(762, '654e0d838456b', 1, 'lg', 'public/img/plants/654e0d83afdbd.webp', '2023-11-10 21:31:23', '2023-11-10 21:31:23'),
(763, '654e0dac455f9', 1, 'md', 'public/img/plants/654e0dac464cd.webp', '2023-11-10 21:32:04', '2023-11-10 21:32:04'),
(764, '654e0dac455f9', 1, 'lg', 'public/img/plants/654e0dac7105c.webp', '2023-11-10 21:32:04', '2023-11-10 21:32:04'),
(765, '654e0dd0df709', 1, 'md', 'public/img/plants/654e0dd0e0900.webp', '2023-11-10 21:32:41', '2023-11-10 21:32:41'),
(766, '654e0dd0df709', 1, 'lg', 'public/img/plants/654e0dd115136.webp', '2023-11-10 21:32:41', '2023-11-10 21:32:41'),
(767, '654e0dec78601', 1, 'md', 'public/img/plants/654e0dec79897.webp', '2023-11-10 21:33:08', '2023-11-10 21:33:08'),
(768, '654e0dec78601', 1, 'lg', 'public/img/plants/654e0deca0948.webp', '2023-11-10 21:33:08', '2023-11-10 21:33:08'),
(769, '654e0e0e0fe9d', 1, 'md', 'public/img/plants/654e0e0e10b32.webp', '2023-11-10 21:33:42', '2023-11-10 21:33:42'),
(770, '654e0e0e0fe9d', 1, 'lg', 'public/img/plants/654e0e0e3b38f.webp', '2023-11-10 21:33:42', '2023-11-10 21:33:42'),
(771, '654e0e3fb0db0', 1, 'md', 'public/img/plants/654e0e3fb2eba.webp', '2023-11-10 21:34:31', '2023-11-10 21:34:31'),
(772, '654e0e3fb0db0', 1, 'lg', 'public/img/plants/654e0e3fdcb3c.webp', '2023-11-10 21:34:32', '2023-11-10 21:34:32'),
(773, '654e0e678d8e6', 1, 'md', 'public/img/plants/654e0e678e7a6.webp', '2023-11-10 21:35:11', '2023-11-10 21:35:11'),
(774, '654e0e678d8e6', 1, 'lg', 'public/img/plants/654e0e67b6ef0.webp', '2023-11-10 21:35:11', '2023-11-10 21:35:11'),
(775, '654e0e843e926', 1, 'md', 'public/img/plants/654e0e84400e3.webp', '2023-11-10 21:35:40', '2023-11-10 21:35:40'),
(776, '654e0e843e926', 1, 'lg', 'public/img/plants/654e0e846b0a1.webp', '2023-11-10 21:35:40', '2023-11-10 21:35:40'),
(777, '654e0ea60e060', 1, 'md', 'public/img/plants/654e0ea60ee5f.webp', '2023-11-10 21:36:14', '2023-11-10 21:36:14'),
(778, '654e0ea60e060', 1, 'lg', 'public/img/plants/654e0ea63786a.webp', '2023-11-10 21:36:14', '2023-11-10 21:36:14'),
(779, '654e0eccf161e', 1, 'md', 'public/img/plants/654e0eccf25b8.webp', '2023-11-10 21:36:53', '2023-11-10 21:36:53'),
(780, '654e0eccf161e', 1, 'lg', 'public/img/plants/654e0ecd28397.webp', '2023-11-10 21:36:53', '2023-11-10 21:36:53'),
(781, '654e0efd42b92', 1, 'md', 'public/img/plants/654e0efd44117.webp', '2023-11-10 21:37:41', '2023-11-10 21:37:41'),
(782, '654e0efd42b92', 1, 'lg', 'public/img/plants/654e0efd6ed57.webp', '2023-11-10 21:37:41', '2023-11-10 21:37:41'),
(783, '654e0f3ee3ab6', 1, 'md', 'public/img/plants/654e0f3ee4c10.webp', '2023-11-10 21:38:47', '2023-11-10 21:38:47'),
(784, '654e0f3ee3ab6', 1, 'lg', 'public/img/plants/654e0f3f19913.webp', '2023-11-10 21:38:47', '2023-11-10 21:38:47'),
(785, '654e0ff7da868', 1, 'md', 'public/img/plants/654e0ff7db9e1.webp', '2023-11-10 21:41:52', '2023-11-10 21:41:52'),
(786, '654e0ff7da868', 1, 'lg', 'public/img/plants/654e0ff81201d.webp', '2023-11-10 21:41:52', '2023-11-10 21:41:52'),
(787, '654e1054e91ea', 1, 'md', 'public/img/plants/654e1054e9f82.webp', '2023-11-10 21:43:25', '2023-11-10 21:43:25'),
(788, '654e1054e91ea', 1, 'lg', 'public/img/plants/654e105520755.webp', '2023-11-10 21:43:25', '2023-11-10 21:43:25'),
(789, '654e10b20d060', 1, 'md', 'public/img/plants/654e10b20e0cf.webp', '2023-11-10 21:44:58', '2023-11-10 21:44:58'),
(790, '654e10b20d060', 1, 'lg', 'public/img/plants/654e10b23aaf7.webp', '2023-11-10 21:44:58', '2023-11-10 21:44:58'),
(791, '654e10cf9721f', 1, 'md', 'public/img/plants/654e10cf98822.webp', '2023-11-10 21:45:27', '2023-11-10 21:45:27'),
(792, '654e10cf9721f', 1, 'lg', 'public/img/plants/654e10cfc48e0.webp', '2023-11-10 21:45:28', '2023-11-10 21:45:28'),
(793, '654e11147c761', 1, 'md', 'public/img/plants/654e11147d5e3.webp', '2023-11-10 21:46:36', '2023-11-10 21:46:36'),
(794, '654e11147c761', 1, 'lg', 'public/img/plants/654e1114a7d5a.webp', '2023-11-10 21:46:36', '2023-11-10 21:46:36'),
(795, '654e113e7b94a', 1, 'md', 'public/img/plants/654e113e7c86a.webp', '2023-11-10 21:47:18', '2023-11-10 21:47:18'),
(796, '654e113e7b94a', 1, 'lg', 'public/img/plants/654e113ea6875.webp', '2023-11-10 21:47:18', '2023-11-10 21:47:18'),
(797, '654e115c1870d', 1, 'md', 'public/img/plants/654e115c19531.webp', '2023-11-10 21:47:48', '2023-11-10 21:47:48'),
(798, '654e115c1870d', 1, 'lg', 'public/img/plants/654e115c42321.webp', '2023-11-10 21:47:48', '2023-11-10 21:47:48'),
(799, '654e117995902', 1, 'md', 'public/img/plants/654e11799671a.webp', '2023-11-10 21:48:17', '2023-11-10 21:48:17'),
(800, '654e117995902', 1, 'lg', 'public/img/plants/654e1179c26b7.webp', '2023-11-10 21:48:18', '2023-11-10 21:48:18'),
(801, '654e11989dc85', 1, 'md', 'public/img/plants/654e11989e922.webp', '2023-11-10 21:48:48', '2023-11-10 21:48:48'),
(802, '654e11989dc85', 1, 'lg', 'public/img/plants/654e1198c6cac.webp', '2023-11-10 21:48:49', '2023-11-10 21:48:49'),
(805, '654e122ed4a1a', 1, 'md', 'public/img/plants/654e122ed787d.webp', '2023-11-10 21:51:19', '2023-11-10 21:51:19'),
(806, '654e122ed4a1a', 1, 'lg', 'public/img/plants/654e122f0e91c.webp', '2023-11-10 21:51:19', '2023-11-10 21:51:19'),
(807, '654e127987b18', 1, 'md', 'public/img/plants/654e127988972.webp', '2023-11-10 21:52:33', '2023-11-10 21:52:33'),
(808, '654e127987b18', 1, 'lg', 'public/img/plants/654e1279b3e4d.webp', '2023-11-10 21:52:33', '2023-11-10 21:52:33'),
(811, '654e139204cf9', 1, 'md', 'public/img/plants/654e139205a4e.webp', '2023-11-10 21:57:14', '2023-11-10 21:57:14'),
(812, '654e139204cf9', 1, 'lg', 'public/img/plants/654e13922dec9.webp', '2023-11-10 21:57:14', '2023-11-10 21:57:14'),
(813, '6551c9e0cea95', 1, 'md', 'public/img/plants/6551c9e0dfde3.webp', '2023-11-13 07:01:52', '2023-11-13 07:01:52'),
(814, '6551c9e0cea95', 1, 'lg', 'public/img/plants/6551c9e10fe49.webp', '2023-11-13 07:01:53', '2023-11-13 07:01:53'),
(815, '6551d4a66c669', 1, 'md', 'public/img/plants/6551d4a6a5df6.webp', '2023-11-13 07:47:50', '2023-11-13 07:47:50'),
(816, '6551d4a66c669', 1, 'lg', 'public/img/plants/6551d4a6cc05a.webp', '2023-11-13 07:47:50', '2023-11-13 07:47:50'),
(817, '6551d66eb4592', 1, 'md', 'public/img/plants/6551d66ed4d13.webp', '2023-11-13 07:55:26', '2023-11-13 07:55:26'),
(818, '6551d66eb4592', 1, 'lg', 'public/img/plants/6551d66f05157.webp', '2023-11-13 07:55:27', '2023-11-13 07:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `author_name` varchar(50) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `meta_keywords`, `author_name`, `category`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '11 Best Blogs Around the World That Will Inspire Your Life', '11-best-blogs-around-the-world-that-will-inspire-your-life', '<!-- wp:paragraph --><p>There is no shortage of bloggers in the world today and a lot of that is thanks to a wide variety of people. These individuals started off as bloggers, and have grown into such sensations that other people hopped on.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>While there are many niches out there for blogs, the ones that spurred many on were inspirational blogs and motivational blogs. The writer’s attitude and perspective in life inspired others on top of providing insight in other topics such as productivity, social media, entrepreneurship, self-improvement and others.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These are some of the best inspirational blogs – and the people that run them – that continue to be a source of motivation for all.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Best Inspirational Blogs You Need to Check Out</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>1. Meet Gary Vaynerchuk @<a href=\"http://garyvaynerchuk.com/\">GaryVaynerchuk.com</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>He’s a very loud and charismatic New Yorker who gained internet fame as the crazy and outgoing host of Wine Library TV, a video blog that obsessively talked about everything related to wine. Through online video blogging (commonly known as vlogging), he built his wine business from a $3-million-dollar-a-year wine retail store to a $60 million dollar wine wholesale business.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Gary Vaynerchuk has built a multi-million dollar empire relating to his personal brand. He’s a two-time best-selling author and co-founder of Vayner Media, a very large digital marketing agency that works with some of the largest brands in the world.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>He’s been featured in The Wall Street Journal, GQ, and Time Magazine, as well as appeared on Late Night with Conan O’Brien and The Ellen DeGeneres Show.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>His inspirational blog provides details about social media, the latest business trends, and the occasional inspirational blogs about life. He has an incredible amount of depth to these topics and his blunt direction helps you to focus on what matters.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>2. Meet Leon Ho @<a href=\"https://www.lifehack.org/\">Lifehack.org</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>Leon’s career started at Red Hat, where he worked as a software engineer, and because of his work ethic, he quickly became the youngest manager in the company, overseeing a global team. However, he soon realized that hard work wasn’t enough to cope with the increasing complexity and requirements of the job. Before he knew it, he was in search of ways to go beyond his “fixed ability” and invested heavily in researching everything he could on productivity and management.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Because of what he learned, it didn’t take long for him to outpace the demands of his work — and by his mid-20s he had already successfully managed over 150 engineering projects. In the span of less than 5 years, he achieved more than what most project managers could do in 10.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>That’s when he realized that he could use this knowledge to help anyone in the world who was stuck somewhere in their lives. So, he left his job at Red Hat to dedicate his time to sharing this information through&nbsp;Lifehack.org.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>3. Meet Rand Fishkin @<a href=\"http://seomoz.org/\">SEOmoz.org</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>Rand Fiskin is a college dropout who started blogging about SEO (Search Engine Optimization) back in 2004 while working for a family-run web development company. He was also providing SEO consulting services to a few small clients.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>SEOmoz has since left the consulting business and instead focuses exclusively on creating awesome SEO software, as well as supporting a large community with educational resources related to the search industry.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":4} --><h4>⌄ Scroll down to continue reading article ⌄</h4><!-- /wp:heading --><!-- wp:heading {\"level\":1} --><h1><strong class=\"\">Too Overwhelmed to Achieve What You Need to Do?</strong></h1><!-- /wp:heading --><!-- wp:paragraph --><p>Get the push you need to move forward by grabbing your&nbsp;<strong>FREE</strong><strong>&nbsp;</strong>action plan to end overwhelm, regain motivation and get your life together!</p><!-- /wp:paragraph --><!-- wp:paragraph --><p><strong>Grab Free Action Plan</strong></p><!-- /wp:paragraph --><!-- wp:heading {\"level\":4} --><h4>⌄ Scroll down to continue reading article ⌄</h4><!-- /wp:heading --><!-- wp:paragraph --><p>It is rumoured that the company generates millions of dollars each and every month from its software and subscription services. The company also raised $18 million in 2012, which it has been using to acquire other companies. Rand is still actively running the company and occasionally posts on the main blog.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For any aspiring blogger, understanding SEO is key and the blog posts that Rand publishes occasionally can be helpful in that. Beyond that, this is one of the best motivational blogs for those who are trying to understand SEO and leverage it for their own website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>4. Meet Pat Flynn @<a href=\"http://smartpassiveincome.com/\">SmartPassiveIncome.com</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>Pat is one of the most inspirational bloggers in the world. After losing his job a few years into his career, he was forced to scramble to support his growing family. He started a website called “SmartPassiveIncome.com” to track his progress with various websites and online money-making projects.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>What started as a small inspirational blog for himself grew into one of the best blogs around the world when it comes to making money.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>He has since built a massive following and readership thanks to his transparency and honesty. Still to this day, Pat discloses his monthly earnings to readers, which has inspired countless individuals.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pat currently attends industry conferences, runs a regular podcast for his readers, and spends as much time as he can with his family. Pat has earned, on average, around $50,000 USD per month.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>5. Meet Brian Clark @<a href=\"http://copyblogger.com/\">Copyblogger.com</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>Brian Clark is the founder of Copyblogger. He started the inspirational blog in 2006 as a resource for entrepreneurs to learn to be better copywriters, content marketers, and all-around “kings of content.” The blog has since grown to become an authority on creating killer content for the web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>With 100k+ subscribers, Brian got smart and leveraged his readership to launch Copyblogger Media, which launched several spinoff companies. These software companies include Scribe, Synthesis, Premise, and StudioPress.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The genius behind his business model is that his loyal readers love him and line up to buy the marketing software his company creates. Brian is still very active in the day-to-day of running Copyblogger.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>6. Meet Andrew Sullivan @<a href=\"http://thedishdaily.com/\">thedishdaily.com</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>Andrew started his inspirational blog, The Daily Dish, near the end of 2000. By the middle of 2003, he was receiving about 300,000 unique visits per month.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>In 2013, Sullivan made some big changes and decided to leave his other blogging gigs (formerly at TIME, The Atlantic, and The Daily Beast) to work on The Daily Dish full-time. On launch day, the blog reportedly took in over $330,000 in recurring revenue, charging an average of $20/month to readers.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The Daily Dish is one of the best inspirational blogs out there as its primary focus is on positive news.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>7. Meet Harvey Levin @<a href=\"https://tmz.com/\">TMZ.com</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>Harvey is an American lawyer, legal analyst, blogger, and celebrity reporter. His website TMZ is a leading authority on celebrity gossip.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>You can frequently see Harvey hosting his own TV show or appearing as a guest on celebrity-related matters on CNN, FOX, and other networks. He managed to leverage the popularity of his blog to build a personal brand for himself.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>8. Meet Michael Arrington @<a href=\"http://techcrunch.com/\">TechCrunch.com</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>Michael is one of my favourite bloggers of all time. He started out as a mergers and acquisitions lawyer working on tech deals in California. After realizing his passion for the startup world, he decided to start a tech blog called&nbsp;TechCrunch.com, where he profiled and reviewed some of the best up-and-coming tech companies and entrepreneurs from around the world.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>TechCrunch became one of the most widely read motivational blogs in the tech industry, and as a result, it was acquired by AOL for $30 million dollars. Michael used the proceeds of the sale to become an angel investor and to set up his own investment fund, CrunchFund, to invest in startups. Today, Arrington is still considered to be a mover and shaker in the valley.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>9. Meet Tim Ferriss @<a href=\"http://www.fourhourworkweek.com/blog/\">Fourhourworkweek.com/blog</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>Tim is a self-proclaimed life hacker who built a massive following online through his blog posts. He is the author of the “4 Hour Work Week” which became an instant bestseller and that people still continue to practice. He has also gone on to publish two other best-selling books.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>He’s a frequent lecturer around the globe. He has also popularized the idea of “lifestyle design” and living an unconventional life.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Tim is credited with popularizing the “internet lifestyle” or the ability of lifestyle entrepreneurs to work on their laptops from wherever in the world. This is no thanks to the inspirational blog that he has created.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>10. Meet Timothy Sykes @<a href=\"http://www.timothysykes.com/blog-posts/\">TimothySykes.com</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>Tim started blogging to document how he turned $12,000 of his Bar-Mitzvah money into over $1 million dollars. Needless to say, the journey made for one of the best inspirational blogs out there. Since then, he has gained internet fame for being an authority on Penny Stock trading.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>His blog has hundreds of thousands of visitors, which has allowed him to launch additional companies like&nbsp;Profit.ly, which educate other traders on trader strategies.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>He can frequently be seen making television appearances on ABC, CNN, FOX, and CNBC about stock market matters.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>11. Meet Darren Rowse @<a href=\"http://problogger.net/\">Problogger.net</a></h3><!-- /wp:heading --><!-- wp:paragraph --><p>Darren is another blogger who you have to know about. He started blogging as a hobby. He blogged about the Olympics and his passion for photography. From there, he started Problogger, a website dedicated to helping other bloggers.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Darren is currently a full-time blogger and started making money from advertising deals, affiliate programs, AdSense, and selling an e-book.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Darren has gained quite a bit of fame online and was named to the Forbes Internet Celebrity list in 2007. He lives in Melbourne, Australia, with his family and still makes a full-time living from blogging!</p><!-- /wp:paragraph -->', '11 Best Blogs Around the World That Will Inspire Your Life', 'meta company', '11 Best Blogs Around the World That Will Inspire Your Life', 'Vishal', 'All in one', '11-best-blogs-around-the-world-that-will-inspire-your-life.jpg', 1, '2022-07-15 11:10:28', '2022-07-19 06:27:39'),
(2, 'ddgsdg', 'ddgsdg', '<!-- wp:paragraph --><p>sadfasdf</p><!-- /wp:paragraph -->', 'asdfasd', 'asdfasd', 'asdfasd', 'asdfas', 'All in one', 'ddgsdg.jpg', 1, '2022-07-19 06:29:26', '2022-07-19 07:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 'All in one', 'all-in-one', 'this category can contain all products', 'post-category5.jpg', 1, '2022-07-15 11:03:40', '2022-07-15 11:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `html_content` longtext DEFAULT NULL,
  `regular_price` decimal(10,2) DEFAULT 0.00,
  `selling_price` decimal(10,2) DEFAULT 0.00,
  `discount` int(10) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `ogd_no` int(10) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `shipping_charge` decimal(10,2) DEFAULT 0.00,
  `stock` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `html_content`, `regular_price`, `selling_price`, `discount`, `category`, `ogd_no`, `image1`, `image2`, `image3`, `weight`, `shipping_charge`, `stock`, `status`, `created_at`, `updated_at`) VALUES
(1, 'OGD1 Flower & Plant Nutrient Fertilizer-10kg', 'ogd1-flower-plant-nutrient-fertilizer-10kg', 'It is an innovative scientifically formulated flower grade fertilizer. Product has been developed by natural and organic components. Hence, it is a best class product to increase the number of flowers Per plant.', '<!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It enhances the quality and quantity of flowers</li><li>It is easy to use and very effective.</li><li>It is having all the nutrients in balance proportion required to enhance the flowering.</li><li>This fertilizer can be used for flowering plant or to increase the flowering of any type of plant. Eventually, maximizes fruit formation</li><li>It contains high-quality organic ingredients viz. plant and animal wastes and natural organic minerals.</li><li>Enhances plant growth and increase the immunity to fight with pests and diseases</li><li>Improves soil health.</li><li>Provides all essential micro and macronutrients</li><li>Slowly and contentiously releases nutrients for almost a month after the applying to the soil. It alsokeeps the soil nourished.</li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Apply 40-50 gm before watering the plant during early morning or late evening per pot (Medium size). Per Plant Water the plants immediately after the application. Apply the product after every 2 weeks.</p><!-- /wp:paragraph --><!-- wp:image {\"width\":254,\"height\":169} --><figure class=\"wp-block-image is-resized\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\" width=\"254\" height=\"169\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li></ul><!-- /wp:list -->', 500.00, 350.00, 30, 'Decorative Balls', NULL, 'product11.jpg', 'product12.jpg', 'product13.jpg', 100.00, NULL, 1, 1, '2022-06-10 00:33:26', '2023-08-10 05:43:44'),
(2, 'OGD1 Flower & Plant Nutrient Fertilizer', 'ogd1-flower-plant-nutrient-fertilizer', 'sjsjklsls sloslslls iweiwikwmwmkc', '<!-- wp:heading --><h2>jsjksksks slsllslsl slslls</h2><!-- /wp:heading --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"normal\"} --><p class=\"has-normal-font-size\">skskssls;s; uisuwuwiwo</p><!-- /wp:paragraph -->', 500.00, 400.00, 20, 'Decorative Balls', NULL, 'product21.jpg', 'product22.jpg', 'product23.jpg', 1.00, NULL, 1, 1, '2022-06-10 06:33:17', '2022-06-18 02:37:33'),
(3, 'OGD1 Flower & Plant Nutrient Fertilizer-5kg', 'ogd1-flower-plant-nutrient-fertilizer-5kg', 'It is an innovative scientifically formulated flower grade fertilizer. Product has been developed by natural and organic components. Hence, it is a best class product to increase the number of lowers Per plant.', '<!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It enhances the quality and quantity of flowers</li><li>It is easy to use and very effective.</li><li>It is having all the nutrients in balance proportion required to enhance the flowering.</li><li>This fertilizer can be used for flowering plant or to increase the flowering of any type of plant. Eventually, maximizes fruit formation</li><li>It contains high-quality organic ingredients viz. plant and animal wastes and natural organic minerals.</li><li>Enhances plant growth and increase the immunity to fight with pests and diseases</li><li>Improves soil health.</li><li>Provides all essential micro and macronutrients</li><li>Slowly and contentiously releases nutrients for almost a month after the applying to the soil. It alsokeeps the soil nourished.</li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Apply 40-50 gm before watering the plant during early morning or late evening per pot (Medium size). Per Plant Water the plants immediately after the application. Apply the product after every 2 weeks.</p><!-- /wp:paragraph --><!-- wp:image --><figure class=\"wp-block-image\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li></ul><!-- /wp:list -->', 1050.00, 525.00, 50, 'Diseases and Controls', NULL, 'product31.jpg', 'product32.jpg', NULL, 2.00, NULL, 1, 1, '2022-06-14 07:14:11', '2022-06-18 02:37:40'),
(4, 'OGD1 Flower & Plant Nutrient Fertilizer-1kg', 'ogd1-flower-plant-nutrient-fertilizer-1kg', 'It is an innovative scientifically formulated flower grade fertilizer. Product has been developed by natural and organic components. Hence, it is a best class product to increase the number of lowers Per plant.', '<!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It enhances the quality and quantity of flowers</li><li>It is easy to use and very effective.</li><li>It is having all the nutrients in balance proportion required to enhance the flowering.</li><li>This fertilizer can be used for flowering plant or to increase the flowering of any type of plant. Eventually, maximizes fruit formation</li><li>It contains high-quality organic ingredients viz. plant and animal wastes and natural organic minerals.</li><li>Enhances plant growth and increase the immunity to fight with pests and diseases</li><li>Improves soil health.</li><li>Provides all essential micro and macronutrients</li><li>Slowly and contentiously releases nutrients for almost a month after the applying to the soil. It alsokeeps the soil nourished.</li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Apply 40-50 gm before watering the plant during early morning or late evening per pot (Medium size). Per Plant Water the plants immediately after the application. Apply the product after every 2 weeks.</p><!-- /wp:paragraph --><!-- wp:image --><figure class=\"wp-block-image\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li></ul><!-- /wp:list -->', 210.00, 126.00, 40, 'Pest killer', NULL, 'product41.jpg', 'product42.jpg', NULL, 1.00, NULL, 1, 1, '2022-06-14 07:20:13', '2022-06-18 02:37:47'),
(5, 'OGD5 Booster Vegetable & Fruit Fertlizer-2kg', 'ogd5-booster-vegetable-fruit-fertlizer-2kg', 'It is an innovative scientifically enhanced booster leaf and lawn fertilizer. It is having very high nitrogen for vegetative growth.', '<!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It enhances the quality and quantity of flowers</li><li>It is easy to use and very effective.</li><li>It is having all the nutrients in balance proportion required to enhance the flowering.</li><li>This fertilizer can be used for flowering plant or to increase the flowering of any type of plant. Eventually, maximizes fruit formation</li><li>It contains high-quality organic ingredients viz. plant and animal wastes and natural organic minerals.</li><li>Enhances plant growth and increase the immunity to fight with pests and diseases</li><li>Improves soil health.</li><li>Provides all essential micro and macronutrients</li><li>Slowly and contentiously releases nutrients for almost a month after the applying to the soil. It alsokeeps the soil nourished.</li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Apply 40-50 gm before watering the plant during early morning or late evening per pot (Medium size). Per Plant Water the plants immediately after the application. Apply the product after every 2 weeks.</p><!-- /wp:paragraph --><!-- wp:image --><figure class=\"wp-block-image\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li></ul><!-- /wp:list -->', 594.00, 326.00, 45, 'Cocopeat', NULL, 'product51.jpg', 'product52.jpg', NULL, 2.00, NULL, 1, 1, '2022-06-14 07:24:38', '2022-06-18 02:37:59'),
(6, 'OGD6 Booster Vegetable & Fruit Fertilizer-1kg', 'ogd6-booster-vegetable-fruit-fertilizer-1kg', 'It is OMRI listed, naturally mined crystalline mineral provides your soil with the water-soluble sulfate form of potassium, magnesium and sulfurs. These three plant nutrients are key to growing high quality plants and when offered in the form of OGD 06 your plants will benefit from its unique qualities:', '<!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It enhances the quality and quantity of flowers</li><li>It is easy to use and very effective.</li><li>It is having all the nutrients in balance proportion required to enhance the flowering.</li><li>This fertilizer can be used for flowering plant or to increase the flowering of any type of plant. Eventually, maximizes fruit formation</li><li>It contains high-quality organic ingredients viz. plant and animal wastes and natural organic minerals.</li><li>Enhances plant growth and increase the immunity to fight with pests and diseases</li><li>Improves soil health.</li><li>Provides all essential micro and macronutrients</li><li>Slowly and contentiously releases nutrients for almost a month after the applying to the soil. It alsokeeps the soil nourished.</li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Apply 40-50 gm before watering the plant during early morning or late evening per pot (Medium size). Per Plant Water the plants immediately after the application. Apply the product after every 2 weeks.</p><!-- /wp:paragraph --><!-- wp:image --><figure class=\"wp-block-image\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li></ul><!-- /wp:list -->', 297.00, 178.00, 40, 'Organic Fertilizers', NULL, 'product61.jpg', 'product62.jpg', NULL, 1.00, NULL, 1, 1, '2022-06-14 07:28:01', '2022-06-18 02:38:05'),
(7, 'OGD8 Vermicompost Fertilizer-1kg', 'ogd8-vermicompost-fertilizer-1kg', 'It is an innovative scienti‹ically enhanced vermicompost fertilizer. It is a humic-acid rich compost prepared by decomposition of organic waste by earthworms. Hence, OGD 08 Vermicompost is used as a soil additive, conditioner, and fertilizer.', '<!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It enhances the quality and quantity of flowers</li><li>It is easy to use and very effective.</li><li>It is having all the nutrients in balance proportion required to enhance the flowering.</li><li>This fertilizer can be used for flowering plant or to increase the flowering of any type of plant. Eventually, maximizes fruit formation</li><li>It contains high-quality organic ingredients viz. plant and animal wastes and natural organic minerals.</li><li>Enhances plant growth and increase the immunity to fight with pests and diseases</li><li>Improves soil health.</li><li>Provides all essential micro and macronutrients</li><li>Slowly and contentiously releases nutrients for almost a month after the applying to the soil. It alsokeeps the soil nourished.</li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Apply 40-50 gm before watering the plant during early morning or late evening per pot (Medium size). Per Plant Water the plants immediately after the application. Apply the product after every 2 weeks.</p><!-- /wp:paragraph --><!-- wp:image --><figure class=\"wp-block-image\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li></ul><!-- /wp:list -->', 55.00, 44.00, 20, 'Decorative Balls', NULL, 'product71.jpg', 'product72.jpg', NULL, 1.00, NULL, 1, 1, '2022-06-14 07:30:24', '2022-06-18 02:36:40'),
(8, 'OGD10 High Nutrient Garden Soil-25kg', 'ogd10-high-nutrient-garden-soil-25kg', 'It is an innovative scientifically formulated Garden Soil. Product has been developed by natural and organic components. Hence, it is a best class product to enhance the growth of the plant.', '<!-- wp:heading {\"level\":3} --><h3>Qualities</h3><!-- /wp:heading --><!-- wp:list --><ul><li>It enhances the quality and quantity of flowers</li><li>It is easy to use and very effective.</li><li>It is having all the nutrients in balance proportion required to enhance the flowering.</li><li>This fertilizer can be used for flowering plant or to increase the flowering of any type of plant. Eventually, maximizes fruit formation</li><li>It contains high-quality organic ingredients viz. plant and animal wastes and natural organic minerals.</li><li>Enhances plant growth and increase the immunity to fight with pests and diseases</li><li>Improves soil health.</li><li>Provides all essential micro and macronutrients</li><li>Slowly and contentiously releases nutrients for almost a month after the applying to the soil. It alsokeeps the soil nourished.</li></ul><!-- /wp:list --><!-- wp:heading {\"level\":3} --><h3>Doses</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Apply 40-50 gm before watering the plant during early morning or late evening per pot (Medium size). Per Plant Water the plants immediately after the application. Apply the product after every 2 weeks.</p><!-- /wp:paragraph --><!-- wp:image --><figure class=\"wp-block-image\"><img src=\"https://innovativeorganicagri.com/wp-content/uploads/2020/07/pr-2.jpg\" alt=\"\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Care Instructions</h3><!-- /wp:heading --><!-- wp:list --><ul><li>Keep the pouch in the dry area.</li><li>Do not keep the pouch open for a long time.</li><li>The pouch should be tightly closed and stored in dry space after use.</li><li>Keep out of reach of children.</li><li>If swallowed, seek; take medical advice</li></ul><!-- /wp:list -->', 2625.00, 1899.00, 28, 'Cocopeat', 5, 'ogd10-high-nutrient-garden-soil-25kg_81.jpg', 'product82.jpg', 'ogd10-high-nutrient-garden-soil-25kg_83.jpg', 25.00, 35.00, 1, 1, '2022-06-14 07:32:55', '2022-07-25 06:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `recommended_fertilizers`
--

CREATE TABLE `recommended_fertilizers` (
  `id` bigint(20) NOT NULL,
  `pid` varchar(225) NOT NULL,
  `fertilizer_id` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommended_fertilizers`
--

INSERT INTO `recommended_fertilizers` (`id`, `pid`, `fertilizer_id`, `created_at`, `updated_at`) VALUES
(6, '375', '650a9b3bc0eb1', '2023-11-13 06:31:36', '2023-11-13 06:31:36'),
(7, '375', '650a9e7e54848', '2023-11-13 06:31:36', '2023-11-13 06:31:36'),
(17, '378', '650aa69e4e181', '2023-11-14 12:00:47', '2023-11-14 12:00:47'),
(18, '378', '651e8aa8c68e5', '2023-11-14 12:00:47', '2023-11-14 12:00:47'),
(19, '378', '650a9b3bc0eb1', '2023-11-14 12:00:47', '2023-11-14 12:00:47'),
(20, '377', '650aa69e4e181', '2023-11-14 12:01:05', '2023-11-14 12:01:05'),
(21, '377', '650a9b3bc0eb1', '2023-11-14 12:01:05', '2023-11-14 12:01:05'),
(22, '376', '650a9b3bc0eb1', '2023-11-14 12:01:34', '2023-11-14 12:01:34'),
(23, '376', '650aa69e4e181', '2023-11-14 12:01:34', '2023-11-14 12:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) NOT NULL,
  `category` varchar(225) NOT NULL,
  `amount` double NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `category`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Plant', 60, '1', '2023-09-13 05:38:50', '2023-11-14 10:49:52'),
(2, 'Product', 65, '1', '2023-09-13 05:39:11', '2023-11-08 10:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `button_name` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `order_no` int(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `serial_no` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_name`, `title`, `description`, `button_name`, `button_link`, `order_no`, `image`, `status`, `serial_no`, `created_at`, `updated_at`) VALUES
(39, 'slide1', 'slide1', 'slide1', 'slide1', 'slide1', 10, 'slide1_39.jpg', 0, '1', '2022-07-09 02:56:08', '2023-08-19 23:43:29'),
(40, 'slide2', 'slide2', 'slide2', 'slide2', 'slide2', 8, 'slider40.jpg', 0, '1', '2022-07-09 02:56:42', '2023-08-19 23:43:27'),
(41, 'slide3', 'slide3', 'slide3', 'slide3', 'slide3', 10, 'slider41.jpg', 0, '1', '2022-07-09 02:57:05', '2023-08-19 23:43:30'),
(42, 'slide4', 'slide4', 'slide4', 'slide4', 'slide4', 4, 'slider42.jpg', 1, '1', '2022-07-09 02:57:32', '2023-08-19 23:43:19'),
(43, 'slide5', 'slide5', 'slide5', 'slide5', 'slide5', 5, 'slider43.jpg', 1, '1', '2022-07-09 02:58:03', '2023-08-19 23:43:21'),
(44, 'slide6', 'slide6', 'slide6', 'slide6', 'slide6', 6, 'slider44.jpg', 0, '1', '2022-07-09 02:58:31', '2023-08-19 23:43:22'),
(45, 'slide7', 'slide7', 'slide7', 'slide7', 'slide7', 7, 'slider45.jpg', 0, '1', '2022-07-09 02:58:58', '2023-08-19 23:43:25'),
(46, 'Innovative Organic Agri India is the Manufacturer of an innovative scientifically formulated', 'Innovative Organic Agri India is the Manufacturer of an innovative scientifically formulated', 'Innovative Organic Agri India is the Manufacturer of an innovative scientifically formulated', 'Read More', 'Hello', 9, 'innovative-organic-agri-india-is-the-manufacturer-of-an-innovative-scientifically-formulated_46.jpg', 0, '1', '2022-07-19 07:28:45', '2023-08-19 23:43:28'),
(47, 'slider8', 'slider8', 'slider8', 'slider8', 'slider8', 1, 'slider8_47.jpg', 1, '1', '2023-08-19 23:41:32', '2023-08-19 23:42:32'),
(48, 'slider9', 'slider9', 'slider9', 'slider9', 'slider9', 2, 'slider9_48.jpg', 1, '1', '2023-08-19 23:41:54', '2023-08-19 23:42:50'),
(49, 'slider10', 'slider10', 'slider10', 'slider10', 'slider10', 3, 'slider10_49.jpg', 1, '1', '2023-08-19 23:42:17', '2023-08-19 23:42:55'),
(50, 'slider 11', 'slider 11', 'slider 11', 'slider 11', 'slider 11', 11, 'slider-11_50.jpg', 1, '1', '2023-08-28 22:19:35', '2023-08-28 22:19:35'),
(51, 'slider 12', 'slider 12', 'slider 12', 'slider 12', 'slider 12', 12, 'slider-12_51.jpg', 1, '1', '2023-08-28 22:20:02', '2023-08-28 22:20:02'),
(52, 'slider 13', 'slider 13', 'slider 13', 'slider 13', 'slider 13', 13, 'slider-13_52.jpg', 1, '1', '2023-08-28 22:20:27', '2023-08-28 22:20:27'),
(53, 'slider 14', 'slider 14', 'slider 14', 'slider 14', 'slider 14', 14, 'slider-14_53.jpg', 1, '1', '2023-08-28 22:20:52', '2023-08-28 22:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Plant', 'Gardening Trending Plant', NULL, '1', '2023-08-22 15:35:01', '2023-08-22 15:35:01'),
(2, 'Plant', 'Low Maintance Plants', NULL, '1', '2023-08-22 15:35:40', '2023-08-22 15:35:40'),
(3, 'Plant', 'Palm Plants', NULL, '1', '2023-08-22 15:36:43', '2023-08-22 15:36:43'),
(4, 'Plant', 'Summer Plants', NULL, '1', '2023-08-22 15:37:16', '2023-08-22 15:37:16'),
(5, 'Plant', 'Winter Flowering plant', NULL, '1', '2023-08-22 15:37:41', '2023-08-22 15:37:41'),
(6, 'Plant', 'Cactus and succlents', NULL, '1', '2023-08-22 15:38:21', '2023-08-22 15:38:21'),
(7, 'Product', 'Decorative Balls', 'Decorative Balls', '1', '2023-09-20 05:11:03', '2023-11-07 07:38:22'),
(8, 'Product', 'Diseases and Controls', 'Diseases and Controls', '1', '2023-09-20 05:12:32', '2023-11-07 07:38:11'),
(9, 'Product', 'Pest Killer', 'Pest Killer', '1', '2023-09-20 05:13:35', '2023-11-07 07:37:58'),
(10, 'Product', 'Soil Enrichment', 'Soil Enrichment', '1', '2023-09-20 05:15:10', '2023-11-07 07:37:47'),
(11, 'Product', 'Cocopeat', 'Cocopeat', '1', '2023-09-20 05:16:44', '2023-11-07 07:37:35'),
(12, 'Product', 'Organic Fertilizers', 'Organic Fertilizers', '1', '2023-09-20 05:18:20', '2023-11-07 07:37:25'),
(13, 'Product', 'Combo', 'Combo', '1', '2023-09-20 05:19:37', '2023-11-07 07:37:11'),
(14, 'Product', 'Boron 15', 'Boron 15', '1', '2023-10-05 19:43:54', '2023-11-07 07:37:01'),
(15, 'Product', 'Epsum Salt', 'Epsum Salt', '1', '2023-10-05 19:47:40', '2023-11-07 07:36:45'),
(16, 'Plant', 'Air Purifying Plants', NULL, '1', '2023-11-10 17:21:24', '2023-11-10 17:21:24'),
(17, 'Plant', 'Oxygen Plant', NULL, '1', '2023-11-10 18:43:51', '2023-11-10 18:43:51'),
(19, 'Plant', 'Bonasi', NULL, '1', '2023-11-10 20:40:16', '2023-11-10 20:40:16'),
(20, 'Plant', 'Aromatic Plants', NULL, '1', '2023-11-10 21:05:26', '2023-11-10 21:05:26'),
(21, 'Plant', 'Avenue Tree', NULL, '1', '2023-11-13 06:56:32', '2023-11-13 06:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_imgs`
--

CREATE TABLE `sub_category_imgs` (
  `id` bigint(20) NOT NULL,
  `sub_cat_id` bigint(20) NOT NULL,
  `slno` tinyint(4) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_category_imgs`
--

INSERT INTO `sub_category_imgs` (`id`, `sub_cat_id`, `slno`, `type`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'md', 'public/img/sub-category/64e4500da66de.webp', '2023-08-22 15:35:01', '2023-08-22 15:35:01'),
(2, 1, 2, 'lg', 'public/img/sub-category/64e4500dd004c.webp', '2023-08-22 15:35:02', '2023-08-22 15:35:02'),
(3, 2, 1, 'md', 'public/img/sub-category/64e45034d5e22.webp', '2023-08-22 15:35:41', '2023-08-22 15:35:41'),
(4, 2, 2, 'lg', 'public/img/sub-category/64e450350c0dc.webp', '2023-08-22 15:35:41', '2023-08-22 15:35:41'),
(5, 3, 1, 'md', 'public/img/sub-category/64e450732c7ca.webp', '2023-08-22 15:36:43', '2023-08-22 15:36:43'),
(6, 3, 2, 'lg', 'public/img/sub-category/64e4507356d7c.webp', '2023-08-22 15:36:43', '2023-08-22 15:36:43'),
(7, 4, 1, 'md', 'public/img/sub-category/64e45094dfa69.webp', '2023-08-22 15:37:17', '2023-08-22 15:37:17'),
(8, 4, 2, 'lg', 'public/img/sub-category/64e4509513552.webp', '2023-08-22 15:37:17', '2023-08-22 15:37:17'),
(9, 5, 1, 'md', 'public/img/sub-category/64e450ada9de0.webp', '2023-08-22 15:37:41', '2023-08-22 15:37:41'),
(10, 5, 2, 'lg', 'public/img/sub-category/64e450add43a6.webp', '2023-08-22 15:37:42', '2023-08-22 15:37:42'),
(11, 6, 1, 'md', 'public/img/sub-category/64e450d5745af.webp', '2023-08-22 15:38:21', '2023-08-22 15:38:21'),
(12, 6, 2, 'lg', 'public/img/sub-category/64e450d59df90.webp', '2023-08-22 15:38:21', '2023-08-22 15:38:21'),
(13, 7, 1, 'md', 'public/img/sub-category/650a7ee739d66.webp', '2023-09-20 05:11:03', '2023-09-20 05:11:03'),
(14, 7, 2, 'lg', 'public/img/sub-category/650a7ee7719a6.webp', '2023-09-20 05:11:03', '2023-09-20 05:11:03'),
(15, 8, 1, 'md', 'public/img/sub-category/650a7f40123b1.webp', '2023-09-20 05:12:32', '2023-09-20 05:12:32'),
(16, 8, 2, 'lg', 'public/img/sub-category/650a7f404dd70.webp', '2023-09-20 05:12:32', '2023-09-20 05:12:32'),
(17, 9, 1, 'md', 'public/img/sub-category/650a7f7f17e63.webp', '2023-09-20 05:13:35', '2023-09-20 05:13:35'),
(18, 9, 2, 'lg', 'public/img/sub-category/650a7f7f4e559.webp', '2023-09-20 05:13:35', '2023-09-20 05:13:35'),
(19, 10, 1, 'md', 'public/img/sub-category/650a7fde566ac.webp', '2023-09-20 05:15:10', '2023-09-20 05:15:10'),
(20, 10, 2, 'lg', 'public/img/sub-category/650a7fde9844a.webp', '2023-09-20 05:15:10', '2023-09-20 05:15:10'),
(21, 11, 1, 'md', 'public/img/sub-category/650a803ca04c8.webp', '2023-09-20 05:16:44', '2023-09-20 05:16:44'),
(22, 11, 2, 'lg', 'public/img/sub-category/650a803ce2559.webp', '2023-09-20 05:16:45', '2023-09-20 05:16:45'),
(23, 12, 1, 'md', 'public/img/sub-category/650a809c84a17.webp', '2023-09-20 05:18:20', '2023-09-20 05:18:20'),
(24, 12, 2, 'lg', 'public/img/sub-category/650a809cd2611.webp', '2023-09-20 05:18:21', '2023-09-20 05:18:21'),
(25, 13, 1, 'md', 'public/img/sub-category/650a80e9308ad.webp', '2023-09-20 05:19:37', '2023-09-20 05:19:37'),
(26, 13, 2, 'lg', 'public/img/sub-category/650a80e982178.webp', '2023-09-20 05:19:37', '2023-09-20 05:19:37'),
(27, 14, 1, 'md', 'public/img/sub-category/651e8c624fd13.webp', '2023-10-05 19:43:54', '2023-10-05 19:43:54'),
(28, 14, 2, 'lg', 'public/img/sub-category/651e8c6269ab7.webp', '2023-10-05 19:43:54', '2023-10-05 19:43:54'),
(29, 15, 1, 'md', 'public/img/sub-category/651e8d445aa43.webp', '2023-10-05 19:47:40', '2023-10-05 19:47:40'),
(30, 15, 2, 'lg', 'public/img/sub-category/651e8d4477a1e.webp', '2023-10-05 19:47:40', '2023-10-05 19:47:40'),
(31, 16, 1, 'md', 'public/img/sub-category/654dd2ec28fcc.webp', '2023-11-10 17:21:24', '2023-11-10 17:21:24'),
(32, 16, 2, 'lg', 'public/img/sub-category/654dd2ec546ed.webp', '2023-11-10 17:21:24', '2023-11-10 17:21:24'),
(33, 17, 1, 'md', 'public/img/sub-category/654de63f49304.webp', '2023-11-10 18:43:51', '2023-11-10 18:43:51'),
(34, 17, 2, 'lg', 'public/img/sub-category/654de63f74c43.webp', '2023-11-10 18:43:51', '2023-11-10 18:43:51'),
(35, 19, 1, 'md', 'public/img/sub-category/654e0188c2544.webp', '2023-11-10 20:40:16', '2023-11-10 20:40:16'),
(36, 19, 2, 'lg', 'public/img/sub-category/654e0188ec6b9.webp', '2023-11-10 20:40:17', '2023-11-10 20:40:17'),
(37, 20, 1, 'md', 'public/img/sub-category/654e076e50a21.webp', '2023-11-10 21:05:26', '2023-11-10 21:05:26'),
(38, 20, 2, 'lg', 'public/img/sub-category/654e076e79fb6.webp', '2023-11-10 21:05:26', '2023-11-10 21:05:26'),
(39, 21, 1, 'md', 'public/img/sub-category/6551c8a12a676.webp', '2023-11-13 06:56:33', '2023-11-13 06:56:33'),
(40, 21, 2, 'lg', 'public/img/sub-category/6551c8a195e20.webp', '2023-11-13 06:56:33', '2023-11-13 06:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `place`, `message`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Vishal', 'Ranchi', 'Hello', 'testimonial2.jpg', 1, '2022-05-14 06:18:32', '2022-06-14 02:41:55'),
(4, 'sadfsd', 'asdfasdf', 'asdfsadf', 'testimonial4.jpg', 1, '2022-06-14 05:14:05', '2022-06-14 05:14:50'),
(5, 'Hello world', 'Ranchi', 'Hello world', 'testimonial5.jpg', 0, '2022-06-14 05:14:29', '2022-06-14 05:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `country_code` varchar(255) NOT NULL,
  `mobile` bigint(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL,
  `img_sm` varchar(255) DEFAULT NULL,
  `img_lg` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `uid`, `name`, `dob`, `gender`, `country_code`, `mobile`, `email`, `city`, `state`, `country`, `pincode`, `img_sm`, `img_lg`, `status`, `created_at`, `updated_at`) VALUES
(1, '2206081', 'Vishal Kumar', '0000-00-00', 'male', '', 9771234509, 'vk@gmail.com', 'Ranchi', 'JH', NULL, 834008, 'pro_image_2206081.jpg', '', '1', '2022-06-08 05:30:39', '2022-07-05 00:46:40'),
(2, '22061014', 'Ram Kumar Bedia', '0000-00-00', 'Male', '', 9771234514, 'rkb@gmail.com', 'RN', 'JH', NULL, 835101, NULL, '', '1', '2022-06-10 03:13:48', '2022-07-05 00:46:39'),
(3, '22061316', 'Ram Kumar Bedia', '0000-00-00', 'Male', '', 9771234516, 'rram@gmail.com', 'RN', 'JH', NULL, 835101, NULL, '', '1', '2022-06-13 00:35:53', '2022-07-05 00:46:39'),
(7, '22061618', 'Vishal Kumar', '0000-00-00', 'male', '', 7004019565, 'vk@gmail.com', 'Ranchi', 'Jharkhand', NULL, 834008, NULL, '', '0', '2022-06-23 06:01:18', '2022-07-05 01:58:37'),
(8, '22070420', 'Ram Kumar Bedia', '0000-00-00', 'Male', '', 9771234518, 'rramkumarbedia@gmail.com', 'Ranchi', 'Jharkhand', NULL, 835101, 'pro_image_22070420.jpg', '', '1', '2022-07-04 07:04:53', '2022-07-05 00:46:29'),
(9, '22061013', 'Vishal Kumar', '0000-00-00', 'male', '', 9771234513, 'vk@gmail.com', 'Ranchi', 'Jharkhand', NULL, 834008, 'pro_image_22061013.jpg', '', NULL, '2022-07-06 01:42:35', '2022-07-06 01:42:55'),
(10, '22070621', 'Ram Kumar Bedia', '0000-00-00', 'Male', '', 9771234522, 'rramkumarbedia@gmail.com', 'Ranchi', 'Jharkhand', NULL, 835101, NULL, '', NULL, '2022-07-06 01:48:10', '2022-07-06 01:49:40'),
(11, '22070622', 'Ram Kumar Bedia', '0000-00-00', 'Male', '', 9771234523, 'rramkumarbedia@gmail.com', 'Ranchi', 'Jharkhand', NULL, 835101, 'pro_image_22070622.jpg', '', '1', '2022-07-06 01:56:47', '2022-07-08 06:01:04'),
(12, '2207143', 'Ram Kumar Bedia', '0000-00-00', 'Male', '', 9771234502, 'rramkumarbedia@gmail.com', 'Ranchi', 'Jharkhand', NULL, 835101, NULL, '', NULL, '2022-07-14 08:37:18', '2022-07-14 08:37:18'),
(14, '22071415', 'shubodh', '0000-00-00', 'Male', '', 9771234514, 'ss@gmail.com', 'Ranchi', 'Jharkhand', NULL, 835101, 'pro_image_22071415.jpg', '', NULL, '2022-07-14 09:48:43', '2022-07-14 12:42:41'),
(15, '22071416', 'office', '0000-00-00', 'Male', '', 9771234515, 'office@gmail.com', 'Ranchi', 'Jharkhand', NULL, 835101, NULL, '', NULL, '2022-07-14 10:16:23', '2022-07-14 10:16:23'),
(16, '2207144', 'Rahul Kumar', '0000-00-00', 'Male', '', 9771234513, 'rramkumarbedia@gmail.com', 'Hazaribag', 'Jharkhand', NULL, 835101, 'pro_image_2207144.jpg', '', '1', '2022-07-14 13:07:37', '2022-08-12 10:27:11'),
(17, '2207141', 'Vishal Kumar', '0000-00-00', 'male', '', 7004019567, 'vk@gmail.com', 'Ranchi', 'Jharkhand', NULL, 834008, 'pro_image_2207141.jpg', '', NULL, '2022-07-15 08:46:58', '2022-08-12 09:24:13'),
(18, '22071517', 'Ram kumar bedia', '0000-00-00', 'Male', '', 9771234512, 'rramkumarbedia@gmail.com', 'Ranchi', 'Jharkhand', NULL, 835101, NULL, '', NULL, '2022-07-15 09:09:16', '2022-07-15 09:09:16'),
(19, '22071518', 'Ajay', '0000-00-00', 'Male', '', 9771234520, 'rramkumarbedia@gmail.com', 'Ranchi', 'Jharkhand', NULL, 835101, NULL, '', NULL, '2022-07-15 09:21:08', '2022-07-15 09:21:08'),
(20, '22072021', 'Ram Kumar Bedia', '0000-00-00', 'Male', '', 9771234526, 'rramkumarbedia@gmail.com', 'Ranchi', 'Jharkhand', NULL, 835101, NULL, '', NULL, '2022-07-20 09:53:54', '2022-07-20 09:53:54'),
(21, '22080527', 'ram', '0000-00-00', 'Male', '', 6209009007, 'ramkr.bit@gmail.com', 'Ranchi', 'Jharkhand', NULL, 834001, NULL, '', NULL, '2022-08-05 13:16:27', '2022-08-05 13:16:27'),
(22, '22081228', 'Ram Kumar Bedia', '0000-00-00', 'Male', '', 9771234555, 'rramkumarbedia@gmail.com', 'Bokaro', 'Jharkhand', NULL, 835101, 'pro_image_22081228.jpg', '', NULL, '2022-08-12 10:44:18', '2022-08-12 10:44:49'),
(23, '22121330', 'Ram Kumar Bedia', '2011-10-20', 'Male', '', 9771537376, 'jisramkumarbedia@gmail.com', 'Ranchi', 'Jharkhand', 'India', 835101, 'public/img/user/65488457b7b81.webp', 'public/img/user/65488457b7b82.webp', '1', '2022-12-13 05:37:55', '2023-11-06 06:14:48'),
(24, '23030532', 'test', '0000-00-00', 'Male', '', 8267864418, 'test@test.in', 'Ranchi', 'Jharkhand', NULL, 834001, NULL, '', NULL, '2023-03-05 09:52:48', '2023-03-05 09:52:48'),
(25, '23040435', 'bhole', '0000-00-00', 'Male', '', 8227005107, 'bhole@gmail.com', 'Hazaribag', 'Jharkhand', NULL, 835101, NULL, '', NULL, '2023-04-04 12:01:20', '2023-04-04 12:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` bigint(12) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT 'user',
  `status` varchar(100) NOT NULL DEFAULT 'unverified',
  `otp` int(10) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `name`, `email`, `mobile`, `email_verified_at`, `password`, `type`, `status`, `otp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '2207141', 'Vishal Kumar', 'vk@gmail.com', 7004019567, NULL, '$2y$10$ZfB0FbUjmhJSZqwdzqG9a.2siSCWtYYyUlg2aPy4Qfd0K9YSwCSlu', 'user', 'verified', NULL, NULL, '2022-07-14 07:53:04', '2022-08-12 10:49:19'),
(2, '2207142', NULL, NULL, 9771234501, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 07:56:58', '2022-07-14 08:51:41'),
(3, '2207143', 'Ram Kumar Bhedia', NULL, 9771234502, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 08:00:27', '2022-07-14 08:44:34'),
(4, '2207144', 'Rahul Kumar', NULL, 9771234513, NULL, NULL, 'user', 'verified', 1234, NULL, '2022-07-14 08:02:21', '2022-09-06 08:08:34'),
(5, '2207145', NULL, NULL, 9771234503, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 08:49:17', '2022-07-14 09:10:47'),
(6, '2207146', NULL, NULL, 9771234504, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 08:50:56', '2022-07-14 09:11:52'),
(7, '2207147', NULL, NULL, 9771234505, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 09:14:38', '2022-07-14 09:20:47'),
(8, '2207148', NULL, NULL, 9771234506, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 09:18:11', '2022-07-14 09:21:11'),
(9, '2207149', NULL, NULL, 9771234507, NULL, NULL, 'user', 'unverified', 1234, NULL, '2022-07-14 09:22:11', '2022-07-14 09:22:11'),
(10, '22071410', NULL, NULL, 9771234508, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 09:24:35', '2022-07-14 09:25:03'),
(11, '22071411', NULL, NULL, 9771234509, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 09:26:26', '2022-07-14 09:26:57'),
(12, '22071412', NULL, NULL, 9771234510, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 09:28:10', '2022-07-14 09:28:17'),
(13, '22071413', NULL, NULL, 9771234511, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 09:31:34', '2022-07-15 09:18:45'),
(15, '22071415', 'shubodh', NULL, 9771234514, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 09:46:35', '2022-07-14 13:05:59'),
(16, '22071416', 'office', NULL, 9771234515, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-14 10:14:34', '2022-07-14 12:18:00'),
(17, '22071517', 'Ram kumar bedia', NULL, 9771234512, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-15 09:08:16', '2022-07-15 09:09:40'),
(18, '22071518', 'Ajay', NULL, 9771234520, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-15 09:19:53', '2023-03-14 16:33:56'),
(19, NULL, 'Manoj Horo', 'manoj@gmail.com', 0, NULL, '$2y$10$ZfB0FbUjmhJSZqwdzqG9a.2siSCWtYYyUlg2aPy4Qfd0K9YSwCSlu', 'admin', 'verified', NULL, 'TWfTLTfrfpvJfW6EXf8NXREvwnkfiTESHHRYLDTZ1v4hkOAyKM2O2stOS3NB', '2022-07-20 06:15:33', '2023-03-13 18:11:44'),
(20, NULL, 'Sonali Biswas', 'sonali@gmail.com', NULL, NULL, '$2y$10$DcLJn8EMAncKaXOLfvrLC.5D/DIXg8qdn61jkGzEWFQEjapJ1kbo6', 'user', 'unverified', NULL, NULL, '2022-07-20 06:44:21', '2022-07-20 06:44:21'),
(21, '22072021', 'Ram Kumar Bedia', NULL, 9771234526, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-07-20 09:52:41', '2022-07-20 11:57:27'),
(22, '232323213', 'Test', 'test@gmail.com', NULL, NULL, '$2y$10$4awDANR7jwZgcvlRYFXkWe3y/fslavGrev4YlCC2sFy04SuVXss9q', 'user', 'unverified', NULL, NULL, '2022-07-23 06:49:18', '2022-07-23 06:49:18'),
(25, '22080225', 'Vishal Kumar', 'vkumar@gmail.com', 7878787887, NULL, '$2y$10$O.FZWai6ufNeGDylSrwS3O7Qa8fBL5oIAi7MfEYQtJTOkPMedNbnK', 'user', 'unverified', NULL, 'Gv9CrwTxwXDiuQA0F3BQhtZn5ejMUTYfqCUOVgRgnZFPk7XxCCJYVDie16yH', '2022-08-02 10:31:04', '2022-08-02 10:31:04'),
(26, '22080226', 'Vishal Kumar', 'jisvishalkumar@gmail.com', 7004019561, NULL, '$2y$10$mwOIt1FKRfmYCfk4uQ8K3.Hh7lfa3a05PjuY2nz61po0gI0rmQHt.', 'user', 'unverified', NULL, '4wnHCQTybjnMgWwz5K3qPPSq7IhncfvUjrRy3NSjlfODxWyIQvvzhF3dl0YO', '2022-08-02 11:20:35', '2022-08-02 11:21:55'),
(27, '22080527', 'ram', NULL, 6209009007, NULL, NULL, 'user', 'verified', 1234, NULL, '2022-08-05 13:13:11', '2023-11-06 23:27:11'),
(28, '22081228', 'Ram Kumar Bedia', NULL, 9771234555, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-08-12 10:43:00', '2022-08-12 10:44:18'),
(29, '22081929', NULL, NULL, 7004019576, NULL, NULL, 'user', 'verified', NULL, NULL, '2022-08-19 06:23:37', '2022-08-19 06:23:45'),
(30, '22121330', 'Ram Kumar Bedia', 'jisramkumarbedia@gmail.com', 9771537376, NULL, NULL, 'user', 'verified', 1234, NULL, '2022-12-13 05:35:50', '2023-10-31 07:53:34'),
(31, '22121331', 'Ram Kumar Bedia', 'kk@gmail.com', 1234567890, NULL, '$2y$10$3WhNSQ6EQtohjieAAlnFJeT22Jh3U2IQgY7itL9tyaApIip3UNOP.', 'user', 'unverified', NULL, NULL, '2022-12-13 09:00:17', '2022-12-13 09:00:17'),
(32, '23030532', 'test', NULL, 8267864418, NULL, NULL, 'user', 'verified', NULL, NULL, '2023-03-05 09:51:19', '2023-03-22 17:43:33'),
(33, '23031033', NULL, NULL, 8210218747, NULL, NULL, 'user', 'verified', NULL, NULL, '2023-03-10 05:13:00', '2023-10-06 16:30:06'),
(34, '23032634', NULL, NULL, 8267864410, NULL, NULL, 'user', 'verified', NULL, NULL, '2023-03-26 12:44:05', '2023-03-26 12:44:22'),
(35, '23040435', 'bhole', NULL, 8227005107, NULL, NULL, 'user', 'verified', 1234, NULL, '2023-04-04 11:59:19', '2023-08-03 17:39:57'),
(36, '23050136', NULL, NULL, 7458944954, NULL, NULL, 'user', 'unverified', 1234, NULL, '2023-05-01 06:46:24', '2023-05-01 06:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `url`, `type`, `image`, `status`, `created_at`, `updated_at`) VALUES
(45, 'Invitation to Inauguration of Innovative Organic Agri India', 'Do you know the Danger of Chemical fertilizers? Just have a look what we are consuming. We are inviting you to join our vision.', 'https://youtu.be/udDZxLNOikI', 'free', 'video45.jpg', 1, '2022-06-21 04:50:10', '2022-06-21 05:01:45'),
(46, 'Best way to increase the flowering in rose', 'Best way to increase the flowering in rose.It is an organic rose fertiliser.Best organic fertiliser', 'https://youtu.be/xvYKRoHkQqA', 'paid', 'video46.jpg', 1, '2022-06-21 04:52:52', '2022-06-21 05:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `webinars`
--

CREATE TABLE `webinars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'upcoming',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinars`
--

INSERT INTO `webinars` (`id`, `title`, `date`, `image`, `link`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kesariya - Brahmāstra | Ranbir Kapoor | Alia Bhatt | Pritam | Arijit Singh | Amitabh Bhattacharya', '2022-07-18 17:15:00', 'webinar1.jpg', 'https://www.youtube.com/watch?v=BddP6PYo2gs', 'free', 'upcoming', '2022-07-18 11:46:04', '2022-07-18 11:46:04'),
(2, 'Qaafirana | Kedarnath | Sushant Rajput | Sara Ali Khan | Arijit Singh & Nikhita | Amit Trivedi', '2022-07-18 17:16:00', 'webinar2.jpg', 'https://www.youtube.com/watch?v=ZmcBC9-wAXM', 'free', 'live', '2022-07-18 11:46:47', '2022-07-18 11:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `pid` varchar(225) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `uid`, `pid`, `status`, `created_at`, `updated_at`) VALUES
(4, 30, '64e451916feb6', '1', '2023-09-22 05:03:15', '2023-09-22 10:33:15'),
(5, 27, '64e4557d2e3be', '1', '2023-10-06 22:14:56', '2023-10-06 18:14:56'),
(7, 30, '650a9b3bc0eb1', '1', '2023-11-10 08:39:06', '2023-11-10 14:09:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `first_buys`
--
ALTER TABLE `first_buys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_menus`
--
ALTER TABLE `header_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_addresses`
--
ALTER TABLE `invoice_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_sliders`
--
ALTER TABLE `main_sliders`
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
-- Indexes for table `morders`
--
ALTER TABLE `morders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpayments`
--
ALTER TABLE `mpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mplants`
--
ALTER TABLE `mplants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mplant_categories`
--
ALTER TABLE `mplant_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mplant_sub_categories`
--
ALTER TABLE `mplant_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nursery_sliders`
--
ALTER TABLE `nursery_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_items`
--
ALTER TABLE `ordered_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_settings`
--
ALTER TABLE `order_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `placed_orders`
--
ALTER TABLE `placed_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant_imgs`
--
ALTER TABLE `plant_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommended_fertilizers`
--
ALTER TABLE `recommended_fertilizers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_imgs`
--
ALTER TABLE `sub_category_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webinars`
--
ALTER TABLE `webinars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chat_users`
--
ALTER TABLE `chat_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_buys`
--
ALTER TABLE `first_buys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header_menus`
--
ALTER TABLE `header_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_addresses`
--
ALTER TABLE `invoice_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `main_sliders`
--
ALTER TABLE `main_sliders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `morders`
--
ALTER TABLE `morders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mpayments`
--
ALTER TABLE `mpayments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mplants`
--
ALTER TABLE `mplants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `mplant_categories`
--
ALTER TABLE `mplant_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mplant_sub_categories`
--
ALTER TABLE `mplant_sub_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nursery_sliders`
--
ALTER TABLE `nursery_sliders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ordered_items`
--
ALTER TABLE `ordered_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `order_settings`
--
ALTER TABLE `order_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `placed_orders`
--
ALTER TABLE `placed_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `plant_imgs`
--
ALTER TABLE `plant_imgs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=819;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recommended_fertilizers`
--
ALTER TABLE `recommended_fertilizers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sub_category_imgs`
--
ALTER TABLE `sub_category_imgs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `webinars`
--
ALTER TABLE `webinars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
