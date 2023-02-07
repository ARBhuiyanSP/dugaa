-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 05:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `du_alumni`
--

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
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_bin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_tin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footerContent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_phone` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sales_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_sales_return__note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_purchse_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_purchase_return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_top_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_ac_type` tinyint(4) NOT NULL DEFAULT 0,
  `_sms_service` tinyint(4) NOT NULL DEFAULT 0,
  `_barcode_service` tinyint(4) NOT NULL DEFAULT 0,
  `_bank_group` int(11) DEFAULT NULL,
  `_cash_group` int(11) DEFAULT NULL,
  `_auto_lock` tinyint(4) NOT NULL DEFAULT 0,
  `_pur_base_model_barcode` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `title`, `name`, `_address`, `keywords`, `author`, `url`, `_bin`, `_tin`, `logo`, `bg_image`, `footerContent`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `_phone`, `_email`, `_sales_note`, `_sales_return__note`, `_purchse_note`, `_purchase_return_note`, `_top_title`, `_ac_type`, `_sms_service`, `_barcode_service`, `_bank_group`, `_cash_group`, `_auto_lock`, `_pur_base_model_barcode`) VALUES
(1, 'PHPOS', 'PHPOS', 'Mirpur 10,Dhaka 1216', 'PHPOS', 'Farhad', '#', '123456789098', '546789098765', 'images/0129202309234463d63b201faea.jpg', NULL, NULL, NULL, NULL, NULL, '2021-06-06 08:00:54', '2023-01-29 03:31:09', '+8801756256562, +8801677023131', 'demo@gmail.com', 'Goods sold are not returnable. If need any support, Call: +8801756256562, +8801677023131', '', '', '', '﷽', 0, 1, 0, 15, 16, 0, 0);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_10_09_135732_create_products_table', 1),
(6, '2021_05_31_063527_create_general_settings_table', 2),
(7, '2021_06_01_150128_create_boards_table', 2),
(19, '2021_06_20_180911_create_page_rows_table', 7),
(78, '2022_02_01_143528_create_branches_table', 15),
(88, '2020_10_09_135640_create_permission_tables', 16),
(89, '2021_06_06_163854_create_social_media_table', 16),
(90, '2022_02_01_144222_create_account_heads_table', 16),
(91, '2022_02_01_144223_create_account_groups_table', 16),
(92, '2022_02_01_144249_create_account_ledgers_table', 16),
(93, '2022_02_01_144312_create_purchase_orders_table', 16),
(95, '2022_02_01_144327_create_purchase_order_details_table', 16),
(96, '2022_02_01_144348_create_purchases_table', 16),
(97, '2022_02_01_144404_create_purchase_details_table', 16),
(98, '2022_02_01_144444_create_voucher_masters_table', 17),
(99, '2022_02_01_144458_create_voucher_master_details_table', 17),
(100, '2022_02_01_144610_create_sales_orders_table', 17),
(101, '2022_02_01_144624_create_sales_order_details_table', 17),
(102, '2022_02_01_144650_create_product_price_lists_table', 17),
(103, '2022_02_01_144651_create_sales_table', 17),
(105, '2022_02_01_144722_create_sales_returns_table', 17),
(106, '2022_02_01_144738_create_sales_return_details_table', 17),
(107, '2022_02_01_144830_create_purchase_returns_table', 17),
(109, '2022_02_01_145002_create_proforma_sales_table', 17),
(110, '2022_02_01_145015_create_proforma_sales_details_table', 17),
(111, '2022_02_01_145150_create_item_inventories_table', 17),
(112, '2022_02_01_145216_create_default_ledgers_table', 17),
(113, '2022_02_01_145357_create_voucher_types_table', 17),
(114, '2022_02_01_145434_create_cost_centers_table', 17),
(115, '2022_02_01_145517_create_store_houses_table', 17),
(116, '2022_02_01_145606_create_store_house_selves_table', 17),
(117, '2022_03_31_155636_create_item_categories_table', 18),
(118, '2022_02_01_144326_create_inventories_table', 19),
(120, '2022_04_15_141902_create_purchase_accounts_table', 20),
(121, '2022_04_19_200104_create_purchase_return_form_settings_table', 21),
(122, '2022_04_19_202822_create_purchase_return_accounts_table', 22),
(123, '2022_04_21_183954_create_sales_form_settings_table', 23),
(124, '2022_04_22_163045_create_sales_accounts_table', 24),
(125, '2022_04_22_164221_create_sales_return_accounts_table', 25),
(126, '2022_04_22_164136_create_sales_return_form_settings_table', 26),
(127, '2022_02_01_144705_create_sales_details_table', 27),
(128, '2022_02_01_144901_create_purchase_return_details_table', 28),
(129, '2022_09_15_160511_create_table_infos_table', 29),
(130, '2022_09_15_174144_create_resturant_sales_table', 30),
(131, '2022_09_15_174249_create_resturant_details_table', 31),
(132, '2022_09_15_174454_create_kitchens_table', 32),
(133, '2022_09_15_175528_create_kitchen_finish_goods_table', 33),
(134, '2022_09_15_175551_create_kitchen_row_goods_table', 34),
(135, '2022_09_15_225434_create_musak_four_point_threes_table', 35),
(136, '2022_09_15_225531_create_musak_four_point_three_inputs_table', 36),
(137, '2022_09_15_225636_create_musak_four_point_three_additions_table', 37),
(138, '2022_09_15_235243_create_resturant_form_settings_table', 38),
(139, '2022_09_19_174545_create_steward_allocations_table', 39),
(140, '2022_04_22_163045_create_resturant_sales_accounts_table', 40),
(141, '2022_10_10_231802_create_unit_conversions_table', 41),
(142, '2022_10_31_055118_create_device_locations_table', 42),
(143, '2022_10_31_055326_create_water_logs_table', 42),
(144, '2022_10_31_055347_create_water_log_details_table', 42),
(145, '2022_11_02_051936_create_locations_table', 43),
(146, '2022_11_02_052144_create_projects_table', 43),
(147, '2023_01_14_133104_create_service_categories_table', 44),
(148, '2023_01_14_133312_create_currencies_table', 44),
(149, '2023_01_14_134649_create_service_details_table', 44),
(150, '2023_01_14_134747_create_payment_details_table', 44),
(151, '2023_01_14_135326_create_service_rates_table', 44),
(152, '2023_01_14_135401_create_quotetion_details_table', 44),
(153, '2023_01_14_135731_create_service_image_details_table', 44),
(154, '2023_01_14_140334_create_time_base_rate_settings_table', 44),
(155, '2023_01_23_180903_create_quotation_images_table', 45);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 46),
(1, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 51),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 55),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(5, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 28),
(5, 'App\\Models\\User', 31),
(5, 'App\\Models\\User', 33),
(5, 'App\\Models\\User', 34),
(5, 'App\\Models\\User', 35),
(5, 'App\\Models\\User', 36),
(5, 'App\\Models\\User', 38),
(5, 'App\\Models\\User', 40);

-- --------------------------------------------------------

--
-- Table structure for table `page_rows`
--

CREATE TABLE `page_rows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `row_num` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_rows`
--

INSERT INTO `page_rows` (`id`, `row_num`, `created_at`, `updated_at`) VALUES
(1, 10, NULL, NULL),
(2, 20, NULL, NULL),
(3, 30, NULL, NULL),
(4, 40, NULL, NULL),
(5, 50, NULL, NULL),
(6, 60, NULL, NULL),
(7, 100, NULL, NULL),
(8, 200, NULL, NULL),
(9, 300, NULL, NULL),
(10, 500, NULL, NULL),
(11, 100, NULL, NULL),
(12, 2000, NULL, NULL),
(13, 5000, NULL, NULL),
(14, 10000, NULL, NULL),
(15, 20000, NULL, NULL);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', 'Role', NULL, NULL),
(2, 'role-create', 'web', 'Role', NULL, NULL),
(3, 'role-edit', 'web', 'Role', NULL, NULL),
(4, 'role-delete', 'web', 'Role', NULL, NULL),
(5, 'user-list', 'web', 'User', NULL, NULL),
(6, 'user-create', 'web', 'User', NULL, NULL),
(7, 'user-edit', 'web', 'User', NULL, NULL),
(8, 'user-delete', 'web', 'User', NULL, NULL),
(254, 'admin-settings', 'web', 'Settings', '2022-10-29 23:30:15', '2022-10-29 23:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', 'admin', '2021-05-29 05:33:16', '2021-05-29 05:33:16'),
(3, 'user', 'web', 'user', '2021-06-04 05:59:56', '2023-01-23 12:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 5),
(1, 6),
(1, 7),
(2, 1),
(2, 5),
(3, 1),
(3, 5),
(4, 1),
(4, 5),
(5, 1),
(5, 5),
(5, 6),
(5, 7),
(6, 1),
(6, 5),
(6, 7),
(7, 1),
(7, 5),
(7, 7),
(8, 1),
(8, 5),
(9, 5),
(9, 6),
(9, 7),
(10, 5),
(10, 6),
(10, 7),
(11, 5),
(11, 6),
(11, 7),
(12, 5),
(13, 5),
(13, 6),
(13, 7),
(14, 5),
(14, 6),
(14, 7),
(15, 5),
(15, 6),
(15, 7),
(16, 5),
(17, 5),
(17, 6),
(17, 7),
(18, 5),
(18, 6),
(18, 7),
(19, 5),
(19, 6),
(19, 7),
(20, 5),
(21, 5),
(21, 6),
(21, 7),
(22, 5),
(22, 6),
(22, 7),
(23, 5),
(23, 6),
(23, 7),
(24, 5),
(25, 5),
(25, 6),
(25, 7),
(26, 5),
(26, 6),
(26, 7),
(27, 5),
(27, 6),
(27, 7),
(28, 5),
(29, 5),
(30, 5),
(30, 6),
(30, 7),
(31, 5),
(31, 6),
(31, 7),
(32, 5),
(32, 6),
(32, 7),
(33, 5),
(34, 5),
(34, 6),
(34, 7),
(35, 5),
(35, 6),
(35, 7),
(36, 5),
(36, 6),
(36, 7),
(37, 5),
(38, 5),
(38, 6),
(38, 7),
(39, 5),
(39, 6),
(39, 7),
(40, 5),
(40, 6),
(40, 7),
(41, 5),
(41, 6),
(41, 7),
(42, 5),
(42, 6),
(42, 7),
(43, 5),
(43, 6),
(43, 7),
(44, 5),
(44, 6),
(44, 7),
(45, 5),
(45, 6),
(45, 7),
(46, 5),
(46, 6),
(46, 7),
(47, 5),
(47, 6),
(47, 7),
(48, 5),
(48, 6),
(48, 7),
(49, 5),
(49, 6),
(49, 7),
(50, 5),
(50, 6),
(50, 7),
(51, 5),
(52, 5),
(52, 6),
(52, 7),
(53, 5),
(53, 6),
(53, 7),
(54, 5),
(54, 6),
(54, 7),
(55, 5),
(56, 5),
(56, 6),
(56, 7),
(57, 5),
(57, 6),
(57, 7),
(58, 5),
(58, 6),
(58, 7),
(59, 5),
(60, 5),
(60, 6),
(60, 7),
(61, 5),
(61, 6),
(61, 7),
(62, 5),
(62, 6),
(62, 7),
(63, 5),
(64, 5),
(64, 6),
(64, 7),
(65, 5),
(65, 6),
(65, 7),
(66, 5),
(66, 6),
(66, 7),
(67, 5),
(67, 6),
(67, 7),
(68, 5),
(69, 5),
(69, 6),
(69, 7),
(70, 5),
(70, 6),
(70, 7),
(71, 5),
(71, 6),
(71, 7),
(72, 5),
(72, 6),
(72, 7),
(73, 5),
(73, 6),
(73, 7),
(74, 5),
(74, 6),
(74, 7),
(75, 5),
(76, 5),
(76, 6),
(76, 7),
(77, 5),
(77, 6),
(77, 7),
(78, 6),
(78, 7),
(79, 6),
(79, 7),
(80, 6),
(80, 7),
(82, 6),
(82, 7),
(83, 6),
(83, 7),
(84, 6),
(84, 7),
(85, 6),
(85, 7),
(86, 6),
(86, 7),
(87, 6),
(87, 7),
(88, 6),
(88, 7),
(89, 6),
(89, 7),
(90, 6),
(90, 7),
(91, 6),
(91, 7),
(92, 6),
(92, 7),
(93, 6),
(93, 7),
(94, 6),
(94, 7),
(95, 6),
(95, 7),
(96, 6),
(96, 7),
(97, 6),
(97, 7),
(98, 6),
(98, 7),
(99, 6),
(99, 7),
(100, 6),
(101, 6),
(101, 7),
(102, 6),
(102, 7),
(103, 6),
(103, 7),
(104, 6),
(104, 7),
(105, 6),
(105, 7),
(106, 6),
(106, 7),
(107, 6),
(107, 7),
(109, 6),
(109, 7),
(110, 6),
(110, 7),
(111, 6),
(111, 7),
(112, 6),
(112, 7),
(118, 6),
(118, 7),
(119, 6),
(119, 7),
(120, 6),
(120, 7),
(121, 6),
(121, 7),
(122, 6),
(122, 7),
(123, 6),
(123, 7),
(124, 6),
(124, 7),
(125, 6),
(125, 7),
(126, 6),
(126, 7),
(127, 6),
(127, 7),
(128, 6),
(128, 7),
(129, 6),
(129, 7),
(130, 6),
(130, 7),
(131, 6),
(131, 7),
(132, 6),
(132, 7),
(133, 6),
(133, 7),
(134, 6),
(134, 7),
(135, 6),
(135, 7),
(136, 6),
(136, 7),
(137, 6),
(137, 7),
(244, 3),
(251, 3),
(254, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RjUC9Ipt1vrvpK5Vj1sbUncGUXmwFjiV2IqhM8pF', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZXFscGszdzNZa014T0tLQTNiWE1rVWN3TUdtOFZYNFR6U2NIYnM4OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZGQtd2FsbGV0Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEFPVzJNTzVTRFBZVC9FeERMM25BSS41Q3l4bG1HT1VQekZZODNETS5GckQxaGdrV3pnSDdDIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRBT1cyTU81U0RQWVQvRXhETDNuQUkuNUN5eGxtR09VUHpGWTgzRE0uRnJEMWhna1d6Z0g3QyI7fQ==', 1630340574);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'visitor' COMMENT 'admin,user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `_ac_type` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `phone_number`, `email`, `image`, `user_type`, `email_verified_at`, `password`, `text_pass`, `status`, `_ac_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'farhad Ali', NULL, NULL, NULL, '__rhadali0507@gmail.com', NULL, 'user', NULL, '$2y$10$j3MgpqnXEzPE37MMZ/E75.MsHfOMCLUKS4WxiBrW5ftoShIXg3H8S', NULL, 1, 0, 'Pbkdx2kynTrUdGwQbKaY5JKIaNqRgGPPA9pgnFX6sMkRQHXFRi3lsTkhXWCl', '2021-05-29 11:35:46', '2023-01-25 05:52:18'),
(46, 'Amin', NULL, NULL, NULL, 'admin@gmail.com', NULL, 'admin', NULL, '$2y$10$a1x6VBU0VWqbI8T8HeDX3exLuF4XJm6sxCMNUJYxYQFOPh7VZSMh2', NULL, 1, 1, NULL, '2022-03-04 14:08:25', '2023-01-16 05:08:31'),
(47, 'Md. Joshim Uddin Sarder', NULL, NULL, NULL, 'jashimuddin@gmail.com', NULL, 'visitor', NULL, '$2y$10$2zsNsUjIcucUTRtUTe65I.ifix4tn3XWK6nFYul/gj6bf4iAmHf1y', NULL, 1, 0, NULL, '2022-05-24 11:15:41', '2022-05-24 11:15:41'),
(51, 'mamun ali', NULL, NULL, NULL, 'mamun@gmail.com', NULL, 'user', NULL, '$2y$10$euMFO0pzScpJ8iKOwniQn.gHxhCklZvi7bXePBQH7j91aX5AV5hJS', NULL, 0, 0, NULL, '2023-01-23 13:37:47', '2023-01-23 13:37:47'),
(52, 'Jony Ahmed', NULL, NULL, NULL, 'jony@gmail.com', NULL, 'user', NULL, '$2y$10$XPqBrzvcw4yPubP/5pgB..h/hbDPjlTxTHNPGF0rQWi8y7yWbszAK', NULL, 1, 0, NULL, '2023-01-24 02:23:20', '2023-01-24 02:23:20'),
(55, 'Nila nila', NULL, NULL, NULL, 'nila@gmail.com', NULL, 'user', NULL, '$2y$10$fE3TexnO7f/JAGnRZKZ4weXjDxsGXqK0SX9gQ6PAkbJs0RIGpdfbq', NULL, 0, 0, NULL, '2023-01-24 11:50:46', '2023-01-24 11:50:46'),
(56, 'Atick Mahmud', NULL, NULL, NULL, 'atick@gmail.com', NULL, 'user', NULL, '$2y$10$EMGCweSov4C9Ge5TZZgenOuNYTV4ZNwid9I3GLkNgtg.a1K9R/LqG', NULL, 1, 0, NULL, '2023-01-25 03:28:59', '2023-01-25 03:51:07'),
(57, 'Test Test 2', NULL, NULL, NULL, 'test@gmail.com', NULL, 'user', NULL, '$2y$10$4jfcFNiaC8kzpxp7egd9HOn.rRfoGqtf/Oxgg2CCWmQ2o0gQ2uGpq', NULL, 0, 0, NULL, '2023-01-25 09:38:29', '2023-01-25 09:38:29'),
(58, 'ddasd dsadas', NULL, NULL, NULL, 'jonyirwer@gmail.com', NULL, 'user', NULL, '$2y$10$PiUjc5ZkNIVK5Q8NhxjEzeD/CVhPooFnHtX4Xli/ezTIMJb4WPXq.', NULL, 1, 0, NULL, '2023-01-25 09:45:19', '2023-01-25 09:47:56'),
(59, 'Mo Ali Ali', NULL, NULL, NULL, 'moali0507@gmail.com', NULL, 'user', NULL, '$2y$10$kLkzcr8oQn4lixbEgGbrfevr2KhGa0aU0YXxYgkMbC.0lNKfKGkr.', NULL, 0, 0, NULL, '2023-01-25 09:50:31', '2023-01-25 09:50:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `page_rows`
--
ALTER TABLE `page_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
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
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `page_rows`
--
ALTER TABLE `page_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
