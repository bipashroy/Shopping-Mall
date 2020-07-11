-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 04:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, NULL, 1, 'men', 'men', '2020-07-07 12:17:43', '2020-07-07 12:17:43'),
(4, NULL, 2, 'Women', 'women', '2020-07-07 12:18:06', '2020-07-07 12:18:06'),
(5, 3, 1, 'watch', 'watch', '2020-07-07 12:23:31', '2020-07-07 12:23:31'),
(6, 4, 1, 'cosmetics', 'cosmetics', '2020-07-07 12:24:01', '2020-07-07 12:24:01'),
(7, 6, 1, 'lipstic', 'lipstic', '2020-07-07 12:24:26', '2020-07-07 12:24:26'),
(8, 3, 1, 'pant', 'pant', '2020-07-07 15:26:17', '2020-07-07 15:26:17'),
(9, NULL, 1, 'child', 'child', '2020-07-08 16:07:32', '2020-07-08 16:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `description`, `created_at`, `updated_at`) VALUES
(0, 'dis', '123', 'summer', '-50%', 'njnjnjnjn', '2020-07-10 00:27:28', '2020-07-10 00:27:28'),
(2, 'fridayoff', 'fridayoff', 'occational', '-10%', 'for friday sale', '2020-07-10 08:52:39', '2020-07-10 08:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'order_number', 'text', 'Order Number', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 7, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 7, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"pending\":\"pending\",\"processing\":\"processing\",\"completed\":\"completed\",\"decline\":\"decline\"}}', 4),
(60, 7, 'grand_total', 'text', 'Grand Total', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'item_count', 'text', 'Item Count', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'is_paid', 'checkbox', 'Is Paid', 1, 1, 1, 1, 1, 1, '{\"on\":\"Paid\",\"off\":\"Not paid\",\"checked\":true}', 7),
(63, 7, 'payment_method', 'select_dropdown', 'Payment Method', 1, 1, 1, 1, 1, 1, '{\"options\":{\"Cash on Delivery\":\"Cash on Delivery\",\"paypal\":\"paypal\",\"Stripe\":\"Stripe\",\"Card\":\"card\"}}', 8),
(64, 7, 'shipping_fullname', 'text', 'Shipping Fullname', 0, 1, 1, 1, 1, 1, '{}', 9),
(65, 7, 'shipping_address', 'text', 'Shipping Address', 1, 0, 1, 1, 1, 1, '{}', 10),
(66, 7, 'shipping_city', 'text', 'Shipping City', 1, 0, 1, 1, 1, 1, '{}', 11),
(67, 7, 'shipping_state', 'text', 'Shipping State', 1, 0, 1, 1, 1, 1, '{}', 12),
(68, 7, 'shipping_zipcode', 'text', 'Shipping Zipcode', 1, 0, 1, 1, 1, 1, '{}', 13),
(69, 7, 'shipping_phone', 'text', 'Shipping Phone', 1, 0, 1, 1, 1, 1, '{}', 14),
(70, 7, 'notes', 'text', 'Notes', 0, 0, 1, 1, 1, 1, '{}', 15),
(71, 7, 'billing_fullname', 'text', 'Billing Fullname', 0, 1, 1, 1, 1, 1, '{}', 16),
(72, 7, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 1, '{}', 17),
(73, 7, 'billing_city', 'text', 'Billing City', 1, 0, 1, 1, 1, 1, '{}', 18),
(74, 7, 'billing_state', 'text', 'Billing State', 1, 0, 1, 1, 1, 1, '{}', 19),
(75, 7, 'billing_zipcode', 'text', 'Billing Zipcode', 1, 0, 1, 1, 1, 1, '{}', 20),
(76, 7, 'billing_phone', 'text', 'Billing Phone', 1, 0, 1, 1, 1, 1, '{}', 21),
(77, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 22),
(78, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 23),
(79, 7, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 24),
(80, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(82, 8, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(83, 8, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"on\":\"Active\",\"off\":\"Inctive\",\"checked\":true}', 4),
(84, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(85, 8, 'rating', 'text', 'Rating', 0, 1, 1, 1, 1, 1, '{}', 6),
(86, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(87, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(88, 8, 'shop_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(89, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(91, 9, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(92, 9, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(93, 9, 'cover_img', 'image', 'Cover Img', 0, 1, 1, 1, 1, 1, '{}', 5),
(94, 9, 'shop_id', 'text', 'Shop Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(95, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(96, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(97, 9, 'product_belongsto_shop_relationship', 'relationship', 'shops', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Shop\",\"table\":\"shops\",\"type\":\"belongsTo\",\"column\":\"shop_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(105, 9, 'product_belongstomany_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_categories\",\"pivot\":\"1\",\"taggable\":\"on\"}', 10),
(106, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(108, 12, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(109, 12, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 4),
(110, 12, 'value', 'text', 'Value', 1, 1, 1, 1, 1, 1, '{}', 5),
(111, 12, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(112, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(113, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-07-03 12:14:27', '2020-07-03 12:14:27'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-07-03 12:14:27', '2020-07-03 12:14:27'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-07-03 12:14:27', '2020-07-03 12:14:27'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-07-03 12:14:34', '2020-07-03 12:14:34'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-07-03 12:14:36', '2020-07-03 12:14:36'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(7, 'orders', 'orders', 'Order', 'Orders', 'voyager-folder', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-03 14:22:48', '2020-07-03 14:39:28'),
(8, 'shops', 'shops', 'Shop', 'Shops', 'voyager-folder', 'App\\Shop', 'App\\Policies\\ShopPolicy', 'App\\Http\\Controllers\\Admin\\ShopController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-06 07:11:34', '2020-07-06 07:21:56'),
(9, 'products', 'products', 'Product', 'Products', 'voyager-folder', 'App\\Product', 'App\\Policies\\ProductPolicy', 'App\\Http\\Controllers\\Admin\\ProductController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-06 08:49:04', '2020-07-07 15:20:27'),
(12, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-bag', 'App\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-07-10 08:47:11', '2020-07-10 08:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-07-03 12:14:29', '2020-07-03 12:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-07-03 12:14:29', '2020-07-03 12:14:29', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-07-03 12:14:29', '2020-07-03 12:14:29', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-07-03 12:14:35', '2020-07-03 12:14:35', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-07-03 12:14:37', '2020-07-03 12:14:37', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-07-03 12:14:39', '2020-07-03 12:14:39', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-07-03 12:14:43', '2020-07-03 12:14:43', 'voyager.hooks', NULL),
(15, 1, 'Orders', '', '_self', 'voyager-folder', NULL, NULL, 15, '2020-07-03 14:22:49', '2020-07-03 14:22:49', 'voyager.orders.index', NULL),
(16, 1, 'Shops', '', '_self', 'voyager-folder', NULL, NULL, 16, '2020-07-06 07:11:34', '2020-07-06 07:11:34', 'voyager.shops.index', NULL),
(17, 1, 'Products', '', '_self', NULL, NULL, NULL, 17, '2020-07-06 08:49:06', '2020-07-06 08:49:06', 'voyager.products.index', NULL),
(19, 1, 'Coupons', '', '_self', 'voyager-bag', NULL, NULL, 18, '2020-07-10 08:47:12', '2020-07-10 08:47:12', 'voyager.coupons.index', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2020_06_29_064551_create_products_table', 1),
(29, '2020_07_01_000133_create_orders_table', 1),
(30, '2020_07_03_082215_create_shops_table', 1),
(31, '2020_07_07_043834_create_product_categories_table', 2),
(32, '2020_07_09_202115_create_coupons_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` enum('cash_on_delivery','paypal','stripe','card') COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-07-03 12:14:40', '2020-07-03 12:14:40');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-07-03 12:14:30', '2020-07-03 12:14:30'),
(2, 'browse_bread', NULL, '2020-07-03 12:14:30', '2020-07-03 12:14:30'),
(3, 'browse_database', NULL, '2020-07-03 12:14:30', '2020-07-03 12:14:30'),
(4, 'browse_media', NULL, '2020-07-03 12:14:30', '2020-07-03 12:14:30'),
(5, 'browse_compass', NULL, '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(6, 'browse_menus', 'menus', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(7, 'read_menus', 'menus', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(8, 'edit_menus', 'menus', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(9, 'add_menus', 'menus', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(10, 'delete_menus', 'menus', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(11, 'browse_roles', 'roles', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(12, 'read_roles', 'roles', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(13, 'edit_roles', 'roles', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(14, 'add_roles', 'roles', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(15, 'delete_roles', 'roles', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(16, 'browse_users', 'users', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(17, 'read_users', 'users', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(18, 'edit_users', 'users', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(19, 'add_users', 'users', '2020-07-03 12:14:31', '2020-07-03 12:14:31'),
(20, 'delete_users', 'users', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(21, 'browse_settings', 'settings', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(22, 'read_settings', 'settings', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(23, 'edit_settings', 'settings', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(24, 'add_settings', 'settings', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(25, 'delete_settings', 'settings', '2020-07-03 12:14:32', '2020-07-03 12:14:32'),
(26, 'browse_categories', 'categories', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(27, 'read_categories', 'categories', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(28, 'edit_categories', 'categories', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(29, 'add_categories', 'categories', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(30, 'delete_categories', 'categories', '2020-07-03 12:14:35', '2020-07-03 12:14:35'),
(31, 'browse_posts', 'posts', '2020-07-03 12:14:37', '2020-07-03 12:14:37'),
(32, 'read_posts', 'posts', '2020-07-03 12:14:37', '2020-07-03 12:14:37'),
(33, 'edit_posts', 'posts', '2020-07-03 12:14:37', '2020-07-03 12:14:37'),
(34, 'add_posts', 'posts', '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(35, 'delete_posts', 'posts', '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(36, 'browse_pages', 'pages', '2020-07-03 12:14:39', '2020-07-03 12:14:39'),
(37, 'read_pages', 'pages', '2020-07-03 12:14:39', '2020-07-03 12:14:39'),
(38, 'edit_pages', 'pages', '2020-07-03 12:14:39', '2020-07-03 12:14:39'),
(39, 'add_pages', 'pages', '2020-07-03 12:14:39', '2020-07-03 12:14:39'),
(40, 'delete_pages', 'pages', '2020-07-03 12:14:39', '2020-07-03 12:14:39'),
(41, 'browse_hooks', NULL, '2020-07-03 12:14:43', '2020-07-03 12:14:43'),
(42, 'browse_orders', 'orders', '2020-07-03 14:22:48', '2020-07-03 14:22:48'),
(43, 'read_orders', 'orders', '2020-07-03 14:22:48', '2020-07-03 14:22:48'),
(44, 'edit_orders', 'orders', '2020-07-03 14:22:48', '2020-07-03 14:22:48'),
(45, 'add_orders', 'orders', '2020-07-03 14:22:48', '2020-07-03 14:22:48'),
(46, 'delete_orders', 'orders', '2020-07-03 14:22:48', '2020-07-03 14:22:48'),
(47, 'browse_shops', 'shops', '2020-07-06 07:11:34', '2020-07-06 07:11:34'),
(48, 'read_shops', 'shops', '2020-07-06 07:11:34', '2020-07-06 07:11:34'),
(49, 'edit_shops', 'shops', '2020-07-06 07:11:34', '2020-07-06 07:11:34'),
(50, 'add_shops', 'shops', '2020-07-06 07:11:34', '2020-07-06 07:11:34'),
(51, 'delete_shops', 'shops', '2020-07-06 07:11:34', '2020-07-06 07:11:34'),
(52, 'browse_products', 'products', '2020-07-06 08:49:05', '2020-07-06 08:49:05'),
(53, 'read_products', 'products', '2020-07-06 08:49:05', '2020-07-06 08:49:05'),
(54, 'edit_products', 'products', '2020-07-06 08:49:05', '2020-07-06 08:49:05'),
(55, 'add_products', 'products', '2020-07-06 08:49:05', '2020-07-06 08:49:05'),
(56, 'delete_products', 'products', '2020-07-06 08:49:05', '2020-07-06 08:49:05'),
(62, 'browse_coupons', 'coupons', '2020-07-10 08:47:11', '2020-07-10 08:47:11'),
(63, 'read_coupons', 'coupons', '2020-07-10 08:47:11', '2020-07-10 08:47:11'),
(64, 'edit_coupons', 'coupons', '2020-07-10 08:47:11', '2020-07-10 08:47:11'),
(65, 'add_coupons', 'coupons', '2020-07-10 08:47:11', '2020-07-10 08:47:11'),
(66, 'delete_coupons', 'coupons', '2020-07-10 08:47:11', '2020-07-10 08:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n<h2>We can use all kinds of format!</h2>\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-03 12:14:38', '2020-07-03 12:14:38'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-03 12:14:38', '2020-07-03 12:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `cover_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `cover_img`, `shop_id`, `created_at`, `updated_at`) VALUES
(1, 'Anissa Jones', 'Ea sapiente voluptate aliquid aperiam et veritatis quod.', 3240.00, NULL, NULL, '2020-07-06 06:41:08', '2020-07-06 06:41:08'),
(2, 'Princess Rippin', 'Molestiae et nesciunt ut saepe repellat aut facilis.', 3420.00, NULL, NULL, '2020-07-06 06:41:08', '2020-07-06 06:41:08'),
(3, 'Serenity Orn', 'Aut voluptas pariatur velit praesentium mollitia quasi odio.', 3419.00, NULL, NULL, '2020-07-06 06:41:08', '2020-07-06 06:41:08'),
(4, 'Royce Cremin', 'Dolorem in voluptate placeat cupiditate molestiae tempora.', 2429.00, NULL, NULL, '2020-07-06 06:41:09', '2020-07-06 06:41:09'),
(5, 'Adolphus Ortiz', 'Quis enim dolorem id nihil.', 3121.00, NULL, NULL, '2020-07-06 06:41:09', '2020-07-06 06:41:09'),
(6, 'Mr. Roosevelt Altenwerth II', 'Et pariatur ullam omnis nulla.', 514.00, NULL, NULL, '2020-07-06 06:41:09', '2020-07-06 06:41:09'),
(7, 'Roxanne Ledner', 'Tempore qui eveniet aut delectus.', 4833.00, NULL, NULL, '2020-07-06 06:41:09', '2020-07-06 06:41:09'),
(8, 'Lemuel Morar', 'Doloribus deleniti nihil alias reiciendis.', 2193.00, NULL, NULL, '2020-07-06 06:41:09', '2020-07-06 06:41:09'),
(9, 'Dr. Karson Howell I', 'Aut doloribus ipsa aut minus dolorem aut.', 675.00, NULL, NULL, '2020-07-06 06:41:09', '2020-07-06 06:41:09'),
(10, 'Dr. Maximilian Schaden V', 'Officiis quae porro rerum adipisci provident eaque corporis molestiae.', 3389.00, NULL, NULL, '2020-07-06 06:41:09', '2020-07-06 06:41:09'),
(11, 'Verda Windler', 'Eum quis aliquid ipsa.', 3667.00, NULL, NULL, '2020-07-06 06:41:09', '2020-07-06 06:41:09'),
(12, 'Mrs. Maddison Boehm', 'Unde qui dolor tenetur aut est esse et.', 3948.00, NULL, NULL, '2020-07-06 06:41:09', '2020-07-06 06:41:09'),
(13, 'Reba Boyle', 'Fuga exercitationem totam vero et facere expedita.', 2614.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(14, 'Mr. Thomas Koss', 'Officia non alias qui animi et eligendi aut.', 4922.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(15, 'Conrad Lockman V', 'Labore veniam officia nihil et est ducimus praesentium.', 1343.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(16, 'Nicolas Baumbach', 'Qui non rerum sed quidem laborum.', 2943.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(17, 'Dr. Major Adams', 'Ut perspiciatis perspiciatis debitis dolorem consequuntur molestiae.', 1181.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(18, 'Rae Ankunding', 'Id repudiandae nesciunt pariatur voluptatem soluta error.', 4482.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(19, 'Domenic Wintheiser II', 'Fuga vitae facere eaque.', 4231.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(20, 'Kayley Bergstrom', 'Aspernatur vel et sunt quis aut ut dolor.', 1041.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(21, 'Ezequiel Connelly Jr.', 'Est quis et quisquam quibusdam.', 3635.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(22, 'Carrie Gislason IV', 'Libero velit hic facere maxime ut et dolor.', 2423.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(23, 'Murl Heaney', 'Quia perspiciatis pariatur molestias minus porro praesentium.', 2145.00, NULL, NULL, '2020-07-06 06:41:10', '2020-07-06 06:41:10'),
(24, 'Alexane Cummings', 'Natus dolores veniam non sed minima cumque quia.', 242.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(25, 'Dr. Malinda Raynor MD', 'Aut odit voluptas ut id nesciunt quis.', 1229.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(26, 'Jovan Schimmel', 'Quos quibusdam a excepturi veritatis.', 3647.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(27, 'Waldo Cronin', 'Voluptas eos sed neque.', 1907.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(28, 'Cierra Breitenberg', 'Odit repudiandae modi omnis autem incidunt aut consequatur.', 3281.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(29, 'Dr. Drew O\'Keefe', 'Unde quia ab enim in.', 4586.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(30, 'Jeremy Wilderman', 'Temporibus ut optio dicta qui.', 528.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(31, 'Brandt Monahan', 'Est voluptate deserunt vero blanditiis reprehenderit explicabo.', 3911.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(32, 'Wilmer Green', 'Id consequatur sed et vel quis asperiores.', 1140.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(33, 'Clemens Corwin', 'Odio libero sed hic ut.', 3762.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(34, 'Kasey Borer', 'Et aliquam in quaerat quos id omnis.', 4347.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(35, 'Rick Herman IV', 'Iste modi omnis asperiores impedit animi iusto.', 3532.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(36, 'Bradford Bogisich', 'Repudiandae perferendis dicta voluptatibus perferendis recusandae aut repellendus quam.', 1391.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(37, 'Luz Rempel IV', 'Totam hic perferendis suscipit unde.', 3078.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(38, 'Angus Gutkowski', 'Unde repellat ut repudiandae qui.', 4441.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(39, 'Carmel Ziemann II', 'Quisquam est iure iusto vel soluta.', 4219.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(40, 'Lelia Gusikowski', 'Molestiae tenetur delectus nobis rem qui debitis dolorem.', 4815.00, NULL, NULL, '2020-07-06 06:41:11', '2020-07-06 06:41:11'),
(41, 'Jacky Mante PhD', '<p>Saepe totam dignissimos itaque beatae officiis.</p>', 4072.00, NULL, 3, '2020-07-06 06:41:00', '2020-07-06 09:27:36'),
(42, 'Wilma Medhurst', '<p>Et incidunt et nostrum similique nihil a.</p>', 473.00, NULL, 1, '2020-07-06 06:41:00', '2020-07-08 07:16:52'),
(43, 'Keith Von', '<p>Neque animi explicabo officiis rerum deserunt.</p>', 2679.00, NULL, NULL, '2020-07-06 06:41:00', '2020-07-08 14:20:48'),
(44, 'Janice Howe', '<p>Voluptate pariatur natus cupiditate laudantium et.</p>', 1398.00, NULL, NULL, '2020-07-06 06:41:00', '2020-07-08 14:21:30'),
(45, 'Mr. Pedro Wisoky', '<p>Aspernatur neque neque sit architecto.</p>', 1406.00, NULL, 2, '2020-07-06 06:41:00', '2020-07-08 16:01:09'),
(46, 'Moriah Jones', 'Ipsam veritatis voluptas molestias quae voluptatum cumque.', 1049.00, NULL, NULL, '2020-07-06 06:41:12', '2020-07-06 06:41:12'),
(47, 'Dayne Bartell PhD', 'Molestias similique sit excepturi dolores voluptatem inventore aliquid.', 646.00, NULL, NULL, '2020-07-06 06:41:12', '2020-07-06 06:41:12'),
(48, 'Bradly Rippin', 'Ea ut repellat vero vero quo.', 1072.00, NULL, NULL, '2020-07-06 06:41:12', '2020-07-06 06:41:12'),
(49, 'Makayla Raynor', 'Explicabo rem consequatur eos qui aut hic veritatis.', 2704.00, NULL, NULL, '2020-07-06 06:41:12', '2020-07-06 06:41:12'),
(50, 'Aylin Gibson II lipastic', '<p>Nesciunt voluptatum voluptatum doloremque.</p>', 4564.00, 'products\\July2020\\PierQ7eFOpNLmVRWTGKT.jpg', 3, '2020-07-06 06:41:00', '2020-07-08 16:04:49'),
(51, 'shopppp', '<p>shoppppp</p>', 12222.00, 'products\\July2020\\mQoqZrTCJd2NuYVHjfO8.jpg', 2, '2020-07-06 10:47:00', '2020-07-08 07:16:24'),
(52, 'hbhbhbh', '<p>bhhbhb</p>', 5555.00, 'products\\July2020\\tJRd1BvyHylGzuJSASw4.jpg', 4, '2020-07-06 10:50:00', '2020-07-08 07:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 52, 3, NULL, NULL),
(2, 52, 4, NULL, NULL),
(3, 51, 4, NULL, NULL),
(4, 42, 3, NULL, NULL),
(5, 43, 5, NULL, NULL),
(6, 44, 7, NULL, NULL),
(7, 45, 6, NULL, NULL),
(8, 50, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-07-03 12:14:29', '2020-07-03 12:14:29'),
(2, 'user', 'Normal User', '2020-07-03 12:14:29', '2020-07-03 12:14:29'),
(3, 'seller', 'seller', '2020-07-06 07:27:53', '2020-07-06 07:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `user_id`, `is_active`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'test', 3, 0, 'test', NULL, '2020-07-06 06:46:00', '2020-07-06 07:38:41'),
(2, 'test1', 2, 1, 'test1test1test1test1test1test1test1test1test1test1', NULL, '2020-07-06 06:47:00', '2020-07-06 07:15:42'),
(3, 'custommer shopppp', 3, 0, 'custommer shopcustommer shopcustommer shop', NULL, '2020-07-06 07:37:13', '2020-07-06 07:37:13'),
(4, 'test2', 5, 1, 'test2 test2', NULL, '2020-07-06 08:01:00', '2020-07-06 08:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(2, 2, 'test', 'test@gmail.com', 'users/default.png', NULL, '$2y$10$gBlx2a8UcZqCgS18O/teQOnX5N1IKILFeyMCVHrLC9war4DcxsITC', NULL, NULL, '2020-07-06 06:47:20', '2020-07-06 06:47:20'),
(3, 2, 'custommer new', 'custommer@gmail.com', 'users/default.png', NULL, '$2y$10$zVmI00lhfRiR4kY2zwc3gOU7tiRHlJxZl9NrY3AeRiZx6kDnkT0NK', NULL, NULL, '2020-07-06 07:36:43', '2020-07-06 07:36:43'),
(4, 1, 'admin', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$N0K9cjj9Lr0M96siI8h1LeeqOeH7q9ONnKUK4G.1ZwauxLnBktCVK', 'HKmvUqTaVHrEWfBDsN6uO3jMt8cRpafbYyF1Dsg79UvtYHUlf7T2EslfyBZd', NULL, '2020-07-06 07:53:05', '2020-07-06 07:53:06'),
(5, 3, 'test2', 'test2@gmail.com', 'users/default.png', NULL, '$2y$10$zbZ1Sa3zVQlxvAebvXAe6eNJgA6rP5klt1k1gpXrRivAH7RM6Xi9y', NULL, NULL, '2020-07-06 08:00:44', '2020-07-06 08:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
