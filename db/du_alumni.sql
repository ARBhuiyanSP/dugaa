-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 05:02 AM
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
(1, 'DUGAA', 'DUGAA', 'Mirpur 10,Dhaka 1216', 'DUGAA', 'DUGAA', '#', '123456789098', '546789098765', 'images/0208202304350863e3267c09a05.jpg', NULL, NULL, NULL, NULL, NULL, '2021-06-06 08:00:54', '2023-02-07 22:35:08', '+8801756256562, +8801677023131', 'demo@gmail.com', 'Goods sold are not returnable. If need any support, Call: +8801756256562, +8801677023131', '', '', '', '﷽', 0, 1, 0, 15, 16, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vedio_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_video` tinyint(4) NOT NULL DEFAULT 0,
  `_dis_cloumn` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` float NOT NULL DEFAULT 1,
  `is_dawnloadable` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `post_id`, `menu_id`, `status`, `title`, `sub_title`, `vedio_link`, `is_video`, `_dis_cloumn`, `serial`, `is_dawnloadable`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'post-image/0209202307241963e49fa3f1310.jpg', 3, 12, 1, 'Title 1', 'Sub Title 1', '', 0, '2', 1, 0, 46, NULL, '2023-02-09 01:24:19', '2023-02-09 03:54:39'),
(2, 'post-image/0209202307251163e49fd7f2d57.jpg', 4, 12, 1, 'No', 'no', 'ttewtrttrt', 0, '2', 1, 0, 46, NULL, '2023-02-09 01:25:11', '2023-02-09 04:14:03'),
(3, 'post-image/0209202309351063e4be4e75557.jpg', 4, 12, 1, 're', 'fsa', '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/4RWeFMzGpmo\" title=\"SKYEXCH.NET 10PL SEASON 04 || PRINCE MOVIES -2023 { DAY 2}\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 0, '2', 2, 0, 46, NULL, '2023-02-09 01:25:11', '2023-02-09 04:14:03'),
(4, 'post-image/0209202307251263e49fd800112.jpg', 4, 12, 1, '', '', '', 0, '2', 3, 0, 46, NULL, '2023-02-09 01:25:12', '2023-02-09 04:14:03'),
(5, 'post-image/0209202309513863e4c22ada4d8.jpg', 3, 12, 1, 'Titile 2', 'sub title 2', '', 0, '2', 1, 0, 46, NULL, '2023-02-09 03:51:38', '2023-02-09 03:54:39'),
(6, 'post-image/0209202309513863e4c22adb446.jpg', 3, 12, 1, 'Title 3', 'Sub Title 3', '', 0, '4', 1, 0, 46, NULL, '2023-02-09 03:51:38', '2023-02-09 03:53:30'),
(7, 'post-image/0212202303441263e8608c843ac.jpg', 7, 10, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-11 21:44:12', '2023-02-11 21:44:12'),
(8, 'post-image/0212202303511063e8622e12f7b.jpg', 8, 11, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-11 21:51:10', '2023-02-11 21:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `serial` double(8,2) NOT NULL DEFAULT 1.00,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_main_menu_show` tinyint(4) NOT NULL DEFAULT 1,
  `is_footer_menu_show` tinyint(4) NOT NULL DEFAULT 0,
  `page_type` int(11) NOT NULL DEFAULT 1 COMMENT 'multiple post = 1,only page = 2, gallery = 3',
  `have_child` int(11) DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `slug`, `parent_id`, `serial`, `status`, `is_main_menu_show`, `is_footer_menu_show`, `page_type`, `have_child`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Organization', 'organization', 0, 1.00, 1, 1, 1, 1, 1, 46, NULL, '2023-02-08 00:29:36', '2023-02-08 00:39:15'),
(2, 'Journey of DUAA', 'journey-of-duaa', 1, 0.00, 1, 1, 1, 2, 0, 46, NULL, '2023-02-08 00:37:17', '2023-02-08 00:54:30'),
(3, 'Executive Committee', 'executive-committee', 1, 0.00, 1, 1, 1, 1, 0, 46, NULL, '2023-02-08 00:37:41', '2023-02-08 00:37:41'),
(4, 'Past Leaders', 'past-leaders', 1, 3.00, 1, 1, 1, 1, 0, 46, NULL, '2023-02-08 00:38:03', '2023-02-08 00:38:03'),
(5, 'Constitution & Bylays', 'constitution-bylays', 1, 4.00, 1, 1, 1, 1, 0, 46, NULL, '2023-02-08 00:38:23', '2023-02-08 00:38:23'),
(6, 'DUGAA Documents', 'dugaa-documents', 1, 5.00, 1, 1, 1, 1, 0, 46, NULL, '2023-02-08 00:38:59', '2023-02-08 00:38:59'),
(7, 'Staff', 'staff', 1, 6.00, 1, 1, 1, 1, 0, 46, NULL, '2023-02-08 00:39:15', '2023-02-08 00:39:15'),
(8, 'Activities', 'activities', 0, 2.00, 1, 1, 1, 1, 1, 46, NULL, '2023-02-08 00:45:46', '2023-02-08 00:46:15'),
(9, 'Social Responsibility', 'social-responsibility', 8, 1.00, 1, 1, 0, 2, 0, 46, NULL, '2023-02-08 00:46:15', '2023-02-08 00:46:15'),
(10, 'News', 'news', 0, 3.00, 1, 1, 1, 1, 0, 46, NULL, '2023-02-08 00:46:40', '2023-02-08 00:46:40'),
(11, 'Notice', 'notice', 0, 4.00, 1, 1, 1, 1, 0, 46, NULL, '2023-02-08 00:46:56', '2023-02-08 00:46:56'),
(12, 'Gallery', 'gallery', 0, 5.00, 1, 1, 1, 3, 0, 46, NULL, '2023-02-08 00:47:14', '2023-02-08 00:47:14'),
(13, 'DHGAA Scholarship', 'dhgaa-scholarship', 0, 6.00, 1, 1, 1, 1, 0, 46, NULL, '2023-02-08 00:47:56', '2023-02-08 00:47:56');

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
(155, '2023_01_23_180903_create_quotation_images_table', 45),
(156, '2023_02_07_101406_create_menus_table', 46),
(157, '2023_02_07_101513_create_posts_table', 47),
(158, '2023_02_07_101532_create_images_table', 48);

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
(254, 'admin-settings', 'web', 'Settings', '2022-10-29 23:30:15', '2022-10-29 23:30:15'),
(255, 'main-menu-list', 'web', 'Menu/Page', NULL, NULL),
(256, 'main-menu-create', 'web', 'Menu/Page', NULL, NULL),
(257, 'main-menu-edit', 'web', 'Menu/Page', NULL, NULL),
(258, 'main-menu-delete', 'web', 'Menu/Page', NULL, NULL),
(259, 'admin-post-list', 'web', 'Page/Post', NULL, NULL),
(260, 'admin-post-create', 'web', 'Page/Post', NULL, NULL),
(261, 'admin-post-edit', 'web', 'Page/Post', NULL, NULL),
(262, 'admin-post-delete', 'web', 'Page/Post', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_possition` tinyint(4) DEFAULT NULL,
  `post_subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_hide_show` tinyint(4) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `column_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'col-md-6',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `menu_id`, `date`, `time`, `post_title`, `image_possition`, `post_subtitle`, `details`, `author`, `image_hide_show`, `position`, `status`, `column_size`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 9, '2023-02-08', '10:31:23', 'Journey of DUAA', 1, 'Jon', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Twenty-fourth September 1949, Nine years after the idea was mooted, the Dhaka University Alumni Association was born. The idea was first articulated by Dr. Mumtazuddin Ahmed, graduate of 1925, who became Director of Public Instruction in East Pakistan and later Vice Chancellor of Rajshahi University. Another stalwart who contributed to the establishment of the Association was Khan Bahadur Naziruddin Ahmed, the first Registrar of the University. The first President and Secretary General of the Association was Justice M. Ibrahim and Mr. Mizanur Rahman of the first batch of students of the University who led it for 1949 to 1962 and bequeathed the ideas of the Grand Assembly, Duty Fund, branches in other towns and cities and Old Students Home. The association was called ‘Old Boys Association’ up to 1959 and then it was named ‘Old Students Association’ the following year. In order to include women students the Association was renamed ‘Alumni Association’ in 1960.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">The Association was formed as a social club of former students of the University with the objective of promoting the interests of the University and its students. It is committed to providing assistance to meritorious students of limited means and at times it has done so from its Duty Fund. It also intended to set up a centre for students’ activities and programs but could not do much in the absence of a regular office or premises of its own. Old students’ home is still an unfulfilled target. In 1965 the Association was hopeful of receiving a piece of land from the University to build an alumni centre. In 1998 Prime Minister Sheikh Hasina announced the allocation of a plot of land from the old Railway area to the association but bureaucratic procedures have blocked the process of such a transfer till now. At one time there were several branches of the Association in other towns and cities but there are none at the moment.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Under the dynamic leadership of the Executive Committee of DUAA (2004-2013) led by its president Syed Manzur Elahi and Secretary General Raquibuddin Ahmed since 2004 DUAA came to flashlight through arranging its own office complex in the ground floor of “Nabab Nawab Ali Chowdhury Senate Bhavan” of Dhaka University as the construction was completed in 2007 by its own fund. This has been styled as the “Alumni Floor” with 16,000 sft space that includes office rooms, meeting and conference rooms, lobby, library, cyber cafe in a computer lab, coffee house, gym and a big modern prayer hall, all covered by AC. Alumni Floor has become a get-together centre for the alumni with necessary amenities. With about 10,000 life members DUAA Executive Committee (2013-2016), led by Raquibuddin Ahmed and Dewan Rashidul Hasan as President and Secretary General respectively is now committed and actively working towards the development of our alma mater – the University of Dhaka, popularly known as the “Oxford of the East” and welfare of its students of present, past and future. To mention only one of about a dozen projects, DUAA offers about 400 scholarships every year through collecting donations and arranging a number of Trust Funds to each year of each department and Institute of Dhaka University.</p>', 'Amin', 1, 1, 1, '1', 46, NULL, '2023-02-08 04:16:34', '2023-02-08 04:31:23'),
(2, 9, '2023-02-08', '10:17:04', 'Journey of DUAA', 1, '', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Twenty-fourth September 1949, Nine years after the idea was mooted, the Dhaka University Alumni Association was born. The idea was first articulated by Dr. Mumtazuddin Ahmed, graduate of 1925, who became Director of Public Instruction in East Pakistan and later Vice Chancellor of Rajshahi University. Another stalwart who contributed to the establishment of the Association was Khan Bahadur Naziruddin Ahmed, the first Registrar of the University. The first President and Secretary General of the Association was Justice M. Ibrahim and Mr. Mizanur Rahman of the first batch of students of the University who led it for 1949 to 1962 and bequeathed the ideas of the Grand Assembly, Duty Fund, branches in other towns and cities and Old Students Home. The association was called ‘Old Boys Association’ up to 1959 and then it was named ‘Old Students Association’ the following year. In order to include women students the Association was renamed ‘Alumni Association’ in 1960.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">The Association was formed as a social club of former students of the University with the objective of promoting the interests of the University and its students. It is committed to providing assistance to meritorious students of limited means and at times it has done so from its Duty Fund. It also intended to set up a centre for students’ activities and programs but could not do much in the absence of a regular office or premises of its own. Old students’ home is still an unfulfilled target. In 1965 the Association was hopeful of receiving a piece of land from the University to build an alumni centre. In 1998 Prime Minister Sheikh Hasina announced the allocation of a plot of land from the old Railway area to the association but bureaucratic procedures have blocked the process of such a transfer till now. At one time there were several branches of the Association in other towns and cities but there are none at the moment.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Under the dynamic leadership of the Executive Committee of DUAA (2004-2013) led by its president Syed Manzur Elahi and Secretary General Raquibuddin Ahmed since 2004 DUAA came to flashlight through arranging its own office complex in the ground floor of “Nabab Nawab Ali Chowdhury Senate Bhavan” of Dhaka University as the construction was completed in 2007 by its own fund. This has been styled as the “Alumni Floor” with 16,000 sft space that includes office rooms, meeting and conference rooms, lobby, library, cyber cafe in a computer lab, coffee house, gym and a big modern prayer hall, all covered by AC. Alumni Floor has become a get-together centre for the alumni with necessary amenities. With about 10,000 life members DUAA Executive Committee (2013-2016), led by Raquibuddin Ahmed and Dewan Rashidul Hasan as President and Secretary General respectively is now committed and actively working towards the development of our alma mater – the University of Dhaka, popularly known as the “Oxford of the East” and welfare of its students of present, past and future. To mention only one of about a dozen projects, DUAA offers about 400 scholarships every year through collecting donations and arranging a number of Trust Funds to each year of each department and Institute of Dhaka University.</p>', 'Amin', 1, 1, 1, '1', 46, NULL, '2023-02-08 04:17:04', '2023-02-08 04:17:04'),
(3, 12, '2023-02-09', '09:54:39', 'সন্ত্রাস, জঙ্গিবাদ, মাদক ও বাল্যবিবাহের বিরুদ্ধে প্রচারাভিযান ২০১৮', 1, 'sub title', '', 'Amin', 1, 1, 1, '1', 46, NULL, '2023-02-09 01:24:19', '2023-02-09 03:54:39'),
(4, 12, '2023-02-09', '10:14:03', 'আন্তর্জাতিক মাতৃভাষা দিবসে শহিদদের প্রতি শ্রদ্ধা নিবেদন', 1, 'sub title', '', 'Amin', 1, 1, 1, '1', 46, NULL, '2023-02-09 01:25:11', '2023-02-09 04:14:03'),
(5, 10, '2023-02-09', '11:02:50', 'ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে শতবর্ষের মিলনমেলা অনুষ্ঠিত', 1, 'অত্যন্ত আনন্দ উল্লাসে গত ১২ মার্চ ২০২২ উদ্যাপিত হলো ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন আয়োজিত ‘শতবর্ষের', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অত্যন্ত আনন্দ উল্লাসে গত ১২ মার্চ ২০২২ উদ্যাপিত হলো ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন আয়োজিত ‘শতবর্ষের মিলনমেলা’। ‘বাংলাদেশের পথযাত্রায় ঢাকা বিশ্ববিদ্যালয় অ্যালামনাই’ এই প্রতিপাদ্য নিয়ে প্রায় ১২,০০০ সম্মানিত সদস্যের উপস্থিতিতে ঢাকা বিশ্ববিদ্যালয় খেলার মাঠে অনুষ্ঠিত হয় ‘শতবর্ষের মিলনমেলা’।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানে প্রধান অতিথি হিসেবে উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ের প্রবীণতম শিক্ষার্থী মতিউল ইসলাম, বিশেষ অতিথি&nbsp; শতবর্ষ উদ্যাপন কমিটির চেয়ারম্যান জনাব সৈয়দ মঞ্জুর এলাহী, ঢাকা বিশ্ববিদ্যালয়ের মাননীয়&nbsp; প্রো-ভাইস চ্যান্সেলর (শিক্ষা) অধ্যাপক ড. এ. এস. এম. মাকসুদ কামাল,&nbsp; প্রো-ভাইস চ্যান্সেলর (প্রশাসন) অধ্যাপক ড. মুহাম্মদ সামাদ, অনুষ্ঠানে সভাপতিত্ব করেন অ্যালামনাই অ্যাসোসিয়েশনের সম্মানিত সভাপতি এ. কে. আজাদ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">দিনব্যাপী অনুষ্ঠানের শুরুতেই জাতীয় পতাকা উত্তোলন ও বেলুন উড়ানোর মধ্য দিয়ে উদ্বোধনী অনুষ্ঠান অনুষ্ঠিত হয়। জাতীয় পতাকা উত্তোলন করেন প্রধান অতিথি ঢাকা বিশ্ববিদ্যালয়ের প্রবীণতম শিক্ষার্থী মো. মতিউল ইসলাম। ঢাকা বিশ্ববিদ্যালয়ের পতাকা উত্তোলন করেন বিশেষ অতিথি ঢাকা বিশ্ববিদ্যালয়ের প্রো-ভাইস চ্যান্সেলর (শিক্ষা) অধ্যাপক ড. এ. এস. এম. মাকসুদ কামাল, প্রো-ভাইস চ্যান্সেলর (প্রশাসন) অধ্যাপক ড. মুহাম্মদ সামাদ। ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের পতাকা উত্তোলন করেন অ্যালামনাই অ্যাসোসিয়েশন-এর সভাপতি জনাব এ. কে. আজাদ, সিনিয়র সহ-সভাপতি মোল্লা মোহাম্মাদ আবু কাওছার, মহাসচিব রঞ্জন কর্মকার, শতবর্ষ উদ্যাপন কমিটির চেয়ারম্যান জনাব সৈয়দ মঞ্জুর এলাহী, শতবর্ষ উদ্যাপন কমিটির আহ্বায়ক ও সহ-সভাপতি জনাব আনোয়ার-উল-আলম চৌধুরী পারভেজসহ ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের কার্যনির্বাহী কমিটির সদস্যবৃন্দ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">উদ্বোধনী মঞ্চে উপস্থিত সম্মানিত অতিথিবৃন্দ এবং উদ্বোধনী অনুষ্ঠানে উপস্থিত সকল সম্মানিত অ্যালামনাইগণ বেলুন উড়িয়ে আনন্দ উল্লাসের মধ্য দিয়ে উদ্বোধনী অনুষ্ঠানের মাধ্যমে একে-অপরকে বরণ করে নেন।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এরপর শত শিল্পীর লাইভ অর্কেস্ট্রা, সংগীত এবং নৃত্য পরিবেশনের মধ্য দিয়ে অনুষ্ঠান শুরু হয়। শতবর্ষ উপলক্ষে প্রকাশিত গ্রন্থসমূহের মোড়ক উম্মোচন ও ‘শিল্পীর রং তুলিতে ঢাকা বিশ্ববিদ্যালয়’ প্রদর্শনী উদ্বোধন করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">শতবর্ষের মিলনমেলায় ‘রং তুলিতে ঢাকা বিশ্ববিদ্যালয়’ শীর্ষক কর্মসূচিতে ১০০জন চিত্রশিল্পীর চিত্রকর্ম নিয়ে একটি প্রদর্শনীর ব্যবস্থা ছিল। এছাড়া শতবর্ষের স্মারকগ্রন্থ সহ অন্যান্য প্রকাশনাগুলো অ্যালামনাইদের মাঝে বিক্রয়ের ব্যবস্থা ছিলো। সম্মানিত অ্যালামনাইদের স্বাস্থ্য সুরক্ষার কথা বিবেচনায় নিয়ে একটি মেডিকেল ক্যাম্প করা হয়েছিল। যাতে কোনো অ্যালামনাই অসুস্থ হয়ে পড়লে তাৎক্ষণিক চিকিৎসা প্রদান করা সম্ভব হয়। এছাড়াও অংশগ্রহণকারী অ্যালামনাইদের সার্বক্ষণিক নিরাপত্তা, আপ্যায়ন ও পর্যাপ্ত সেনিটেশন-এর ব্যবস্থা রাখা হয়েছিল।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">শতবর্ষের মিলনমেলায় দিনব্যাপী অনুষ্ঠানের মধ্য দিয়ে সম্মানিত অ্যালামনাইগণ তাঁদের পুরনো দিনের স্মৃতি স্মরণ করেন এবং একে অপরকে তা সহভাগিতা করেন। শতবর্ষের মিলনমেলার মূল আকর্ষণ ছিলো জাকজমকপূর্ণ সাংস্কৃতিক অনুষ্ঠান।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">সাংস্কৃতিক অনুষ্ঠানের শুরুতে রবীন্দ্র, নজরুল ও হারানো দিনের গান পরিবেশন করেন অদিতি মহসীন, প্রিয়াংকা গোপ ও হৈমন্তী রক্ষিত। ৬০ ও ৭০ দশকের বাংলা চলচ্চিত্রের গান নিয়ে নৃত্য পরিবেশন করেন চাঁদনি, সিনথিয়া, মিম চৌধুরী ও তাঁদের দল। আধুনিক ও পুরানো দিনের গান পরিবেশনা করেন জনপ্রিয় শিল্পী সামিনা চৌধুরী ও সন্দীপন। প্রেমা ও তাঁর দলের অংশগ্রহণে পরিবেশন করা হয় আকর্ষণীয় রায়বেশি নৃত্য। এরপর সবথেকে বড় আকর্ষণ ছিল জনপ্রিয় ও জাতীয় পুরস্কারপ্রাপ্ত শিল্পী সাবিনা ইয়াসমিন-এর একক পরিবেশনা। বর্তমান প্রজন্মের শিল্পী নিশীতা বড়য়া-এর সংগীত পরিবেশনার মধ্য দিয়ে সাংস্কৃতিক অনুষ্ঠানের সমাপ্তি ঘোষণা করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">শতবর্ষে এসে শিক্ষার গুণগত মান ও পরিবেশ উন্নয়ন এবং গবেষণার পরিধি সম্প্রসারণ করে চতুর্থ শিল্প বিপ্লবের উপযোগী দক্ষ মানব সম্পদ তৈরির লক্ষ্য নিয়ে বর্তমান প্রশাসন একটি পূর্ণাঙ্গ মাস্টার প্ল্যান প্রণয়ন করেছেন।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">আমাদের পূর্বসূরি শ্রদ্ধেয় অ্যালামনাইদের নেতৃত্ব ও অংশগ্রহণে সৃষ্টি বাংলাদেশকে মুক্তিযুদ্ধের চেতনায় বঙ্গবন্ধুর আদর্শে অসাম্প্রদায়িক, গণতান্ত্রিক, মানবিক ও কল্যাণকামী উন্নত সম্বৃদ্ধ রাষ্ট্র প্রতিষ্ঠায় বর্তমান প্রজন্মকে দক্ষ মানব সম্পদ হিসেবে গড়ে তোলার ক্ষেত্রে যার যার অবস্থান থেকে শ্রদ্ধেয় অ্যালামনাইবৃন্দের প্রতি আহ্বান জানানো হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">&nbsp;</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা বিশ্ববিদ্যালয়ের সকল হল ও বিভাগীয় অ্যালামনাই অ্যাসোসিয়েশন একটি পরিবার হয়ে সম্মিলিত প্রচেষ্টায় মাতৃসম অ্যালমা মেটার ঢাকা বিশ্ববিদ্যালয়ের প্রতি আমাদের যে দায়বদ্ধতা তা মোচনের ক্ষেত্রে ভবিষ্যতের উদ্যোগ আরো বেগবান এবং কার্যকর হবে, শতবর্ষে দাঁড়িয়ে এই প্রত্যাশা করার মধ্য দিয়ে শতবর্ষের মিলনমেলা শেষ হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">শতবর্ষের মিলনমেলার প্রকাশনা</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন বেশ কয়েকটি প্রকাশনা বের করে।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">যাত্রিক বিশেষ সংখ্যা</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর সম্মানিত সদস্যদের স্মৃতি ও ঢাকা বিশ্ববিদ্যালয় সম্পর্কিত লেখা নিয়ে নিয়মিত যাত্রিকের বিশেষ একটি সংখ্যা মুদ্রণ করা হয়। যা সম্মানিত অ্যালামনাইদের মধ্যে বিনামূল্যে বিতরণ করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">শতবর্ষের ঢাকা বিশ্ববিদ্যালয়</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন কর্তৃক ঢাকা বিশ্ববিদ্যালয়ের শতবর্ষ উপলক্ষে&nbsp; দেশের খ্যাতিমান ও ঢাকা বিশ্ববিদ্যালয়ের বরেণ্য ১০০ জন অ্যালামনাই-এর লেখা সম্বলিত ‘শতবর্ষের ঢাকা বিশ্ববিদ্যালয় শিরোনামে শতবর্ষ স্মারকগ্রন্থ প্রকাশ করা হয়। গ্রন্থটির সম্পাদনার দায়িত্বে ছিলেন একুশে পদকপ্রাপ্ত সাংবাদিক অজয় দাশগুপ্ত। গ্রন্থটি অত্যন্ত তথ্যবহুল ও স্মৃতি বিজড়িত লেখায় পরিপূর্ণ। শতবর্ষের গৌরব, অর্জন, বৈচিত্র্য এবং এমনকি অপূর্ণতা ধারণের চেষ্টা করা হয়েছে এই গ্রন্থটিতে।</p>', 'Amin', 1, 1, 1, '2', 46, NULL, '2023-02-09 05:02:50', '2023-02-09 05:02:50'),
(6, 10, '2023-02-12', '03:42:58', 'New 2', 1, 'sub news 2', '<p>News Body</p>', 'Amin', 1, 1, 1, '2', 46, NULL, '2023-02-11 21:42:58', '2023-02-11 21:42:58'),
(7, 10, '2023-02-12', '03:44:12', 'New 2', 1, 'sub news 2', '<p>News Body</p>', 'Amin', 1, 1, 1, '2', 46, NULL, '2023-02-11 21:44:12', '2023-02-11 21:44:12'),
(8, 11, '2023-02-12', '03:51:10', 'Notice One', 1, 'Notice sub one', '<p>Notice Details</p>', 'Amin', 1, 1, 1, '2', 46, NULL, '2023-02-11 21:51:10', '2023-02-11 21:51:10');

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
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1);

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
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `page_rows`
--
ALTER TABLE `page_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
