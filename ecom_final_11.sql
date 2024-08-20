-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2024 at 11:47 PM
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
-- Database: `ecom_final_11`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0 = in active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HP', 'HP', 'admin/image/brand/404.jpg', 1, '2024-07-07 14:16:18', '2024-07-07 14:16:18'),
(2, 'Nike', 'Nike', 'admin/image/brand/677.png', 1, '2024-07-07 14:16:37', '2024-07-07 14:16:37'),
(3, 'Easy', 'Easy', 'admin/image/brand/275.png', 1, '2024-07-07 14:16:50', '2024-07-07 14:16:50'),
(5, 'Nokia', 'Nokia', 'admin/image/brand/627.jpg', 1, '2024-07-12 14:13:12', '2024-07-12 14:13:12'),
(6, 'Apple', 'Apple', 'admin/image/brand/19.jpg', 1, '2024-08-16 14:54:10', '2024-08-16 14:54:10');

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
('c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1721162218),
('c525a5357e97fef8d3db25841c86da1a:timer', 'i:1721162218;', 1721162218),
('d25ad27b9dbf0882d9e5e6de07f16287', 'i:1;', 1723743921),
('d25ad27b9dbf0882d9e5e6de07f16287:timer', 'i:1723743921;', 1723743921),
('eef95f658febcee12b41ea8ec1bace29', 'i:1;', 1723841100),
('eef95f658febcee12b41ea8ec1bace29:timer', 'i:1723841100;', 1723841100),
('shazid@gmail.com|::1', 'i:1;', 1723743922),
('shazid@gmail.com|::1:timer', 'i:1723743922;', 1723743922);

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0 = in active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Electronics', 'Electronics', 'admin/image/category/1236247294.jpg', 1, '2024-07-07 12:50:25', '2024-07-07 12:50:25'),
(3, 'Kids', 'Kids', 'admin/image/category/2028434071.jpg', 1, '2024-07-07 12:50:42', '2024-07-07 12:50:42'),
(7, 'Man Fashion', 'Man Fashion', 'admin/image/category/542369589.jpg', 1, '2024-07-14 14:41:35', '2024-07-14 14:41:35'),
(8, 'Women Fashion', 'Women Fashion', 'admin/image/category/251369401.jpg', 1, '2024-07-14 14:41:48', '2024-07-14 14:41:48'),
(10, 'Sports and Clothing', 'Sports and Clothing', 'admin/image/category/956220755.webp', 1, '2024-08-16 15:31:13', '2024-08-16 15:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Red', '#ff0000', 'Red', '2024-07-07 15:07:56', '2024-07-07 15:11:56'),
(3, 'Green', '#10720e', 'Green', '2024-07-09 09:25:58', '2024-07-09 09:25:58'),
(4, 'Silver', '#c0c0c0', 'Silver', '2024-07-09 09:26:44', '2024-07-09 09:26:44'),
(5, 'White', '#ffffff', 'White', '2024-07-09 11:08:03', '2024-07-09 11:08:03'),
(6, 'Blue', '#0750f8', 'Blue', '2024-07-09 11:08:30', '2024-07-09 11:08:30'),
(7, 'Sky', '#00ffff', 'Sky', '2024-07-09 11:09:19', '2024-07-09 11:09:19'),
(8, 'Yellow', '#ffff80', 'Yellow', '2024-07-09 11:09:53', '2024-07-09 11:09:53'),
(9, 'Orange', '#ff8000', 'Orange', '2024-07-09 11:10:19', '2024-07-09 11:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `code`, `mobile`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sundarban', 'SB', '09612003003', 'Sundarban', 1, '2024-08-14 14:57:50', '2024-08-14 14:57:50'),
(2, 'S.A', 'SA', '01755512634', 'SA', 1, '2024-08-14 14:58:33', '2024-08-14 14:58:33'),
(3, 'Pathao', 'P', '01870473312', 'Pathao', 1, '2024-08-14 14:59:13', '2024-08-14 14:59:13'),
(4, 'SteadFast', 'SF', '09678045045', 'SteadFast', 1, '2024-08-14 14:59:49', '2024-08-14 14:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` text DEFAULT NULL,
  `blood_group` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `nid` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `date_of_birth`, `blood_group`, `image`, `nid`, `address`, `created_at`, `updated_at`) VALUES
(7, 'Md.Shazid Sharier', 'shazid@gmail.com', '123456789', '$2y$12$/L4dSpn5KizJBXvLg6pbz.tMiE94MPk2hgtwywlkDAgjGHYwyYOQW', NULL, NULL, NULL, NULL, NULL, '2024-07-19 05:57:31', '2024-07-19 05:57:31'),
(8, 'Faria', 'faria@gmail.com', '1234', '$2y$12$o1biKoiuqLfcv0naFvRoVec8gvhMBpHqcBmI29r58Wq/48Bc0/4iy', NULL, NULL, NULL, NULL, NULL, '2024-07-19 06:01:11', '2024-07-19 06:01:11'),
(10, 'Md.Arif', 'arif@gmail.com', '22222', '$2y$12$.0pK8ij5i.kQ1oTWiMfbf.XRS2OEkoGZM9H4o9EcuBxh00lCoyYSC', NULL, NULL, NULL, NULL, NULL, '2024-07-23 19:18:07', '2024-07-23 19:18:07'),
(11, 'Remon', 'remon@gmail.com', '3333333', '$2y$12$ZZ/jd1K2pral3IO14VxThe0/0SmscTdFlpxGWixy6m/yATlw5FSOG', NULL, NULL, NULL, NULL, NULL, '2024-07-23 19:21:23', '2024-07-23 19:21:23'),
(12, 'Md.Remon', 'remon1@gmail.com', '4444444', '$2y$12$6b4cqowEh4lVcof2NefYl.x/B8cbw3GgNWmblqa3OyRRtZwClcS/K', NULL, NULL, NULL, NULL, NULL, '2024-07-23 19:29:20', '2024-07-23 19:29:20'),
(14, 'Md.Renan', 'renan1@gmail.com', '44444444', '$2y$12$4UP7gvWA38bZ0HTjmMcusOYeyixVwe2BOZZZEyHQ4FzqmTbJ6OcNu', NULL, NULL, NULL, NULL, NULL, '2024-07-23 19:31:35', '2024-07-23 19:31:35'),
(15, 'vdvc', 'zv@gmail.com', '12425346457', '$2y$12$04porKlcR42kUBxeAQ6U0.tAMN51rr8WN8ac3PozD2KuEM/KQtwWi', NULL, NULL, NULL, NULL, NULL, '2024-07-23 19:48:10', '2024-07-23 19:48:10'),
(16, 'Hasibul Alam', 'hasib1@gmail.com', '11122222', '$2y$12$op9ITD3lq9sr9nPEysqD3O3E16FR4Xq0q6lh0Td07N5gp4U8tu2L.', NULL, NULL, NULL, NULL, NULL, '2024-08-13 03:29:40', '2024-08-13 03:29:40'),
(17, 'Mam', 'mam@gmail.com', '12344', '$2y$12$VIns2jX0piA5IcYwyIlv4eLQm.SsEOqPQT30Lm7ka9O6XIrtmrcom', NULL, NULL, NULL, NULL, NULL, '2024-08-13 09:39:24', '2024-08-13 09:39:24'),
(18, 'Md.Drz', 'drzratul1@gmail.com', '123434', '$2y$12$vVW1XlglIJzt4YbnkH47xuKda3TouRKJ9T06Fp5R36gdwzPRnpaDu', NULL, NULL, NULL, NULL, NULL, '2024-08-15 08:44:25', '2024-08-15 08:44:25');

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
(4, '2024_06_04_172643_add_two_factor_columns_to_users_table', 1),
(5, '2024_06_04_172709_create_personal_access_tokens_table', 1),
(11, '2024_06_14_195943_create_categories_table', 2),
(12, '2024_06_30_110954_create_sub_categories_table', 2),
(13, '2024_07_07_193311_create_brands_table', 3),
(14, '2024_07_07_202055_create_units_table', 4),
(15, '2024_07_07_205217_create_colors_table', 5),
(16, '2024_07_07_211255_create_sizes_table', 6),
(17, '2024_07_07_213705_create_products_table', 7),
(18, '2024_07_09_141732_create_product_images_table', 8),
(19, '2024_07_09_144355_create_product_colors_table', 9),
(20, '2024_07_09_144404_create_product_sizes_table', 9),
(21, '2024_07_17_143555_create_customers_table', 10),
(22, '2024_07_23_192104_create_orders_table', 11),
(23, '2024_07_23_192130_create_order_details_table', 11),
(25, '2024_08_14_182619_create_couriers_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `courier_id` int(10) DEFAULT 0,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_date` text DEFAULT NULL,
  `delivery_timestamp` text DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_date` text DEFAULT NULL,
  `payment_timestamp` text DEFAULT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'BDT',
  `transaction_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `courier_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `payment_method`, `payment_status`, `payment_date`, `payment_timestamp`, `currency`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 12, 0, 23100, 3000, 100, '2024-07-24', '1721779200', 'Complete', 'Jashore', 'Complete', '2024-08-15', '1723680000', 'Cash', 'Complete', '2024-08-15', '1723680000', 'BDT', NULL, '2024-07-23 19:29:20', '2024-08-14 20:38:18'),
(2, 14, 0, 23100, 3000, 100, '2024-07-24', '1721779200', 'Pending', 'Jashore, Khulna', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-07-23 19:31:35', '2024-07-23 19:31:35'),
(3, 15, 0, 92100, 12000, 100, '2024-07-24', '1721779200', 'Pending', 'scffzvc', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-07-23 19:48:10', '2024-07-23 19:48:10'),
(4, 16, 3, 115100, 15000, 100, '2024-08-13', '1723507200', 'Complete', 'Khulna', 'Complete', '2024-08-14', '1723593600', 'Cash', 'Complete', '2024-08-14', '1723593600', 'BDT', NULL, '2024-08-13 03:29:40', '2024-08-14 15:42:40'),
(5, 7, 2, 174900, 22800, 100, '2024-08-13', '1723507200', 'Processing', 'Dhaka', 'Processing', NULL, NULL, 'Cash', 'Processing', NULL, NULL, 'BDT', NULL, '2024-08-13 09:37:35', '2024-08-14 15:31:13'),
(6, 17, 0, 69100, 9000, 100, '2024-08-13', '1723507200', 'Pending', 'gngfn', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-08-13 09:40:06', '2024-08-13 09:40:06'),
(7, 7, 0, 10450, 1350, 100, '2024-08-14', '1723593600', 'Pending', 'kh', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-08-14 16:41:53', '2024-08-14 16:41:53'),
(8, 18, 0, 59900, 7800, 100, '2024-08-15', '1723680000', 'Pending', 'Dhaka', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', NULL, '2024-08-15 08:44:36', '2024-08-15 08:44:36'),
(9, 7, 0, 13900, 1800, 100, '2024-08-15', '1723680000', 'Pending', 'dhaka', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '66be3bafd94b1', NULL, NULL),
(10, 7, 0, 13900, 1800, 100, '2024-08-15', '1723680000', 'Processing', 'Dhaka', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '66be3dfd79fbb', NULL, NULL),
(11, 7, 2, 197900, 25800, 100, '2024-08-15', '1723680000', 'Processing', 'Kolabagan', 'Processing', NULL, NULL, 'Online', 'Processing', NULL, NULL, 'BDT', '66be3f8e1b4cc', NULL, '2024-08-15 12:02:16'),
(12, 7, 0, 10450, 1350, 100, '2024-08-15', '1723680000', 'Pending', 'fhb', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-08-15 12:11:02', '2024-08-15 12:11:02'),
(13, 18, 0, 11600, 1500, 100, '2024-08-15', '1723680000', 'Processing', 'Vuter Goli', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '66be454a9fc5f', NULL, NULL),
(14, 18, 0, 59900, 7800, 100, '2024-08-15', '1723680000', 'Pending', 'fgjn', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-08-15 12:14:40', '2024-08-15 12:14:40'),
(15, 18, 0, 13900, 1800, 100, '2024-08-15', '1723680000', 'Processing', 'vcngfjn', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '66be45fbcbb86', NULL, NULL),
(16, 18, 0, 11600, 1500, 100, '2024-08-16', '1723766400', 'Processing', 'Basila', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '66bf2e293e913', NULL, NULL),
(17, 18, 0, 119700, 15600, 100, '2024-08-16', '1723766400', 'Pending', 'r', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-08-16 06:28:42', '2024-08-16 06:28:42'),
(18, 8, 0, 57600, 7500, 100, '2024-08-16', '1723766400', 'Pending', 'Basila', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-08-16 14:39:19', '2024-08-16 14:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_code`, `product_price`, `product_qty`, `product_color`, `product_size`, `created_at`, `updated_at`) VALUES
(1, 2, 27, 'Nokia C22 Smartphone (3/64GB)', '8', '10000', '2', 'Red', 'XL', '2024-07-23 19:31:35', '2024-07-23 19:31:35'),
(2, 3, 27, 'Nokia C22 Smartphone (3/64GB)', '8', '10000', '2', 'Red', 'XL', '2024-07-23 19:48:10', '2024-07-23 19:48:10'),
(3, 3, 24, 'HP 255 G9 Ryzen 5 5625U 15.6\" HD Laptop With 1 Year Warranty', '3', '60000', '1', 'Silver', 'S', '2024-07-23 19:48:10', '2024-07-23 19:48:10'),
(4, 4, 22, 'HP 15-fc0185AU AMD Ryzen 3 7320U 15.6', '1', '50000', '2', 'Silver', 'S', '2024-08-13 03:29:40', '2024-08-13 03:29:40'),
(5, 5, 23, 'HP 250 G8 Core i3 11th Gen 256GB SSD 1TB HDD SSD 15.6\" FHD Laptop with Windows', '2', '52000', '1', 'Silver', 'S', '2024-08-13 09:37:35', '2024-08-13 09:37:35'),
(6, 5, 22, 'HP 15-fc0185AU AMD Ryzen 3 7320U 15.6', '1', '50000', '2', 'Silver', 'S', '2024-08-13 09:37:35', '2024-08-13 09:37:35'),
(7, 6, 22, 'HP 15-fc0185AU AMD Ryzen 3 7320U 15.6', '1', '50000', '1', 'Silver', 'S', '2024-08-13 09:40:06', '2024-08-13 09:40:06'),
(8, 6, 27, 'Nokia C22 Smartphone (3/64GB)', '8', '10000', '1', 'Red', 'XL', '2024-08-13 09:40:06', '2024-08-13 09:40:06'),
(9, 7, 26, 'Nokia C12 Pro Smartphone (4*/64GB)', '7', '9000', '1', 'Silver', 'Standard', '2024-08-14 16:41:53', '2024-08-14 16:41:53'),
(10, 8, 23, 'HP 250 G8 Core i3 11th Gen 256GB SSD 1TB HDD SSD 15.6\" FHD Laptop with Windows', '2', '52000', '1', 'Silver', 'Standard', '2024-08-15 08:44:36', '2024-08-15 08:44:36'),
(11, 9, 25, 'Nokia C32 Smartphone (4/64GB)', '5', '12000', '1', 'Red', 'Standard', '2024-08-15 11:32:31', '2024-08-15 11:32:31'),
(12, 10, 25, 'Nokia C32 Smartphone (4/64GB)', '5', '12000', '1', 'Red', 'Standard', '2024-08-15 11:42:21', '2024-08-15 11:42:21'),
(13, 11, 23, 'HP 250 G8 Core i3 11th Gen 256GB SSD 1TB HDD SSD 15.6\" FHD Laptop with Windows', '2', '52000', '1', 'Silver', 'Standard', '2024-08-15 11:49:02', '2024-08-15 11:49:02'),
(14, 11, 24, 'HP 255 G9 Ryzen 5 5625U 15.6\" HD Laptop With 1 Year Warranty', '3', '60000', '2', 'Silver', 'Standard', '2024-08-15 11:49:02', '2024-08-15 11:49:02'),
(15, 12, 26, 'Nokia C12 Pro Smartphone (4*/64GB)', '7', '9000', '1', 'Silver', 'Standard', '2024-08-15 12:11:02', '2024-08-15 12:11:02'),
(16, 13, 27, 'Nokia C22 Smartphone (3/64GB)', '8', '10000', '1', 'Red', 'Extra Large', '2024-08-15 12:13:30', '2024-08-15 12:13:30'),
(17, 14, 23, 'HP 250 G8 Core i3 11th Gen 256GB SSD 1TB HDD SSD 15.6\" FHD Laptop with Windows', '2', '52000', '1', 'Silver', 'Standard', '2024-08-15 12:14:40', '2024-08-15 12:14:40'),
(18, 15, 25, 'Nokia C32 Smartphone (4/64GB)', '5', '12000', '1', 'Red', 'Standard', '2024-08-15 12:16:27', '2024-08-15 12:16:27'),
(19, 16, 27, 'Nokia C22 Smartphone (3/64GB)', '8', '10000', '1', 'Red', 'Extra Large', '2024-08-16 04:47:05', '2024-08-16 04:47:05'),
(20, 17, 23, 'HP 250 G8 Core i3 11th Gen 256GB SSD 1TB HDD SSD 15.6\" FHD Laptop with Windows', '2', '52000', '2', 'Silver', 'Standard', '2024-08-16 06:28:42', '2024-08-16 06:28:42'),
(21, 18, 22, 'HP 15-fc0185AU AMD Ryzen 3 7320U 15.6', '1', '50000', '1', 'Silver', 'Standard', '2024-08-16 14:39:19', '2024-08-16 14:39:19');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `regular_price` float NOT NULL,
  `selling_price` float NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `featured_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 = featured and 0= not featured',
  `image` text NOT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0= inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `slug`, `code`, `regular_price`, `selling_price`, `stock_amount`, `short_description`, `long_description`, `sales_count`, `hit_count`, `featured_status`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(22, 2, 1, 1, 2, 'HP 15-fc0185AU AMD Ryzen 3 7320U 15.6', 'hp-15-fc0185au-amd-ryzen-3-7320u-156', '1', 55000, 50000, 2, 'HP 15-fc0185AU AMD Ryzen 3 7320U 15.6', '<h2>Specification</h2><figure class=\"table\"><table><thead><tr><th colspan=\"3\">Processor</th></tr></thead><tbody><tr><td>Processor Brand</td><td>AMD</td><td>&nbsp;</td></tr><tr><td>Processor Model</td><td>Ryzen 3 7320U</td><td>&nbsp;</td></tr><tr><td>Processor Frequency</td><td>2.4GHz up to 4.1GHz</td><td>&nbsp;</td></tr><tr><td>Processor Core</td><td>4</td><td>&nbsp;</td></tr><tr><td>Processor Thread</td><td>8</td><td>&nbsp;</td></tr><tr><td>CPU Cache</td><td>L2 Cache: 2MB<br>L3 Cache: 4MB</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Display</td></tr><tr><td>Display Size</td><td>15.6 Inch</td><td>&nbsp;</td></tr><tr><td>Display Resolution</td><td>FHD (1920 x 1080)</td><td>&nbsp;</td></tr><tr><td>Touch Screen</td><td>No</td><td>&nbsp;</td></tr><tr><td>Display Features</td><td>Screen-to-body ratio (w/o speakers): 82.12%<br>Color gamut: 45% NTSC<br>Brightness: 250 nits</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Memory</td></tr><tr><td>RAM</td><td>8GB</td><td>&nbsp;</td></tr><tr><td>RAM Type</td><td>DDR5</td><td>&nbsp;</td></tr><tr><td>Total RAM Slot</td><td>1</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Storage</td></tr><tr><td>Storage Type</td><td>PCIe NVMe M.2 SSD</td><td>&nbsp;</td></tr><tr><td>Storage Capacity</td><td>512GB</td><td>&nbsp;</td></tr><tr><td>Extra M.2 Slot</td><td>N/A</td><td>&nbsp;</td></tr><tr><td>Supported SSD Type</td><td>PCIe NVMe M.2 SSD</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Graphics</td></tr><tr><td>Graphics Model</td><td>AMD Radeon</td><td>&nbsp;</td></tr><tr><td>Graphics Memory</td><td>Shared</td><td>&nbsp;</td></tr><tr><td>Graphics Type</td><td>Integrated</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Keyboard &amp; TouchPad</td></tr><tr><td>Keyboard Type</td><td>Full-size</td><td>&nbsp;</td></tr><tr><td>Keyboard Features</td><td>soft grey keyboard with numeric keypad</td><td>&nbsp;</td></tr><tr><td>TouchPad</td><td>Yes</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Camera &amp; Audio</td></tr><tr><td>WebCam</td><td>HP True Vision 720p HD camera with noise reduction</td><td>&nbsp;</td></tr><tr><td>Speaker</td><td>Dual speakers</td><td>&nbsp;</td></tr><tr><td>Microphone</td><td>Dual-array digital microphones</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Ports &amp; Slots</td></tr><tr><td>Optical Drive</td><td>N/A</td><td>&nbsp;</td></tr><tr><td>HDMI Port</td><td>1 x HDMI 1.4b</td><td>&nbsp;</td></tr><tr><td>USB 3 Port</td><td>2 x USB Type-A 5Gbps</td><td>&nbsp;</td></tr><tr><td>USB Type-C / Thunderbolt Port</td><td>1x USB Type-C 5Gbps</td><td>&nbsp;</td></tr><tr><td>Headphone &amp; Microphone Port</td><td>1x headphone/microphone combo</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Network &amp; Connectivity</td></tr><tr><td>LAN</td><td>N/A</td><td>&nbsp;</td></tr><tr><td>WiFi</td><td>Yes</td><td>&nbsp;</td></tr><tr><td>Bluetooth</td><td>Yes</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Security</td></tr><tr><td>Fingerprint Sensor</td><td>Yes</td><td>&nbsp;</td></tr><tr><td>Camera Privacy Shutter</td><td>Yes</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Software</td></tr><tr><td>Operating System</td><td>Windows 11 Home</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Power</td></tr><tr><td>Battery Type</td><td>3-cell, Li-ion polymer</td><td>&nbsp;</td></tr><tr><td>Battery Capacity</td><td>41 Wh</td><td>&nbsp;</td></tr><tr><td>Backup Time (Approx)</td><td>Up to 12 hours</td><td>&nbsp;</td></tr><tr><td>Adapter Type</td><td>45W Smart AC power adapter</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Physical Specification</td></tr><tr><td>Color</td><td>Moonlight Blue</td><td>&nbsp;</td></tr><tr><td>Dimensions</td><td>35.85 x 24.2 x 1.79 cm</td><td>&nbsp;</td></tr><tr><td>Weight</td><td>1.69 kg</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Warranty</td></tr><tr><td>Warranty Details</td><td>2 years Limited Warranty (Terms &amp; Conditions Apply As Per HP, Battery Adapter 1 year).</td><td>&nbsp;</td></tr></tbody></table></figure><h2>Description</h2><h2>HP 15-fc0185AU AMD Ryzen 3 7320U 15.6\" FHD Laptop</h2><p>The HP <strong>15-fc0185AU</strong> AMD Ryzen 3 7320U 15.6\" FHD <a href=\"https://www.startech.com.bd/laptop-notebook\">Laptop </a>is a versatile computing powerhouse designed to handle a variety of activities with ease and precision. At its center is the AMD Ryzen 3 7320U CPU, which has a basic clock speed of 2.4GHz and can turbo boost up to 4.1GHz, as well as four cores, allowing for fluid multitasking, smooth performance in ordinary computer chores, and even light gaming. The powerful processor is accompanied by 8GB of DDR5 RAM, which provides enough memory for seamless multitasking and quick system performance. This is complemented with a large 512GB SSD M.2 PCIe NVMe SSD, which provides fast boot speeds, quick program launches, and enough storage capacity for your data, apps, and multimedia material. Immerse yourself in amazing images with the laptop\'s large 15.6\" Full HD display, which has a resolution of 1920x1080 pixels. Whether you\'re watching movies, editing images, or working on complex spreadsheets, every detail is reproduced with clear clarity and rich colors, providing an immersive viewing experience for both work and leisure. The laptop\'s two speakers enhance your multimedia experience even further, providing rich and immersive audio quality for your movies, music, and web entertainment. Immerse yourself in your favorite entertainment with clear and dramatic sound, whether you\'re viewing films or taking part in virtual meetings. The HP 15-fc0185AU\'s complete feature set, including a built-in HD camera, allows you to stay connected and productive. The camera is ideal for video conferencing, online meetings, and virtual classrooms, as it provides clear and crisp video quality, allowing you to easily communicate with coworkers, friends, and family members. The HP 15-fc0185AU is built for portability and durability, with a sleek and modern design that is both visually pleasant and functional for on-the-go use. With its combination of performance, portability, and connection, this laptop is an excellent choice for work, study, leisure, and everything in between. The HP 15-fc0185AU AMD Ryzen 3 7320U 15.6\" FHD Laptop provides power and convenience, allowing you to reach your best potential wherever you go.</p><h2>Buy HP 15-fc0185AU AMD Ryzen 3 7320U 15.6\" FHD Laptop From Star Tech</h2><p>In Bangladesh, you can get original <strong>HP 15-fc0185AU AMD Ryzen 3 7320U 15.6\" FHD Laptop</strong> From Star Tech. We have a large collection of latest <a href=\"https://www.startech.com.bd/hp-laptop\">HP Laptop</a> to purchase. Order Online Or Visit your Nearest <a href=\"https://www.startech.com.bd\">Star Tech Shop</a> to get yours at lowest price. The HP 15-fc0185AU AMD Ryzen 3 7320U 15.6\" FHD Laptop comes with a 2-year warranty (Terms &amp; Conditions Apply As Per HP, Battery Adapter 1 year).</p>', 0, 0, 0, 'admin/image/product/252518154.jpg', 'HP 15-fc0185AU AMD Ryzen 3 7320U 15.6', 'HP 15-fc0185AU AMD Ryzen 3 7320U 15.6', 1, '2024-07-14 06:40:59', '2024-07-14 06:40:59'),
(23, 2, 1, 1, 2, 'HP 250 G8 Core i3 11th Gen 256GB SSD 1TB HDD SSD 15.6\" FHD Laptop with Windows', 'hp-250-g8-core-i3-11th-gen-256gb-ssd-1tb-hdd-ssd-156-fhd-laptop-with-windows', '2', 56500, 52000, 4, 'HP 250 G8 Core i3 11th Gen 256GB SSD 1TB HDD SSD 15.6\" FHD Laptop with Windows', '<h2>Specification</h2><figure class=\"table\"><table><thead><tr><th colspan=\"3\">Processor</th></tr></thead><tbody><tr><td>Processor Brand</td><td>Intel</td><td>&nbsp;</td></tr><tr><td>Processor Model</td><td>Core i3-1115G4</td><td>&nbsp;</td></tr><tr><td>Generation</td><td>11th Gen</td><td>&nbsp;</td></tr><tr><td>Processor Frequency</td><td>3.00 GHz up to 4.10 GHz</td><td>&nbsp;</td></tr><tr><td>Processor Core</td><td>2</td><td>&nbsp;</td></tr><tr><td>Processor Thread</td><td>4</td><td>&nbsp;</td></tr><tr><td>CPU Cache</td><td>6 MB</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Chipset</td></tr><tr><td>Chipset Model</td><td>Integrated with processor</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Display</td></tr><tr><td>Display Size</td><td>15.6 Inch</td><td>&nbsp;</td></tr><tr><td>Display Type</td><td>IPS</td><td>&nbsp;</td></tr><tr><td>Display Resolution</td><td>FHD (1920 x 1080)</td><td>&nbsp;</td></tr><tr><td>Touch Screen</td><td>No</td><td>&nbsp;</td></tr><tr><td>Display Features</td><td>Anti-Glare WLED&nbsp;<br>250nits&nbsp;<br>eDP micro-edge&nbsp;<br>45% NTSC</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Memory</td></tr><tr><td>RAM</td><td>8GB</td><td>&nbsp;</td></tr><tr><td>RAM Type</td><td>DDR4</td><td>&nbsp;</td></tr><tr><td>Removable</td><td>Yes</td><td>&nbsp;</td></tr><tr><td>Bus Speed</td><td>3200MHz</td><td>&nbsp;</td></tr><tr><td>Total RAM Slot</td><td>2</td><td>&nbsp;</td></tr><tr><td>Max RAM Capacity</td><td>16GB</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Storage</td></tr><tr><td>Storage Type</td><td>SSD &amp; SATA HDD</td><td>&nbsp;</td></tr><tr><td>Storage Capacity</td><td>256GB SSD &amp; 1TB HDD</td><td>&nbsp;</td></tr><tr><td>HDD RPM</td><td>5400 RPM</td><td>&nbsp;</td></tr><tr><td>Extra M.2 Slot</td><td>Yes</td><td>&nbsp;</td></tr><tr><td>Storage Upgrade</td><td>SSD and HDD can be replaced</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Graphics</td></tr><tr><td>Graphics Model</td><td>Intel UHD Graphics</td><td>&nbsp;</td></tr><tr><td>Graphics Memory</td><td>Shared</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Keyboard &amp; TouchPad</td></tr><tr><td>Keyboard Type</td><td>Textured island-style keyboard</td><td>&nbsp;</td></tr><tr><td>TouchPad</td><td>Yes</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Camera &amp; Audio</td></tr><tr><td>WebCam</td><td>HP TrueVision HD</td><td>&nbsp;</td></tr><tr><td>Speaker</td><td>Integrated stereo speakers</td><td>&nbsp;</td></tr><tr><td>Microphone</td><td>Integrated dual-array microphones</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Ports &amp; Slots</td></tr><tr><td>Optical Drive</td><td>N/A</td><td>&nbsp;</td></tr><tr><td>Card Reader</td><td>1x Multi-format digital media reader (supports SD, SDHC, and SDXC)</td><td>&nbsp;</td></tr><tr><td>HDMI Port</td><td>1 x HDMI 1.4b</td><td>&nbsp;</td></tr><tr><td>USB 3 Port</td><td>2x USB 3.2 Gen 1 ports<br>&nbsp;</td><td>&nbsp;</td></tr><tr><td>USB Type-C / Thunderbolt Port</td><td>1x USB 3.2 Gen 1 Type-C port (data only)</td><td>&nbsp;</td></tr><tr><td>Headphone &amp; Microphone Port</td><td>1 x Headphone /Microphone port</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Network &amp; Connectivity</td></tr><tr><td>LAN</td><td>RJ-45/Ethernet port</td><td>&nbsp;</td></tr><tr><td>WiFi</td><td>Realtek 802.11ac (2x2) WLAN</td><td>&nbsp;</td></tr><tr><td>Bluetooth</td><td>Realtek 802.11ac (2x2) WLAN</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Security</td></tr><tr><td>Fingerprint Sensor</td><td>N/A</td><td>&nbsp;</td></tr><tr><td>Security Chip</td><td>Firmware TPM 2.0</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Software</td></tr><tr><td>Operating System</td><td>Windows 10 Home</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Power</td></tr><tr><td>Battery Type</td><td>3 Cell Li-ion</td><td>&nbsp;</td></tr><tr><td>Battery Capacity</td><td>41 Wh</td><td>&nbsp;</td></tr><tr><td>Adapter Type</td><td>45 W AC power adapter</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Physical Specification</td></tr><tr><td>Color</td><td>Ash Black</td><td>&nbsp;</td></tr><tr><td>Dimensions</td><td>32.41 x 22.58 x 1.98 cm</td><td>&nbsp;</td></tr><tr><td>Weight</td><td>1.74 kg</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Warranty</td></tr><tr><td>Warranty Details</td><td>1 year Limited Warranty (Terms &amp; Conditions Apply As Per HP)<br>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure><h2>Description</h2><h2>HP 250 G8 Core i3 11th Gen 256GB SSD 15.6\" FHD Laptop</h2><p>The HP <strong>250 G8</strong> Core i3 11th Gen 256GB SSD 15.6\" FHD <a href=\"https://www.startech.com.bd/laptop-notebook/laptop\">Laptop </a>offers a balance of performance, dependability, and portability that is ideal for everyday computing requirements. With its 2 cores and 4 threads, as well as its 6 MB of CPU cache, the 11th generation Intel Core i3-1115G4 processor, rated at 3.00 GHz with a turbo boost up to 4.10 GHz, powers effective multitasking. With its anti-glare WLED technology, the 15.6-inch IPS display offers clear images in Full HD quality (1920 x 1080), making it comfortable to watch in well-lit areas. It offers enough storage and fluid performance for a variety of jobs with 8GB of DDR4 RAM (expandable up to 16GB) and a 1TB SATA HDD storage (5400 RPM), augmented by an extra M.2 port for SSD upgrades. The textured island-style keyboard and touchpad provide pleasant input, while the integrated Intel UHD Graphics effectively handle graphics tasks. For clear communication and multimedia experiences, the HP 250 G8 Core i3 11th Gen 256GB SSD 15.6\" FHD Laptop has dual-array microphones, integrated stereo speakers, and an HP TrueVision HD webcam. Two USB 3.2 Gen 1 ports, one USB Type-C connector (for data only), HDMI 1.4b, a headphone/microphone port, and a multi-format digital media reader are among the connectivity possibilities. Networking features include Bluetooth and Realtek 802.11ac Wi-Fi. Firmware TPM 2.0 is one of the security measures on the gadget, which is powered by a 3-cell Li-ion battery (41 Wh) and includes a 45 W AC power adapter to ensure long-lasting performance while on the go. All things considered, the HP 250 G8 laptop fits the needs of both work and play with its strong performance, flexible storage options, and basic features.</p><h2>Buy HP 250 G8 Core i3 11th Gen 256GB SSD 15.6\" FHD Laptop from Star Tech</h2><p>In Bangladesh, you can get original <strong>HP 250 G8 Core i3 11th Gen 256GB SSD 15.6\" FHD Laptop</strong> From Star Tech. We have a large collection of latest <a href=\"https://www.startech.com.bd/hp-laptop\">HP Laptop</a> to purchase. Order Online Or Visit your Nearest <a href=\"https://www.startech.com.bd\">Star Tech Shop</a> to get yours at lowest price. The HP 250 G8 Core i3 11th Gen 256GB SSD 15.6\" FHD Laptop comes with 1-year limited warranty. (Terms &amp; Conditions Apply As Per HP.)</p>', 0, 0, 0, 'admin/image/product/1446772735.jpg', 'HP 250 G8 Core i3 11th Gen 256GB SSD 1TB HDD SSD 15.6\" FHD Laptop with Windows', 'HP 250 G8 Core i3 11th Gen 256GB SSD 1TB HDD SSD 15.6\" FHD Laptop with Windows', 1, '2024-07-14 06:43:28', '2024-07-14 06:43:28'),
(24, 2, 1, 1, 2, 'HP 255 G9 Ryzen 5 5625U 15.6\" HD Laptop With 1 Year Warranty', 'hp-255-g9-ryzen-5-5625u-156-hd-laptop-with-1-year-warranty', '3', 57000, 60000, 4, 'HP 255 G9 Ryzen 5 5625U 15.6\" HD Laptop With 1 Year Warranty', '<h2>Specification</h2><figure class=\"table\"><table><thead><tr><th colspan=\"3\">Processor</th></tr></thead><tbody><tr><td>Processor Brand</td><td>AMD</td><td>&nbsp;</td></tr><tr><td>Processor Model</td><td>Ryzen 5 5625U</td><td>&nbsp;</td></tr><tr><td>Processor Core</td><td>6</td><td>&nbsp;</td></tr><tr><td>Processor Thread</td><td>12</td><td>&nbsp;</td></tr><tr><td>CPU Cache</td><td>L1 Cache: 384KB<br>L2 Cache: 3MB<br>L3 Cache: 16MB</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Display</td></tr><tr><td>Display Size</td><td>15.6 Inch</td><td>&nbsp;</td></tr><tr><td>Display Resolution</td><td>HD (1366 x 768)</td><td>&nbsp;</td></tr><tr><td>Touch Screen</td><td>No</td><td>&nbsp;</td></tr><tr><td>Display Features</td><td>diagonal, narrow bezel, anti-glare, 250 nits, 45% NTSC</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Memory</td></tr><tr><td>RAM</td><td>8GB</td><td>&nbsp;</td></tr><tr><td>RAM Type</td><td>DDR4</td><td>&nbsp;</td></tr><tr><td>Bus Speed</td><td>3200Mhz</td><td>&nbsp;</td></tr><tr><td>Total RAM Slot</td><td>2</td><td>&nbsp;</td></tr><tr><td>Max RAM Capacity</td><td>Up to 32</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Storage</td></tr><tr><td>Storage Type</td><td>PCIe NVMe SSD</td><td>&nbsp;</td></tr><tr><td>Storage Capacity</td><td>512GB</td><td>&nbsp;</td></tr><tr><td>Extra M.2 Slot</td><td>N/A</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Graphics</td></tr><tr><td>Graphics Model</td><td>AMD Radeon Graphics</td><td>&nbsp;</td></tr><tr><td>Graphics Memory</td><td>Shared</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Keyboard &amp; TouchPad</td></tr><tr><td>Keyboard Type</td><td>Full-size keyboard with numeric keypad</td><td>&nbsp;</td></tr><tr><td>TouchPad</td><td>Yes</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Camera &amp; Audio</td></tr><tr><td>WebCam</td><td>HP True Vision 720p HD camera with integrated dual array digital microphones</td><td>&nbsp;</td></tr><tr><td>Speaker</td><td>Dual stereo</td><td>&nbsp;</td></tr><tr><td>Microphone</td><td>dual array</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Ports &amp; Slots</td></tr><tr><td>Optical Drive</td><td>N/A</td><td>&nbsp;</td></tr><tr><td>HDMI Port</td><td>1x HDMI 1.4b</td><td>&nbsp;</td></tr><tr><td>USB 3 Port</td><td>2x USB Type-A 5Gbps signaling rate</td><td>&nbsp;</td></tr><tr><td>USB Type-C / Thunderbolt Port</td><td>1x USB Type-C 5Gbps signaling rate</td><td>&nbsp;</td></tr><tr><td>Headphone &amp; Microphone Port</td><td>1x stereo headphone/microphone combo jack<br>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Network &amp; Connectivity</td></tr><tr><td>LAN</td><td>N/A</td><td>&nbsp;</td></tr><tr><td>WiFi</td><td>Realtek RTL8822CE 802.11a/b/g/n/ac (2x2) Wi-Fi</td><td>&nbsp;</td></tr><tr><td>Bluetooth</td><td>Bluetooth 5</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Software</td></tr><tr><td>Operating System</td><td>FreeDOS</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Power</td></tr><tr><td>Battery Type</td><td>3 Cell</td><td>&nbsp;</td></tr><tr><td>Battery Capacity</td><td>41 Wh</td><td>&nbsp;</td></tr><tr><td>Adapter Type</td><td>45-watt Smart AC</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Physical Specification</td></tr><tr><td>Color</td><td>Asteroid silver</td><td>&nbsp;</td></tr><tr><td>Dimensions</td><td>35.8 x 24.2 x 1.99 cm</td><td>&nbsp;</td></tr><tr><td>Weight</td><td>1.74 kg</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Warranty</td></tr><tr><td>Warranty Details</td><td>01-Year Warranty</td><td>&nbsp;</td></tr></tbody></table></figure><h2>Description</h2><h2>HP 255 G9 Ryzen 5 5625U 15.6\" HD Laptop With 1 Year Warranty</h2><p>The HP <strong>255 G9</strong> is a versatile and reliable laptop designed for both professional and personal use. Equipped with a robust AMD Ryzen 5 5625U processor featuring a 16MB L3 cache and clock speeds ranging from 2.3GHz to 4.3GHz, this laptop ensures smooth and efficient performance for a wide range of tasks. It comes with 8GB of DDR4 RAM running at 3200MHz, providing ample memory for multitasking, and a 512GB SSD offers generous and fast storage for all your files, applications, and media. With a resolution of 1366 x 768, the 15.6\" HD display provides sharp images appropriate for daily computing requirements; nevertheless, its primary purpose is not to support high-definition video watching. With its several USB ports, HDMI output, Ethernet connector, USB Type-C port, and other contemporary connection features, the HP 255 G9 is compatible with a large number of devices and accessories. The built-in HD camera is also ideal for online learning, video conferences, and maintaining relationships with loved ones. This <a href=\"https://www.startech.com.bd/laptop-notebook/laptop\">laptop</a> also features integrated stereo speakers for quality audio output, a full-sized keyboard for comfortable typing, and a multi-gesture touchpad for easy navigation. Its lightweight and durable chassis make it a practical choice for users on the go, and the long-lasting battery life supports extended use without frequent recharging. Running on Windows 10 or 11, depending on the configuration, the HP 255 G9 combines performance, storage, and essential features in an affordable package, making it an excellent choice for users seeking a dependable and efficient laptop.</p>', 0, 0, 0, 'admin/image/product/177045707.jpg', 'HP 255 G9 Ryzen 5 5625U 15.6\" HD Laptop With 1 Year Warranty', 'HP 255 G9 Ryzen 5 5625U 15.6\" HD Laptop With 1 Year Warranty', 1, '2024-07-14 06:44:48', '2024-07-14 06:44:48'),
(25, 2, 4, 5, 2, 'Nokia C32 Smartphone (4/64GB)', 'nokia-c32-smartphone-464gb', '5', 15000, 12000, 6, 'Nokia C32 Smartphone (4/64GB)', '<h2>Specification</h2><figure class=\"table\"><table><thead><tr><th colspan=\"3\">Display</th></tr></thead><tbody><tr><td>Size</td><td>6.5\"</td><td>&nbsp;</td></tr><tr><td>Type</td><td>IPS LCD</td><td>&nbsp;</td></tr><tr><td>Resolution</td><td>720 x 1600 pixels, 20:9 ratio (~270 ppi density)</td><td>&nbsp;</td></tr><tr><td>Features</td><td>102.0 cm2 (~81.6% screen-to-body ratio)</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Processor</td></tr><tr><td>Chipset</td><td>Unisoc SC9863A1 (22nm)</td><td>&nbsp;</td></tr><tr><td>CPU Type</td><td>Octa-core</td><td>&nbsp;</td></tr><tr><td>CPU Speed</td><td>4x1.6 GHz Cortex-A55 &amp; 4x1.2 GHz Cortex-A55</td><td>&nbsp;</td></tr><tr><td>GPU</td><td>IMG8322</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Memory</td></tr><tr><td>RAM</td><td>4GB</td><td>&nbsp;</td></tr><tr><td>Internal Storage</td><td>64GB</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Rear Camera</td></tr><tr><td>Resolution</td><td>50 MP, (wide), AF<br>2 MP, (macro)</td><td>&nbsp;</td></tr><tr><td>Features</td><td>LED flash, HDR</td><td>&nbsp;</td></tr><tr><td>Video Recording</td><td>1080p@30fps</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Front Camera</td></tr><tr><td>Resolution</td><td>8 MP</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Audio</td></tr><tr><td>Speaker</td><td>Loudspeaker</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Network &amp; Connectivity</td></tr><tr><td>SIM</td><td>Dual SIM (Nano-SIM, dual stand-by)</td><td>&nbsp;</td></tr><tr><td>Network</td><td>GSM / HSPA / LTE</td><td>&nbsp;</td></tr><tr><td>Wi-Fi</td><td>Wi-Fi 802.11 b/g/n</td><td>&nbsp;</td></tr><tr><td>Bluetooth</td><td>5.2, A2DP</td><td>&nbsp;</td></tr><tr><td>GPS</td><td>Yes</td><td>&nbsp;</td></tr><tr><td>NFC</td><td>N/A</td><td>&nbsp;</td></tr><tr><td>USB</td><td>USB Type-C 2.0</td><td>&nbsp;</td></tr><tr><td>Audio Jack</td><td>3.5mm</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">OS</td></tr><tr><td>Operating System</td><td>Android 13</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Features</td></tr><tr><td>Fingerprint</td><td>Fingerprint (side-mounted)</td><td>&nbsp;</td></tr><tr><td>Sensors</td><td>Accelerometer, proximity</td><td>&nbsp;</td></tr><tr><td>Other Features</td><td>FM radio</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Battery</td></tr><tr><td>Type</td><td>Li-Po 5000 mAh, non-removable</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Physical specification</td></tr><tr><td>Dimension</td><td>164.6 x 75.9 x 8.6 mm (6.48 x 2.99 x 0.34 in)</td><td>&nbsp;</td></tr><tr><td>Weight</td><td>199.4 g (7.02 oz)</td><td>&nbsp;</td></tr><tr><td>Body Material</td><td>Glass front, glass back, plastic frame</td><td>&nbsp;</td></tr><tr><td>Colors</td><td>Charcoal<br>Autumn Green<br>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Warranty Information</td></tr><tr><td>Warranty</td><td>Nokia Official Made By Bangladesh<br>01-year Official warranty (To claim please visit the nearest Nokia Service Center)</td><td>&nbsp;</td></tr></tbody></table></figure><h2>Description</h2><h2>Nokia C32 Smartphone (4/64GB)</h2><p>The <strong>Nokia C32</strong> Smartphone is a stylish and powerful smartphone designed to improve your mobile experience. With a brilliant 6.5-inch HD+ display with a resolution of 720 x 1600, this phone provides a visually appealing platform for all of your entertainment demands. The Nokia C32 is powered by the economical Unisoc SC9863A1 CPU, which uses a 22nm architecture to ensure smooth performance and quick handling. Capture every moment with accuracy thanks to the remarkable dual-camera configuration on the back, which has a 50MP primary lens and a 2MP secondary lens. The front-facing 8MP camera is ideal for taking great selfies. The Nokia C32\'s LED flash and HDR features ensure that your photographs are well-lit and detailed, even in low-light circumstances. The Nokia C32 has 4GB of RAM and 64GB of internal storage that can be expanded via microSD card, providing enough of room for your programs, photographs, and data. Stay connected and entertained with this feature-rich smartphone that blends cutting-edge technology with Nokia\'s famous reliability.</p><h3>A Luxurious and Sleek Design</h3><p>The sleek sandwich design and straight sides offer the Nokia C32 a modern style and feel, which is enhanced even further by the beautiful glass back. But it isn\'t simply the style that will endure over time. Nokia C32 is equipped with an IP52 dust and spill protection grade, making it ready for the day.</p><h3>Capture Every Moment With 50MP Camera</h3><p>Good lighting does not wait for the right image. That\'s why the <strong>Nokia C32</strong> has a dual back camera with a 50 MP primary sensor to catch more light. With the built-in image algorithms, you\'ll get great photos day or night. Furthermore, with Night mode and Portrait mode for both the back and front cameras, you can catch action from either side of the phone.</p><h3>3 Days battery Life</h3><p>The large 5000 mAh battery is only the beginning. With the newest energy-saving features such as app hibernation and HMD Super battery saver, the Nokia C32 can run up to three days without charging. Furthermore, its simpler OS means less bloatware using up power in the background.</p><h3>Unlock With a Touch</h3><p>With a fingerprint sensor integrated into the power button, the key to rapid and secure device unlocking is practically in your hands. The Nokia C32 also has this feature.</p>', 0, 0, 0, 'admin/image/product/713105146.jpg', 'Nokia C32 Smartphone (4/64GB)', 'Nokia C32 Smartphone (4/64GB)', 1, '2024-07-14 06:48:19', '2024-07-14 06:48:19'),
(26, 2, 4, 5, 2, 'Nokia C12 Pro Smartphone (4*/64GB)', 'nokia-c12-pro-smartphone-464gb', '7', 10000, 9000, 5, 'Nokia C12 Pro Smartphone (4*/64GB)', '<h2>Specification</h2><figure class=\"table\"><table><thead><tr><th colspan=\"3\">Display</th></tr></thead><tbody><tr><td>Size</td><td>6.3\"</td><td>&nbsp;</td></tr><tr><td>Type</td><td>IPS LCD</td><td>&nbsp;</td></tr><tr><td>Resolution</td><td>720 x 1600 pixels, 20:9 ratio (~278 ppi density)</td><td>&nbsp;</td></tr><tr><td>Features</td><td>95.8 cm2 (~80.3% screen-to-body ratio)</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Processor</td></tr><tr><td>Chipset</td><td>Unisoc SC9863A1 (28nm)</td><td>&nbsp;</td></tr><tr><td>CPU Type</td><td>Octa-core</td><td>&nbsp;</td></tr><tr><td>CPU Speed</td><td>4x1.6 GHz Cortex-A55 &amp; 4x1.2 GHz Cortex-A55</td><td>&nbsp;</td></tr><tr><td>GPU</td><td>IMG8322</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Memory</td></tr><tr><td>RAM</td><td>2 GB + 2 GB Virtual RAM</td><td>&nbsp;</td></tr><tr><td>Internal Storage</td><td>64GB</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Rear Camera</td></tr><tr><td>Resolution</td><td>8 MP, AF</td><td>&nbsp;</td></tr><tr><td>Features</td><td>LED flash, HDR</td><td>&nbsp;</td></tr><tr><td>Video Recording</td><td>720p@30fps</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Front Camera</td></tr><tr><td>Resolution</td><td>5 MP</td><td>&nbsp;</td></tr><tr><td>Video Recording</td><td>720p@30fps</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Audio</td></tr><tr><td>Speaker</td><td>Loudspeaker</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Network &amp; Connectivity</td></tr><tr><td>SIM</td><td>Dual SIM (Nano-SIM, dual stand-by)</td><td>&nbsp;</td></tr><tr><td>Network</td><td>GSM / HSPA / LTE</td><td>&nbsp;</td></tr><tr><td>Wi-Fi</td><td>Wi-Fi 802.11 b/g/n</td><td>&nbsp;</td></tr><tr><td>Bluetooth</td><td>5.2, A2DP</td><td>&nbsp;</td></tr><tr><td>GPS</td><td>Yes</td><td>&nbsp;</td></tr><tr><td>NFC</td><td>N/A</td><td>&nbsp;</td></tr><tr><td>USB</td><td>microUSB 2.0</td><td>&nbsp;</td></tr><tr><td>Audio Jack</td><td>3.5mm</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">OS</td></tr><tr><td>Operating System</td><td>Android 12 (Go edition)</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Features</td></tr><tr><td>Sensors</td><td>accelerometer, proximity</td><td>&nbsp;</td></tr><tr><td>Other Features</td><td>FM radio</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Battery</td></tr><tr><td>Type</td><td>Li-Ion 4000 mAh, removable</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Physical specification</td></tr><tr><td>Dimension</td><td>160.6 x 74.3 x 8.8 mm (6.32 x 2.93 x 0.35 in)</td><td>&nbsp;</td></tr><tr><td>Weight</td><td>177.4 g (6.24 oz)</td><td>&nbsp;</td></tr><tr><td>Body Material</td><td>Glass front, plastic back, plastic frame</td><td>&nbsp;</td></tr><tr><td>Colors</td><td>Charcoal<br>Dark Cyan<br>Light Mint<br>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Warranty Information</td></tr><tr><td>Warranty</td><td>Nokia Official Made By Bangladesh<br>01-year Official warranty (To claim please visit the nearest Nokia Service Center)</td><td>&nbsp;</td></tr></tbody></table></figure><h2>Description</h2><h2>Nokia C12 Pro Smartphone (4*/64GB)</h2><p>The <strong>Nokia C12 Pro</strong> <a href=\"https://www.startech.com.bd/mobile-phone\">Smartphone </a>offers the ideal balance of elegance and performance, boasting an outstanding 6.3-inch display with a resolution of 720 x 1600 pixels. This gadget not only produces brilliant graphics, but also provides a large and immersive viewing experience. The Nokia C12 Pro has a long-lasting Li-Ion 4000 mAh battery and 10W charging for rapid power boosts on the move. This smartphone is designed to be durable, with water resistance and scratch-resistant glass to protect against the environment and accidental accidents. The intelligent integration of LED flash and HDR improves your photography by guaranteeing that you catch every detail in a variety of lighting circumstances. The Nokia C12 Pro Smartphone demonstrates Nokia\'s dedication to provide a seamless balance of elegance, durability, and performance for those seeking a dependable and feature-rich mobile experience.</p><h3>Performs Under Pressure</h3><p>The Nokia C12 Pro boasts an octa-core processor and 2 GB of virtual memory, ensuring seamless app performance. It\'s also robust; it\'s been repeatedly tested to guarantee that it can withstand the rigours of daily living.</p><h3>Big screen without the bulk</h3><p>Videos and applications look amazing on the 6.3\" HD+ display of The <strong>Nokia C12 Pro</strong>, which features a selfie notch to optimize screen area. All of this on a phone that is easy to hold with one hand.</p><h3>Tough On The Inside</h3><p>The Nokia C12 Pro is designed to be contemporary, including its appearance. It has a contoured back with a metallic finish and a 3D pattern for a better grip, giving it an appearance that is both current and classic. Nokia smartphones are highly durable and resistant to dust, moisture, and accidental drops due to extensive testing.</p>', 0, 0, 0, 'admin/image/product/964828836.jpg', 'Nokia C12 Pro Smartphone (4*/64GB)', 'Nokia C12 Pro Smartphone (4*/64GB)', 1, '2024-07-14 06:49:41', '2024-07-14 06:49:41'),
(27, 2, 4, 5, 2, 'Nokia C22 Smartphone (3/64GB)', 'nokia-c22-smartphone-364gb', '8', 11000, 10000, 4, 'Nokia C22 Smartphone (3/64GB)', '<h2>Specification</h2><figure class=\"table\"><table><thead><tr><th colspan=\"3\">Display</th></tr></thead><tbody><tr><td>Size</td><td>6.5\"</td><td>&nbsp;</td></tr><tr><td>Type</td><td>IPS LCD</td><td>&nbsp;</td></tr><tr><td>Resolution</td><td>720 x 1600 pixels, 20:9 ratio (~270 ppi density)</td><td>&nbsp;</td></tr><tr><td>Features</td><td>102.0 cm2 (~81.6% screen-to-body ratio)</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Processor</td></tr><tr><td>Chipset</td><td>Unisoc SC9863A (28nm)</td><td>&nbsp;</td></tr><tr><td>CPU Type</td><td>Octa-core</td><td>&nbsp;</td></tr><tr><td>CPU Speed</td><td>4x1.6 GHz Cortex-A55 &amp; 4x1.2 GHz Cortex-A55</td><td>&nbsp;</td></tr><tr><td>GPU</td><td>IMG8322</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Memory</td></tr><tr><td>RAM</td><td>3GB</td><td>&nbsp;</td></tr><tr><td>Internal Storage</td><td>64GB</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Rear Camera</td></tr><tr><td>Resolution</td><td>13 MP, (wide), AF<br>2 MP, (macro)</td><td>&nbsp;</td></tr><tr><td>Features</td><td>LED flash, HDR</td><td>&nbsp;</td></tr><tr><td>Video Recording</td><td>1080p@30fps</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Front Camera</td></tr><tr><td>Resolution</td><td>8 MP</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Audio</td></tr><tr><td>Speaker</td><td>Loudspeaker</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Network &amp; Connectivity</td></tr><tr><td>SIM</td><td>Dual SIM (Nano-SIM, dual stand-by)</td><td>&nbsp;</td></tr><tr><td>Network</td><td>GSM / HSPA / LTE</td><td>&nbsp;</td></tr><tr><td>Wi-Fi</td><td>Wi-Fi 802.11 b/g/n</td><td>&nbsp;</td></tr><tr><td>Bluetooth</td><td>5.2, A2DP</td><td>&nbsp;</td></tr><tr><td>GPS</td><td>Yes</td><td>&nbsp;</td></tr><tr><td>NFC</td><td>N/A</td><td>&nbsp;</td></tr><tr><td>USB</td><td>USB Type-C 2.0</td><td>&nbsp;</td></tr><tr><td>Audio Jack</td><td>3.5mm</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">OS</td></tr><tr><td>Operating System</td><td>Android 13 (Go edition)</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Features</td></tr><tr><td>Fingerprint</td><td>Fingerprint (rear-mounted)</td><td>&nbsp;</td></tr><tr><td>Sensors</td><td>accelerometer, proximity</td><td>&nbsp;</td></tr><tr><td>Other Features</td><td>FM radio</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Battery</td></tr><tr><td>Type</td><td>Li-Po 5000 mAh, non-removable</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Physical specification</td></tr><tr><td>Dimension</td><td>164.6 x 75.9 x 8.6 mm (6.48 x 2.99 x 0.34 in)</td><td>&nbsp;</td></tr><tr><td>Weight</td><td>190 g (6.70 oz)</td><td>&nbsp;</td></tr><tr><td>Body Material</td><td>Glass front, plastic back, plastic frame</td><td>&nbsp;</td></tr><tr><td>Colors</td><td>Sand<br>Charcoal<br>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=\"3\">Warranty Information</td></tr><tr><td>Warranty</td><td>Nokia Official Made By Bangladesh<br>01-year Official warranty (To claim please visit the nearest Nokia Service Center)</td><td>&nbsp;</td></tr></tbody></table></figure><h2>Description</h2><h2>Nokia C22 Smartphone (3/64GB)</h2><p>The <strong>Nokia C22</strong> <a href=\"https://www.startech.com.bd/mobile-phone\">Smartphone</a>, which deftly combines performance and style, go on a visual adventure. Linger over the large 6.5-inch HD+ screen, which provides a fascinating visual experience with a resolution of 720 x 1600 pixels. The Unisoc SC9863A processor powers your daily activities, guaranteeing fluid performance and effectiveness in every encounter. Capture life\'s moments in spectacular detail with the dual-camera configuration on the rear camera featuring a 13MP primary lens and a 2MP secondary lens for depth perception. With the 8MP front camera, you can take more impressive selfies that are crisp and colorful. Your photography is improved with the built-in LED flash and HDR capabilities, which produce detailed and well-lit images in any lighting situation. The Nokia C22 stands out as a reliable companion that effortlessly combines functionality with a sleek design.</p><h3>3-days Battery Life</h3><p>The most recent battery-saving technologies allow the massive 5000 mAh battery to last longer. The Nokia C22 will last you for 3 days without any hassle.</p><h3>Built to Take On The Day</h3><p>Although the Nokia C22 has some contemporary looks, its design is more intricate than it first appears. Its robust core metal chassis is located between its toughened 2.5D glass front and durable polycarbonate back. When combined, they provide improved resistance to drops and an IP52 dust and spill protection certification.</p><h3>Capture All Day Long</h3><p>The camera of <strong>Nokia C22</strong> can provide amazing photos, but that\'s not all there is to it. Powerful Night and Portrait modes are available for both the dual 13 MP rear camera and the 8 MP selfie camera thanks to exclusive image algorithms. The outcome? Beautiful portraits and sharp low-light images, taken from the front or behind, day or night. They will also appear fantastic on the 6.5\" HD+ display.</p>', 0, 0, 0, 'admin/image/product/97470149.jpg', 'Nokia C22 Smartphone (3/64GB)', 'Nokia C22 Smartphone (3/64GB)', 1, '2024-07-14 06:50:59', '2024-07-14 06:50:59'),
(28, 7, 5, 6, 2, 'Fashion Men Stainless Steel Watch', 'fashion-men-stainless-steel-watch', 'mw', 1530, 765, 10, 'Fashion Men Stainless Steel Watch Luxury Calendar Quartz Wrist Watch Mens Business Watches for Man Clock Montre Homme', '<h2>Product details of Fashion Men Stainless Steel Watch Luxury Calendar Quartz Wrist Watch Mens Business Watches for Man Clock Montre Homme</h2><ul><li>Fashion Men Stainless Steel Watch Luxury Calendar Quartz Wrist Watch Mens Business Watches for Man Clock Montre Homme</li></ul><p><strong>• Complete Calendar :</strong>Keep track of the date with ease using the watch\'s complete calendar feature.</p><p>&nbsp;</p><p><strong>• Stainless Steel Material :</strong>Made with durable stainless steel, this watch is built to last and withstand daily wear and tear.</p><p>&nbsp;</p><p><strong>• Quartz Movement :</strong>The watch\'s quartz movement ensures accurate timekeeping and reliability.</p><p>&nbsp;</p><p><strong>• Fashionable Design :</strong>The watch\'s sleek and modern design makes it a stylish accessory for any outfit.</p><p>&nbsp;</p><p>Features：</p><p>Brand: Geneva</p><p>Movement:Quartz Movement</p><p>Gender: Men</p><p>Display: Analog</p><p>Function：Calendar</p><p>Notice： 3 Fake sub-dial just decration the watch case, it don\'t work</p><p>&nbsp;</p><p>Speclflcatlons Material:</p><p>Band Material:Alloy</p><p>Watch band length Approx:215mm</p><p>Watch band Width Approx:18mm</p><p>Watch case diameter Approx:41mm</p><p>Watch case Thickness Approx:9.5mm</p><p>Watch Weight Approx:65g</p><p>&nbsp;</p><p>Package Included:</p><p>- 1 * Geneva Watch</p><p>-1 * Simple PVC Bag</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S1b74fa27b54248aa874635cecb8f7a5di.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sd69c615eb4e742f49969464a0de6eeaav.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Scfae9bc105f040b292cf8f7c9789a698x.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Seec1aabccd84443aabb7d59a40928b09H.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Se95e3e7a842d46799889e9ee826219c3N.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S4c0d35c0b7e24cf0935aca123bc3c902C.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S8e8cd5b1d4e845e185ce881cc72b82e7w.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S009e8c2198ce4c69baa1f026b33db87eF.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S1907c4db6d884d2383dfec9da887f3e6m.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sfb5bd8d3fb7e413ab7982ede0198275dE.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S4e5cd654e5e547d98a52e6b1af3ead99i.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S7dafec925ed949e88e3909bdf6cf045fi.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S78922cf95d0f4845b8c1aa3e750db835L.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S77d1501ef85548f7bd7b40d926391298q.jpg_2200x2200q80.jpg_.webp\"></figure><h2>Specifications of Fashion Men Stainless Steel Watch Luxury Calendar Quartz Wrist Watch Mens Business Watches for Man Clock Montre Homme</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>410469489_BD-2029512502</p><ul><li>Model</li></ul><p>S698</p><ul><li>Movement</li></ul><p>Quartz</p><ul><li>Watch\'s Water Resistance</li></ul><p>No Waterproof</p>', 0, 0, 0, 'admin/image/product/1091658560.webp', 'Fashion Men Stainless Steel Watch Luxury Calendar Quartz Wrist Watch Mens Business Watches for Man Clock Montre Homme', 'Fashion Men Stainless Steel Watch Luxury Calendar Quartz Wrist Watch Mens Business Watches for Man Clock Montre Homme', 1, '2024-08-16 14:57:19', '2024-08-16 14:57:19'),
(29, 7, 5, 6, 2, 'Diamond Black Steel Band Quartz Watch', 'diamond-black-steel-band-quartz-watch', 'dw', 2434, 1217, 3, '1pcs Fashion Business Calendar Men\'s Full Diamond Black Steel Band Quartz Watch', '<h2>Product details of 1pcs Fashion Business Calendar Men\'s Full Diamond Black Steel Band Quartz Watch</h2><ul><li>1pcs Fashion Business Calendar Men\'s Full Diamond Black Steel Band Quartz Watch</li></ul><p><strong>• Business Style Design :</strong>This watch features a business style design, perfect for professionals who need to keep track of their schedules accurately.</p><p>&nbsp;</p><p><strong>• Full Diamond Black Steel Band :</strong>The full diamond black steel band gives the watch a sleek and sophisticated look, adding a touch of elegance to any business attire.</p><p>&nbsp;</p><p><strong>• Quartz Movement :</strong>Powered by quartz movement, this watch ensures precision and reliability, keeping you on time always.</p><p>&nbsp;</p><p><strong>• Folding Clasp with Safety :</strong>Equipped with a folding clasp with safety, it offers secure fastening and easy adjustment to fit different wrist sizes.</p><p>&nbsp;</p><p><strong>• Plastic and Alloy Cases :</strong>The watch case is made of durable plastic and alloy, ensuring long-lasting durability and resistance to daily wear and tear.</p><p>&nbsp;</p><p><strong>• Square Case Shape :</strong>The square case shape of the watch adds a touch of classic sophistication, making it a versatile accessory for any outfit.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sc9eb2a687d8943a896797ea7ebb5c19br.jpg_2200x2200q80.jpg_.webp\"></figure><h2>Specifications of 1pcs Fashion Business Calendar Men\'s Full Diamond Black Steel Band Quartz Watch</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>400002519_BD-1978483316</p><ul><li>Strap Material</li></ul><p>Plastic</p><ul><li>Movement</li></ul><p>Quartz</p><ul><li>Watch\'s Water Resistance</li></ul><p>No Waterproof</p>', 0, 0, 0, 'admin/image/product/167686765.webp', '1pcs Fashion Business Calendar Men\'s Full Diamond Black Steel Band Quartz Watch', '1pcs Fashion Business Calendar Men\'s Full Diamond Black Steel Band Quartz Watch', 1, '2024-08-16 15:01:14', '2024-08-16 15:01:14'),
(30, 8, 8, 6, 2, 'WOMEN\'S Quartz Watch Necklace Ring Earrings Watch Set', 'womens-quartz-watch-necklace-ring-earrings-watch-set', 'wm', 1036, 518, 12, 'Women\'s Quartz Watch Set Stylish Casual WOMEN\'S Quartz Watch Necklace Ring Earrings Watch Set', '<h2>Product details of 5pcs Women\'s Quartz Watch Set Stylish Casual WOMEN\'S Quartz Watch Necklace Ring Earrings Watch Set</h2><ul><li>5pcs Women\'s Quartz Watch Set Stylish Casual WOMEN\'S Quartz Watch Necklace Ring Earrings Watch Set</li></ul><p><strong>• Quartz Movement :</strong>Powered by quartz movement, this watch set ensures precise timekeeping, making it a reliable choice for daily wear.</p><p>&nbsp;</p><p><strong>• Fashionable Design :</strong>The set features a stylish and casual design, perfect for those who want to add a touch of elegance to their outfit.</p><p>&nbsp;</p><p><strong>• No Waterproof :</strong>This watch set is not waterproof, so it\'s better suited for dry environments or occasional light rain showers.</p><p>&nbsp;</p><p><strong>• Alloy Material :</strong>Made from high-quality alloy, the watch set is durable and long-lasting, offering great value for money.</p><p>&nbsp;</p><p><strong>• Round Case Shape :</strong>The round case shape of the watches adds a classic touch to the set, making it a great gift for any occasion.</p><p>&nbsp;</p><p><strong>• Bracelet Clasp Type :</strong>Equipped with a bracelet clasp, these watches are easy to put on and take off, providing convenience and style.</p><p>&nbsp;</p><p>Movement type: Quartz Watch</p><p>Applicable people: Women</p><p>Watch case diameter Approx:28mm</p><p>Watch case Thickness Approx:9mm</p><p>Watch band Width Approx:16mm</p><p>Watch band length Approx:210mm</p><p>Package included:</p><p>- 1 x Wrist watch</p><p>-1 x Bracelet</p><p>-1 x Ring</p><p>-1 x Necklace</p><p>- 2 x Earrings</p><p>【Watch box not included】(life waterproof )only can splash a little water,can not be washed or in bathing,swimming,diving.</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S85eed063b5704593a04ada5e29b1b0ddO.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S76db21af9f714d5b8c0287ab2aae242ct.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S5086afc0dc1f4b139b4b5179b3c5f386d.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S315398a6fa47463e867991526c2a4b24W.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sd43d24b88df04fba81a5c2e4d2e6bdd3c.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S59b693a8a21a449c93d6f4a078c58ba0C.jpg_2200x2200q80.jpg_.webp\"></figure><p>&nbsp;</p><h2>Specifications of 5pcs Women\'s Quartz Watch Set Stylish Casual WOMEN\'S Quartz Watch Necklace Ring Earrings Watch Set</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>404767215_BD-2005518143</p><ul><li>Movement</li></ul><p>Quartz</p>', 0, 0, 0, 'admin/image/product/141553523.webp', 'Women\'s Quartz Watch Set Stylish Casual WOMEN\'S Quartz Watch Necklace Ring Earrings Watch Set', 'Women\'s Quartz Watch Set Stylish Casual WOMEN\'S Quartz Watch Necklace Ring Earrings Watch Set', 1, '2024-08-16 15:04:55', '2024-08-16 15:04:55');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `slug`, `code`, `regular_price`, `selling_price`, `stock_amount`, `short_description`, `long_description`, `sales_count`, `hit_count`, `featured_status`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(31, 8, 8, 6, 2, 'Women Fashion Watch Ring Necklace Earring', 'women-fashion-watch-ring-necklace-earring', 'wm1', 805, 283, 2, 'Women Fashion Watch Ring Necklace Earring Rhinestone Jewelry Set Elegant Women Round Leather Strap Quartz Wrist Watch Relogio', '<h2>Product details of Women Fashion Watch Ring Necklace Earring Rhinestone Jewelry Set Elegant Women Round Leather Strap Quartz Wrist Watch Relogio</h2><ul><li>Women Fashion Watch Ring Necklace Earring Rhinestone Jewelry Set Elegant Women Round Leather Strap Quartz Wrist Watch Relogio</li></ul><p>Movement type: Quartz Watch</p><p>Applicable people: Women</p><p>Watch band length Approx:215mm</p><p>Watch band Width Approx:14mm</p><p>Watch case diameter Approx:30mm</p><p>Watch case Thickness Approx:8mm</p><p>Package included:</p><p>- 1 x Wrist watch</p><p>- 1 x Ring</p><p>- 1 x Necklace</p><p>- 2 x Earrings</p><p>【Watch box not included】(life waterproof )only can splash a little water,can not be washed or in bathing,swimming,diving.</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S4887a3dd01d84b18bf81462edd9c955fr.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S2ffd651c0d74418b873c9a9251a49b127.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S8eb732045c7d4a5e9452f9ecc8f055840.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S0c58f0085f90417b8afb9dfabca67692H.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sb9515605ff0944ffbf0ac680c8473a8cy.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sace01ab70f0b41f8867a8515615554884.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sa7a1cd9844014e53b1cfa6c714b853bbO.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sb001f01c553942419d915ff434bd0497f.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S8f330b0890ef42c398a2298bae3c3c33m.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sa4360749b58a42ad804db7a222ae73f18.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Saef9183102164d0cb2b8a9b45e4c1bb70.jpg_2200x2200q80.jpg_.webp\"></figure><p>&nbsp;</p><h2>Specifications of Women Fashion Watch Ring Necklace Earring Rhinestone Jewelry Set Elegant Women Round Leather Strap Quartz Wrist Watch Relogio</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>404759301_BD-2005458493</p><ul><li>Movement</li></ul><p>Quartz</p><p>&nbsp;</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/1422236482.webp', 'Women Fashion Watch Ring Necklace Earring Rhinestone Jewelry Set Elegant Women Round Leather Strap Quartz Wrist Watch Relogio', 'Women Fashion Watch Ring Necklace Earring Rhinestone Jewelry Set Elegant Women Round Leather Strap Quartz Wrist Watch Relogio', 1, '2024-08-16 15:07:45', '2024-08-16 15:07:45'),
(32, 3, 9, 3, 2, 'Summer Baby Girls Clothing Sets Cotton', 'summer-baby-girls-clothing-sets-cotton', 'smb', 3692, 1136, 12, 'Summer Baby Girls Clothing Sets Cotton Cartoon Swan T-Shirt+Sequin Skirts 2Pcs Suit Children Fashion Princess Kids Dress Outfits', '<h2>Product details of Summer Baby Girls Clothing Sets Cotton Cartoon Swan T-Shirt+Sequin Skirts 2Pcs Suit Children Fashion Princess Kids Dress Outfits</h2><ul><li>Summer Baby Girls Clothing Sets Cotton Cartoon Swan T-Shirt+Sequin Skirts 2Pcs Suit Children Fashion Princess Kids Dress Outfits</li></ul><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sfae924597a604c59b326b05663675692L.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"table\"><table><tbody><tr><td colspan=\"4\"><strong>Size chartunit:cm</strong></td></tr><tr><td>Tag-US Size</td><td>Top Length</td><td>Chest*2</td><td>Skirts Length</td></tr><tr><td>M=2T</td><td>37</td><td>27</td><td>28</td></tr><tr><td>L=3T</td><td>40</td><td>29</td><td>29</td></tr><tr><td>XL=4T</td><td>43</td><td>31</td><td>30</td></tr><tr><td>XXL=5-6</td><td>46</td><td>33</td><td>31</td></tr><tr><td>3XL=7-8</td><td>49</td><td>35</td><td>32</td></tr></tbody></table></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S73e96c6a13fa471db2afc248624f6d68y.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S01d3a6ec62894034a644fad7771054e4R.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S9e5b3746f6b1441c9ceb92efcf93469dA.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S8d800a20a82a4835af505877db533515e.jpg_2200x2200q80.jpg_.webp\"></figure><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sc20252ace33442edb7fb840296ab68cbO.jpg_2200x2200q80.jpg_.webp\"></figure><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S0412d85276864b13857df56f731ae8b6y.jpg_2200x2200q80.jpg_.webp\"></figure><p><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sde14f516237f4583961e6fd7def7f33eK.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sd3c181fc22a642c886652f2112066076l.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S39ad685dea454914b70d4657cb8221f8S.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S8f9c3ee0c75e4437abe40b05bb3b0247Q.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S2f1a2549dd08405580fcc0285592b0113.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S2ba6a087814b4805b7c546c1dd5d8ecb5.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S1d947a4fd96148b297cf659bcce894704.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S93a184551af0409199b29bd4aaf9cfcdg.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S604c0983ec404d3c8c192437edf360644.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sce4439bcf5de4d70b8dcb82b0a6db268v.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sc7f9fa83b1fd48dc841716273bea98d0l.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S0b79f916c870412ab7174ac65ede92e7K.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S9117084f217c4b9ba440159c4c8a6216g.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S2431375e0a464e478286109afea448a2j.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S4fbb442373f44267bb2bf9f8de04b23fG.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sdb164daf4b7f450cba3b6baff595417bc.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sc97eccc3daad46db9239eb5039dd8d03z.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S9117084f217c4b9ba440159c4c8a6216g.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S08ed0224871644f791428aaae1dd1012M.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S4434908941e64f64a7a8398c081af4576.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sf4ef4edd3f324d2f9e18be6e8208d6ddW.jpg_2200x2200q80.jpg_.webp\"></figure><p><br><br>&nbsp;</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sa8db6131737c4b4482378c251ea345c3P.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S6a79b8d6b6b44880a980fddfc40894baa.jpg_2200x2200q80.jpg_.webp\"></figure><p>Payment</p><p>Escrow is our preferable payment method we also accept different payments as below:</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S172a1a0661a14063aac2a076a841e9e1I.jpg_2200x2200q80.jpg_.webp\"></figure><p>If there is any problem about payment,pls feel free to contact us.</p><p>..............................................................................................................................................................................</p><p>About Gift</p><p>Please don\'t ask we send a gift,beacuse we will send little gift randomly.</p><p>..............................................................................................................................................................................</p><p>Shipment</p><p>Shipping will be arranged within 7 days after Completed payment All goods will only be shipped to the shipping address provided by you. Please make sure your address is correct.</p><p>We offer 4 shipping method as below:</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Se03915ea7c2c422199440b1ab53b10f3u.jpg_2200x2200q80.jpg_.webp\"></figure><p>EMS Will take 3-7 working days, you should pay the shipping cost.</p><p>DHL Will take 3-7 working days, you should pay the shipping cost.</p><p>FedEx Will take 5-12 working days, you should pay the shipping cost.</p><p>AliExpress Standard Shipping Will take 10-35 working days,Free shipping.(Remote area need to pay a small amount of postage)</p><p>..............................................................................................................................................................................</p><p>Resend &amp; refund:</p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S7e8bfae8537947199474795c9cb46d27t.jpg_2200x2200q80.jpg_.webp\"></figure><p>1.Please check the tracking information on the tracking website,and 3-7 days or more after delivery, the logistics information will be updated.If you have any problems about tracking information,please contact us before you put the order to dispute.</p><p>2.Please contact us if you have any other requirements.</p><p>3.Please check the package and the items are whether intact.</p><p>.............................................................................................................................................................</p><p>Notice</p><p>We don\'t assume the additional import tax of your counrtry, please understand ! Please don\'t leave negative feedback. because of it.Thank you very much !</p><p>..............................................................................................................................................</p><p>Notice</p><p>Holiday and weekend are not included in the working days. Just for reference only.</p><p>..............................................................................................................................................</p><p>Feedback</p><p>1.Your satisfaction is our pursuit,so if there is anything to make you unsatisfied ,(including our product and service,or other thing),please contact us to serve you again before you put the order to dispute, we will try our best to solve the problem for you.</p><p>2. If you are satisfied with our items and our service, please leave a Postive Feedback (5 stars ) for us,it is very important for us to improve our work.</p><p><br>&nbsp;</p><h2>Specifications of Summer Baby Girls Clothing Sets Cotton Cartoon Swan T-Shirt+Sequin Skirts 2Pcs Suit Children Fashion Princess Kids Dress Outfits</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>399908352_BD-1977388305</p><ul><li>Main Material</li></ul><p>Cotton</p><ul><li>Complementary Products</li></ul><p>Children</p><ul><li>Model</li></ul><p>S0981</p><ul><li>Fashion Features</li></ul><p>CARTOON</p><ul><li>Apparel Type</li></ul><p>sets</p><ul><li>Season</li></ul><p>Summer</p><p>What’s in the box</p><p>কটন কার্টুন সোয়ান বেবি গার্লস সামার আউটফিট ও-নেক টি-শার্ট উইথ সিকুইন স্কার্ট ক্যাজুয়াল স্টাইল প্রিন্সেস ড্রেস সেট বাচ্চাদের জন্য</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/1710301559.webp', 'Summer Baby Girls Clothing Sets Cotton Cartoon Swan T-Shirt+Sequin Skirts 2Pcs Suit Children Fashion Princess Kids Dress Outfits', 'Summer Baby Girls Clothing Sets Cotton Cartoon Swan T-Shirt+Sequin Skirts 2Pcs Suit Children Fashion Princess Kids Dress Outfits', 1, '2024-08-16 15:14:05', '2024-08-16 15:14:05'),
(33, 3, 9, 3, 2, '1-6 Year Little Girl Clothes Kids Korean Style Set', '1-6-year-little-girl-clothes-kids-korean-style-set', 'kd', 4478, 1374, 3, '1-6 Year Little Girl Clothes Kids Korean Style Set Love Heart Print Long Sleeve Top + Plaid Pants with Hat Fashion 3PCS Outfits', '<h2>Product details of 1-6 Year Little Girl Clothes Kids Korean Style Set Love Heart Print Long Sleeve Top + Plaid Pants with Hat Fashion 3PCS Outfits</h2><ul><li>1-6 Year Little Girl Clothes Kids Korean Style Set Love Heart Print Long Sleeve Top + Plaid Pants with Hat Fashion 3PCS Outfits</li></ul><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S6a5958ca154144ffbd42b2b66799a446R.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S4589a27a17054ab18553c78366556923e.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S9fee9a9c745c49af803f409916c683d13.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S088066a5301c41dc88790080c64cd40aD.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/Sf287a4361bb24b1bb87f2ba9b73cba31r.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S1ec43e0a93a24d53814a13f57a015f0ch.jpg_2200x2200q80.jpg_.webp\"></figure><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/g/kf/S441d04b66d2a4738981cd3fbd25103a5q.jpg_2200x2200q80.jpg_.webp\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>🌻Size Information for Sets</p><p>Size 18-24Months (90),</p><p>Size 2-3Years (100),</p><p>Size 3-4Years (110),</p><p>Size 4-5Years (120),</p><p>Size 5-6Years (130),</p><p>&nbsp;</p><p>Size Chart Details (CM)</p><p>Size-------Top length----------Bust------------Pant------------Waist---------Recommend Age</p><p>90----------------29------------------57----------------50---------------44--------------18-24Months</p><p>100--------------31.5---------------60----------------54--------------46---------------3Years</p><p>110--------------34------------------63----------------58--------------48---------------3-4Years</p><p>120--------------36.5---------------66----------------63--------------50--------------4-5Years</p><p>130--------------39------------------69----------------68--------------52--------------5-6Years</p><p>&nbsp;</p><p>★Note:This is Asian Size (1cm=0.39inch), There is 2-3cm difference according to the manual measurements,Please kindly check the size detail before you buy it.</p><p>And please choose biggest size if the baby is cubby! Thank you!</p><p>&nbsp;</p><p>🌻Features:</p><p>1.Material:Cotton blend.</p><p>2.Color:as the pictures.</p><p>3.Sleeve Length: Long Sleeve.</p><p>4.Style: Fashion</p><p>5.Great for Daily, Party, Photograph.</p><p>&nbsp;</p><p>🌻★What You Get</p><p>1 x Fashion Top + 1*Pant + 1*Hat</p><p>&nbsp;</p><h2>Specifications of 1-6 Year Little Girl Clothes Kids Korean Style Set Love Heart Print Long Sleeve Top + Plaid Pants with Hat Fashion 3PCS Outfits</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>401872713_BD-1985745234</p><ul><li>Main Material</li></ul><p>Cotton</p><ul><li>Complementary Products</li></ul><p>Children</p><ul><li>Model</li></ul><p>122208604</p><ul><li>Fashion Features</li></ul><p>None</p><ul><li>Apparel Type</li></ul><p>sets</p><ul><li>Season</li></ul><p>Autumn</p><p>What’s in the box</p><p>ছোট মেয়েদের জন্য মিওগ্লরি কোরিয়ান স্টাইল সেট ফ্যাশনেবল হার্ট প্রিন্ট লং স্লিভ টপ প্লেইড প্যান্ট উইথ হ্যাট অটাম কটন পলিয়েস্টার 3PCS আউটফিট</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/1320827640.jpg', '1-6 Year Little Girl Clothes Kids Korean Style Set Love Heart Print Long Sleeve Top + Plaid Pants with Hat Fashion 3PCS Outfits', '1-6 Year Little Girl Clothes Kids Korean Style Set Love Heart Print Long Sleeve Top + Plaid Pants with Hat Fashion 3PCS Outfits', 1, '2024-08-16 15:16:31', '2024-08-16 15:16:31'),
(34, 7, 10, 3, 2, 'NEW STYLE Cotton Long Sleeve Formal Shirt For Men', 'new-style-cotton-long-sleeve-formal-shirt-for-men', 'md', 750, 300, 11, 'NEW STYLE Cotton Long Sleeve Formal Shirt For Men', '<h2>Product details of NEW STYLE Cotton Long Sleeve Formal Shirt For Men</h2><ul><li>Material : Cotton</li><li>Fabric Classification : Cotton Ball Printed</li><li>Pattern : Solid Color</li><li>Collar : Square Neck</li><li>Colour : As given picture</li><li>Sleeve Length : Long Sleeve</li><li>Plate Type : Slim</li><li>Sales Channel Type : E-commerce Only Sells Online</li><li>Material Composition : 100% Cotton</li><li>Size : M,L,XL</li><li>M- long: 29\", body: 40\"</li><li>L- long: 30 \", body: 42\"</li><li>XL- long: 31\", body: 44</li><li>Material : Cotton</li><li>Fabric Classification : Cotton Ball Printed</li><li>Pattern : Solid Color</li><li>Collar : Square Neck</li><li>Colour : As given picture</li><li>Sleeve Length : Long Sleeve</li><li>Plate Type : Slim</li><li>Sales Channel Type : E-commerce Only Sells Online</li><li>Material Composition : 100% Cotton</li><li>Size : M,L,XL</li><li>M- long: 29\", body: 40\"</li><li>L- long: 30 \", body: 42\"</li><li>XL- long: 31\", body: 44</li></ul><h2>Specifications of NEW STYLE Cotton Long Sleeve Formal Shirt For Men</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>252228511_BD-1197623220</p><ul><li>Main Material</li></ul><p>Cotton</p><p>What’s in the box</p><p>NEW STYLE Cotton Long Sleeve Formal Shirt For Men</p>', 0, 0, 0, 'admin/image/product/2017927323.webp', 'NEW STYLE Cotton Long Sleeve Formal Shirt For Men', 'NEW STYLE Cotton Long Sleeve Formal Shirt For Men', 1, '2024-08-16 15:19:53', '2024-08-16 15:19:53'),
(35, 8, 11, 3, 2, 'Newest Design Western Dress Smoki tops pant Two Piece For Women', 'newest-design-western-dress-smoki-tops-pant-two-piece-for-women', 'wd', 1320, 925, 3, 'Newest Design Western Dress Smoki tops pant Two Piece For Women', '<h2>Product details of Newest Design Western Dress Smoki tops pant Two Piece For Women</h2><ul><li>Perfect and comfortable thin cloth.Regular usable product.Simple and comfortable to use.Constructive colors.Fit for everyone.Free size given.Fashionable Attire.Ideal wear for any gathering or eventQuality full textures.An uncommon present for the extraordinary individual.Adunik Martএকটি প্রসিদ্ধ Brand থেকে এই পণ্যগুলো sale করছি, আমরা সব সময় আমাদের প্রোডাক্টের গুণগতমান অক্ষুন্ন রাখতে কাজ করছি।আমরা কম খরচে ভালো কাপড় ব্যবহার করে কাস্টমারদের জন্য প্রোডাক্ট গুলো সরবরাহ করি এবং দক্ষ কারিগরদের দ্বারা পণ্যগুলো প্রস্তুত করি, তাই আমাদের প্রতিটি পণ্যর ফিনিশিং খুবই ভালো মানের হয়ে থাকে।আমাদের প্রতিটি পন্য ছবির সাথে মিলবে কে প্রস্তুত করা হয়। তাই আপনারা নির্ভরযোগ্য ভাবে অর্ডার করতে পারেন । ছবির অনুরূপ সঠিক প্রোডাক্টটি আপনাদের কাছে পৌঁছানো হবে।We are selling these products from Adunik Mart a famous brand, we are always working to keep the quality of our products intact.We provide the products to the customers using good quality fabrics at low cost and the products are prepared by skilled craftsmen,so the finishing of each of our products is of very good quality.Each of our products is prepared to match the picture. So you can order.</li></ul><p>● New Collection</p><p>● Western Dress Smoki tops pant</p><p>● Body:38-44</p><p>● Long : tops 24 pant 38</p><p>● Fabrics : Dubai cherry Georgette</p><p>● 100% Color Guarantee</p><p>● Easy Wash</p><h2>Specifications of Newest Design Western Dress Smoki tops pant Two Piece For Women</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>387667456_BD-1933240620</p><ul><li>Main Material</li></ul><p>Georgette</p><p>What’s in the box</p><p>New Tops Collection</p>', 0, 0, 0, 'admin/image/product/152316314.webp', 'Newest Design Western Dress Smoki tops pant Two Piece For Women', 'Newest Design Western Dress Smoki tops pant Two Piece For Women', 1, '2024-08-16 15:21:54', '2024-08-16 15:21:54'),
(36, 8, 11, 3, 2, 'Export Denim Quality Blazer Gown', 'export-denim-quality-blazer-gown', 'ex1', 1500, 658, 12, 'Export Denim Quality Blazer Gown', '<h2>Product details of Export Denim Quality Blazer Gown</h2><ul><li>ব্লুটুথ ওয়্যারলেস V5.0 + EDR।</li><li>আল্ট্রা-কম পাওয়ার খরচ।</li><li>2.40 GHZ এর ব্লুটুথ ফ্রিকোয়েন্সি।</li><li>আপনাকে বিনোদনের জন্য রাখে 12 মিটার পরিসীমা পর্যন্ত।</li><li>বৃহদায়তন 65 এমএইচ রিচার্জেবল লি-আয়ন ব্যাটারি।</li><li>5-6 ঘন্টার মধ্যে কথোপকথন / প্লেটাইম।</li><li>স্ট্যান্ড-সময় 120 ঘন্টা।</li><li>32 ও ওমেগা স্পিকার impedance;</li><li>মাইক্রোফোনগুলি 42 ডিবি এ অপ্টিমাইজ করেছে</li></ul><h2>Specifications of Export Denim Quality Blazer Gown</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>253319056_BD-1198842492</p><ul><li>Main Material</li></ul><p>Denim</p><p>What’s in the box</p><p>Export Denim Quality Blazer Gown</p>', 0, 0, 0, 'admin/image/product/889917153.webp', 'Export Denim Quality Blazer Gown', 'Export Denim Quality Blazer Gown', 1, '2024-08-16 15:24:35', '2024-08-16 15:24:35'),
(37, 8, 11, 3, 2, 'Dhupiyan Silk Saree And Panjabi For Combo Couple Dress - Suitable for All Season and Occasions', 'dhupiyan-silk-saree-and-panjabi-for-combo-couple-dress-suitable-for-all-season-and-occasions', 'ds1', 1150, 750, 2, 'Dhupiyan Silk Saree And Panjabi For Combo Couple Dress - Suitable for All Season and Occasions', '<h2>Product details of Dhupiyan Silk Saree And Panjabi For Combo Couple Dress - Suitable for All Season and Occasions</h2><ul><li>Product Type: Saree And Panjabi</li><li>Main Material: Dupiyan Silk And Panjabi</li><li>Design: Block Print</li><li>Long- 12 haat</li><li>Work Details: Printed</li><li>Panjabi: Semi Long Regular Fit</li><li>Hand:12hat Saree Without Blouse piece</li><li>Fashionable and Attractive Design</li><li>Color: Same As Picture</li><li>Perfect For: Casual, Party &amp; Festive</li><li>Regular usable product</li><li>Stylish and trendy Perfect and comfortable to use.</li><li>Size: 38,40,42,44,46</li></ul><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/static/bd/p/552ed424e2cd3d4766d4d8dbd70e2d09.jpg_2200x2200q80.jpg_.webp\"></figure><h2>Specifications of Dhupiyan Silk Saree And Panjabi For Combo Couple Dress - Suitable for All Season and Occasions</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>324316796_BD-1552383819</p><ul><li>Main Material</li></ul><p>Silk,Cotton</p><p>What’s in the box</p><p>Premium Dhupian Half Silk Saree with Cotton Panjabi for Couples</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/456405500.webp', 'Dhupiyan Silk Saree And Panjabi For Combo Couple Dress - Suitable for All Season and Occasions', 'Dhupiyan Silk Saree And Panjabi For Combo Couple Dress - Suitable for All Season and Occasions', 1, '2024-08-16 15:27:27', '2024-08-16 15:27:27'),
(38, 10, 12, 2, 2, 'পুরুষদের জন্য psg এওয়ে জার্সি 23/24 football jersey', 'purushder-jnz-psg-ewe-jarsi-2324-football-jersey', 'পুরুষদের জন্য psg এওয়ে জার্সি 23/24 football jersey1', 350, 299, 11, 'পুরুষদের জন্য psg এওয়ে জার্সি 23/24 football jersey', '<h2>Product details of পুরুষদের জন্য psg এওয়ে জার্সি 23/24 football jersey</h2><ul><li>Product Type: T-shirt</li><li>Quantity : 2 pieces</li><li>Print: 100% Quality</li><li>Color: 100% Guarantee</li><li>Product: Same as Design</li><li>Main Material: Poly Cotton Fabric (jersey fabric)</li><li>Gender: Men</li><li>Stylish and Fashionable</li><li>Color: White, Yellow, Orenge, Lemon, Light Blue, Past</li><li>Gsm: 125-130</li><li>Size: M, L, XL</li><li>Size: M-Length 26,Chest 36</li><li>Size: L-Length 27,Chest 38</li><li>Size : XL-Length 28,Chest 40</li></ul><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/static/bd/p/96d8a33883104b3c29fe6ef3a8eb5280.jpg_2200x2200q80.jpg_.webp\"></figure><h2>Specifications of পুরুষদের জন্য psg এওয়ে জার্সি 23/24 football jersey</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>321789293_BD-1498572660</p><p>What’s in the box</p><p>1 x jersey</p>', 0, 0, 0, 'admin/image/product/24289418.webp', 'পুরুষদের জন্য psg এওয়ে জার্সি 23/24 football jersey', 'পুরুষদের জন্য psg এওয়ে জার্সি 23/24 football jersey', 1, '2024-08-16 15:34:22', '2024-08-16 15:34:22'),
(39, 10, 12, 2, 2, 'Portugal Euro 2024 Jersey - Portugal Thai Premium Football Jersey For Men - Portugal Jersey 2024', 'portugal-euro-2024-jersey-portugal-thai-premium-football-jersey-for-men-portugal-jersey-2024', 'Portugal Euro 2024 Jersey', 350, 300, 4, 'Portugal Euro 2024 Jersey - Portugal Thai Premium Football Jersey For Men - Portugal Jersey 2024', '<h2>Product details of Portugal Euro 2024 Jersey - Portugal Thai Premium Football Jersey For Men - Portugal Jersey 2024</h2><ul><li>Jersey for Man</li><li>Club Jersey</li><li>Product Type: Jersey</li><li>Print: 100% Quality</li><li>Sublamination Print &amp; Embroidery Logo</li><li>Color: 100% Guarantee</li><li>Product: Same as Design</li><li>Main Material: Chinigura Fabric</li><li>Gender: Men/Woman</li><li>Stylish and Comfortable</li><li>Size: M, L, XL, XXL</li><li>Size: M-Length 26,Chest 36</li><li>Size: L-Length 27,Chest 38</li><li>Size : XL-Length 28,Chest 40</li><li>Size : XXL-Length 29,Chest 42</li><li>. We provide fashionable trendy and good quality product. We always ensure the best quality product. Our products are very comfortable to use. Please choose a right size while placing an order.</li><li>#jersey</li><li>#jersey football</li><li>#football jersey</li><li>#জার্সি</li></ul><p>আপনার ছবি, নাম এবং নাম্বার দিয়ে টি-শার্ট (Customized) করতে চাইলে আমাদের fb পেজ থেকে নিতে হবে। fb পেজ নাম bdbazar06</p><h2>Specifications of Portugal Euro 2024 Jersey - Portugal Thai Premium Football Jersey For Men - Portugal Jersey 2024</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>366877269_BD-1828830801</p><p>What’s in the box</p><p>জার্মানির ফুটবল জার্সি, থাই প্রিমিয়াম ফুটবল জার্সি</p>', 0, 0, 0, 'admin/image/product/1555211761.webp', 'Portugal Euro 2024 Jersey - Portugal Thai Premium Football Jersey For Men - Portugal Jersey 2024', 'Portugal Euro 2024 Jersey - Portugal Thai Premium Football Jersey For Men - Portugal Jersey 2024', 1, '2024-08-16 15:36:16', '2024-08-16 15:36:16'),
(40, 10, 13, 2, 2, 'New Model Vans Old Skool Classic White Colour Sneakers Vans Shoes - Shoe For Boys - Insoles For Shoes - Shose For Men - Sneakers - Shoe For Boys', 'new-model-vans-old-skool-classic-white-colour-sneakers-vans-shoes-shoe-for-boys-insoles-for-shoes-shose-for-men-sneakers-shoe-for-boys', 'Shose For Men - Sneakers', 780, 450, 5, 'New Model Vans Old Skool Classic White Colour Sneakers Vans Shoes - Shoe For Boys - Insoles For Shoes - Shose For Men - Sneakers - Shoe For Boys', '<h2>Product details of New Model Vans Old Skool Classic White Colour Sneakers Vans Shoes - Shoe For Boys - Insoles For Shoes - Shose For Men - Sneakers - Shoe For Boys</h2><ul><li>Product Type: Sneakers Converse</li><li>Color: Black and White</li><li>Material: Soft Fabric with Rubber Sole</li><li>Gender: Men</li><li>Weight: Very Light and Durable</li><li>Country of Origin:China</li><li>Men footwear is intended to protect and comfort the human foot while the wearer is doing various activities. Footwear is also used as an item of decoration and fashion. The design of footwear has varied enormously through time and from culture to culture, with appearance originally being tied to function. Additionally, fashion has often dictated many design elements, such as whether shoes have very high heels or flat ones.</li></ul><h2><strong>Product details of Hot Collection Stylish and Fashionable Winter and Summer Exclusive Sneakers Converse Shoes for Men</strong></h2><ul><li>Product Type: Sneakers Converse</li><li>Color: Black and White</li><li>Material: Soft Fabric with Rubber Sole</li><li>Gender: Men</li><li>Weight: Very Light and Durable</li><li>Country of Origin:China</li><li>Men footwear is intended to protect and comfort the human foot while the wearer is doing various activities. Footwear is also used as an item of decoration and fashion. The design of footwear has varied enormously through time and from culture to culture, with appearance originally being tied to function. Additionally, fashion has often dictated many design elements, such as whether shoes have very high heels or flat ones.</li><li>Men footwear is intended to protect and comfort the human foot while the wearer is doing various activities. Footwear is also used as an item of decoration and fashion. The design of footwear has varied enormously through time and from culture to culture, with appearance originally being tied to function. Additionally, fashion has often dictated many design elements, such as whether shoes have very high heels or flat ones.</li><li>Product Type: Sneakers Converse</li><li>Color: Black and White</li><li>Material: Soft Fabric with Rubber Sole</li><li>Gender: Men</li><li>Weight: Very Light and Durable</li><li>Country of Origin:China</li></ul><h2><strong>Specifications of Hot Collection Stylish and Fashionable Winter and Summer Exclusive Sneakers Converse Shoes for Men</strong></h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>324684634_BD-1554660538</p><ul><li>Main Material</li></ul><p>Velvet</p><ul><li>Men Shoes Closure</li></ul><p>Lace-up</p><p>What’s in the box</p><p>shoes</p><h2>Specifications of New Model Vans Old Skool Classic White Colour Sneakers Vans Shoes - Shoe For Boys - Insoles For Shoes - Shose For Men - Sneakers - Shoe For Boys</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>364325026_BD-1806425913</p><p>What’s in the box</p><p>New Model Vans Old Skool Classic White Colour Sneakers Vans Shoes - Shoe For Boys - Insoles For Shoes - Shose For Men - Sneakers - Shoe For Boys</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/465633613.webp', 'New Model Vans Old Skool Classic White Colour Sneakers Vans Shoes - Shoe For Boys - Insoles For Shoes - Shose For Men - Sneakers - Shoe For Boys', 'New Model Vans Old Skool Classic White Colour Sneakers Vans Shoes - Shoe For Boys - Insoles For Shoes - Shose For Men - Sneakers - Shoe For Boys', 1, '2024-08-16 15:41:04', '2024-08-16 15:41:04'),
(41, 10, 13, 3, 2, 'Stylish and Fashionable Winter and Summer Exclusive Sneakers Converse Shoes for Men - Shoe For Boys', 'stylish-and-fashionable-winter-and-summer-exclusive-sneakers-converse-shoes-for-men-shoe-for-boys', 'Stylish', 800, 500, 4, 'Stylish and Fashionable Winter and Summer Exclusive Sneakers Converse Shoes for Men - Shoe For Boys', '<h2>Product details of Stylish and Fashionable Winter and Summer Exclusive Sneakers Converse Shoes for Men - Shoe For Boys</h2><ul><li>Product Type: Sneakers Converse</li><li>Color: Black and White</li><li>Material: Soft Fabric with Rubber Sole</li><li>Gender: Men</li><li>Weight: Very Light and Durable</li><li>Season: All Season</li><li>Size : 40,41,42,43</li><li>Outsole Material: Rubber</li><li>Upper Material: SyntheticFeature: Hard-Wearing, Massage, Breathable, Anti-Odor, Sweat-Absorbant</li></ul><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>We have thousands of products depending on the quality price, we cannot guarantee that the quality of all products is the same. We have to meet the needs of different Some products need high quality and some need low prices.</strong></p><p><strong>So we have different quality products considering all the customers. The quality of our products is much better according to the price</strong></p><figure class=\"image\"><img src=\"https://img.drz.lazcdn.com/static/bd/p/eb04f1757f96fca86e1ad0c555e1f803.jpg_2200x2200q80.jpg_.webp\"></figure><h2>Specifications of Stylish and Fashionable Winter and Summer Exclusive Sneakers Converse Shoes for Men - Shoe For Boys</h2><ul><li>Brand</li></ul><p>No Brand</p><ul><li>SKU</li></ul><p>391064038_BD-1952535769</p><ul><li>Main Material</li></ul><p>Rubber</p><p>What’s in the box</p><p>1 pair per box</p><p><br>&nbsp;</p>', 0, 0, 0, 'admin/image/product/1921499666.webp', 'Stylish and Fashionable Winter and Summer Exclusive Sneakers Converse Shoes for Men - Shoe For Boys', 'Stylish and Fashionable Winter and Summer Exclusive Sneakers Converse Shoes for Men - Shoe For Boys', 1, '2024-08-16 15:42:58', '2024-08-16 15:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(69, 22, 4, '2024-07-14 06:41:14', '2024-07-14 06:41:14'),
(70, 22, 5, '2024-07-14 06:41:14', '2024-07-14 06:41:14'),
(71, 23, 4, '2024-07-14 06:43:28', '2024-07-14 06:43:28'),
(72, 23, 5, '2024-07-14 06:43:28', '2024-07-14 06:43:28'),
(73, 24, 4, '2024-07-14 06:44:48', '2024-07-14 06:44:48'),
(74, 24, 5, '2024-07-14 06:44:48', '2024-07-14 06:44:48'),
(75, 25, 1, '2024-07-14 06:48:19', '2024-07-14 06:48:19'),
(76, 25, 4, '2024-07-14 06:48:19', '2024-07-14 06:48:19'),
(77, 25, 6, '2024-07-14 06:48:19', '2024-07-14 06:48:19'),
(78, 26, 4, '2024-07-14 06:49:41', '2024-07-14 06:49:41'),
(79, 26, 5, '2024-07-14 06:49:41', '2024-07-14 06:49:41'),
(84, 27, 1, '2024-07-14 10:10:02', '2024-07-14 10:10:02'),
(85, 27, 3, '2024-07-14 10:10:02', '2024-07-14 10:10:02'),
(86, 27, 4, '2024-07-14 10:10:02', '2024-07-14 10:10:02'),
(87, 27, 5, '2024-07-14 10:10:02', '2024-07-14 10:10:02'),
(88, 27, 6, '2024-07-14 10:10:02', '2024-07-14 10:10:02'),
(89, 28, 5, '2024-08-16 14:57:19', '2024-08-16 14:57:19'),
(90, 28, 6, '2024-08-16 14:57:19', '2024-08-16 14:57:19'),
(91, 29, 4, '2024-08-16 15:01:14', '2024-08-16 15:01:14'),
(92, 29, 5, '2024-08-16 15:01:14', '2024-08-16 15:01:14'),
(93, 29, 6, '2024-08-16 15:01:14', '2024-08-16 15:01:14'),
(94, 30, 4, '2024-08-16 15:04:55', '2024-08-16 15:04:55'),
(95, 30, 5, '2024-08-16 15:04:55', '2024-08-16 15:04:55'),
(96, 30, 8, '2024-08-16 15:04:55', '2024-08-16 15:04:55'),
(97, 31, 4, '2024-08-16 15:07:45', '2024-08-16 15:07:45'),
(98, 31, 5, '2024-08-16 15:07:45', '2024-08-16 15:07:45'),
(99, 32, 4, '2024-08-16 15:14:05', '2024-08-16 15:14:05'),
(100, 32, 5, '2024-08-16 15:14:05', '2024-08-16 15:14:05'),
(101, 32, 6, '2024-08-16 15:14:05', '2024-08-16 15:14:05'),
(102, 33, 1, '2024-08-16 15:16:31', '2024-08-16 15:16:31'),
(103, 33, 6, '2024-08-16 15:16:31', '2024-08-16 15:16:31'),
(104, 34, 1, '2024-08-16 15:19:53', '2024-08-16 15:19:53'),
(105, 34, 3, '2024-08-16 15:19:53', '2024-08-16 15:19:53'),
(106, 34, 5, '2024-08-16 15:19:53', '2024-08-16 15:19:53'),
(107, 35, 1, '2024-08-16 15:21:54', '2024-08-16 15:21:54'),
(108, 35, 5, '2024-08-16 15:21:54', '2024-08-16 15:21:54'),
(109, 35, 6, '2024-08-16 15:21:54', '2024-08-16 15:21:54'),
(110, 36, 3, '2024-08-16 15:24:35', '2024-08-16 15:24:35'),
(111, 36, 4, '2024-08-16 15:24:35', '2024-08-16 15:24:35'),
(112, 36, 5, '2024-08-16 15:24:35', '2024-08-16 15:24:35'),
(113, 37, 1, '2024-08-16 15:27:27', '2024-08-16 15:27:27'),
(114, 37, 6, '2024-08-16 15:27:27', '2024-08-16 15:27:27'),
(115, 38, 5, '2024-08-16 15:34:22', '2024-08-16 15:34:22'),
(116, 39, 1, '2024-08-16 15:36:16', '2024-08-16 15:36:16'),
(117, 40, 5, '2024-08-16 15:41:04', '2024-08-16 15:41:04'),
(118, 41, 6, '2024-08-16 15:42:58', '2024-08-16 15:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(60, 22, 'admin/image/other-images/736.jpg', '2024-07-14 06:41:00', '2024-07-14 06:41:00'),
(61, 22, 'admin/image/other-images/4470.jpg', '2024-07-14 06:41:00', '2024-07-14 06:41:00'),
(62, 23, 'admin/image/other-images/2526.jpg', '2024-07-14 06:43:28', '2024-07-14 06:43:28'),
(63, 23, 'admin/image/other-images/1419.jpg', '2024-07-14 06:43:28', '2024-07-14 06:43:28'),
(64, 24, 'admin/image/other-images/2734.jpg', '2024-07-14 06:44:48', '2024-07-14 06:44:48'),
(65, 24, 'admin/image/other-images/1917.jpg', '2024-07-14 06:44:48', '2024-07-14 06:44:48'),
(66, 25, 'admin/image/other-images/3136.jpg', '2024-07-14 06:48:19', '2024-07-14 06:48:19'),
(67, 26, 'admin/image/other-images/3623.jpg', '2024-07-14 06:49:41', '2024-07-14 06:49:41'),
(68, 27, 'admin/image/other-images/3223.jpg', '2024-07-14 06:50:59', '2024-07-14 06:50:59'),
(69, 28, 'admin/image/other-images/3170.jpg', '2024-08-16 14:57:19', '2024-08-16 14:57:19'),
(70, 29, 'admin/image/other-images/4688.jpg', '2024-08-16 15:01:14', '2024-08-16 15:01:14'),
(71, 30, 'admin/image/other-images/2106.png', '2024-08-16 15:04:55', '2024-08-16 15:04:55'),
(72, 31, 'admin/image/other-images/4823.jpg', '2024-08-16 15:07:45', '2024-08-16 15:07:45'),
(73, 32, 'admin/image/other-images/1087.jpg', '2024-08-16 15:14:05', '2024-08-16 15:14:05'),
(74, 33, 'admin/image/other-images/776.jpg', '2024-08-16 15:16:31', '2024-08-16 15:16:31'),
(75, 33, 'admin/image/other-images/1797.jpg', '2024-08-16 15:16:31', '2024-08-16 15:16:31'),
(76, 34, 'admin/image/other-images/790.jpg', '2024-08-16 15:19:53', '2024-08-16 15:19:53'),
(77, 35, 'admin/image/other-images/2438.jpg', '2024-08-16 15:21:54', '2024-08-16 15:21:54'),
(78, 36, 'admin/image/other-images/4171.jpg', '2024-08-16 15:24:35', '2024-08-16 15:24:35'),
(79, 37, 'admin/image/other-images/3284.jpg', '2024-08-16 15:27:27', '2024-08-16 15:27:27'),
(80, 38, 'admin/image/other-images/3466.jpg', '2024-08-16 15:34:22', '2024-08-16 15:34:22'),
(81, 39, 'admin/image/other-images/3432.jpg', '2024-08-16 15:36:16', '2024-08-16 15:36:16'),
(82, 39, 'admin/image/other-images/2966.jpg', '2024-08-16 15:36:16', '2024-08-16 15:36:16'),
(83, 40, 'admin/image/other-images/4999.jpg', '2024-08-16 15:41:04', '2024-08-16 15:41:04'),
(84, 41, 'admin/image/other-images/1193.jpg', '2024-08-16 15:42:58', '2024-08-16 15:42:58'),
(85, 41, 'admin/image/other-images/4695.jpg', '2024-08-16 15:42:58', '2024-08-16 15:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(8, 22, 3, '2024-07-14 06:41:14', '2024-07-14 06:41:14'),
(9, 23, 3, '2024-07-14 06:43:28', '2024-07-14 06:43:28'),
(10, 24, 3, '2024-07-14 06:44:48', '2024-07-14 06:44:48'),
(11, 25, 3, '2024-07-14 06:48:19', '2024-07-14 06:48:19'),
(12, 26, 3, '2024-07-14 06:49:41', '2024-07-14 06:49:41'),
(17, 27, 2, '2024-07-14 10:10:02', '2024-07-14 10:10:02'),
(18, 27, 3, '2024-07-14 10:10:02', '2024-07-14 10:10:02'),
(19, 27, 4, '2024-07-14 10:10:02', '2024-07-14 10:10:02'),
(20, 28, 3, '2024-08-16 14:57:19', '2024-08-16 14:57:19'),
(21, 29, 3, '2024-08-16 15:01:14', '2024-08-16 15:01:14'),
(22, 30, 3, '2024-08-16 15:04:56', '2024-08-16 15:04:56'),
(23, 31, 3, '2024-08-16 15:07:45', '2024-08-16 15:07:45'),
(24, 32, 3, '2024-08-16 15:14:05', '2024-08-16 15:14:05'),
(25, 33, 3, '2024-08-16 15:16:31', '2024-08-16 15:16:31'),
(26, 34, 3, '2024-08-16 15:19:53', '2024-08-16 15:19:53'),
(27, 35, 3, '2024-08-16 15:21:54', '2024-08-16 15:21:54'),
(28, 36, 3, '2024-08-16 15:24:35', '2024-08-16 15:24:35'),
(29, 37, 3, '2024-08-16 15:27:27', '2024-08-16 15:27:27'),
(30, 38, 3, '2024-08-16 15:34:22', '2024-08-16 15:34:22'),
(31, 38, 4, '2024-08-16 15:34:22', '2024-08-16 15:34:22'),
(32, 39, 3, '2024-08-16 15:36:16', '2024-08-16 15:36:16'),
(33, 39, 4, '2024-08-16 15:36:16', '2024-08-16 15:36:16'),
(34, 40, 3, '2024-08-16 15:41:04', '2024-08-16 15:41:04'),
(35, 41, 3, '2024-08-16 15:42:58', '2024-08-16 15:42:58');

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
('9CzhYbITEILkzzoPpGxtdMCW6RLzuOT6eSiIoZfc', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRG9mUnFQZjkxNFpYMlNQNTRheDVZc2hxRWJPZmJXMDdLQ29xQ0tmMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1maW5hbC0xMS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRJQTEuOEFPR21sZTEuelBNcEpzVS8uMG55dzQ1aTg5Rk4yWkkyd1BIUXh3ek9HR1RqS0YxUyI7fQ==', 1723844703),
('PNUizcSTCWK324CX3Xi1F8TWkWkUtBKLtT8mvPQ3', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiUTVuemdaS0tGYmtmSEJDUzBLQlZkdDhQblRTWVpFMkdvZDlkTUNEdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1maW5hbC0xMS9wdWJsaWMvY3VzdG9tZXIvb3JkZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjEwOiJjdXN0b21lcklkIjtpOjg7czoxMjoiY3VzdG9tZXJOYW1lIjtzOjU6IkZhcmlhIjtzOjQ6ImNhcnQiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czoxMToib3JkZXJfdG90YWwiO2Q6NTc2MDA7czo5OiJ0YXhfdG90YWwiO2Q6NzUwMDtzOjE0OiJzaGlwcGluZ190b3RhbCI7aToxMDA7fQ==', 1723840781);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Extra Large', 'XL', 'Extra Large', '2024-07-07 15:28:34', '2024-07-07 15:28:34'),
(3, 'Standard', 'S', 'Standard', '2024-07-14 05:36:35', '2024-07-14 05:36:35'),
(4, 'Large', 'L', 'Large', '2024-07-14 05:38:41', '2024-07-14 05:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Active and 0 = In active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Laptop', 'Laptop', 'admin/image/sub-category/1307132412.jpg', 1, '2024-07-07 12:51:08', '2024-07-07 13:18:04'),
(3, 2, 'Computer', 'Computer', 'admin/image/sub-category/233097433.jpg', 1, '2024-07-07 13:18:22', '2024-07-07 13:18:22'),
(4, 2, 'Mobile', 'Mobile', 'admin/image/sub-category/1169798158.jpg', 1, '2024-07-12 14:12:02', '2024-07-12 14:12:02'),
(5, 7, 'Watch', 'Watch for Men', 'admin/image/sub-category/1512344678.jpg', 1, '2024-08-16 14:49:01', '2024-08-16 14:49:01'),
(8, 8, 'Watch for Women', 'Watch for Women', 'admin/image/sub-category/1841368762.jpg', 1, '2024-08-16 14:50:03', '2024-08-16 14:50:03'),
(9, 3, 'Kids Dress', 'Kids Dress', 'admin/image/sub-category/761574828.jpg', 1, '2024-08-16 15:09:16', '2024-08-16 15:09:16'),
(10, 7, 'Man Dress', 'Man Dress', 'admin/image/sub-category/144728958.jpg', 1, '2024-08-16 15:09:50', '2024-08-16 15:09:50'),
(11, 8, 'Women Dress', 'Women Dress', 'admin/image/sub-category/1051982192.jpg', 1, '2024-08-16 15:10:16', '2024-08-16 15:10:16'),
(12, 10, 'Jerseys', 'Jerseys', 'admin/image/sub-category/1049585552.webp', 1, '2024-08-16 15:32:05', '2024-08-16 15:32:05'),
(13, 10, 'Sports Sneakers', 'Sports Sneakers', 'admin/image/sub-category/796866829.jpg', 1, '2024-08-16 15:39:09', '2024-08-16 15:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Pice', 'Pice', 'Pice', 1, '2024-07-07 14:46:59', '2024-07-07 14:46:59');

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$IA1.8AOGmle1.zPMpJsU/.0nyw45i89FN2ZI2wPHQxwzOGGTjKF1S', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-14 08:56:27', '2024-06-14 08:56:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`),
  ADD UNIQUE KEY `colors_code_unique` (`code`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `couriers_name_unique` (`name`),
  ADD UNIQUE KEY `couriers_code_unique` (`code`),
  ADD UNIQUE KEY `couriers_mobile_unique` (`mobile`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_name_unique` (`name`),
  ADD UNIQUE KEY `sizes_code_unique` (`code`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
