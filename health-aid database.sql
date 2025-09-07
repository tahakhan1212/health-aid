-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2025 at 10:53 AM
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
-- Database: `health-aid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'admin', 'admin1212@gmail.com', '$2y$10$Nf0Ez5Vy86Z1.w1aRxbuP.wGAR/hi08Vvpi47OqKLfCnHjNt6l0Ey', '2025-08-10 05:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `order_id`, `is_read`, `created_at`) VALUES
(21, 21, 1, '2025-08-14 04:56:42'),
(22, 22, 1, '2025-08-15 04:07:02'),
(23, 23, 1, '2025-08-15 10:15:55'),
(24, 24, 1, '2025-08-16 00:25:43'),
(25, 25, 1, '2025-08-16 02:14:38'),
(26, 26, 1, '2025-08-16 04:03:32'),
(27, 27, 1, '2025-08-19 01:05:18'),
(28, 28, 1, '2025-08-19 01:17:23'),
(29, 29, 1, '2025-08-19 01:18:00'),
(30, 30, 1, '2025-08-19 02:02:16'),
(31, 31, 1, '2025-08-19 02:19:22'),
(32, 32, 1, '2025-08-23 05:57:01'),
(33, 33, 1, '2025-08-23 06:06:00'),
(34, 34, 1, '2025-08-24 02:41:22'),
(35, 35, 1, '2025-08-27 23:59:06'),
(36, 36, 0, '2025-08-28 06:25:03'),
(37, 37, 1, '2025-08-29 01:05:27'),
(38, 38, 0, '2025-08-30 03:29:34'),
(39, 39, 1, '2025-09-01 08:21:09'),
(40, 40, 1, '2025-09-01 10:07:53'),
(41, 41, 1, '2025-09-01 23:11:21'),
(42, 42, 1, '2025-09-03 08:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `archived_orders`
--

CREATE TABLE `archived_orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archived_orders`
--

INSERT INTO `archived_orders` (`id`, `user_id`, `username`, `total_amount`, `status`, `payment_method`, `shipping_address`, `created_at`, `updated_at`, `archived_at`) VALUES
(6, 1, 'tahasultan', 349.17, 'pending', 'Bank Transfer', 'gulshan', '2025-08-13 07:24:13', '2025-08-13 07:24:13', '2025-08-13 10:40:20'),
(10, 1, 'tahasultan', 885.07, 'completed', 'Cash on Delivery', 'asdas', '2025-08-13 09:06:41', '2025-08-13 09:06:41', '2025-08-13 10:38:49'),
(11, 1, 'tahasultan', 1045.00, 'completed', 'Cash on Delivery', 'pib', '2025-08-14 05:57:49', '2025-08-14 05:57:49', '2025-08-14 06:20:55'),
(12, 1, 'tahasultan', 810.00, 'completed', 'Cash on Delivery', 'gulshan iqbal block 13 near aqsa masjid', '2025-08-14 06:02:58', '2025-08-14 06:02:58', '2025-08-14 06:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `archived_requests`
--

CREATE TABLE `archived_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `request_type` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `admin_notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archived_requests`
--

INSERT INTO `archived_requests` (`id`, `user_id`, `username`, `request_type`, `category`, `product_name`, `priority`, `description`, `status`, `admin_notes`, `created_at`, `updated_at`, `archived_at`) VALUES
(16, 2, 'tahakhan', 'product_request', 'personal_care', '', 'high', 'durex 3 pcs imported invisible', 'completed', 'aaja bhai mere', '2025-08-11 14:30:22', '2025-08-23 11:23:50', '2025-08-23 11:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `buy_again_actions`
--

CREATE TABLE `buy_again_actions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `count` int(11) DEFAULT 1,
  `action_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buy_again_actions`
--

INSERT INTO `buy_again_actions` (`id`, `user_id`, `product_id`, `order_id`, `count`, `action_date`, `created_at`, `updated_at`) VALUES
(1, 3, 69, 36, 4, '2025-09-01 08:37:50', '2025-09-01 03:27:33', '2025-09-01 03:37:50'),
(2, 3, 98, 36, 3, '2025-09-01 08:37:51', '2025-09-01 03:27:36', '2025-09-01 03:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `buy_again_items`
--

CREATE TABLE `buy_again_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `last_purchased` datetime DEFAULT NULL,
  `purchase_count` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buy_again_items`
--

INSERT INTO `buy_again_items` (`id`, `user_id`, `product_id`, `order_id`, `quantity`, `last_purchased`, `purchase_count`, `created_at`, `updated_at`) VALUES
(1, 3, 69, 36, 2, '2025-09-01 08:45:11', 14, '2025-09-01 03:38:19', '2025-09-01 03:45:11'),
(2, 3, 98, 36, 1, '2025-09-01 08:45:11', 13, '2025-09-01 03:38:19', '2025-09-01 03:45:11'),
(3, 3, 88, 23, 2, '2025-09-01 08:40:55', 2, '2025-09-01 03:38:27', '2025-09-01 03:40:55'),
(4, 1, 97, 40, 1, '2025-09-01 15:10:34', 1, '2025-09-01 10:10:34', '2025-09-01 10:10:34'),
(5, 1, 71, 41, 1, '2025-09-03 13:43:47', 2, '2025-09-01 23:12:38', '2025-09-03 08:43:47'),
(6, 1, 87, 38, 1, '2025-09-02 04:12:38', 1, '2025-09-01 23:12:38', '2025-09-01 23:12:38'),
(7, 1, 88, 41, 2, '2025-09-03 13:43:47', 1, '2025-09-03 08:43:47', '2025-09-03 08:43:47'),
(8, 1, 85, 41, 1, '2025-09-03 13:43:47', 1, '2025-09-03 08:43:47', '2025-09-03 08:43:47'),
(9, 1, 73, 41, 1, '2025-09-03 13:43:47', 1, '2025-09-03 08:43:47', '2025-09-03 08:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'tablets'),
(2, 'capsules'),
(3, 'pessaries'),
(4, 'cream'),
(5, 'ointment'),
(6, 'eye drop'),
(7, 'ear drop'),
(8, 'gel'),
(26, 'syrup'),
(28, 'sachet'),
(31, 'others'),
(32, 'pen'),
(33, 'injection'),
(39, 'penfil'),
(40, 'vial'),
(41, 'lotion'),
(42, 'solution'),
(43, 'suppliments');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_purposes`
--

CREATE TABLE `medicine_purposes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_purposes`
--

INSERT INTO `medicine_purposes` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Pain Relief', NULL, '2025-07-20 23:03:51'),
(2, 'Fever', NULL, '2025-07-20 23:03:51'),
(3, 'Diabetic', NULL, '2025-07-20 23:03:51'),
(4, 'Blood Pressure', NULL, '2025-07-20 23:03:51'),
(5, 'Allergy', NULL, '2025-07-20 23:03:51'),
(6, 'Cold & Cough', NULL, '2025-07-20 23:03:51'),
(7, 'Antibiotic', NULL, '2025-07-20 23:03:51'),
(8, 'Heart', NULL, '2025-07-20 23:03:51'),
(9, 'Digestive', NULL, '2025-07-20 23:03:51'),
(10, 'Skin Care', NULL, '2025-07-20 23:03:51'),
(11, 'Vitamins', NULL, '2025-07-20 23:03:51'),
(12, 'Other', NULL, '2025-07-20 23:03:51'),
(13, 'hair fall', NULL, '2025-08-08 01:21:10'),
(15, 'sun protection', NULL, '2025-08-08 01:21:10'),
(16, 'sleep disorder', NULL, '2025-08-08 01:21:10'),
(17, 'diarrhea', NULL, '2025-08-08 01:28:54'),
(18, 'fits', NULL, '2025-08-27 03:57:25'),
(19, 'supplement', NULL, '2025-08-27 03:57:25'),
(20, 'acnes / pimple', NULL, '2025-08-27 03:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('pending','processing','completed','cancelled') DEFAULT 'pending',
  `shipping_address` text NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `shipping_fee` decimal(10,2) DEFAULT 0.00,
  `is_seen` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `total_amount`, `status`, `shipping_address`, `payment_method`, `created_at`, `shipping_fee`, `is_seen`) VALUES
(21, 1, '0000-00-00 00:00:00', 364.50, 'completed', 'gulshan', 'Cash on Delivery', '2025-08-14 04:56:42', 0.00, 1),
(22, 1, '0000-00-00 00:00:00', 1189.02, 'completed', 'pib colony near mashallah medical home no a15', 'Cash on Delivery', '2025-08-15 04:07:02', 0.00, 1),
(23, 3, '0000-00-00 00:00:00', 243.00, 'processing', 'muneed kAY BURGER WALAY KAU  GHAR\\r\\n', 'Cash on Delivery', '2025-08-15 10:15:55', 0.00, 1),
(24, 1, '0000-00-00 00:00:00', 463.20, 'cancelled', 'asasas', 'Cash on Delivery', '2025-08-16 00:25:43', 0.00, 1),
(25, 1, '0000-00-00 00:00:00', 910.00, 'completed', 'aaaaaa', 'Cash on Delivery', '2025-08-16 02:14:38', 100.00, 1),
(26, 1, '0000-00-00 00:00:00', 1100.00, 'cancelled', 'gulshan', 'Cash on Delivery', '2025-08-16 04:03:32', 0.00, 1),
(27, 1, '0000-00-00 00:00:00', 563.20, 'pending', 'bahadurabad', 'Cash on Delivery', '2025-08-19 01:05:18', 100.00, 1),
(28, 1, '0000-00-00 00:00:00', 650.00, 'pending', 'ggagaa', 'Cash on Delivery', '2025-08-19 01:17:23', 100.00, 1),
(29, 1, '0000-00-00 00:00:00', 1047.51, 'pending', 'bababa', 'Cash on Delivery', '2025-08-19 01:18:00', 0.00, 1),
(30, 1, '0000-00-00 00:00:00', 1288.00, 'completed', 'hai hi nhi t dega kese', 'Cash on Delivery', '2025-08-19 02:02:16', 0.00, 1),
(31, 1, '0000-00-00 00:00:00', 2101.70, 'pending', 'sssssss', 'Cash on Delivery', '2025-08-19 02:19:22', 0.00, 1),
(32, 1, '0000-00-00 00:00:00', 798.34, 'completed', 'gulshan iqbal block 13', 'Cash on Delivery', '2025-08-23 05:57:01', 100.00, 1),
(33, 1, '0000-00-00 00:00:00', 449.17, 'completed', 'assa', 'Cash on Delivery', '2025-08-23 06:06:00', 100.00, 1),
(34, 2, '0000-00-00 00:00:00', 563.20, 'completed', 'dfuhdtydyuwtg', 'Cash on Delivery', '2025-08-24 02:41:22', 100.00, 1),
(35, 1, '0000-00-00 00:00:00', 303.32, 'completed', 'dkjvsjkbcasvdaslb', 'Cash on Delivery', '2025-08-27 23:59:06', 100.00, 1),
(36, 3, '0000-00-00 00:00:00', 1066.30, 'pending', 'gulshan wale babu', 'Cash on Delivery', '2025-08-28 06:25:03', 0.00, 1),
(37, 1, '0000-00-00 00:00:00', 1921.70, 'completed', 'gulshan', 'Cash on Delivery', '2025-08-29 01:05:27', 0.00, 1),
(38, 1, '0000-00-00 00:00:00', 600.48, 'pending', 'TESTING\\r\\n', 'Cash on Delivery', '2025-08-30 03:29:34', 100.00, 1),
(39, 1, '0000-00-00 00:00:00', 3402.72, 'cancelled', 'FB AREA', 'Cash on Delivery', '2025-09-01 08:21:09', 0.00, 1),
(40, 1, '0000-00-00 00:00:00', 650.00, 'processing', 'abc road karachi', 'Cash on Delivery', '2025-09-01 10:07:53', 100.00, 1),
(41, 1, '0000-00-00 00:00:00', 2141.16, 'completed', 'dytydujtyjstrdf', 'Cash on Delivery', '2025-09-01 23:11:21', 0.00, 1),
(42, 1, '0000-00-00 00:00:00', 422.00, 'completed', 'gulsg\\r\\n', 'Cash on Delivery', '2025-09-03 08:40:23', 100.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(29, 21, 88, 3, 121.50),
(30, 22, 87, 1, 203.32),
(31, 22, 90, 1, 463.20),
(32, 22, 96, 1, 522.50),
(33, 23, 88, 2, 121.50),
(34, 24, 90, 1, 463.20),
(35, 25, 74, 3, 270.00),
(36, 26, 97, 2, 550.00),
(37, 27, 90, 1, 463.20),
(38, 28, 97, 1, 550.00),
(39, 29, 77, 3, 349.17),
(40, 30, 69, 4, 322.00),
(41, 31, 85, 1, 180.00),
(42, 31, 99, 2, 960.85),
(43, 32, 77, 2, 349.17),
(44, 33, 77, 1, 349.17),
(45, 34, 90, 1, 463.20),
(46, 35, 87, 1, 203.32),
(47, 36, 69, 2, 322.00),
(48, 36, 98, 1, 422.30),
(49, 37, 99, 2, 960.85),
(50, 38, 71, 1, 297.16),
(51, 38, 87, 1, 203.32),
(52, 39, 91, 1, 345.92),
(53, 39, 103, 1, 206.80),
(54, 39, 102, 2, 1425.00),
(55, 40, 97, 1, 550.00),
(56, 41, 88, 2, 121.50),
(57, 41, 85, 1, 176.00),
(58, 41, 71, 1, 297.16),
(59, 41, 73, 1, 1425.00),
(60, 42, 69, 1, 322.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracking`
--

CREATE TABLE `order_tracking` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `generic` varchar(255) NOT NULL,
  `mg` varchar(20) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `purpose_id` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discounted_price` decimal(10,2) DEFAULT NULL,
  `discount_percent` int(11) NOT NULL DEFAULT 0,
  `quantityInBox` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `is_top` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `medicine_type` enum('tablet','capsules','pessaries','syrup','sachet','cream','ointment','gel','eye drop','ear drop','lotion','solution','injection','pen','penfil','vial') NOT NULL,
  `bottle_size` int(11) DEFAULT NULL,
  `quantityInStrip` varchar(50) DEFAULT NULL,
  `partial_strips` decimal(10,2) DEFAULT 0.00,
  `partial_boxes` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand`, `name`, `generic`, `mg`, `category_id`, `purpose_id`, `description`, `price`, `discounted_price`, `discount_percent`, `quantityInBox`, `stock`, `is_top`, `image`, `created_at`, `medicine_type`, `bottle_size`, `quantityInStrip`, `partial_strips`, `partial_boxes`) VALUES
(36, 'recckit benkister', 'Gaviscon', 'Sodium Alginate , Sodium Bicarbonate', '122', 26, 7, 'hello world', 250.00, 230.00, 8, 1, 40, 1, '1752978938_gaviscon.webp', '2025-07-20 02:35:38', 'syrup', 110, NULL, 0.00, 0.00),
(69, 'atco', 'Brimo-T', 'Sodium Alginate , Sodium Bicarbonate', '', 6, 6, 'eye drop', 350.00, 322.00, 8, 1, 1, 1, '1753749821_brimo t.webp', '2025-07-29 00:43:41', 'ear drop', 15, NULL, 0.00, 0.00),
(71, 'saffaron', 'terbisil', 'terbinafine', '350', 4, 7, 'cream', 323.00, 297.16, 8, 1, 0, 1, '1753751703_terbisil.webp', '2025-07-29 01:15:03', 'cream', 15, NULL, 0.00, 0.00),
(73, 'atco', 'novomix', 'Sodium Alginate , Sodium Bicarbonate', '11', 32, 20, 'waS', 1500.00, 1425.00, 5, 5, 2, 1, '1753846052_novomix.webp', '2025-07-30 01:44:15', 'pen', 15, NULL, 0.00, 0.00),
(74, 'Hilton', 'Methycoobal', 'Sodium Alginate , Sodium Bicarbonate', '500', 1, 7, 'Methycobal Tablets Specification\r\nRequires Prescription (YES/NO)\r\nYes\r\n\r\nGenerics\r\nMecobalamin\r\n\r\nUsed For\r\nAnaemia\r\n\r\nHow it works\r\n1. Mecobalamin is the one and only homologue of Vitamin B12 found in the brain that participates in transmethylation. Mecobalamin is well transported to nerve cell organelles than cyanocobalamin and plays the role of coenzyme in the synthesis of methionine from homocysteine. It is also involved in the synthesis of thymidine from deoxyuridine thus promoting nucleic acid protein synthesis.2. Mecobalamin normalizes axonal transport of skeletal protein in sciatic nerve cells. It exhibits neuropathologically and electrophysiologically inhibitory effects on nerve degeneration in neuropathies induced by drugs such as adriamycin, acrylamide and vincristine.\r\n\r\nMethycobal Tablets Usage And Safety\r\nDosage\r\nMecobalamin\r\n\r\nSide Effects\r\nGenerally mecobalamin is well tolerated. However a few side effects like GI discomfort (including anorexia, nausea or diarrhea) and rash may be seen.\r\n\r\nDrug Interactions\r\nNeomycin, aminosalicylic acid, H2-blockers and colchicine , oral contraceptives , parenteral chloramphenicol.\r\n\r\nIndication\r\nMecobalamin is indicated for the treatment of: 1. Peripheral neuropathies. 2. Megaloblastic anemia caused by vitamin B12 deficiency.\r\n\r\nWhen not to Use\r\nMecobalamin is contraindicated in patients who are hypersensitive to this drug or any component of this product or other B12 containing products.\r\n\r\nMethycobal Tablets Precautions\r\nPrecaution\r\nMecobalamin should not be used over a period of months if there is lack of satisfactory clinical response in patients with megaloblastic anemia probably due to vitamin B12 deficiency or with peripheral neuropathies.\r\n\r\nMethycobal Tablets Warnings\r\nWarning 1\r\nTell your doctor if you have ever had Leber\'s disease or other form of optic nerve damage.\r\n\r\nWarning 2\r\nTell your doctor if you have an iron or folic acid deficiency.\r\n\r\nWarning 3\r\nKeep a list of all your medications with you and share the list with your doctor and pharmacist.\r\n\r\nMethycobal Tablets Additional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore this medicine at room temperature, away from direct light and heat.', 300.00, 270.00, 10, 10, 47, 0, '1753841300_methycobal-tablets-100s.webp', '2025-07-30 02:08:20', 'tablet', NULL, '10', 0.00, 0.00),
(77, 'atco', 'acdermin', 'clindamycin', '', 8, 7, 'Acdermin Gel Specification\r\nRequires Prescription (YES/NO)\r\nYes\r\n\r\nGenerics\r\nClindamycin Phosphate , Tretinoin\r\n\r\nUsed For\r\nAcne\r\n\r\nHow it works\r\nClindamycin is an antibiotic. It limits the growth of bacteria associated with acne and the inflammation caused by these bacteria. Tretinoin normalizes the growth of superficial skin cells and causes normal shedding of the cells that clog the hair follicles in areas with acne. This prevents the build-up of sebum and the formation of early acne lesions (blackheads and whiteheads).\r\n\r\nAcdermin Gel Usage And Safety\r\nDosage\r\nClindamycin Phosphate , Tretinoin\r\n\r\nSide Effects\r\nUncommon: may affect up to 1 in 100 people • Acne, dry skin, redness of the skin, increased sebum production, photosensitivity reaction, itching, rash, scaly rash, scaling of the skin, sunburn • Application site reactions such as burning, inflamed skin, dryness, redness of the skin Rare: may affect up to 1 in 1,000 people • Hypersensitivity • Underactive thyroid gland (symptoms may include fatigue, weakness, weight gain, dry hair, rough pale skin, hair loss, increased sensitivity to cold). • Headache • Eye irritation • Gastroenteritis (inflammation of any part of the gastrointestinal tract), nausea • Inflamed skin, herpes simplex (cold sore), rash macular (small, flat, red spots), skin bleeding, skin burning sensation, loss of skin pigmentation, skin irritation • Application site symptoms such as irritation, swelling, superficial skin damage, discolouration, itching, scaling • Feeling hot, pain\r\n\r\nDrug Interactions\r\nSulphur, salicylic acid, benzoyl peroxide or rescinol , erythromycin or metronidazole, aminoglycosides, other antibiotics or corticosteroids .\r\n\r\nIndication\r\nIt is used on the skin to treat acne.\r\n\r\nWhen not to Use\r\nDo not use : • If you are pregnant • If you are planning a pregnancy • If you are allergic to clindamycin, tretinoin, or any of the other ingredients of this medicine . • If you are allergic to lincomycin. • If you have a chronic inflammatory bowel disease (e.g. Crohn’s disease or ulcerative colitis). • If you have a history of colitis with past antibiotic use which is characterised by prolonged or significant diarrhoea or abdominal cramps.\r\n\r\nAcdermin Gel Precautions\r\nPrecaution\r\nAvoid contact of this medicine with the mouth, eyes, mucous membranes and with abraded or eczematous skin. Be careful when applying to sensitive areas of skin. In case of accidental contact with the eyes, rinse with plenty of lukewarm water.\r\n\r\nAcdermin Gel Warnings\r\nWarning 1\r\nIf you have atopic eczema (chronic, itching inflammation of the skin), please talk to your doctor before using this medicine.\r\n\r\nWarning 2\r\nExposure to natural or artificial light (such as a sunlamp) should be avoided. This is because this medicine may make your skin more sensitive to sunburn and other adverse effects of the sun.\r\n\r\nWarning 3\r\nTalk to your doctor in case an acute inflammation of the skin occurs when using this medicine.\r\n\r\nAcdermin Gel Additional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore this medicine at room temperature, away from direct light and heat.', 367.55, 349.17, 5, 1, 1, 1, '1753845236_acdermin gel.webp', '2025-07-30 03:13:56', 'gel', 20, NULL, 0.00, 0.00),
(85, 'snofi aventis', 'avil', 'Pheniramine Maleate', '12', 26, 7, 'avil', 200.00, 176.00, 12, 1, 0, 1, '1754542177_avil.webp', '2025-08-07 04:49:37', 'syrup', 120, NULL, 0.00, 0.00),
(87, 'haleon', 'Gaviscon', 'Sodium Alginate , Sodium Bicarbonate', '500', 26, 5, 'e', 221.00, 203.32, 8, 1, 20, 1, '1754542661_gaviscon.webp', '2025-08-07 04:57:41', 'syrup', 111, NULL, 0.00, 0.00),
(88, 'abbott', 'entamizole', 'Diloxanide furoate , Metronidazole', '', 26, 17, 'Entamizole 90Ml Suspension 250Mg/200Mg Specification\r\nRequires Prescription (YES/NO)\r\nYes\r\n\r\nGenerics\r\n Diloxanide furoate , Metronidazole\r\n\r\nUsed For\r\nBacterial Infection\r\n\r\nHow it works\r\nIt works by blocking the activity of entamoeba histolytica; inhibiting energy production and killing the bacteria and parasites .\r\n\r\nUsage And Safety\r\nDosage\r\n Diloxanide furoate , Metronidazole\r\n\r\nSide Effects\r\nGI upset , dysgeusia , leucopenia , urticaria , angioedema , CNS disturbances , dark urine . Neuropathy and epileptiform seizures on long term therapy . Severe bullous skin reactions.\r\n\r\nDrug Interactions\r\nAnticoagulants , phenobarbital , lithium , alcohol , phenytoin.\r\n\r\nIndication\r\nAcute amoebiasis, Chronic amoebiasis, Hepatic amoebiasis and other systemic diseases due to E. histolytica, Giardiasis. \r\n\r\nWhen not to Use\r\nHypersensitivity to any of the ingredients. In addition, it should not be used if you have the following conditions: Alcohol intoxication , Habit of drinking too much alcohol , Liver disease , Lower seizure threshold , Seizures , Tingling or pain of hands or feet.\r\n\r\nPrecautions\r\nPrecaution\r\nBefore taking metronidazole, tell your doctor or pharmacist if you are allergic to it; or to other antibiotics (such as tinidazole); or if you have any other allergies.\r\n\r\nWarnings\r\nWarning 1\r\nBefore using this medication, tell your doctor or pharmacist your medical history, especially of: liver disease, kidney disease, certain blood disorders (low blood cell counts).\r\n\r\nWarning 2\r\nDuring pregnancy, this medication should be used only when clearly needed. Discuss the risks and benefits with your doctor.\r\n\r\nWarning 3\r\nDo not drive, use machinery, or do anything that needs alertness until you can do it safely. \r\n\r\nAdditional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore this medicine at room temperature, away from direct light and heat.', 135.00, 121.50, 10, 1, 7, 1, '1754616634_entamizole.webp', '2025-08-08 01:30:34', 'syrup', 90, NULL, 0.00, 0.00),
(89, 'Hilton', 'zeegap', 'Pregabalin', '50', 2, 1, 'Zeegap Capsules 50Mg (1 Box = 2 Strips) (1 Strip = 14 Tablets) Specification\r\nRequires Prescription (YES/NO)\r\nYes\r\n\r\nGenerics\r\nPregabalin\r\n\r\nUsed For\r\nNeuropathic Pain\r\n\r\nHow it works\r\nPregabalin reduces neuronal calcium currents by binding to the alpha-2-delta subunit of voltage gated calcium channels in CNS tissues and this particular mechanism may be responsible for effects in neuropathic pain, anxiety and other pain syndromes.\r\n\r\nUsage And Safety\r\nDosage\r\nPregabalin\r\n\r\nSide Effects\r\nVery common: Dizziness, drowsiness and somnolence. Common:Increased appetite, euphoric mood, confusion, irritability, decreased libido, disorientation, insomnia, ataxia, abnormal coordination, tremor, dysarthria, memory impairment, disturbance in attention, paraesthesia, sedation, balance disorder, lethargy, headache, blurred vision, diplopia, vertigo, vomiting, dry mouth, constipation, flatulence, erectile dysfunction, gait abnormal, feeling drunk, fatigue, peripheral oedema, oedema and weight increased. Uncommon:Nasopharyngitis, anorexia, hypoglycemia, hallucination, panic attack, restlessness, agitation, depression, depressed mood, mood swings, depersonalisation, word finding difficulty, abnormal dreams, libido increased, anorgasmia, apathy, syncope, stupor, myoclonus, psychomotor hyperactivity.\r\n\r\nDrug Interactions\r\nCNS depressants such as opiates or benzodiazepines , ethanol , lorazepam , oxycodone.\r\n\r\nIndication\r\nPregabalin is indicated: - For the management of neuropathic pain associated with diabetic peripheral neuropathy. - For the management of postherpetic neuralgia. - For the treatment of pain associated with spinal cord injury . - As adjunctive therapy in adults with partial seizures with or without secondary generalization.- For the treatment of Generalized Anxiety Disorder (GAD) in adults. - For the treatment of fibromyalgia syndrome (FMS).\r\n\r\nWhen not to Use\r\nPregabalin is contraindicated in patients with a known hypersensitivity to pregabalin or any the component of the product. - Patients with rare hereditary problems of galactose intolerance, the Lapp lactase deficiency or glucose-galactose malabsorption should not take this medicine.\r\n\r\nPrecautions\r\nPrecaution\r\nAs with all Antiepileptic Drugs, pregabalin should be withdrawn gradually to minimize the potential of increased seizure frequency in patients with seizure disorders. If pregabalin is discontinued this should be done gradually over a minimum of 1 week.\r\n\r\nWarnings\r\nWarning 1\r\nPregabalin should be discontinued immediately if symptoms of angioedema, such as facial, perioral or upper airway swelling occur.\r\n\r\nWarning 2\r\nPregabalin associated weight gain is related to dose and duration of exposure. Some diabetic patients who gain weight on pregabalin treatment may need to adjust hypoglycemic medications.\r\n\r\nWarning 3\r\nPregabalin may cause dizziness and somnolence and therefore may have an influence on the ability to drive or use machines or may increase the occurrence of accidental injuries especially in the elderly population.\r\n\r\nAdditional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore this medicine at room temperature, away from direct light and heat.', 402.85, 362.57, 10, 2, 0, 1, '1754618838_zeegap 50mg.webp', '2025-08-08 02:07:18', 'tablet', NULL, '14', 0.00, 0.00),
(90, 'Hilton', 'zeegap', 'Pregabalin', '75', 2, 1, 'Zeegap Capsules 75Mg (1 Box = 2 Strips) (1 Strip = 14 Capsules) Specification\r\nRequires Prescription (YES/NO)\r\nYes\r\n\r\nGenerics\r\nPregabalin\r\n\r\nUsed For\r\nNeuropathic Pain\r\n\r\nHow it works\r\nPregabalin reduces neuronal calcium currents by binding to the alpha-2-delta subunit of voltage gated calcium channels in CNS tissues and this particular mechanism may be responsible for effects in neuropathic pain, anxiety and other pain syndromes.\r\n\r\nUsage And Safety\r\nDosage\r\nPregabalin\r\n\r\nSide Effects\r\nVery common: Dizziness, drowsiness and somnolence. Common:Increased appetite, euphoric mood, confusion, irritability, decreased libido, disorientation, insomnia, ataxia, abnormal coordination, tremor, dysarthria, memory impairment, disturbance in attention, paraesthesia, sedation, balance disorder, lethargy, headache, blurred vision, diplopia, vertigo, vomiting, dry mouth, constipation, flatulence, erectile dysfunction, gait abnormal, feeling drunk, fatigue, peripheral oedema, oedema and weight increased. Uncommon:Nasopharyngitis, anorexia, hypoglycemia, hallucination, panic attack, restlessness, agitation, depression, depressed mood, mood swings, depersonalisation, word finding difficulty, abnormal dreams, libido increased, anorgasmia, apathy, syncope, stupor, myoclonus, psychomotor hyperactivity.\r\n\r\nDrug Interactions\r\nCNS depressants such as opiates or benzodiazepines , ethanol , lorazepam , oxycodone.\r\n\r\nIndication\r\nPregabalin is indicated: - For the management of neuropathic pain associated with diabetic peripheral neuropathy. - For the management of postherpetic neuralgia. - For the treatment of pain associated with spinal cord injury . - As adjunctive therapy in adults with partial seizures with or without secondary generalization.- For the treatment of Generalized Anxiety Disorder (GAD) in adults. - For the treatment of fibromyalgia syndrome (FMS).\r\n\r\nWhen not to Use\r\nPregabalin is contraindicated in patients with a known hypersensitivity to pregabalin or any the component of the product. - Patients with rare hereditary problems of galactose intolerance, the Lapp lactase deficiency or glucose-galactose malabsorption should not take this medicine.\r\n\r\nPrecautions\r\nPrecaution\r\nAs with all Antiepileptic Drugs, pregabalin should be withdrawn gradually to minimize the potential of increased seizure frequency in patients with seizure disorders. If pregabalin is discontinued this should be done gradually over a minimum of 1 week.\r\n\r\nWarnings\r\nWarning 1\r\nPregabalin should be discontinued immediately if symptoms of angioedema, such as facial, perioral or upper airway swelling occur.\r\n\r\nWarning 2\r\nPregabalin associated weight gain is related to dose and duration of exposure. Some diabetic patients who gain weight on pregabalin treatment may need to adjust hypoglycemic medications.\r\n\r\nWarning 3\r\nPregabalin may cause dizziness and somnolence and therefore may have an influence on the ability to drive or use machines or may increase the occurrence of accidental injuries especially in the elderly population.\r\n\r\nAdditional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore this medicine at room temperature, away from direct light and heat.', 514.67, 463.20, 10, 2, 5, 0, '1754618947_zeegap 75mg.webp', '2025-08-08 02:09:07', 'tablet', NULL, '14', 0.00, 0.00),
(91, 'shaigan', 'esso', 'essomeprazole', '20', 2, 9, 'Esso Capsules 20Mg (1 Box = 2 Strips) (1 Strip = 7 Capsules) Specification\r\nRequires Prescription (YES/NO)\r\nYes\r\n\r\nGenerics\r\nEsomeprazole\r\n\r\nUsed For\r\nAcidity & Ulcers\r\n\r\nHow it works\r\nEsomeprazole works by binding irreversibly to the H+/K+ ATPase in the proton pump. Because the proton pump is the final pathway for secretion of hydrochloric acid by the parietal cells in the stomach, its inhibition dramatically decreases the secretion of hydrochloric acid into the stomach and alters gastric pH .\r\n\r\nUsage And Safety\r\nDosage\r\nEsomeprazole\r\n\r\nSide Effects\r\nHeadache , GI upset , Skin reactions , Dry mouth. Rarely angioedema . Rarely angiooedema , anaphylaxis , fundic gland polyps.\r\n\r\nDrug Interactions\r\nPhenytoin , warfarin , clopidogrel , ketoconazole , itraconazole , voriconazole , diazepam , citalopram , imipramine , clomipramine , CYP3A4 inhibitors or inducers , tacrolimus , digoxin , erlitinib , methotraxate\r\n\r\nIndication\r\nTreatment of Heartburn , GERD , Gastritis & Ulcer\r\n\r\nWhen not to Use\r\nIt is contraindicated in patients with known hypersensitivity to proton pump inhibitors (PPIs). Hypersensitivity reactions e.g. angioedema and anaphylaxis, bronchospasm, acute interstitial nephritis and urticaria have been reported with esomeprazole use.\r\n\r\nPrecautions\r\nPrecaution\r\nDaily long-term use (e.g. longer than 3 years) may lead to malabsorption or a deficiency of cyanocobalamin.\r\n\r\nWarnings\r\nWarning 1\r\nHypomagnesemia has been reported rarely with prolonged treatment with PPIs.\r\n\r\nWarning 2\r\nLong-term and multiple daily dose PPI therapy may be associated with an increased risk for osteoporosis-related fractures of the hip, wrist or spine.\r\n\r\nWarning 3\r\nAvoid concomitant use of Esomeprazole with clopidogrel.\r\n\r\nAdditional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore this medicine at room temperature, away from direct light and heat.', 376.00, 345.92, 8, 1, 1, 0, '1754619164_esso 20mg.webp', '2025-08-08 02:12:44', 'tablet', NULL, '14', 0.00, 0.00),
(96, 'hinucon', 'cran max', 'Cranberry Extract', NULL, 28, 12, 'cran', 550.00, 522.50, 5, 12, 0, 0, '1754959744_cran max.webp', '2025-08-12 00:49:04', 'sachet', NULL, NULL, 0.00, 0.00),
(97, 'bosch', 'Cebac Im/Iv', 'Cefoperazone , Salbactam', '2000', 33, 7, 'Cebac Im/Iv Injection 2G (1 Box = 1 Injection) Specification\r\nRequires Prescription (YES/NO)\r\nYes\r\n\r\nGenerics\r\nCefoperazone , Salbactam\r\n\r\nUsed For\r\nBacterial Infection\r\n\r\nHow it works\r\nThe anti-bacterial component of sulbactam/cefoperazone is cefoperazone, a third generation cephalosporin, which acts against sensitive organisms during the stage of active multiplication by inhibiting biosynthesis of cell wall mucopeptide. Sulbactam does not possess any useful antibacterial activity, except against Neisseriaceae and Acinetobacter. However, biochemical studies with cell-free bacterial systems have shown it to be an irreversible inhibitor of most important beta-lactamases produced by beta-lactam antibiotic-resistant organisms.\r\n\r\nUsage And Safety\r\nDosage\r\nCefoperazone , Salbactam\r\n\r\nSide Effects\r\nSulbactam/cefoperazone is generally well-tolerated. The majority of adverse events are of mild or moderate severity and are tolerated with continued treatment. The most frequent side effects observed with Sulbactum/Cefoperazone have been gastrointestinal. Others include dermatologic reactions, headache, injection pain, chills, and anaphylactoid reactions.\r\n\r\nDrug Interactions\r\nAminoglycoside , Alcohol.\r\n\r\nIndication\r\nMonotherapy : It is indicated for the treatment of the following infections when caused by susceptible organisms:i. Respiratory tract infections (upper and lower) ii. Urinary tract infections (upper and lower) iii. Peritonitis, cholecystitis, cholangitis, and other intra-abdominal infections iv. Septicaemia v. Meningitisvi. Skin and soft tissue infections vii. Bone and joint infections viii. Pelvic inflammatory disease, endometritis, gonorrhoea, and other infections of the genital tractCombination Therapy : Because of the broad spectrum of activity of Sulbactum/ Cefoperazone, most infections can be treated adequately with this antibiotic combination alone. However, Sulbactum/Cefoperazone may also be used concomitantly with other antibiotics if such combinations are indicated. If an aminoglycoside is used, renal function should be monitored during the course of therapy.\r\n\r\nWhen not to Use\r\nIt is contraindicated in patients with a known allergy to penicillins, sulbactam, cefoperazone, or any of the cephalosporins.\r\n\r\nPrecautions\r\nPrecaution\r\nSerious and occasionally fatal hypersensitivity (anaphylactic) reactions have been reported in patients receiving beta-lactam or cephalosporin therapy. These reactions are more apt to occur in individuals with a history of hypersensitivity reactions to multiple allergens. If an allergic reaction occurs, the drug should be discontinued and the appropriate therapy instituted.\r\n\r\nWarnings\r\nWarning 1\r\nAs with other antibiotics, overgrowth of non-susceptible organisms may occur during the prolonged use of Sulbactum/Cefoperazone. It has not been extensively studied in premature infants or neonates. Therefore, in treating premature infants and neonates, the potential benefits and possible risks involved should be considered before instituting therapy.\r\n\r\nWarning 2\r\nIf an allergic reaction occurs, the drug should be discontinued and the appropriate therapy instituted.\r\n\r\nWarning 3\r\nBefore therapy with sulbactam/cefoperazone is instituted, careful inquiry should be made to determine whether the patient has had previous hypersensitivity reactions to cephalosporins, penicillins or other drugs . Antibiotics should be administered with caution to any patient who has demonstrated some form of allergy, particularly to drugs.\r\n\r\nAdditional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore this medicine at room temperature, away from direct light and heat.', 625.00, 550.00, 12, 1, 4, 0, '1755144319_cebac inj.webp', '2025-08-14 04:05:19', 'injection', 0, NULL, 0.00, 0.00),
(98, 'novo nordisk', 'Actrapid Hm', 'Human Insulin', '', 39, 3, 'Actrapid Hm Penfil 100Iu 3Ml Specification\r\nRequires Prescription (YES/NO)\r\nYes\r\n\r\nGenerics\r\nHuman Insulin\r\n\r\nUsed For\r\nDiabetes Management\r\n\r\nHow it works\r\nThe major effects of insulin on carbohydrate homoeostasis following its binding to specific cell-surface receptors on insulin-sensitive tissues, notably the liver, muscles and adipose tissue. It inhibits hepatic glucose production and enhances peripheral glucose disposal thereby reducing blood-glucose concentration. It also inhibits lipolysis thereby preventing the formation of ketone bodies.\r\n\r\nUsage And Safety\r\nDosage\r\nHuman Insulin\r\n\r\nSide Effects\r\nHypoglycemia : They may include cold sweat, cool pale skin, nervousness or tremor, anxious feeling, unusual tiredness or weakness, confusion, difficulty in concentration, headache, nausea and palpitation. Severe hypoglycemia may lead to unconsciousness and may result in temporary or permanent impairment of brain function or even death , Weight gain , Oedema and refraction anomalies , . Local hypersensitivity reactions (redness, swelling and itching at the injection site) , Lipodystrophy , generalised skin rash, itching, sweating, gastrointestinal upset, angioneurotic oedema, difficulties in breathing, palpitation and reduction in blood pressure.\r\n\r\nDrug Interactions\r\nBeta blocking agent Oral hypoglycemic agents (OHA), octreotide, monoamine oxidase inhibitor (MAOI), non selective beta blocking agents, angiotensin converting enzyme (ACE) inhibitors, salicylates, alcohol and alcohol steroids , Oral contraceptives, thiazides, glucocorticoids, thyroid hormones and sympathomimetics, danazol etc.\r\n\r\nIndication\r\nIt is indicated for the treatment of : Patients with Type I diabetes mellitus. - Patients with Type II diabetes mellitus either alone or in combination with oral anti-diabetic agents. - Patients with gestational diabetes. - The emergency management of diabetic ketoacidosis.\r\n\r\nWhen not to Use\r\nInsulin is contraindicated in: - Patients with hypersensitivity to any components of this medication. - Patients with hypoglycemia. - Patients in coma due to hyperglycemia.\r\n\r\nPrecautions\r\nPrecaution\r\nCare is also necessary during excessive exercise. Hypoglycemia caused by metabolic effects and increased insulin absorption is the usual response, but hyperglycemia may sometimes occur. Adjustment of insulin dosage may also be necessary if patients change their level of physical activity or change their usual diet.\r\n\r\nWarnings\r\nWarning 1\r\nInsulin requirements may be increased during illness or emotional disturbances.\r\n\r\nWarning 2\r\nThe use of insulin necessitates monitoring of therapy, such as the testing of blood or urine for glucose concentrations and the urine for ketones, by the patient .\r\n\r\nWarning 3\r\nLocal reactions, characterised hypersensitivity may produce urticaria, angioedema and very rarely anaphylactic reactions. If continued therapy with insulin is essential, hyposensitisation procedures may need to be performed.\r\n\r\nAdditional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore in a refrigerator (2°C–8°C). Do not Freeze .', 469.22, 422.30, 10, 5, 4, 1, '1755144651_actrapid penfil.webp', '2025-08-14 04:10:51', 'penfil', 3, NULL, 0.00, 0.00),
(99, 'novo nordisk', 'Insulatard Hm', 'Human Insulin', '', 40, 3, 'Insulatard Hm Injection 100Iu/Ml 10Ml (1 Box = 1 Injection) Specification\r\nRequires Prescription (YES/NO)\r\nYes\r\n\r\nGenerics\r\nHuman Insulin\r\n\r\nUsed For\r\nDiabetes Management\r\n\r\nHow it works\r\nThe major effects of insulin on carbohydrate homoeostasis following its binding to specific cell-surface receptors on insulin-sensitive tissues, notably the liver, muscles and adipose tissue. It inhibits hepatic glucose production and enhances peripheral glucose disposal thereby reducing blood-glucose concentration. It also inhibits lipolysis thereby preventing the formation of ketone bodies.\r\n\r\nUsage And Safety\r\nDosage\r\nHuman Insulin\r\n\r\nSide Effects\r\nHypoglycemia : They may include cold sweat, cool pale skin, nervousness or tremor, anxious feeling, unusual tiredness or weakness, confusion, difficulty in concentration, headache, nausea and palpitation. Severe hypoglycemia may lead to unconsciousness and may result in temporary or permanent impairment of brain function or even death , Weight gain , Oedema and refraction anomalies , . Local hypersensitivity reactions (redness, swelling and itching at the injection site) , Lipodystrophy , generalised skin rash, itching, sweating, gastrointestinal upset, angioneurotic oedema, difficulties in breathing, palpitation and reduction in blood pressure.\r\n\r\nDrug Interactions\r\nBeta blocking agent Oral hypoglycemic agents (OHA), octreotide, monoamine oxidase inhibitor (MAOI), non selective beta blocking agents, angiotensin converting enzyme (ACE) inhibitors, salicylates, alcohol and alcohol steroids , Oral contraceptives, thiazides, glucocorticoids, thyroid hormones and sympathomimetics, danazol etc.\r\n\r\nIndication\r\nIt is indicated for the treatment of : Patients with Type I diabetes mellitus. - Patients with Type II diabetes mellitus either alone or in combination with oral anti-diabetic agents. - Patients with gestational diabetes. - The emergency management of diabetic ketoacidosis.\r\n\r\nWhen not to Use\r\nInsulin is contraindicated in: - Patients with hypersensitivity to any components of this medication. - Patients with hypoglycemia. - Patients in coma due to hyperglycemia.\r\n\r\nPrecautions\r\nPrecaution\r\nCare is also necessary during excessive exercise. Hypoglycemia caused by metabolic effects and increased insulin absorption is the usual response, but hyperglycemia may sometimes occur. Adjustment of insulin dosage may also be necessary if patients change their level of physical activity or change their usual diet.\r\n\r\nWarnings\r\nWarning 1\r\nInsulin requirements may be increased during illness or emotional disturbances.\r\n\r\nWarning 2\r\nThe use of insulin necessitates monitoring of therapy, such as the testing of blood or urine for glucose concentrations and the urine for ketones, by the patient .\r\n\r\nWarning 3\r\nLocal reactions, characterised hypersensitivity may produce urticaria, angioedema and very rarely anaphylactic reactions. If continued therapy with insulin is essential, hyposensitisation procedures may need to be performed.\r\n\r\nAdditional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore in a refrigerator (2°C–8°C). Do not Freeze .', 1044.40, 960.85, 8, 1, 0, 0, '1755144793_insulutard vial.webp', '2025-08-14 04:13:13', 'vial', 10, NULL, 0.00, 0.00),
(102, 'brooks', 'oxoferin', 'Tetrachlorodecaoxide', '', 42, 12, 'Oxoferin Topical Solution 50Ml Specification\r\nRequires Prescription (YES/NO)\r\nNo\r\n\r\nGenerics\r\nTetrachlorodecaoxide\r\n\r\nUsed For\r\nWound Care\r\n\r\nHow it works\r\nOxoferin solution (sterile) acts by stimulating the immune system of the body and that is why it is also known as IMMUNOMODULATOR. When applied topically Oxoferin solution (sterile) is absorbed rapidly both by wound surface and border area. Oxoferin solution (sterile) combines with the haem part of haemoglobin, myoglobin and peroxidase, forming a TCDO-haem complex, this in turn activates the macrophages and accelerates the process of Phagocytosis. This process of phagocytosis engulfs all the pathogens present on the surface of the wound including the cell debris, thus cleans the wound surface, a prerequisite for Regenerative Phase. Oxoferin solution (sterile) also helps in the Regenerative Phase by giving rise to two impulses, namely Mitogenic and Chemotactic. The mitogenic impulse gives rise to two factors, MDGF (Macrophage derived growth factor) and WAF (Wound angiogenesis factor). The MDGF causes the proliferation of fibroblasts resulting in an increased synthesis of collagen, the basic material for new granulation tissue to fill gaps of wounds. The WAF causes endothelial cells to proliferate and to form new capillaries resulting in the vascularisation of the new granulation tissue. The chemotactic impulse acts on the myocyte(muscle cell) and causes it to contract, thereby reducing the wounds surface. All these three factors are influencing the regenerative phase simultaneously and thus accelerate the wound healing with minimal scarring.\r\n\r\nUsage And Safety\r\nDosage\r\nTetrachlorodecaoxide\r\n\r\nSide Effects\r\nAsk your physician or pharmacist for any side effects .\r\n\r\nDrug Interactions\r\nOxoferin solution (sterile) is a complete wound healing agent thus no other topical therapeutical agent is used. Oxoferin solution (sterile) can be used as Monotherapy.\r\n\r\nIndication\r\nOxoferin solution (sterile) is indicated for all complicated and resistant wounds including Complicated Infected wounds. Decubitus ulcers (bed sores). Chronic leg ulcers combined with venous insufficiency. Delayed wound healing and ulcer cases involving impaired arterial circulation, such as in old age and diabetes. Suppurative cavities or fistular tracts. Post-traumatic wounds. Complicated Post-operative wounds.\r\n\r\nWhen not to Use\r\nNone.\r\n\r\nPrecautions\r\nPrecaution\r\nTo open, turn the cap completely over the neck of the bottle.\r\n\r\nWarnings\r\nWarning 1\r\nMild itching or burning sensation is an indication that healing process has started. Spontaneous bleeding after application of Oxoferin solution (sterile) is a positive sign indicating that capillaries have started to multiply. Sometimes excessive application of Oxoferin solution (sterile) may cause greenish smear on the wound surface which disappears once the dose is reduced.\r\n\r\nWarning 2\r\nStore at temperature 15 to 30°C away from light.\r\n\r\nWarning 3\r\nOxoferin solution (sterile) should be used within 30 days, once the bottle is opened.\r\n\r\nAdditional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore this medicine at room temperature, away from direct light and heat.', 1500.00, 1425.00, 5, 1, 2, 0, '1756088228_oxoferin.webp', '2025-08-25 02:17:08', 'solution', 50, NULL, 0.00, 0.00),
(103, 'maxitech', 'Dimed-Z', 'Betamethasone Dipropionate , Clotrimazole', '', 41, 5, 'Dimed-Z Lotion 60Ml Specification\r\nRequires Prescription (YES/NO)\r\nYes\r\n\r\nGenerics\r\nBetamethasone Dipropionate , Clotrimazole\r\n\r\nUsed For\r\nFungal Infection\r\n\r\nHow it works\r\nBetamethasone belongs to a group of medicines called topical corticosteroids which are used on the surface of the skin to reduce the redness and itchiness caused by certain skin problems. Clotrimazole is a topical anti-fungal medicine used to treat some fungal infections of the skin.\r\n\r\nUsage And Safety\r\nDosage\r\nBetamethasone Dipropionate , Clotrimazole\r\n\r\nSide Effects\r\n• Redness, stinging, blistering, peeling, swelling, itching, burning, skin rash, dryness of the skin • Inflammation of the hair follicles; excessive hair growth • Darkening of the skin; allergic skin reactions; dermatitis (skin inflammation) around the mouth; other skin infections, thinning of the skin and red marks. • Blurred vision.\r\n\r\nDrug Interactions\r\nTell your doctor or pharmacist if you are using, have recently used or might use any other medicines.\r\n\r\nIndication\r\nIt is used for the short-term treatment of certain fungal infections of the skin, when redness and itchiness may also be a problem.\r\n\r\nWhen not to Use\r\nDo not use If you are allergic to betamethasone dipropionate, clotrimazole or any of the other ingredients of this medicine . • If your skin becomes irritated, or you develop an allergic reaction. • On any other skin infections as it could make them worse, especially rosacea (a skin condition affecting the face), acne, dermatitis (skin inflammation) around the mouth, nappy rash or other skin infections.\r\n\r\nPrecautions\r\nPrecaution\r\nIf you have psoriasis, your doctor may want to review your treatment regularly. Contact your doctor if your psoriasis gets worse or you get raised bumps filled with pus under your skin .\r\n\r\nWarnings\r\nWarning 1\r\nContact your doctor immediately if you, or your child, experience blurred vision or other visual disturbances .\r\n\r\nWarning 2\r\nSide effects that may happen with inhaled or oral corticosteroids may also occur with corticosteroids used on the skin, especially in infants and children.\r\n\r\nWarning 3\r\nIf you use more than the correct amount of and/or use it for longer than is recommended, it can affect the levels of certain hormones in the body, particularly in infants and children.\r\n\r\nAdditional Information\r\nPregnancy category\r\nAlways consult your physician before using any medicine.\r\n\r\nStorage (YES/NO)\r\nStore this medicine at room temperature, away from direct light and heat.', 235.00, 206.80, 12, 1, 8, 1, '1756088873_dimed-z lotion.webp', '2025-08-25 02:27:53', 'lotion', 60, NULL, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL CHECK (`rating` between 1 and 5),
  `review_text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `rating`, `review_text`, `created_at`) VALUES
(1, 88, 1, 5, 'very good experience', '2025-08-10 03:28:45'),
(2, 88, 2, 3, 'zabardast', '2025-08-10 07:56:46'),
(3, 85, 1, 5, 'very good experience', '2025-08-10 22:24:41'),
(4, 71, 1, 4, 'great seervice', '2025-08-11 03:42:51'),
(5, 91, 1, 5, 'amazing service', '2025-08-11 04:09:30'),
(6, 74, 1, 5, 'very well service', '2025-08-11 04:11:56'),
(7, 74, 2, 1, 'very bad', '2025-08-11 09:21:54'),
(10, 88, 1, 4, 'best service', '2025-08-12 02:41:55'),
(15, 88, 1, 1, 'adasdz', '2025-08-12 02:46:24'),
(16, 88, 1, 4, 'sadas', '2025-08-12 02:48:46'),
(17, 88, 1, 5, 'ASDAS', '2025-08-12 03:05:00'),
(18, 87, 1, 5, 'great product ', '2025-08-15 04:03:16'),
(19, 87, 1, 3, 'saassa', '2025-08-15 04:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `top_items`
--

CREATE TABLE `top_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `top_items`
--

INSERT INTO `top_items` (`id`, `product_id`, `position`, `is_active`, `created_at`) VALUES
(126, 89, 1, 1, '2025-08-10 05:58:04'),
(128, 88, 4, 1, '2025-08-10 05:58:08'),
(129, 87, 3, 1, '2025-08-10 05:58:12'),
(130, 71, 5, 1, '2025-08-10 05:58:14'),
(131, 85, 6, 1, '2025-08-10 05:58:15'),
(132, 77, 7, 1, '2025-08-10 05:58:17'),
(134, 73, 9, 1, '2025-08-10 05:58:21'),
(135, 69, 8, 1, '2025-08-10 05:58:23'),
(136, 36, 10, 1, '2025-08-10 05:58:25'),
(137, 103, 2, 1, '2025-08-25 03:51:57'),
(138, 98, 11, 1, '2025-09-03 08:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reset_token` varchar(64) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `reset_verified` tinyint(1) DEFAULT 0,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `created_at`, `password`, `phone`, `address`, `role`, `updated_at`, `reset_token`, `reset_expires`, `reset_verified`, `city`, `state`, `country`, `profile_pic`) VALUES
(1, 'Tahasultan', 'taha1212@gmail.com', '2025-08-10 03:14:15', '$2y$10$X5gqpkr9BMGrarqm8f6cG.9FnN9M5fALpLM/tvNODFEDNqnT3AWEC', '03316342682', 'gulshan iqbal block 13', 'user', '2025-08-20 03:26:17', 'f910dccb58107065df5ec39d09c598cf467e1f080ceae4cabc7eea40193ed261', '2025-08-11 04:53:38', 1, 'karachi', 'karachi', 'Pakistan', 'user_1_1755660377.png'),
(2, 'Tahakhan', 'tahakhan1212@gmail.com', '2025-08-10 07:25:02', '$2y$10$b.9u1HIgyujPdTFVI6j61upJayqTJ.vBmrnYRYgBpPid50W6YI0dO', '03152342682', 'pib colony', 'user', '2025-08-23 06:39:18', NULL, NULL, 1, '', NULL, '', 'user_2_1755931158.png'),
(3, 'Ali', 'ali@gmail.com', '2025-08-15 10:14:19', '$2y$10$wZXMSZEV/nm5zz1Zu20U9eGZGmR.tYIelyRZdRaysYzB68dnQ8sZW', '1213442876242', 'gaggaagaggagga', 'user', '2025-08-28 05:23:29', NULL, NULL, 0, '', NULL, '', 'user_3_1756358609.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_id`, `message`, `is_read`, `created_at`) VALUES
(1, 1, 22, 'Order #22 status changed from Processing to Completed', 1, '2025-08-15 04:39:36'),
(2, 1, 22, 'Order #22 status changed from Completed to Processing', 1, '2025-08-15 04:47:49'),
(3, 1, 22, 'Order #22 status changed from Processing to Pending', 1, '2025-08-15 05:18:32'),
(4, 1, 22, 'Order #22 status changed from Pending to Pending', 1, '2025-08-15 05:48:29'),
(5, 1, 22, 'Order #22 status changed from Pending to Pending', 1, '2025-08-15 05:49:06'),
(6, 1, 22, 'Order #22 status changed from Pending to Processing', 1, '2025-08-15 05:55:06'),
(7, 1, 22, 'Order #22 status changed from Processing to Pending', 1, '2025-08-15 05:55:21'),
(8, 1, 22, 'Order #22 status changed from Pending to Processing', 1, '2025-08-15 05:55:33'),
(9, 1, 22, 'Order #22 status changed from Processing to Processing', 1, '2025-08-15 05:55:36'),
(10, 1, 22, 'Order #22 status changed from Processing to Pending', 1, '2025-08-15 05:55:54'),
(11, 3, 23, 'Order #23 status changed from Pending to Processing', 1, '2025-08-15 10:16:34'),
(12, 1, 22, 'Order #22 status changed from Pending to Processing', 1, '2025-08-16 00:38:13'),
(13, 1, 22, 'Order #22 status changed from Processing to Completed', 1, '2025-08-16 00:38:34'),
(14, 1, 24, 'Order #24 status changed from Pending to Processing', 1, '2025-08-16 00:39:09'),
(15, 1, 24, 'Order #24 status changed from Processing to Completed', 1, '2025-08-16 00:39:17'),
(16, 1, 24, 'Order #24 status changed from Completed to Pending', 1, '2025-08-16 00:40:29'),
(17, 1, 24, 'Order #24 status changed from Pending to Cancelled', 1, '2025-08-16 01:13:08'),
(18, 3, 23, 'Order #23 status changed from Processing to Pending', 1, '2025-08-16 02:53:47'),
(19, 1, 25, 'Order #25 status changed from Pending to Processing', 1, '2025-08-16 03:34:50'),
(20, 3, 23, 'Order #23 status changed from Pending to Processing', 1, '2025-08-16 03:42:17'),
(21, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-16 03:44:17'),
(22, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-16 03:44:25'),
(23, 3, 23, 'Order #23 status changed from Processing to Pending', 1, '2025-08-16 03:44:31'),
(24, 3, 23, 'Order #23 status changed from Pending to Completed', 1, '2025-08-16 03:44:51'),
(25, 3, 23, 'Order #23 status changed from Completed to Processing', 1, '2025-08-16 03:46:12'),
(26, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-16 03:46:28'),
(27, 3, 23, 'Order #23 status changed from Processing to Completed', 1, '2025-08-16 03:46:30'),
(28, 3, 23, 'Order #23 status changed from Completed to Processing', 1, '2025-08-16 03:54:52'),
(29, 3, 23, 'Order #23 status changed from Processing to Cancelled', 1, '2025-08-16 03:55:58'),
(30, 1, 25, 'Order #25 status changed from Processing to Pending', 1, '2025-08-16 03:58:02'),
(31, 1, 25, 'Order #25 status changed from Pending to Completed', 1, '2025-08-16 04:06:29'),
(32, 3, 23, 'Order #23 status changed from Cancelled to Processing', 1, '2025-08-16 04:08:52'),
(33, 3, 23, 'Order #23 status changed from Processing to Completed', 1, '2025-08-16 04:09:26'),
(34, 3, 23, 'Order #23 status changed from Completed to Pending', 1, '2025-08-16 04:20:38'),
(35, 3, 23, 'Order #23 status changed from Pending to Processing', 1, '2025-08-16 04:21:19'),
(36, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-16 04:22:28'),
(37, 3, 23, 'Order #23 status changed from Processing to Pending', 1, '2025-08-16 04:29:27'),
(38, 3, 23, 'Order #23 status changed from Pending to Pending', 1, '2025-08-16 04:38:21'),
(39, 1, 26, 'Order #26 status changed from Pending to Processing', 1, '2025-08-16 04:40:36'),
(40, 3, 23, 'Order #23 status changed from Pending to Processing', 1, '2025-08-16 04:41:25'),
(41, 3, 23, 'Order #23 status changed from Processing to Pending', 1, '2025-08-16 04:43:13'),
(42, 1, 30, 'Order #30 status changed from Pending to Processing', 1, '2025-08-19 02:02:45'),
(43, 1, 30, 'Order #30 status changed from Processing to Completed', 1, '2025-08-19 02:04:49'),
(44, 1, 26, 'Order #26 status changed from Processing to Pending', 1, '2025-08-19 04:21:25'),
(45, 3, 23, 'Order #23 status changed from Pending to Processing', 1, '2025-08-19 04:36:17'),
(46, 1, 26, 'Order #26 status changed from Pending to Processing', 1, '2025-08-19 04:37:43'),
(47, 1, 26, 'Order #26 status changed from Processing to Pending', 1, '2025-08-19 04:41:56'),
(48, 1, 26, 'Order #26 status changed from Pending to Processing', 1, '2025-08-19 04:42:07'),
(49, 1, 26, 'Order #26 status changed from Processing to Processing', 1, '2025-08-19 04:42:08'),
(50, 1, 26, 'Order #26 status changed from Processing to Processing', 1, '2025-08-19 04:42:09'),
(51, 1, 26, 'Order #26 status changed from Processing to Processing', 1, '2025-08-19 04:42:10'),
(52, 1, 26, 'Order #26 status changed from Processing to Processing', 1, '2025-08-19 04:42:11'),
(53, 1, 26, 'Order #26 status changed from Processing to Processing', 1, '2025-08-19 04:42:12'),
(54, 1, 26, 'Order #26 status changed from Processing to Processing', 1, '2025-08-19 04:42:13'),
(55, 1, 26, 'Order #26 status changed from Processing to Processing', 1, '2025-08-19 04:42:48'),
(56, 1, 26, 'Order #26 status changed from Processing to Processing', 1, '2025-08-19 04:42:49'),
(57, 1, 32, 'Order #32 status changed from Pending to Processing', 1, '2025-08-23 05:59:15'),
(58, 1, 32, 'Order #32 status changed from Processing to Pending', 1, '2025-08-23 05:59:28'),
(59, 1, 32, 'Order #32 status changed from Pending to Completed', 1, '2025-08-23 06:00:00'),
(60, 2, 34, 'Order #34 status changed from Pending to Processing', 1, '2025-08-24 02:42:24'),
(61, 2, 34, 'Order #34 status changed from Processing to Completed', 0, '2025-08-24 02:42:41'),
(62, 1, 26, 'Order #26 status changed from Processing to Cancelled', 1, '2025-08-24 03:22:56'),
(63, 1, 35, 'Order #35 status changed from Pending to Pending', 1, '2025-08-28 04:58:58'),
(64, 1, 35, 'Order #35 status changed from Pending to Completed', 1, '2025-08-28 04:59:01'),
(65, 1, 33, 'Order #33 status changed from Pending to Completed', 1, '2025-08-28 04:59:12'),
(66, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 05:30:28'),
(67, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 05:40:03'),
(68, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 05:55:49'),
(69, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 05:56:31'),
(70, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:14:27'),
(71, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:14:59'),
(72, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:15:01'),
(73, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:15:02'),
(74, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:15:44'),
(75, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:15:45'),
(76, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:23:06'),
(77, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:31:05'),
(78, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:31:07'),
(79, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:31:08'),
(80, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:31:08'),
(81, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:31:09'),
(82, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:31:10'),
(83, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:31:11'),
(84, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:31:12'),
(85, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:31:41'),
(86, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:31:43'),
(87, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:32:22'),
(88, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:32:43'),
(89, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-28 06:36:36'),
(90, 1, 27, 'Order #27 status changed from Pending to Pending', 1, '2025-08-28 06:36:50'),
(91, 1, 37, 'Order #37 status changed from Pending to Processing', 1, '2025-08-29 01:06:46'),
(92, 1, 37, 'Order #37 status changed from Processing to Completed', 1, '2025-08-29 01:07:07'),
(93, 3, 23, 'Order #23 status changed from Processing to Processing', 1, '2025-08-30 01:54:32'),
(94, 1, 27, 'Order #27 status changed from Pending to Pending', 1, '2025-08-30 01:54:48'),
(95, 1, 27, 'Order #27 status changed from Pending to Pending', 1, '2025-09-01 02:09:03'),
(96, 1, 39, 'Order #39 status changed from Pending to Processing', 1, '2025-09-01 08:22:48'),
(97, 1, 39, 'Order #39 status changed from Processing to Cancelled', 1, '2025-09-01 08:23:18'),
(98, 1, 40, 'Order #40 status changed from Pending to Processing', 1, '2025-09-01 10:08:58'),
(99, 1, 41, 'Order #41 status changed from Pending to Processing', 1, '2025-09-01 23:13:19'),
(100, 1, 41, 'Order #41 status changed from Processing to Completed', 1, '2025-09-01 23:14:00'),
(101, 1, 42, 'Order #42 status changed from Pending to Pending', 1, '2025-09-03 08:41:32'),
(102, 1, 42, 'Order #42 status changed from Pending to Processing', 1, '2025-09-03 08:41:35'),
(103, 1, 42, 'Order #42 status changed from Processing to Completed', 0, '2025-09-03 08:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

CREATE TABLE `user_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_type` varchar(50) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `priority` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `admin_notes` text DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_requests`
--

INSERT INTO `user_requests` (`id`, `user_id`, `request_type`, `category`, `product_name`, `priority`, `description`, `admin_notes`, `status`, `created_at`, `updated_at`) VALUES
(17, 1, 'product_request', 'medicine', '', 'medium', 'panadol bhi rkh lo bhai', '', 'completed', '2025-08-27 04:42:31', '2025-09-01 02:26:03'),
(18, 1, 'product_request', 'medicine', '', 'medium', 'xswxwdx', 'aagya', 'completed', '2025-09-01 10:11:26', '2025-09-01 10:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `created_at`) VALUES
(30, 2, 77, '2025-08-24 00:28:24'),
(35, 3, 88, '2025-08-28 05:52:33'),
(36, 3, 71, '2025-08-28 06:33:13'),
(275, 1, 36, '2025-09-01 23:21:37'),
(276, 1, 102, '2025-09-03 08:44:02'),
(277, 1, 99, '2025-09-03 08:44:03'),
(278, 1, 98, '2025-09-03 08:50:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_notifications_ibfk_1` (`order_id`);

--
-- Indexes for table `archived_orders`
--
ALTER TABLE `archived_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `archived_requests`
--
ALTER TABLE `archived_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `buy_again_actions`
--
ALTER TABLE `buy_again_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_product` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `buy_again_items`
--
ALTER TABLE `buy_again_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_product` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_purposes`
--
ALTER TABLE `medicine_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_tracking`
--
ALTER TABLE `order_tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `top_items`
--
ALTER TABLE `top_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_wishlist` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `buy_again_actions`
--
ALTER TABLE `buy_again_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `buy_again_items`
--
ALTER TABLE `buy_again_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `medicine_purposes`
--
ALTER TABLE `medicine_purposes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `order_tracking`
--
ALTER TABLE `order_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `top_items`
--
ALTER TABLE `top_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `user_requests`
--
ALTER TABLE `user_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD CONSTRAINT `admin_notifications_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `archived_orders`
--
ALTER TABLE `archived_orders`
  ADD CONSTRAINT `archived_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `archived_requests`
--
ALTER TABLE `archived_requests`
  ADD CONSTRAINT `archived_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `buy_again_actions`
--
ALTER TABLE `buy_again_actions`
  ADD CONSTRAINT `buy_again_actions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buy_again_actions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buy_again_actions_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `buy_again_items`
--
ALTER TABLE `buy_again_items`
  ADD CONSTRAINT `buy_again_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buy_again_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buy_again_items_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `order_tracking`
--
ALTER TABLE `order_tracking`
  ADD CONSTRAINT `order_tracking_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `top_items`
--
ALTER TABLE `top_items`
  ADD CONSTRAINT `top_items_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `user_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_notifications_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD CONSTRAINT `user_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
