-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 08:53 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$nmRcN2K1yHlWmKOuonTlOuJTm.TcvDjR3aF3Z1XYwBxKRAzBqkvrm', '2022-03-15 18:27:18', '2022-03-16 13:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_home` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `is_home`, `created_at`, `updated_at`) VALUES
(1, 'Apple', '1613553930.png', 1, 1, '2022-03-17 03:55:30', '2022-03-17 03:55:30'),
(2, 'Samsung', '1613553941.png', 1, 1, '2022-03-17 03:55:41', '2022-03-17 03:55:41'),
(3, 'lenovo', '1613554893.png', 1, 1, '2022-03-17 04:11:33', '2022-03-17 04:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` enum('Reg','Not-Reg') NOT NULL,
  `qty` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_attr_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `parent_category_id`, `category_image`, `is_home`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MOBILES', 'mobiles', 5, '1613552454.jpg', 1, 1, '2022-03-17 03:30:54', '2022-03-19 07:34:11'),
(2, 'PC', 'computers', 5, '1613553509.jpg', 1, 1, '2022-03-17 03:31:24', '2022-03-20 04:43:58'),
(3, 'TELE', 'televisions', 5, '1613552512.jpg', 1, 1, '2022-03-17 03:31:52', '2022-03-20 04:44:05'),
(4, 'TABLETTES', 'tablettes', 5, '1613553407.jpg', 1, 1, '2022-03-17 03:46:07', '2022-03-19 07:34:26'),
(5, 'ALL CATEGORIES', 'All categories', 0, NULL, 0, 1, '2022-03-17 04:24:40', '2022-03-20 03:02:28'),
(6, 'Apple', 'Apple', 1, NULL, 0, 1, '2022-03-20 04:44:37', '2022-03-20 04:44:37'),
(7, 'samsung', 'SAMSUNG1', 1, NULL, 0, 1, '2022-03-20 04:44:49', '2022-03-20 04:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', 1, '2022-03-15 21:12:11', '2022-03-16 05:15:28'),
(2, 'Red', 1, '2022-03-15 21:12:22', '2022-03-16 04:02:42'),
(3, 'White', 1, '2022-03-17 04:01:35', '2022-03-17 04:01:35'),
(4, 'Cream', 1, '2022-03-17 00:57:35', '2022-03-17 00:57:35'),
(5, 'Green', 1, '2022-03-17 00:57:45', '2022-03-17 00:57:45'),
(6, 'Purple', 1, '2022-03-17 00:57:57', '2022-03-17 00:57:57'),
(7, 'Blue', 1, '2022-03-17 01:00:15', '2022-03-17 01:00:15'),
(8, 'Yellow', 1, '2021-03-17 01:06:42', '2022-03-17 01:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_verify` int(11) NOT NULL,
  `is_forgot_password` int(11) NOT NULL,
  `rand_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `address`, `city`, `state`, `zip`, `company`, `gstin`, `status`, `is_verify`, `is_forgot_password`, `rand_id`, `created_at`, `updated_at`) VALUES
(16, 'test', 'arjoun.nidhal@ampco.com.sa', '0595808712', 'eyJpdiI6IjlZeThEdndQdEhZTTl2STVHR3VFRXc9PSIsInZhbHVlIjoiQ2ZqdFpvdWo0TTVRaEMrVEw3cW51dz09IiwibWFjIjoiNmFhNDdjZTg4N2FlNDhkYTExZTcxNzA5ODBjMTE1YTRhNmEyODUzZmY0MjdlOWQ0YWIxNDMyY2MyYTI1YzkyZCJ9', 'twe', 'khamis', 'khamis', '4532', NULL, NULL, 1, 1, 0, '663726785', '2022-03-19 06:20:55', '2022-03-19 06:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_txt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`id`, `image`, `btn_txt`, `btn_link`, `status`, `created_at`, `updated_at`) VALUES
(1, '1613593624.jpg', 'SHOP NOW', 'http://google.com', 1, '2021-02-17 11:54:32', '2021-02-17 11:57:33'),
(2, '1613593671.jpg', 'SHOP NOW', NULL, 1, '2021-02-17 11:57:51', '2021-02-17 11:57:51'),
(3, '2.jpg', 'SHOP NOW', NULL, 1, '2022-03-07 18:00:00', '2022-03-22 18:00:00');

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
(1, '2022_03_15_211334_create_admins_table', 1),
(4, '2022_03_15_215552_create_categories_table', 2),
(10, '2022_03_16_115714_create_ajaxes_table', 4),
(12, '2022_03_16_021550_create_sizes_table', 5),
(13, '2022_03_16_023140_create_colors_table', 6),
(14, '2022_03_17_104722_create_products_table', 7),
(15, '2022_03_17_114909_create_brands_table', 8),
(16, '2022_03_17_082218_create_taxes_table', 9),
(17, '2022_03_17_081113_create_customers_table', 10),
(18, '2022_03_17_200040_create_home_banners_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(25) NOT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `coupon_value` int(11) DEFAULT NULL,
  `order_status` int(11) NOT NULL,
  `payment_type` enum('COD','Gateway') NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `total_amt` int(11) NOT NULL,
  `track_details` text,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customers_id`, `name`, `email`, `mobile`, `address`, `city`, `state`, `pincode`, `coupon_code`, `coupon_value`, `order_status`, `payment_type`, `payment_status`, `payment_id`, `txn_id`, `total_amt`, `track_details`, `added_on`) VALUES
(6, 16, 'test', 'arjoun.nidhal@ampco.com.sa', '0595808712', 'twe', 'khamis', 'khamis', '4532', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 2411, NULL, '2022-03-19 09:21:24'),
(7, 16, 'test', 'arjoun.nidhal@ampco.com.sa', '0595808712', 'twe', 'khamis', 'khamis', '4532', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 4822, NULL, '2022-03-19 09:38:36'),
(8, 16, 'test', 'arjoun.nidhal@ampco.com.sa', '0595808712', 'twe', 'khamis', 'khamis', '4532', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 4822, NULL, '2022-03-19 10:12:37'),
(9, 16, 'test', 'arjoun.nidhal@ampco.com.sa', '0595808712', 'twe', 'khamis', 'khamis', '4532', NULL, 0, 1, 'Gateway', 'Pending', NULL, NULL, 2398, NULL, '2022-03-19 10:14:18'),
(10, 16, 'test', 'arjoun.nidhal@ampco.com.sa', '0595808712', 'twe', 'khamis', 'khamis', '4532', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 2398, NULL, '2022-03-19 10:14:21'),
(11, 16, 'test', 'arjoun.nidhal@ampco.com.sa', '0595808712', 'twe', 'khamis', 'khamis', '4532', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 2411, NULL, '2022-03-19 10:16:49'),
(12, 16, 'test', 'arjoun.nidhal@ampco.com.sa', '0595808712', 'twe', 'khamis', 'khamis', '4532', NULL, 0, 3, 'COD', 'Success', NULL, NULL, 2411, '43254354', '2022-03-19 10:23:06'),
(13, 16, 'test', 'arjoun.nidhal@ampco.com.sa', '0595808712', 'twe', 'khamis', 'khamis', '4532', NULL, 0, 1, 'COD', 'Pending', NULL, NULL, 2398, NULL, '2022-03-19 10:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `products_attr_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `orders_id`, `product_id`, `products_attr_id`, `price`, `qty`) VALUES
(7, 4, 2, 3, 1199, 1),
(8, 4, 4, 5, 899, 2),
(9, 6, 3, 4, 2411, 1),
(10, 7, 3, 4, 2411, 2),
(11, 8, 3, 4, 2411, 2),
(12, 9, 2, 3, 1199, 2),
(13, 10, 2, 3, 1199, 2),
(14, 11, 3, 4, 2411, 1),
(15, 12, 3, 4, 2411, 1),
(16, 13, 2, 3, 1199, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `id` int(11) NOT NULL,
  `orders_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`id`, `orders_status`) VALUES
(1, 'Placed'),
(2, 'On The Way'),
(3, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` longtext COLLATE utf8mb4_unicode_ci,
  `desc` longtext COLLATE utf8mb4_unicode_ci,
  `keywords` longtext COLLATE utf8mb4_unicode_ci,
  `technical_specification` longtext COLLATE utf8mb4_unicode_ci,
  `uses` longtext COLLATE utf8mb4_unicode_ci,
  `warranty` longtext COLLATE utf8mb4_unicode_ci,
  `lead_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `is_promo` int(11) NOT NULL,
  `is_featured` int(11) NOT NULL,
  `is_discounted` int(11) NOT NULL,
  `is_tranding` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `slug`, `brand`, `model`, `short_desc`, `desc`, `keywords`, `technical_specification`, `uses`, `warranty`, `lead_time`, `tax_id`, `is_promo`, `is_featured`, `is_discounted`, `is_tranding`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'New Apple iPhone 13', '1647761814.jpg', 'New Apple iPhone 13-05', '1', 'New Apple iPhone 13-05', '<ul>\r\n	<li>6.1-inch Super Retina XDR display</li>\r\n	<li>Cinematic mode adds shallow depth of field and shifts focus automatically in your videos</li>\r\n	<li>Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording</li>\r\n	<li>12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording</li>\r\n	<li>A15 Bionic chip for lightning-fast performance</li>\r\n</ul>', '<ul>\r\n	<li>6.1-inch Super Retina XDR display</li>\r\n	<li>Cinematic mode adds shallow depth of field and shifts focus automatically in your videos</li>\r\n	<li>Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording</li>\r\n	<li>12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording</li>\r\n	<li>A15 Bionic chip for lightning-fast performance</li>\r\n</ul>', 'New Apple iPhone 13-05', '<ul>\r\n	<li>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>Model name</td>\r\n				<td>IPhone</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Wireless carrier</td>\r\n				<td>Unlocked for All Carriers</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Brand</td>\r\n				<td>Apple</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Form factor</td>\r\n				<td>Slider</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Memory storage capacity</td>\r\n				<td>128 GB</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Operating system</td>\r\n				<td>IOS 14</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Colour</td>\r\n				<td>Midnight</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Cellular technology</td>\r\n				<td>5G</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Model year</td>\r\n				<td>2021</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Included components</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>', 'New Apple iPhone 13-05', 'Easy 3 days returns and exchanges', 'Same day delivery', 1, 1, 1, 1, 1, 1, '2022-03-17 04:00:59', '2022-03-20 04:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `products_attr`
--

CREATE TABLE `products_attr` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `attr_image` varchar(255) DEFAULT NULL,
  `mrp` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_attr`
--

INSERT INTO `products_attr` (`id`, `products_id`, `sku`, `attr_image`, `mrp`, `price`, `qty`, `size_id`, `color_id`) VALUES
(1, 1, '111', '307741810.jpg', 999, 1499, 500, 1, 4),
(3, 2, '124', '499793402.png', 1499, 1199, 3, 1, 1),
(4, 3, '116', '608075258.jpg', 3495, 2411, 18, 0, 1),
(5, 4, '121', '115102277.jpg', 1071, 899, 5, 0, 0),
(8, 5, '111-1', '860638161.jpg', 45323, 300, 300, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `products_id`, `images`) VALUES
(1, 1, '968509000.jpg'),
(5, 1, '800848567.jpg'),
(6, 1, '614272357.jpg'),
(7, 5, '474158973.jpg'),
(8, 5, '462426445.jpg'),
(9, 5, '444298531.jpg'),
(10, 5, '178471659.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `customer_id`, `products_id`, `rating`, `review`, `status`, `added_on`) VALUES
(1, 8, 2, 'Very Good', 'I really like this product', 1, '2022-03-18 05:25:19'),
(2, 15, 2, 'Fantastic', 'Very good quality at this price', 1, '2022-03-18 05:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `status`, `created_at`, `updated_at`) VALUES
(1, '10\"', 1, '2022-03-17 20:56:46', '2022-03-17 05:15:24'),
(2, '12\"', 1, '2022-03-17 00:58:04', '2022-03-17 00:58:04'),
(3, '13\"', 1, '2022-03-17 00:58:08', '2022-03-18 00:58:08'),
(4, '32\"', 1, '2022-03-18 00:58:13', '2022-03-18 00:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `taxs`
--

CREATE TABLE `taxs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxs`
--

INSERT INTO `taxs` (`id`, `tax_desc`, `tax_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GST 15%', '15', 1, '2022-03-18 03:05:43', '2022-03-18 03:05:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attr`
--
ALTER TABLE `products_attr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxs`
--
ALTER TABLE `taxs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products_attr`
--
ALTER TABLE `products_attr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxs`
--
ALTER TABLE `taxs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
