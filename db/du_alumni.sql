-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 04:31 AM
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
-- Table structure for table `committees`
--

CREATE TABLE `committees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `committee_his_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `serial` double(8,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `committee_histories`
--

CREATE TABLE `committee_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `_is_current` int(11) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `committee_histories`
--

INSERT INTO `committee_histories` (`id`, `name`, `period`, `status`, `_is_current`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'Executive Committee Members (2022-2025)', '2022-2025', 1, 1, '2022-01-01', '2023-02-28', '2023-02-13 03:54:05', '2023-02-13 21:27:02'),
(2, 'Executive Committee Members (2023-2027)', '2023-2027', 1, 0, '2023-01-01', '2027-12-31', '2023-02-13 04:22:16', '2023-02-13 04:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(2, 'Bangladesh', 'BN', '2023-02-12 04:01:25', '2023-02-12 04:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor', 'B', '2023-02-12 04:47:53', '2023-02-12 04:47:53'),
(2, 'Master', 'M', '2023-02-12 04:48:02', '2023-02-12 04:48:02'),
(3, 'MPhil', 'P', '2023-02-12 04:48:14', '2023-02-12 04:48:14'),
(4, 'Doctorate', 'D', '2023-02-12 04:48:25', '2023-02-12 04:48:25'),
(5, 'Other', 'O', '2023-02-12 04:48:33', '2023-02-12 04:48:33'),
(6, 'NA', 'N', '2023-02-12 04:48:40', '2023-02-12 04:48:40'),
(7, 'President', '', '2023-02-13 03:29:10', '2023-02-13 03:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'President', '', '2023-02-13 03:30:18', '2023-02-13 03:30:18'),
(2, 'Senior Vice President', '', '2023-02-13 03:31:30', '2023-02-13 03:31:30'),
(3, 'Vice President', '', '2023-02-13 03:31:38', '2023-02-13 03:31:38'),
(4, 'Secretary General', '', '2023-02-13 03:31:59', '2023-02-13 03:31:59'),
(5, 'Treasurer', '', '2023-02-13 03:32:07', '2023-02-13 03:32:07'),
(6, 'Joint Secretary General', '', '2023-02-13 03:32:14', '2023-02-13 03:32:14'),
(7, 'Organizing Secretary', '', '2023-02-13 03:32:28', '2023-02-13 03:32:28'),
(8, 'Literary & Publications Secretary', '', '2023-02-13 03:32:35', '2023-02-13 03:32:35'),
(9, 'Education & Library Secretary', '', '2023-02-13 03:32:42', '2023-02-13 03:32:42'),
(10, 'Publicity & Public Relations Secretary', '', '2023-02-13 03:32:48', '2023-02-13 03:32:48'),
(11, 'Office Secretary', '', '2023-02-13 03:32:54', '2023-02-13 03:32:54'),
(12, 'Cultural Secretary', '', '2023-02-13 03:33:00', '2023-02-13 03:33:00'),
(13, 'Law Secretary', '', '2023-02-13 03:33:08', '2023-02-13 03:33:08'),
(14, 'Social Welfare Secretary', '', '2023-02-13 03:33:13', '2023-02-13 03:33:13'),
(15, 'Entertainment Secretary', '', '2023-02-13 03:33:23', '2023-02-13 03:33:23'),
(16, 'International Communication Secretary', '', '2023-02-13 03:33:33', '2023-02-13 03:33:33'),
(17, 'Ex-Officio Member of Executive Committee As Immediate Past President', '', '2023-02-13 03:33:40', '2023-02-13 03:33:40'),
(18, 'Ex-Officio Member of Executive Committee As Immediate Past Secretary General', '', '2023-02-13 03:33:47', '2023-02-13 03:33:47'),
(19, 'Executive Committee Member', '', '2023-02-13 03:33:54', '2023-02-13 03:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `exam_sessions`
--

CREATE TABLE `exam_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_sessions`
--

INSERT INTO `exam_sessions` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, '1949-50', '', '2023-02-12 04:53:55', '2023-02-12 04:53:55'),
(2, '1950-51', '', '2023-02-12 04:54:06', '2023-02-12 04:54:06'),
(3, '1951-52', '', '2023-02-12 04:54:16', '2023-02-12 04:54:16'),
(4, '1952-53', '', '2023-02-12 04:54:31', '2023-02-12 04:54:31'),
(5, '1953-54', '', '2023-02-12 04:54:41', '2023-02-12 04:54:41'),
(6, '1954-55', '', '2023-02-12 04:54:54', '2023-02-12 04:54:54'),
(7, '1955-56', '', '2023-02-12 04:55:04', '2023-02-12 04:55:04'),
(8, '1956-57', '', '2023-02-12 04:55:15', '2023-02-12 04:55:15'),
(9, '1957-58', '', '2023-02-12 04:55:24', '2023-02-12 04:55:24'),
(10, '1958-59', '', '2023-02-12 04:55:33', '2023-02-12 04:55:33'),
(11, '1959-60', '', '2023-02-12 04:55:43', '2023-02-12 04:55:43'),
(12, '1960-61', '', '2023-02-12 04:55:53', '2023-02-12 04:55:53'),
(13, '1961-62', '', '2023-02-12 04:56:03', '2023-02-12 04:56:03'),
(14, '1962-63', '', '2023-02-12 04:56:12', '2023-02-12 04:56:12'),
(15, '1963-64', '', '2023-02-12 04:56:21', '2023-02-12 04:56:21');

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
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Male', 'M', '2023-02-12 04:43:52', '2023-02-12 04:43:52'),
(2, 'Female', 'F', '2023-02-12 04:43:59', '2023-02-12 04:43:59'),
(3, 'Others', 'O', '2023-02-12 04:44:06', '2023-02-12 04:44:06');

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
-- Table structure for table `home_page_setups`
--

CREATE TABLE `home_page_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `serial` double(8,2) NOT NULL,
  `_limit` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `block_type` int(11) NOT NULL COMMENT '1=main block,2=Side Block',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_setups`
--

INSERT INTO `home_page_setups` (`id`, `menu_id`, `serial`, `_limit`, `status`, `block_type`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 4.00, 5, 1, 1, 1, NULL, NULL, '2023-02-12 02:58:15'),
(2, 2, 12.00, 5, 0, 1, 1, NULL, NULL, '2023-02-12 02:58:15'),
(3, 3, 11.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(4, 4, 10.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(5, 5, 9.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(6, 6, 8.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(7, 7, 7.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(8, 8, 3.00, 5, 1, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(9, 9, 6.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(10, 10, 1.00, 5, 1, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(11, 11, 2.00, 5, 1, 2, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(12, 12, 5.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(13, 13, 13.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15');

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
(1, 'post-image/0212202304334263e86c26507e2.jpg', 3, 10, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-11 22:33:42', '2023-02-11 22:33:42'),
(2, 'post-image/0212202304345263e86c6c9f86f.jpg', 4, 10, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-11 22:34:52', '2023-02-11 22:34:52'),
(3, 'post-image/0212202304355463e86caac30dd.jpg', 5, 10, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-11 22:35:54', '2023-02-11 22:35:54'),
(4, 'post-image/0212202304365763e86ce9c94ea.jpg', 6, 11, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-11 22:36:57', '2023-02-11 22:36:57'),
(5, 'post-image/0212202304373563e86d0fd93f7.jpg', 7, 11, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-11 22:37:35', '2023-02-11 22:37:35'),
(6, 'post-image/0212202304382863e86d4498d9c.jpg', 8, 11, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-11 22:38:28', '2023-02-11 22:38:28'),
(7, 'post-image/0212202304393863e86d8a01738.jpg', 9, 12, 1, '', '', '', 0, '0', 1, 0, 46, NULL, '2023-02-11 22:39:38', '2023-02-11 22:39:38'),
(8, 'post-image/0212202304393863e86d8a02fd0.jpg', 9, 12, 1, '', '', '', 0, '0', 2, 0, 46, NULL, '2023-02-11 22:39:38', '2023-02-11 22:39:38'),
(9, 'post-image/0212202304393863e86d8a04323.jpg', 9, 12, 1, '', '', '', 0, '0', 3, 0, 46, NULL, '2023-02-11 22:39:38', '2023-02-11 22:39:38'),
(10, 'post-image/0212202304393863e86d8a05213.jpg', 9, 12, 1, '', '', '', 0, '0', 4, 0, 46, NULL, '2023-02-11 22:39:38', '2023-02-11 22:39:38'),
(11, 'post-image/0212202304405563e86dd72c522.jpg', 10, 12, 1, '', '', '', 0, '0', 1, 0, 46, NULL, '2023-02-11 22:40:55', '2023-02-11 22:40:55'),
(12, 'post-image/0212202304405563e86dd72da31.jpg', 10, 12, 1, '', '', '', 0, '0', 2, 0, 46, NULL, '2023-02-11 22:40:55', '2023-02-11 22:40:55'),
(13, 'post-image/0212202304405563e86dd72e975.jpg', 10, 12, 1, '', '', '', 0, '0', 3, 0, 46, NULL, '2023-02-11 22:40:55', '2023-02-11 22:40:55'),
(14, 'post-image/0212202304405563e86dd72f9cf.jpg', 10, 12, 1, '', '', '', 0, '0', 4, 0, 46, NULL, '2023-02-11 22:40:55', '2023-02-11 22:40:55'),
(15, 'post-image/0212202304405563e86dd730f8d.jpg', 10, 12, 1, '', '', '', 0, '0', 5, 0, 46, NULL, '2023-02-11 22:40:55', '2023-02-11 22:40:55'),
(16, 'post-image/0212202304423463e86e3aaa40b.jpg', 11, 13, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-11 22:42:34', '2023-02-11 22:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `membership_types`
--

CREATE TABLE `membership_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership_types`
--

INSERT INTO `membership_types` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'General Member', 'G', '2023-02-12 04:46:11', '2023-02-12 04:46:11'),
(2, 'Associate Member', 'A', '2023-02-12 04:46:29', '2023-02-12 04:46:29'),
(3, 'Life Member', 'L', '2023-02-12 04:46:43', '2023-02-12 04:46:43'),
(4, 'Type Honorary Member', 'H', '2023-02-12 04:47:02', '2023-02-12 04:47:02'),
(5, 'Life Member (Associate)', 'S', '2023-02-12 04:47:17', '2023-02-12 04:47:17'),
(6, 'Other', 'O', '2023-02-12 04:47:25', '2023-02-12 04:47:25'),
(7, 'Not Registered', 'N', '2023-02-12 04:47:36', '2023-02-12 04:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `member_infos`
--

CREATE TABLE `member_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `member_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entery_degree` int(11) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `admission_session` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alumni_category` int(11) DEFAULT NULL,
  `entery_degree_completion_year` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exit_degree` int(11) DEFAULT NULL,
  `exit_year` int(11) DEFAULT NULL,
  `current_affiliation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parmanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scanced_form` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_infos`
--

INSERT INTO `member_infos` (`id`, `date`, `member_id`, `entery_degree`, `batch`, `admission_session`, `alumni_category`, `entery_degree_completion_year`, `first_name`, `last_name`, `gender_id`, `exit_degree`, `exit_year`, `current_affiliation`, `designation`, `contact_no`, `email`, `parmanent_address`, `current_address`, `note`, `scanced_form`, `member_image`, `entry_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2023-02-13', 'A12B1957M5', 1, 12, '1954-55', 2, 1957, 'Farhad', 'Ali', NULL, 2, 1958, 'Current Affrication', 'Designation', '8979879879', 'farhadali0507@gmail.com', 'Permanente  Address', 'Current Address', 'Note', 'member-images/0213202305052563e9c5152f4aa.png', 'member-images/0213202305052563e9c5152f11a.jpg', 46, NULL, '2023-02-12 23:05:25', '2023-02-13 00:20:35'),
(6, '2023-02-13', 'S10B1980M1', 1, 10, '1951-52', 5, 1980, 'Kazi Matin Uddin', 'Ahmed', NULL, 2, 1981, 'Department of Geology, University of Dhaka', 'Chairman and Professor', '+8801711846840', 'kmahmed@du.ac.bd', 'Vill+PO: Ratanpur\r\nPS: Nabinagar\r\nDis: Brahmanbaria', 'Department of Geology\r\nCurzon Hall Campus\r\nUniversity of Dhaka\r\nDhaka 1000', 'note', 'member-images/0213202306200363e9d693d876e.jpg', 'member-images/0213202305185363e9c83d56646.jpg', 46, NULL, '2023-02-12 23:18:53', '2023-02-13 00:20:03');

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
(158, '2023_02_07_101532_create_images_table', 48),
(159, '2023_02_12_044537_create_sliders_table', 49),
(160, '2023_02_12_060530_create_home_page_setups_table', 50),
(161, '2023_02_12_090332_create_countries_table', 51),
(162, '2023_02_12_090544_create_degrees_table', 52),
(163, '2023_02_12_090611_create_membership_types_table', 53),
(164, '2023_02_12_090642_create_paying_systems_table', 54),
(165, '2023_02_12_090705_create_exam_sessions_table', 55),
(166, '2023_02_12_090731_create_genders_table', 56),
(167, '2023_02_12_090757_create_year_batches_table', 57),
(168, '2023_02_12_091718_create_member_infos_table', 58),
(169, '2023_02_13_071126_create_designations_table', 59),
(170, '2023_02_13_071343_create_committees_table', 60),
(171, '2023_02_13_071358_create_committee_histories_table', 61);

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
-- Table structure for table `paying_systems`
--

CREATE TABLE `paying_systems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paying_systems`
--

INSERT INTO `paying_systems` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'Cash', '2023-02-12 04:22:03', '2023-02-12 04:22:03'),
(2, 'Check', 'Check', '2023-02-12 04:22:13', '2023-02-12 04:49:05'),
(3, 'Pay-Order', 'PO', '2023-02-12 04:49:20', '2023-02-12 04:49:20'),
(4, 'Bkash', 'Bkash', '2023-02-12 04:49:28', '2023-02-12 04:49:28'),
(5, 'others(specify in Note)', 'others(specify in Note)', '2023-02-12 04:49:36', '2023-02-12 04:49:36');

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
(262, 'admin-post-delete', 'web', 'Page/Post', NULL, NULL),
(263, 'slider-list', 'web', 'Slider', NULL, NULL),
(264, 'slider-create', 'web', 'Slider', NULL, NULL),
(265, 'slider-edit', 'web', 'Slider', NULL, NULL),
(266, 'slider-delete', 'web', 'Slider', NULL, NULL),
(267, 'home-page-setup', 'web', 'Settings', '2022-10-29 23:30:15', '2022-10-29 23:30:15'),
(268, 'countries-list', 'web', 'Country', NULL, NULL),
(269, 'countries-create', 'web', 'Country', NULL, NULL),
(270, 'countries-edit', 'web', 'Country', NULL, NULL),
(271, 'countries-delete', 'web', 'Country', NULL, NULL),
(272, 'degrees-list', 'web', 'Degree', NULL, NULL),
(273, 'degrees-create', 'web', 'Degree', NULL, NULL),
(274, 'degrees-edit', 'web', 'Degree', NULL, NULL),
(275, 'degrees-delete', 'web', 'Degree', NULL, NULL),
(276, 'exam-session-list', 'web', 'Exam Session', NULL, NULL),
(277, 'exam-session-create', 'web', 'Exam Session', NULL, NULL),
(278, 'exam-session-edit', 'web', 'Exam Session', NULL, NULL),
(279, 'exam-session-delete', 'web', 'Exam Session', NULL, NULL),
(280, 'gender-list', 'web', 'Gender', NULL, NULL),
(281, 'gender-create', 'web', 'Gender', NULL, NULL),
(282, 'gender-edit', 'web', 'Gender', NULL, NULL),
(283, 'gender-delete', 'web', 'Gender', NULL, NULL),
(284, 'paying-system-list', 'web', 'Paying System Method', NULL, NULL),
(285, 'paying-system-create', 'web', 'Paying System Method', NULL, NULL),
(286, 'paying-system-edit', 'web', 'Paying System Method', NULL, NULL),
(287, 'paying-system-delete', 'web', 'Paying System Method', NULL, NULL),
(288, 'year-batch-list', 'web', 'Year Batch', NULL, NULL),
(289, 'year-batch-create', 'web', 'Year Batch', NULL, NULL),
(290, 'year-batch-edit', 'web', 'Year Batch', NULL, NULL),
(291, 'year-batch-delete', 'web', 'Year Batch', NULL, NULL),
(292, 'membership-type-list', 'web', 'Membership Type', NULL, NULL),
(293, 'membership-type-create', 'web', 'Membership Type', NULL, NULL),
(294, 'membership-type-edit', 'web', 'Membership Type', NULL, NULL),
(295, 'membership-type-delete', 'web', 'Membership Type', NULL, NULL),
(296, 'member-info-list', 'web', 'Member Information', NULL, NULL),
(297, 'member-info-create', 'web', 'Member Information', NULL, NULL),
(298, 'member-info-edit', 'web', 'Member Information', NULL, NULL),
(299, 'member-info-delete', 'web', 'Member Information', NULL, NULL),
(300, 'designations-list', 'web', 'Designations', NULL, NULL),
(301, 'designations-create', 'web', 'Designations', NULL, NULL),
(302, 'designations-edit', 'web', 'Designations', NULL, NULL),
(303, 'designations-delete', 'web', 'Designations', NULL, NULL),
(304, 'committee-history-list', 'web', 'Committee History', NULL, NULL),
(305, 'committee-history-create', 'web', 'Committee History', NULL, NULL),
(306, 'committee-history-edit', 'web', 'Committee History', NULL, NULL),
(307, 'committee-history-delete', 'web', 'Committee History', NULL, NULL),
(308, 'committee-list', 'web', 'Committee', NULL, NULL),
(309, 'committee-create', 'web', 'Committee', NULL, NULL),
(310, 'committee-edit', 'web', 'Committee', NULL, NULL),
(311, 'committee-delete', 'web', 'Committee', NULL, NULL);

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
(1, 9, '2023-02-12', '04:32:39', 'Social Responsibility of Dhaka University Alumni Association', 0, 'Sub Title of  Social Responsibility', '<p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">commemoration the DUAA objectives one of which says,” to carry out CSR activities and to undertake, support and carry out welfare and development activities of Dhaka University and DUAA”, It has been taking up various programs. <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">We arranged about 700 scholarships every year covering all 56 departments and 16 institutes </strong>through collecting donations from individuals, alumni and organizations from home and abroad. Besides, DUAA takes up various projects, publishes books and souvenirs, and organizes seminars, programs and job counselling.<strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">“Dhaka University is my pride; it is time now to re-pay our debts”</strong> (Dhaka Bishwabidyalaya amar ahangker; Ekhoni samoy dai mochaner) — is the current motto of DUAA.</p><p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">DUAA now ventures to engage in social work in collaboration with other socio-economic organizations. It collects funds from various banks and financial institutions, business enterprises, generous individuals and the like to arrange scholarships, computer training to students and children of staff members of the university, organize various socio-cultural programs, seminars, job counseling etc. DUAA, in the mean time, distributed 200 bi-cycles for the students in a bid to encourage cycling aimed at maintaining a pollution free society and helping physical fitness in collaboration with Green Belt Trust, a student based NGO. Such program will continue. Another organization named ‘Ethics Club’ in collaboration with DUAA organize seminars aimed at developing the minds of the students and other people in order to build a society free of corruption. In the mean time we chalked out a bi-annual program of seminars from July to December 2011 in various faculties and departments. In collaboration with Green Belt Trust, Fire Service & Civil Defence and Development Initiative DUAA formed a Disaster Management Force (DMF) with 500 volunteers selected from 10 Halls of students of Dhaka University who will be trained by Fire Service & Civil Defence in a two year program funded by Development Initiative. In the mean time, DMF was launched through a ceremony on 26 May 2011 with 50 volunteers recruited from two halls trained for a short period who took part in a demonstration on disaster rescue operation led by Fire Service and Civil Defence. Vice Chancellor of Dhaka University was the Chief Guest and DG of Fire Service & Civil Defence, the special guest.</p><p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Development of research activities of the University has been taken up to be implemented in near future along with the improvement of the Library. In the mean time a project was taken up to erect a number of sophisticated and decorative entry gates of the University. The first one is being processed sponsored by the NCC Bank at Shahbag point. Gradually other will be designed and erected.</p>', 'Amin', 1, 1, 1, '4', 46, NULL, '2023-02-11 22:25:58', '2023-02-11 22:32:39'),
(2, 2, '2023-02-12', '04:32:21', 'Journey of DUAA', 0, 'Sub title of journey of duaa', '<p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">commemoration the DUAA objectives one of which says,” to carry out CSR activities and to undertake, support and carry out welfare and development activities of Dhaka University and DUAA”, It has been taking up various programs. <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">We arranged about 700 scholarships every year covering all 56 departments and 16 institutes </strong>through collecting donations from individuals, alumni and organizations from home and abroad. Besides, DUAA takes up various projects, publishes books and souvenirs, and organizes seminars, programs and job counselling.<strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">“Dhaka University is my pride; it is time now to re-pay our debts”</strong> (Dhaka Bishwabidyalaya amar ahangker; Ekhoni samoy dai mochaner) — is the current motto of DUAA.</p><p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">DUAA now ventures to engage in social work in collaboration with other socio-economic organizations. It collects funds from various banks and financial institutions, business enterprises, generous individuals and the like to arrange scholarships, computer training to students and children of staff members of the university, organize various socio-cultural programs, seminars, job counseling etc. DUAA, in the mean time, distributed 200 bi-cycles for the students in a bid to encourage cycling aimed at maintaining a pollution free society and helping physical fitness in collaboration with Green Belt Trust, a student based NGO. Such program will continue. Another organization named ‘Ethics Club’ in collaboration with DUAA organize seminars aimed at developing the minds of the students and other people in order to build a society free of corruption. In the mean time we chalked out a bi-annual program of seminars from July to December 2011 in various faculties and departments. In collaboration with Green Belt Trust, Fire Service & Civil Defence and Development Initiative DUAA formed a Disaster Management Force (DMF) with 500 volunteers selected from 10 Halls of students of Dhaka University who will be trained by Fire Service & Civil Defence in a two year program funded by Development Initiative. In the mean time, DMF was launched through a ceremony on 26 May 2011 with 50 volunteers recruited from two halls trained for a short period who took part in a demonstration on disaster rescue operation led by Fire Service and Civil Defence. Vice Chancellor of Dhaka University was the Chief Guest and DG of Fire Service & Civil Defence, the special guest.</p><p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Development of research activities of the University has been taken up to be implemented in near future along with the improvement of the Library. In the mean time a project was taken up to erect a number of sophisticated and decorative entry gates of the University. The first one is being processed sponsored by the NCC Bank at Shahbag point. Gradually other will be designed and erected.</p>', 'Amin', 1, 1, 1, '4', 46, NULL, '2023-02-11 22:26:32', '2023-02-11 22:32:21'),
(3, 10, '2023-02-12', '04:33:42', 'ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে শতবর্ষের মিলনমেলা অনুষ্ঠিত', 1, 'অত্যন্ত আনন্দ উল্লাসে গত ১২ মার্চ ২০২২ উদ্যাপিত হলো ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন আয়োজিত ‘শতবর্ষের', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অত্যন্ত আনন্দ উল্লাসে গত ১২ মার্চ ২০২২ উদ্যাপিত হলো ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন আয়োজিত ‘শতবর্ষের মিলনমেলা’। ‘বাংলাদেশের পথযাত্রায় ঢাকা বিশ্ববিদ্যালয় অ্যালামনাই’ এই প্রতিপাদ্য নিয়ে প্রায় ১২,০০০ সম্মানিত সদস্যের উপস্থিতিতে ঢাকা বিশ্ববিদ্যালয় খেলার মাঠে অনুষ্ঠিত হয় ‘শতবর্ষের মিলনমেলা’।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানে প্রধান অতিথি হিসেবে উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ের প্রবীণতম শিক্ষার্থী মতিউল ইসলাম, বিশেষ অতিথি&nbsp; শতবর্ষ উদ্যাপন কমিটির চেয়ারম্যান জনাব সৈয়দ মঞ্জুর এলাহী, ঢাকা বিশ্ববিদ্যালয়ের মাননীয়&nbsp; প্রো-ভাইস চ্যান্সেলর (শিক্ষা) অধ্যাপক ড. এ. এস. এম. মাকসুদ কামাল,&nbsp; প্রো-ভাইস চ্যান্সেলর (প্রশাসন) অধ্যাপক ড. মুহাম্মদ সামাদ, অনুষ্ঠানে সভাপতিত্ব করেন অ্যালামনাই অ্যাসোসিয়েশনের সম্মানিত সভাপতি এ. কে. আজাদ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">দিনব্যাপী অনুষ্ঠানের শুরুতেই জাতীয় পতাকা উত্তোলন ও বেলুন উড়ানোর মধ্য দিয়ে উদ্বোধনী অনুষ্ঠান অনুষ্ঠিত হয়। জাতীয় পতাকা উত্তোলন করেন প্রধান অতিথি ঢাকা বিশ্ববিদ্যালয়ের প্রবীণতম শিক্ষার্থী মো. মতিউল ইসলাম। ঢাকা বিশ্ববিদ্যালয়ের পতাকা উত্তোলন করেন বিশেষ অতিথি ঢাকা বিশ্ববিদ্যালয়ের প্রো-ভাইস চ্যান্সেলর (শিক্ষা) অধ্যাপক ড. এ. এস. এম. মাকসুদ কামাল, প্রো-ভাইস চ্যান্সেলর (প্রশাসন) অধ্যাপক ড. মুহাম্মদ সামাদ। ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের পতাকা উত্তোলন করেন অ্যালামনাই অ্যাসোসিয়েশন-এর সভাপতি জনাব এ. কে. আজাদ, সিনিয়র সহ-সভাপতি মোল্লা মোহাম্মাদ আবু কাওছার, মহাসচিব রঞ্জন কর্মকার, শতবর্ষ উদ্যাপন কমিটির চেয়ারম্যান জনাব সৈয়দ মঞ্জুর এলাহী, শতবর্ষ উদ্যাপন কমিটির আহ্বায়ক ও সহ-সভাপতি জনাব আনোয়ার-উল-আলম চৌধুরী পারভেজসহ ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের কার্যনির্বাহী কমিটির সদস্যবৃন্দ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">উদ্বোধনী মঞ্চে উপস্থিত সম্মানিত অতিথিবৃন্দ এবং উদ্বোধনী অনুষ্ঠানে উপস্থিত সকল সম্মানিত অ্যালামনাইগণ বেলুন উড়িয়ে আনন্দ উল্লাসের মধ্য দিয়ে উদ্বোধনী অনুষ্ঠানের মাধ্যমে একে-অপরকে বরণ করে নেন।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এরপর শত শিল্পীর লাইভ অর্কেস্ট্রা, সংগীত এবং নৃত্য পরিবেশনের মধ্য দিয়ে অনুষ্ঠান শুরু হয়। শতবর্ষ উপলক্ষে প্রকাশিত গ্রন্থসমূহের মোড়ক উম্মোচন ও ‘শিল্পীর রং তুলিতে ঢাকা বিশ্ববিদ্যালয়’ প্রদর্শনী উদ্বোধন করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">শতবর্ষের মিলনমেলায় ‘রং তুলিতে ঢাকা বিশ্ববিদ্যালয়’ শীর্ষক কর্মসূচিতে ১০০জন চিত্রশিল্পীর চিত্রকর্ম নিয়ে একটি প্রদর্শনীর ব্যবস্থা ছিল। এছাড়া শতবর্ষের স্মারকগ্রন্থ সহ অন্যান্য প্রকাশনাগুলো অ্যালামনাইদের মাঝে বিক্রয়ের ব্যবস্থা ছিলো। সম্মানিত অ্যালামনাইদের স্বাস্থ্য সুরক্ষার কথা বিবেচনায় নিয়ে একটি মেডিকেল ক্যাম্প করা হয়েছিল। যাতে কোনো অ্যালামনাই অসুস্থ হয়ে পড়লে তাৎক্ষণিক চিকিৎসা প্রদান করা সম্ভব হয়। এছাড়াও অংশগ্রহণকারী অ্যালামনাইদের সার্বক্ষণিক নিরাপত্তা, আপ্যায়ন ও পর্যাপ্ত সেনিটেশন-এর ব্যবস্থা রাখা হয়েছিল।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">শতবর্ষের মিলনমেলায় দিনব্যাপী অনুষ্ঠানের মধ্য দিয়ে সম্মানিত অ্যালামনাইগণ তাঁদের পুরনো দিনের স্মৃতি স্মরণ করেন এবং একে অপরকে তা সহভাগিতা করেন। শতবর্ষের মিলনমেলার মূল আকর্ষণ ছিলো জাকজমকপূর্ণ সাংস্কৃতিক অনুষ্ঠান।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">সাংস্কৃতিক অনুষ্ঠানের শুরুতে রবীন্দ্র, নজরুল ও হারানো দিনের গান পরিবেশন করেন অদিতি মহসীন, প্রিয়াংকা গোপ ও হৈমন্তী রক্ষিত। ৬০ ও ৭০ দশকের বাংলা চলচ্চিত্রের গান নিয়ে নৃত্য পরিবেশন করেন চাঁদনি, সিনথিয়া, মিম চৌধুরী ও তাঁদের দল। আধুনিক ও পুরানো দিনের গান পরিবেশনা করেন জনপ্রিয় শিল্পী সামিনা চৌধুরী ও সন্দীপন। প্রেমা ও তাঁর দলের অংশগ্রহণে পরিবেশন করা হয় আকর্ষণীয় রায়বেশি নৃত্য। এরপর সবথেকে বড় আকর্ষণ ছিল জনপ্রিয় ও জাতীয় পুরস্কারপ্রাপ্ত শিল্পী সাবিনা ইয়াসমিন-এর একক পরিবেশনা। বর্তমান প্রজন্মের শিল্পী নিশীতা বড়য়া-এর সংগীত পরিবেশনার মধ্য দিয়ে সাংস্কৃতিক অনুষ্ঠানের সমাপ্তি ঘোষণা করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">শতবর্ষে এসে শিক্ষার গুণগত মান ও পরিবেশ উন্নয়ন এবং গবেষণার পরিধি সম্প্রসারণ করে চতুর্থ শিল্প বিপ্লবের উপযোগী দক্ষ মানব সম্পদ তৈরির লক্ষ্য নিয়ে বর্তমান প্রশাসন একটি পূর্ণাঙ্গ মাস্টার প্ল্যান প্রণয়ন করেছেন।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">আমাদের পূর্বসূরি শ্রদ্ধেয় অ্যালামনাইদের নেতৃত্ব ও অংশগ্রহণে সৃষ্টি বাংলাদেশকে মুক্তিযুদ্ধের চেতনায় বঙ্গবন্ধুর আদর্শে অসাম্প্রদায়িক, গণতান্ত্রিক, মানবিক ও কল্যাণকামী উন্নত সম্বৃদ্ধ রাষ্ট্র প্রতিষ্ঠায় বর্তমান প্রজন্মকে দক্ষ মানব সম্পদ হিসেবে গড়ে তোলার ক্ষেত্রে যার যার অবস্থান থেকে শ্রদ্ধেয় অ্যালামনাইবৃন্দের প্রতি আহ্বান জানানো হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">&nbsp;</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা বিশ্ববিদ্যালয়ের সকল হল ও বিভাগীয় অ্যালামনাই অ্যাসোসিয়েশন একটি পরিবার হয়ে সম্মিলিত প্রচেষ্টায় মাতৃসম অ্যালমা মেটার ঢাকা বিশ্ববিদ্যালয়ের প্রতি আমাদের যে দায়বদ্ধতা তা মোচনের ক্ষেত্রে ভবিষ্যতের উদ্যোগ আরো বেগবান এবং কার্যকর হবে, শতবর্ষে দাঁড়িয়ে এই প্রত্যাশা করার মধ্য দিয়ে শতবর্ষের মিলনমেলা শেষ হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">শতবর্ষের মিলনমেলার প্রকাশনা</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন বেশ কয়েকটি প্রকাশনা বের করে।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">যাত্রিক বিশেষ সংখ্যা</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর সম্মানিত সদস্যদের স্মৃতি ও ঢাকা বিশ্ববিদ্যালয় সম্পর্কিত লেখা নিয়ে নিয়মিত যাত্রিকের বিশেষ একটি সংখ্যা মুদ্রণ করা হয়। যা সম্মানিত অ্যালামনাইদের মধ্যে বিনামূল্যে বিতরণ করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">শতবর্ষের ঢাকা বিশ্ববিদ্যালয়</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন কর্তৃক ঢাকা বিশ্ববিদ্যালয়ের শতবর্ষ উপলক্ষে&nbsp; দেশের খ্যাতিমান ও ঢাকা বিশ্ববিদ্যালয়ের বরেণ্য ১০০ জন অ্যালামনাই-এর লেখা সম্বলিত ‘শতবর্ষের ঢাকা বিশ্ববিদ্যালয় শিরোনামে শতবর্ষ স্মারকগ্রন্থ প্রকাশ করা হয়। গ্রন্থটির সম্পাদনার দায়িত্বে ছিলেন একুশে পদকপ্রাপ্ত সাংবাদিক অজয় দাশগুপ্ত। গ্রন্থটি অত্যন্ত তথ্যবহুল ও স্মৃতি বিজড়িত লেখায় পরিপূর্ণ। শতবর্ষের গৌরব, অর্জন, বৈচিত্র্য এবং এমনকি অপূর্ণতা ধারণের চেষ্টা করা হয়েছে এই গ্রন্থটিতে।</p>', 'Amin', 1, 1, 1, '4', 46, NULL, '2023-02-11 22:33:42', '2023-02-11 22:33:42'),
(4, 10, '2023-02-12', '04:34:52', 'ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর প্রতিষ্ঠার ৭৩ বছর উদযাপন', 1, 'ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের ৭৩তম প্রতিষ্ঠাবার্ষিকী উপলক্ষে ২৪ সেপ্টেম্বর ২০২১, শুক্রবার বিকেল ৪টায় ঢাকা বিশ্ববিদ্যালয়ের সিনেট ভবনস্থ অ্যালামনাই ফ্লোরে যথাযথ স্বাস্থ্যবিধি মেনে উদ্বোধনী অনুষ্ঠান, শুভেচ্ছা জ্ঞাপন এবং সাংস্কৃতিক অনুষ্ঠানের আয়োজন করা হয়।', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের ৭৩তম প্রতিষ্ঠাবার্ষিকী উপলক্ষে ২৪ সেপ্টেম্বর ২০২১, শুক্রবার বিকেল ৪টায় ঢাকা বিশ্ববিদ্যালয়ের সিনেট ভবনস্থ অ্যালামনাই ফ্লোরে যথাযথ স্বাস্থ্যবিধি মেনে উদ্বোধনী অনুষ্ঠান, শুভেচ্ছা জ্ঞাপন এবং সাংস্কৃতিক অনুষ্ঠানের আয়োজন করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">পতাকা উত্তোলন, কেক কাটার মধ্য দিয়ে অনুষ্ঠানটি উদ্বোধন করেন ঢাকা বিশ্ববিদ্যালয়ের মাননীয় উপাচার্য ও ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের প্রধান পৃষ্ঠপোষক অধ্যাপক ড. মো. আখতারুজ্জামান। তিনি ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের কার্যনির্বাহী কমিটি, সকল জীবন সদস্যদের শুভেচ্ছা জানান এবং ঢাকা বিশ্ববিদ্যালয়ের অবকাঠামোগত উন্নয়ন ও শিক্ষার্থীদের বৃত্তি প্রদানের জন্য ধন্যবাদ জানান। এসময় আরো উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ের প্রো-ভাইস-চ্যান্সেলর (শিক্ষা) অধ্যাপক ড. এস এম মাকসুদ কামাল, ঢাকা বিশ্ববিদ্যালয় শিক্ষক সমিতির সাধারণ সম্পাদক অধ্যাপক ড. নিজামুল হক ভুঁইয়া। প্রো ভাইস-চ্যান্সেলর এবং শিক্ষক সমিতির সাধারণ সম্পাদক ঢাকা বিশ্ববিদ্যালয়ের শতবর্ষ উদ্যাপন উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর অংশগ্রহণ এবং বিশ্ববিদ্যালয়ের সার্বিক উন্নয়নে সহযোগিতা প্রদান করায় কৃতজ্ঞতা প্রকাশ করেন।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানে সভাপতিত্ব করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর সভাপতি জনাব এ. কে. আজাদ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এরপর ঢাকা বিশ্ববিদ্যালয়ের শতবর্ষ এবং ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের ৭৩তম প্রতিষ্ঠাবার্ষিকী উপলক্ষে বিশিষ্ট ব্যক্তিবর্গ ভিডিও বার্তার মাধ্যমে শুভেচ্ছা বার্তা পাঠান। অনলাইনে যুক্ত হয়ে শুভেচ্ছা জ্ঞাপন বক্তব্য রাখেনÑ সিনিয়র সহ-সভাপতি মোল্লা মোহম্মাদ আবু কাওছার, ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের প্রাপ্তন সভাপতি ও মহাসচিব রকীবউদ্দীন আহম্মেদ। এছাড়াও শুভেচ্ছা জ্ঞাপন করেন সহ-সভাপতি আনোয়ার-উল-আলম চৌধুরী (পারভেজ), সহ-সভাপতি শাইখ সিরাজ, মহাসচিব রঞ্জন কর্মকার, কোষাধ্যক্ষ দেওয়ান রাশিদুল হাসান এবং কার্যনির্বাহী কমিটির সদস্য সেলিমা খাতুন।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><img src=\"https://duaa-bd.org/wp-content/uploads/2021/10/duaa73.jpg\" alt=\"\" width=\"725\" height=\"407\" class=\"aligncenter size-full wp-image-1349\" srcset=\"https://duaa-bd.org/wp-content/uploads/2021/10/duaa73.jpg 725w, https://duaa-bd.org/wp-content/uploads/2021/10/duaa73-300x168.jpg 300w\" sizes=\"(max-width: 725px) 100vw, 725px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; clear: both; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">বক্তাগণ বিশ্ববিদ্যালয়ের সার্বিক উন্নয়নে অ্যালামনাইদের সার্বিক সহযোগিতার প্রতিশ্রুতি ব্যক্ত করেন এবং শতবর্ষী বিশ্ববিদ্যালয়ের গৌরবের ও ঐতিহ্য রক্ষায় বর্তমান প্রজন্মকে আরো আন্তরিক ও সচেষ্ট হওয়ার আহ্বান জানান।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানটি সঞ্চালনা করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর যুগ্ম মহাসচিব আশরাফুল হক মুকুল।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এরপর এক মনোজ্ঞ সাংস্কৃতিক অনুষ্ঠানে সংগীত পরিবেশন করেন শিল্পী প্রিয়াঙ্কা গোপ এবং নৃত্য পরিবেশন করেন নৃত্যশিল্পী সামিনা হোসেন প্রেমা। সাংস্কৃতিক অনুষ্ঠান পরিচালনা করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সাংস্কৃতিক সম্পাদক রোকাইয়া হাসিনা নিলি।</p>', 'Amin', 1, 1, 1, '0', 46, NULL, '2023-02-11 22:34:52', '2023-02-11 22:34:52'),
(5, 10, '2023-02-12', '04:35:54', 'জাতীয় শোক দিবস উপলক্ষে “বাংলাদেশের বিরুদ্ধে ষড়যন্ত্র ও বঙ্গবন্ধু হত্যাকান্ড”- শীর্ষক একটি সেমিনার অনুষ্ঠিত।', 1, 'ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর আয়োজনে জাতীয় শোক দিবস উপলক্ষে ‘বাংলাদেশের বিরুদ্ধে ষড়যন্ত্র ও বঙ্গবন্ধু হত্যাকান্ড-’ শীর্ষক একটি সেমিনার  ২৮ আগস্ট ২০২১, শনিবার সকাল ১০:৩০ মিনিটে ঢাকা বিশ্ববিদ্যালয়ের নবাব নওয়াব আলী চৌধুরী সিনেট ভবনস্থ অ্যালামনাই ফ্লোরে যথাযথ স্বাস্থ্যবিধি মেনে অনুষ্ঠিত হয়।', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর আয়োজনে জাতীয় শোক দিবস উপলক্ষে ‘বাংলাদেশের বিরুদ্ধে ষড়যন্ত্র ও বঙ্গবন্ধু হত্যাকান্ড-’ শীর্ষক একটি সেমিনার&nbsp; ২৮ আগস্ট ২০২১, শনিবার সকাল ১০:৩০ মিনিটে ঢাকা বিশ্ববিদ্যালয়ের নবাব নওয়াব আলী চৌধুরী সিনেট ভবনস্থ অ্যালামনাই ফ্লোরে যথাযথ স্বাস্থ্যবিধি মেনে অনুষ্ঠিত হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">সেমিনারে প্রধান অতিথি হিসেবে উপস্থিত ছিলেন বাংলাদেশ আওয়ামী লীগের সাধারণ সম্পাদক ও গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের সড়ক পরিবহন ও সেতু মন্ত্রী জনাব ওবায়দুল কাদের, বিশেষ অতিথি হিসেবে উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ের মাননীয় উপাচার্য ও ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের প্রধান পৃষ্ঠপোষক অধ্যাপক ড. মো. আখতারুজ্জামান। মূল প্রবন্ধ উপস্থাপন করেন ঢাকা বিশ্ববিদ্যালয়ের কলা অনুষদের ডিন অধ্যাপক ড. আবু মো. দেলোয়ার হোসেন। মূল প্রবন্ধের উপর আলোচনায় অংশ নেন ঢাকা বিশ্ববিদ্যালয়ের আইন অনুষদের ডিন ও ঢাকা বিশ্ববিদ্যালয় শিক্ষক সমিতির সভাপতি অধ্যাপক ড. রহমত উল্লাহ এবং ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সহ-সভাপতি আনোয়ার-উল-আলম চোধুরী (পারভেজ) এবং মহাসচিব জনাব রঞ্জন কর্মকার। স্বাগত বক্তব্য রাখেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সিনিয়র সহ-সভাপতি মোল্লা মোহাম্মাদ আবু কাওছার। সেমিনারটি সঞ্চালনা করেন ঢাকা বিশ্ববিদ্যালয়ের ইনস্টিটিউট অব ডিজাস্টার ম্যানেজমেন্ট এন্ড ভালনারেবিলিটি স্টাডিজ এর অধ্যাপক ড. খোন্দকার মোকাদ্দেম হোসেন ও ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সাংগঠনিক সম্পাদক এ. কে. এম. আফজালুর রহমান বাবু। সেমিনারে ওয়েবিনার যুক্ত এবং স্বশরীরে উপস্থিত ছিলেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সম্মানিত জীবনসদস্যবৃন্দ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানের সভাপতিত্ব করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সভাপতি জনাব এ. কে. আজাদ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">সেমিনারের শুরুতেই ১৯৭৫ সালের ১৫ আগস্ট স্বাধীনতা বিরোধী, দেশি-বিদেশি ষড়যন্ত্রকারীদের হাতে নিহত সর্বকালের সর্বশ্রেষ্ঠ বাঙালি জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমান, বঙ্গমাতা ফজিলাতুন্নেছা মুজিব সহ সকল শহীদের শ্রদ্ধা জানিয়ে পুস্পার্ঘ অর্পন এবং শহীদের প্রতি শ্রদ্ধা জানিয়ে দাঁড়িয়ে এক মিনিট নীরবতা পালন।<br>অ্যালামনাই অ্যাসোসিয়েশনের পক্ষ থেকে দাবী জানানো হয় জাতীয় কমিশন গঠন করে ১৫ আগস্ট ও ২১ আগস্ট হত্যাকান্ডের ষড়যন্ত্রকারীদের বর্তমান ও ভবিষ্যৎ প্রজন্মের কাছে তুলে ধরার।</p>', 'Amin', 1, 3, 1, '4', 46, NULL, '2023-02-11 22:35:54', '2023-02-11 22:35:54'),
(6, 11, '2023-02-12', '04:36:57', 'Member Information Update', 1, 'Honorable DUAA members, kindly update your email address by clicking this link. https://duaa-bd.org/update/ You may also visit DUAA office to', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Honorable DUAA members, kindly update your email address by clicking this link.<br>https://duaa-bd.org/update/</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">You may also visit DUAA office to update your email address:<br>Credentials to log into DUAA’s Konnekt platform will be sent to your email.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">About DUAA’s Konnekt Platform:<br>https://www.konnektios.net<br>https://www.youtube.com/@konnektios3721<br>https://www.facebook.com/profile.php?id=100083271254392</p>', 'Amin', 1, 1, 1, '0', 46, NULL, '2023-02-11 22:36:57', '2023-02-11 22:36:57'),
(7, 11, '2023-02-12', '04:37:35', 'দরপত্র-বিজ্ঞপ্তি', 1, '', '', 'Amin', 1, 1, 1, '0', 46, NULL, '2023-02-11 22:37:35', '2023-02-11 22:37:35'),
(8, 11, '2023-02-12', '04:38:28', 'সাব-কমিটি গঠন সংক্রান্ত বিজ্ঞপ্তি', 1, '', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">সম্মানিত জীবন সদস্যদের জ্ঞাতার্থে জানানো যাচ্ছে যে, ঢাকা বিশ্ববিদ্যালয়ের শতবর্ষপূর্তি উপলক্ষ্যে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন কর্তৃক আয়োজিত শতবর্ষের মিলনমেলার কাজগুলোকে সুন্দর ও সুশৃঙ্খলভাবে পরিচালনার জন্য বিভিন্ন সাব-কমিটি গঠন করা হচ্ছে। আপনি যদি সাব-কমিটিতে যুক্ত থেকে কাজ করতে আগ্রহী থাকেন তাহলে আগামী ১৩ নভেম্বর ২০২১ তারিখের মধ্যে অফিসে এসে নাম প্রদানের জন্য অনুরোধ করা হলো।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">উল্লেখ্য যে, নাম প্রদানকৃত সদস্যদেরকে অবশ্যই সময় দিতে হবে এবং কাজ করার মনোভাব থাকতে হবে।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ধন্যবাদান্তে,</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: &quot;Open Sans&quot;, serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">রঞ্জন কর্মকার<br>মহাসচিব</p>', 'Amin', 1, 1, 1, '0', 46, NULL, '2023-02-11 22:38:28', '2023-02-11 22:38:28'),
(9, 12, '2023-02-12', '04:39:37', 'আন্তর্জাতিক মাতৃভাষা দিবসে শহিদদের প্রতি শ্রদ্ধা নিবেদন', 1, '', '', 'Amin', 1, 1, 1, '1', 46, NULL, '2023-02-11 22:39:37', '2023-02-11 22:39:37'),
(10, 12, '2023-02-12', '04:40:55', 'সন্ত্রাস, জঙ্গিবাদ, মাদক ও বাল্যবিবাহের বিরুদ্ধে প্রচারাভিযান ২০১৮', 1, '', '', 'Amin', 1, 2, 1, '1', 46, NULL, '2023-02-11 22:40:55', '2023-02-11 22:40:55'),
(11, 13, '2023-02-12', '04:43:08', 'সমাজ পরিবর্তনে শিক্ষার্থী অভিজ্ঞতা বিনিময় অনুষ্ঠান', 1, 'গত ০৪ মার্চ ২০১৮ ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন ২০১৫-২০১৬ শিক্ষাবর্ষের বৃত্তিপ্রাপ্ত ‘সামাজিক উদ্যোগে স্বেচ্ছাশ্রম’ কর্মকান্ডে অংশগ্রহণ করা শিক্ষার্থীদের নিয়ে ঢাকা', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">গত ০৪ মার্চ ২০১৮ ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন ২০১৫-২০১৬ শিক্ষাবর্ষের বৃত্তিপ্রাপ্ত ‘সামাজিক উদ্যোগে স্বেচ্ছাশ্রম’ কর্মকান্ডে অংশগ্রহণ করা শিক্ষার্থীদের নিয়ে ঢাকা বিশ্ববিদ্যালয়ের টিএসসি তে ‘সমাজ পরিবর্তনে শিক্ষার্থী অভিজ্ঞতা বিনিময় অনুষ্ঠানের’ আয়োজন করে। উক্ত অনুষ্ঠানে সভাপতিত্ত্ব করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশ এর সভাপতি জনাব এ. কে. আজাদ এবং প্রধান অতিথি হিসেবে উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ে উপ-উপাচার্য (শিক্ষা) অধ্যাপক ড. নাসরীন আহমাদ এবং বিশেষ অতিথি হিসেবে উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ে শিক্ষক সমিতির সভাপতি অধ্যাপক ড. এস এম মাকসুদ কামাল।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><img class=\"alignleft size-medium wp-image-813\" src=\"https://duaa-bd.org/wp-content/uploads/2018/03/img1-300x209.jpg\" alt=\"\" width=\"300\" height=\"209\" srcset=\"https://duaa-bd.org/wp-content/uploads/2018/03/img1-300x209.jpg 300w, https://duaa-bd.org/wp-content/uploads/2018/03/img1-392x272.jpg 392w, https://duaa-bd.org/wp-content/uploads/2018/03/img1-130x90.jpg 130w, https://duaa-bd.org/wp-content/uploads/2018/03/img1.jpg 458w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\">রাজশাহী অঞ্চলে আমরা তিনটি বাল্যবিয়ে ঠেকিয়ে দিতে পেরেছি। প্রাথমিক শিক্ষা থেকে ঝরে পড়া একঝাঁক শিশুকে আবারও পড়াশোনা কিভাবে শুরু করা যাবে, দিয়েছি সেই পরামর্শ। আমাদের উৎসাহে মাগুরায় মাদক বিক্রি নিষিদ্ধে সক্রিয় উদ্যোগের প্রকাশ্য ঘোষণা দেন একজন জনপ্রতিনিধি। কোনো ধর্মেই যে জঙ্গিবাদের স্থান নেই- সে ব্যাপারেও প্রত্যন্ত অঞ্চলের শিক্ষার্থীদের সঙ্গে প্রাণখোলা আলাপ হয়েছে।<img class=\"alignright size-medium wp-image-815\" src=\"https://duaa-bd.org/wp-content/uploads/2018/03/img3-300x195.jpg\" alt=\"\" width=\"300\" height=\"195\" srcset=\"https://duaa-bd.org/wp-content/uploads/2018/03/img3-300x195.jpg 300w, https://duaa-bd.org/wp-content/uploads/2018/03/img3.jpg 488w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: right; margin-left: 30px;\"></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">&nbsp;</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">&nbsp;</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">এভাবেই নিজেদের অভিজ্ঞতার কথা জানান ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের উদ্যোগে পরিচালিত ‘সামাজিক উদ্যোগে স্বেচ্ছাশ্রম’ ক্যাম্পেইনে অংশগ্রহণকারী শিক্ষার্থীরা। অ্যালামনাই অ্যাসোসিয়েশনের আর্থিক সহযোগিতায় নিজেদের পারিবারিক অসচ্ছলতাকে জয় করে মেধার সর্বোচ্চ বিকাশে পরিশ্রম করে চলেছেন তারা। পাশাপাশি সম্পৃক্ত হয়েছেন সন্ত্রাস-জঙ্গিবাদ-মাদক এবং বাল্যবিয়ে প্রতিরোধের লক্ষ্যে গ্রাম ও শিক্ষা প্রতিষ্ঠান পর্যায়ে পরিচালিত প্রচার কার্যক্রমেও। গত ০৪ মার্চ ২০১৮ রোববার ঢাবির টিএসসি মিলনায়তনে ’সমাজ পরিবর্তনে শিক্ষার্থী’ শীর্ষক অনুষ্ঠানে সেই কার্যক্রমে পাওয়া অভিজ্ঞতাই বিনিময় করেন শিক্ষার্থীরা।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><img class=\"alignleft size-medium wp-image-814\" src=\"https://duaa-bd.org/wp-content/uploads/2018/03/img5-300x210.jpg\" alt=\"\" width=\"300\" height=\"210\" srcset=\"https://duaa-bd.org/wp-content/uploads/2018/03/img5-300x210.jpg 300w, https://duaa-bd.org/wp-content/uploads/2018/03/img5-130x90.jpg 130w, https://duaa-bd.org/wp-content/uploads/2018/03/img5.jpg 450w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন “শিক্ষা ও সামাজিক উন্নয়নের জন্য বৃত্তি” এই অঙ্গীকার নিয়ে ঢাকা বিশ্ববিদ্যালয়ের অসচ্ছল শিক্ষার্থীদের মধ্যে বৃত্তি কার্যক্রম শুরু করে। এরই ধারাবাহিকতায় ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন ঢাকা বিশ্ববিদ্যালয়ের ২০১৫-২০১৬ শিক্ষাবর্ষের ৭০৪ জন অসচ্ছল মেধাবী শিক্ষার্থীকে আগামী ৪ বছরের জন্য প্রতি মাসে প্রত্যেককে ২,৫০০ টাকা করে বৃত্তি প্রদান করে যাচ্ছে। বৃত্তির পাশাপাশি শিক্ষার্থীরা যাতে সামাজিক উন্নয়নে ভূমিকা রাখতে পারে সেজন্য ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন এ বছর বৃত্তিপ্রাপ্ত শিক্ষার্থীদের নিয়ে ‘সামাজিক উদ্যোগে স্বেচ্ছাশ্রম’ শীর্ষক একটি ক্যাম্পেইনের আয়োজন করে। বিশ্ববিদ্যালয়ের শীতকালীন ছুটিতে বৃত্তিপ্রাপ্ত শিক্ষার্থীরা নিজ নিজ এলাকায় গিয়ে ২০ থেকে ৩০ ডিসেম্বর ২০১৭ স্কুল ও কলেজের শিক্ষার্থী এবং এলাকার যুব সমাজের মাঝে তাদের এই সামাজিক কার্যক্রম পরিচালনা করে। ৬০টি জেলার মোট অংশগ্রহণকারী ৬১০ জন (ছেলে ৩৮৭ এবং মেয়ে ২২৩) শিক্ষার্থী ১৬৩ টি গ্রুপে ভাগ হয়ে এই কার্যক্রম পরিচালনা করে।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><img class=\"alignleft size-medium wp-image-811\" src=\"https://duaa-bd.org/wp-content/uploads/2018/03/img4-300x205.jpg\" alt=\"\" width=\"300\" height=\"205\" srcset=\"https://duaa-bd.org/wp-content/uploads/2018/03/img4-300x205.jpg 300w, https://duaa-bd.org/wp-content/uploads/2018/03/img4-130x90.jpg 130w, https://duaa-bd.org/wp-content/uploads/2018/03/img4.jpg 457w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\"></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">শিক্ষার্থীদের অভিজ্ঞতা শোনার পর প্রধান অতিথির বক্তব্যে অধ্যাপক ড. নাসরীন আহমাদ বলেন, সাবেক ও বর্তমান প্রত্যেক শিক্ষার্থী ঢাকা বিশ্ববিদ্যালয়ের একেকজন দূত। তাই অ্যালামনাইদের এমন উদ্যোগ সত্যিই প্রশংসনীয়। সন্ত্রাস-জঙ্গিবাদ-মাদক এবং বাল্যবিয়ে রোধের পাশাপাশি পরিবেশ রক্ষা, পরিস্কার-পরিচ্ছন্নতা ও সঠিক ইতিহাস জানানোর বিষয়ে সচেতনতা তৈরির আহ্বান জানান তিনি।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><br></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">&nbsp;</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">&nbsp;</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><img class=\"alignleft size-medium wp-image-808\" src=\"https://duaa-bd.org/wp-content/uploads/2018/03/img2-300x212.jpg\" alt=\"\" width=\"300\" height=\"212\" srcset=\"https://duaa-bd.org/wp-content/uploads/2018/03/img2-300x212.jpg 300w, https://duaa-bd.org/wp-content/uploads/2018/03/img2.jpg 451w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\">সভাপতির বক্তব্যে এ. কে. আজাদ বলেন, সামাজিক পরিবর্তনে স্বেচ্ছা কার্যক্রমে অংশ নিয়ে শিক্ষার্থীরা অসাধ্য সাধন করেছে। তাদের অভিজ্ঞতা সবার জন্যই শিক্ষণীয়। এসব শিক্ষার্থীর মধ্যে আটজনকে ‘অ্যালামনাই অ্যাওয়ার্ড ফর সোশ্যাল অ্যাক্টিভিটিস’ প্রদান করা হবে। বিশ্ববিদ্যালয়ৈর টিএসসিসহ বিভিন্ন অবকাঠামো উন্নয়নে অ্যালামনাই অ্যাসোসিয়েশনের উদ্যোগ ও পরিকল্পনার কথা তুলে ধরে দেশের বিশিষ্ট এ উদ্যোক্তা বলেন, বিশ্বব্যাপী বিশ্ববিদ্যালয়ের উন্নয়নে অ্যালামনাইরা অগ্রণী ভূমিকা রাখেন। ঢাকা বিশ্ববিদ্যালয়ের বিপুল সম্ভাবনাকে কাজে লাগাতে এখানকার অ্যালামনাই অ্যাসোসিয়েশনও প্রস্তুত। এ ক্ষেত্রে বিশ্ববিদ্যালয় প্রশাসনের সহযোগিতা কামনা করেন তিনি।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">বিশেষ অতিথির বক্তব্যে ঢাকা বিশ্ববিদ্যালয় শিক্ষক সমিতির সভাপতি অধ্যাপক ড. এস এম মাকসুদ কামাল বলেন, মাদক, বাল্য বিয়ে, জঙ্গিবাদ, ইভটিজিং একেকটি সামাজিক ক্ষত। এসবের বিরুদ্ধে সামাজিক প্রতিরোধের কোনো বিকল্প নেই।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">অ্যাসোসিয়েশনের মহাসচিব রঞ্জন কর্মকারের সঞ্চালনায় অনুষ্ঠানে অন্যদের মধ্যে বক্তব্য দেন সহ-সভাপতি মোল্লা মো. আবু কাওছার, এসিআই গ্রুপের চেয়ারম্যান এম আনিস উদ দৌলা, অ্যাসোসিয়েশনের কার্যনির্বাহী সদস্য আনোয়ারুল আলম চৌধুরী পারভেজ। অ্যাসোসিয়েশনের নেতৃবৃন্দসহ অতিথিদের মধ্যে এ সময় মঞ্চে আর উপস্থিত ছিলেন মুনিরা খান, সেলিনা খালেক, মাহফুজা রহমান চৌধুরী বাবলী, শবনম শাহনাজ চৌধুরী প্রমুখ।</p>', 'Amin', 1, 1, 1, '4', 46, NULL, '2023-02-11 22:42:34', '2023-02-11 22:43:08');

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
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1);

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
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `posstion` float NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `slider_img`, `status`, `posstion`, `created_at`, `updated_at`) VALUES
(1, 'শতবর্ষের মিলনমেলা', 'শতবর্ষের মিলনমেলা', 'post-image/0212202305334563e87a39c5070.jpg', 1, 1, '2023-02-11 23:33:45', '2023-02-11 23:37:30'),
(2, 'শতবর্ষের মিলনমেলা', 'শতবর্ষের মিলনমেলা', 'post-image/0212202305360763e87ac776043.jpg', 1, 2, '2023-02-11 23:36:07', '2023-02-11 23:36:07'),
(4, 'শতবর্ষের মিলনমেলা', 'শতবর্ষের মিলনমেলা 3', 'post-image/0212202305380663e87b3ec9214.jpg', 1, 3, '2023-02-11 23:38:06', '2023-02-11 23:38:06');

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

-- --------------------------------------------------------

--
-- Table structure for table `year_batches`
--

CREATE TABLE `year_batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `year_batches`
--

INSERT INTO `year_batches` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, '1949', '', '2023-02-12 04:50:23', '2023-02-12 04:52:11'),
(2, '1950', '', '2023-02-12 04:50:32', '2023-02-12 04:52:21'),
(3, '1951', '', '2023-02-12 04:50:37', '2023-02-12 04:52:36'),
(4, '1952', '', '2023-02-12 04:50:41', '2023-02-12 04:52:46'),
(5, '1953', '', '2023-02-12 04:50:46', '2023-02-12 04:52:54'),
(6, '1954', '', '2023-02-12 04:50:49', '2023-02-12 04:53:02'),
(7, '1955', '', '2023-02-12 04:50:54', '2023-02-12 04:53:10'),
(8, '1956', '', '2023-02-12 04:51:00', '2023-02-12 04:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `committees`
--
ALTER TABLE `committees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committee_histories`
--
ALTER TABLE `committee_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_sessions`
--
ALTER TABLE `exam_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_setups`
--
ALTER TABLE `home_page_setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_types`
--
ALTER TABLE `membership_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_infos`
--
ALTER TABLE `member_infos`
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
-- Indexes for table `paying_systems`
--
ALTER TABLE `paying_systems`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `year_batches`
--
ALTER TABLE `year_batches`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `committees`
--
ALTER TABLE `committees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `committee_histories`
--
ALTER TABLE `committee_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `exam_sessions`
--
ALTER TABLE `exam_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_setups`
--
ALTER TABLE `home_page_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `membership_types`
--
ALTER TABLE `membership_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `member_infos`
--
ALTER TABLE `member_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `page_rows`
--
ALTER TABLE `page_rows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `paying_systems`
--
ALTER TABLE `paying_systems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `year_batches`
--
ALTER TABLE `year_batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
