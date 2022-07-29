-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2022 at 02:26 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'Acer', '2022-01-22 01:57:05', '2022-01-22 01:57:05'),
(2, 'Canon', '2022-01-22 01:57:29', '2022-01-22 01:57:29'),
(3, 'Dell', '2022-01-22 01:57:45', '2022-01-22 01:57:45'),
(4, 'Apple', '2022-01-22 01:57:51', '2022-01-22 01:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `cart_product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_product_qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_product_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', '1', NULL, NULL),
(2, 'Mobile', '4', NULL, '2022-01-22 07:27:48'),
(3, 'Kitchan', '2', NULL, NULL),
(4, 'Headphone', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` bigint(20) UNSIGNED NOT NULL,
  `customers_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_address_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_address_line_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_name`, `customers_username`, `customers_email`, `customers_phone`, `customers_password`, `customers_zipcode`, `customers_address_line`, `customers_address_line_two`, `customers_district`, `customers_country`, `created_at`, `updated_at`) VALUES
(1, 'Md. Jiyaur Rahman', 'jiya', 'jiya@gmail.com', '01798659666', '123456', '1810', 'Manikganj/Dhaka/Bangladesh', 'Manikganj/Dhaka/Bangladesh', 'Manikganj', 'Bangladesh', '2022-01-22 02:09:33', '2022-01-22 02:09:33'),
(2, 'Md. Rakib Hossain', 'Rakib', 'rakib@gmail.com', '01834303493', '123456', '1819', 'Dhaka 1200', 'Dhaka 1200', 'Dhaka', 'Bangladesh', '2022-01-22 02:10:47', '2022-01-22 02:10:47'),
(3, 'Md. Robiul Hossain', 'Robiul', 'robiul@gmail.com', '01791821212', '123456', '1810', 'Manikganj/Dhaka/Bangladesh', 'Manikganj/Dhaka/Bangladesh', 'Manikganj', 'Bangladesh', '2022-01-22 02:11:54', '2022-01-22 02:11:54'),
(4, 'Md. Jony Mia', 'Jony', 'jony@gmail.com', '01712312312', '123456', '1810', 'Tangail, Dhaka, Bangladesh', 'Tangail, Dhaka, Bangladesh', 'Tangail', 'Bangladesh', '2022-01-22 02:13:09', '2022-01-22 02:13:09'),
(5, 'Md. Sadekur Rahman', 'sadekur', 'sadekur@gmail.com', '01623232323', '123456', '1921', 'Fani/Bangladesh', 'Fani/Bangladesh', 'Fani', 'Bangladesh', '2022-01-22 02:14:30', '2022-01-22 02:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_customers`
--

CREATE TABLE `feedback_customers` (
  `feedback_id` bigint(20) UNSIGNED NOT NULL,
  `feedback_first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback_customers`
--

INSERT INTO `feedback_customers` (`feedback_id`, `feedback_first_name`, `feedback_last_name`, `feedback_email`, `feedback_phone`, `feedback_message`, `feedback_date`, `created_at`, `updated_at`) VALUES
(1, 'Md. Ziaur', 'Rahman', 'jiya@gmail.com', '01722222223', 'enim ad minim veniam Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '2022-01-22 14:15:54', '2022-01-22 02:15:54', '2022-01-22 02:15:54'),
(2, 'Md. Rafi', 'Mia', 'rafiamia@gmail.com', '01423232123', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '2022-01-22 14:16:33', '2022-01-22 02:16:33', '2022-01-22 02:16:33'),
(3, 'Md. Rakib', 'Mia', 'rakib@gmail.com', '01322344958', 'Hi enim ad minim veniam Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '2022-01-22 14:19:15', '2022-01-22 02:19:15', '2022-01-22 02:19:15');

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
(6, '2014_10_12_000000_create_users_table', 1),
(29, '2022_01_10_043953_create_users_table', 2),
(158, '2014_10_12_100000_create_password_resets_table', 3),
(159, '2019_08_19_000000_create_failed_jobs_table', 3),
(160, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(161, '2022_01_09_093515_create_brands_table', 3),
(162, '2022_01_10_044436_create_users_table', 3),
(163, '2022_01_12_024118_create_categories_table', 3),
(164, '2022_01_12_043907_create_products_table', 3),
(165, '2022_01_15_085753_create_carts_table', 3),
(166, '2022_01_16_024903_create_customers_table', 3),
(167, '2022_01_16_123308_create_feedback_customers_table', 3),
(168, '2022_01_17_023516_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` bigint(20) UNSIGNED NOT NULL,
  `orders_customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders_product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders_product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders_product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders_product_qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders_product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders_date` datetime NOT NULL DEFAULT current_timestamp(),
  `orders_date_only` date NOT NULL DEFAULT current_timestamp(),
  `order_work_status` int(11) NOT NULL DEFAULT 1,
  `orders_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `orders_customer_id`, `orders_product_id`, `orders_product_name`, `orders_product_image`, `orders_product_qty`, `orders_product_price`, `orders_date`, `orders_date_only`, `order_work_status`, `orders_status`, `created_at`, `updated_at`) VALUES
(1, '5', '2', 'Apple Phone 400', 'uploads/1642838752.jpg', '5', '67732.5', '2022-01-22 14:21:03', '2022-01-22', 2, 2, NULL, '2022-01-22 02:27:08'),
(2, '5', '3', 'Best of headphone', 'uploads/1642838827.jpg', '3', '379.5', '2022-01-22 14:21:03', '2022-01-22', 2, 2, NULL, '2022-01-22 02:27:10'),
(3, '4', '2', 'Apple Phone 400', 'uploads/1642838752.jpg', '1', '13546.5', '2022-01-22 14:23:06', '2022-01-22', 3, 2, NULL, '2022-01-22 02:27:46'),
(4, '4', '3', 'Best of headphone', 'uploads/1642838827.jpg', '1', '126.5', '2022-01-22 14:23:06', '2022-01-22', 3, 2, NULL, '2022-01-22 02:27:46'),
(5, '3', '1', 'Acer G5 840', 'uploads/1642838625.jpg', '1', '2420', '2022-01-22 14:24:03', '2022-01-22', 1, 1, NULL, NULL),
(6, '3', '2', 'Apple Phone 400', 'uploads/1642838752.jpg', '1', '13546.5', '2022-01-22 14:24:03', '2022-01-22', 3, 2, NULL, '2022-01-22 02:27:53'),
(7, '3', '3', 'Best of headphone', 'uploads/1642838827.jpg', '1', '126.5', '2022-01-22 14:24:03', '2022-01-22', 3, 2, NULL, '2022-01-22 02:27:53'),
(8, '2', '1', 'Acer G5 840', 'uploads/1642838625.jpg', '3', '7260', '2022-01-22 14:24:43', '2022-01-22', 1, 1, NULL, NULL),
(9, '2', '2', 'Apple Phone 400', 'uploads/1642838752.jpg', '1', '13546.5', '2022-01-22 14:24:43', '2022-01-22', 3, 2, NULL, '2022-01-22 02:27:37'),
(10, '2', '3', 'Best of headphone', 'uploads/1642838827.jpg', '3', '379.5', '2022-01-22 14:24:43', '2022-01-22', 3, 2, NULL, '2022-01-22 02:27:37'),
(11, '1', '1', 'Acer G5 840', 'uploads/1642838625.jpg', '1', '2420', '2022-01-22 14:25:25', '2022-01-22', 3, 2, NULL, '2022-01-22 02:26:39'),
(12, '1', '2', 'Apple Phone 400', 'uploads/1642838752.jpg', '1', '13546.5', '2022-01-22 14:25:25', '2022-01-22', 3, 2, NULL, '2022-01-26 02:20:00'),
(13, '1', '3', 'Best of headphone', 'uploads/1642838827.jpg', '1', '126.5', '2022-01-22 14:25:25', '2022-01-22', 3, 2, NULL, '2022-01-22 02:26:39'),
(14, '1', '17', 'Cannon L10', 'uploads/1642858741.jpg', '1', '3080', '2022-01-26 14:20:49', '2022-01-26', 3, 2, NULL, '2022-01-26 02:21:12'),
(15, '1', '20', 'Cannon LMP22', 'uploads/1642858855.jpg', '1', '352', '2022-01-26 14:20:49', '2022-01-26', 3, 2, NULL, '2022-01-26 02:21:12'),
(16, '1', '7', 'Samsung G5 840', 'uploads/1642857524.jpg', '1', '2475', '2022-01-26 14:20:49', '2022-01-26', 3, 2, NULL, '2022-01-26 02:21:12'),
(17, '1', '18', 'Cannon L220', 'uploads/1642858787.jpg', '1', '242', '2022-01-26 14:58:22', '2022-01-26', 3, 2, NULL, '2022-01-26 02:59:43'),
(18, '1', '20', 'Cannon LMP22', 'uploads/1642858855.jpg', '1', '352', '2022-01-26 14:58:22', '2022-01-26', 3, 2, NULL, '2022-01-26 02:59:43'),
(19, '1', '16', 'Cannon R320', 'uploads/1642858593.jpg', '1', '1210', '2022-01-28 12:29:46', '2022-01-28', 3, 2, NULL, '2022-01-28 00:34:27'),
(20, '1', '19', 'Desk', 'uploads/1642858813.jpg', '1', '220', '2022-01-28 12:29:46', '2022-01-28', 3, 2, NULL, '2022-01-28 00:34:27');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sort_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_regular_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_sort_des`, `product_regular_price`, `product_price`, `product_brand_id`, `product_category_id`, `product_image`, `product_description`, `created_at`, `updated_at`) VALUES
(1, 'Acer G5 840', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '2300', '2200', '1', '1', 'uploads/1642838625.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(2, 'Apple Phone 400', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '12321', '12315', '4', '2', 'uploads/1642838752.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(3, 'Best of headphone', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '120', '115', '3', '4', 'uploads/1642838827.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(4, 'Acer G5 800', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '3400', '3300', '1', '1', 'uploads/1642857319.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(5, 'Laptop g5 820', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '1230', '1200', '1', '1', 'uploads/1642857399.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(6, 'HP G5 840', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '4500', '4400', '1', '1', 'uploads/1642857479.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(7, 'Samsung G5 840', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '2300', '2250', '1', '1', 'uploads/1642857524.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(8, 'Headphone H223', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '120', '115', '3', '4', 'uploads/1642857697.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(9, 'Headphone T23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '220', '200', '3', '4', 'uploads/1642857772.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(10, 'Apple Headphone', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '340', '320', '3', '4', 'uploads/1642857967.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, '2022-01-22 07:26:07'),
(11, 'Headphone L223', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '220', '210', '3', '4', 'uploads/1642857899.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(12, 'Apple Phone', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '1200', '1500', '4', '2', 'uploads/1642858235.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(13, 'Apple Phone G40', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '399', '390', '4', '2', 'uploads/1642858266.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(14, 'Apple G400', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '230', '220', '4', '1', 'uploads/1642858324.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(15, 'Apple L220', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '220', '200', '4', '2', 'uploads/1642858361.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(16, 'Cannon R320', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '1200', '1100', '2', '3', 'uploads/1642858593.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(17, 'Cannon L10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '3000', '2800', '2', '3', 'uploads/1642858741.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(18, 'Cannon L220', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '230', '220', '2', '3', 'uploads/1642858787.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(19, 'Desk', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '220', '200', '2', '3', 'uploads/1642858813.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(20, 'Cannon LMP22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '330', '320', '2', '3', 'uploads/1642858855.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL),
(21, 'HP G5 840', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '129', '130', '1', '4', 'uploads/1643187670.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_full_name`, `user_email`, `user_phone`, `user_password`, `user_image`, `user_role_id`, `user_creation_date`, `user_status`, `created_at`, `updated_at`) VALUES
(1, 'Jiyaur', 'Md. Jiyaur Rahman', 'jiya@gmail.com', '01798659666', '123456', 'uploads/1642838065.jpg', '1', '2022-01-22 13:49:30', 1, NULL, '2022-01-26 03:53:45'),
(2, 'Mostak', 'Md. Mostak Hossain', 'mostak@gmail.com', '01732323453', '123456', NULL, '2', '2022-01-22 13:55:50', 1, '2022-01-22 01:55:50', '2022-01-22 01:55:50'),
(3, 'Samad', 'Md. Samad Hossain', 'samad@gmail.com', '01733227222', '123456', NULL, '3', '2022-01-22 13:56:29', 1, '2022-01-22 01:56:29', '2022-01-22 01:56:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback_customers`
--
ALTER TABLE `feedback_customers`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_customers`
--
ALTER TABLE `feedback_customers`
  MODIFY `feedback_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
