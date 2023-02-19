-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 12:31 PM
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

--
-- Dumping data for table `committees`
--

INSERT INTO `committees` (`id`, `committee_his_id`, `member_id`, `designation_id`, `serial`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, 1.00, 0, 46, NULL, '2023-02-13 21:54:29', '2023-02-13 22:16:06'),
(2, 5, 6, 3, 3.00, 0, 46, NULL, '2023-02-13 21:54:29', '2023-02-13 22:16:06'),
(3, 5, 6, 3, 2.00, 0, 46, NULL, '2023-02-13 22:14:29', '2023-02-13 22:16:06'),
(4, 5, 1, 3, 1.00, 1, 46, NULL, '2023-02-13 22:16:06', '2023-02-13 22:16:06'),
(5, 5, 6, 1, 2.00, 1, 46, NULL, '2023-02-13 22:16:06', '2023-02-13 22:16:06'),
(6, 4, 1, 5, 2.00, 1, 46, NULL, '2023-02-13 22:27:52', '2023-02-15 01:19:57'),
(7, 4, 9, 14, 1.00, 1, 46, NULL, '2023-02-13 23:06:05', '2023-02-15 01:19:57'),
(8, 4, 8, 5, 3.00, 1, 46, NULL, '2023-02-15 00:21:18', '2023-02-15 01:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `committee_histories`
--

CREATE TABLE `committee_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_display` tinyint(4) NOT NULL DEFAULT 1,
  `serial` float NOT NULL DEFAULT 1,
  `_is_current` int(11) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `committee_histories`
--

INSERT INTO `committee_histories` (`id`, `name`, `period`, `status`, `is_display`, `serial`, `_is_current`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'Executive Committee Members (2022-2025)', '2022-2025', 1, 0, 1, 0, '2022-01-01', '2023-02-28', '2023-02-13 03:54:05', '2023-02-15 01:20:12'),
(3, 'Committee', '2022-2025', 1, 0, 1, 0, '2022-01-01', '2023-02-14', '2023-02-13 21:51:01', '2023-02-13 22:30:39'),
(4, 'Executive Committee Members (2022- 2025)', '535345', 1, 1, 1, 0, '2023-01-31', '2023-02-14', '2023-02-13 21:51:37', '2023-02-15 01:19:57'),
(5, 'Committee Duration 2022-2023', '2022-2023', 1, 1, 1, 0, '2022-01-01', '2023-02-14', '2023-02-13 21:54:29', '2023-02-13 22:16:06');

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
(1, 'Andorra', NULL, NULL, NULL),
(2, 'United Arab Emirates', NULL, NULL, NULL),
(3, 'Afghanistan', NULL, NULL, NULL),
(4, 'Antigua and Barbuda', NULL, NULL, NULL),
(5, 'Anguilla', NULL, NULL, NULL),
(6, 'Albania', NULL, NULL, NULL),
(7, 'Armenia', NULL, NULL, NULL),
(8, 'Angola', NULL, NULL, NULL),
(9, 'Antarctica', NULL, NULL, NULL),
(10, 'Argentina', NULL, NULL, NULL),
(11, 'American Samoa', NULL, NULL, NULL),
(12, 'Austria', NULL, NULL, NULL),
(13, 'Australia', NULL, NULL, NULL),
(14, 'Aruba', NULL, NULL, NULL),
(15, 'Azerbaijan', NULL, NULL, NULL),
(16, 'Bosnia and Herzegovina', NULL, NULL, NULL),
(17, 'Barbados', NULL, NULL, NULL),
(18, 'Bangladesh', NULL, NULL, NULL),
(19, 'Belgium', NULL, NULL, NULL),
(20, 'Burkina Faso', NULL, NULL, NULL),
(21, 'Bulgaria', NULL, NULL, NULL),
(22, 'Bahrain', NULL, NULL, NULL),
(23, 'Burundi', NULL, NULL, NULL),
(24, 'Benin', NULL, NULL, NULL),
(25, 'Saint Barthelemy', NULL, NULL, NULL),
(26, 'Bermuda', NULL, NULL, NULL),
(27, 'Brunei', NULL, NULL, NULL),
(28, 'Bolivia', NULL, NULL, NULL),
(29, 'Brazil', NULL, NULL, NULL),
(30, 'Bahamas, The', NULL, NULL, NULL),
(31, 'Bhutan', NULL, NULL, NULL),
(32, 'Bouvet Island', NULL, NULL, NULL),
(33, 'Botswana', NULL, NULL, NULL),
(34, 'Belarus', NULL, NULL, NULL),
(35, 'Belize', NULL, NULL, NULL),
(36, 'Canada', NULL, NULL, NULL),
(37, 'Cocos (Keeling) Islands', NULL, NULL, NULL),
(38, 'Congo, Democratic Republic of the', NULL, NULL, NULL),
(39, 'Central African Republic', NULL, NULL, NULL),
(40, 'Congo, Republic of the', NULL, NULL, NULL),
(41, 'Switzerland', NULL, NULL, NULL),
(42, 'Cote d\'Ivoire', NULL, NULL, NULL),
(43, 'Cook Islands', NULL, NULL, NULL),
(44, 'Chile', NULL, NULL, NULL),
(45, 'Cameroon', NULL, NULL, NULL),
(46, 'China', NULL, NULL, NULL),
(47, 'Colombia', NULL, NULL, NULL),
(48, 'Costa Rica', NULL, NULL, NULL),
(49, 'Cuba', NULL, NULL, NULL),
(50, 'Cape Verde', NULL, NULL, NULL),
(51, 'Curacao', NULL, NULL, NULL),
(52, 'Christmas Island', NULL, NULL, NULL),
(53, 'Cyprus', NULL, NULL, NULL),
(54, 'Czech Republic', NULL, NULL, NULL),
(55, 'Germany', NULL, NULL, NULL),
(56, 'Djibouti', NULL, NULL, NULL),
(57, 'Denmark', NULL, NULL, NULL),
(58, 'Dominica', NULL, NULL, NULL),
(59, 'Dominican Republic', NULL, NULL, NULL),
(60, 'Algeria', NULL, NULL, NULL),
(61, 'Ecuador', NULL, NULL, NULL),
(62, 'Estonia', NULL, NULL, NULL),
(63, 'Egypt', NULL, NULL, NULL),
(64, 'Western Sahara', NULL, NULL, NULL),
(65, 'Eritrea', NULL, NULL, NULL),
(66, 'Spain', NULL, NULL, NULL),
(67, 'Ethiopia', NULL, NULL, NULL),
(68, 'Finland', NULL, NULL, NULL),
(69, 'Fiji', NULL, NULL, NULL),
(70, 'Falkland Islands (Islas Malvinas)', NULL, NULL, NULL),
(71, 'Micronesia, Federated States of', NULL, NULL, NULL),
(72, 'Faroe Islands', NULL, NULL, NULL),
(73, 'France', NULL, NULL, NULL),
(74, 'France, Metropolitan', NULL, NULL, NULL),
(75, 'Gabon', NULL, NULL, NULL),
(76, 'United Kingdom', NULL, NULL, NULL),
(77, 'Grenada', NULL, NULL, NULL),
(78, 'Georgia', NULL, NULL, NULL),
(79, 'French Guiana', NULL, NULL, NULL),
(80, 'Guernsey', NULL, NULL, NULL),
(81, 'Ghana', NULL, NULL, NULL),
(82, 'Gibraltar', NULL, NULL, NULL),
(83, 'Greenland', NULL, NULL, NULL),
(84, 'Gambia, The', NULL, NULL, NULL),
(85, 'Guinea', NULL, NULL, NULL),
(86, 'Guadeloupe', NULL, NULL, NULL),
(87, 'Equatorial Guinea', NULL, NULL, NULL),
(88, 'Greece', NULL, NULL, NULL),
(89, 'South Georgia and the Islands', NULL, NULL, NULL),
(90, 'Guatemala', NULL, NULL, NULL),
(91, 'Guam', NULL, NULL, NULL),
(92, 'Guinea', NULL, NULL, NULL),
(93, 'Guyana', NULL, NULL, NULL),
(94, 'Hong Kong', NULL, NULL, NULL),
(95, 'Heard Island and McDonald Islands', NULL, NULL, NULL),
(96, 'Honduras', NULL, NULL, NULL),
(97, 'Croatia', NULL, NULL, NULL),
(98, 'Haiti', NULL, NULL, NULL),
(99, 'Hungary', NULL, NULL, NULL),
(100, 'Indonesia', NULL, NULL, NULL),
(101, 'Ireland', NULL, NULL, NULL),
(102, 'Israel', NULL, NULL, NULL),
(103, 'Isle of Man', NULL, NULL, NULL),
(104, 'India', NULL, NULL, NULL),
(105, 'British Indian Ocean Territory', NULL, NULL, NULL),
(106, 'Iraq', NULL, NULL, NULL),
(107, 'Iran', NULL, NULL, NULL),
(108, 'Iceland', NULL, NULL, NULL),
(109, 'Italy', NULL, NULL, NULL),
(110, 'Jersey', NULL, NULL, NULL),
(111, 'Jamaica', NULL, NULL, NULL),
(112, 'Jordan', NULL, NULL, NULL),
(113, 'Japan', NULL, NULL, NULL),
(114, 'Kenya', NULL, NULL, NULL),
(115, 'Kyrgyzstan', NULL, NULL, NULL),
(116, 'Cambodia', NULL, NULL, NULL),
(117, 'Kiribati', NULL, NULL, NULL),
(118, 'Comoros', NULL, NULL, NULL),
(119, 'Saint Kitts and Nevis', NULL, NULL, NULL),
(120, 'Korea, North', NULL, NULL, NULL),
(121, 'Korea, South', NULL, NULL, NULL),
(122, 'Kuwait', NULL, NULL, NULL),
(123, 'Cayman Islands', NULL, NULL, NULL),
(124, 'Kazakhstan', NULL, NULL, NULL),
(125, 'Laos', NULL, NULL, NULL),
(126, 'Lebanon', NULL, NULL, NULL),
(127, 'Saint Lucia', NULL, NULL, NULL),
(128, 'Liechtenstein', NULL, NULL, NULL),
(129, 'Sri Lanka', NULL, NULL, NULL),
(130, 'Liberia', NULL, NULL, NULL),
(131, 'Lesotho', NULL, NULL, NULL),
(132, 'Lithuania', NULL, NULL, NULL),
(133, 'Luxembourg', NULL, NULL, NULL),
(134, 'Latvia', NULL, NULL, NULL),
(135, 'Libya', NULL, NULL, NULL),
(136, 'Morocco', NULL, NULL, NULL),
(137, 'Monaco', NULL, NULL, NULL),
(138, 'Moldova', NULL, NULL, NULL),
(139, 'Montenegro', NULL, NULL, NULL),
(140, 'Saint Martin', NULL, NULL, NULL),
(141, 'Madagascar', NULL, NULL, NULL),
(142, 'Marshall Islands', NULL, NULL, NULL),
(143, 'Macedonia', NULL, NULL, NULL),
(144, 'Mali', NULL, NULL, NULL),
(145, 'Burma', NULL, NULL, NULL),
(146, 'Mongolia', NULL, NULL, NULL),
(147, 'Macau', NULL, NULL, NULL),
(148, 'Northern Mariana Islands', NULL, NULL, NULL),
(149, 'Martinique', NULL, NULL, NULL),
(150, 'Mauritania', NULL, NULL, NULL),
(151, 'Montserrat', NULL, NULL, NULL),
(152, 'Malta', NULL, NULL, NULL),
(153, 'Mauritius', NULL, NULL, NULL),
(154, 'Maldives', NULL, NULL, NULL),
(155, 'Malawi', NULL, NULL, NULL),
(156, 'Mexico', NULL, NULL, NULL),
(157, 'Malaysia', NULL, NULL, NULL),
(158, 'Mozambique', NULL, NULL, NULL),
(159, 'Namibia', NULL, NULL, NULL),
(160, 'New Caledonia', NULL, NULL, NULL),
(161, 'Niger', NULL, NULL, NULL),
(162, 'Norfolk Island', NULL, NULL, NULL),
(163, 'Nigeria', NULL, NULL, NULL),
(164, 'Nicaragua', NULL, NULL, NULL),
(165, 'Netherlands', NULL, NULL, NULL),
(166, 'Norway', NULL, NULL, NULL),
(167, 'Nepal', NULL, NULL, NULL),
(168, 'Nauru', NULL, NULL, NULL),
(169, 'Niue', NULL, NULL, NULL),
(170, 'New Zealand', NULL, NULL, NULL),
(171, 'Oman', NULL, NULL, NULL),
(172, 'Panama', NULL, NULL, NULL),
(173, 'Peru', NULL, NULL, NULL),
(174, 'French Polynesia', NULL, NULL, NULL),
(175, 'Papua New Guinea', NULL, NULL, NULL),
(176, 'Philippines', NULL, NULL, NULL),
(177, 'Pakistan', NULL, NULL, NULL),
(178, 'Poland', NULL, NULL, NULL),
(179, 'Saint Pierre and Miquelon', NULL, NULL, NULL),
(180, 'Pitcairn Islands', NULL, NULL, NULL),
(181, 'Puerto Rico', NULL, NULL, NULL),
(182, 'Gaza Strip', NULL, NULL, NULL),
(183, 'West Bank', NULL, NULL, NULL),
(184, 'Portugal', NULL, NULL, NULL),
(185, 'Palau', NULL, NULL, NULL),
(186, 'Paraguay', NULL, NULL, NULL),
(187, 'Qatar', NULL, NULL, NULL),
(188, 'Reunion', NULL, NULL, NULL),
(189, 'Romania', NULL, NULL, NULL),
(190, 'Serbia', NULL, NULL, NULL),
(191, 'Russia', NULL, NULL, NULL),
(192, 'Rwanda', NULL, NULL, NULL),
(193, 'Saudi Arabia', NULL, NULL, NULL),
(194, 'Solomon Islands', NULL, NULL, NULL),
(195, 'Seychelles', NULL, NULL, NULL),
(196, 'Sudan', NULL, NULL, NULL),
(197, 'Sweden', NULL, NULL, NULL),
(198, 'Singapore', NULL, NULL, NULL),
(199, 'Saint Helena, Ascension, and Tristan da Cunha', NULL, NULL, NULL),
(200, 'Slovenia', NULL, NULL, NULL),
(201, 'Svalbard', NULL, NULL, NULL),
(202, 'Slovakia', NULL, NULL, NULL),
(203, 'Sierra Leone', NULL, NULL, NULL),
(204, 'San Marino', NULL, NULL, NULL),
(205, 'Senegal', NULL, NULL, NULL),
(206, 'Somalia', NULL, NULL, NULL),
(207, 'Suriname', NULL, NULL, NULL),
(208, 'South Sudan', NULL, NULL, NULL),
(209, 'Sao Tome and Principe', NULL, NULL, NULL),
(210, 'El Salvador', NULL, NULL, NULL),
(211, 'Sint Maarten', NULL, NULL, NULL),
(212, 'Syria', NULL, NULL, NULL),
(213, 'Swaziland', NULL, NULL, NULL),
(214, 'Turks and Caicos Islands', NULL, NULL, NULL),
(215, 'Chad', NULL, NULL, NULL),
(216, 'French Southern and Antarctic Lands', NULL, NULL, NULL),
(217, 'Togo', NULL, NULL, NULL),
(218, 'Thailand', NULL, NULL, NULL),
(219, 'Tajikistan', NULL, NULL, NULL),
(220, 'Tokelau', NULL, NULL, NULL),
(221, 'Timor', NULL, NULL, NULL),
(222, 'Turkmenistan', NULL, NULL, NULL),
(223, 'Tunisia', NULL, NULL, NULL),
(224, 'Tonga', NULL, NULL, NULL),
(225, 'Turkey', NULL, NULL, NULL),
(226, 'Trinidad and Tobago', NULL, NULL, NULL),
(227, 'Tuvalu', NULL, NULL, NULL),
(228, 'Taiwan', NULL, NULL, NULL),
(229, 'Tanzania', NULL, NULL, NULL),
(230, 'Ukraine', NULL, NULL, NULL),
(231, 'Uganda', NULL, NULL, NULL),
(232, 'United States Minor Outlying Islands', NULL, NULL, NULL),
(233, 'United States', NULL, NULL, NULL),
(234, 'Uruguay', NULL, NULL, NULL),
(235, 'Uzbekistan', NULL, NULL, NULL),
(236, 'Holy See (Vatican City)', NULL, NULL, NULL),
(237, 'Saint Vincent and the Grenadines', NULL, NULL, NULL),
(238, 'Venezuela', NULL, NULL, NULL),
(239, 'British Virgin Islands', NULL, NULL, NULL),
(240, 'Virgin Islands', NULL, NULL, NULL),
(241, 'Vietnam', NULL, NULL, NULL),
(242, 'Vanuatu', NULL, NULL, NULL),
(243, 'Wallis and Futuna', NULL, NULL, NULL),
(244, 'Samoa', NULL, NULL, NULL),
(245, 'Kosovo', NULL, NULL, NULL),
(246, 'Yemen', NULL, NULL, NULL),
(247, 'Mayotte', NULL, NULL, NULL),
(248, 'South Africa', NULL, NULL, NULL),
(249, 'Zambia', NULL, NULL, NULL),
(250, 'Zimbabwe', NULL, NULL, NULL);

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
(1, 'Bachelor', 'B', NULL, NULL),
(2, 'Master', 'M', NULL, NULL),
(3, 'MPhil', 'P', NULL, NULL),
(4, 'Doctorate', 'D', NULL, NULL),
(5, 'Other', 'O', NULL, NULL),
(6, 'NA', 'N', NULL, NULL);

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
-- Table structure for table `document_downloads`
--

CREATE TABLE `document_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_doc_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` double(8,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_downloads`
--

INSERT INTO `document_downloads` (`id`, `name`, `_doc_file`, `serial`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Membership Application Form', 'post-image/0215202310320263ecb4a245312.pdf', 1.00, 1, 46, NULL, '2023-02-15 04:32:02', '2023-02-15 04:32:02'),
(2, 'Scholarship Application Form (2022)', 'post-image/0215202310350663ecb55a8fd81.pdf', 2.00, 1, 46, NULL, '2023-02-15 04:35:06', '2023-02-15 04:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `event_manages`
--

CREATE TABLE `event_manages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_left_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_right_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_manages`
--

INSERT INTO `event_manages` (`id`, `name`, `card_left_image`, `card_right_image`, `event_date`, `background_image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Picnic And General Meting 2023', 'event-images/0219202309273063f1eb82efb75.jpeg', 'event-images/0219202309273063f1eb82f0016.jpeg', '2023-05-31', 'event-images/0219202309273063f1eb82f0486.png', NULL, NULL, '2023-02-19 03:27:30', '2023-02-19 03:27:30');

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
(1, '1949-50', NULL, NULL, NULL),
(2, '1950-51', NULL, NULL, NULL),
(3, '1951-52', NULL, NULL, NULL),
(4, '1952-53', NULL, NULL, NULL),
(5, '1953-54', NULL, NULL, NULL),
(6, '1954-55', NULL, NULL, NULL),
(7, '1955-56', NULL, NULL, NULL),
(8, '1956-57', NULL, NULL, NULL),
(9, '1957-58', NULL, NULL, NULL),
(10, '1958-59', NULL, NULL, NULL),
(11, '1959-60', NULL, NULL, NULL),
(12, '1960-61', NULL, NULL, NULL),
(13, '1961-62', NULL, NULL, NULL),
(14, '1962-63', NULL, NULL, NULL),
(15, '1963-64', NULL, NULL, NULL),
(16, '1964-65', NULL, NULL, NULL),
(17, '1965-66', NULL, NULL, NULL),
(18, '1966-67', NULL, NULL, NULL),
(19, '1967-68', NULL, NULL, NULL),
(20, '1968-69', NULL, NULL, NULL),
(21, '1969-70', NULL, NULL, NULL),
(22, '1970-71', NULL, NULL, NULL),
(23, '1971-72', NULL, NULL, NULL),
(24, '1972-73', NULL, NULL, NULL),
(25, '1973-74', NULL, NULL, NULL),
(26, '1974-75', NULL, NULL, NULL),
(27, '1975-76', NULL, NULL, NULL),
(28, '1976-77', NULL, NULL, NULL),
(29, '1977-78', NULL, NULL, NULL),
(30, '1978-79', NULL, NULL, NULL),
(31, '1979-80', NULL, NULL, NULL),
(32, '1980-81', NULL, NULL, NULL),
(33, '1981-82', NULL, NULL, NULL),
(34, '1982-83', NULL, NULL, NULL),
(35, '1983-84', NULL, NULL, NULL),
(36, '1984-85', NULL, NULL, NULL),
(37, '1985-86', NULL, NULL, NULL),
(38, '1986-87', NULL, NULL, NULL),
(39, '1987-88', NULL, NULL, NULL),
(40, '1988-89', NULL, NULL, NULL),
(41, '1989-90', NULL, NULL, NULL),
(42, '1990-91', NULL, NULL, NULL),
(43, '1991-92', NULL, NULL, NULL),
(44, '1992-93', NULL, NULL, NULL),
(45, '1993-94', NULL, NULL, NULL),
(46, '1994-95', NULL, NULL, NULL),
(47, '1995-96', NULL, NULL, NULL),
(48, '1996-97', NULL, NULL, NULL),
(49, '1997-98', NULL, NULL, NULL),
(50, '1998-99', NULL, NULL, NULL),
(51, '1999-00', NULL, NULL, NULL),
(52, '2000-01', NULL, NULL, NULL),
(53, '2001-02', NULL, NULL, NULL),
(54, '2002-03', NULL, NULL, NULL),
(55, '2003-04', NULL, NULL, NULL),
(56, '2004-05', NULL, NULL, NULL),
(57, '2005-06', NULL, NULL, NULL),
(58, '2006-07', NULL, NULL, NULL),
(59, '2007-08', NULL, NULL, NULL),
(60, '2008-09', NULL, NULL, NULL),
(61, '2009-10', NULL, NULL, NULL),
(62, '2010-11', NULL, NULL, NULL),
(63, '2011-12', NULL, NULL, NULL),
(64, '2012-13', NULL, NULL, NULL),
(65, '2013-14', NULL, NULL, NULL),
(66, '2014-15', NULL, NULL, NULL),
(67, '2015-16', NULL, NULL, NULL),
(68, '2016-17', NULL, NULL, NULL),
(69, '2017-18', NULL, NULL, NULL),
(70, '2018-19', NULL, NULL, NULL),
(71, '2019-20', NULL, NULL, NULL),
(72, '2020-21', NULL, NULL, NULL),
(73, '2021-22', NULL, NULL, NULL),
(74, '2022-23', NULL, NULL, NULL),
(75, '2023-24', NULL, NULL, NULL),
(76, '2024-25', NULL, NULL, NULL),
(77, '2025-26', NULL, NULL, NULL),
(78, '2026-27', NULL, NULL, NULL),
(79, '2027-28', NULL, NULL, NULL),
(80, '2028-29', NULL, NULL, NULL),
(81, '2029-30', NULL, NULL, NULL),
(82, '2030-31', NULL, NULL, NULL),
(83, '2031-32', NULL, NULL, NULL),
(84, '2032-33', NULL, NULL, NULL),
(85, '2033-34', NULL, NULL, NULL),
(86, '2034-35', NULL, NULL, NULL),
(87, '2035-36', NULL, NULL, NULL),
(88, '2036-37', NULL, NULL, NULL),
(89, '2037-38', NULL, NULL, NULL),
(90, '2038-39', NULL, NULL, NULL),
(91, '2039-40', NULL, NULL, NULL),
(92, '2040-41', NULL, NULL, NULL),
(93, '2041-42', NULL, NULL, NULL),
(94, '2042-43', NULL, NULL, NULL),
(95, '2043-44', NULL, NULL, NULL),
(96, '2044-45', NULL, NULL, NULL),
(97, '2045-46', NULL, NULL, NULL),
(98, '2046-47', NULL, NULL, NULL),
(99, '2047-48', NULL, NULL, NULL),
(100, '2048-49', NULL, NULL, NULL),
(101, '2049-50', NULL, NULL, NULL),
(102, '2050-51', NULL, NULL, NULL),
(103, '2051-52', NULL, NULL, NULL),
(104, '2052-53', NULL, NULL, NULL),
(105, '2053-54', NULL, NULL, NULL),
(106, '2054-55', NULL, NULL, NULL),
(107, '2055-56', NULL, NULL, NULL),
(108, '2056-57', NULL, NULL, NULL),
(109, '2057-58', NULL, NULL, NULL),
(110, '2058-59', NULL, NULL, NULL),
(111, '2059-60', NULL, NULL, NULL),
(112, '2060-61', NULL, NULL, NULL),
(113, '2061-62', NULL, NULL, NULL),
(114, '2062-63', NULL, NULL, NULL),
(115, '2063-64', NULL, NULL, NULL),
(116, '2064-65', NULL, NULL, NULL),
(117, '2065-66', NULL, NULL, NULL),
(118, '2066-67', NULL, NULL, NULL),
(119, 'NA', NULL, NULL, NULL);

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
(0, 'Others', 'O', '2023-02-12 04:44:06', '2023-02-12 04:44:06'),
(1, 'Male', 'M', '2023-02-12 04:43:52', '2023-02-12 04:43:52'),
(2, 'Female', 'F', '2023-02-12 04:43:59', '2023-02-12 04:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_bin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_tin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footerContent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 'DUGAA', 'DUGAA', '<p>Alumni Floor, </p><p>Nabab Nawab Ali Chowdhury Senate Bhavan,</p><p>\r\nUniversity of Dhaka.\r\nDhaka - 1000.</p>', 'DUGAA', 'DUGAA', '#', '123456789098', '546789098765', 'images/0208202304350863e3267c09a05.jpg', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe width=\"770\" height=\"510\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=dhaka univerisity&t=&z=10&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe><a href=\"https://2yu.co\">2yu</a><br><style>.mapouter{position:relative;text-align:right;height:510px;width:770px;}</style><a href=\"https://embedgooglemap.2yu.co\">html embed google map</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:510px;width:770px;}</style></div></div>', '', NULL, NULL, NULL, '2021-06-06 08:00:54', '2023-02-14 23:40:13', '<p>Contact:\r\n01306-411630\r\n</p><p>02-55167807\r\n</p><p>02-55167723</p>', 'demo@gmail.com', 'Goods sold are not returnable. If need any support, Call: +8801756256562, +8801677023131', '', '', '', '﷽', 0, 1, 0, 15, 16, 0, 0);

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
(1, 1, 4.00, 5, 0, 1, 1, NULL, NULL, '2023-02-15 01:21:47'),
(2, 2, 12.00, 5, 0, 1, 1, NULL, NULL, '2023-02-12 02:58:15'),
(3, 3, 11.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(4, 4, 10.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(5, 5, 9.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(6, 6, 8.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-15 01:22:08'),
(7, 7, 7.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(8, 8, 3.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-15 01:21:47'),
(9, 9, 6.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(10, 10, 1.00, 5, 1, 1, NULL, NULL, NULL, '2023-02-12 02:58:15'),
(11, 11, 2.00, 5, 1, 2, NULL, NULL, NULL, '2023-02-14 02:23:25'),
(12, 12, 5.00, 5, 0, 1, NULL, NULL, NULL, '2023-02-15 01:23:32'),
(13, 13, 13.00, 5, 1, 1, NULL, NULL, NULL, '2023-02-15 01:21:47');

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
(16, 'post-image/0212202304423463e86e3aaa40b.jpg', 11, 13, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-11 22:42:34', '2023-02-11 22:42:34'),
(17, 'post-image/0214202308064563eb41156672e.jpg', 12, 10, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-14 02:06:45', '2023-02-14 02:06:45'),
(18, 'post-image/0214202308075363eb415930961.jpeg', 13, 10, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-14 02:07:53', '2023-02-14 02:07:53'),
(19, 'post-image/0214202308101563eb41e7ccdf7.jpg', 14, 11, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-14 02:10:15', '2023-02-14 02:10:15'),
(20, 'post-image/0214202308125763eb4289459ff.jpg', 15, 13, 1, '', NULL, NULL, 0, NULL, 0, 0, 46, NULL, '2023-02-14 02:12:57', '2023-02-14 02:12:57'),
(21, 'post-image/0214202310195963eb604f24e3a.jpg', 1, 9, 0, '', NULL, NULL, 0, NULL, 1, 0, 46, NULL, '2023-02-14 04:19:59', '2023-02-14 04:27:46'),
(22, 'post-image/0214202310202363eb60675e182.jpg', 1, 9, 0, '', NULL, NULL, 0, NULL, 1, 0, 46, NULL, '2023-02-14 04:20:23', '2023-02-14 04:27:46'),
(23, 'post-image/0214202310202963eb606de2270.jpg', 1, 9, 0, '', NULL, NULL, 0, NULL, 1, 0, 46, NULL, '2023-02-14 04:20:29', '2023-02-14 04:27:46'),
(24, 'post-image/0214202310274663eb6222f3b83.jpeg', 1, 9, 1, '', NULL, NULL, 0, NULL, 1, 0, 46, NULL, '2023-02-14 04:27:07', '2023-02-14 04:27:47'),
(25, NULL, 9, 12, 1, 'James Song', '', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vodztc_9Iwk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, '0', 1, 0, 46, NULL, '2023-02-14 05:58:06', '2023-02-14 05:58:06'),
(26, 'post-image/0214202311583063eb7766ac4bb.jpeg', 9, 12, 1, '', '', '', 0, '0', 1, 0, 46, NULL, '2023-02-14 05:58:30', '2023-02-14 05:58:30'),
(27, 'post-image/0214202312000963eb77c9c5faa.jpg', 9, 12, 1, '', '', '', 0, '0', 1, 0, 46, NULL, '2023-02-14 06:00:09', '2023-02-14 06:00:09'),
(28, 'post-image/0214202312002363eb77d787b24.jpg', 9, 12, 1, '', '', '', 0, '0', 1, 0, 46, NULL, '2023-02-14 06:00:23', '2023-02-14 06:00:23');

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
(0, 'Not Registered', 'N', NULL, NULL),
(1, 'General Member', 'G', NULL, NULL),
(2, 'Associate Member', 'A', NULL, NULL),
(3, 'Life Member', 'L', NULL, NULL),
(4, 'Honorary Member', 'H', NULL, NULL),
(5, 'Life Member (Associate)', 'S', NULL, NULL),
(6, 'Other', 'O', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_infos`
--

CREATE TABLE `member_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `BatchID` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SL` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_count_id` int(11) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `member_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entery_degree` int(11) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `admission_session` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alumni_category` int(11) DEFAULT NULL,
  `entery_degree_completion_year` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exit_degree` int(11) DEFAULT NULL,
  `bsc_year_passing` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `member_infos` (`id`, `BatchID`, `SL`, `unique_count_id`, `date`, `member_id`, `entery_degree`, `batch`, `admission_session`, `alumni_category`, `entery_degree_completion_year`, `first_name`, `last_name`, `user_name`, `gender_id`, `exit_degree`, `bsc_year_passing`, `exit_year`, `current_affiliation`, `designation`, `contact_no`, `email`, `parmanent_address`, `current_address`, `note`, `scanced_form`, `member_image`, `entry_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'S10B1980M', NULL, NULL, '2023-02-16', 'L10B1980M01', 1, 10, '29', 5, 33, 'Kazi Matin Uddin', 'Ahmed', NULL, '1', 2, NULL, 34, 'Department of Geology, University of Dhaka', 'Chairman and Professor', '+8801711846840', 'kmahmed@du.ac.bd#mailto:kmahmed@du.ac.bd#', 'Vill+PO: Ratanpur\r\nPS: Nabinagar\r\nDis: Brahmanbaria', 'Department of Geology\r\nCurzon Hall Campus\r\nUniversity of Dhaka\r\nDhaka 1000', NULL, 'KAZI MATIN UDDIN AHMED (1977-1978).jpg', 'Kazi Matin Ahmed.jpg', NULL, NULL, NULL, NULL),
(2, 'L34B2005M', NULL, 1, '2023-02-16', 'L34B2005M01', 1, 34, '53', 3, 0, 'Md. Mahfuzur Rahman', 'Khan', 'farhadali0507@gmail.com', '1', 2, NULL, 0, 'Department of Geology, University of Dhaka', 'Assistant Professor', '+8801816433092', 'farhadali0507@gmail.com', '5 New Paltan Line\r\nAzimpur\r\nDhaka', 'Department of Geology\r\nUniversity of Dhaka\r\nCurzon Hall Campus\r\nDhaka 1000', 'Note 2', 'MD. MAHFUZUR RAHMAN KHAN 2001-2002.jpg', 'Mahfuz Khan(crop).jpg', 60, NULL, NULL, '2023-02-19 04:31:42'),
(3, 'L34B2005M', NULL, NULL, '2023-02-16', 'L34B2005M02', 1, 34, '53', 3, 58, 'Md. Jahangir', 'Alam', NULL, '1', 2, NULL, 59, 'Department of Geology, University of Dhaka', 'Assistant Professor', '+8801717433433', 'jahangir.alam@du.ac.bd#mailto:jahangir.alam@du.ac.bd#', 'Vill - Senbhangabari (Uttar Para)\r\nUpazila - Belkuchi\r\nDistrict - Sirajganj', 'Department of Geology\r\nUniversity of Dhaka\r\nCurzon Hall Campus\r\nDhaka 1000', NULL, 'MD. JAHANGIR ALAM(2001-2005).jpg', 'Liton.JPG', NULL, NULL, NULL, NULL),
(4, 'L34B2005M', NULL, NULL, '2023-02-16', 'L34B2005M03', 1, 34, '53', 3, 58, 'Md. Rashedul', 'Islam', NULL, '1', 2, NULL, 59, 'Gas Transmission Company Ltd (GTCL)', 'Deputy Manager', '+8801818260977', 'rashed_geo@yahoo.com#mailto:rashed_geo@yahoo.com#', 'West Naruli \r\nWord no-20\r\nBogra Municipality \r\nBogra Sadar, Bogra-5800', '231/3/1, Flat: B\r\nWest Agargaon\r\nDhaka-1207', NULL, 'RASHEDUL ISLAM 2001-2002.jpg', 'Rashedul Islam.jpg', NULL, NULL, NULL, NULL),
(5, 'L34B2005F', NULL, NULL, '2023-02-16', 'L34B2005F01', 1, 34, '53', 3, 58, 'Zannatun', 'Noor', NULL, '2', 2, NULL, 59, 'Homemaker', NULL, '+8801816433091', 'zannatunnoor.mery@gmail.com#mailto:zannatunnoor.mery@gmail.com#', NULL, 'Flat No-8, House Tutor Building\r\nAmar Ekushey Hall\r\nUniversity of Dhaka\r\nDhaka-1000', NULL, 'ZANNATUN NOOR 2001-2002.jpg', 'Zannatun Noor.jpg', NULL, NULL, NULL, NULL),
(6, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M01', 1, 31, '50', 1, 55, 'Tanzeer', 'Hasan', NULL, '1', 2, NULL, 56, 'Department of Geology, University of Dhaka', 'Associate Professor', '+8801552412197', 'thasan7uwo@gmail.com#mailto:thasan7uwo@gmail.com#', '115 Shanti Nagar\r\nRupayan ZA Tower\r\nFlat D-13\r\nDhaka', 'Department of Geology\r\nRoom No 121\r\nUniversity of Dhaka\r\nDhaka 1000', NULL, 'TANZEER HASAN 2002.jpg', '31 Tanzeer Hasan.jpg', NULL, NULL, NULL, NULL),
(7, 'L32B2003M', NULL, NULL, '2023-02-16', 'L32B2003M01', 1, 32, '51', 3, 56, 'Md. Anisur', 'Rahman', NULL, '1', 2, NULL, 57, '3P Communication', 'Head of Businees Development', '+8801815004811', 'anisrana.glab@yahoo.com#mailto:anisrana.glab@yahoo.com#', '21 North Circular Road\r\nAtp # 07\r\nDhanmondi \r\nDhaka 1205', '21 North Circular Road\r\nAtp # 07\r\nDhanmondi \r\nDhaka 1205', NULL, 'MD ANISUR RAHMAN RANA(1999-2000).jpg', 'Anisur Rahman Rana.jpg', NULL, NULL, NULL, NULL),
(9, 'S00N0000M', NULL, NULL, '2023-02-16', 'S00N0000M01', 6, 0, '119', 5, 126, 'Dr. M. Mustafa', 'Alam', NULL, '1', 6, NULL, 126, 'Deprtment of Geology, University of Dhaka', 'Professor (PRL)', '+8801912043328', 'mmalam111@gmail.com#mailto:mmalam111@gmail.com#', '335 Elephant Rd\r\nNew Market, Dhanmondi\r\nDhaka 1205', 'Deaprtment of Geology\r\nUniversity of Dhaka\r\nDhaka 1000', NULL, 'DR. M. MUSTAFA ALAM .jpg', 'glg_mmalam111.jpg', NULL, NULL, NULL, NULL),
(12, 'G34B2005M', NULL, NULL, '2023-02-16', 'G34B2005M04', 1, 34, '53', 1, 58, 'Md. Shakhawat', 'Hossain', NULL, '1', 2, NULL, 59, 'Department of Disaster Science & Management, University of Dhaka', 'Assistant Professor', '+8801712624704', 'shakhawat.dsm@du.ac.bd#mailto:shakhawat.dsm@du.ac.bd#', '5 New Paltan Line\r\nAzimpur\r\nDhaka', 'Department of Disaster Science and Management\r\nUniversity of Dhaka\r\nDhaka-1000', NULL, 'SHAKHAWAT HOSSAIN 2001-2002.jpg', 'Shaakhawat Hossain.jpg', NULL, NULL, NULL, NULL),
(13, 'G00M1968M', NULL, NULL, '2023-02-16', 'G00M1968M01', 2, 0, '19', 1, 20, 'Alamgir', 'Hossain', NULL, '1', 2, NULL, 20, 'Bangladesh Water Development Board', 'Director (Retired)', '+8801716093902', 'ashfaque@smknitwear.com#mailto:ashfaque@smknitwear.com#', 'House 28, Road 13\r\nPC Culture Housing Society\r\nAdabar, Dhaka', 'Ground Water Hydrology, 72 Green Road, Dhaka 1205', NULL, 'ALAMGIR HOSSAIN1964.jpg', 'ALAMGIR HOSSAIN1964.jpg', NULL, NULL, NULL, NULL),
(14, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M01', 1, 28, '47', 1, 51, 'Md. Saidul', 'Islam ppm', NULL, '1', 2, NULL, 53, 'Dhaka Metropolitan Police (DMP)', 'Addl. Deputy Police Comissioner', '+8801710061105', 'raju_143rp@yahoo.com#mailto:raju_143rp@yahoo.com#', 'Vill: Chak Poilan Pur\r\nPO: Pabna\r\nDist: Pabna-6600.', '7/A, 7/E, Flat no: 11/E\r\nSheltech Surama\r\nShantibag, Dhaka.', NULL, 'MD. SAIDUL ISLAM PPM 1995-96.jpg', 'Saidul Islam ppm.jpg', NULL, NULL, NULL, NULL),
(15, 'G28B1998M', NULL, NULL, '2023-02-16', 'L28B1998M02', 1, 28, '47', 1, 51, 'Md. Nazmul Islam', 'Shopan', NULL, '1', 2, NULL, 53, 'Dhaka Metropolitan Police (DMP)', 'Addl. Deputy Police Commissioner', '+8801911216211', 'aspsopan@gmail.com#mailto:aspsopan@gmail.com#', 'Nuru Bihari Bari\r\nPuraton Koshba\r\nJessore-7400', '9/2, Jainty\r\nRamna Police Complex\r\nDhaka', NULL, 'MD. NAGMUL ISLAM SHOPAN 1995-1996 .jpg', '28 Nazmul islam.jpg', NULL, NULL, NULL, NULL),
(16, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M03', 1, 28, '47', 1, 51, 'Md. Golam', 'Sarwar', NULL, '1', 2, NULL, 53, 'Grameenphone', 'Manager', '+8801711507524', 'sarwar.himon@gmail.com#mailto:sarwar.himon@gmail.com#', '301/A\r\nGulbagh, Dhaka', 'Flat no-7B,Silicon Park Ridge,312,Gulbagh,Dhaka-1200.', NULL, 'MD. GOLAM SARWAR 1995-1996.jpg', '28 Golam Sarwar.jpg', NULL, NULL, NULL, NULL),
(17, 'L06B1975M', NULL, NULL, '2023-02-16', 'L06B1975M01', 1, 6, '24', 3, 28, 'A.H.M Ali', 'Ashraf', NULL, '1', 2, NULL, 29, 'KrisEnergy Bangladesh Ltd.', 'Consultant', '+8801711563705', 'ali.ashraf@krisenergy.com#mailto:ali.ashraf@krisenergy.com#', '51,B, Flat #C-3, Block-D,\r\nMufti Abdur Rahman Rd., Bashundhara R/A,\r\nDhaka- 1229', '40/7, NB Tower (10-12 floor)\r\nKrisEnergy BD. Ltd.\r\nGulshan Aveneu, Gulshan-2, Dhaka- 1212', NULL, 'AHM ALI ASHRAF 1971-72.jpg', 'AHM ALI ASHRAF 1971-72.jpg', NULL, NULL, NULL, NULL),
(18, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M02', 1, 31, '50', 1, 55, 'Mohammad Moshiur', 'Rahman', NULL, '1', 2, NULL, 56, 'North South University, Dhaka, Bangladesh', 'Assistant Professor', '+8801716350226', 'mohammad.rahman@northsouth.edu#mailto:mohammad.rahman@northsouth.edu#', '194, West Agargaon\r\nSher-E-Banglanagar\r\nDhaka- 1207', '194 West Agargaon\r\nSher-E-Banglanagar\r\nDhaka- 1207', NULL, 'MOHAMMAD MOSHIUR RAHMAN 1998-1999.jpg', 'MOshi Vai.jpg', NULL, NULL, NULL, NULL),
(19, 'G13B1983M', NULL, NULL, '2023-02-16', 'G13B1983M01', 1, 13, '32', 1, 36, 'Md. Towhid Hasanat', 'Khan', NULL, '1', 2, NULL, 37, 'BJMC', 'Director Finance (Joint Secretary)', '+8801971111000', 'towhid_1964@yahoo.com#mailto:towhid_1964@yahoo.com#', 'House #18\r\nRoad #16\r\nSector #11\r\nUttara, Dhaka-1230', 'House #18\r\nRoad #16\r\nSector #11\r\nUttara, Dhaka-1230', NULL, 'MD. TOWHID HASANAT KHAN (1980-1981).jpg', 'MD. TOWHID HASANAT KHAN (1980-1981).jpg', NULL, NULL, NULL, NULL),
(20, 'G37B2008M', NULL, NULL, '2023-02-16', 'G37B2008M01', 1, 37, '56', 1, 61, 'SK Niaz Ahammed', 'Angqur', NULL, '1', 2, NULL, 62, 'BAPEX', 'Asst. Manager (Geology)', '+8801671654757', 'angqur53@yahoo.com#mailto:angqur53@yahoo.com#', 'Vill: Chandipur, PO: Chandipur\r\nPS: Bheramara\r\nDist: Khushtia', 'Section-10, Block-A, Road-07,\r\nHouse-13, Mirpur, Pallabi,\r\nDhaka-1216', NULL, 'SK NIAZ AHAMMED ANGQUR (2004-2005).jpg', 'SK NIAZ AHAMMED ANGQUR (2004-2005).jpg', NULL, NULL, NULL, NULL),
(21, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M02', 1, 32, '51', 1, 56, 'Md. Abdul', 'Batin', NULL, '1', 2, NULL, 57, 'BAPEX', 'Manager (Geology)', '+8801713339885', 'panna305@yahoo.com#mailto:panna305@yahoo.com#', 'Rail Road (by lane)\r\nAsrom Mour\r\nJessore', 'Rupkalpa-2 drilling project, level-8, Bapex Bhaban, 4 Kawran Bazar, Dhaka.', NULL, 'MD. ABDUL BATIN (1999-2000).jpg', 'MD. ABDUL BATIN (1999-2000).jpg', NULL, NULL, NULL, NULL),
(22, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M01', 1, 20, '39', 1, 43, 'Gholam Md. Ashraful', 'Haider', NULL, '1', 2, NULL, 44, 'BAPEX', 'Deputy General Manager (Geology)', '01700712039', 'tuhingeo23@gmail.com#mailto:tuhingeo23@gmail.com#', 'Vill: Poilanpur, Sadar, Pabna', 'Laboratory division\r\nLevel#2 BAPEX Bhobon\r\n4 kowran bazer Dhaka -1215', 'ok', 'GHOLAM MD ASHRAFUL HAIDER(1987-1988).jpg', 'GHOLAM MD ASHRAFUL HAIDER(1987-1988).jpg', NULL, NULL, NULL, NULL),
(23, 'L32B2003M', NULL, NULL, '2023-02-16', 'L32B2003M03', 1, 32, '51', 3, 56, 'Md. Ashraful', 'Islam (Himel)', NULL, '1', 2, NULL, 57, 'Department of Geology, University of Dhaka', 'Assistant Professor', '+8801816522334', 'ashrafhimel@du.ac.bd#mailto:ashrafhimel@du.ac.bd#', '33, Baishteki, Mirpur 13\r\nKafrul, Dhaka- 1216\r\nBangladesh', 'Department of Geology, University of Dhaka', NULL, 'MD ASHRAFUL ISLAM HIMEL (1999-2000).jpg', 'Ashraf himel.jpg', NULL, NULL, NULL, NULL),
(24, 'L32B2003F', NULL, NULL, '2023-02-16', 'L32B2003F01', 1, 32, '51', 3, 56, 'Sanzida', 'Murshed', NULL, '2', 2, NULL, 57, 'Department of Geology, University of Dhaka', 'Assistant Professor', '+8801816522335', 'sanzida.geol@du.ac.bd#mailto:sanzida.geol@du.ac.bd#', '33, Baishteki, Mirpur 13\r\nKafrul, Dhaka- 1216\r\nBangladesh', 'Department of Geology, University of Dhaka', NULL, 'SANZIDA MURSHED (1999-2000).jpg', 'Sanjida Morshed.jpg', NULL, NULL, NULL, NULL),
(25, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M04', 1, 32, '51', 1, 56, 'S M Mainul', 'Kabir', NULL, '1', 2, NULL, 57, 'Department of Geology, University of Dhaka', 'Assistant Professor', '+8801911491216', 'smkabir@du.ac.bd#mailto:smkabir@du.ac.bd#', 'Darshana College Para\r\nDarshana, Chuadange\r\nBangladesh', 'Assistant Professor\r\nDepartment of Geology\r\nUniversity of Dhaka\r\nDhaka, Bangladesh', NULL, 'SM MAINUL KABIR(1999-2000).jpg', 'Mainul kabir.jpg', NULL, NULL, NULL, NULL),
(26, 'L38B2009F', NULL, NULL, '2023-02-16', 'L38B2009F01', 1, 38, '57', 3, 62, 'Rubaiyat', 'Ashrafee', NULL, '2', 2, NULL, 63, 'Halliburton International GmbH', 'Technical Professional Formation and Reservoir Solution', '+8801713049111', 'ashrafee87@gmail.com#mailto:ashrafee87@gmail.com#', 'Ena Shamoly Garden\r\nFlat # A3, House #10 Road #2\r\nShamoly, Dhaka- 1207', 'Ena Shamoly Garden\r\nFlat # A3, House #10 Road #2\r\nShamoly, Dhaka- 1207', NULL, 'RUBAIYAT ASHRAFEE (2005-2006).jpg', '241612_10150187285841274_3288132_o.jpg', NULL, NULL, NULL, NULL),
(27, 'G42B2013M', NULL, NULL, '2023-02-16', 'G42B2013M01', 1, 42, '61', 1, 66, 'Md. Atikul', 'Islam', NULL, '1', 2, NULL, 67, 'Department of Oceanography, University of Dhaka', 'Lecturer', '+8801670682054', 'atikamulet@gmail.com#mailto:atikamulet@gmail.com#', 'Vill: Gilaber, PO: Kumartek\r\nUpazila: Shibpur, Dist: Narshingdi', 'Department of Oceanography\r\nUniversity of Dhaka\r\nDhaka-1000', NULL, 'MD. ATIKUL ISLAM 2009-10.jpg', 'MD. ATIKUL ISLAM 2009-10.jpg', NULL, NULL, NULL, NULL),
(28, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M01', 1, 41, '60', 1, 65, 'Md. Atik Ullah', 'Bulbul', NULL, '1', 2, NULL, 66, 'Bangladesh Oil, Gas & Mineral Corporation', 'Assistant Manager (Mine Operation)', '+8801719346110', 'atikullah.geo@gmail.com#mailto:atikullah.geo@gmail.com#', 'Vill: Paikerchara, PO: Paikerchara,\r\nPS: Bhurungamari, Dist: Kurigram', '343, Free School Streer, Hatirpool, Medicine Plaza Goli, Dhaka- 1205', NULL, 'MD. ATIK ULLAH BULBUL(2008-2009).jpg', 'MD. ATIK ULLAH BULBUL(2008-2009).jpg', NULL, NULL, NULL, NULL),
(29, 'G42B2013M', NULL, NULL, '2023-02-16', 'G42B2013M02', 1, 42, '61', 1, 66, 'Imran', 'Khan', NULL, '1', 2, NULL, 67, 'Petrobangla', 'Assistant Manager', '+8801677051872', 'imranpb16@gmail.com#mailto:imranpb16@gmail.com#', 'Vill: Matikumra, PO: Matikumra\r\nJhikorgacha, Jessore, Khulna', 'Exploration Division,  Petrobangla,  petrocentre 3, kawran bazar dhaka 1215.', NULL, 'IMRAN KHAN (2009-2010).jpg', 'IMRAN KHAN (2009-2010).jpg', NULL, NULL, NULL, NULL),
(30, 'L02B1971M', NULL, NULL, '2023-02-16', 'L02B1971M01', 1, 2, '20', 3, 24, 'Md. Maqbul-E-Elahi', '(Mashgul)', NULL, '1', 2, NULL, 25, 'Selfemployed', 'Indendent Consultant', '+8801755555880', 'mashgul@yahoo.com#mailto:mashgul@yahoo.com#', 'Routhpara, Shanerhat, Pirgonj, Rangpur', 'B-230, Khilgaon Chowdhary Para, Dhaka', NULL, 'MD. MAQBUL-E- ELAHI 1968.jpg', 'Maqbul-e-elahi.jpg', NULL, NULL, NULL, NULL),
(31, 'L00M1968M', NULL, NULL, '2023-02-16', 'L00M1968M02', 2, 0, '19', 3, 20, 'Khandaker Mosharraf', 'Hossain', NULL, '1', 2, NULL, 20, 'Not Applicable', 'Not Applicable', '+8801714585858', NULL, 'Vill: Goyeshpur, PO & Upazila: Daudkandi,\r\nDist: Comilla', 'House #29, Road #55, Gulshan-2,\r\nDhaka', NULL, 'DR. KHANDAKER MOSHARRAF HOSSAIN (1964-1965).jpg', 'DR. KHANDAKER MOSHARRAF HOSSAIN (1964-1965).jpg', NULL, NULL, NULL, NULL),
(32, 'G37B2008F', NULL, NULL, '2023-02-16', 'G37B2008F01', 1, 37, '56', 1, 61, 'Tamanna', 'Afroz', NULL, '2', 2, NULL, 62, 'Schlumberger', 'Senior Geologist', '+8801938817037', 'tamanna.afroz@gmail.com#mailto:tamanna.afroz@gmail.com#', 'Vill: Dhakaijora, PO: Intajganj,\r\nPS: Shivalaya, Dist: Manikganj', 'Schlumberger SEACO Inc, 13th Floor (East Wing), Green Delta AIMS Tower, 51-52 Bir Uttam AK Khandakar Rd, Mohakhali C/A, Dhaka 1212', NULL, 'TAMANNA AFROZ 2004-2005.jpg', 'Tamanna Afroz.jpg', NULL, NULL, NULL, NULL),
(33, 'G09B1978M', NULL, NULL, '2023-02-16', 'G09B1978M01', 1, 9, '27', 1, 31, 'Khaled', 'Hasan', NULL, '1', 2, NULL, 32, 'Austin Community College', 'Adjunct Professor', '+16623412364', 'kdmhasans@gmail.com#mailto:kdmhasans@gmail.com#', 'A-4, Bldg #4, Plot 20/1,\r\nRoad-1\r\nMohammadia Housing Limited, Mohammadpur, Dhaka- 1209', '4603 Everest Lane\r\nAustin Texaz 78727\r\nUSA', NULL, 'KHALED HASAN 1975-1976.jpg', 'Khaled Hasan.jpg', NULL, NULL, NULL, NULL),
(34, 'L20B1990M', NULL, NULL, '2023-02-16', 'L20B1990M02', 1, 20, '39', 3, 43, 'Mohammad Saiful', 'Islam', NULL, '1', 3, NULL, 55, 'Department of Geology, University of Dhaka', 'Associate Professor', '+8801712294642', 'msaiful@du.ac.bd#mailto:msaiful@du.ac.bd#', 'Vill: Peetambar, PO: Sadar Rasulpur,\r\nPS: Burichong, Dist: Comilla', 'Department of Geology\r\nUniversity of Dhaka\r\nDhaka-1000, Bangladesh', NULL, 'MOHAMMAD SAIFUL ISLAM (1987-1988).jpg', 'MOHAMMAD SAIFUL ISLAM (1987-1988).jpg', NULL, NULL, NULL, NULL),
(35, 'G31B2002F', NULL, NULL, '2023-02-16', 'G31B2002F01', 1, 31, '50', 1, 55, 'Sharmin', 'Sharif', NULL, '2', 2, NULL, 56, 'Homemaker', NULL, '+8801552305983', 'sharifsharmin@yahoo.com#mailto:sharifsharmin@yahoo.com#', '115 Shantinagar\r\nRupayan Z.A. Tower\r\nFlat D-13\r\nDhaka', '115 Shantinagar\r\nRupayan Z.A. Tower\r\nFlat D-13\r\nDhaka', NULL, 'SHARMIN SHARIF 2000.jpg', 'SHARMIN SHARIF 2000.JPG', NULL, NULL, NULL, NULL),
(36, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M05', 1, 32, '51', 1, 56, 'Md. Khalid Ahammed', 'Khan', NULL, '1', 2, NULL, 57, 'BAPEX', 'Manager (Geology)', '+8801911958870', 'khalid@bapex.com.bd#mailto:khalid@bapex.com.bd#', 'Vill: Markun, PO: Monno Nagar\r\nTongi, Gazipur-1710', 'Level-2, BAPEX BHABAN, Dhaka-1215', NULL, 'MD. KHALID AHAMMED KHAN (1999-2000).jpg', 'MD. KHALID AHAMMED KHAN (1999-2000).jpg', NULL, NULL, NULL, NULL),
(37, 'L32B2003M', NULL, NULL, '2023-02-16', 'L32B2003M06', 1, 32, '51', 3, 56, 'Md. Fuad', 'Hasan', NULL, '1', 2, NULL, 59, 'Institute of Mining, Mineralogy, and Metallurgy', 'Sr. Scientific Officer', '+8801745787457', 'fuad3014@gmail.com#mailto:fuad3014@gmail.com#', 'Vill. & PO: Laxmipasa, Upazila: Lohagara,\r\nDist: Narail', 'Institute of Mining, Mineralogy and Metallurgy (IMMM), Science Laboratory road, BCSIR, Khanjonpur, Joypurhat-5900.', NULL, 'MD FUAD HASAN (1999-2000).jpg', 'MD FUAD HASAN (1999-2000).jpg', NULL, NULL, NULL, NULL),
(38, 'G34B2005M', NULL, NULL, '2023-02-16', 'G34B2005M05', 1, 34, '53', 1, 58, 'K. M. Jalal Uddin', 'Rumi', NULL, '1', 2, NULL, 59, 'Bangladesh Atomic Energy Commission', 'Senior Geologist', '+8801717756604', 'rumi.baecgeo@gmail.com#mailto:rumi.baecgeo@gmail.com#', '28, Bagichertak, Wapda Road, West Rampura, Dhaka- 1219, Bangladesh', '28, Bagichertak, Wapda Road, West Rampura, Dhaka- 1219, Bangladesh', NULL, 'KM JALAL UDDIN RUMI(2001-2005).jpg', 'KM JALAL UDDIN RUMI(2001-2005).jpg', NULL, NULL, NULL, NULL),
(39, 'G15B1985M', NULL, NULL, '2023-02-16', 'G15B1985M01', 1, 15, '34', 1, 38, 'Md. Lokman', 'Hossain', NULL, '1', 2, NULL, 39, 'SAIF Powertec Ltd', 'Executive Director', '+8801713129963', 'lokmanhossain@saifpowertec.com#mailto:lokmanhossain@saifpowertec.com#', 'PO: Matlab, Upazila: Matlab, Dist: Chandpur', 'House #85-B, Flat #B-2, Road# 12A, Dhanmondi, Dhaka', NULL, 'LOKMAN HOSSAIN 1982-83.jpg', 'LOKMAN HOSSAIN 1982-83.jpg', NULL, NULL, NULL, NULL),
(40, 'G00M1968M', NULL, NULL, '2023-02-16', 'G00M1968M03', 2, 0, '19', 1, 20, 'Md. Anwarul', 'Azeem', NULL, '1', 2, NULL, 20, 'Geological Survey of Bangladesh', 'Director (Retired)', '+8801716382402', NULL, 'Vill: Baroiya, PO: Darbeshpur/ Khasinagar,\r\nPS: Chouddagram, Dist: Comilla', 'House no. C-63, Shyemoly Housing Ltd.,\r\nRoad no. 6, Seker Tek, Adabor,\r\nMohammadpur, Dhaka-1207', NULL, 'MD. ANWARUL AZEEM 1964.jpg', 'MD. ANWARUL AZEEM 1964.jpg', NULL, NULL, NULL, NULL),
(41, 'G06B1975M', NULL, NULL, '2023-02-16', 'G06B1975M02', 1, 6, '24', 1, 28, 'Muhammed Azizul', 'Huque', NULL, '1', 2, NULL, 29, 'Department of Geology, University of Dhaka', 'Professor', '+8801552423969', 'azizulhq@du.ac.bd#mailto:azizulhq@du.ac.bd#', 'Flat 1/A, House no. 507, Road no. 09,\r\nBaridhara DOHS, Dhaka Cantonment,\r\nDhaka-1206', 'Dpeartment of Geology\r\nUniveristy of Dhaka\r\nDhaka, Bangladesh', NULL, 'MUHAMMED AZIZUL HUQUE 1972-1973.jpg', 'MUHAMMED AZIZUL HUQUE 1972-1973.jpg', NULL, NULL, NULL, NULL),
(42, 'G04B1973M', NULL, NULL, '2023-02-16', 'G04B1973M01', 1, 4, '22', 1, 26, 'Eunuse', 'Akon', NULL, '1', 2, NULL, 27, 'BCSIR', 'Consultant', '+8801712769888', 'eunuse.akon@gmail.com#mailto:eunuse.akon@gmail.com#', 'Vill & PO: Andhermanik\r\nUpazila: Meheudigonj\r\nDist: Barisal', '7 D,  Kanisha Heights, 279 Elephant Road, Dhaka- 1205.', NULL, 'EUNUSE AKON (1970-1973).jpg', 'Eunus Akon.jpg', NULL, NULL, NULL, NULL),
(43, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M03', 1, 20, '39', 1, 43, 'Md. Khairul Kabir', 'Adil', NULL, '1', 2, NULL, 44, 'Revere Attire Ltd.', 'Managing Director', '+8801938888988', 'adil.revere@gmail.com#mailto:adil.revere@gmail.com#', '169, Mubarak Shah Road\r\n1, Baburail,\r\nNarayanganj-1400', 'Almas Ali Super Market\r\n2, Sonatan Pauz Lane\r\nNarayanganj-1400', NULL, 'MD KHAIRUL KABIR ADIL(1987-1988) .jpg', 'Khairul kabir Adil.jpg', NULL, NULL, NULL, NULL),
(44, 'G39B2010M', NULL, NULL, '2023-02-16', 'G39B2010M01', 1, 39, '58', 1, 63, 'Bulbul', 'Ahmmed', NULL, '1', 2, NULL, 64, 'Baylor Univeristy, Waco, Texas 76706', 'Graduate Teaching Assistant', '+15738185780', 'geobgeo@yahoo.com#mailto:geobgeo@yahoo.com#', 'Vill & PO: Patakata, PS: Mahadebpur\r\nDist: Naogaon -6511\r\nBangladesh', '1800 S 8th Street, Apt #223\r\nWaco, Texas 76706', NULL, 'BULBUL AHMMED (2006-2007).jpg', 'Bulbul Ahmed.jpg', NULL, NULL, NULL, NULL),
(45, 'G13B1983M', NULL, NULL, '2023-02-16', 'G13B1983M02', 1, 13, '32', 1, 36, 'A.T.M. Shakhawat', 'Hossain', NULL, '1', 2, NULL, 37, 'Departement of Geological Sciences, Jahangirnagar University', 'Professor', '+8801914897282', 'shakhawathos2004@yahoo.com#mailto:shakhawathos2004@yahoo.com#', '340 Bait-ul-aman Gulbagh R/A\r\nPO: Bondor\r\nPC-4100, Chittagong', 'Engg. Geology, Geotechnics & Geohazard Research Grp, Dept of Geological Sciences, Jahangirnagar University, Savar, Dhaka-1342', NULL, 'dr. atm shakhawat hossin(1980-1981).jpg', 'dr. atm shakhawat hossin(1980-1981).jpg', NULL, NULL, NULL, NULL),
(46, 'G17B1987M', NULL, NULL, '2023-02-16', 'G17B1987M01', 1, 17, '36', 1, 40, 'Md. Nazrul', 'Islam', NULL, '1', 2, NULL, 41, 'Sadharan Bima Corporation', 'Assistant General Manager', '+8801942743925', 'nazrulsbc@yahoo.com#mailto:nazrulsbc@yahoo.com#', 'H # 212, Road- Shahid Alow Sarani, Chalkpailanpur, Ward no- 12, Pabna Municipality,\r\nPabna', 'H # 52/53, Flat # 2C,\r\nEdgaon Mosjheed Road,\r\nSahajadpur, Gulshan, Dhaka- 1212', NULL, 'md nazrul islam(1984-1985).jpg', 'md nazrul islam(1984-1985).jpg', NULL, NULL, NULL, NULL),
(47, 'G17B1987F', NULL, NULL, '2023-02-16', 'G17B1987F01', 1, 17, '36', 1, 40, 'Syeda Fahliza', 'Begum', NULL, '2', 2, NULL, 41, 'Jahangirnagar University', 'Associate Professor', '+8801932767216', 'sfbegum@yahoo.com#mailto:sfbegum@yahoo.com#', 'Abul Hayet Lane\r\nMunshipara, Rangpur', 'House # 11/B, Flat # 5/B\r\nRoad # 9/C, Sector-5\r\nUttara, Dhaka- 1230', NULL, 'DR. SYEDA FAHLIZA BEGUM(1984-1985).jpg', 'Syeeda Fahliza 87.jpg', NULL, NULL, NULL, NULL),
(48, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M04', 1, 20, '39', 1, 43, 'Khalid', 'Ahmed', NULL, '1', 2, NULL, 44, 'Govt. Peoples Republic of Bangladesh', 'Deputy Secretary', '+8801715011695', 'khalid.ahmed15@hotmail.com#mailto:khalid.ahmed15@hotmail.com#', 'Flat no- B1, House- 20-21,\r\nRoad- 12, Block-F, Niketon, \r\nGulshan-1, Dhaka', 'Flat no- B1, House- 20-21,\r\nRoad- 12, Block-F, Niketon, \r\nGulshan-1, Dhaka', NULL, 'KHALID AHMED(1987-1988) .jpg', 'Ahmed Khalid.jpeg', NULL, NULL, NULL, NULL),
(49, 'L11B1981M', NULL, NULL, '2023-02-16', 'L11B1981M01', 1, 11, '30', 3, 34, 'Quazi A.S.M. Anisul', 'Kabir', NULL, '1', 2, NULL, 35, 'Standard Bank Limited', 'Deputy Managing Director (Retired)', '+8801709654774', 'qakabir@gmail.com#mailto:qakabir@gmail.com#', 'Vill: Kazi Kanda\r\nPO & PS: Rajbari\r\nDist: Rajbari', '55/2, Matikata\r\nDhaka Cantonment\r\nDhaka-1206', NULL, 'quazi asm anisul kabir (1978-1974).jpg', 'quazi asm anisul kabir (1978-1974).jpg', NULL, NULL, NULL, NULL),
(50, 'L11B1981M', NULL, NULL, '2023-02-16', 'L11B1981M02', 1, 11, '30', 3, 34, 'Abu Hena Md. Rahmatul', 'Muneem', NULL, '1', 2, NULL, 35, 'Energy and Mineral Resources Division, Ministry of Power, Energy and Mineral Resource, Government of Bangladesh', 'Secretary', '+8801815007693', 'muneem.bd@gmail.com#mailto:muneem.bd@gmail.com#', '\"Ashroy\", Soya Dhangora Nuton Para,\r\nSirajganj Sadar,\r\nSirajganj', 'Secretary, Energy & Mineral Resources Division, MoPEMR', NULL, 'abu hena md. rahmatul muneem(1978-1979) .jpg', 'Rahmatul Muneem.jpg', NULL, NULL, NULL, NULL),
(51, 'L11B1981M', NULL, NULL, '2023-02-16', 'L11B1981M03', 1, 11, '30', 3, 34, 'Md. Moniruzzaman', NULL, NULL, '1', 2, NULL, 35, 'Bangladesh Police', 'Deputy Inspector General', '+8801711125425', NULL, 'Mollika Bhaban\r\nRamna Police Complex\r\nRamna, Dhaka', 'Mollika Bhaban\r\nRamna Police Complex\r\nRamna, Dhaka', NULL, 'MD. MONIRUZZAMAN (1978-1979).jpg', 'Md Moniruzzaman Batch 11.jpg', NULL, NULL, NULL, NULL),
(52, 'L31B2002M', NULL, NULL, '2023-02-16', 'L31B2002M03', 1, 31, '50', 3, 55, 'Mohammad Ashraf-ul-Islam', 'Sagor', NULL, '1', 2, NULL, 56, 'Sonali Bank Limited', 'Principal Officer', '+8801818008851', 'sagor.ashraf@gmail.com#mailto:sagor.ashraf@gmail.com#', 'House # 12, Road # 1\r\nBlock # B, Section # 6\r\nMirpur, Dhaka-1216', 'Sonali Bank Limited\r\nInformation Technology Division-1\r\nHead Office\r\nMotijheel, Dhaka', NULL, 'mohammad ashraf ul islam sagor (1998-1999).jpg', 'mohammad ashraf ul islam sagor (1998-1999).jpg', NULL, NULL, NULL, NULL),
(53, 'L16B1986M', NULL, NULL, '2023-02-16', 'L16B1986M01', 1, 16, '35', 3, 39, 'Mohammad Mahbubul', 'Hoque', NULL, '1', 2, NULL, 40, 'Hossaindi Union Parishad, Gazaria, Munshiganj', 'Chairman', '+8801713037552', NULL, '408/C, Free School Street,\r\nHatirpool, Kalabagan,\r\nDhaka-1205', '408/C, Free School Street,\r\nHatirpool, Kalabagan,\r\nDhaka-1205', NULL, 'MOHAMMAD MAHBUBUL HOQUE (MAZNA)1983.jpg', 'MOHAMMAD MAHBUBUL HOQUE (MAZNA)1983.jpg', NULL, NULL, NULL, NULL),
(54, 'L01B1970M', NULL, NULL, '2023-02-16', 'L01B1970M01', 1, 1, '19', 3, 23, 'Md. Zainal', 'Abdin', NULL, '1', 2, NULL, 24, 'Bangladesh Water Development Board', 'Deputy Director (Retired)', '+8801748212716', 'anwarzahidb@gmail.com#mailto:anwarzahidb@gmail.com#', 'Ka/16 School Road\r\nKhilkhet\r\nDhaka-1229', 'Ground Water Hydrology, BWDB, 72 Green Road, Dhaka', NULL, 'md. zainal abdin1970.jpg', 'md. zainal abdin1970.jpg', NULL, NULL, NULL, NULL),
(55, 'G04B1973M', NULL, NULL, '2023-02-16', 'G04B1973M02', 1, 4, '22', 1, 26, 'Mohammed Abdul', 'Karim', NULL, '1', 2, NULL, 27, 'Bangladesh Water Development Board', 'Director (Retired)', '+8801552363350', NULL, 'B4 Arambag,\r\nPallabi, Mirpur,\r\nDhaka-1216', 'B4 Arambag,\r\nPallabi, Mirpur,\r\nDhaka-1216', 'Deceased', 'mohammed abdul karim (1971-1972).jpg', 'mohammed abdul karim (1971-1972).jpg', NULL, NULL, NULL, NULL),
(56, 'G17B1987M', NULL, NULL, '2023-02-16', 'G17B1987M02', 1, 17, '36', 1, 40, 'Anwar', 'Zahid', NULL, '1', 2, NULL, 41, 'Bangladesh Water Development Board', 'Director', '+8801819105871', 'anwarzahidb@gmail.com#mailto:anwarzahidb@gmail.com#', 'House no. 61, Main Road,\r\nMehedibagh Housing\r\nAdabor, Dhaka-1209', 'Groundwater Hydrology\r\nBWDB, 72 Green Road,\r\nDhaka-1205', NULL, 'dr.anwar zahid (1984-1985).jpg', 'ANwar Zahid 87.jpg', NULL, NULL, NULL, NULL),
(57, 'G05B1974M', NULL, NULL, '2023-02-16', 'G05B1974M01', 1, 5, '23', 1, 27, 'Gholam Mostafa', 'Khandaker', NULL, '1', 2, NULL, 28, 'Bangladesh Water Development Board', 'Director (Retired)', '+8801711902544', 'khandaker.gm@gmail.com#mailto:khandaker.gm@gmail.com#', 'B4 Arambag,\r\nPallabi, Mirpur,\r\nDhaka', 'B4 Arambag,\r\nPallabi, Mirpur,\r\nDhaka', NULL, 'gholam mostafa khandaker1974.jpg', 'gholam mostafa khandaker1974.jpg', NULL, NULL, NULL, NULL),
(58, 'G23B1993M', NULL, NULL, '2023-02-16', 'G23B1993M01', 1, 23, '42', 1, 46, 'Md. Samsul Islam', 'Mehedee', NULL, '1', 2, NULL, 47, 'Ministry of Expatriates\' Welfare & Overseas Employment', 'Deputy Secretary', '+8801725852977', 'imehedee@gmail.com#mailto:imehedee@gmail.com#', 'Vill: West Dasora\r\nPS: Manikgonj Sadar\r\nDist: Manikgonj', 'House:32, Road:14/A, Flat:B06, Dhanmondi, R/A', NULL, 'md. samsul islam mehedee(1990-1991).jpg', 'md. samsul islam mehedee(1990-1991).jpg', NULL, NULL, NULL, NULL),
(59, 'G36B2007F', NULL, NULL, '2023-02-16', 'G36B2007F01', 1, 36, '55', 1, 60, 'Mahfuza', 'Khanam', NULL, '2', 2, NULL, 61, 'Sonali Bank Ltd.', 'Officer', '+8801731933697', 'mrstajmindu34@gmail.com#mailto:mrstajmindu34@gmail.com#', '116, Dargapara,\r\nBoalia, Rajshahi', 'Sonali Bank Ltd Shahjahanpur branch Dhaka', NULL, 'MAHFUZA KHANAM (2003-2004).jpg', 'MAHFUZA KHANAM (2003-2004).jpg', NULL, NULL, NULL, NULL),
(60, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M01', 1, 26, '45', 1, 49, 'A.K.M.', 'Nurunnabi', NULL, '1', 2, NULL, 50, 'Bangladesh Bank', 'Joint Director', '+8801711113901', 'akm.nurunnabi@bb.org.bd; royal_3013@yahoo.com#mailto:akm.nurunnabi@bb.org.bd; royal_3013@yahoo.com#', 'Ka-9/3, Bangladesh Bank Colony\r\nMotijheel, Dhaka', 'Ka-9/3, Bangladesh Bank Colony\r\nMotijheel, Dhaka', NULL, 'AKM NURUNNABI  (1995-1994).jpg', 'AKM Nurunnabi.jpg', NULL, NULL, NULL, NULL),
(61, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M02', 1, 26, '45', 1, 49, 'Nasir Uddin', 'Ahmed', NULL, '1', 2, NULL, 50, 'Mercantile Bank Ltd.', 'Head of Abdullahpur Branch', '+8801730445987', 'nasirdk@mblbd.com#mailto:nasirdk@mblbd.com#', 'Sharulia Bazar\r\nHouse # 58, West Tangra,\r\n Demra, Dhaka', 'House # 1, Road # 3\r\nBlock-E, Banasree,\r\nRampura, Dhaka', NULL, 'nasir uddin ahmed(1993-1994).jpg', 'nasir uddin ahmed(1993-1994).jpg', NULL, NULL, NULL, NULL),
(62, 'G33B2004M', NULL, NULL, '2023-02-16', 'G33B2004M01', 1, 33, '52', 1, 57, 'Md. Rakibul', 'Islam', NULL, '1', 2, NULL, 58, 'BD Pearl International', 'Managing Director', '+8801819494686', 'geology_rasel2001@yahoo.com#mailto:geology_rasel2001@yahoo.com#', 'C/O: Md. Abdul Karim\r\nMunshiapara (Borobari)\r\nThakurgaon Town, Thakurgaon-5100', 'Flat#A3, House#02, Road#20, Sector#03, Uttara, Dhaka-1230.', NULL, 'md. rakibul islam (2000-2001).jpg', 'md. rakibul islam (2000-2001).jpg', NULL, NULL, NULL, NULL),
(63, 'G41B2012F', NULL, NULL, '2023-02-16', 'G41B2012F01', 1, 41, '60', 1, 65, 'Nazia', 'Nawrin', NULL, '2', 2, NULL, 66, 'Department of Geology, University of Dhaka', 'Lecturer', '+8801671330263', 'nnawrin_29@yahoo.com#mailto:nnawrin_29@yahoo.com#', 'Vill: Sitaramkandi, PO: Sultansadi\r\nPS: Araihazar, Dist: Narayanganj', 'Department of Geology\r\nUniversity of Dhaka', NULL, 'NAZIA NAWRIN (2008-2009).jpg', 'NAZIA NAWRIN (2008-2009).JPG', NULL, NULL, NULL, NULL),
(64, 'L39B2010M', NULL, NULL, '2023-02-16', 'L39B2010M02', 1, 39, '58', 3, 63, 'Md. Shafiul Mazlubin', 'Rahman', NULL, '1', 2, NULL, 64, 'Planning Commission, IMRD Division, Government of Bangladesh', 'Asst. Chief', '+8801774931160', 'srezon.du@gmail.com#mailto:srezon.du@gmail.com#', 'Katner Para, Anayet Ali Lane,\r\nBogra-5800', '11/4, Baily Square Officers Quarter, Ramna, Dhaka', NULL, 'MD. SHAFIUL MAZLUBIN RAHMAN(2006-2007).jpg', 'MD. SHAFIUL MAZLUBIN RAHMAN(2006-2007).jpg', NULL, NULL, NULL, NULL),
(65, 'L35B2006F', NULL, NULL, '2023-02-16', 'L35B2006F01', 1, 35, '54', 3, 59, 'Tawsia', 'Islam', NULL, '2', 2, NULL, 60, 'ATN Bangla', 'Senior Reporter (Sports)', '+8801717204946', 'tawsiaislam@gmail.com#mailto:tawsiaislam@gmail.com#', '327/1, Jafrabad Shankar,\r\nWest Dhanmondi, Dhaka-1207', '327/1, Jafrabad Shankar,\r\nWest Dhanmondi, Dhaka-1207', NULL, 'tawsia islam (2002-2003).jpg', 'tawsia islam (2002-2003).jpg', NULL, NULL, NULL, NULL),
(66, 'G23B1993M', NULL, NULL, '2023-02-16', 'G23B1993M02', 1, 23, '42', 1, 46, 'Mahboob', 'Ahmed', NULL, '1', 2, NULL, 47, 'Dhaka Bank Ltd. (Keraniganj Br.)', 'SVP & Manager', '+8801711309553', 'ahmedm_du@yahoo.com#mailto:ahmedm_du@yahoo.com#', '87, North Bashaboo\r\nPS: Shabujbagh\r\nDhaka-1214', 'Dhaka Bank Ltd.\r\nKeraniganj Branch', NULL, 'MAHBOOB AHMED(1990-1991) .jpg', 'Mahboob Ahmed 23.jpg', NULL, NULL, NULL, NULL),
(67, 'L14B1984M', NULL, NULL, '2023-02-16', 'L14B1984M01', 1, 14, '33', 3, 37, 'Syed Muhammad Rezaul', 'Islam', NULL, '1', 2, NULL, 38, 'BAPEX (Geological Division)', 'General Manager (Geology)', '+8801709673997', 'rezaulislam.geo@gmail.com#mailto:rezaulislam.geo@gmail.com#', 'House-9, Road-6,\r\nPallabi, Mirpur, Dhaka', 'Geological Division\r\nBAPEX BHABAN (Level-10)\r\n4, Kawran Bazar, Dhaka-1215', NULL, 'syed muhammad rezaul islam((1981-1982).jpg', 'syed muhammad rezaul islam((1981-1982).jpg', NULL, NULL, NULL, NULL),
(68, 'G06B1975F', NULL, NULL, '2023-02-16', 'G06B1975F01', 1, 6, '24', 1, 28, 'Nazma', 'Begum', NULL, '2', 2, NULL, 29, 'BAPEX, Petrobangla', 'Ex. DGM', '+8801617142853', 'basharahsanul@yahoo.com#mailto:basharahsanul@yahoo.com#', 'House # 13, Gopibag 1st Lane,\r\nDhaka-1203', 'House # 13, Gopibag 1st Lane,\r\nDhaka-1203', NULL, 'NAZMA BEGUM 1972.jpg', 'NAZMA BEGUM.jpg', NULL, NULL, NULL, NULL),
(69, 'L06B1975M', NULL, NULL, '2023-02-16', 'L06B1975M03', 1, 6, '21', 3, 28, 'Ahsanul', 'Bashar', NULL, '1', 2, NULL, 29, 'Bangla Vision', 'Director', '+8801617142853', 'basharahsanul@yahoo.com#mailto:basharahsanul@yahoo.com#', 'House # 13, Gopibag 1st Lane,\r\nDhaka-1203', '\"Noor Tower\"\r\n111, Bir Uttom C.R. Dutta Road,\r\nDhaka-1205', NULL, 'AHSANUL BASHAR1972.jpg', 'AHSHANUL BASHAR.jpg', NULL, NULL, NULL, NULL),
(70, 'G23B1993F', NULL, NULL, '2023-02-16', 'G23B1993F01', 1, 23, '42', 1, 46, 'Shamsia Muktadir', 'Elora', NULL, '2', 2, NULL, 47, 'BAPEX, Petrobangla', 'Manager (Geology)', '+8801726187645', 'elora.bapex@yahoo.com#mailto:elora.bapex@yahoo.com#', '78/A, 3rd Floor,\r\nPurana Paltan Line,\r\nDhaka-1000', '78/A, 3rd Floor,\r\nPurana Paltan Line,\r\nDhaka-1000', NULL, 'shamsia muktadir elora (1990-1991).jpg', 'shamsia muktadir elora (1990-1991).jpg', NULL, NULL, NULL, NULL),
(71, 'G34B2005F', NULL, NULL, '2023-02-16', 'G34B2005F02', 1, 34, '53', 1, 58, 'Kamrun', 'Nahar', NULL, '2', 2, NULL, 59, 'BAPEX', 'Deputy Manager', '+8801768021131', 'ratna.geo@gmail.com#mailto:ratna.geo@gmail.com#', 'Flat no:5B, 5th Floor, House no:5,\r\nNew Paltan Line, Azimpur, PS: Lalbagh,\r\nPO: New Market-1205, Dhaka', 'BAPEX Bhaban, 4 Kawran Bazar, 2nd Floor, Laboratory Division, Dhaka-1215', NULL, 'KAMRUN NAHAR (2001-2002).jpg', 'KAMRUN NAHAR (2001-2002).jpg', NULL, NULL, NULL, NULL),
(72, 'G37B2008M', NULL, NULL, '2023-02-16', 'G37B2008M02', 1, 37, '56', 1, 61, 'Md. Abdul', 'Mumin', NULL, '1', 2, NULL, 62, 'BAPEX', 'Assistant Manager (Geology)', '+8801670080132', 'abdulmumindu@yahoo.com#mailto:abdulmumindu@yahoo.com#', 'F-13, Rupayan Z.A. Tower,\r\n115, Shantinagar, Dhaka-1217', 'F-13, Rupayan Z.A. Tower,\r\n115, Shantinagar, Dhaka-1217', NULL, 'MD. ABDUL MUNIN 2004-2005.jpg', 'MUMIN.jpg', NULL, NULL, NULL, NULL),
(73, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M01', 1, 40, '59', 1, 64, 'Hasan', 'Ali', NULL, '1', 2, NULL, 65, 'BAPEX', 'Assistant Manager (Geophysics)', '+8801914388170', 'hasan007.aliha@gmail.com#mailto:hasan007.aliha@gmail.com#', 'Vill: Ramerkura, PO: Jhenaigati,\r\nPS: Jhenaigati, Dist: Sherpur', 'Geophysical Division, 11th Floor, BAPEX Bhaban, 4, Karwanbazar, Dhaka-1215', NULL, 'HASAN ALI 2007-2008.jpg', 'HASAN ALI 2007-2008.jpg', NULL, NULL, NULL, NULL),
(74, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M02', 1, 41, '60', 1, 65, 'Md. Hossain Al Imran', 'Sifat', NULL, '1', 2, NULL, 66, 'BAPEX', 'Assistant Manager (Geophysics)', '+8801737220391', 'alimran417@gmail.com#mailto:alimran417@gmail.com#', 'Vill & PO: Chotodup,\r\nUpazila: Atwari,\r\nDist: Panchagarh', 'House no: 45, Road no: 2,\r\nMirpur-2, Dhaka', NULL, 'MD. HOSSAIN AL IMRAN SIFAT2008-2009.jpg', 'MD. HOSSAIN AL IMRAN SIFAT2008-2009.jpg', NULL, NULL, NULL, NULL),
(75, 'G36B2007M', NULL, NULL, '2023-02-16', 'G36B2007M01', 1, 36, '55', 1, 60, 'Abdullah All', 'Rajib', NULL, '1', 2, NULL, 61, 'Sonali Bank Limited', 'Principal Officer', '+8801682711074', 'rajibdu5@gmail.com#mailto:rajibdu5@gmail.com#', 'C/O- Md. Ruhul Amin\r\nVill: Manushura, PO: Deautokon,\r\nPS: Purbadhala, Dist: Netrokona', 'Sonali Bank ltd,Madanpur br.Netrokona.', NULL, 'ABDULLAH ALL RAJIB (2003-2004).jpg', 'ABDULLAH ALL RAJIB (2003-2004).jpg', NULL, NULL, NULL, NULL),
(76, 'L35B2006M', NULL, NULL, '2023-02-16', 'L35B2006M01', 1, 35, '54', 3, 59, 'S.M. Mahtab-ul-Alam', NULL, NULL, '1', 2, NULL, 60, 'BAPEX', 'Deputy Manager (Geophysics)', '+8801717577269', 'mahtabdu19@gmail.com#mailto:mahtabdu19@gmail.com#', 'Block # G/1, Road # 05, House # 12,\r\nMirpur-2, Dhaka-1216', 'BAPEX Bhaban, 4 Karwan Bazar , Dhaka - 1215', NULL, 'SM MAHTAB-UL-ALAM2002-2003.jpg', 'SM MAHTAB-UL-ALAM2002-2003.jpg', NULL, NULL, NULL, NULL),
(77, 'G16B1986M', NULL, NULL, '2023-02-16', 'G16B1986M02', 1, 16, '35', 1, 39, 'A.K.M Manjur', 'Kabir', NULL, '1', 2, NULL, 40, 'BAPEX', 'General Manager (Planning)', '+8801708139827', 'manjurkabir.mk@gmail.com#mailto:manjurkabir.mk@gmail.com#', 'Vill: Gopalpur, PO: Pirojpur,\r\nPS: Mujubnagar, Dist: Meherpur', 'BAPEX BHABAN (LEVEL-07), 4, Kawran Bazar, Dhaka-1215', NULL, 'A.KM. MANJUR KABIR(1983-1984).jpg', 'A.KM. MANJUR KABIR(1983-1984).jpg', NULL, NULL, NULL, NULL),
(78, 'G42B2013M', NULL, NULL, '2023-02-16', 'G42B2013M03', 1, 42, '61', 1, 66, 'Md. Nafiz', 'Imtiaz', NULL, '1', 2, NULL, 67, 'BAPEX (Geological Division)', 'Assistant Manager (Geology)', '+8801717735214', 'md.nafiz.imtiaz@gmail.com#mailto:md.nafiz.imtiaz@gmail.com#', 'House no #98, Road no #1/2,\r\nSathgara Charakbari, Rangpur Upo-shahar,\r\nRangpur Sadar, Rangpur-5401', 'Holding no #65, Flat no #5,\r\nAGB Colony (Al-helal Zone),\r\nGPO, Motijheel, Dhaka-1000', NULL, 'MD. NAFIZ IMTIAZ (2009-2010).jpg', 'MD. NAFIZ IMTIAZ (2009-2010).jpg', NULL, NULL, NULL, NULL),
(79, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M03', 1, 26, '45', 1, 49, 'Sheikh Moktadir', 'Hossain', NULL, '1', 2, NULL, 50, 'Bangladesh Gas Fields Company Limited (BGFCL)', 'Manager (Geology)', '+8801787677859', 'moktadirgeo@gmail.com#mailto:moktadirgeo@gmail.com#', 'C/O, Sheikh Mofazal Hossain\r\nThon Thonia, Shaeed Nogor,\r\nGohail Road, Bogra Sadar, Bogra', 'Reservoir Engineering Department,\r\nBangladesh Gas Fields Co. Ltd.,\r\nBrahmanbaria', NULL, 'SHEIKH MOKTADIR HOSSAIN (1993-1994).jpg', 'SHEIKH MOKTADIR HOSSAIN (1993-1994).jpg', NULL, NULL, NULL, NULL),
(80, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M07', 1, 32, '51', 1, 56, 'Baban', 'Saha', NULL, '1', 2, NULL, 57, 'Viyellatex Group', 'In-charge (Fabric Maintenance, Procurement)', '+8801911057924', 'baban436@yahoo.com#mailto:baban436@yahoo.com#', 'Mousumi House\r\n96 Kalibari Road, Patgudam\r\nMymensingh', '32/2 North Basabo, 1st Floor,\r\nSabujbag, Dhaka-1214', NULL, 'BABAN SAHA (1999-2000).jpg', 'BABAN SAHA (1999-2000).jpg', NULL, NULL, NULL, NULL),
(81, 'G42B2013F', NULL, NULL, '2023-02-16', 'G42B2013F01', 1, 42, '61', 1, 66, 'Janifer Hakim', 'Lupin', NULL, '2', 2, NULL, 67, 'Department of Geology, University of Dhaka', 'Lecturer', '+8801687269268', 'janiferhakim.lupin@yahoo.com#mailto:janiferhakim.lupin@yahoo.com#', 'Vill: Kurshi, PO: Padamdi,\r\nPS: Baliakandi, Dist: Rajbari', '19 Mayakanon, Shukur Mahal,\r\nFlat no.: A1, Basabo,\r\nSabujbag, Dhaka-1214', NULL, 'JANIFAR HAKIM LUPIN (2009-2010).jpg', 'JANIFAR HAKIM LUPIN (2009-2010).jpg', NULL, NULL, NULL, NULL),
(82, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M02', 1, 35, '54', 1, 59, 'Md. Nijam', 'Uddin', NULL, '1', 2, NULL, 60, 'BAPEX', 'Deputy Manager (Geophysics)', '+8801713188920', 'nazimgeodu@gmail.com#mailto:nazimgeodu@gmail.com#', 'House #40 (1), Ward no. #3\r\nBagan Bari, Munsef Para,\r\nBrahmanbaria', 'Bapex bhoban 4 kawran bazar dhaka', NULL, 'MD. NIJAM UDDIN 2002-2003.jpg', 'Nijam Uddin 35 Batch.jpg', NULL, NULL, NULL, NULL),
(83, 'L34B2005F', NULL, NULL, '2023-02-16', 'L34B2005F03', 1, 34, '53', 3, 58, 'Noor-E-Sonia', NULL, NULL, '2', 2, NULL, 59, 'BAPEX', 'Deputy Manager (Geophysics)', '+8801712642994', 'dipu_n@yahoo.com#mailto:dipu_n@yahoo.com#', 'Vill: Sararabad, PO: Narayanpur\r\nPS: Belabo, Dist: Narsingdi', '11th Floor, Bapex Bhaban,\r\n4 Kawran Bazar, Dhaka-1215', NULL, 'NOOR-E-SONIA2001-2002.jpg', 'Noor-E-Sonia batch 34.jpg', NULL, NULL, NULL, NULL),
(84, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M04', 1, 31, '50', 1, 55, 'Md. Moynul', 'Islam', NULL, '1', 2, NULL, 56, 'BAPEX', 'Manager (Geophysics)', '+8801714074202', 'moin354@yahoo.com#mailto:moin354@yahoo.com#', 'Vill: Chawklohai Jalalpur\r\nPO: Pabna Cadet College\r\nPS: Pabna Sadar, Dist: Pabna', '7/2 North Basabo,\r\nFlat no. 6/A,\r\nSabujbag, Dhaka-1214', NULL, 'MD.MOYNUL ISLAM (1998-1999).jpg', 'MD.MOYNUL ISLAM (1998-1999).jpg', NULL, NULL, NULL, NULL),
(85, 'L16B1986M', NULL, NULL, '2023-02-16', 'L16B1986M03', 1, 16, '35', 3, 39, 'Howlader Ohidul', 'Islam', NULL, '1', 2, NULL, 40, 'BAPEX', 'Deputy General Manager (Geology)', '+8801755694163', 'ohidulilo@yahoo.com; ohidul@bapex.com.bd#mailto:ohidulilo@yahoo.com; ohidul@bapex.com.bd#', 'Vill: Burrujbaria, PO: Daibajnahati,\r\nPS: Morrelganj, Dist: Bagerhat', 'Geological Division,\r\nBAPEX BHABAN (Level-10)\r\n4, Kawran Bazar, Dhaka-1215', NULL, 'HOWLADER OHIDUL ISLAM(1983-1984).jpg', 'HOWLADER OHIDUL ISLAM(1983-1984).jpg', NULL, NULL, NULL, NULL),
(86, 'L35B2006M', NULL, NULL, '2023-02-16', 'L35B2006M03', 1, 35, '54', 3, 59, 'Md. Tariqul Alam', 'Bhuiyan', NULL, '1', 2, NULL, 60, 'BAPEX', 'Deputy Manager (Geology)', '+8801712804016', 'tariqdu@gmail.com; tariq.alam@bapex.com.bd#mailto:tariqdu@gmail.com; tariq.alam@bapex.com.bd#', '327/1, Jafrabad Shankar,\r\nWest Dhanmondi, Dhaka-1207', '327/1, Jafrabad Shankar,\r\nWest Dhanmondi, Dhaka-1207', NULL, 'MD.TARIQUL ALAM BHUIYAN(2002-2003).jpg', 'MD.TARIQUL ALAM BHUIYAN(2002-2003).jpg', NULL, NULL, NULL, NULL),
(87, 'L29B2000M', NULL, NULL, '2023-02-16', 'L29B2000M01', 1, 29, '48', 3, 53, 'Tariqul', 'Islam', NULL, '1', 2, NULL, 54, 'BAPEX', 'Manager (Geophysics)', '+8801713188925', 'nipun301@gmail.com#mailto:nipun301@gmail.com#', 'Vill: Khidirpur, PO: Taltola,\r\nPS: Kasba, Dist: Brahmanbaria', 'House-04, Road-11,\r\nRupnagar R/A, Rupnagar,\r\nDhaka-1216', 'Due 10,000', 'TARIQUL ISLAM (1996-1997).jpg', 'TARIQUL ISLAM (1996-1997).jpg', NULL, NULL, NULL, NULL),
(88, 'G23B1993M', NULL, NULL, '2023-02-16', 'G23B1993M03', 1, 23, '42', 1, 46, 'Meherul', 'Hasan', NULL, '1', 2, NULL, 47, 'BAPEX\r\nBAPEX', 'Deputy General Manager (Geophysical division)', '+8801713188311', 'meherul_bapex@yahoo.com#mailto:meherul_bapex@yahoo.com#', 'Vill: Kazlakhati, PO: Kamar Khali,\r\nPS: Bakerganj, Dist: Barisal', 'Bapex Bhavan, Level 11, Geophysical Division, 4, Karwanbazar, Dhaka 1215', NULL, 'MEHERUL HASAN (1990-1991).jpg', 'MEHERUL HASAN (1990-1991).jpg', NULL, NULL, NULL, NULL),
(89, 'G42B2013F', NULL, NULL, '2023-02-16', 'G42B2013F02', 1, 42, '61', 1, 66, 'Masuma', 'Chowdhury', NULL, '2', 2, NULL, 67, 'Department of Geology, University of Dhaka', 'Lecturer', '+8801771775854', 'm.chowdhury@du.ac.bd#mailto:m.chowdhury@du.ac.bd#', 'Vill: Shibganj, PO: Doriyapur,\r\nPS: Mohadevpur, Dist: Naogaon', 'Department of Geology\r\nUniversity of Dhaka\r\nDhaka-1000', NULL, 'MASUMA CHOWDHURY (2009-2010).jpg', 'MASUMA CHOWDHURY (2009-2010).jpg', NULL, NULL, NULL, NULL),
(90, 'G36B2007M', NULL, NULL, '2023-02-16', 'G36B2007M02', 1, 36, '55', 1, 60, 'Md. Masud', 'Khan', NULL, '1', 2, NULL, 61, 'BAPEX', 'Assistant Manager (Geology)', '+8801616725422', 'khanmdmasuddu14@gmail.com#mailto:khanmdmasuddu14@gmail.com#', 'C/O- Md. Islam Khan\r\nVill: North Kolapara, PO: Rarikhal,\r\nPS: Sreenagar, Dist: Munshiganj', 'Laboratory Division (2nd Floor)\r\nBAPEX BHABAN,\r\n4, Kawran Bazar, Dhaka-1215', NULL, 'MD. MASUD KHAN (2003-2004).jpg', 'MD. MASUD KHAN (2003-2004).jpg', NULL, NULL, NULL, NULL),
(91, 'G29B2000F', NULL, NULL, '2023-02-16', 'G29B2000F01', 1, 29, '48', 1, 53, 'Sabiha', 'Chowdhury', NULL, '2', 2, NULL, 54, 'BAPEX', 'Manager (Geology)', '+8801915491415', 'sabihanita@gmail.com#mailto:sabihanita@gmail.com#', '7/5, Bl #C,\r\nLalmatia, Dhaka', '7/5, Bl #C,\r\nLalmatia, Dhaka', NULL, 'SABIHA CHOWDHURY (1996-1997).jpg', 'SABIHA CHOWDHURY (1996-1997).jpg', NULL, NULL, NULL, NULL),
(92, 'G27B1997F', NULL, NULL, '2023-02-16', 'G27B1997F01', 1, 27, '46', 1, 50, 'Most. Shahanaj', 'Hossain', NULL, '2', 2, NULL, 51, 'BAPEX', 'Manager (Geology)', '+8801950012362', 'shahanaj.bapex@gmail.com#mailto:shahanaj.bapex@gmail.com#', 'Vill: Saguna, PO: Saguna,\r\nPS: Belkuchi, Dist: Sirajganj', '531/1, East Kazipara,\r\nMirpur, Dhaka', NULL, 'MOST. SHAHANAJ HOSSAIN (1994-1995).jpg', 'MOST. SHAHANAJ HOSSAIN (1994-1995).jpg', NULL, NULL, NULL, NULL),
(93, 'G32B2003F', NULL, NULL, '2023-02-16', 'G32B2003F02', 1, 32, '51', 1, 56, 'Marin', 'Akter', NULL, '2', 2, NULL, 57, 'BAPEX', 'Manager (Geology)', '+8801700711924', 'marinakter@gmail.com#mailto:marinakter@gmail.com#', 'Vill: South Bhabanipur,\r\nPS: Rajbari, Upazila: Rajbari\r\nDist: Rajbari', 'BAPEX BHABAN, 10TH FLOOR, GEOLOGICAL DIVISION, 04 KAWRAN BAZAR,  DHAKA -1215', NULL, 'MARIN AKTER (1999-2000).jpg', 'MARIN AKTER (1999-2000).jpg', NULL, NULL, NULL, NULL),
(94, 'G06B1975M', NULL, NULL, '2023-02-16', 'G06B1975M04', 1, 6, '24', 1, 28, 'Mohammad Abdul', 'Baqi', NULL, '1', 2, NULL, 29, 'RMM Power associated with Gazprom EP International', 'Head of Hydrocarbon Exploration Division', '+8801867778750', 'mabaqi72@yahoo.com.bd#mailto:mabaqi72@yahoo.com.bd#', '33/A/1, Rajani Chowdhury Road,\r\nGandaria, Dhaka-1204', '33/A/1, Rajani Chowdhury Road,\r\nGandaria, Dhaka-1204', NULL, 'MOHAMMAD ABDUL BAQI 1972-75.jpg', 'MOHAMMAD ABDUL BAQI 1972-75.jpg', NULL, NULL, NULL, NULL),
(95, 'G16B1986M', NULL, NULL, '2023-02-16', 'G16B1986M04', 1, 16, '35', 1, 39, 'Mohammad Alamgir', 'Hossain', NULL, '1', 2, NULL, 40, 'BAPEX', 'General Manager (Geology)', '+8801730791527', 'alamgir_hossaingeo@yahoo.com#mailto:alamgir_hossaingeo@yahoo.com#', 'C/O, Afsar Ali Sheikh\r\nVill: Khanmahmudpur, PO: Dhopadaha,\r\nPS: Santhia, Dist: Pabna', 'BAPEX BHABAN (LEVEL-10), 4, KAWRAN BAZAR, DHAKA-1215', NULL, 'MOHAMMAD ALAMGIR HOSSAIN (1983-1984).jpg', 'MOHAMMAD ALAMGIR HOSSAIN (1983-1984).jpg', NULL, NULL, NULL, NULL),
(96, 'L03B1972M', NULL, NULL, '2023-02-16', 'L03B1972M01', 1, 3, '21', 3, 25, 'Badrul', 'Imam', NULL, '1', 2, NULL, 26, 'Department of Geology, University of Dhaka', 'Professor', '+8801764077580', 'badrul@du.ac.bd#mailto:badrul@du.ac.bd#', 'Apt # C6\r\nHouse # 8, Road # 5\r\nDhanmondi, Dhaka 1205', 'Apt # C6\r\nHouse # 8, Road # 5\r\nDhanmondi, Dhaka 1205', NULL, 'BADRUL IMAM (1964-1970).jpg', 'Badrul Imam.jpg', NULL, NULL, NULL, NULL),
(97, 'L11B1981M', NULL, NULL, '2023-02-16', 'L11B1981M04', 1, 11, '30', 3, 34, 'M. Aziz', 'Hasan', NULL, '1', 2, NULL, 35, 'Department of Geology, University of Dhaka', 'Professor', '+8801552392145', 'mahasan@du.ac.bd#mailto:mahasan@du.ac.bd#', 'Flat 1-A\r\nHouse 276, Block - C\r\nKhilgaon, Dhaka 1219', 'Flat 1-A\r\nHouse 276, Block - C\r\nKhilgaon, Dhaka 1219', NULL, 'M. AZIZ HASAN 1978-79.jpg', 'M. AZIZ HASAN 1978-79.jpg', NULL, NULL, NULL, NULL),
(98, 'L01B1970M', NULL, NULL, '2023-02-16', 'L01B1970M02', 1, 1, '19', 3, 23, 'Mahmood', 'Alam', NULL, '1', 2, NULL, 24, 'Deparment of Geology, University of Dhaka', 'Professor', '+8801992717849', 'dralam2000@gmail.com#mailto:dralam2000@gmail.com#', 'House# 21, Road# 18 \r\nBlock# J\r\nBanani, Dhaka.', 'House# 21, Road# 18 \r\nBlock# J\r\nBanani, Dhaka.', NULL, 'DR. MAHMUD ALAM 1970.jpg', 'DR. MAHMUD ALAM 1970.jpg', NULL, NULL, NULL, NULL),
(99, 'G31B2002F', NULL, NULL, '2023-02-16', 'G31B2002F02', 1, 31, '49', 1, 55, 'Most. Afroza', 'Begum', NULL, '2', 2, NULL, 56, 'Homemaker', NULL, '+8801734839790', 'asha1980.du@yahoo.com#mailto:asha1980.du@yahoo.com#', 'College Road\r\nGaibandha', '1197/1, East Shewrapara\r\nMirpur, Dhaka', NULL, 'MOST. AFROZA BEGUM 1997-1998.jpg', 'MOST. AFROZA BEGUM 1997-1998.jpg', NULL, NULL, NULL, NULL),
(100, 'L06B1975M', NULL, NULL, '2023-02-16', 'L06B1975M05', 1, 6, '24', 3, 28, 'Syed Humayun', 'Akhter', NULL, '1', 2, NULL, 29, 'Department of Goelogy, Dhaka University', 'Professor', '+8801552423975', 'shakhter@du.ac.bd#mailto:shakhter@du.ac.bd#', 'Niribili\r\n59, Mahatab Uddin Ahmed Road\r\nKalishankarpur\r\nKushtia 7000', 'A-11, Shaheed Munir Chowdhury Bhabhan\r\nIshakha Road\r\nDhaka University\r\nDhaka 1000', NULL, 'DR. SYED HUMAYUN AKHTER 1972-1973.jpg', 'Dr Syed Hymaun Akhter 1972-73.jpg', NULL, NULL, NULL, NULL),
(101, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M03', 1, 41, '59', 1, 65, 'Morshedur', 'Rahman', NULL, '1', 2, NULL, 66, 'BAPEX', 'Assistant Manager', '+8801676410521', 'morshedur.rahman9@gmail.com#mailto:morshedur.rahman9@gmail.com#', 'Vill-Nalua\r\nPO-Morfola Bazaar\r\nSatkania, Chittagong', 'Bapex Building (11th Floor), 4 Kawran Bazar, Dhaka-1215', NULL, 'MORSHEDUR RAHMAN 2007-2008.jpg', 'Morshedur Rahman 41st Batch.jpg', NULL, NULL, NULL, NULL),
(102, 'G32B2003F', NULL, NULL, '2023-02-16', 'G32B2003F03', 1, 32, '51', 1, 56, 'Sharmin', 'Akther', NULL, '2', 2, NULL, 57, 'Maddhapara Granite Mining Company Ltd.', 'Assistant Manager', '+8801726411154', 'sharmin.mgmcl@gmail.com#mailto:sharmin.mgmcl@gmail.com#', 'Vill - Nayagaon\r\nPO - Munshiganj\r\nPS - Munshiganj\r\nDis - Munshiganj', 'Maddhapara Granite Mining Company Limited, Maddhapara, Parbatipur, Dinajpur.', NULL, 'SHARMIN AKTER (1999-2000).jpg', 'Sharmin AKther 33 Batch.jpg', NULL, NULL, NULL, NULL),
(103, 'L29B2000M', NULL, NULL, '2023-02-16', 'G29B2000M02', 1, 29, '48', 3, 53, 'Mohammad Mokter', 'Hossain', NULL, '1', 2, NULL, 54, 'Maddhapara Granite Mining Company Ltd.', 'Manager', '+8801799997468', 'mokter.mgmcl@gmail.com#mailto:mokter.mgmcl@gmail.com#', 'Vill - Nayagaon\r\nPO - Munshiganj\r\nPS - Munshiganj\r\nDis - Munshiganj', 'Maddhapara Granite Mining Company Limited, Maddhapara, Parbatipur, Dinajpur.', NULL, 'MUHAMMAD MOKTER HOSSAIN (1996-1997).jpg', 'MUHAMMAD MOKTER HOSSAIN (1996-1997).jpg', NULL, NULL, NULL, NULL),
(104, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M04', 1, 35, '54', 1, 59, 'SM Morshedul', 'Hasin', NULL, '1', 2, NULL, 60, 'JICA', 'Hydrogeologist', '+8801715760397', 'morshed_hasin040@yahoo.com#mailto:morshed_hasin040@yahoo.com#', 'Vill + PO: Chanchkoir\r\nUpazila: Gurudaspur\r\nDis: Natore', '340/B, south Kafru,  Dhaka Cantonment, Dhaka-1206', NULL, 'SM MORSHEDUL HASIN (2002-2003).jpg', 'Morshed Hasins.jpg', NULL, NULL, NULL, NULL),
(105, 'L11B1981M', NULL, NULL, '2023-02-16', 'L11B1981M05', 1, 11, '30', 3, 34, 'Md. Zonaid', 'Iqbal', NULL, '1', 2, NULL, 35, 'Business', NULL, '+8801819215121', 'zonaid.iqbal@yahoo.com#mailto:zonaid.iqbal@yahoo.com#', 'House # 2, Road # 13\r\nSector # 1\r\nUttara, Dhaka 1230', 'House # 2, Road # 13\r\nSector # 1\r\nUttara, Dhaka 1230', NULL, 'MD.ZONAID IQBAL 1978-79.jpg', 'MD.ZONAID IQBAL 1978-79.jpg', NULL, NULL, NULL, NULL),
(106, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M04', 1, 41, '59', 1, 65, 'Md. Hasnat', 'Jaman', NULL, '1', 2, NULL, 66, 'Department of Geology and Mining, Barisal University', 'Lecturer', '+8801723961386', 'hasnatjaman.du@gmail.com#mailto:hasnatjaman.du@gmail.com#', 'Vill+PO: Sakowa\r\nPS: Boda\r\nDis: Panchagarh', 'Department of Geology and Mining\r\nBarisal University, Barisal Sadar\r\nBarisal', NULL, 'MD HASNAT JAMAN (2008-2009).jpg', 'Sayem.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `member_infos` (`id`, `BatchID`, `SL`, `unique_count_id`, `date`, `member_id`, `entery_degree`, `batch`, `admission_session`, `alumni_category`, `entery_degree_completion_year`, `first_name`, `last_name`, `user_name`, `gender_id`, `exit_degree`, `bsc_year_passing`, `exit_year`, `current_affiliation`, `designation`, `contact_no`, `email`, `parmanent_address`, `current_address`, `note`, `scanced_form`, `member_image`, `entry_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(107, 'G15B1985M', NULL, NULL, '2023-02-16', 'G15B1985M02', 1, 15, '34', 1, 38, 'Md. Julleh Jalalur', 'Rahman', NULL, '1', 2, NULL, 39, 'Department of Geological Sciences, Jahangir Nagar University', 'Professor', '+8801715474447', 'jrahman437@gmail.com#mailto:jrahman437@gmail.com#', '50/2 Kalabagan\r\n1st Lane, Dhaka 1205', 'Department of Geological Sciences, \r\nJahangir Nagar University\r\nSavar, Dhaka 1342', 'Due Taka 10,000', 'MD. JULLEH JALALUR RAHMAN 1982-1983.jpg', 'MD. JULLEH JALALUR RAHMAN 1982-1983.jpg', NULL, NULL, NULL, NULL),
(108, 'L32B2003M', NULL, NULL, '2023-02-16', 'L32B2003M08', 1, 32, '51', 3, 56, 'Mohammad Zaed', 'Iqbal', NULL, '1', 2, NULL, 57, 'Nifty Copper Mine, Australia', 'Exploration Geologist', '+61474169656', 'zaed.iqbal@metalsx.com.au#mailto:zaed.iqbal@metalsx.com.au#', 'C/40 Eastern Housing\r\nN.C.G Road\r\nArsen Gate, Postogola\r\nDhaka 1204', '586, Metcalfe Road, Ferndale\r\nPerth, WA 6148, Australia', NULL, 'mohammad zaed iqbal(1999-2000) .jpg', 'mohammad zaed iqbal(1999-2000) .jpg', NULL, NULL, NULL, NULL),
(109, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M05', 1, 20, '39', 1, 43, 'G.M. Azizur', 'Rahman', NULL, '1', 2, NULL, 44, 'Bangladesh Police', 'Additional Deputy Inspector General', '+8801720085879', 'aziz_jessore@yahoo.com#mailto:aziz_jessore@yahoo.com#', 'Vill: Bharat Bhaina\r\nPO: Gourighona\r\nPS: Keshabpur\r\nDis: Jessore', 'House # 53, Road #4\r\nSector 4, Uttara\r\nDhaka', NULL, 'GM AZIZUR RAHMAN (1987-1988).jpg', 'GM AZIZUR RAHMAN (1987-1988).jpg', NULL, NULL, NULL, NULL),
(110, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M09', 1, 32, '51', 1, 56, 'Md. Ariful', 'Islam', NULL, '1', 2, NULL, 57, 'UNIOPS', 'Communication, Monitoring, and Evaluation Officer', '+8801919357325', 'arifuli@unops.org#mailto:arifuli@unops.org#', 'Vill: Kharara\r\nPO: Boholbaria\r\nPS: Mirpur\r\nDis: Kushtia', '741/4 Baitul Aman Housing Soceity Ltd.\r\nRoad No 8, Adabar\r\nDhaka 1207', NULL, 'md. ariful islam (1999-2000).jpg', 'md. ariful islam (1999-2000).jpg', NULL, NULL, NULL, NULL),
(111, 'G00M1968M', NULL, NULL, '2023-02-16', 'G00M1968M04', 2, 0, '19', 1, 20, 'Mostafa Zamal', 'Mohiuddin', NULL, '1', 2, NULL, 20, 'Geological Survey of Bangladesh', 'Director General (Retired)', NULL, NULL, '56, K.B. Rudra Road\r\nPO: Posta\r\nChawk Bazaar\r\nDhaka 1211', '56, K.B. Rudra Road\r\nPO: Posta\r\nChawk Bazaar\r\nDhaka 1211', NULL, 'MOSTAFA ZAMAL MOHIUDDIN 1967-1968.jpg', 'MOSTAFA ZAMAL MOHIUDDIN 1967-1968.jpg', NULL, NULL, NULL, NULL),
(112, 'L06B1975M', NULL, NULL, '2023-02-16', 'L06B1975M06', 1, 6, '24', 3, 28, 'Mohammad Qumrul', 'Hassan', NULL, '1', 2, NULL, 29, 'Department of Geology, University of Dhaka', 'Professor', '+8801819201521', 'mqhassan2009@gmail.com#mailto:mqhassan2009@gmail.com#', 'Boratia, Kalampur\r\nDhamrai\r\nDhaka', 'Department of Geology\r\nUniversity of Dhaka\r\nDhaka 1000', NULL, 'Untitled-2.jpg', 'Qumrul Hassan 1975.jpg', NULL, NULL, NULL, NULL),
(113, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M06', 1, 20, '39', 1, 43, 'Choudhury Kamrul', 'Hasan', NULL, '1', 2, NULL, 44, 'Itna, Kishoreganj', 'Chairman, Upazila Parishad', '+8801919621824', 'ckhasan2014@gmail.com#mailto:ckhasan2014@gmail.com#', 'Vill: Thaneswar,  PO: Badla,\r\nUpazila: Itla, Dist: Kishoreganj', '2/3 Shahajahan Road, Mohammadpur, Dhaka', NULL, 'CHOUDHURY KAMRUL HASAN 1987-1988.jpg', 'CHOUDHURY KAMRUL HASAN 1987-1988.jpg', NULL, NULL, NULL, NULL),
(114, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M01', 1, 30, '49', 1, 54, 'Mohammad Ashraful', 'Alam', NULL, '1', 6, NULL, 126, 'Fair Distribution Ltd.', 'Assistant Manager', '+8801711507929', 'ashrafmdalam@yahoo.com#mailto:ashrafmdalam@yahoo.com#', NULL, 'H # 237, R # 2, Block # E,\r\nWard # 17, Gazipur City', NULL, 'MOHAMMAD ASHRAFUL ALAM 1997-1998.jpg', 'Mohammad Ashraful Alam.JPG', NULL, NULL, NULL, NULL),
(115, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M02', 1, 30, '49', 1, 54, 'Md. Aminur', 'Rahman', NULL, '1', 2, NULL, 55, 'Bnagladesh Council of Scientific and Industrial Research', 'Senior Scientific Officer', '+8801711277117', 'aminur08@gmail.com#mailto:aminur08@gmail.com#', '18, Amtala Road, Jhalakati', 'Institution of Mining, Mineralogy & Metallurgy (IMMM), BCSIR, Joypurhat, Bangladesh', NULL, 'MD. AMINUR RAHMAN 1997-1998.jpg', 'MD. AMINUR RAHMAN 1997-1998.jpg', NULL, NULL, NULL, NULL),
(116, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M03', 1, 30, '48', 1, 54, 'Abu Shaheen Md. Omar Faruq', 'Khan', NULL, '1', 2, NULL, 55, 'Janata Bank Limited', 'Senior Principal Officer', '+8801779412755', 'faruq_du@yahoo.com#mailto:faruq_du@yahoo.com#', 'Bilshuka, Bhabanipur, Bheramara,\r\nKushtia', 'Manager, Janata Bank Limited, Nakla Branch, Sherpur', NULL, 'ABU SHAHEEN MD. OMAR FARUQ KHAN 1996-1997.jpg', 'ABU SHAHEEN MD. OMAR FARUQ KHAN 1996-1997.jpg', NULL, NULL, NULL, NULL),
(117, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M04', 1, 30, '49', 1, 54, 'S.M. Jahirul Islam', 'Joy', NULL, '1', 2, NULL, 55, 'Sheemanta Feeling Station', 'Managing Director', '+8801715484700', 'joy.shemantagroup@gmail.com#mailto:joy.shemantagroup@gmail.com#', 'B # 26, Ward # 1,\r\nKaliakair Pourashoba, PS: Kaliakair, \r\nGazipur', 'Managing Director, Shemanta Filling Station Ltd , Kaliakoir, Gazipur', NULL, 'SM JAHIRUL ISLAM JOY 1997-1998.jpg', 'SM JAHIRUL ISLAM JOY 1997-1998.jpg', NULL, NULL, NULL, NULL),
(118, 'L24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M01', 1, 24, '41', 3, 47, 'Saleh', 'Mohammad', NULL, '1', 2, NULL, 48, 'MAS Consortium Ltd.', 'Managing Director', '+8801711607422', 'saleh.mohammad00@gmail.com#mailto:saleh.mohammad00@gmail.com#', '20, Green Corner, Green Road,\r\nKalabagan, Dhaka- 1205', '20, Green Corner, Green Road,\r\nKalabagan, Dhaka- 1205', NULL, 'SALEH MOHAMMAD 1989-1990.jpg', 'SALEH MOHAMMAD 1989-1990.jpg', NULL, NULL, NULL, NULL),
(119, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M01', 1, 22, '41', 1, 45, 'Md. Saiful', 'Islam', NULL, '1', 2, NULL, 46, 'Ministry of Information', 'Deputy Secretary', '+8801715665146', 'saifuldocbd@gmail.com#mailto:saifuldocbd@gmail.com#', 'Vill: Kumaria, PO: Banarerpar,\r\nUpazila: Jamalpur Sadar, Dist: Jamalpur', 'House no B 11/ E 2,Eskaton Garden Officers Quarters  , Dhaka.', NULL, 'MD. SAIFUL ISLAM 1989-1990.jpg', 'MD. SAIFUL ISLAM 1989-1990.jpg', NULL, NULL, NULL, NULL),
(120, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M02', 1, 22, '41', 1, 45, 'Farid Uddin', 'Ahmed', NULL, '1', 2, NULL, 46, 'Dom-Inno Group', 'Senior Manager', '+8801711349514', 'farid_raj_pang@yahoo.com#mailto:farid_raj_pang@yahoo.com#', 'Vill: Jalilpara, PO: Pangsha,\r\nPS: Pangsha, Dist: Rajbari', 'Flat- 3A, 6/2 Bashati Housing \r\nBarobug, Mirpur-2, Dhaka', NULL, 'FARID UDDIN AHMED 1989-1990.jpg', 'FARID UDDIN AHMED 1989-1990.jpg', NULL, NULL, NULL, NULL),
(121, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M05', 1, 30, '49', 1, 54, 'Mohammad Feruj', 'Alam', NULL, '1', 2, NULL, 55, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director', '+8801711206506', 'ferujgsb@yahoo.com#mailto:ferujgsb@yahoo.com#', 'Vill: Ratonpur, PO: Gram Raipur\r\nUpazila: Daudkandi, Dist: Comilla', '7/9 Baily Square, Officers\' Quarter,\r\nBaily Road, Ramna, Dhaka', NULL, 'MOHAMMAD FERUJ ALAM 1997-1998.jpg', 'MOHAMMAD FERUJ ALAM 1997-1998.jpg', NULL, NULL, NULL, NULL),
(122, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M06', 1, 30, '49', 1, 54, 'Md. Selim', 'Reza', NULL, '1', 2, NULL, 55, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director (Geophysics)', '+8801718007171', 'reza.geophysics@gmail.com#mailto:reza.geophysics@gmail.com#', 'Vill: Satnail, PO: Nayagola,\r\nUpazila: Chapai Nawabganj,\r\nDist: Chapai Nawabganj', 'Deputy Director (Geophysics)\r\nGeological Survey of Bangladesh\r\n153, Pioneer Road, Segunbagicha, Dhaka-1000', NULL, 'MD. SELIM REZA 1997-1998.jpg', 'MD. SELIM REZA 1997-1998.jpg', NULL, NULL, NULL, NULL),
(123, 'G34B2005M', NULL, NULL, '2023-02-16', 'G34B2005M06', 1, 34, '53', 1, 58, 'Faruk', 'Hossain', NULL, '1', 2, NULL, 59, 'Geological Survey of Bangladesh (GSB)', 'Assistant Director', '+8801755301638', 'geofaruk104@gmail.com#mailto:geofaruk104@gmail.com#', 'Vill: Sailerkanda, PO: Sailerkanda,\r\nPS & Dist: Jamalpur', 'Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, 'faruk hossain2001-2002.jpg', 'faruk hossain2001-2002.jpg', NULL, NULL, NULL, NULL),
(124, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M07', 1, 30, '49', 1, 54, 'Md. Ashraf', 'Hossain', NULL, '1', 2, NULL, 55, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director', '+8801712501118', 'ashgsbbd@yahoo.com#mailto:ashgsbbd@yahoo.com#', 'Vill: Malikanda, PO: Meghula,\r\nUpazila: Dohar, Dist: Dhaka', 'Flat no-4/D, (Ideal Samson), 161, Shantinagar, Dhaka', NULL, 'MD. ASHRAF HOSSAIN 1997-1998.jpg', 'MD. ASHRAF HOSSAIN 1997-1998.jpg', NULL, NULL, NULL, NULL),
(125, 'G29B2000M', NULL, NULL, '2023-02-16', 'G29B2000M03', 1, 29, '48', 1, 53, 'Anwar Saadat Mohammad', 'Sayem', NULL, '1', 2, NULL, 54, 'Geological Survey of Bangladesh (GSB)', 'Assistant Director', '+8801711935574', 'sayem_3014@yahoo.com#mailto:sayem_3014@yahoo.com#', 'Vill: Balith, PO: Shahabeliswar,\r\nUpazila: Dhamrai, Dist: Dhaka', 'Geological Survey of Bangladesh, 153 pioneer Road Segunbaghicha, Dhaka', NULL, 'ANWAR SAADAT MOHAMMAD SAYEM 1996-1997.jpg', 'ANWAR SAADAT MOHAMMAD SAYEM 1996-1997.jpg', NULL, NULL, NULL, NULL),
(126, 'G11B1981M', NULL, NULL, '2023-02-16', 'G11B1981M06', 1, 11, '30', 1, 34, 'Mahmud', 'Hasan', NULL, '1', 2, NULL, 35, 'Geological Survey of Bangladesh (GSB)', 'Director', '+8801712924965', 'mhasan_ulania@yahoo.com#mailto:mhasan_ulania@yahoo.com#', 'Vill & PO: Ulania,\r\nUpazila: Mehendiganj,\r\nDist: Barisal', '153, Pioneer Road, Segunbagicha, Dhaka', NULL, 'MAHMUD HASAN 1979-80.jpg', 'MAHMUD HASAN 1979-80.jpg', NULL, NULL, NULL, NULL),
(127, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M05', 1, 31, '49', 1, 55, 'Md. Hossain', 'Khasru', NULL, '1', 2, NULL, 56, 'Geological Survey of Bangladesh (GSB)', 'Assistant Director (Geology)', '+8801711373278', 'khasru107@yahoo.com#mailto:khasru107@yahoo.com#', 'Vill: Haratoly, PO: Alahipur,\r\nSadar Dakshin, Comilla', 'Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, 'MD. HOSSAIN KHASRU 1997-1998 .jpg', 'MD. HOSSAIN KHASRU 1997-1998 .jpg', NULL, NULL, NULL, NULL),
(128, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M01', 1, 12, '31', 1, 35, 'Kamrul', 'Ahsan', NULL, '1', 2, NULL, 36, 'Geological Survey of Bangladesh (GSB)', 'Director', '+8801711152845', 'kamrulgsb@yahoo.com#mailto:kamrulgsb@yahoo.com#', 'Vill: Miapur, PO: Mirerpara,\r\nUpazila: Begumganj, Dist: Noakhali', '33/15, Pallabi,\r\nDhaka- 1216', NULL, 'KAMRUL AHSAN 1979-1980.jpg', 'KAMRUL AHSAN 1979-1980.jpg', NULL, NULL, NULL, NULL),
(129, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M03', 1, 22, '41', 1, 45, 'Md. Kamal', 'Hossain', NULL, '1', 2, NULL, 46, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director', '+8801911736982', 'kamalgsb@gmail.com#mailto:kamalgsb@gmail.com#', 'Vill: Powta, PO: Powta,\r\nPS: Nalchity, Dist: Zhalokati', '65/B, Azimpur Govt. Colony,\r\nPS: Lalbagh, PO: New Market,\r\nDhaka- 1205', NULL, 'MD. KAMAL HOSSAIN 1989-1990.jpg', 'MD. KAMAL HOSSAIN 1989-1990.jpg', NULL, NULL, NULL, NULL),
(130, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M06', 1, 31, '49', 1, 55, 'Mohammed', 'Masum', NULL, '1', 2, NULL, 56, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director (Geology)', '+8801726408502', 'masum613@yahoo.com#mailto:masum613@yahoo.com#', 'Vill: Gangair, PO: Dholapara,\r\nPS: Ghatail, Dist: Tangail', 'Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, 'MOHAMMED MASUM 1997-1998.jpg', 'MOHAMMED MASUM 1997-1998.jpg', NULL, NULL, NULL, NULL),
(131, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M10', 1, 32, '51', 1, 56, 'Md. Nuruzzaman', 'Sabuj', NULL, '1', 2, NULL, 57, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director', '+8801774128152', 'nsabuj@yahoo.com#mailto:nsabuj@yahoo.com#', 'Bhandaria Bus Stand, Bhandaria,\r\nPirojpur', 'Room no. 242, Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, NULL, 'Nuruzzaman Sabuj.jpg', NULL, NULL, NULL, NULL),
(132, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M11', 1, 32, '51', 1, 56, 'Hossain Mohammad', 'Arifeen', NULL, '1', 2, NULL, 57, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director (Geology)', '+8801818412581', 'palarifeendu@yahoo.com#mailto:palarifeendu@yahoo.com#', 'Section-6, Block-D,\r\nRoad-2, House-22,\r\nPallabi, Dhaka-1216', 'Section-6, Block-D,\r\nRoad-2, House-22,\r\nPallabi, Dhaka-1216', NULL, 'HOSSAIN MOHAMMAD ARIFEEN 1999-2000.jpg', 'HOSSAIN MOHAMMAD ARIFEEN 1999-2000.jpg', NULL, NULL, NULL, NULL),
(133, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M08', 1, 30, '47', 1, 54, 'Mohammad Alamgir', 'Kabir', NULL, '1', 2, NULL, 55, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director', '+8801716325832', 'kabirgsb@gmail.com#mailto:kabirgsb@gmail.com#', 'Vill: Dulihata, PO: Arialbazar,\r\nUpazila: Tongibari, Dist: Munshiganj', 'Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, 'MOHAMMAD ALAMGIR KABIR 1995-1996.jpg', 'MOHAMMAD ALAMGIR KABIR 1995-1996.jpg', NULL, NULL, NULL, NULL),
(134, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M07', 1, 31, '49', 1, 55, 'Md. Mahmood Hossain', 'Khan', NULL, '1', 2, NULL, 56, 'Geological Survey of Bangladesh (GSB)', 'Assistant Director (Geology)', '+8801717293411', 'apu.gsbdu@gmail.com#mailto:apu.gsbdu@gmail.com#', 'Vill: Shakdi Rampur, PO: Chandra,\r\nPS: Faridganj, Dist: Chandpur', 'Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, 'MD.MAHMOOD HOSSAIN KHAN 1997-1998.jpg', 'MD.MAHMOOD HOSSAIN KHAN 1997-1998.jpg', NULL, NULL, NULL, NULL),
(135, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M01', 1, 21, '40', 1, 44, 'Md. Kamrul', 'Ahsan', NULL, '1', 2, NULL, 45, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director', '+8801711733690', 'gsbkamrul@yahoo.com#mailto:gsbkamrul@yahoo.com#', 'Vill: Basper, PO: Tura Munshirhat,\r\nPS: Faridsori, Dist: Chandpur', 'Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, 'MD. KAMRUL AHSAN 1988-1989.jpg', 'MD. KAMRUL AHSAN 1988-1989.jpg', NULL, NULL, NULL, NULL),
(136, 'G32B2003F', NULL, NULL, '2023-02-16', 'G32B2003F04', 1, 32, '51', 1, 56, 'Lubna Yasmin', 'Khondakar', NULL, '2', 2, NULL, 57, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director (Geophysics)', '+8801760942026', 'lubnayk@yahoo.com#mailto:lubnayk@yahoo.com#', 'Flat no. B6\r\n5/9, Block-D, Lalmatia,\r\nDhaka-1207', 'Room no. 414, Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, 'LUBNA YASMIN KHONDAKAR 1999-2000.jpg', 'LUBNA YASMIN KHONDAKAR 1999-2000.jpg', NULL, NULL, NULL, NULL),
(137, 'G13B1983M', NULL, NULL, '2023-02-16', 'G13B1983M03', 1, 13, '32', 1, 36, 'Nizamuddin', 'Ahmed', NULL, '1', 2, NULL, 37, 'Geological Survey of Bangladesh (GSB)', 'Director (Geophysics)', '+8801711905893', 'litunu92@yahoo.com#mailto:litunu92@yahoo.com#', '167/A, Free School Street,\r\nKathal Bagan, Dhaka-1205', 'Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, 'NIZAMUDDIN AHMED  1980-1981.jpg', 'NIZAMUDDIN AHMED  1980-1981.jpg', NULL, NULL, NULL, NULL),
(138, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M02', 1, 21, '40', 1, 44, 'Mohammed Nurul', 'Hoque', NULL, '1', 2, NULL, 45, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director', '+8801716850107', 'nurul_gsb@yahoo.com#mailto:nurul_gsb@yahoo.com#', 'Vill & PO: Shovondandi, \r\nUpazila: Patiya,\r\nChittagong', 'Setu Homes, Building no # 3, Apartment no # A1,\r\n55 Box Nagar, Zoo Road, \r\nMirpur-1, Dhaka-1216', NULL, 'MOHAMMED NURUL HOQUE 1988-1989.jpg', 'MOHAMMED NURUL HOQUE 1988-1989.jpg', NULL, NULL, NULL, NULL),
(139, 'G24B1994F', NULL, NULL, '2023-02-16', 'G24B1994F01', 1, 24, '43', 1, 47, 'Salma', 'Akter', NULL, '2', 6, NULL, 126, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director', '+8801726706755', 'salmaakter_gsb@yahoo.com#mailto:salmaakter_gsb@yahoo.com#', '277/1, Ahmednagar Paikpara,\r\nMirpur, Dhaka-1216', 'Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, 'SALMA AKTER 1991-1992.jpg', 'SALMA AKTER 1991-1992.jpg', NULL, NULL, NULL, NULL),
(140, 'L30B2001F', NULL, NULL, '2023-02-16', 'L30B2001F01', 1, 30, '49', 3, 54, 'Syeda Jesmin', 'Haque', NULL, '2', 2, NULL, 55, 'Geological Survey of Bangladesh (GSB)', 'Assistant Director', '+8801911778560', 'juthi_n@yahoo.com#mailto:juthi_n@yahoo.com#', 'Surjalekha, New Alimpara,\r\nPratap Shaha Road,\r\nChandpur- 3600', 'Room- 415, Bhutatta Bhaban,\r\nGeological Survey of Bangladesh\r\n153, Pioneer Road, Segunbagicha, Dhaka-1000', NULL, 'SYEDA JESMIN HAQUE 1997-1998.jpg', 'SYEDA JESMIN HAQUE 1997-1998.jpg', NULL, NULL, NULL, NULL),
(141, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M08', 1, 31, '49', 1, 55, 'Mohammad Zohir', 'Uddin', NULL, '1', 2, NULL, 56, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director (Geophysics)', '+8801534521623', 'zohir.uddin@gmail.com#mailto:zohir.uddin@gmail.com#', '19, Badda Nagar Lane,\r\nHazaribag Park, Dhaka-1205\r\nPO: Newmarket, PS: Hazaribag', 'Geological Survey of Bangladesh\r\n153, Pioneer Road, \r\nSegunbagicha, Dhaka-1000', NULL, 'MOHAMMAD ZOHIR UDDIN 1997-1998.jpg', 'MOHAMMAD ZOHIR UDDIN 1997-1998.jpg', NULL, NULL, NULL, NULL),
(142, 'L14B1984M', NULL, NULL, '2023-02-16', 'L14B1984M02', 1, 14, '33', 3, 37, 'Abdul Baquee Khan', 'Majlis', NULL, '1', 2, NULL, 38, 'Geological Survey of Bangladesh (GSB)', 'Director', '+8801716659908', 'abkmajlis@gmail.com#mailto:abkmajlis@gmail.com#', 'Vill & PO: Baraid,\r\nUpazila: Saturia,\r\nDist: Manikganj', 'B-71/D-10, Paikpara Govt. Quarter,\r\nMirpur-1, Dhaka-1216', NULL, 'ABDUL BAQUEE KHAN MAJLIS 1981-1982 .jpg', 'ABDUL BAQUEE KHAN MAJLIS 1981-1982 .jpg', NULL, NULL, NULL, NULL),
(143, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M04', 1, 22, '40', 1, 45, 'Syed Nazrul', 'Islam', NULL, '1', 2, NULL, 46, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director', '+8801711708237', 'nazrulgsb@yahoo.com#mailto:nazrulgsb@yahoo.com#', 'Vill: Nowhal, PO: Mohanganj,\r\nMohanganj, Netrokona', '153 Pioneer Road, segunbagicha Dhaka', NULL, 'SYED NAZRUL ISLAM 1988-1989.jpg', 'SYED NAZRUL ISLAM 1988-1989.jpg', NULL, NULL, NULL, NULL),
(144, 'L08B1977M', NULL, NULL, '2023-02-16', 'L08B1977M01', 1, 8, '26', 3, 30, 'Fuaduzzaman', 'Khan', NULL, '1', 2, NULL, 31, 'Geological Survey of Bangladesh (GSB)', 'Director (Retired)', '+8801911672499', 'fuaduzzaman57@gmail.com#mailto:fuaduzzaman57@gmail.com#', 'Gonomongol, Sewejgari\r\nPalpara, PO: Bogra\r\nDist: Bogra', '126 no., Flat A-1, Ramna Century Avenue Road, Ramna, Dhaka-1217', NULL, 'FUADUZZAMAR KHAN 1997.jpg', 'FUADUZZAMAR KHAN 1997.jpg', NULL, NULL, NULL, NULL),
(145, 'G14B1984M', NULL, NULL, '2023-02-16', 'G14B1984M03', 1, 14, '33', 1, 37, 'Md. Ershadul', 'Haque', NULL, '1', 2, NULL, 38, 'Geological Survey of Bangladesh (GSB)', 'Director (Geophysics)', '+8801746198404', 'mdershadul.haque@gmail.com#mailto:mdershadul.haque@gmail.com#', 'Shathibari, Mithapukur,\r\nRangpur', 'GSB, 153 Pioneer road,  Segunbagich,  Dhaka-1000', NULL, 'MD. ERSHADUL HAQUE 1981-1982.jpg', 'Ershadul Haque.jpg', NULL, NULL, NULL, NULL),
(146, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M09', 1, 30, '49', 1, 54, 'Mohammad', 'Arifuzzaman', NULL, '1', 2, NULL, 55, 'Geological Survey of Bangladesh (GSB)', 'Assistant Director', '+8801912912357', 'arifgsb@gmail.com#mailto:arifgsb@gmail.com#', '85 New Circular Road,\r\nSiddheshwari, Dhaka-1217', '85 New Circular Road,\r\nSiddheshwari, Dhaka-1217', NULL, 'MOHAMMAD ARIFUZZAMAN 1997-1998.jpg', 'MOHAMMAD ARIFUZZAMAN 1997-1998.jpg', NULL, NULL, NULL, NULL),
(147, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M09', 1, 31, '49', 1, 55, 'Md. Abu', 'Sayem', NULL, '1', 2, NULL, 56, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director (Geology)', '+8801716711754', 'geoasmoon103@gmail.com#mailto:geoasmoon103@gmail.com#', 'Vill: Kishamat Habu, PO: Gajoghanta,\r\nPS: Gangachara, Dist: Rangpur', 'Room # 613, 5th floor, Geological Survey of Bangladesh, 153 Pioneer Road, Segunbagicha, Dhaka-1000', NULL, 'MD. ABU SAYEM 1997-1998.jpg', 'MD. ABU SAYEM 1997-1998.jpg', NULL, NULL, NULL, NULL),
(148, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M10', 1, 30, '49', 1, 54, 'Mohammad Hasan', 'Shahariar', NULL, '1', 2, NULL, 55, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director', '+8801715821802', 'shahariargsb@gmail.com#mailto:shahariargsb@gmail.com#', 'Vill: Habashpur, PO: Habashpur,\r\nUpazila: Pangsha, Dist: Rajbari', '96/1, West Agargaon,\r\n(2nd Floor), Dhaka', NULL, 'MOHAMMAD HASAN SHAHARIAR 1997-1998.jpg', '30th Hasan Shahariatr.JPG', NULL, NULL, NULL, NULL),
(149, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M05', 1, 22, '41', 1, 45, 'Md. Shahjahan', NULL, NULL, '1', 2, NULL, 46, 'Geological Survey of Bangladesh (GSB)', 'Deputy Director (Geophysics)', '+8801811571400', 'shahjahahan.gsb.geop@gmail.com#mailto:shahjahahan.gsb.geop@gmail.com#', 'Vill: Panchora,\r\nUpazila: Burichong,\r\nDist: Comilla', 'DD(Geophysics), GSB, 153 pioneer Rd, Segunbagicha, Dhaka -1000', NULL, 'MD. SHAHJAHAN1989-1990.jpg', 'MD. SHAHJAHAN1989-1990.jpg', NULL, NULL, NULL, NULL),
(150, 'L29B2000M', NULL, NULL, '2023-02-16', 'L29B2000M04', 1, 29, '47', 3, 53, 'Shahid Hossain', 'Chowdhury', NULL, '1', 2, NULL, 54, 'Schlumberger', 'Country Manager', '+8801755618826', 'tushar_hossain@yahoo.com#mailto:tushar_hossain@yahoo.com#', 'Flat-701, Hyperian Garden\r\nRoad 2C, Pallabi, Extension\r\nDhaka', 'Flat-701, Hyperian Garden\r\nRoad 2C, Pallabi, Extension\r\nDhaka', NULL, 'Shaheed Hossain Chowdhury 28 Batch.pdf', 'Shaheed Chowdhury.jpg', NULL, NULL, NULL, NULL),
(151, 'L31B2002M', NULL, NULL, '2023-02-16', 'L31B2002M06', 1, 31, '50', 3, 55, 'Imtiaz', 'Choudhury', NULL, '1', 2, NULL, 56, 'Superfund Renewal Program', NULL, '+8801678116393', 'imtiaz_choudhury@yahoo.com#mailto:imtiaz_choudhury@yahoo.com#', '43/2 Hazi Abdul Hye Road\r\nZigatola, Dhaka 1209', '43/2 Hazi Abdul Hye Road\r\nZigatola, Dhaka 1209', NULL, NULL, 'IMTIAZ CHOUDHURY 2002.jpg', NULL, NULL, NULL, NULL),
(152, 'L09B1978M', NULL, NULL, '2023-02-16', 'L09B1978M02', 1, 9, '27', 3, 31, 'Kazi Shafiul', 'Hossain', NULL, '1', 2, NULL, 32, 'Bangladesh Water Development Board', 'Deputy Director (Retired)', '+8801617330210', NULL, 'House-36, Road-27, Block-D,\r\nSection-12, Mirpur, Dhaka-1216', 'Ground Water Hydrology, BWDB, 72 Green Road, Dhaka 1205', 'Due 1000', NULL, 'Kazi Shafiul 78.jpg', NULL, NULL, NULL, NULL),
(153, 'L11B1981M', NULL, NULL, '2023-02-16', 'L11B1981M07', 1, 11, '30', 3, 34, 'Md. Golam', 'Rabbani', NULL, '1', 2, NULL, 35, 'One Bank Limited', 'Senior Vice President', '+8801819190495', 'golam.rabbani@onebank.com.bd#mailto:golam.rabbani@onebank.com.bd#', '\"The Grand Terrace\", Flat # C-801, Building-C,\r\n45 New Eskaton Road, Ramna, Dhaka-1000', 'Flat # C 801; 45 New Eskaton Road; Dhaka 1000', NULL, NULL, 'MD. GOLAM RABBANI 1978-1979.jpg', NULL, NULL, NULL, NULL),
(154, 'L15B1985M', NULL, NULL, '2023-02-16', 'L15B1985M03', 1, 15, '34', 3, 38, 'Md. Sharif Hossain', 'Khan', NULL, '1', 2, NULL, 39, 'Dept. of Geological Sciences, Jahangirnagar University', 'Professor', '+8801552334725', 'sha@juuiv.edu#mailto:sha@juuiv.edu#', 'Flat- 2B\r\nB-265, Khilgaon, Dhaka-1219', 'Dept. of Geological Sciences\r\nJahangirnagar University\r\nSavar, Dhaka-1342', NULL, NULL, 'DR. MD. SHARIF HOSSAIN KHAN 1982-1983.jpg', NULL, NULL, NULL, NULL),
(155, 'L30B2001M', NULL, NULL, '2023-02-16', 'L30B2001M06', 1, 30, '49', 3, 54, 'Khairul Hasan', 'Jewel', NULL, '1', 2, NULL, 55, 'Opal International', 'Proprietor', '+8801711356196', 'jewelfh210@yahoo.com#mailto:jewelfh210@yahoo.com#', NULL, NULL, NULL, NULL, 'Khairul Hasan Jewel.jpg', NULL, NULL, NULL, NULL),
(156, 'G31B2002F', NULL, NULL, '2023-02-16', 'G31B2002F03', 1, 31, '50', 1, 55, 'Shameema', 'Farhana', NULL, '2', 2, NULL, 56, 'AB Bank Ltd.', 'Senior Officer', '+8801552338684', NULL, NULL, '43/2 Hazi Abdul Hye Road\r\nZigatola, Dhaka 1209', NULL, NULL, 'SHAMEEMA FARHANA 1998-1999.jpg', NULL, NULL, NULL, NULL),
(157, 'L22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M06', 1, 22, '41', 3, 45, 'Md. Ibrahim', 'Khalil', NULL, '1', 2, NULL, 46, 'NMU, Bangladesh Atomic Energy Commission', 'Principal Geologist', '+8801712151823', 'ibrahimbaec@gmail.com#mailto:ibrahimbaec@gmail.com#', '1538 South Dania, Kadamtali,\r\nDhaka-1236', 'Institute of Nuclear Minerals, Ganakbari, Savar, Dhaka 1349', NULL, NULL, 'MD. IBRAHIM KHALIL 1989-1990.jpg', NULL, NULL, NULL, NULL),
(158, 'G23B1993M', NULL, NULL, '2023-02-16', 'G23B1993M04', 1, 23, '40', 1, 46, 'Md. Golam', 'Rasul', NULL, '1', 2, NULL, 47, 'NMU, Bangladesh Atomic Energy Commission', 'Principal Geologist and Director', '+8801711141822', 'grasulgeo@yahoo.com#mailto:grasulgeo@yahoo.com#', 'House no # 75, Road no # 6,\r\nKeranipara, Rangpur', '275/1 Shipahibag, Khilgaon, Dhaka', NULL, NULL, 'MD. GOLAM RASUL 1988-1989.jpg', NULL, NULL, NULL, NULL),
(159, 'G37B2008F', NULL, NULL, '2023-02-16', 'G37B2008F02', 1, 37, '56', 1, 61, 'Jannat Ara', 'Ferdous', NULL, '2', 2, NULL, 62, 'DC Office, Rangpur', 'Assistant Commissioner & Executive Magistrate', '+8801717061778', 'fjannatara@gmail.com#mailto:fjannatara@gmail.com#', 'Maltinagaer (MS Club Play Ground)\r\nBogra Sadar\r\nBogra', 'Office of the Assistant Commissioner(Land), Pirgacha, Rangpur', NULL, NULL, 'JANNAT ARA FERDOUS 2004-2005.jpg', NULL, NULL, NULL, NULL),
(160, 'G08B1977M', NULL, NULL, '2023-02-16', 'G08B1977M02', 1, 8, '26', 1, 30, 'Md. Abul', 'Kashem', NULL, '1', 2, NULL, 31, 'Directorate General of Family Planning (DGFP)', 'Director (retired)', '+8801912243929', NULL, 'Purbasha-I,\r\nGovt. Degree College Road, PS & PO: Debidwar\r\nUpazila: Debidwar, Dist: Comilla', 'House 36, Sector 11, Road 7,  Uttara, Dhaka- 1230.', NULL, NULL, 'MD. ABUL KASHEM 1974-1975.jpg', NULL, NULL, NULL, NULL),
(161, 'G08B1977F', NULL, NULL, '2023-02-16', 'G08B1977F01', 1, 8, '26', 1, 30, 'Shamima', 'Sultana', NULL, '2', 2, NULL, 31, 'Concerned Women For Family Development (CWFD)', 'Clinic Manager', '+8801711153666', 'sshamima68@gmail.com#mailto:sshamima68@gmail.com#', '35 Mitaly Road,\r\nDhaka-1209', '44/P-1 Zigatola New Road,\r\nDhaka-1209', NULL, NULL, 'SHAMIMA SULTANA 1974-1975.jpg', NULL, NULL, NULL, NULL),
(162, 'G13B1983M', NULL, NULL, '2023-02-16', 'G13B1983M04', 1, 13, '32', 1, 36, 'Md. Alamgir', 'Hossain', NULL, '1', 2, NULL, 37, 'Chairman, Dohar Upazila Parishad', 'Director, Beximco Media Ltd.', '+8801711522093', 'alamgirhossain5@yahoo.com#mailto:alamgirhossain5@yahoo.com#', 'House no 22, Road no 10A\r\nFlat no- B2', 'House no 18/A, Road no 32,\r\nDhanmondi, Dhaka', NULL, NULL, 'MD. ALAMGIR HOSSAIN 1980-1981.jpg', NULL, NULL, NULL, NULL),
(163, 'G02B1971M', NULL, NULL, '2023-02-16', 'G02B1971M02', 1, 2, '20', 1, 24, 'Waliur', 'Rahman', NULL, '1', 2, NULL, 25, 'Bangladesh Water Development Board', 'Deputy Director (Retired)', '+8801711533184', 'waliur50@yahoo.com#mailto:waliur50@yahoo.com#', '621, Uttar Kafrul (Jheelpar), PS: Kafrul,\r\nPO: Dhaka Cantt.\r\nDhaka-1206', '621, Uttar Kafrul (Jheelpar), PS: Kafrul,\r\nPO: Dhaka Cantt.\r\nDhaka-1206', NULL, NULL, 'WALIUR RAHMAN 1968.jpg', NULL, NULL, NULL, NULL),
(164, 'G37B2008M', NULL, NULL, '2023-02-16', 'G37B2008M03', 1, 37, '56', 1, 61, 'Milan', 'Biswas', NULL, '1', 2, NULL, 62, 'Bangladesh Water Development Board', 'Deputy Director', '+8801675229662', 'milan_geo@yahoo.com#mailto:milan_geo@yahoo.com#', 'Vill: Mahatali, PO: Ujani,\r\nPS: Muksudpur, Dist: Gopalganj', 'Ground Water Hydrology Division-1\r\nBangladesh water Development Board\r\nHydrology Building (Annex)\r\n72, Green road\r\nDhaka-1205.', 'Due 1000', NULL, 'MILAN  BISWAS 2004-2005.jpg', NULL, NULL, NULL, NULL),
(165, 'G37B2008M', NULL, NULL, '2023-02-16', 'G37B2008M04', 1, 37, '56', 1, 61, 'Md. Mahadi', 'Hasan', NULL, '1', 2, NULL, 62, 'Bangladesh Water Development Board', 'Geologist', '+8801672182998', 'mahadi.geo@gmail.com#mailto:mahadi.geo@gmail.com#', 'C/O: Md. Afsar Ali\r\nHouse # 384, Ward # 6, Santahar Daily Bazar,\r\nSantahar, Adamdighi, Bogra', 'Ground Water Hydrology Division-1, Bangladesh Water Development Board, 72 Green Road, Dhaka-1205.', 'Due 1000', NULL, 'MD. MAHADI HASAN 2004-2005.jpg', NULL, NULL, NULL, NULL),
(166, 'G34B2005M', NULL, NULL, '2023-02-16', 'G34B2005M07', 1, 34, '53', 1, 58, 'Md. Nasrat', 'Jahan', NULL, '1', 2, NULL, 59, 'CEGIS', 'Associate Specialist', '+8801817592864', 'njageodu@gmail.com#mailto:njageodu@gmail.com#', 'Vill: Akartoma, PO: Paniala,\r\nPS: Ramganj, Dist: Laksmipur', 'Center for Environmental and Geographic Information Services (CEGIS), House # 6,\r\nRoad # 23/C, Gulshan-1, Dhaka-1212', NULL, NULL, 'Nasrat Zahan.jpg', NULL, NULL, NULL, NULL),
(167, 'G34B2005M', NULL, NULL, '2023-02-16', 'G34B2005M08', 1, 34, '53', 1, 58, 'Kamrul', 'Islam', NULL, '1', 2, NULL, 59, 'Institute of Water Modelling (IWM)', 'Hydrogeologist', '+8801817011787', 'kamrulislam_008@yahoo.com#mailto:kamrulislam_008@yahoo.com#', '239 North Kazipara, \r\nMirpur, Dhaka-1216', '239 North Kazipara, \r\nMirpur, Dhaka-1216', NULL, NULL, 'Kamrul Islam.jpg', NULL, NULL, NULL, NULL),
(168, 'G08B1977M', NULL, NULL, '2023-02-16', 'G08B1977M03', 1, 8, '26', 1, 30, 'Shawkat Alam', 'Khan', NULL, '1', 2, NULL, 31, 'Bangladesh Water Development Board', 'Director (Retired)', '+8801712551567', 'shawkatgeo@gmail.com#mailto:shawkatgeo@gmail.com#', '226 Ahmednagar, Mirpur, Dhaka-1216', 'Ground Water Hydrology, BWDB, 72 Green Road, Dhaka 1205', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'G05B1974M', NULL, NULL, '2023-02-16', 'G05B1974M02', 1, 5, '23', 1, 27, 'Syed Reaz Uddin', 'Ahmed', NULL, '1', 2, NULL, 28, 'Bangladesh Water Development Board', 'Deputy Director (Retired)', '+8801715151034', NULL, NULL, 'Institute of Water Modelling\r\nHouse # 496, Road # 32, New DOHS,\r\nMohakhali, Dhaka-1206', NULL, NULL, 'Syed Reaz Uddin 5 Batch.JPG', NULL, NULL, NULL, NULL),
(170, 'L01B1970M', NULL, NULL, '2023-02-16', 'L01B1970M03', 1, 1, '19', 3, 23, 'Aftab Alam', 'Khan', NULL, '1', 2, NULL, 24, 'Department of Oceanography, Bangabandhu Sheikh Mujibur Rahman Maritime University', 'Professor', '+8801819490280', 'aftab@du.ac.bd#mailto:aftab@du.ac.bd#', NULL, 'Department of Oceanography \r\nBangabandhu Sheikh Mujibur Rahman Maritime University\r\nMirpur, Dhaka', NULL, NULL, 'Aftab Alam Khan.jpg', NULL, NULL, NULL, NULL),
(171, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M04', 1, 26, '45', 1, 49, 'Shakhawat', 'Hossain', NULL, '1', 2, NULL, 50, 'Social Development Foundation (SDF)', 'AMT Team Leader', '+8801714549412', 'lusadlahim@gmail.com#mailto:lusadlahim@gmail.com#', 'Vill: Shukta, PO: Shewail,\r\nPS: Mirzapur, Dist: Tangail', 'House # 33 (2nd floor, North side), Road # 09, Sector # 12, Uttara Model Town, Dhaka.', NULL, NULL, 'SHAKHAWAT HOSSAIN 1993-1994.jpg', NULL, NULL, NULL, NULL),
(172, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M05', 1, 26, '45', 1, 49, 'Mohammad Mostafizur', 'Rahman', NULL, '1', 2, NULL, 50, 'Islami Bank BD Ltd.', 'FAVP', '+8801918426365', 'mrahman3733@gmail.com#mailto:mrahman3733@gmail.com#', 'House-31, Lane-5, Section-6,\r\nBlock-A, Mirpur, Dhaka-1216', 'Audit & inspection division,IBBL, 6th floor,39, Dilkusha C/A,Dhaka', NULL, NULL, 'MOHAMMAD MOSTAFIZUR RAHMAN 1993-1994.jpg', NULL, NULL, NULL, NULL),
(173, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M06', 1, 26, '45', 1, 49, 'Mohammad Mizanur', 'Rahman', NULL, '1', 2, NULL, 50, 'One Bank Ltd.', 'Assistant Vice President & Manager', '+8801716880424', 'mizanubl@yahoo.com#mailto:mizanubl@yahoo.com#', 'Vill: Kaonia, PO: Kaonia,\r\nUpazila: Faridganj, Dist: Chandpur', '931, Kazi Bhaban, Ibrahimpur Bazar Road,\r\nIbrahimpur, Kafrul, Dhaka', NULL, NULL, 'MOHAMMAD MIZANUR RAHMAN 1993-1994.jpg', NULL, NULL, NULL, NULL),
(174, 'G23B1993M', NULL, NULL, '2023-02-16', 'G23B1993M05', 1, 23, '42', 1, 46, 'Muhammad Kamrul', 'Hasan', NULL, '1', 2, NULL, 47, 'NBR', 'First Secretary', '+8801715167085', 'masudtithi@yahoo.com#mailto:masudtithi@yahoo.com#', 'Vill: Banchanagar, PO: Lakshmipur,\r\nPS: Lakshmipur, Dist: Lakshmipur', 'First Secretary (Board Administration) Room No 406, National Board of Revenue,\r\nSegunbagicha, Dhaka-1000', NULL, NULL, 'MUHAMMAD KAMRUL HASAN 1990-1991.jpg', NULL, NULL, NULL, NULL),
(175, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M05', 1, 41, '60', 1, 65, 'Alamgir', 'Hosain', NULL, '1', 2, NULL, 66, 'Department of Disaster Science and Management, Barisal University', 'Lecturer', '+8801722539551', 'alamgir_geo_du@yahoo.com#mailto:alamgir_geo_du@yahoo.com#', 'Vill: Kachua\r\nPO: Rajapur Hat\r\nPS: Baraigram\r\nDis: Natore', 'Department of Disaster Science and Management\r\nBarisal University\r\nBarisal Sadar, Barisal', NULL, 'alamgir hossain2008-2009.jpg', '07.jpg', NULL, NULL, NULL, NULL),
(176, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M11', 1, 31, '50', 1, 55, 'Md. Fazle', 'Rabby', NULL, '1', 2, NULL, 56, 'Business', NULL, '+8801726150145', 'fazlerabbyrussel@yahoo.com#mailto:fazlerabbyrussel@yahoo.com#', 'Stadium Road\r\nSirajganj', 'Home - 331, Lane -1\r\nBlock A, Section 13\r\nMirpur', NULL, NULL, 'MD. FAZLE RABBY 1998-1999.jpg', NULL, NULL, NULL, NULL),
(177, 'G42B2013F', NULL, NULL, '2023-02-16', 'G42B2013F03', 1, 42, '61', 1, 66, 'Asma', 'Akter', NULL, '2', 2, NULL, 67, 'Toxi site identfication programm', 'Environmental Researcher', '+8801676933712', 'asmaakter0910@gmail.com#mailto:asmaakter0910@gmail.com#', 'Vill: Deng para, Asadnagar\r\nPO: Banchharampur\r\nPS: Banchharampur\r\nDis: Brahmanbaria', 'C/O Md. Abdur Rashid\r\n5th Floor, Korotoya Bhabhan\r\nBCS Staff Quarter\r\nNilkhet, Dhaka', NULL, NULL, 'ASMA AKTER 2009-2010.jpg', NULL, NULL, NULL, NULL),
(178, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M02', 1, 40, '59', 1, 64, 'Sukhen', 'Goswami', NULL, '1', 2, NULL, 65, 'Deparment of Geology and Mining, University of Barisal', 'Assistant Professor', '+8801913725897', 'swami.sg.du@gmail.com#mailto:swami.sg.du@gmail.com#', 'Vill: Dudhsara\r\nPO+PS: Kotchandpur\r\nDis: Jhenaidaha', 'Deparment of Geology and Mining, \r\nUniversity of Barisal\r\nBarisal - 8200', NULL, NULL, 'SUKHEN GOSWAMI 2007-2008.jpg', NULL, NULL, NULL, NULL),
(179, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M03', 1, 40, '59', 1, 64, 'AKM Moshiur', 'Rahman', NULL, '1', 2, NULL, 65, 'Investment Corporation of Bangladesh', 'Principal Officer', '+8801914756563', 'nahinbd_du@yahoo.com#mailto:nahinbd_du@yahoo.com#', 'Vill: Khirodia\r\nPO: Tamarandi\r\nPS: Hatiya, Dis Noakhali', '101 Nazimuddin Rd (2nd Building)\r\n2nd Floor, Dhaka 1211', NULL, NULL, 'A.K.M MOSHIUR RAHMAN 2007-2008.jpg', NULL, NULL, NULL, NULL),
(180, 'G40B2011F', NULL, NULL, '2023-02-16', 'G40B2011F01', 1, 40, '59', 1, 64, 'Mehtaz Mozaffor', 'Lipsi', NULL, '2', 2, NULL, 65, 'Homemaker', NULL, '+8801676930683', 'lmehtaz@yahoo.com#mailto:lmehtaz@yahoo.com#', 'Vill: Khirodia\r\nPO: Tamarandi\r\nPS: Hatiya, Dis Noakhali', '101 Nazimuddin Rd (2nd Building)\r\n2nd Floor, Dhaka 1211', NULL, NULL, 'MEHTAZ MOZAFFOR LIPSI 2007-2008.jpg', NULL, NULL, NULL, NULL),
(181, 'G23B1993M', NULL, NULL, '2023-02-16', 'G23B1993M06', 1, 23, '42', 1, 46, 'Md. Zakir', 'Hossain', NULL, '1', 2, NULL, 47, 'National Board of Revenue, Government of Bangladesh', 'Additional Commissioner of Customs and National Board of Revenue', '+8801713444115', 'zakir2162@gmail.com#mailto:zakir2162@gmail.com#', 'Vill: Bhaloarchar\r\nPO: Saidabad\r\nPS: Raipura\r\nNarsingdi', 'Customs officers Quarter\r\nRoad - 2, Banani\r\nDhaka 1213', NULL, NULL, 'MD. ZAKIR HOSSAIN 1990-1991.jpg', NULL, NULL, NULL, NULL),
(182, 'G23B1993F', NULL, NULL, '2023-02-16', 'G23B1993F02', 1, 23, '42', 1, 46, 'Farhana', 'Rahman', NULL, '2', 2, NULL, 47, 'Dhrupodi Techno Consortium Ltd (DTCL)', 'AGM', '+8801786271662', 'shumi.geo@gmail.com#mailto:shumi.geo@gmail.com#', '9/A Ahsan Plaza\r\n56, New Eskaton Rd\r\nDhaka, Bangladesh', '9/A Ahsan Plaza\r\n56, New Eskaton Rd\r\nDhaka, Bangladesh', NULL, NULL, 'FARHANA RAHMAN.JPG', NULL, NULL, NULL, NULL),
(183, 'G39B2010M', NULL, NULL, '2023-02-16', 'G39B2010M03', 1, 39, '58', 1, 63, 'Md. Faruk', 'Hossain', NULL, '1', 2, NULL, 64, 'National Bureau of Revenue', 'Asst. Commissioner (Tax)', '+8801716968319', 'lotus.du@gmail.com#mailto:lotus.du@gmail.com#', 'Vill: Silimpur\r\nPO: Bogra\r\nPS: Bogra Sadar\r\nDis: Bogra', 'Taxes Zone-07, Circle -146, 9, Topkhana road, Segunbagicha, Dhaka-1000', NULL, NULL, 'Faruk Hossain Lotus.jpg', NULL, NULL, NULL, NULL),
(184, 'G34B2005M', NULL, NULL, '2023-02-16', 'G34B2005M09', 1, 34, '51', 1, 58, 'Moshiur', 'Rahman', NULL, '1', 2, NULL, 59, 'Gobindagonj cold storage limited, Gaibandha', 'Managing Director', '+8801711196663', 'moshifh121@gmail.com#mailto:moshifh121@gmail.com#', 'South bus stand, MP para,\r\nGobindagonj', 'B-12/1, 2nd Floor,\r\nExtension Pallabi, \r\nMirpur, Dhaka', NULL, NULL, 'Moshiur Rahman 34 Batch.jpg', NULL, NULL, NULL, NULL),
(185, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M05', 1, 35, '54', 1, 59, 'Md. Alamgir', 'Kabir', NULL, '1', 2, NULL, 60, 'BAPEX', 'Assistant Manager', '+8801627522675', 'kabirdu30@yahoo.com#mailto:kabirdu30@yahoo.com#', 'Hazinagar, Sarulia,\r\nDemra, Dhaka', '4, Kawran bazar,\r\nBAPEX Bhaban, Dhaka', NULL, NULL, 'MD. ALAMGIR KABIR 2002-2003.jpg', NULL, NULL, NULL, NULL),
(186, 'L23B1993M', NULL, NULL, '2023-02-16', 'L23B1993M04', 1, 23, '42', 3, 46, 'S. A. M. Merajul', 'Alam', NULL, '1', 2, NULL, 47, 'BAPEX', 'Deputy General Manager (Geology)', '+8801914691091', 'merajul.alam@gmail.com#mailto:merajul.alam@gmail.com#', '\"Shirin Mohol\", 47/B Golartek,\r\nMirpur, Dhaka-1216', 'Geological Division, BAPEX,\r\nLevel-10, Bapex Bhaban,\r\n4, Kawran Bazar, Dhaka-1215', NULL, NULL, 'S.A.M MERAJUL ALAM 1990-1991.jpg', NULL, NULL, NULL, NULL),
(187, 'G08B1977M', NULL, NULL, '2023-02-16', 'G08B1977M04', 1, 8, '26', 1, 30, 'Khondaker', 'Shahjahan', NULL, '1', 2, NULL, 31, 'BAPEX', 'Director (Exploration)', '+8801713398795', 'khondakershahjahan123@gmail.com#mailto:khondakershahjahan123@gmail.com#', 'House no #6, Road no #1, Block #E,\r\nSection #6, Mirpur, Dhaka', 'Bapex Bhaban (Level-10)\r\n4, Kawran Bazar C/A,\r\nDhaka-1215', NULL, NULL, 'KHONDAKER SHAHJAHAN 1974-1975.jpg', NULL, NULL, NULL, NULL),
(188, 'G41B2012F', NULL, NULL, '2023-02-16', 'G41B2012F02', 1, 41, '59', 1, 65, 'Farha', 'Khan', NULL, '2', 2, NULL, 66, 'BAPEX', 'Assistant Manager', '+8801687424696', 'farahnaz214@yahoo.com#mailto:farahnaz214@yahoo.com#', '26, Sher Shah Road, Mohammadpur,\r\nDhaka-1207', 'Dhanmondi: 15, House no: 05,\r\nFlat: C-4, Dhaka-1209', NULL, NULL, 'FARHA KHAN 2007-2008.jpg', NULL, NULL, NULL, NULL),
(189, 'G42B2013M', NULL, NULL, '2023-02-16', 'G42B2013M04', 1, 42, '61', 1, 66, 'Shahriar Bin', 'Shahid', NULL, '1', 2, NULL, 67, 'BAPEX', 'Assistant Manager (Geophysics)', '+8801793166180', 'shahriar.bin.shahid@gmail.com#mailto:shahriar.bin.shahid@gmail.com#', 'Vill: Aralia, PO: Hatshashiganj,\r\nPS: Tazumuddin, Dist: Bhola', '69/7, Paikpara Govt. D Type Colony,\r\nMirpur 1, Dhaka-1216', NULL, NULL, 'SHAHRIAR BIN SHAHID 2009-2010.jpg', NULL, NULL, NULL, NULL),
(190, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M06', 1, 35, '54', 1, 59, 'Shamsul Huda Md.', 'Parvez', NULL, '1', 2, NULL, 60, 'BAPEX', 'Assistant Manager (Geophysics)', '+8801916019686', 'pmnr047@gmail.com#mailto:pmnr047@gmail.com#', 'C/O: Late Enamul Huda, Master Bari,\r\nVill: Gophi, Ward no: 06, PO: Sonapur,\r\nPS: Sadar, Dist: Noakhali-3800', 'C/O: Md Humayun Kabir,\r\nMadina Bhaban (3rd Floor), 18/Kha,\r\nWest Nakhalpara, Tejgaon, Dhaka-1215', NULL, NULL, 'Shamsul Huda parvez.jpg', NULL, NULL, NULL, NULL),
(191, 'G33B2004M', NULL, NULL, '2023-02-16', 'G33B2004M02', 1, 33, '52', 1, 57, 'Md. Abubakar', 'Siddiqui', NULL, '1', 2, NULL, 58, 'BAPEX', 'Deputy Manager (Geophysics)', '+8801554312554', 'bakar_du@yahoo.com#mailto:bakar_du@yahoo.com#', 'C/O: Abu Taher, 465, Painadi Natun Mahalla,\r\nMizmizi-1430, Siddhirganj, Narayanganj', 'Geophysical Division (11th Foor),\r\nBapex Bhaban,\r\n4, Kawran Bazar, Dhaka-1215', NULL, NULL, 'MD. ABUBAKAR SIDDIQUL 2000-2001.jpg', NULL, NULL, NULL, NULL),
(192, 'G37B2008M', NULL, NULL, '2023-02-16', 'G37B2008M05', 1, 37, '56', 1, 61, 'Md. Fyzulla', 'Bhuian', NULL, '1', 2, NULL, 62, 'BAPEX', 'Assistant Manager (Geophysics)', '+8801879227434', 'fbfaizgeo324@gmail.com#mailto:fbfaizgeo324@gmail.com#', 'Holding no: 401-02, Vill: Hatlaxmiganj,\r\nPO: Munshiganj, PS: Munshiganj Sadar,\r\nDist: Munshiganj', 'Geophysical Division (11th Foor),\r\nBapex Bhaban,\r\n4, Kawran Bazar, Dhaka-1215', NULL, NULL, 'MD. FYZULLA BHUIAN 2004-2005.jpg', NULL, NULL, NULL, NULL),
(193, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M04', 1, 40, '59', 1, 64, 'Rakibul', 'Islam', NULL, '1', 2, NULL, 65, 'BAPEX', 'Assistant Manager', '+8801717600200', 'irakibul.du@gmail.com#mailto:irakibul.du@gmail.com#', 'House no- 185, Hatiya Pouroshava, Ochkh\r\nHatiya-Noakhali-3890', '25/1, E-5, Peonanja, Shah Ali Bagh\r\nMirpur-1, Dhaka-1216', NULL, NULL, 'RAKIBUL ISLAM 2007-2008.jpg', NULL, NULL, NULL, NULL),
(194, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M03', 1, 21, '40', 1, 44, 'Md. Rezaul', 'Halim', NULL, '1', 2, NULL, 45, 'BAPEX', 'Manager (Geology), Planning Development', '+8801818347748', 'bapy_1971@yahoo.com#mailto:bapy_1971@yahoo.com#', 'C/O Nurul Islam,\r\nThanapara (Rahman Colony)\r\nIshurde, Pabna', 'H # F-10, R #5/6, Block # F,\r\nEastern Housing 2nd Phase, Pallabi, \r\nMirpur 11-1/2, Dhaka-1216', NULL, NULL, 'Razaul Halim Batch 21.jpg', NULL, NULL, NULL, NULL),
(195, 'G42B2013F', NULL, NULL, '2023-02-16', 'G42B2013F04', 1, 42, '61', 1, 66, 'Nadia Sultana', 'Tarakki', NULL, '2', 2, NULL, 67, 'Saint Francis Xavier Univeristy, NS, Canada', 'MSc Student and Graduate Teaching assistant', '+1(902)318-3720', 'nstarakki@gmail.com, ntarakki@stfx.ca#mailto:nstarakki@gmail.com, ntarakki@stfx.ca#', '316/9, South Goran, Shantipur,\r\nDhaka-1219', '45, Beaton Court, Antigonish,\r\nNova Scotia, Canada,\r\nPostal Code: B2g2k1', NULL, NULL, 'NADIA SULTANA TARAKKI 2009-2010.jpg', NULL, NULL, NULL, NULL),
(196, 'S00N0000M', NULL, NULL, '2023-02-16', 'S00N0000M02', 6, 0, '119', 5, 126, 'Dr A.S.M.', 'Woobaidullah', NULL, '1', 6, NULL, 126, 'Department of Geology, University of Dhaka', 'Professor', '+8801517310181', 'woobaid.du@gmail.com#mailto:woobaid.du@gmail.com#', 'Vill+PO: Fordabad\r\nPS: Bancharampur\r\nDis: Brahmanbaria', 'Department of Geology\r\nUniversity of Dhaka\r\nDhaka 1000', NULL, NULL, 'Woobaidulla sir.jpg', NULL, NULL, NULL, NULL),
(197, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M04', 1, 21, '40', 1, 44, 'Masudur', 'Rahman', NULL, '1', 2, NULL, 45, 'Niko Resources Bangladesh Ltd', 'Manager, Business Operation', '+8801713010044', 'masudr007@yahoo.com#mailto:masudr007@yahoo.com#', 'Vill: Lamchari\r\nPO: Panpara\r\nPS: Raipur\r\nDis: Lakshmipur', 'House 288, Flat 3A\r\nRoad 2, Baitul Aman Housing Soceity\r\nAdabar, Dhaka 1207', NULL, NULL, 'MASUDUR RAHMAN 1988-1989.jpg', NULL, NULL, NULL, NULL),
(198, 'G42B2013M', NULL, NULL, '2023-02-16', 'G42B2013M05', 1, 42, '61', 1, 66, 'Md Abdullah', 'Salman', NULL, '1', 2, NULL, 67, 'Dept. of Geology and Mining, Barisal University', 'Lecturer', '+8801674917365', 'salmansadman126@gmail.com#mailto:salmansadman126@gmail.com#', '10/C/1 Gonoctuly Lane\r\nHazaribaagh, Dhaka 1205', 'Dept. of Geology and Mining\r\nBarisal University\r\nBarisal', NULL, NULL, 'MD. ABDULLAH SALMAN 2009-2010.jpg', NULL, NULL, NULL, NULL),
(199, 'G38B2009M', NULL, NULL, '2023-02-16', 'G38B2009M01', 1, 38, '57', 1, 62, 'Muhammad Risalat', 'Rafiq', NULL, '1', 2, NULL, 63, 'Department of Geology and Mining, Barisal University', 'Lecturer', '+8801717041895', 'risalat_ob@hotmail.com#mailto:risalat_ob@hotmail.com#', '249/2 Holar Road\r\nWard # 1, Lane # 06\r\nDakshin Khan\r\nDhaka 1213', 'Department of Geology and Mining\r\nBarisal University\r\nBarisal 8200', NULL, NULL, 'MUHAMMAD RISALAT RAFIQ 2005-2006.jpg', NULL, NULL, NULL, NULL),
(200, 'L13B1983M', NULL, NULL, '2023-02-16', 'L13B1983M05', 1, 13, '32', 3, 36, 'Abdun', 'Noor', NULL, '1', 2, NULL, 37, 'Department of Public Health Engineering (DPHE)', 'Senior Hydrogeologist', '+8801715996681', 'noorabdun@yahoo.com#mailto:noorabdun@yahoo.com#', '15 Khan-e-Sabur Road\r\nKhulna 9100', 'DPHE Bhaban, 14 Shaheed Captain Monsur Ali Sharani, Kakrail, Dhaka 1000', NULL, NULL, 'ABDUN NOOR 1980-1981.jpg', NULL, NULL, NULL, NULL),
(201, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M05', 1, 40, '59', 1, 64, 'Md Pavel', 'Khan', NULL, '1', 2, NULL, 66, 'King Fahd University of Petroleum and Minerals', 'Graduate Student', '+8801924044588', 'pavel.khan.du@gmail.com#mailto:pavel.khan.du@gmail.com#', 'Vill+PO: Barai Bikara\r\nPS: Manikganj Sadar\r\nDis: Manikganj', 'Room no: 119, Building 704, Academic Belt road, KFUPM campus, Dhahran-31261, Kingdom of Saudi Arabia.', NULL, NULL, 'Pavel Khan.jpg', NULL, NULL, NULL, NULL),
(202, 'S00N0000M', NULL, NULL, '2023-02-16', 'S00N0000M03', 6, 0, '119', 5, 126, 'Md. Shohrab', 'Hossain', NULL, '1', 6, NULL, 126, 'Department of Geology, University of Dhaka', 'Professor', '+8801712237367', 'shohrab.mh@gmail.com#mailto:shohrab.mh@gmail.com#', 'Vill: Hemnagar\r\nPO: Dhamnaich Hat\r\nPS: Tarash\r\nDis: Sirajganj', 'Department of Geology\r\nUniversity of Dhaka\r\nDhaka 1000', NULL, NULL, 'Sohrab Hossain.JPG', NULL, NULL, NULL, NULL),
(203, 'G38B2009M', NULL, NULL, '2023-02-16', 'G38B2009M02', 1, 38, '57', 1, 62, 'Dewan Md. Enamul', 'Haque', NULL, '1', 2, NULL, 63, 'Department of Disaster Science and Management, University of Dhaka', 'Assistant Professor', '+8801717636007', 'dewan.dsm@du.ac.bd#mailto:dewan.dsm@du.ac.bd#', 'Vill + PO + Upzila: Ghion\r\nDist: Manikganj\r\nVill + PO: Atigram, Upazila & Dist: Manikganj', 'Doel Chattar Road, Geology Building (3rd Floor), Room Number 405,\r\nDepartment of Disaster Science and Management', NULL, NULL, 'dewan md. Enamul Haque 2011.jpg', NULL, NULL, NULL, NULL),
(204, 'G15B1985M', NULL, NULL, '2023-02-16', 'G15B1985M04', 1, 15, '34', 1, 38, 'Md. Mijanur', 'Rahman', NULL, '1', 2, NULL, 39, 'BAPEX', 'Deputy General Manager (Geology)', '+8801711962912', 'mijansajid@gmail.com#mailto:mijansajid@gmail.com#', 'Vill- Digdana P.O.- Digdana P.S.- Jhinkergacha, Dist- Jessore', 'BAPEX Bhaban\r\n4 Kawran Bazar, Laboratory Division (2nd Floor)\r\nDhaka- 1215', NULL, NULL, 'Md. Mijanur Rahman 1985.jpg', NULL, NULL, NULL, NULL),
(205, 'G42B2013F', NULL, NULL, '2023-02-16', 'G42B2013F05', 1, 42, '61', 1, 66, 'Romana', 'Afroz', NULL, '2', 2, NULL, 67, 'None', NULL, '+8801619886644', 'romanaafroz@gmail.com#mailto:romanaafroz@gmail.com#', 'Vill- Buirpur Thana- Debidwar, P.O.- Subil\r\nDis.- Comilla', '63/1, Purana Palton Lane\r\nFloor No-3D Dhaka-1000', NULL, NULL, 'Romana Afroz 42 batch.JPG', NULL, NULL, NULL, NULL),
(206, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M06', 1, 40, '59', 1, 64, 'M.I.M', 'Fuad', NULL, '1', 2, NULL, 65, 'Institute of Water Modeling (IWM)', 'Junior Hydrogeologist', '+8801916201070', 'mim.fuad@gamil.com#mailto:mim.fuad@gamil.com#', 'Vill.- Chithli Dakshin Para (Mithapukur Bazar)\r\nP.O+ P.S.- Mithapukur\r\nDist.- Rangpur', '373/22 Free School Street, Lily Homes (C-4), Sonargaon Road, Hatirpool, Dhanmondi, Dhaka-1205', NULL, NULL, 'MIM Fuad.JPG', NULL, NULL, NULL, NULL),
(207, 'G33B2004F', NULL, NULL, '2023-02-16', 'G33B2004F01', 1, 33, '52', 1, 57, 'Rahnuma', 'Siddique', NULL, '2', 2, NULL, 58, 'Bangladesh Atomic Energy Comission', 'Senior Geologist', '+8801717575412', 'rahnuma_070@yahoo.com#mailto:rahnuma_070@yahoo.com#', 'House-252, Road-03 (East)\r\nDOHS Baridhara \r\nDhaka-1206', 'Atomic Energy Centre (Rooppur NPP Bhobon), 4 Kazi Nazrul Islam Avenue, Shahbagh, Dhaka 1000', NULL, NULL, 'Rahnuma Siddique.JPG', NULL, NULL, NULL, NULL),
(208, 'G33B2004F', NULL, NULL, '2023-02-16', 'G33B2004F02', 1, 33, '52', 1, 57, 'Haniyum Maria', 'Khan', NULL, '2', 2, NULL, 58, 'Dept. Environmental Sciences', 'North South University', '+8801766860856', 'haniyummaria@gmail.com#mailto:haniyummaria@gmail.com#', 'Flat 9C, 56, Ahsan Plaza\r\nNew Eskaton Road, Dhaka-1000\r\nBangladesh', '7-11426 94 St NW\r\nEdmonton, AB T5G1H4,\r\nCanada', 'bKash 6243340836', NULL, 'Hanyum Maria.jpg', NULL, NULL, NULL, NULL),
(209, 'L15B1985M', NULL, NULL, '2023-02-16', 'L15B1985M05', 1, 15, '34', 3, 38, 'Abu Sabar', 'Khan', NULL, '1', 2, NULL, 39, 'Eskayef Bangladesh Ltd.', 'Assistant General Manager', '+8801711401249', 'a.sabar.khan@gmail.com#mailto:a.sabar.khan@gmail.com#', 'Baily Ritz, Flat no: F-10,\r\n01, Baily Road, Ramna, Dhaka', 'Baily Ritz, Flat no: F-10,\r\n01, Baily Road, Ramna, Dhaka', NULL, NULL, 'Abu sabar khan 1985.jpg', NULL, NULL, NULL, NULL),
(210, 'L30B2001F', NULL, NULL, '2023-02-16', 'L30B2001F02', 1, 30, '49', 3, 54, 'Mst.', 'Anarkoli', NULL, '2', 2, NULL, 55, 'Grameenphone Ltd.', 'Manager', '+8801711507120', 'niru_geo@hotmail.com#mailto:niru_geo@hotmail.com#', 'Flat-B, House-188, Road-6,\r\nBlock-F, Bashundhara R/A\r\nDhaka-1229', 'Flat-B, House-188, Road-6,\r\nBlock-F, Bashundhara R/A\r\nDhaka-1229', 'bKash 6246032604', NULL, '30th Anarkoli.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `member_infos` (`id`, `BatchID`, `SL`, `unique_count_id`, `date`, `member_id`, `entery_degree`, `batch`, `admission_session`, `alumni_category`, `entery_degree_completion_year`, `first_name`, `last_name`, `user_name`, `gender_id`, `exit_degree`, `bsc_year_passing`, `exit_year`, `current_affiliation`, `designation`, `contact_no`, `email`, `parmanent_address`, `current_address`, `note`, `scanced_form`, `member_image`, `entry_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(211, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M07', 1, 35, '54', 1, 59, 'Muhammad Adnan', 'Quadir', NULL, '1', 2, NULL, 60, 'National Cheng Kung University, Taiwan', 'PhD Student', '+88025811666', 'adnanq5@gmail.com#mailto:adnanq5@gmail.com#', 'Vill: Khurshid Mohal, PO: Answer Nagar\r\nPS: Gaffargaon, Dist: Mymensingh', '10, Paribagh,, Flat no- 702,\r\nDhaka-1000, Bangladesh', NULL, NULL, 'Muhammad Adnan Quadir 2006.jpg', NULL, NULL, NULL, NULL),
(212, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M07', 1, 20, '39', 1, 43, 'Md. Naimul Huq', 'Khan', NULL, '1', 2, NULL, 44, 'Businessman', NULL, '+8801711375260', NULL, '29/1, Kazi Nazrul Islam Road,\r\nCourt Para Kushtia-7000', '29/1, Kazi Nazrul Islam Road,\r\nCourt Para Kushtia-7000', 'bKash 6246147651', NULL, 'Md. Naimul Huq Khan(87-88).jpg', NULL, NULL, NULL, NULL),
(213, 'G24B1994F', NULL, NULL, '2023-02-16', 'G24B1994F02', 1, 24, '43', 1, 47, 'Saima', 'Sultana', NULL, '2', 2, NULL, 49, 'Bank Asia Litd. Scotia Br.', 'Senior Executive Officer', '+8801711267999', 'saima.sultana267@gmail.com#mailto:saima.sultana267@gmail.com#', '\"Aparajita\", Kobi Golam Mostafa Rd, Talaimari,\r\nPO: Kazla, PS: Boalia, Rajshahi', 'Apt # 2A, House #30, Road # 5A, Sector 11,\r\nUttara, Dhaka', NULL, NULL, 'saima sultana 1996.jpg', NULL, NULL, NULL, NULL),
(214, 'G33B2004M', NULL, NULL, '2023-02-16', 'G33B2004M03', 1, 33, '52', 1, 57, 'M.I.M.', 'Farhad', NULL, '1', 2, NULL, 59, 'DLRS/PTAT, EU Delegation in Bangladesh', 'Senior National Expert (GIS/Survey)', '+8801711588142', 'mim.farhad@gmail.com#mailto:mim.farhad@gmail.com#', 'C/O, Md. Majharul Islam,\r\nVill: Chithli Dhakshin Para, PO: Mithapukur,\r\nUpazila: Mithapukur, Dist: Rangpur', 'Lily Homes (Flat-C4)\r\n373/22, Free School Street, Hatirpool, \r\nKalabagan, Dhaka-1205', NULL, NULL, 'MIM Farhad.JPG', NULL, NULL, NULL, NULL),
(215, 'G33B2004F', NULL, NULL, '2023-02-16', 'G33B2004F03', 1, 33, '52', 1, 57, 'Parsha', 'Sanjana', NULL, '2', 2, NULL, 58, 'Homemaker', NULL, '+8801711588142', 'parsha_fm17@yahoo.com#mailto:parsha_fm17@yahoo.com#', 'C/O Abul Kalam\r\nVill:South Sahapur, PO:Kallyandi ()3861)\r\nUpazila: Senbag, Dist: Noakhali', 'Lily Homes (Flat-C4)\r\n373/22, Free School Street, Hatirpool, \r\nKalabagan, Dhaka-1205', NULL, NULL, 'Parsha Sanjana.JPG', NULL, NULL, NULL, NULL),
(216, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M02', 1, 24, '43', 1, 47, 'Mohammad Rabiul', 'Islam', NULL, '1', 2, NULL, 48, 'Dpet of Social Services', 'Deputy Director', '+8801718353139', NULL, NULL, 'Batch 24', NULL, NULL, 'Mohammed Rabiul Islam 1994.jpg', NULL, NULL, NULL, NULL),
(217, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M03', 1, 24, '43', 1, 47, 'S.M. Zabir', 'Hossain', NULL, '1', 2, NULL, 49, 'KrisEnergy', 'Senior Geophysicist', '+8801678122133', NULL, NULL, 'Batch 24', NULL, NULL, 'Md. zabir hossain 1994.jpg', NULL, NULL, NULL, NULL),
(218, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M04', 1, 24, '43', 1, 47, 'Kamonasish', 'Saha', NULL, '1', 2, NULL, 48, 'NCC Bank Ltd.', 'SPO', '+8801912102607', 'kamonasish@gamil.com#mailto:kamonasish@gamil.com#', NULL, 'Batch 24', NULL, NULL, 'Kamonasish saha 1994.jpg', NULL, NULL, NULL, NULL),
(219, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M05', 1, 24, '43', 1, 47, 'Md. Tazibar', 'Rahman', NULL, '1', 2, NULL, 48, 'Shahjalal Islami Bank Ltd.', 'SAVP', '+8801912455741', 'tazibar.rahman@yahoo.com#mailto:tazibar.rahman@yahoo.com#', NULL, 'Shahjalal islami Bank Ltd. Corporate Head Office, Gulshan, Dhaka', NULL, NULL, 'Md. Tazibar Rahman 1994.jpg', NULL, NULL, NULL, NULL),
(220, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M06', 1, 24, '43', 1, 47, 'Mohammad Mahfuzur Rahman', 'Talukder', NULL, '1', 2, NULL, 48, 'Uttara Bank Ltd.', 'Senior Officer', '+8801715239682', 'md.mahfuzurrahmant@yahoo.com#mailto:md.mahfuzurrahmant@yahoo.com#', NULL, 'Batch 24', NULL, NULL, 'mohammad mahfuzur rahman tarafder 1994.jpg', NULL, NULL, NULL, NULL),
(221, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M07', 1, 24, '43', 1, 47, 'Muhammad Rezaul', 'Kabir', NULL, '1', 2, NULL, 48, 'Govt. of the People\'s Republic of Bangladesh', 'Deputy Secretary', NULL, NULL, NULL, 'Batch 24', NULL, NULL, 'muhammad rezaul kabir 1994.jpg', NULL, NULL, NULL, NULL),
(222, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M08', 1, 24, '43', 1, 47, 'Md. Sazzadul', 'Haque', NULL, '1', 2, NULL, 48, 'Duncan Brothers (BD) Ltd.', 'Deputy Manager', '+8801711390153', 'mshaque715@yahoo.com#mailto:mshaque715@yahoo.com#', NULL, 'Batch 24', NULL, NULL, 'Mdj. sazzadul Haque 1994.jpg', NULL, NULL, NULL, NULL),
(223, 'G10B1980M', NULL, NULL, '2023-02-16', 'G10B1980M02', 1, 10, '29', 1, 33, 'AFM', 'Asaduzzaman', NULL, '1', 2, NULL, 34, 'Sanidine', 'Management Consultant', '+8801917755777', 'sanidine@gmail.com#mailto:sanidine@gmail.com#', NULL, '15/13 Tajmahal Road, Mohammadpur, Dhaka 1207', NULL, NULL, 'A F M Asaduzzaman 10th Batch.jpg', NULL, NULL, NULL, NULL),
(224, 'L14B1984M', NULL, NULL, '2023-02-16', 'G14B1984M04', 1, 14, '33', 3, 37, 'S.M. Rezaul', 'Karim', NULL, '1', 2, NULL, 38, 'Bangladesh Bank', 'Deputy General Manager', '+8801711100966', 'smrezaul.karim@bb.org.bd#mailto:smrezaul.karim@bb.org.bd#', NULL, 'Batch 14', NULL, NULL, 'SM Rezaul Karim DGM Payment System Department.jpg', NULL, NULL, NULL, NULL),
(225, 'G23B1993M', NULL, NULL, '2023-02-16', 'G23B1993M08', 1, 23, '42', 1, 46, 'Md. Safiul', 'Alam', NULL, '1', 2, NULL, 47, 'Office of the Comptroller & Auditor General, Bangladesh', 'Additional Deputy Comptroller & Auditor General', '+8801754246334', 'milonaudit@gmail.com#mailto:milonaudit@gmail.com#', NULL, '57/E, Azimpur Govt. Colony, Dhaka 1205', NULL, NULL, 'Md. Safiul alam 1993.jpg', NULL, NULL, NULL, NULL),
(226, 'G23B1993M', NULL, NULL, '2023-02-16', 'G23B1993M09', 1, 23, '42', 1, 46, 'Obaid', 'Raihan', NULL, '1', 2, NULL, 47, 'Claims Pro', 'Claims Adjuster (City of Toronto)', '+1905-921-6600', NULL, NULL, 'Batch 23', NULL, NULL, 'obaid raihan 1993.jpg', NULL, NULL, NULL, NULL),
(227, 'G15B1985M', NULL, NULL, '2023-02-16', 'G15B1985M06', 1, 15, '34', 1, 38, 'Md. Rejaul', 'Karim', NULL, '1', 2, NULL, 39, 'Ministry of Shipping', 'Joint Secretary', '+8801726899089', 'rejaul8283@gmail.com#mailto:rejaul8283@gmail.com#', NULL, 'Batch 15', '1000 tk due', NULL, 'Md Rejaul Karim 1986.jpg', NULL, NULL, NULL, NULL),
(228, 'G06B1975M', NULL, NULL, '2023-02-16', 'G06B1975M07', 1, 6, '23', 1, 28, 'Mohammad Jasim', 'Uddin', NULL, '1', 2, NULL, 29, 'Upstream and Downstream Services', 'Managing Director', '+8801712675929', 'jasim1953@gmail.com#mailto:jasim1953@gmail.com#', NULL, 'Batch 06', NULL, NULL, 'PP. Jasim batch 02.jpg', NULL, NULL, NULL, NULL),
(229, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M05', 1, 21, '40', 1, 44, 'Md. Haydar', 'Ali', NULL, '1', 2, NULL, 45, 'Weatherford Surface Logging System', 'Data Engineer/Petroleum Geologist', '+8801711117100', 'ilohaydar@yahoo.com#mailto:ilohaydar@yahoo.com#', NULL, 'Batch 21', NULL, NULL, 'Md. Haydar Ali(88-89).jpg', NULL, NULL, NULL, NULL),
(230, 'G13B1983M', NULL, NULL, '2023-02-16', 'G13B1983M06', 1, 13, '32', 1, 36, 'Md. Ataul', 'Hoque', NULL, '1', 2, NULL, 37, 'POSCO International Corporation', 'Country Manager', '+8801778287198', 'ataul71@gmail.com#mailto:ataul71@gmail.com#', NULL, 'Southbreeze Square (6th Floor), Plot -52 (old) 90 (new); Block - CES (A), Gulshan Avenue, Dhaka 1212', NULL, NULL, 'Md. Ataul Hoque 1983.jpg', NULL, NULL, NULL, NULL),
(231, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M08', 1, 20, '39', 1, 43, 'Md. Mostafizur', 'Rahman', NULL, '1', 2, NULL, 44, 'Bangladesh Rural Electrification Board', NULL, NULL, NULL, NULL, 'Batch 20', NULL, NULL, 'Md. mostafizur rahman 1990.jpg', NULL, NULL, NULL, NULL),
(232, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M09', 1, 24, '43', 1, 47, 'Mohammad Ali Mia', '(Azad)', NULL, '1', 1, NULL, 47, 'Pubali Bank Ltd.', 'SPO & Manager', '+8801817312961', 'skmujibroad@pubalibankbd.com#mailto:skmujibroad@pubalibankbd.com#', NULL, 'Batch 24', NULL, NULL, 'Mohammad Ali Mia 1991-92.jpg', NULL, NULL, NULL, NULL),
(233, 'G08B1977M', NULL, NULL, '2023-02-16', 'G08B1977M05', 1, 8, '26', 1, 30, 'Ashraf', 'Uddin', NULL, '1', 2, NULL, 31, 'Auburn University', 'Professor and Graduate Program Officer', '+1334-844-4885', 'uddinas@auburn.edu#mailto:uddinas@auburn.edu#', NULL, 'USA', NULL, NULL, 'ASHRAF UDDIN (1974-75).jpg', NULL, NULL, NULL, NULL),
(234, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M09', 1, 20, '39', 1, 43, 'Md. Mizanur', 'Rahman', NULL, '1', 2, NULL, 44, 'Jiban Bima Corporation', 'Deputy Manager', '+8801711971154', 'mizanurjbc1968@gmail.com#mailto:mizanurjbc1968@gmail.com#', NULL, 'Batch 20', NULL, NULL, 'Md. Mizanur Rahman 1990.jpg', NULL, NULL, NULL, NULL),
(235, 'G13B1983M', NULL, NULL, '2023-02-16', 'G13B1983M07', 1, 13, '32', 1, 36, 'Md. Abul', 'Ahsan', NULL, '1', 2, NULL, 37, 'Business', NULL, '+8801712067603', 'ahsan_d33@yahoo.com#mailto:ahsan_d33@yahoo.com#', NULL, 'Flat-A1, 17 East Rajabazar, Tejgaon, Dhaka 1215', NULL, NULL, 'Md. Abul Ahsan 1983.jpg', NULL, NULL, NULL, NULL),
(236, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M10', 1, 24, '43', 1, 47, 'Mohammad Golam', 'Azam', NULL, '1', 2, NULL, 48, 'Ministry of Information', 'Deputy Secretary', '+8801712008639', 'azamgolam2009@gmail.com#mailto:azamgolam2009@gmail.com#', NULL, '580/1-C, khilgaon, Dhaka-1219 azamgolam2009@gmail.com', 'Batch?', NULL, 'Mohammad golam azam 1998.jpg', NULL, NULL, NULL, NULL),
(237, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M08', 1, 35, '54', 1, 59, 'Md. Shajedur', 'Rahman', NULL, '1', 2, NULL, 60, 'Institution of Water Modelling (IWM)', 'Junior Hydrogeologist', '+8801716606954', 'sumongeo12@yahoo.com#mailto:sumongeo12@yahoo.com#', NULL, 'Batch 35', NULL, NULL, 'Md. Shajedur Rahman 2006.jpg', NULL, NULL, NULL, NULL),
(238, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M11', 1, 24, '43', 1, 47, 'Ahsan Parvez', 'Khan', NULL, '1', 2, NULL, 48, 'Janata Bank Ltd.', 'Executive Officer', '+8801732068500', NULL, NULL, 'Batch 24', NULL, NULL, 'ahsan parvez khan 1994.jpg', NULL, NULL, NULL, NULL),
(239, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M12', 1, 24, '43', 1, 47, 'Md. Abul Kalam', 'Azad', NULL, '1', 2, NULL, 48, 'Janata Bank Ltd.', 'AGM', '+8801708813337', 'akazadjbl@gmail.com#mailto:akazadjbl@gmail.com#', NULL, 'Janata Bank Limited, Head office, 110 Motijheel C/A, Dhaka', NULL, NULL, 'abul kalam azad 1994.jpg', NULL, NULL, NULL, NULL),
(240, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M13', 1, 24, '43', 1, 47, 'Goutom Kumar', 'Das', NULL, '1', 2, NULL, 48, 'Sketch BD Apparels (Buying House)', 'Owner', NULL, NULL, NULL, 'Batch 24', NULL, NULL, 'Goutom kumar das 1994 (2).jpg', NULL, NULL, NULL, NULL),
(241, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M10', 1, 20, '39', 1, 43, 'Md. Badruzzaman', NULL, NULL, '1', 2, NULL, 44, 'Asia Energy Corporation (Bangladesh) pvt. Ltd.', 'Manager operations', '+8801713042189', 'bzaman@asiaenergybd.com#mailto:bzaman@asiaenergybd.com#', NULL, 'Batch 20', 'bKash 6247322081\r\n6247324748', NULL, 'Md.  Badruzzaman(87-88).jpg', NULL, NULL, NULL, NULL),
(242, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M09', 1, 35, '54', 1, 59, 'Khurshedul', 'Alam', NULL, '1', 2, NULL, 60, 'Agrani Bank Ltd.', 'Manager', '+8801712658678', 'rajongeo43@yahoo.com#mailto:rajongeo43@yahoo.com#', NULL, 'Agrani Bank Ltd.\r\nBalizuri Bazar Br.\r\nMadarganj, Jamalpur', 'bKash 6238983728', NULL, 'Khorshed rajon.jpg', NULL, NULL, NULL, NULL),
(243, 'L11B1981M', NULL, NULL, '2023-02-16', 'L11B1981M08', 1, 11, '30', 3, 34, 'SK Aminul', 'Islam', NULL, '1', 2, NULL, 35, 'BAPEX', 'Manager Geology (Retired)', '+880171222850', 'aminulgeo@gmail.com#mailto:aminulgeo@gmail.com#', NULL, 'House#6 (4th floor), Outer Circular Road, Rajarbag, Dhaka', NULL, NULL, 'S K Aminul Islam 1981.jpg', NULL, NULL, NULL, NULL),
(244, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M11', 1, 20, '38', 1, 43, 'Md. Rezoyan', 'Mahmud', NULL, '1', 2, NULL, 44, 'Freelancer Geologist', NULL, '+8801711033044', 'rezoyan_geo@yahoo.com#mailto:rezoyan_geo@yahoo.com#', NULL, 'Batch 20', NULL, NULL, 'md. rezoyan Mahmud 1990.jpg', NULL, NULL, NULL, NULL),
(245, 'G29B2000M', NULL, NULL, '2023-02-16', 'G29B2000M05', 1, 29, '48', 1, 53, 'Razib', 'Mustofa', NULL, '1', 2, NULL, 54, 'Kris Energy', 'Petroleun Eng.', '+8801712941752', 'razibmustofa@yahoo.com#mailto:razibmustofa@yahoo.com#', NULL, 'Batch 29', NULL, NULL, 'Rajib Mustafa 29 Batch.JPG', NULL, NULL, NULL, NULL),
(246, 'G29B2000M', NULL, NULL, '2023-02-16', 'G29B2000M06', 1, 29, '47', 1, 53, 'Mominul', 'Islam', NULL, '1', 2, NULL, 54, 'Excellence Logging', 'Data Eng.', '+8801711113787', NULL, NULL, 'Batch 29', 'milonk2002@yahoo.com', NULL, 'Milon 29 Batch.jpg', NULL, NULL, NULL, NULL),
(247, 'G29B2000M', NULL, NULL, '2023-02-16', 'G29B2000M07', 1, 29, '48', 1, 53, 'Khondoker Akhlaque Hasan', 'Zubery', NULL, '1', 2, NULL, 54, 'DHI Services Ltd.', 'Petroleum Geologist', '+8801715486394', 'akhlaque78@yahoo.com#mailto:akhlaque78@yahoo.com#', NULL, 'Batch 29', NULL, NULL, 'Akhlaque  hasan jubarey 29.jpg', NULL, NULL, NULL, NULL),
(248, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M02', 1, 12, '31', 1, 35, 'Hrishikesh', 'Das', NULL, '1', 2, NULL, 36, 'Department of Youth Development (DYD)', 'Deputy Director', '+8801711965592', 'hrishikesh27das@gmail.com#mailto:hrishikesh27das@gmail.com#', NULL, '80 North Goran, Khilgaon, Dhaka 1219', 'Due 1000 tk', NULL, 'Hrishikesh Das 1985.jpg', NULL, NULL, NULL, NULL),
(249, 'G03B1972M', NULL, NULL, '2023-02-16', 'G03B1972M02', 1, 3, '21', 1, 25, 'Satish Ch.', 'Das', NULL, '1', 2, NULL, 26, 'Bangladesh Water Development Board (BWDB)', 'Director (Retired)', '+8801732999912', 'Satish_Geologist@yahoo.com#mailto:Satish_Geologist@yahoo.com#', NULL, 'Batch 03', NULL, NULL, 'Satish ch. das 1972.jpg', NULL, NULL, NULL, NULL),
(250, 'G17B1987M', NULL, NULL, '2023-02-16', 'G17B1987M03', 1, 17, '36', 1, 40, 'Md. Emdadul Kabir', 'Chowdhury', NULL, '1', 2, NULL, 41, 'Bakchi Mixed Agricultural Farm, Rangpur', 'Proprieter', '+8801712092150', '579885jib@gmail.com#mailto:579885jib@gmail.com#', NULL, 'Batch 17', NULL, NULL, 'Emdadul Kabir Chowdhury 87.JPG', NULL, NULL, NULL, NULL),
(251, 'L30B2001M', NULL, NULL, '2023-02-16', 'L30B2001M09', 1, 30, '49', 3, 54, 'Md. Bodruddoza', 'Mia', NULL, '1', 2, NULL, 55, 'Department of Geology, University of Dhaka', 'Associate Professor', '+8801818240937', 'bodruddoza@du.ac.bd#mailto:bodruddoza@du.ac.bd#', NULL, 'Department of Geology\r\nUniversity of Dhaka\r\nDhaka-1000', NULL, NULL, 'Badruddoza Mia.JPG', NULL, NULL, NULL, NULL),
(252, 'G16B1986M', NULL, NULL, '2023-02-16', 'G16B1986M05', 1, 16, '35', 1, 39, 'Md. Fazlur', 'Rahman', NULL, '1', 2, NULL, 40, 'Petrobangla', 'General Manager', '+8801756216412', 'fazlur.mgmcl@gmail.com#mailto:fazlur.mgmcl@gmail.com#', NULL, 'PETROCENTRE, 3 KAWRAN BAZAR C/A,\r\nDHAKA-1215', NULL, NULL, 'Md. fazlur rahman 1986.jpg', NULL, NULL, NULL, NULL),
(253, 'G15B1985M', NULL, NULL, '2023-02-16', 'G15B1985M07', 1, 15, '34', 1, 38, 'Md. Abdus', 'Sultan', NULL, '1', 2, NULL, 41, 'Petrobangla', 'General Manager', '+8801745770189', 'sultan_rmp2@yahoo.com#mailto:sultan_rmp2@yahoo.com#', NULL, 'General Manager (RDMD)\r\nPetrobangla\r\n3, Kawran Bazar\r\nDhaka', NULL, NULL, 'Md. Abdus Sultan 1986.jpg', NULL, NULL, NULL, NULL),
(254, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M12', 1, 31, '48', 1, 55, 'Md. Pariz', 'Uddin', NULL, '1', 2, NULL, 56, 'Sonali Bank Ltd.', 'Principal Officer', '+8801921848833', 'sblpariz@gmail.com#mailto:sblpariz@gmail.com#', NULL, 'Principal Officer\r\nControl and Monitoring Division\r\nSonali Bank Ltd. (Head Office)\r\n36, Dilkusha C/A, Dhaka', NULL, NULL, 'Md. Pariz uddin 2002.jpg', NULL, NULL, NULL, NULL),
(255, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M10', 1, 35, '54', 1, 59, 'Saleh', 'Ahmed', NULL, '1', 2, NULL, 60, 'BAPEX (Geological Division)', 'Deputy Manager (Geology)', '+8801723725415', 'saleh026@gmail.com#mailto:saleh026@gmail.com#', NULL, 'BAPEX Bhaban, 4 Kawran Bazar Rd, Dhaka 1215', NULL, NULL, 'saleh ahmed 2006.jpg', NULL, NULL, NULL, NULL),
(256, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M11', 1, 35, '53', 1, 59, 'Saman Uddin', 'Ahmed', NULL, '1', 2, NULL, 60, 'BAPEX', 'Deputy Manager (Geology)', '+8801753167138', 'samanuddinahmed@yahoo.com#mailto:samanuddinahmed@yahoo.com#', NULL, 'BAPEX Bhaban, 4 Kawran Bazar Rd, Dhaka 1215', NULL, NULL, 'Saman Uddin Ahmed 2006.jpg', NULL, NULL, NULL, NULL),
(257, 'L14B1984M', NULL, NULL, '2023-02-16', 'L14B1984M05', 1, 14, '33', 3, 37, 'Md. Akhlaqur', 'Rahman', NULL, '1', 2, NULL, 38, 'Chevron Bangladesh', 'Team Lead- Data Management', '+8801713039580', 'AKHLAQUR_RAHMAN@yahoo.com#mailto:AKHLAQUR_RAHMAN@yahoo.com#', NULL, NULL, NULL, NULL, 'Md. Akhlaqur Rahman 1984.jpg', NULL, NULL, NULL, NULL),
(258, 'L37B2008F', NULL, NULL, '2023-02-16', 'G37B2008F03', 1, 37, '56', 3, 61, 'Feroja', 'Serajee', NULL, '2', 2, NULL, 62, 'Bangladesh Oil, Gas & Mineral Corporation', 'Assistant Manager (Geology)', '+8801814090525', 'ferojaserajee@yahoo.com#mailto:ferojaserajee@yahoo.com#', NULL, 'PETROCENTRE, 3 KAWRAN BAZAR C/A,\r\nDHAKA-1215', NULL, NULL, 'Feruja Serajee.jpg', NULL, NULL, NULL, NULL),
(259, 'L34B2005F', NULL, NULL, '2023-02-16', 'L34B2005F05', 1, 34, '53', 3, 58, 'Tania', 'Sultana', NULL, '2', 2, NULL, 59, 'Bangladesh Oil, Gas & Mineral Corporation', 'Deputy Manager (Geology)', '+8801937987360', 'tania.geology@gmail.com#mailto:tania.geology@gmail.com#', NULL, 'PETROCENTRE, 3 KAWRAN BAZAR C/A,\r\nDHAKA-1215', NULL, NULL, 'Tania Sultana 34.jpg', NULL, NULL, NULL, NULL),
(260, 'G37B2008M', NULL, NULL, '2023-02-16', 'G37B2008M06', 1, 37, '56', 1, 61, 'Riyadul', 'Islam', NULL, '1', 2, NULL, 62, 'Geological Survey of Bangladesh', 'Asst. Director', '+8801911390068', 'riyadh31geo@gmail.com#mailto:riyadh31geo@gmail.com#', NULL, '153 Pioneer Road, Segunbagicha', NULL, NULL, 'Riyadul islam.jpg', NULL, NULL, NULL, NULL),
(261, 'G37B2008F', NULL, NULL, '2023-02-16', 'G37B2008F04', 1, 37, '56', 1, 61, 'Sultana', 'Maliha', NULL, '2', 2, NULL, 62, 'FLTC, MOE', 'Language Instructor', '+8801716892456', 'samiha669@gmail.com#mailto:samiha669@gmail.com#', NULL, '188/B, Khilgaon Chowdhurypara', NULL, NULL, 'Sultana maliha.jpg', NULL, NULL, NULL, NULL),
(262, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M12', 1, 20, '39', 1, 43, 'Md. Rezaul', 'Halim', NULL, '1', 2, NULL, 44, 'Invent Technologies Ltd.', 'Managing Director', '+8801819241770', NULL, NULL, 'House No-119, Flat No-B1,Road No-01, 01 Dhaka - Mymensingh Hwy, Dhaka 1213', NULL, NULL, 'Rezaul Halim 20 Batch.JPG', NULL, NULL, NULL, NULL),
(263, 'L34B2005M', NULL, NULL, '2023-02-16', 'L34B2005M09', 1, 34, '53', 3, 58, 'Mohammad Shamsuzzaman', 'Khan', NULL, '1', 2, NULL, 59, 'Agrani Bank Ltd.', 'Senior Principal Officer', '+8801711023460', 'jamansajjad@yahoo.com#mailto:jamansajjad@yahoo.com#', NULL, 'Agrani Bank Ltd.\r\nPrincipal Branch\r\n9/D Dilkusha, Motijhil C/A\r\nDhaka-1000', 'Mahfuz paid', NULL, 'Shamsujjaman Khan.jpg', NULL, NULL, NULL, NULL),
(264, 'G33B2004M', NULL, NULL, '2023-02-16', 'G33B2004M04', 1, 33, '52', 1, 57, 'Mohammad Nabinur', 'Ali', NULL, '1', 2, NULL, 58, 'Weatherford International', 'Logging Geologist', '+8801819166922', 'limon_zone@yahoo.com#mailto:limon_zone@yahoo.com#', NULL, 'Batch 33', NULL, NULL, 'Nabinur Ali.jpg', NULL, NULL, NULL, NULL),
(265, 'G34B2005M', NULL, NULL, '2023-02-16', 'G34B2005M11', 1, 34, '53', 1, 58, 'Abdul', 'Malek', NULL, '1', 2, NULL, 59, 'Janata Bank Ltd.', 'Principal Officer', '+8801812758511', 'shah.malek@yahoo.com#mailto:shah.malek@yahoo.com#', NULL, 'Janata Bank Ltd.\r\nBanagram Bazar Branch\r\nSanthia, Pabna', 'Mahfuz paid', NULL, 'Abdul Malek.JPG', NULL, NULL, NULL, NULL),
(266, 'G42B2013M', NULL, NULL, '2023-02-16', 'G42B2013M06', 1, 42, '61', 1, 66, 'Md. Mohimanul', 'Islam', NULL, '1', 2, NULL, 67, 'None', NULL, '+8801722353086', 'islam.mohimanul@gmail.com#mailto:islam.mohimanul@gmail.com#', NULL, 'Batch 42', 'bKash 6242337958', NULL, 'Mohjimanul Islam Tonmoy 2013.jpg', NULL, NULL, NULL, NULL),
(267, 'L21B1991M', NULL, NULL, '2023-02-16', 'L21B1991M06', 1, 21, '40', 3, 44, 'A.K.M. Rezaul', 'Kabir', NULL, '1', 2, NULL, 45, 'Arneeb Enterprise Bangladesh', 'Petroleum Consultant', '+8801717702996', 'iloreza@yahoo.com#mailto:iloreza@yahoo.com#', NULL, 'Arneeb Enterprise Bangladesh\r\n23/11/A, Khilzi road, Apt-A1, Shyamoli, Mohammadpur, Dhaka-1207', '10,000 tk DUE', NULL, 'A K M Rezaul Kabir 1993.jpg', NULL, NULL, NULL, NULL),
(268, 'G36B2007M', NULL, NULL, '2023-02-16', 'G36B2007M03', 1, 36, '55', 1, 60, 'Zobayer', 'Mahmud', NULL, '1', 2, NULL, 61, 'Geological Survey of Bangladesh', 'Assistant Director (Geologist)', '+8801743636808', 'zobayer1051@gmail.com#mailto:zobayer1051@gmail.com#', NULL, 'Geological Survey of Bangladesh (GSB)\r\nSegunbagica, Dhaka', NULL, NULL, 'Zobayer Mahmud.png', NULL, NULL, NULL, NULL),
(269, 'L06B1975F', NULL, NULL, '2023-02-16', 'L06B1975F02', 1, 6, '23', 3, 28, 'Naim', 'Akhtar', NULL, '2', 2, NULL, 29, 'House Wife', NULL, '+8801869512238', NULL, NULL, 'Batch 06', 'payment?', 'Naim-Akhtar_Regd_DUGAA-2.pdf', 'Naim_Akhtar.jpg', NULL, NULL, NULL, NULL),
(270, 'G29B2000F', NULL, NULL, '2023-02-16', 'G29B2000F02', 1, 29, '48', 1, 53, 'Fazilatun Nessa', 'Mahmood', NULL, '2', 2, NULL, 54, 'University of North Dakota', 'Graduate Student', NULL, 'fazilatunnessa.mahmo@und.edu#mailto:fazilatunnessa.mahmo@und.edu#', NULL, 'USA', NULL, 'Fazilatun_Nessa_Mahmood_Regd_DUGAA.pdf', 'Fazilatun_Nessa_Mahmood.jpg', NULL, NULL, NULL, NULL),
(271, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M04', 1, 28, '47', 1, 51, 'Taufique Hasan', 'Mahmood', NULL, '1', 2, NULL, 52, 'University of North Dakota', 'Assistant Professor', NULL, 'taufique.mahmood@und.edu#mailto:taufique.mahmood@und.edu#', NULL, 'Assistant Professor\r\nUniversity of North Dakota\r\nUSA', NULL, 'Taufique_Hasan_Mahmood_Regd_DUGAA.pdf', 'Taufique_Hasan_Mahmood.jpg', NULL, NULL, NULL, NULL),
(272, 'G07B1976M', NULL, NULL, '2023-02-16', 'G07B1976M01', 1, 7, '24', 1, 29, 'Md. Mozammel', 'Haq', NULL, '1', 2, NULL, 30, 'Reed & Graham Inc., SJCA', 'Environment and Safety Manager', '+1 408-362-1140', 'mozammel_haq@att.net#mailto:mozammel_haq@att.net#', NULL, 'USA', NULL, 'Md. Mozammel Haq_Regd_DUGAA.pdf', 'Md. Mozammel Haq.JPG', NULL, NULL, NULL, NULL),
(273, 'G06B1975M', NULL, NULL, '2023-02-16', 'G06B1975M08', 1, 6, '24', 1, 28, 'Muhammad', 'Ali', NULL, '1', 2, NULL, 29, 'USPS', 'Mail Carrier', '+1 408-628-7650', NULL, NULL, 'USA', NULL, 'Muhammad Ali_Regd_DUGAA.pdf', 'Muhammad Ali.jpg', NULL, NULL, NULL, NULL),
(274, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M07', 1, 40, '59', 1, 64, 'B M Aminul', 'Islam', NULL, '1', 2, NULL, 65, 'Musician', NULL, '+8801670271033', 'geologistaminul801@gmail.com#mailto:geologistaminul801@gmail.com#', NULL, '20/1, Pilkuni, Fatullah, Narayangonj', 'bKash 6243414715', NULL, 'Aminul islam.JPG', NULL, NULL, NULL, NULL),
(275, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M07', 1, 22, '41', 1, 45, 'Md. Mizanur', 'Rahman', NULL, '1', 2, NULL, 46, 'Geological Survey of Bangladesh', 'Deputy Director', '+8801711241450', 'mizangsb@gmail.com#mailto:mizangsb@gmail.com#', NULL, 'Geological Survey of Bangladesh (GSB)\r\nSegunbagica, Dhaka', NULL, NULL, 'Md. Mizaunur Rahman 1992.jpg', NULL, NULL, NULL, NULL),
(276, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M13', 1, 30, '49', 1, 54, 'Md. Faruk', 'Hasan', NULL, '1', 2, NULL, 55, 'Geological Survey of Bangladesh', 'Assistant Director (Geology)', '+8801720279033', 'faruk.hasan@yahoo.com#mailto:faruk.hasan@yahoo.com#', NULL, 'Geological Survey of Bangladesh (GSB)\r\nSegunbagica, Dhaka', NULL, NULL, 'Md. Faruk Hasan 2001.jpg', NULL, NULL, NULL, NULL),
(277, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M14', 1, 30, '49', 1, 54, 'Mohammad Anisur', 'Rahman', NULL, '1', 2, NULL, 55, 'Geological Survey of Bangladesh', 'Assistant Director (Geology)', '+8801716098185', 'anis_du_geo@yahoo.com#mailto:anis_du_geo@yahoo.com#', NULL, 'Geological Survey of Bangladesh (GSB)\r\nSegunbagica, Dhaka', NULL, NULL, 'Mohammad Anisur Rahman 2001 (2).jpg', NULL, NULL, NULL, NULL),
(278, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M12', 1, 32, '51', 1, 56, 'Aktarul', 'Ahsan', NULL, '1', 2, NULL, 57, 'Geological Survey of Bangladesh', 'Deputy Director', '+8801678148783', 'ahsan.aktarul@gmail.com#mailto:ahsan.aktarul@gmail.com#', NULL, 'Geological Survey of Bangladesh (GSB)\r\nSegunbagica, Dhaka', NULL, NULL, 'Aktarul Ahsan 2003.jpg', NULL, NULL, NULL, NULL),
(279, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M15', 1, 30, '48', 1, 54, 'Animesh', 'Talukder', NULL, '1', 1, NULL, 54, 'Geological Survey of Bangladesh', 'Assistant Director', '+8801716067839', 'talukder_animesh@yahoo.com#mailto:talukder_animesh@yahoo.com#', NULL, 'Room No-425, Bhutotto Bhaban,153, Pioneer Road, Segunbagicha, Dhaka-1000.', NULL, NULL, 'Animesh Talukder 2001.jpg', NULL, NULL, NULL, NULL),
(280, 'G38B2009M', NULL, NULL, '2023-02-16', 'G38B2009M03', 1, 38, '56', 1, 62, 'A.J.M Emdadul', 'Haque', NULL, '1', 2, NULL, 63, 'Geological Survey of Bangladesh', 'Assistant Director', '+8801712198011', 'emdadul.haque.geo@gamil.com#mailto:emdadul.haque.geo@gamil.com#', NULL, 'Geological Survey of Bangladesh (GSB)\r\nSegunbagica, Dhaka', NULL, NULL, 'A. J. M. Emdadul Haque, 38 batch.jpg', NULL, NULL, NULL, NULL),
(281, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M03', 1, 12, '31', 1, 35, 'Munir', 'Hossain', NULL, '1', 2, NULL, 36, 'Geological Survey of Bangladesh', 'Director (Geology)', '+8801912002209', 'munir567@gmail.com#mailto:munir567@gmail.com#', NULL, 'Geological Survey of Bangladesh (GSB)\r\nSegunbagica, Dhaka', NULL, NULL, 'Munir Hussain Batch 12.jpg', NULL, NULL, NULL, NULL),
(282, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M16', 1, 30, '48', 1, 54, 'Md. Tareq', 'Chowdury', NULL, '1', 2, NULL, 55, 'DU- UNICEF project', 'Field hydrogeologist', '+8801988209078', 'tareqbd_geology@yahoo.com#mailto:tareqbd_geology@yahoo.com#', NULL, 'Department of Geology, University of Dhaka', NULL, NULL, '30th Batch Tareq Chowdury.jpg', NULL, NULL, NULL, NULL),
(283, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M17', 1, 30, '48', 1, 54, 'Md. Zafrul', 'Hassan', NULL, '1', 2, NULL, 55, 'SG Logistics pvt. Ltd.', 'Deputy Manager', '+8801755529193', 'zafrul2011@gmail.com#mailto:zafrul2011@gmail.com#', NULL, 'PARAGONTECH,107, Bir Uttam C.R.Datta Road, Sute#6 F.Haque Tower (G.F), Southern side of HSBC Bank.  Dhaka-1205, Bangladesh', NULL, NULL, '30th Batch Zafrul Hassan.jpg', NULL, NULL, NULL, NULL),
(284, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M08', 1, 22, '41', 1, 45, 'Md. Belayet', 'Hossain', NULL, '1', 2, NULL, 46, 'Glaxo Smithkline Bangladesh Ltd.', 'Area Manager', '+8801716012058', 'belayet.x.hossain@gsk.com#mailto:belayet.x.hossain@gsk.com#', NULL, 'Glaxo Smithkline Bangladesh Ltd.\r\nSEC, House 2A Rd 138, Dhaka 1212', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M13', 1, 20, '39', 1, 43, 'Moinur Rahman', 'Molla', NULL, '1', 2, NULL, 44, 'Bangladesh Betar, Ministry of Information', 'Deputy Regional Director', '+8801552454540', 'moinurinf@yahoo.com#mailto:moinurinf@yahoo.com#', NULL, 'Deputy Regional Director\r\n405-406 Elisium Bhaban\r\n11 Hatkhola Road Tikatuli\r\nWari Dhaka -1203', NULL, NULL, 'Moinur Rahman Mollah 1990.jpg', NULL, NULL, NULL, NULL),
(286, 'G13B1983M', NULL, NULL, '2023-02-16', 'G13B1983M08', 1, 13, '32', 1, 36, 'Md. Mizan-ul-Alam', NULL, NULL, '1', 2, NULL, 37, 'Ministry of Information', 'Additional Secretary', '+8801712577589', 'mizan5252@yahoo.com#mailto:mizan5252@yahoo.com#', NULL, 'Ministry of Information, Bangladesh Secretariat, Dhaka 1000', NULL, NULL, 'Md. Mizan-ul-alam 1983.jpg', NULL, NULL, NULL, NULL),
(287, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M05', 1, 28, '47', 1, 51, 'Md. Habibur Rahman', 'Suman', NULL, '1', 2, NULL, 52, 'Green Trade International', 'Businessman, CEO', '+8801711126496', 'habib_61@hotmail.com#mailto:habib_61@hotmail.com#', NULL, 'Akter Tower, 2nd Burigonga Bride Road, Near Kodomtoly, Keranigonj, Dhaka 1310', 'Due 3000', NULL, 'Habibur Rahman 28 Batch.jpg', NULL, NULL, NULL, NULL),
(288, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M06', 1, 28, '47', 1, 51, 'Hasan Mansoor', 'Sujan', NULL, '1', 2, NULL, 52, 'Cocacola Bangladesh', 'Area Sales Manager AL IBPL', '+8801714047216', 'mmansoor@cocacola.com.bd#mailto:mmansoor@cocacola.com.bd#', NULL, 'Cocacola Bangladesh', 'Due 3000', NULL, 'Hasan Mansoor 28 batch.jpg', NULL, NULL, NULL, NULL),
(289, 'G28B1998F', NULL, NULL, '2023-02-16', 'G28B1998F01', 1, 28, '47', 1, 51, 'Khandker Sadia', 'Arafin', NULL, '2', 2, NULL, 52, 'Cabinet Division, Bangladesh', 'Deputy Secretary', '+8801716668503', 'ksa_geo@yahoo.com#mailto:ksa_geo@yahoo.com#', NULL, 'Deputy Secretary\r\nCabinet Division\r\nBangladesh Secretariate, Dhaka-1000', 'Due 3000', NULL, 'Khandakar Sadia Afrin.jpeg', NULL, NULL, NULL, NULL),
(290, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M07', 1, 28, '47', 1, 51, 'Md. Azmal Hossain', 'Parvez', NULL, '1', 2, NULL, 52, 'Exim Bank Ltd.', 'Assistant Vice President', '+8801911275794', 'azmal_PRZ@yahoo.com#mailto:azmal_PRZ@yahoo.com#', NULL, 'Exim Bank, Mirpur Branch, Dhaka', NULL, NULL, 'Azmal Hossain 28 batch.jpg', NULL, NULL, NULL, NULL),
(291, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M08', 1, 28, '47', 1, 51, 'Md. Jaber Bin', 'Khalil', NULL, '1', 2, NULL, 52, 'Green Trade International', 'Business, Managing Director', '+8801717572447', 'jaber_369@yahoo.com#mailto:jaber_369@yahoo.com#', NULL, 'Green Trade International\r\nBatch-28', 'Due 3000', NULL, 'Jaber Bin Khalil 28 batch.jpg', NULL, NULL, NULL, NULL),
(292, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M09', 1, 28, '47', 1, 51, 'Md. Ferdous Ali', 'Rana', NULL, '1', 2, NULL, 52, 'Schlumberger', 'Data Analyst', '+8801712098466', 'aliferdous3@gmail.com#mailto:aliferdous3@gmail.com#', NULL, '332 Ahmed Nagor, Akota Road, Paik Para, Mirpur 1, Dhaka-1216', 'Due 3000', NULL, 'Ferdous Ali 28 batch.jpg', NULL, NULL, NULL, NULL),
(293, 'L28B1998F', NULL, NULL, '2023-02-16', 'L28B1998F02', 1, 28, '47', 3, 51, 'Raqiba', 'Sultana', NULL, '2', 2, NULL, 52, 'Bangladesh Biman Airlines', 'Administrative Supervisor', '+8801726111000', NULL, NULL, 'Batch 28', 'Due 3000', NULL, 'Raqiba Rashidi 28 Batch.jpg', NULL, NULL, NULL, NULL),
(294, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M10', 1, 28, '47', 1, 51, 'Md. Shahadat Hossain', 'Shad', NULL, '1', 2, NULL, 52, 'Schlumberger', 'Petroleum Engineer', '+8801712854578', 'hshahadat@slb.com#mailto:hshahadat@slb.com#', NULL, 'Green Delta AIMS Tower\r\n51-52 Mohakhali C/A\r\nDhaka-1212', 'Due 3000', NULL, 'Shahadat Hossain Shad 29 .jpg', NULL, NULL, NULL, NULL),
(295, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M11', 1, 28, '47', 1, 51, 'Mohammad Masudur', 'Rahman', NULL, '1', 2, NULL, 52, 'Perth, Australia', 'Offuce Work, East Victoria Park', '+8801717242634', 'masud_geo2004@yahoo.com#mailto:masud_geo2004@yahoo.com#', NULL, 'Batch 28', 'Due 3000', NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M12', 1, 28, '47', 1, 51, 'Md. Mahmudur', 'Rahman', NULL, '1', 2, NULL, 52, 'Pubali Bank Ltd.', 'Senior Principal Officer', '+8801712910660', 'mahmud450@gmail.com#mailto:mahmud450@gmail.com#', NULL, '450, South Goran,   Dhaka - 1219', 'Due 3000', NULL, 'Mahmudur Rahman 28 Batch.jpg', NULL, NULL, NULL, NULL),
(297, 'G42B2013F', NULL, NULL, '2023-02-16', 'G42B2013F06', 1, 42, '61', 1, 66, 'Ritu Chaity', 'Ghose', NULL, '2', 1, NULL, 66, 'Wright State University, Ohio, USA', 'Graduate Teaching Assistant & Masters Candidate', '+19378257037', 'ghose.2@wright.edu, ritu.rcg@gmail.com#mailto:ghose.2@wright.edu, ritu.rcg@gmail.com#', NULL, 'USA', 'bKash 6248034954', NULL, 'Ritu Chaity Ghosh.JPG', NULL, NULL, NULL, NULL),
(298, 'G00D2010M', NULL, NULL, '2023-02-16', 'G00D2010M01', 4, 0, '59', 1, 63, 'Md. Nehal', 'Uddin', NULL, '1', 4, NULL, 63, 'Geological Survey of Bangladesh', 'Director General', '+8801720014803', 'nehal.gsb@gmail.com#mailto:nehal.gsb@gmail.com#', NULL, 'Geological Survey of Bangladesh\r\nSegunbagicha, Dhaka', NULL, NULL, 'Dr. Md. Nehal Uddin 2010.jpg', NULL, NULL, NULL, NULL),
(299, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M04', 1, 12, '31', 1, 35, 'AKM Shafiul H.', 'Chowdhury', NULL, '1', 2, NULL, 36, 'Geological Science, State University of New York', 'Associate Professor', NULL, 'chowdhus@newpaltz.edu#mailto:chowdhus@newpaltz.edu#', NULL, 'USA', NULL, NULL, 'Shafiul Haque Chowdhury 12 Batch.jpg', NULL, NULL, NULL, NULL),
(300, 'L12B1982M', NULL, NULL, '2023-02-16', 'L12B1982M05', 1, 12, '31', 3, 35, 'Mohammed', 'Hossain', NULL, '1', 2, NULL, 36, 'UNICEF', 'Senior Water Consultant', '+8801717052925', 'mohammed.hossain2001@yahoo.com#mailto:mohammed.hossain2001@yahoo.com#', NULL, 'DPHE-UNICEF WASH Project; DPHE Bhaban, 14 Shahid Captain Monsur Ali Sharani, Dhaka 1000, Bangladesh', 'Due 1000 tk', NULL, 'Mohammed Hossain.jpg', NULL, NULL, NULL, NULL),
(301, 'L12B1982M', NULL, NULL, '2023-02-16', 'L12B1982M06', 1, 12, '31', 3, 35, 'Moinul Islam', 'Chowdhury', NULL, '1', 2, NULL, 36, 'Golden Harvest', 'Executive Director', '01755676103', 'moinul@goldenharvestbd.com#mailto:moinul@goldenharvestbd.com#', NULL, 'Flat # 5, House # 76, Road # 6, D.O.H.S ( Banani )\r\nDhaka Cantt. Dhaka.', 'Due 3000 tk', NULL, 'Moinul Islam Chowdhury Batch 12.jpg', NULL, NULL, NULL, NULL),
(302, 'G00M1968M', NULL, NULL, '2023-02-16', 'G00M1968M05', 2, 0, '19', 1, 20, 'Md. Menhazur', 'Rahman', NULL, '1', 2, NULL, 20, 'Aqua Consultants Ltd.', 'Former Director, Hydrogeologist', NULL, 'menhaz_r@yahoo.com#mailto:menhaz_r@yahoo.com#', NULL, 'Ref- Mohammed Hossain', 'Due 1000 tk', NULL, 'MD. MENHAZUR RAHMAN.jpg', NULL, NULL, NULL, NULL),
(303, 'G36B2007M', NULL, NULL, '2023-02-16', 'G36B2007M04', 1, 36, '55', 1, 60, 'Rashedul', 'Hasan', NULL, '1', 2, NULL, 61, 'Geological Survey of Bangladesh (GSB)', 'Asst. Director', '01716622005', 'rashedul.hasan001@gmail.com#mailto:rashedul.hasan001@gmail.com#', NULL, 'Geological Survey of Bangladesh (GSB)\r\nSegunbagicha, Dhaka', 'Due 1000 tk', NULL, 'Rashedul Hasan 36 Batch.jpg', NULL, NULL, NULL, NULL),
(304, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M07', 1, 12, '31', 1, 35, 'SHM', 'Jamshed', NULL, '1', 2, NULL, 36, 'Benison International', 'Director (retired)', '01711 527951', 'shmjamshed@yahoo.com#mailto:shmjamshed@yahoo.com#', NULL, 'Batch 12', 'Due 1000 tk', NULL, 'Jamshed 12 Batch.png', NULL, NULL, NULL, NULL),
(305, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M08', 1, 12, '31', 1, 35, 'NAM', 'Salimullah', NULL, '1', 2, NULL, 36, 'Phoenix Finance & Investment Ltd., Bogra', 'SAVP', '+8801819770002', 'pfilbogra@gmail.com#mailto:pfilbogra@gmail.com#', NULL, 'Phoenix Finance & Investment Ltd., Satani Madrasha Bldg, Sherpur Road, Bogra', 'Due 1000 tk', NULL, 'NAM Salimullah 12 Batch.JPG', NULL, NULL, NULL, NULL),
(306, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M09', 1, 12, '31', 1, 35, 'A.N.M. Abul', 'Kashem', NULL, '1', 2, NULL, 36, 'Bangladesh Bank', 'Executive Director', '+8801755584915', 'anmabul.kashem@bb.org.bd#mailto:anmabul.kashem@bb.org.bd#', NULL, 'Flat - 5/B (5th floor, left side), House - 08, Road - 25, Sector - 7, Uttara, Dhaka 1230', 'Due 1000 tk', NULL, 'ANM Abul Kashem 12.JPG', NULL, NULL, NULL, NULL),
(307, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M10', 1, 12, '31', 1, 35, 'Dipak Kumar', 'Dhali', NULL, '1', 2, NULL, 36, 'Company Secretary', 'Bangladesh-China Power Company Ltd', '+8801730066975', 'cs@nwpgcl.org.bd#mailto:cs@nwpgcl.org.bd#', NULL, 'UTC Building (Level-4), 8 Panthapath, Karwanbazar, Dhaka 1205', 'Due 1000 tk', NULL, 'Dipak Kumar Dhali 12 batch.png', NULL, NULL, NULL, NULL),
(308, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M11', 1, 12, '31', 1, 35, 'Md. Mokbul', 'Hossain', NULL, '1', 2, NULL, 36, 'Govt. of Bangladesh', 'Joint Secretary', NULL, NULL, NULL, 'Batch 12', 'Due 1000 tk', NULL, 'Moqbul Hossain 12 Batch.JPG', NULL, NULL, NULL, NULL),
(309, 'G12B1982F', NULL, NULL, '2023-02-16', 'G12B1982F01', 1, 12, '31', 1, 35, 'Sayeeda', 'Taher', NULL, '2', 2, NULL, 36, NULL, 'Freelance Translator', '+8801718515594', 'syeeda.saami@gmail.com#mailto:syeeda.saami@gmail.com#', NULL, 'Batch 12', 'Due 1000 tk', NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M12', 1, 12, '31', 1, 35, 'Hariprasad', 'Paul', NULL, '1', 2, NULL, 36, 'Bangladesh Economic Zones Authority (BEZA)', 'Executive Member (Additional Secretary)', '+8801711585625', 'hariprasad4802@yahoo.com#mailto:hariprasad4802@yahoo.com#', NULL, 'Batch 12', 'Due 1000 tk', NULL, 'Hariprasad Paul 1982.jpg', NULL, NULL, NULL, NULL),
(311, 'G27B1997M', NULL, NULL, '2023-02-16', 'G27B1997M01', 1, 27, '46', 1, 50, 'Md. Zahirul Islam', 'Khan', NULL, '1', 2, NULL, 52, 'Bank Asia Ltd.', 'Vice President', '+8801713306000', 'zik101276@gmail.com#mailto:zik101276@gmail.com#', NULL, 'Flat# 401, 296/A, Block - E, Lalkuthi, Mazar Road, Dar us Salam,', 'Due (Bank Transfer)', NULL, 'Zahirul Islam Khan Bank Asia.jpg', NULL, NULL, NULL, NULL),
(312, 'G27B1997M', NULL, NULL, '2023-02-16', 'G27B1997M02', 1, 27, '46', 1, 50, 'Uttam', 'Karmaker', NULL, '1', 2, NULL, 52, 'Pubali Bank Ltd.', 'Senior Principal Officer', '+8801712036630', 'uttam_pblbd@yahoo.com#mailto:uttam_pblbd@yahoo.com#', NULL, '24 Motijheel Dhaka', NULL, NULL, 'Uttam Karmaker.jpg', NULL, NULL, NULL, NULL),
(313, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M07', 1, 26, '44', 1, 49, 'Md. Rezaul', 'Islam', NULL, '1', 2, NULL, 50, 'Bangladesh Parjatan Corporation', 'General Manager Commercial', '+8801718867230', '6792.rezaul@gmail.com#mailto:6792.rezaul@gmail.com#', NULL, 'Batch 26', NULL, NULL, 'Md. Rezaul Islam GM Bangladesh Parjatan.jpg', NULL, NULL, NULL, NULL),
(314, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M08', 1, 26, '45', 1, 49, 'Newaz Hossain', 'Chowdhury', NULL, '1', 2, NULL, 51, 'Ministry of Planning', 'Deputy Secretary', '+8801712588715', 'newazc21@gmail.com#mailto:newazc21@gmail.com#', NULL, 'Ministry of Planning; Block 09: 2nd Floor; Planning Commission; Sher-e-Bangla Nogor; Dhaka', NULL, NULL, 'Newaz Hossain Chowdhury Deputy Secretary.jpg', NULL, NULL, NULL, NULL),
(315, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M09', 1, 26, '45', 1, 49, 'Mohammad Ariful', 'Islam', NULL, '1', 2, NULL, 51, 'MetLife Alico Ltd.', 'Senior Assistant Manager', '+8801717097370', 'ariful.islam@metlife.com.bd#mailto:ariful.islam@metlife.com.bd#', NULL, 'flat # 4B, 8/1 A Pallbi, Mirpur,  Dhaka 1216', NULL, NULL, 'Mohammad Ariful islam.jpg', NULL, NULL, NULL, NULL),
(316, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M10', 1, 26, '45', 1, 49, 'Md. Ashik', 'Sayeed', NULL, '1', 2, NULL, 51, 'Bangladesh Police', 'SP, Special Branch', '+8801713006359', 'ashiksayeed@yahoo.com#mailto:ashiksayeed@yahoo.com#', NULL, 'House-491, Road-8, Mirpur DOHS, Dhaka-1216.', NULL, NULL, 'MD ASHIK SAYEED Bstch-26 .jpg', NULL, NULL, NULL, NULL),
(317, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M14', 1, 24, '43', 1, 47, 'Md. Anwar', 'Hossain', NULL, '1', 2, NULL, 48, 'Business', NULL, NULL, 'lbertmail@gmail.com#mailto:lbertmail@gmail.com#', NULL, 'Batch 24', NULL, NULL, 'Anwar Hossain Batch 24.jpg', NULL, NULL, NULL, NULL),
(318, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M15', 1, 24, '43', 1, 47, 'A.F. Gazi Alauddin', 'Ahmed', NULL, '1', 2, NULL, 48, 'One Bank Ltd.', 'Senior Assistant Vice President', '+8801716-539232', 'alauddin.ahmed@onebank.com.bd#mailto:alauddin.ahmed@onebank.com.bd#', NULL, 'Batch 24', NULL, NULL, 'AF Gazi Ahmed 24 Batch.jpg', NULL, NULL, NULL, NULL),
(319, 'G25B1995M', NULL, NULL, '2023-02-16', 'G25B1995M01', 1, 25, '44', 1, 48, 'Md. Ashraful', 'Islam', NULL, '1', 2, NULL, 49, 'Prime Bank Ltd.', 'Senior Executive Officer', '01712105721', 'm1010120@primebank.com.bd#mailto:m1010120@primebank.com.bd#', NULL, '6th floor, 119, prime Bank Head office', NULL, NULL, 'Ashraful Islam 25 Batch.jpg', NULL, NULL, NULL, NULL),
(320, 'G28B1998F', NULL, NULL, '2023-02-16', 'G28B1998F03', 1, 28, '47', 1, 51, 'Ms. Shamim Ara', 'Hoque', NULL, '2', 2, NULL, 52, 'Homemaker', NULL, '01787878784', 'ashik_sayeed@yahoo.com#mailto:ashik_sayeed@yahoo.com#', NULL, 'House-491, Road-8, Mirpur DOHS, Dhaka', NULL, NULL, 'Mrs Shamim Ara Hapue Batch-28.jpg', NULL, NULL, NULL, NULL),
(321, 'G27B1997M', NULL, NULL, '2023-02-16', 'G27B1997M03', 1, 27, '46', 1, 50, 'Ashfaq Ali', 'Choudhury', NULL, '1', 2, NULL, 51, 'United Commercial Bank Ltd.', 'First Assistant Vice President', '+8801817293542', 'ashfaqch10@yahoo.com#mailto:ashfaqch10@yahoo.com#', NULL, 'House- 1/D/2, Block 2, Pollobi, Dhaka', NULL, NULL, 'Ashfaq Ali Chowdhury 27 Batch.jpg', NULL, NULL, NULL, NULL),
(322, 'G27B1997M', NULL, NULL, '2023-02-16', 'G27B1997M04', 1, 27, '46', 1, 50, 'Russel', 'Ahmed', NULL, '1', 2, NULL, 51, 'Bangladesh Ansar & VDP', 'Director', '+8801714088052', 'russelahmedbd@yahoo.com#mailto:russelahmedbd@yahoo.com#', NULL, '21/3 Zigatola, Dhanmondi, Dhaka', NULL, NULL, 'Russel Ahmed Batch 27.JPG', NULL, NULL, NULL, NULL),
(323, 'G27B1997M', NULL, NULL, '2023-02-16', 'G27B1997M05', 1, 27, '46', 1, 50, 'Md. Shakhawat', 'Hossain', NULL, '1', 2, NULL, 51, 'Uttara Bank Ltd.', 'Senior Principal Officer', '+8801816623126', 'shossain9107@gmail.com#mailto:shossain9107@gmail.com#', NULL, 'Batch 27', NULL, NULL, 'Shakhawat Hossain.jpg', NULL, NULL, NULL, NULL),
(324, 'G27B1997M', NULL, NULL, '2023-02-16', 'G27B1997M06', 1, 27, '46', 1, 50, 'Mohammad Zakir', 'Hossain', NULL, '1', 2, NULL, 51, 'Social Islami Bank Ltd.', 'Senior Assistant Vice President', '+8801714085526', 'zakir.hossain@sibl.bd.com#mailto:zakir.hossain@sibl.bd.com#', NULL, 'Batch 27', NULL, NULL, 'Zakir Hussain Batch 27.jpg', NULL, NULL, NULL, NULL),
(325, 'G27B1997M', NULL, NULL, '2023-02-16', 'G27B1997M07', 1, 27, '46', 1, 50, 'Md. Habib Ullah', 'Chowdhury', NULL, '1', 2, NULL, 51, 'IDLC Finance Ltd.', 'Senior Manager', '+8801817-073532', 'habibxy@yahoo.com#mailto:habibxy@yahoo.com#', NULL, 'Batch 27', NULL, NULL, 'Md Habib Ullah Chowdhury.jpg', NULL, NULL, NULL, NULL),
(326, 'G27B1997M', NULL, NULL, '2023-02-16', 'G27B1997M08', 1, 27, '46', 1, 50, 'Mostafa Zobair', 'Ahmed', NULL, '1', 2, NULL, 51, 'City Bank', 'Resident Vice President', '+8801715013491', 'mostafa.zobair@citi.com#mailto:mostafa.zobair@citi.com#', NULL, 'Citibank. N. A..8 Gulshan Avenue Dhaka', NULL, NULL, 'Mustofa Zubayer Ahmed 27 Batch.jpg', NULL, NULL, NULL, NULL),
(327, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M13', 1, 12, '31', 1, 35, 'A.S.M. Shahidul', 'Haque', NULL, '1', 2, NULL, 36, 'Grameen Trust', 'Assistant General Manager', '+8801715802165', 'shahid.haque2016@gmail.com#mailto:shahid.haque2016@gmail.com#', NULL, 'Batch 12', 'Due- Tipu bhai', NULL, 'A.S.M. Shahidul Haque (1979-80).jpg', NULL, NULL, NULL, NULL),
(328, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M14', 1, 12, '31', 1, 35, 'Md.', 'Anisuzzaman', NULL, '1', 2, NULL, 36, 'New York State Office of Children and Family', 'Computer System Analyst', '+646 703 3793', 'aniscanada@hotmail.com#mailto:aniscanada@hotmail.com#', NULL, 'Batch 12', 'Due Tipu Bhai', NULL, 'Anisuzzaman Batch 12.jpg', NULL, NULL, NULL, NULL),
(329, 'G12B1982M', NULL, NULL, '2023-02-16', 'G12B1982M15', 1, 12, '31', 1, 35, 'AKM Aminur', 'Rahman', NULL, '1', 2, NULL, 36, 'ZAR Services Int. Ltd.', 'Managing Director', NULL, NULL, NULL, 'Batch 12', 'Due- Tipu Bhai', NULL, 'ANM Aminur rahman Batch 12.jpg', NULL, NULL, NULL, NULL),
(330, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M13', 1, 32, '51', 1, 56, 'Mohammad Rashe Dun', 'Nabi', NULL, '1', 2, NULL, 57, 'Insight Bangladesh Foundation', 'Director, Research & Development', '+8801717064668', 'rashed079@gmail.com#mailto:rashed079@gmail.com#', '55/5 Naya Paltan\r\nMotijheel, Dhaka 1000', '55/5 Naya Paltan\r\nMotijheel, Dhaka 1000', NULL, NULL, 'Rashed un nabi 32 Batch.jpg', NULL, NULL, NULL, NULL),
(331, 'G43B2014F', NULL, NULL, '2023-02-16', 'G43B2014F01', 1, 43, '62', 1, 67, 'Taspiya', 'Hamid', NULL, '2', 1, NULL, 68, 'Department of Geology, University of Dhaka', 'MS Student', '+8801683087516', 'taspiyahamid@yahoo.com#mailto:taspiyahamid@yahoo.com#', 'Shibpur, Feni Sadar\r\nFeni', '7/C Shimul, Ramna Thana Complex\r\nDhaka 1217', NULL, NULL, 'TASPIYA HAMID.jpg', NULL, NULL, NULL, NULL),
(332, 'L33B2004F', NULL, NULL, '2023-02-16', 'L33B2004F04', 1, 33, '52', 3, 57, 'Sarmin', 'Sultana', NULL, '2', 2, NULL, 58, 'Department of Geology, University of Dhaka', 'Assistant Professor', '+4407570309071', 'sarmin@du.ac.bd#mailto:sarmin@du.ac.bd#', 'Department of Geology\r\nUniversity of Dhaka\r\nDhaka 1000', 'PhD Student, Earth Sciences Department\r\nUniversity College London\r\nPearson Building, Room 232\r\nLondon, UK', NULL, NULL, 'Sharmin Sultana 33 Batch.JPG', NULL, NULL, NULL, NULL),
(333, 'L11B1981M', NULL, NULL, '2023-02-16', 'L11B1981M09', 1, 11, '30', 3, 34, 'Md. Bakhtiar', 'Alam', NULL, '1', 2, NULL, 35, 'Police Academy, Sarda', 'Additional DIG (retired)', '+8801726084488', 'bakhtiar.anika@yahoo.com#mailto:bakhtiar.anika@yahoo.com#', 'House # 4\r\nRoad # 2/E\r\nFlat # 6AB, Sector 4\r\nUttara', 'Flat# 6AB,House# 4, Road# 2/E, Sector-4, Uttara, Dhaka-1230', NULL, NULL, 'Md. Bakhtiar Alam Aziz Sir Batch.jpg', NULL, NULL, NULL, NULL),
(334, 'L31B2002M', NULL, NULL, '2023-02-16', 'L31B2002M13', 1, 31, '50', 3, 55, 'Md. Mainul', 'Islam', NULL, '1', 2, NULL, 56, 'UNICEF Bangladesh', 'Water, sanitation, and Hygiene (WASH) Officer', '+8801720940092', 'mdislam.personal@gmail.com#mailto:mdislam.personal@gmail.com#', 'Shahid Surja Sarak\r\nUkil para\r\nMadaripur', '58/1, Kolapotty\r\nNorth Jatrabari\r\nDhaka', NULL, NULL, 'Mainul Islam 31 batch.JPG', NULL, NULL, NULL, NULL),
(335, 'L34B2005M', NULL, NULL, '2023-02-16', 'L34B2005M12', 1, 34, '53', 3, 58, 'Dhiman Ranjan', 'Mondal', NULL, '1', 2, NULL, 59, 'MIT Haystack Observatory', 'Post-Doctoral Associate', '+16462384849', 'dhimandu@gmail.com#mailto:dhimandu@gmail.com#', 'Professor Para\r\nNuniagari, Palashbari\r\nGaibandha', '99 Millstone Road, Westford MA 01886', NULL, NULL, 'Dhiman Ranjan Mondal 34.jpg', NULL, NULL, NULL, NULL),
(336, 'L12B1982M', NULL, NULL, '2023-02-16', 'L12B1982M03', 1, 12, '31', 3, 35, 'Syed Mahbubur', 'Rahman', NULL, '1', 2, NULL, 36, 'Dhaka Bank', 'Managing Director and CEO', '+8801713030910', 'mahbubur15@gmail.com#mailto:mahbubur15@gmail.com#', NULL, 'Dhaka Bank Ltd., Corporate Office, 71 Purana Paltan Lane, Dhaka 1000', 'Due: Tipu Vai', NULL, 'Syed Mahbubur Rahman 12 Batch.JPG', NULL, NULL, NULL, NULL),
(337, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M14', 1, 32, '54', 1, 56, 'Md. Baharul Alam', 'Biswas', NULL, '1', 2, NULL, 57, 'Premier Minerals Ltd', 'Operation Manager', '+8801731727080', 'biswasba@gmail.com#mailto:biswasba@gmail.com#', 'Vill: Charkalmi', 'House # 12, Road # 05\r\nBlock E, Banashree\r\nRampura, Dhaka 1219', 'bKash 6253911280', 'Registration Form DUGAA_Final_8-11-2016_Bahar.pdf', 'Bahar Biswas.JPG', NULL, NULL, NULL, NULL),
(338, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M12', 1, 35, '53', 1, 59, 'Mohammad Jashim', 'Uddin', NULL, '1', 2, NULL, 60, 'Janata Bank Ltd', 'Principal Officer', '+8801717371025', 'jashimjbl2010@gmail.com#mailto:jashimjbl2010@gmail.com#', NULL, 'Janata Bank Ltd\r\nRisk Management Department\r\nHead Office, 110 Motijheel\r\nDhaka 1000', NULL, 'JASHIM 35 Batch.pdf', 'JASHIM 35 batch.jpg', NULL, NULL, NULL, NULL),
(339, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M13', 1, 28, '47', 1, 51, 'Mohammad Mukhles', 'Uddin', NULL, '1', 2, NULL, 53, 'Govt. of Bangladesh, Ministry of Education', 'Upazila Education officer', '+8801711265355', NULL, NULL, 'Batch 28', 'Due 3000', NULL, 'Mokles Uddin 28 Batch.jpg', NULL, NULL, NULL, NULL),
(340, 'G39B2010M', NULL, NULL, '2023-02-16', 'G39B2010M04', 1, 39, '112', 1, 63, 'Md. Lal', 'Mamud', NULL, '1', 2, NULL, 64, 'University of Mississippi', 'MS Student', '+16626389417', 'geomahmud@yahoo.com#mailto:geomahmud@yahoo.com#', NULL, 'USA', NULL, NULL, 'Lal mahmud.JPG', NULL, NULL, NULL, NULL),
(341, 'G38B2009F', NULL, NULL, '2023-02-16', 'G38B2009F02', 1, 38, '57', 1, 62, 'Farzana', 'Ferdous', NULL, '2', 2, NULL, 63, 'Teacher', NULL, '+8801717679924', 'lina.farzana@hotmail.com#mailto:lina.farzana@hotmail.com#', NULL, 'C/O \r\nC/O Mohammad Risalat Rafiq\r\nDepartment of Geology and Mining\r\nBarisal University\r\nBarisal 8200', 'bKash 6254076523', NULL, 'FARZANA FERDOUS 2005-2006.jpg', NULL, NULL, NULL, NULL),
(342, 'G39B2010M', NULL, NULL, '2023-02-16', 'G39B2010M05', 1, 39, '58', 1, 63, 'Abrar', 'Hossain', NULL, '1', 2, NULL, 64, 'Dept. of Disaster Science and Management', 'Assistant Professor', '+8801712100715', 'abrar.hossain.hm@gmail.com#mailto:abrar.hossain.hm@gmail.com#', NULL, 'Department of Disaster Science and Management\r\nUniversity of Dhaka\r\nDhaka-1000', NULL, NULL, 'Abrar Hosain.jpg', NULL, NULL, NULL, NULL),
(343, 'G39B2010M', NULL, NULL, '2023-02-16', 'G39B2010M06', 1, 39, '58', 1, 63, 'Basudeb Kumar', 'Malo', NULL, '1', 2, NULL, 64, 'Government of Bangladesh', 'Asst. Secretary & Executive Magistrate', '+8801713582809', 'basu_029@yahoo.com#mailto:basu_029@yahoo.com#', NULL, 'DC Office, Khagrachhari', NULL, NULL, 'Basudev Kumar.jpg', NULL, NULL, NULL, NULL),
(344, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M14', 1, 20, '39', 1, 43, 'Md. Al-Amin', 'Sarker', NULL, '1', 2, NULL, 44, 'Local Govt. Division', 'Senior Assistant Secretary', '+8801711108599', 'alamin_sarker@gmail.com#mailto:alamin_sarker@gmail.com#', NULL, 'House no: 86, Flat no: C8, Monipuripara, Tejgaon, Dhaka-1215.', 'bkash 6252471437', NULL, 'Al-Amin Sarker1987-88.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `member_infos` (`id`, `BatchID`, `SL`, `unique_count_id`, `date`, `member_id`, `entery_degree`, `batch`, `admission_session`, `alumni_category`, `entery_degree_completion_year`, `first_name`, `last_name`, `user_name`, `gender_id`, `exit_degree`, `bsc_year_passing`, `exit_year`, `current_affiliation`, `designation`, `contact_no`, `email`, `parmanent_address`, `current_address`, `note`, `scanced_form`, `member_image`, `entry_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(345, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M09', 1, 22, '41', 1, 45, 'Md. Naharul Islam', 'Mollah', NULL, '1', 2, NULL, 46, 'Galxosmithkline Bangladesh Limited', 'Head of Regulatory & Corporate Affairs', '+8801709654315', 'naharmolla@yahoo.com#mailto:naharmolla@yahoo.com#', NULL, 'Galxosmithkline Bangladesh Limited\r\nSEC, House 2A Rd 138, Dhaka 1212', NULL, NULL, 'Naharul Mollah.JPG', NULL, NULL, NULL, NULL),
(346, 'G30B2001F', NULL, NULL, '2023-02-16', 'G30B2001F03', 1, 30, '48', 1, 54, 'Farzana Afroz', 'Khan', NULL, '2', 2, NULL, 55, 'Mastermind School', 'Administrative Officer', '+8801842859575', 'farzana_lina@yahoo.com#mailto:farzana_lina@yahoo.com#', NULL, 'Mastermind School', 'Due: Feruj vai', NULL, '30th Farzana Afroz Khan.jpg', NULL, NULL, NULL, NULL),
(347, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M15', 1, 32, '51', 1, 56, 'Mohammad Lutful', 'Kabir', NULL, '1', 2, NULL, 57, 'Pure Earth Blacksmith institute', 'Environmental Researcher', '+8801817606913', 'kabir1526@gmail.com#mailto:kabir1526@gmail.com#', NULL, 'Dept of Geology\r\nUniversity of Dhak', NULL, NULL, 'Lutful Kabir 32 batch.jpg', NULL, NULL, NULL, NULL),
(348, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M14', 1, 31, '50', 1, 55, 'Arup Kumar', 'Biswas', NULL, '1', 2, NULL, 56, 'Hydrocarbon unit, EMRD, MoPEMR', 'Deputy Director (Mining and Operation)', '+8801779642400', 'arup_076@gmail.com#mailto:arup_076@gmail.com#', NULL, 'Hydrocarbon unit, EMRD, MoPEMR\r\nGSB Bhaban\r\nSegunbagicha\r\nDhaka', 'Due', NULL, 'Dadde.jpg', NULL, NULL, NULL, NULL),
(349, 'L34B2005F', NULL, NULL, '2023-02-16', 'L34B2005F06', 1, 34, '53', 3, 58, 'Ferhana', 'Yesmin', NULL, '2', 2, NULL, 59, 'Homemaker', NULL, '+8801707006446', 'labony073@yahoo.com#mailto:labony073@yahoo.com#', NULL, '689 / B, Flat_B7, Dom Inno Plazzo,  Moghbazar ( red cresent goli ), Dhaka.', NULL, NULL, 'Ferhana Yesmin.jpg', NULL, NULL, NULL, NULL),
(350, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M06', 1, 41, '60', 1, 65, 'Nim-Al-Ashfaq', NULL, NULL, '1', 2, NULL, 66, 'Department of MIS, Eskayef Bangladesh ltd. (SK+F)', 'Officer', '+8801922791505', 'sifatashfaq@gmail.com#mailto:sifatashfaq@gmail.com#', NULL, 'Flat: 5-B , House: 23, Road: 12, Sector: 04, Uttara R/A, Dhaka-1230', NULL, NULL, 'Nim Al Ashfaq 41st Batch.jpg', NULL, NULL, NULL, NULL),
(351, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M07', 1, 41, '60', 1, 65, 'Md. Anayet', 'Karim', NULL, '1', 2, NULL, 66, 'Geologist', 'Schlumberger, Bangladesh', '+8801722121276', 'anayett09k@gmail.com#mailto:anayett09k@gmail.com#', NULL, 'Green Delta AIMS Tower\r\n51-52 Mohakhali C/A\r\nDhaka-1212', NULL, NULL, 'Md. Anayet Karim 41st Batch.jpg', NULL, NULL, NULL, NULL),
(352, 'G43B2014F', NULL, NULL, '2023-02-16', 'G43B2014F02', 1, 43, '62', 1, 67, 'Rabaya Khair', 'Nithy', NULL, '2', 1, NULL, 67, 'Housing and Building Research Institute', 'Research Officer', '+8801689848251', 'nithy.khair@gmail.com#mailto:nithy.khair@gmail.com#', NULL, 'Housing and Building Research Institute\r\nSoil Mechanics Division\r\n120/3 Darus-Salam, Mirpur Road, Dhaka-1216', NULL, NULL, 'Rabaya Khair Nithy.jpg', NULL, NULL, NULL, NULL),
(353, 'G18B1988M', NULL, NULL, '2023-02-16', 'G18B1988M03', 1, 18, '37', 1, 41, 'ASM Golam', 'Kibria', NULL, '1', 2, NULL, 42, 'Boichi export', 'Proprietor', '+8801713015217', 'boichiexport@gmail.com#mailto:boichiexport@gmail.com#', NULL, 'Batch 18', NULL, NULL, 'Golam Kibria 18th batch.jpg', NULL, NULL, NULL, NULL),
(354, 'G39B2010M', NULL, NULL, '2023-02-16', 'G39B2010M07', 1, 39, '58', 1, 63, 'Iftekher', 'Alam', NULL, '1', 2, NULL, 64, 'None', NULL, '+8801714620263', 'iftekheralam@gmail.com#mailto:iftekheralam@gmail.com#', NULL, 'Batch 39', NULL, NULL, 'Iftekhar Alam 39 Batch.JPG', NULL, NULL, NULL, NULL),
(355, 'G34B2005M', NULL, NULL, '2023-02-16', 'G34B2005M13', 1, 34, '53', 1, 58, 'Ariful Hasan', 'Majumder', NULL, '1', 2, NULL, 59, 'NBR, Govt. of Bangladesh', 'Deputy Commissioner of Taxes', '+8801712579796', 'arif3788@yahoo.com#mailto:arif3788@yahoo.com#', NULL, 'Batch 34', NULL, NULL, 'Ariful Hasan 34 Batch.jpg', NULL, NULL, NULL, NULL),
(356, 'G33B2004M', NULL, NULL, '2023-02-16', 'G33B2004M05', 1, 33, '52', 1, 57, 'Md. Ziaur', 'Rahman', NULL, '1', 2, NULL, 58, 'IFIC Bank Ltd.  Kapasia Branch,  Gazipur', 'Branch Manager', '+8801819695962', 'zia.83bd@gmail.com#mailto:zia.83bd@gmail.com#', NULL, 'IFIC Bank Ltd.  Kapasia Branch, College Road,  Kapasia Bazaar, Kapasia,  Gazipur', 'bKash 6259825741', NULL, 'Ziaur Rahman.JPG', NULL, NULL, NULL, NULL),
(357, 'G33B2004M', NULL, NULL, '2023-02-16', 'G33B2004M06', 1, 33, '52', 1, 57, 'Md. Jahangir', 'Alam', NULL, '1', 2, NULL, 58, 'Janata Bank Ltd.', 'Executive Officer', '+8801734439623', 'jalamgp1@gmail.com#mailto:jalamgp1@gmail.com#', NULL, 'Batch 33', 'Due 3000', NULL, 'Jahangir Alam 33 Batch.JPG', NULL, NULL, NULL, NULL),
(358, 'G33B2004M', NULL, NULL, '2023-02-16', 'G33B2004M07', 1, 33, '51', 1, 57, 'Md. Mamun', 'Kabir', NULL, '1', 2, NULL, 58, 'Bangladesh Water development Board', 'Geologist', '+8801740954418', 'mak.du@yahoo.com#mailto:mak.du@yahoo.com#', NULL, 'Bangladesh Water development Board', 'due 3000', NULL, 'mamun Kabir 33.jpg', NULL, NULL, NULL, NULL),
(359, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M08', 1, 40, '59', 1, 64, 'Md. Illias', 'Mahmud', NULL, '1', 2, NULL, 65, 'University of Barisal', 'Lecturer', '+8801736171836', 'mdilliasm@barisaluniv.ac.bd#mailto:mdilliasm@barisaluniv.ac.bd#', NULL, 'Department of Geology and Mining\r\nBarisal University\r\nBarisal', 'bKash 6259184309', NULL, 'Md. Ilias Mahmud.jpg', NULL, NULL, NULL, NULL),
(360, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M13', 1, 35, '54', 1, 59, 'Abu Jafor', 'Mia', NULL, '1', 2, NULL, 60, 'University of Barishal', 'Asst. Professor and Chairman', '+8801759707030', 'jafordu1984@gmail.com#mailto:jafordu1984@gmail.com#', NULL, 'Department of Geology and Mining\r\nBarishal University\r\nBarishal', 'bKash 6259184309', NULL, 'Abu Jafor Mia.jpg', NULL, NULL, NULL, NULL),
(361, 'L18B1988M', NULL, NULL, '2023-02-16', 'L18B1988M02', 1, 18, '37', 3, 41, 'A.S.M Maksud', 'Kamal', NULL, '1', 2, NULL, 42, 'University of Dhaka', 'Dean, Faculty of Earth and Environmental Sciences', '+8801534605120', 'maksudkamal@yahoo.com#mailto:maksudkamal@yahoo.com#', NULL, 'Dean, Faculty of Earth and Environmental Sciences\r\nUniversity of Dhaka\r\nDhaka-1000', 'Due 13000', NULL, 'Maksud kamal.JPG', NULL, NULL, NULL, NULL),
(362, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M08', 1, 41, '60', 1, 65, 'Pritam', 'Saha', NULL, '1', 1, NULL, 65, 'St. Francis Xavier University, NS, Canada', 'Graduate Student Researcher', '+8801719403478', 'saha_pritam@ymail.com#mailto:saha_pritam@ymail.com#', NULL, 'Canada', NULL, NULL, 'Pritam Saha 41st Batch.jpg', NULL, NULL, NULL, NULL),
(363, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M09', 1, 41, '60', 1, 65, 'Md. Riaz', 'Uddin', NULL, '1', 2, NULL, 66, 'Pure Earth', 'Investigator', '+8801515669211', 'riazdu007@gmail.com#mailto:riazdu007@gmail.com#', NULL, 'Batch 41', NULL, NULL, 'Md. Riaz Uddin 41st Batch.jpg', NULL, NULL, NULL, NULL),
(364, 'G38B2009M', NULL, NULL, '2023-02-16', 'G38B2009M04', 1, 38, '57', 1, 62, 'KM Imam', 'Hossain', NULL, '1', 2, NULL, 63, 'GSB', 'Assistant Director', '+8801715495446', 'imam_123ly@yahoo.com#mailto:imam_123ly@yahoo.com#', NULL, 'Geological Survey of Bangladesh\r\nShegunbagicha\r\nDhaka-1000', 'Due 3000', NULL, 'KM IMam HJpossain.jpg', NULL, NULL, NULL, NULL),
(365, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M18', 1, 30, '48', 1, 54, 'Mohammad Rejaul', 'Karim', NULL, '1', 2, NULL, 55, 'Uttara Public International College', 'Principal', '+8801712251892', 'rejageo@gmail.com#mailto:rejageo@gmail.com#', NULL, 'Batch 30', 'Due 3000', NULL, '30th Batch Rejaul Karim.jpg', NULL, NULL, NULL, NULL),
(366, 'G30B2001M', NULL, NULL, '2023-02-16', 'G30B2001M19', 1, 30, '49', 1, 54, 'Farazee Mohammad Abdullah', 'Yunus', NULL, '1', 2, NULL, 55, 'Olive Tree Foods Ltd', 'DGM Operations', '+8801776796016', 'farazeegeo@gmail.com#mailto:farazeegeo@gmail.com#', NULL, 'Batch 30', NULL, NULL, '30th Farazee Md Abdullah Yunus.jpg', NULL, NULL, NULL, NULL),
(367, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M10', 1, 22, '41', 1, 45, 'Tofail', 'Ahmed', NULL, '1', 2, NULL, 46, 'APBN', 'Superintendent of Police', '+8801718005008', 'tofailpol@yahoo.com#mailto:tofailpol@yahoo.com#', NULL, 'Bacth 22', NULL, NULL, 'Tofail vai 22.jpg', NULL, NULL, NULL, NULL),
(368, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M11', 1, 22, '41', 1, 45, 'Bipul Krishna', 'Sannamat', NULL, '1', 2, NULL, 46, 'Rupali Bank Ltd.', 'Assistant General Manager', '+8801716950757', 'bipulsannamat@gmail.com#mailto:bipulsannamat@gmail.com#', NULL, 'Rupali bank limited, Sagardi Bazar Branch, Barishal', NULL, NULL, 'Sannamat.jpg', NULL, NULL, NULL, NULL),
(369, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M12', 1, 22, '41', 1, 45, 'MD. Sanwar', 'Hossain', NULL, '1', 2, NULL, 46, 'Upazila Education Office, Tangail', 'Assistant Upazila Education Officer', '+8801716516483', 'sanwar.aueo@gmail.com#mailto:sanwar.aueo@gmail.com#', NULL, 'Batch 22', 'Due 3000', NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'G28B1998M', NULL, NULL, '2023-02-16', 'G28B1998M14', 1, 28, '47', 1, 51, 'Abu Syed Mohammed', 'Faisal', NULL, '1', 2, NULL, 52, 'Geological Survey of Bangladesh', 'Deputy Director', '+8801552447093', 'faisal_hcu@yahoo.com#mailto:faisal_hcu@yahoo.com#', NULL, 'Batch 28', NULL, NULL, 'faisal_GSB_DD.jpg', NULL, NULL, NULL, NULL),
(371, 'G31B2002M', NULL, NULL, '2023-02-16', 'G31B2002M15', 1, 31, '50', 1, 55, 'Mohammed Murshed', 'Alam', NULL, '1', 2, NULL, 56, 'Institute of Water Modelling', 'Hydrogeologist', '+8801817040773', 'murshed81@gmail.com#mailto:murshed81@gmail.com#', NULL, 'Institute of Water Modelling (IWM)\r\nHouse # 496, Road # 32, New DOHS, Mohakhali, Dhaka - 1206, Bangladesh', 'bKash 6255969619', NULL, 'Morshed alam.jpg', NULL, NULL, NULL, NULL),
(372, 'G31B2002F', NULL, NULL, '2023-02-16', 'G31B2002F04', 1, 31, '50', 1, 55, 'Miraj-Un', 'Nahar', NULL, '2', 2, NULL, 56, 'Biam Laboratory School', 'Teacher', '+8801817612754', 'gmail-nmiru16@gmail.com#mailto:gmail-nmiru16@gmail.com#', NULL, 'Biam Laboratory School\r\n63, New Eskaton\r\nDhaka, Bangladesh 1000', 'bKash 6204071174', NULL, 'Miru Apu.JPG', NULL, NULL, NULL, NULL),
(373, 'L32B2003M', NULL, NULL, '2023-02-16', 'L32B2003M14', 1, 32, '51', 3, 56, 'Muhammad Abdullah Al', 'Mamun', NULL, '1', 2, NULL, 57, 'Bangladesh Jail, Ministry of Home Affairs', 'Assistant Inspector General of Prisons', '+8801711265834', 'reza_057@yahoo.com#mailto:reza_057@yahoo.com#', NULL, 'Assistant Inspector General of Prisons\r\nBangladesh Jail, Ministry of Home Affairs\r\nBashibazar, Dhaka', NULL, NULL, 'Reaza Mamun 32 Batch.jpg', NULL, NULL, NULL, NULL),
(374, 'G19B1989M', NULL, NULL, '2023-02-16', 'G19B1989M01', 1, 19, '38', 1, 42, 'Subrota kumar', 'Saha', NULL, '1', 2, NULL, 43, 'Department of Geology, University of Dhaka', 'Professor', '+8801711482872', 'sks@du.ac.bd#mailto:sks@du.ac.bd#', NULL, 'Department of Geology\r\nUniversity of Dhaka\r\nDhaka-1000', 'Due', NULL, 'Subrata Kumar saha.jpg', NULL, NULL, NULL, NULL),
(375, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M07', 1, 21, '40', 1, 44, 'Md. Ataur', 'Rahman', NULL, '1', 2, NULL, 45, 'Bangladesh Television', 'Additional Director', '+8801917301518', 'ataur71@yahoo.com#mailto:ataur71@yahoo.com#', NULL, 'Additional Director\r\nBangladesh Television\r\nRampura, Dhaka', 'Due', NULL, 'Ataur rahman 1988-89.jpg', NULL, NULL, NULL, NULL),
(376, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M08', 1, 21, '40', 1, 44, 'Md. Toriqul', 'Islam', NULL, '1', 2, NULL, 45, 'Mercantile bank ltd', 'Assistant Vice president', '+8801712140436', 'tariqulmbl@yahoo.com#mailto:tariqulmbl@yahoo.com#', NULL, 'Batch 21', 'Due', NULL, 'Md. Toriqul Isslam, 1991.jpg', NULL, NULL, NULL, NULL),
(377, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M14', 1, 35, '54', 1, 59, 'Samar Kumar', 'Paul', NULL, '1', 1, NULL, 59, 'DC Office Rajshahi', 'Assistant Commissioner and Executive Magistrate', '+8801711785952', 'hpsamar@gmail.com#mailto:hpsamar@gmail.com#', NULL, 'Assistant Commissioner and Executive Magistrate\r\nDC Office Rajshahi\r\nRajshahi', 'Bkash 6245508700', NULL, 'Samar 35 Batch.jpg', NULL, NULL, NULL, NULL),
(378, 'G42B2013M', NULL, NULL, '2023-02-16', 'G42B2013M07', 1, 42, '61', 1, 66, 'Tusher', 'Mohanta', NULL, '1', 2, NULL, 69, 'None', NULL, '+8801672087002', 'priyo906@gmail.com#mailto:priyo906@gmail.com#', NULL, 'Batch 42', 'Receipt 292', NULL, 'Tushar Mohante.JPG', NULL, NULL, NULL, NULL),
(379, 'G42B2013F', NULL, NULL, '2023-02-16', 'G42B2013F07', 1, 42, '61', 1, 66, 'Sharmin', 'Akter', NULL, '2', 2, NULL, 69, 'Shahjalal University of Science and Technology (SUST)', 'Lecturer', '+8801622264431', 'sharminakter.geology.du@gmail.com#mailto:sharminakter.geology.du@gmail.com#', NULL, 'Department of Petroleum & Mining Engineering, SUST, Sylhet.', 'Receipt 293', NULL, 'Sharmin akter.JPG', NULL, NULL, NULL, NULL),
(380, 'G29B2000M', NULL, NULL, '2023-02-16', 'G29B2000M08', 1, 29, '48', 1, 53, 'Mamunur Rashid', 'Tarafdar', NULL, '1', 2, NULL, 54, 'Janata bank Ltd', 'Principal Officer', '+8801912054832', 'mamun5074@yahoo.com#mailto:mamun5074@yahoo.com#', NULL, 'Batch 29', 'due 3000', NULL, 'Mamunur Rashid Tarafder 29 Batch.jpg', NULL, NULL, NULL, NULL),
(381, 'G34B2005M', NULL, NULL, '2023-02-16', 'G34B2005M14', 1, 34, '53', 1, 58, 'Md. Farid', 'Uddin', NULL, '1', 2, NULL, 59, 'Janat bank Ltd', 'Principal Officer', '+8801717430987', 'mfuddingeo@yahoo.com#mailto:mfuddingeo@yahoo.com#', NULL, 'Batch 34', NULL, NULL, 'Farid uddin 34.jpg', NULL, NULL, NULL, NULL),
(382, 'G33B2004F', NULL, NULL, '2023-02-16', 'G33B2004F05', 1, 33, '52', 1, 57, 'Naima Kamrun', 'Nahar', NULL, '2', 2, NULL, 58, 'Gas Transmission Company Ltd', 'Assistant Manager', '+8801781832691', 'rita_geology@yahoo.com#mailto:rita_geology@yahoo.com#', NULL, 'Assistant Manager, Gas Transmission Company Limited (GTCL), Agargaon, Dhaka, Bngladesh', 'Due 3000', NULL, 'Naima Kamrun Nahar.JPG', NULL, NULL, NULL, NULL),
(383, 'L33B2004M', NULL, NULL, '2023-02-16', 'L33B2004M06', 1, 33, '52', 3, 57, 'Md. Mostafizur', 'Rahman', NULL, '1', 2, NULL, 58, 'Department of Geology, DU', 'Assistant Professor', '+8801887370071', 'mustafiz2021@du.ac.bd#mailto:mustafiz2021@du.ac.bd#', NULL, 'Department of Geology\r\nUniversity of Dhaka\r\nDhaka-1000', 'due 3000', NULL, 'Mustafizur 33 batch.JPG', NULL, NULL, NULL, NULL),
(384, 'G37B2008M', NULL, NULL, '2023-02-16', 'G37B2008M07', 1, 37, '56', 1, 61, 'Fansab', 'Mustahid', NULL, '1', 2, NULL, 62, 'BAPEX', 'Assistant Manager (Geophysics)', '+8801675096764', 'fansab.mustahid@gmail.com#mailto:fansab.mustahid@gmail.com#', NULL, 'Assistant Manager (Geophysics)\r\nBAPEX Bhaban, 4 Kawran Bazar Rd \r\nDhaka 1215', NULL, NULL, 'Fansab Mustahid.JPG', NULL, NULL, NULL, NULL),
(385, 'L31B2002M', NULL, NULL, '2023-02-16', 'L31B2002M16', 1, 31, '50', 3, 55, 'Md. Golam Mostofa', 'Kamal', NULL, '1', 2, NULL, 56, 'Grameenphone ltd', 'Circle Product Head', '+8801711507689', 'mostofagmk@gmail.com#mailto:mostofagmk@gmail.com#', NULL, '181, Upper Jessore Road,  Shib Bari More, Khulna', NULL, NULL, 'Golam Mustafa kamal 31 batch.jpg', NULL, NULL, NULL, NULL),
(386, 'G18B1988M', NULL, NULL, '2023-02-16', 'G18B1988M04', 1, 18, '37', 1, 41, 'Md. Siddique Nur', 'Alam', NULL, '1', 2, NULL, 42, 'Directorate of Secondary and Higher Secondary Education', 'Upazila Secondary Education Officer', '+8801715025461', 'snalam363@gmail.com#mailto:snalam363@gmail.com#', NULL, 'Batch 18', NULL, NULL, 'MD. SIDDIQUE NUR ALAM 1958-1986.jpg', NULL, NULL, NULL, NULL),
(387, 'G18B1988M', NULL, NULL, '2023-02-16', 'G18B1988M05', 1, 18, '37', 1, 41, 'Probir Kumar', 'Sarker', NULL, '1', 2, NULL, 42, 'Office of the Pro-VC, DU', 'Deputy Registrar', '+8801711116242', 'ssppgeo@gmail.com#mailto:ssppgeo@gmail.com#', NULL, 'Deputy Registrar\r\nOffice of the Pro-VC\r\nUniversity of Dhaka', NULL, NULL, 'PROBIR KUMMAR SARKER 1985-1986.jpg', NULL, NULL, NULL, NULL),
(388, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M16', 1, 20, '39', 1, 43, 'Md. Shamim', 'Khan', NULL, '1', 2, NULL, 44, 'Ministry of Home Affairs', 'Senior Assistant Chief', '+8801712019265', 'shkhan0628@yahoo.com#mailto:shkhan0628@yahoo.com#', NULL, 'Senior Assistant Chief\r\nMinistry of Home Affairs', NULL, NULL, 'Md. Shameem Khan (1987-88).jpg', NULL, NULL, NULL, NULL),
(389, 'G07B1976M', NULL, NULL, '2023-02-16', 'G07B1976M02', 1, 7, '24', 1, 29, 'Mortuza Ahmed', 'Faruque', NULL, '1', 2, NULL, 30, 'Freelance Consultant', NULL, '+8801552354700', 'mortuza12@hotmail.com#mailto:mortuza12@hotmail.com#', NULL, 'Batch 7', NULL, NULL, 'MORTUZA AHMAD FARUQUE 1972.jpg', NULL, NULL, NULL, NULL),
(390, 'G26B1996M', NULL, NULL, '2023-02-16', 'G26B1996M11', 1, 26, '45', 1, 49, 'Md. Moniruzzaman', NULL, NULL, '1', 2, NULL, 50, 'Dutch-Bangla Bank Ltd', 'AVP and Manager', '+8801716621996', 'mohamasum@gmail.com#mailto:mohamasum@gmail.com#', NULL, 'Batch 26', NULL, NULL, 'MD. MONIRUZZAMAN 1993-1994.jpg', NULL, NULL, NULL, NULL),
(391, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M10', 1, 41, '60', 1, 65, 'Zubayer', 'Salehin', NULL, '1', 2, NULL, 66, 'BAPEX', 'Assistant Manager (Geophysics)', '+8801737310718', 'mnmilon@gmail.com#mailto:mnmilon@gmail.com#', NULL, 'Assistant Manager (Geophysics)\r\nBAPEX Bhaban, 4 Kawran Bazar Rd\r\nDhaka 1215', NULL, NULL, 'Zubayer Salehin Milon.jpg', NULL, NULL, NULL, NULL),
(392, 'G41B2012F', NULL, NULL, '2023-02-16', 'G41B2012F03', 1, 41, '60', 1, 65, 'Sabrina Sultana', 'Snigdha', NULL, '2', 2, NULL, 66, 'Chevron Bangladesh', 'Earth Scientist', '+8801924540602', 'du.snigdha@gmail.com#mailto:du.snigdha@gmail.com#', NULL, 'Khandker Tower (9th Floor) \r\n94, Gulshan Ave, Dhaka 1212', NULL, NULL, 'SABRINA SULTANA SNIGDHA.jpg', NULL, NULL, NULL, NULL),
(393, 'G11B1981F', NULL, NULL, '2023-02-16', 'G11B1981F04', 1, 11, '30', 1, 34, 'Asma', 'Ali', NULL, '2', 2, NULL, 35, 'Jaago Foundation School', 'Teacher', '+8801711563225', 'ssma@3sagroservices.net#mailto:ssma@3sagroservices.net#', NULL, 'NEN 1-C, Rd# 86, Gulshan-2, Dhak-1212', NULL, NULL, 'ASMA ALI 1978-1979.jpg', NULL, NULL, NULL, NULL),
(394, 'G11B1981F', NULL, NULL, '2023-02-16', 'G11B1981F04', 1, 11, '30', 1, 34, 'Amina', 'Nasreen', NULL, '2', 2, NULL, 35, 'Bangladesh Petroleum Institute', 'Senior Scientific Officer', '+8801711616170', 'ami_nasreen@yahoo.com#mailto:ami_nasreen@yahoo.com#', NULL, 'Bangladesh Petroleum Institute(BPI)\r\nPlot # 5A, Sector # 8, Uttara Model Town, Dhaka - 1230', NULL, NULL, 'AMINA NASREEN 1978-1979.jpg', NULL, NULL, NULL, NULL),
(395, 'G11B1981F', NULL, NULL, '2023-02-16', 'G11B1981F04', 1, 11, '30', 1, 34, 'Mitali Nusrat', 'Parveen', NULL, '2', 2, NULL, 35, 'Onneyshan', 'Managing Director', '+8801716778435', 'onneyshanlouhajang@gmail.com#mailto:onneyshanlouhajang@gmail.com#', NULL, '308/1 Senpara, Porbota, Mirpur-10, Dhaka', NULL, NULL, 'MITALI NUSRAT PARVEEN 1978-1979.jpg', NULL, NULL, NULL, NULL),
(396, 'G00M1969M', NULL, NULL, '2023-02-16', 'G00M1969M01', 2, 0, '20', 1, 21, 'M. Farid', 'Uddin', NULL, '1', 2, NULL, 21, 'Upstream and Downstream Services', 'Consultant', NULL, 'm.farid.uddn@gmail.com#mailto:m.farid.uddn@gmail.com#', NULL, 'Upstream and Downstream Services', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'L35B2006F', NULL, NULL, '2023-02-16', 'L35B2006F03', 1, 35, '54', 3, 59, 'Shamima', 'Nasrin', NULL, '2', 2, NULL, 60, 'Homemaker', NULL, NULL, 'shiladu017@yahoo.com#mailto:shiladu017@yahoo.com#', NULL, 'Batch 35', 'Kash 6259719919 for 10000 and 6259741692 for 3000', NULL, 'Shamima Nasrin 35 Batch.jpeg', NULL, NULL, NULL, NULL),
(398, 'G34B2005M', NULL, NULL, '2023-02-16', 'G34B2005M16', 1, 34, '53', 1, 58, 'Mrinmoy Kumar', 'Maitra', NULL, '1', 2, NULL, 59, 'University of Canterbury (New Zealand)', 'PhD Candidate', '+64 21 103 1932', 'geo_mrinmoy@yahoo.com#mailto:geo_mrinmoy@yahoo.com#', NULL, 'New Zealand', 'Due 3000', NULL, 'Mrinmoy Maitra 34 Batch.jpg', NULL, NULL, NULL, NULL),
(399, 'G36B2007M', NULL, NULL, '2023-02-16', 'G36B2007M05', 1, 36, '55', 1, 60, 'Md. Saddam', 'Hossain', NULL, '1', 2, NULL, 61, 'Department of Geology, University of Dhaka', 'Research Associate', '+8801796589647', 'hossain_saddamdu@yahoo.com#mailto:hossain_saddamdu@yahoo.com#', NULL, 'Department of Geology\r\nUniversity of Dhaka', NULL, NULL, 'Md. Saddam Hossain 36 Batch.jpg', NULL, NULL, NULL, NULL),
(400, 'G07B1976M', NULL, NULL, '2023-02-16', 'G07B1976M04', 1, 7, '25', 1, 29, 'Dr. M Habibur', 'Rahman', NULL, '1', 2, NULL, 30, 'University of Rajshahi', 'Professor', '+8801717139065', 'hr.gmm.ru@gmail.com#mailto:hr.gmm.ru@gmail.com#', NULL, 'Department of Geology and Mining\r\nUniversity of Rajshahi', 'Due', NULL, 'Dr. M Habibur Rahman 1973-74.jpg', NULL, NULL, NULL, NULL),
(401, 'G06B1975M', NULL, NULL, '2023-02-16', 'G06B1975M10', 1, 6, '24', 1, 28, 'Md. Muazzem', 'Hossain', NULL, '1', 2, NULL, 29, 'BADC', 'General Manager (retired)', '+8801777951971', 'muazzemdu@yahoo.com#mailto:muazzemdu@yahoo.com#', NULL, 'House 56 Road 1 Block J Bashundhara r/a', NULL, NULL, 'Md Muazzem Hussain 1972 73.jpg', NULL, NULL, NULL, NULL),
(402, 'G36B2007M', NULL, NULL, '2023-02-16', 'G36B2007M07', 1, 36, '55', 1, 60, 'Raihan', 'Kabir', NULL, '1', 2, NULL, 61, 'Halliburton International Inc.', 'Logging Geologist, Sr.', '+8801819166909', 'raihankabir@gmail.com#mailto:raihankabir@gmail.com#', NULL, 'Halliburton International Inc.\r\nBatch 36', NULL, NULL, 'Raihan Kabir 35 Batch.jpg', NULL, NULL, NULL, NULL),
(403, 'G43B2014M', NULL, NULL, '2023-02-16', 'G43B2014M01', 1, 43, '62', 1, 67, 'Md. Yousuf', 'Gazi', NULL, '1', 2, NULL, 68, 'Department of Geology, University of Dhaka', 'Lecturer', '+8801797262364', 'yousufspe@gmail.com#mailto:yousufspe@gmail.com#', NULL, 'Department of Geology\r\nUniversity of Dhaka\r\nDhaka-1000', NULL, NULL, 'Yusuf Gazi 43 batch.jpg', NULL, NULL, NULL, NULL),
(404, 'L13B1983M', NULL, NULL, '2023-02-16', 'L13B1983M09', 1, 13, '32', 3, 36, 'Md. Abdullah Al', 'Mamun', NULL, '1', 2, NULL, 37, 'Ministry of Education', 'Deputy Secretary', '+8801717878448', 'adhunikbangladesh@yahoo.com#mailto:adhunikbangladesh@yahoo.com#', NULL, 'Deputy Secretary\r\nMinistry of Education', NULL, NULL, 'MD. ABDULLAH AL MAMUN 1980-1981 (2).jpg', NULL, NULL, NULL, NULL),
(405, 'G07B1976M', NULL, NULL, '2023-02-16', 'G07B1976M05', 1, 7, '24', 1, 29, 'Abdul Mayeen Nazre', 'Sobhan', NULL, '1', 1, NULL, 29, 'Agriculture & Water Resources Department (Australia)', 'Assistant Director', '+61432185285', 'nazre.sobhan@gmail.com#mailto:nazre.sobhan@gmail.com#', NULL, 'USA\r\nBatch 07', NULL, NULL, 'Nazre Sobhan 6 Batch.JPG', NULL, NULL, NULL, NULL),
(406, 'G39B2010M', NULL, NULL, '2023-02-16', 'G39B2010M08', 1, 39, '58', 1, 63, 'Musabbir Ahmed', 'Khan', NULL, '1', 2, NULL, 65, 'JICA', NULL, '+8801722171815', 'geomusabbirgeo@gmail.com#mailto:geomusabbirgeo@gmail.com#', NULL, 'Batch 39\r\nGeology Dept.', 'Due', NULL, 'Musabbir A Khan.jpg', NULL, NULL, NULL, NULL),
(407, 'G17B1987M', NULL, NULL, '2023-02-16', 'G17B1987M05', 1, 17, '36', 1, 40, 'AKM Badiul', 'Alam', NULL, '1', 2, NULL, 41, 'NBR, Bogra Tax Zone', 'Commissioner of Taxes', '+8801711313363', 'badiul.lpp67@yahoo.com#mailto:badiul.lpp67@yahoo.com#', NULL, 'Tax Zone 14, Bijoynagar, Dhaka', NULL, NULL, 'AKM Badiul Alam 87.JPG', NULL, NULL, NULL, NULL),
(408, 'G17B1987M', NULL, NULL, '2023-02-16', 'G17B1987M06', 1, 17, '36', 1, 40, 'Md.', 'Kawser', NULL, '1', 2, NULL, 41, 'Buiyah Warmtex Limited', 'Managing Director', '+8801713016405', NULL, NULL, 'Batch 17', NULL, NULL, 'Md Kawsar 87.JPG', NULL, NULL, NULL, NULL),
(409, 'G17B1987M', NULL, NULL, '2023-02-16', 'G17B1987M07', 1, 17, '36', 1, 40, 'AAM Zakir Hossain', 'Khan', NULL, '1', 2, NULL, 41, 'NZ Group', 'Head (Human Resources and Administration)', NULL, NULL, NULL, 'Batch 17', NULL, NULL, 'AAM Zakir Hossain Khan 87.JPG', NULL, NULL, NULL, NULL),
(410, 'G32B2003F', NULL, NULL, '2023-02-16', 'G32B2003F05', 1, 32, '51', 1, 56, 'Sazia', 'Rahman', NULL, '2', 2, NULL, 57, 'Piece of Cake by Sazia', 'Owner', '+88001911491216', 'r.sazia@gmail.com#mailto:r.sazia@gmail.com#', NULL, 'Mirpur,Dhaka', NULL, NULL, 'Sazia Rahman 33 Batch.JPG', NULL, NULL, NULL, NULL),
(411, 'G00M1961M', NULL, NULL, '2023-02-16', 'G00M1961M02', 2, 0, '12', 1, 13, 'AAM Shamsur', 'Rahman', NULL, '1', 2, NULL, 13, 'BCL Centre for Training & Research', 'Head, CenTR', '+8801742513017', 'bcl@bclgroup.com#mailto:bcl@bclgroup.com#', NULL, 'President, DUGAA', 'Due', NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'G06B1975M', NULL, NULL, '2023-02-16', 'G06B1975M11', 1, 6, '24', 1, 28, 'M Rakib', 'Uddin', NULL, '1', 2, NULL, 30, 'Khulna University', 'Professor', '+8801711964950', 'rakib.ku@gmail.com#mailto:rakib.ku@gmail.com#', NULL, 'Batch 06', 'due', NULL, 'Rakib Uddin 1976.jpg', NULL, NULL, NULL, NULL),
(413, 'G06B1975M', NULL, NULL, '2023-02-16', 'G06B1975M12', 1, 6, '24', 1, 28, 'Mir Fazlul', 'Karim', NULL, '1', 2, NULL, 29, 'Geocomp Corporation USA', 'Engineering Geologist', '+16469328915', 'azadkk@gmail.com#mailto:azadkk@gmail.com#', NULL, 'USA', NULL, NULL, 'Mir Fazlul Karim 1975.jpg', NULL, NULL, NULL, NULL),
(414, 'G00B1955M', NULL, NULL, '2023-02-16', 'G00B1955M02', 1, 0, '6', 1, 7, 'Mominul', 'Hoque', NULL, '1', 1, NULL, 7, 'University of Pittsburgh', 'Professor (Retired)', '+14123842309', 'mominulhoque@outlook.com#mailto:mominulhoque@outlook.com#', NULL, 'USA', 'Due', NULL, 'Mominul Hoque 1955.jpg', NULL, NULL, NULL, NULL),
(415, 'G26B1996M', NULL, NULL, '2023-02-16', 'G28B1998M16', 1, 26, '45', 1, 49, 'Muhammad', 'Faruq-uz-zaman', NULL, '1', 2, NULL, 50, 'Finance Division, M/O Finance', 'Senior Assistant Secretary', '+8801819135451', 'faruq22@gmail.com#mailto:faruq22@gmail.com#', NULL, '2/803, NAM Garden Govt Officers Quarters, Mirpur-13, Dhaka', NULL, NULL, 'Mohammad faruk-uz-zaman 1998.jpg', NULL, NULL, NULL, NULL),
(416, 'S00N0000M', NULL, NULL, '2023-02-16', 'S00N0000M05', 6, 0, '119', 5, 126, 'Chowdhury', 'Quamruzzaman', NULL, '1', 6, NULL, 126, 'Department of Geology, University of Dhaka', 'Professor', '+8801711280667', 'cqzam.dhk01@gmail.com#mailto:cqzam.dhk01@gmail.com#', NULL, 'Department of Geology, \r\nUniversity of Dhaka\r\nDhaka-1000', NULL, NULL, 'Chowdhury Quamruzzaman.jpg', NULL, NULL, NULL, NULL),
(417, 'G00M1963M', NULL, NULL, '2023-02-16', 'G00M1963M02', 2, 0, '14', 1, 15, 'Rezaur', 'Rahman', NULL, '1', 2, NULL, 15, NULL, 'Business', '+8801819212701', 'rezar@bengal_airlift.com#mailto:rezar@bengal_airlift.com#', NULL, NULL, 'due', NULL, 'Rezaur Rahman MSC 1963.JPG', NULL, NULL, NULL, NULL),
(418, 'G07B1976M', NULL, NULL, '2023-02-16', 'G07B1976M06', 1, 7, '25', 1, 29, 'Md. Obaidul Hoque', 'Bhuiyan', NULL, '1', 2, NULL, 30, NULL, 'Business', '+8801713003345', NULL, NULL, 'Bacth 07', 'Due', NULL, 'Obaidul Hoque Bhuiyan 1976.jpg', NULL, NULL, NULL, NULL),
(419, 'L36B2007M', NULL, NULL, '2023-02-16', 'L36B2007M08', 1, 36, '55', 3, 60, 'Golam', 'Kibria', NULL, '1', 2, NULL, 61, 'National Bureau of Revenue', 'Deputy Comissioner (Tax)', '+8801712880337', 'gk_du@yahoo.com#mailto:gk_du@yahoo.com#', NULL, 'H 19, Road 3, Dhanmondi, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M10', 1, 21, '40', 1, 44, 'Md. Shamsul', 'Alam', NULL, '1', 2, NULL, 45, 'CID, Bangladesh Police', 'Superintendent of Police', '+8801713018787', 'monzu779@yahoo.com#mailto:monzu779@yahoo.com#', NULL, 'Building# 24, Flat# B/2, Shoptaneer officer\'s Apt. Block-B, Lalmatia, Dhaka', 'Need to scan Photo', NULL, 'Shamsul Alam Manju.jpg', NULL, NULL, NULL, NULL),
(421, 'G15B1985M', NULL, NULL, '2023-02-16', 'G15B1985M09', 1, 15, '34', 1, 38, 'Md. Aman', 'Ullah', NULL, '1', 2, NULL, 39, 'Begum Amena Sultan Govt. Grisl High School', 'Assistant Teacher', '+8801913956296', 'mdamanullah80@gmail.com#mailto:mdamanullah80@gmail.com#', NULL, 'Assistant Teacher\r\nBegum Amena Sultan Govt. Grisl High School\r\nDaudkandi, Comilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M11', 1, 40, '59', 1, 64, 'Shakhawat', 'Hossain', NULL, '1', 2, NULL, 67, 'Department of Geology, University of Dhaka', 'Lecturer', '+8801672760972', 'shakhawat.geo@du.ac.bd#mailto:shakhawat.geo@du.ac.bd#', 'Village: Durgapur, Post office: Anandabazar, Thana-Matlab (North), District: Chandpur', 'Department of Geology \r\nUniversity of Dhaka\r\nDhaka-1000', NULL, NULL, 'DSC_0427n.jpg', NULL, NULL, NULL, NULL),
(423, 'G00M1965M', NULL, NULL, '2023-02-16', 'G00M1965M02', 2, 0, '16', 1, 17, 'M. Abdul', 'Matin', NULL, '1', 2, NULL, 17, 'DIRD Engineering Ltd.', 'Director', '+8801713008683', 'matin@dirdgroup.org#mailto:matin@dirdgroup.org#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M11', 1, 21, '40', 1, 44, 'Md. Raquib', 'Hossain', NULL, '1', 2, NULL, 45, 'UICDP (JICA funded)', 'District Coordinator', '+8801711106832', 'raquib.mymen@gmail.com#mailto:raquib.mymen@gmail.com#', NULL, '28, Shankipara (Natun Polli), Mymensingh City Corporation,  Mymensing.', 'Need to scan photo', NULL, 'Raquib Husain.jpg', NULL, NULL, NULL, NULL),
(425, 'G00M1968M', NULL, NULL, '2023-02-16', 'G00M1968M07', 2, 0, '19', 1, 20, 'A.T.M Fazlul', 'Haq', NULL, '1', 2, NULL, 20, 'Department of Geology, University of Dhaka', 'Professor (Retired)', '+8801757824666', 'atmfhaq@yahoo.com#mailto:atmfhaq@yahoo.com#', NULL, 'Professor (Retired)\r\nDepartment of Geology\r\nUniversity of Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'G42B2013M', NULL, NULL, '2023-02-16', 'G42B2013M08', 1, 42, '61', 1, 66, 'Md. Hashibur', 'Rashid', NULL, '1', 2, NULL, 67, 'TSIP, under USAID, Geology Department, DU', 'Environmental Researcher', '+8801672593652', 'sabuj033@gmail.com#mailto:sabuj033@gmail.com#', NULL, 'Batch 42', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M12', 1, 21, '40', 1, 44, 'Quazi Mahmud', 'Hossain', NULL, '1', 2, NULL, 45, 'National Bank Ltd.', 'Sr. Asst. Vice President', '+8801715713648', 'qmahmudnbl@gmail.com#mailto:qmahmudnbl@gmail.com#', NULL, 'Bacth 21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'G13B1983M', NULL, NULL, '2023-02-16', 'G13B1983M11', 1, 13, '32', 1, 36, 'Mohammed Enamul', 'Hoque', NULL, '1', 2, NULL, 37, 'Abbey road wines & spirit', 'CEO', NULL, 'hawkoa@gmail.com#mailto:hawkoa@gmail.com#', NULL, 'Batch 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M12', 1, 40, '59', 1, 64, 'Md. Mohaimenul Islam', 'Rabi', NULL, '1', 2, NULL, 65, 'Bangladesh National MuseumDPDC', 'Assistant Manager', '+8801730335329', 'rabi.ek04@gmail.com#mailto:rabi.ek04@gmail.com#', NULL, 'DPDC, Biddut Bhaban, Abdul Gani Road, Dhaka-1000', NULL, NULL, 'Rabi 42.jpg', NULL, NULL, NULL, NULL),
(430, 'G18B1988M', NULL, NULL, '2023-02-16', 'G18B1988M06', 1, 18, '37', 1, 41, 'Md. Rezaul', 'Ahsan', NULL, '1', 2, NULL, 42, 'Crown Group', 'Chairman', '+8801711531639', 'rezaul@crownfashionbd.net#mailto:rezaul@crownfashionbd.net#', NULL, 'Batch 18', 'photo needs to be scanned', NULL, 'Rezaul Ahsan.jpg', NULL, NULL, NULL, NULL),
(431, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M12', 1, 41, '60', 1, 65, 'Md. Sharif', 'Mustaque', NULL, '1', 2, NULL, 66, 'SEES, Queens College, CUNY', 'Adjunct Lecturer', '+8801717062165', 'sharifmustaque@gmail.com#mailto:sharifmustaque@gmail.com#', NULL, 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'G24B1994M', NULL, NULL, '2023-02-16', 'G24B1994M17', 1, 24, '43', 1, 47, 'Mohammad Monirul', 'Islam', NULL, '1', 2, NULL, 48, 'Cantonment Executive Officer (Deputy Secretary)', 'Comilla Cantonment', '+8801711061130', 'monirulislam15122@gmail.com#mailto:monirulislam15122@gmail.com#', NULL, 'Bacth 24', 'photo need to be scanned', NULL, 'Mohammad monirul Islam 24 batch.jpg', NULL, NULL, NULL, NULL),
(433, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M13', 1, 41, '59', 1, 65, 'Md. Rayhan', 'Habib', NULL, '1', 1, NULL, 65, 'BGFCL', 'Asst. Manager', '+8801963822093', 'md.rayhan86@gmail.com#mailto:md.rayhan86@gmail.com#', NULL, 'Asst. Manager\r\nBangladesh Gas Field Company Limited(BGFCL)\r\nBrahmanbaria Sadar\r\nBrahmanbaria', NULL, NULL, 'Rayhan .PNG;Rayhan Habib.jpg', NULL, NULL, NULL, NULL),
(434, 'G25B1995M', NULL, NULL, '2023-02-16', 'G25B1995M03', 1, 25, '44', 1, 48, 'S.M. Mahbub', 'Alam', NULL, '1', 2, NULL, 49, 'Bangladesh Embassey, Belgium', '1st Secretary', '+32489468859', 'alam.smmahbub@gmail.com#mailto:alam.smmahbub@gmail.com#', NULL, 'Belgium', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'L29B2000M', NULL, NULL, '2023-02-16', 'L29B2000M10', 1, 29, '47', 3, 53, 'Mohammad Wahidur', 'Rahman', NULL, '1', 2, NULL, 54, 'Devon Energy, Oklahoma City, OK, USA', 'Senior Geochemist', '+1334-663-2218', 'wahidur.rahman@gmail.com#mailto:wahidur.rahman@gmail.com#', NULL, 'USA', NULL, NULL, 'Mohammad Wahidur rahman 29 batch.JPG', NULL, NULL, NULL, NULL),
(436, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M17', 1, 32, '51', 1, 56, 'Zubair', 'Ahmed', NULL, '1', 2, NULL, 57, 'Curtin University of Technology', 'PhD Candidate', NULL, NULL, NULL, 'Australia', NULL, NULL, 'Zubair Ahmed 32 batch.JPG', NULL, NULL, NULL, NULL),
(437, 'G32B2003M', NULL, NULL, '2023-02-16', 'G32B2003M18', 1, 32, '51', 1, 56, 'Md. Salim', 'Parvez', NULL, '1', 2, NULL, 57, 'NA', 'NA', '+0432214494', 'salim_parvez35@yahoo.com#mailto:salim_parvez35@yahoo.com#', NULL, 'Australia', NULL, NULL, 'Selim parvez 32 Batch.JPG', NULL, NULL, NULL, NULL),
(438, 'S00N0000M', NULL, NULL, '2023-02-16', 'S00N0000M06', 6, 0, '119', 5, 126, 'A.Z.M Taimur', 'Rahman', NULL, '1', 6, NULL, 126, 'Bangladesh Police', 'ADC DB', '+8801983494069', 'fuldhara1@gmail.com#mailto:fuldhara1@gmail.com#', NULL, 'ADC DB, Kotwali Zone\r\nDhaka Metropolitan Police\r\nMinto Road, DB Office\r\nDhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'G02B1971M', NULL, NULL, '2023-02-16', 'G02B1971M04', 1, 2, '20', 1, 24, 'Md. Lutfar Rahman', 'Chowdhury', NULL, '1', 2, NULL, 25, 'BAPEX', 'Retired', '+8801951106004', 'lutfarrchowdhury@gmail.com#mailto:lutfarrchowdhury@gmail.com#', NULL, 'Batch 02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'G02B1971M', NULL, NULL, '2023-02-16', 'G02B1971M05', 1, 2, '20', 1, 24, 'Jahangir', 'Kabir', NULL, '1', 2, NULL, 25, 'Bangladesh Gas Field Company Ltd (Petrobangla)', 'MD (Retired)', '+8801737249985', 'jahangirkabir51@gmail.com#mailto:jahangirkabir51@gmail.com#', NULL, 'Batch 02', NULL, NULL, 'Jahangir Kabir batch 2.jpg', NULL, NULL, NULL, NULL),
(441, 'G00M1961M', NULL, NULL, '2023-02-16', 'G00M1961M02', 2, 0, '12', 1, 13, 'Mohammad Abdul', 'Ghani', NULL, '1', 2, NULL, 13, 'Self Employed', 'Research Geologist', '+88029897988', 'dr.mohammadghani@yahoo.com#mailto:dr.mohammadghani@yahoo.com#', NULL, NULL, NULL, NULL, 'M Abdul Ghani M1961.jpg', NULL, NULL, NULL, NULL),
(442, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B1992M13', 1, 22, '41', 1, 45, 'Md. Motaher', 'Hossain', NULL, '1', 2, NULL, 46, 'Ministry of Disaster Management', 'Deputy Secretary', '+8801779212099', 'motaher6679@gmail.com#mailto:motaher6679@gmail.com#', NULL, 'Ministry of Disaster Management', NULL, NULL, 'Motahar Hossain 22 Batch.jpg', NULL, NULL, NULL, NULL),
(443, 'G29B2000M', NULL, NULL, '2023-02-16', 'G29B2000M11', 1, 29, '48', 1, 53, 'Mohammad Shahadat', 'Hossain', NULL, '1', 2, NULL, 54, 'Curtin University', 'PhD Candidate', NULL, 'shahadat_mh@yahoo.com#mailto:shahadat_mh@yahoo.com#', NULL, 'Australia', NULL, NULL, 'M Shahadat Hossain 29 batch.JPG', NULL, NULL, NULL, NULL),
(444, 'L02B1971M', NULL, NULL, '2023-02-16', 'L02B1971M05', 1, 2, '20', 3, 24, 'Shamsul', 'Bashir', NULL, '1', 2, NULL, 25, 'Shell E&P', 'Retired', '01776475920', 'shamsbashir@yahoo.com#mailto:shamsbashir@yahoo.com#', NULL, '1410 Capstan drive \r\nAllen Texas 75013', 'us no- 14694418072', NULL, 'Shamsul Bashir 2nd batch.jpg', NULL, NULL, NULL, NULL),
(445, 'G09B1978M', NULL, NULL, '2023-02-16', 'G09B1978M03', 1, 9, '27', 1, 31, 'Syed Ali', 'Resan', NULL, '1', 2, NULL, 32, 'BUPA Australia', 'Web Development Manager', '+61409079734', 'syedresan@gmail.com#mailto:syedresan@gmail.com#', NULL, 'Australia', NULL, NULL, 'Syed Ali Resan.jpg', NULL, NULL, NULL, NULL),
(446, 'G35B2006M', NULL, NULL, '2023-02-16', 'G35B2006M15', 1, 35, '54', 1, 59, 'M. Rajib Hassan', 'Mozumder', NULL, '1', 2, NULL, 60, 'Columbia University', 'PhD Candidate', '+19174807414', 'mhm2160@columbia.edu#mailto:mhm2160@columbia.edu#', NULL, 'USA', NULL, 'DUGAA_RM.pdf', 'Rajib H Mozumder 35th.JPG', NULL, NULL, NULL, NULL),
(447, 'G35B2006F', NULL, NULL, '2023-02-16', 'G35B2006F04', 1, 35, '54', 1, 59, 'Nadia Binte', 'Jamil', NULL, '2', 2, NULL, 60, 'Montclair State University, USA', 'PhD Candidate', '+16463389947', 'nb.jamil@yahoo.com#mailto:nb.jamil@yahoo.com#', NULL, 'USA', NULL, 'DUGAA_Nadia-final.pdf', 'Nadia 35th.JPG', NULL, NULL, NULL, NULL),
(448, 'G37B2008M', NULL, NULL, '2023-02-16', 'G37B2008M08', 1, 37, '56', 1, 61, 'Nasim', 'Ferdous', NULL, '1', 2, NULL, 62, 'EGS', 'Coordinator and Geologist', '+8801719519911', 'ferdous.nasim1@gmail.com#mailto:ferdous.nasim1@gmail.com#', NULL, '357/A/14 (1st floor), Modhubag, Moghbazar, Dhaka', NULL, NULL, 'Nasim 37th.JPG', NULL, NULL, NULL, NULL),
(449, 'G23B1993M', NULL, NULL, '2023-02-16', 'G23B1993M10', 1, 23, '42', 1, 46, 'Jowaher', 'Raza', NULL, '1', 2, NULL, 47, 'Bangladesh University of Professionals', NULL, '+8801752934348', 'jowaher.raza@gmail.com#mailto:jowaher.raza@gmail.com#', NULL, 'House 5, Road 3, Sector 4, Uttara', NULL, NULL, 'Zawaher Raza.jpg', NULL, NULL, NULL, NULL),
(450, 'G05B1974M', NULL, NULL, '2023-02-16', 'G05B1974M03', 1, 5, '23', 1, 27, 'AM Manowar', 'Ahmed', NULL, '1', 2, NULL, 28, 'Freelancer', 'Geologist', '+8801708132771', 'manowarahmed52@gmail.com#mailto:manowarahmed52@gmail.com#', NULL, 'Batch 05', NULL, NULL, 'Manowar Ahmed 5 Batch.jpg', NULL, NULL, NULL, NULL),
(451, 'L34B2005F', NULL, NULL, '2023-02-16', 'L34B2005F07', 1, 34, '53', 3, 58, 'Dipti', 'Yesmin', NULL, '2', 2, NULL, 59, 'Agrani Bank Ltd', 'Principal Officer', '01730355912', 'diptiyeasmin@gmail.com#mailto:diptiyeasmin@gmail.com#', NULL, 'Dipti Yeasmin, Principal Officer, Agrani Bank LTD, Wasa Corp. Br.,Wasa Bhaban, Kawran Bazar, Dhaka.', 'No form received', NULL, 'Dipti Yeasmin 34.jpg', NULL, NULL, NULL, NULL),
(452, 'L11B1981M', NULL, NULL, '2023-02-16', 'L11B1981M10', 1, 11, '30', 3, 34, 'Arif Mohiuddin', 'Sikder', NULL, '1', 2, NULL, 35, 'Virginia Commonwealth University', 'Assistant Professor', '+18047870118', 'amsikder@gmail.com#mailto:amsikder@gmail.com#', '11425 Brokton Place\r\nGlen Allen\r\nVirginia, VA23059, USA', '5050 Maben Hill lane, Glen Allen, Virginai 23059, USA', NULL, NULL, 'Arif Sikder.jpg', NULL, NULL, NULL, NULL),
(453, 'G17B1987M', NULL, NULL, '2023-02-16', 'G17B1987M08', 1, 17, '36', 1, 40, 'Ratan Kumar', 'Saha', NULL, '1', 2, NULL, 42, 'Authentica', 'Senior Advanced Level Math Teacher', '+8801715370188', NULL, 'Vill: Daspara\r\nPO+PS: Bauphal\r\nDis: Patuakhali', 'Block E, House#5/7\r\nLalmatia, Dhaka', 'paid by Prof. Imam in cheque', NULL, 'Ratan K Saha.jpg', NULL, NULL, NULL, NULL),
(454, 'G16B1986M', NULL, NULL, '2023-02-16', 'G16B1986M07', 1, 16, '35', 1, 39, 'Md. Ziaul Islam', 'Munna', NULL, '1', 2, NULL, 40, 'BIWTA', 'Director', '+8801775555599', 'mziaislam1@yahoo.com#mailto:mziaislam1@yahoo.com#', 'H-3, Rd-7/A\r\nWest Dhanmondi, Zigatala\r\nDhaka-1209\r\nBangladesh', 'H-3, Rd-7/A\r\nWest Dhanmondi, Zigatala\r\nDhaka-1209\r\nBangladesh', 'cash', NULL, 'Ziauddin Munna.jpg', NULL, NULL, NULL, NULL),
(455, 'G41B2012F', NULL, NULL, '2023-02-16', 'G41B2012F04', 1, 41, '60', 1, 65, 'Maliha Nushin', 'Ahmed', NULL, '2', 2, NULL, 66, 'Indiana University', 'PhD Student', '+13173322392', 'malihanahmed@gmail.com#mailto:malihanahmed@gmail.com#', 'House#404, Rd#5\r\nBaitul Aman Housing Society\r\nMohammadpur, Dhaka 1207', '742 Blake Street, Apt F\r\nIndianapolis, IN46202\r\nIndiana, USA', NULL, NULL, 'Maliha.jpg', NULL, NULL, NULL, NULL),
(456, 'G20B1990M', NULL, NULL, '2023-02-16', 'G20B1990M17', 1, 20, '39', 1, 43, 'Md. Abdul', 'Khaleque', NULL, '1', 2, NULL, 44, 'Weatherford International', 'Petroleum Geologist', '+8801711129155', 'ilokhaleque@yahoo.com#mailto:ilokhaleque@yahoo.com#', 'Vill- Chakla\r\nPO- Punduria\r\nPS- Bera, Pabna', 'House#71, Road#12, Sector#13, Uttara, Dhaka-1230.', NULL, NULL, 'Abdul Khaleq 20.jpg', NULL, NULL, NULL, NULL),
(457, 'G27B1997M', NULL, NULL, '2023-02-16', 'G27B1997M09', 1, 27, '46', 1, 50, 'Mohammed', 'Fariduzzaman', NULL, '1', 2, NULL, 51, 'Biman Bangladesh Airlines', 'Ground Service Officer', '+8801711226547', 'farid36887@yahoo.com#mailto:farid36887@yahoo.com#', 'Bagabaria, Ullapara, Naogaon', 'House 21, Road 7,\r\nSector 13, Uttara Model Town,\r\nDhaka-1230', NULL, NULL, 'Fariduzzaman_27.jpg', NULL, NULL, NULL, NULL),
(458, 'G10B1980M', NULL, NULL, '2023-02-16', 'G10B1980M03', 1, 10, '29', 1, 33, 'Imtiaz', 'Ahmed', NULL, '1', 2, NULL, 34, 'Bangladesh Embassy, Berlin', 'Ambassador', NULL, 'ahmedimtiaz1959@gmail.com#mailto:ahmedimtiaz1959@gmail.com#', 'Vill: Kochgram\r\nPO: Chouhali,\r\nDis: Sirajganj', 'Kaiserine Augusta Allee,\r\n10553 Berlin, Germany', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'G10B1980M', NULL, NULL, '2023-02-16', 'G10B1980M04', 1, 10, '29', 1, 33, 'Md. Enamul Haque', 'Khandker', NULL, '1', 2, NULL, 34, 'Self Employed', 'Tax Consultant', '+15148945158', 'enamul@live.ca#mailto:enamul@live.ca#', '208/1 West Dhanmondi,\r\nRoad # 10/A, 2nd Floor\r\nWest Dhanmondi, Dhaka-1209', '1437, RUE Jacques-Hertel,\r\nMontreal, Quebec, Canada', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'G10B1980M', NULL, NULL, '2023-02-16', 'G10B1980M05', 1, 10, '29', 1, 33, 'Wazed', 'Ali', NULL, '1', 2, NULL, 34, 'Unisys', 'Field Engineer', '0488411196', 'wazed.ali1@defence.gov.au#mailto:wazed.ali1@defence.gov.au#', 'Bakultala, Jamalpur', '4A Swinson Rd\r\nBlacktown NSW 2148, Australia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'L01B1970M', NULL, NULL, '2023-02-16', 'L01B1970M05', 1, 1, '20', 3, 23, 'Ahad N', 'Chowdhury', NULL, '1', 2, NULL, 24, 'KY Dept. for Env. Protection', 'Professional Geologist', NULL, 'ahadchowky@gmail.com#mailto:ahadchowky@gmail.com#', '8804 High Point Circle\r\nLouisville, KY, 40299, USA', '48 Circular Rd, Dhanmondi\r\nDhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'L17B1987M', NULL, NULL, '2023-02-16', 'L17B1987M09', 1, 17, '36', 3, 40, 'Md. Azizul', 'Islam', NULL, '1', 2, NULL, 41, 'Department of Narcotics Control, Government of Bangladesh', 'Circle Incharge', '+8801711222710', 'mdazizulislam311@gmail.com#mailto:mdazizulislam311@gmail.com#', 'Vill- Narilla\r\nP.S. Dhanbari,\r\nDis- Tangail', '32, Kalabagan, 1st Lane, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'G30B2001F', NULL, NULL, '2023-02-16', 'G30B2001F05', 1, 30, '49', 1, 54, 'Afsana', 'Bilkis', NULL, '2', 2, NULL, 54, 'Ministry of Water Resources, Government of Bangladesh', 'Deputy Secretary', NULL, NULL, NULL, 'Ministry of Water Resources\r\n4th floor, Building N0.6 \r\n\rBangladesh Secretariate\r\nDhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'G21B1991M', NULL, NULL, '2023-02-16', 'G21B1991M13', 1, 21, '49', 1, 44, 'Md. Hashibul', 'Ahsan', NULL, '1', 2, NULL, 45, NULL, NULL, NULL, NULL, NULL, 'House # 56 road # 27 (old) Dhanmondi R/A Dhaka flat # 3c2', NULL, NULL, 'Hassibul Ahsan 21 Batch.jpg', NULL, NULL, NULL, NULL),
(465, 'G19B1989M', NULL, NULL, '2023-02-16', 'G19B1989M03', 1, 19, '38', 1, 42, 'Anwar Hossain', 'Bhuiyan', NULL, '1', 2, NULL, 43, 'Department of Geology, University of Dhaka', 'Associate Professor', '+8801792626708', 'ahb@du.ac.bd#mailto:ahb@du.ac.bd#', NULL, 'Department of Geology\r\nUniversity of Dhaka\r\nCurzon Hall Campus\r\nDhaka-1000', NULL, NULL, 'glg_ahb.png', NULL, NULL, NULL, NULL),
(466, 'G36B2007M', NULL, NULL, '2023-02-16', 'G36B2007M09', 1, 36, '55', 1, 60, 'Ali', 'Hossain', NULL, '1', 2, NULL, 61, 'Bangladesh House Building Finance Corporation', 'Principal Officer', '+8801916574900', 'aliorthy@gmail.com#mailto:aliorthy@gmail.com#', 'Vill-Naogaon Kait\r\nPO- Rowali\r\nPS- Dhamrai\r\nDhaka', 'Bangladesh House Building Finance Corporation\r\n22,Purana Paltan\r\nDhaka-1000.', NULL, NULL, 'IMG_20190613_161926.jpg', NULL, NULL, NULL, NULL),
(467, 'G18B1988M', NULL, NULL, '2023-02-16', 'G18B1988M07', 1, 18, '37', 1, 41, 'Mollah Mizanur', 'Rahman', NULL, '1', 2, NULL, 42, 'Ministry of Power, Energy and Mineral Resources, Energy and Mineral Resources Division', 'Deputy Secretary', '+8801717622173', 'mollahmizanurrahman@gmail.com#mailto:mollahmizanurrahman@gmail.com#', 'Vill Noahata\r\nPO- Radhanagar Gram\r\nPS- Sreepur\r\nDis- Magura', '1197, East Shewrapara\r\nFlat-3A\r\nDhaka', NULL, NULL, 'Mollah Mizanur Rahman.jpg', NULL, NULL, NULL, NULL),
(468, 'G43B2014M', NULL, NULL, '2023-02-16', 'G43B2014M02', 1, 43, '62', 1, 67, 'Mahmudul', 'Hasan', NULL, '1', 2, NULL, 68, 'Department of Oceanography, University of Dhaka', 'Lecturer', '+8801515241942', 'mahmud.hasan@du.ac.bd#mailto:mahmud.hasan@du.ac.bd#', 'Village-Ramnagur, Post office-Syedpur, Upazila- Jamalpur Sadar, District-Jamalpur', 'Department of Oceanography, University of Dhaka, Dhaka 1000, Bangladesh', NULL, NULL, 'ocn_mahmud.hasan.jpg', NULL, NULL, NULL, NULL),
(469, 'G36B2007F', NULL, NULL, '2023-02-16', 'G36B2007F02', 1, 36, '55', 1, 60, 'Nazhat Shirin', 'Rashid', NULL, '2', 2, NULL, 62, 'Chevron Bangladesh', 'Earth Scientist', '01673159756', 'nazhatbd@gmail.com#mailto:nazhatbd@gmail.com#', NULL, '94 Gulshan Avenue , Gulshan 1 . Dhaka', NULL, NULL, 'L-77350 copy.JPG', NULL, NULL, NULL, NULL),
(470, 'L38B2009M', NULL, NULL, '2023-02-16', 'L38B2009M05', 1, 38, '57', 3, 62, 'Ashikur', 'Rahman', NULL, '1', 2, NULL, 63, 'Chevron Bangladesh', 'Earth Scientist', '01672219345', 'geologist.ashik@gmail.com#mailto:geologist.ashik@gmail.com#', NULL, '53, Arjatpara, Mahakhali, Dhaka-1215', NULL, NULL, 'ARBD_photo.jpg', NULL, NULL, NULL, NULL),
(471, 'G22B1992M', NULL, NULL, '2023-02-16', 'G22B199201', 1, 22, '41', 1, 45, 'MD. Zillur', 'Rahman', NULL, '1', 2, NULL, 46, 'Department of Geology, University of Dhaka', 'Associate Professor', '01302691055', 'zillurdhaka@yahoo.com#mailto:zillurdhaka@yahoo.com#', 'Apartment# B-5, House #4, Avenue#1, Block#B,Section#2, Mirpur, Dhaka 1216', 'Department of Geology, University of Dhaka, Dhaka 1000, Bangladesh', NULL, NULL, 'glg_zillur.jpg', NULL, NULL, NULL, NULL),
(472, 'G35B2006F', NULL, NULL, '2023-02-16', 'G35B2006F04', 1, 35, '54', 1, 59, 'Nashrur', 'Rudaba', NULL, '2', 2, NULL, 60, NULL, NULL, NULL, 'nrudaba@gmail.com#mailto:nrudaba@gmail.com#', NULL, 'House#15, Road#01, Sector#13, Uttara, Dhaka 1230', NULL, NULL, 'Rudaba(35batch)_PP.jpg', NULL, NULL, NULL, NULL),
(473, 'G09B1978M', NULL, NULL, '2023-02-16', 'G09B1978M04', 1, 9, '30', 1, 31, 'MD. Sayedul', 'Haque', NULL, '1', 2, NULL, 32, 'SBAC Banck', 'Senior Executive Vice President, Head of Internal Control and Compliance', '01787693890', 'shaquedhaka@yahoo.com#mailto:shaquedhaka@yahoo.com#', NULL, NULL, NULL, NULL, 'Mr. Md. Sayedul Haque.jpg', NULL, NULL, NULL, NULL),
(474, 'L01B1970M', NULL, NULL, '2023-02-16', '01B1970M05', 1, 1, '19', 3, 23, 'Dr. Humayun', 'Ashraf', NULL, '1', 2, NULL, 23, NULL, NULL, '+8801911167967', NULL, 'Village: Manpasha, P.O.: Manpasha, P.S: Jhalokathi, District: Jhalokathi', 'Flat: B1, House: 13, Road: 09, Block C, Section: 6, Mirpur', NULL, NULL, '2.jpg', NULL, NULL, NULL, NULL),
(475, 'G11B1981M', NULL, NULL, '2023-02-16', 'G11B1981M12', 1, 11, '30', 1, 34, 'Md. Abdul', 'Mazid', NULL, '1', 2, NULL, 35, 'BKB, Divisional Audit Office, Dhaka', 'Assistant General Manager', '01715213256', 'mazida1958@gmail.com#mailto:mazida1958@gmail.com#', 'Village and Post office: Nalta\r\nDistrict: Satkhira', '15, Green corner, Green road, Dhaka 1205', NULL, NULL, '1 (1).jpg', NULL, NULL, NULL, NULL),
(476, 'G42B2013M', NULL, NULL, '2023-02-16', '42B201301', 1, 42, '61', 1, 66, 'Md.  Al', 'Razi', NULL, '1', 2, NULL, 67, 'Geological Survey of Bangladesh', 'Assistant Director (Geology)', '01971334158', 'alrazi1009.geology@gmail.com#mailto:alrazi1009.geology@gmail.com#', '71, Mujib Sarak, Sirajganj', '153, Pioneer Road, Segunbagicha, Dhaka-1000', NULL, NULL, '64963748_425321304717591_8908275381841166336_n.jpg', NULL, NULL, NULL, NULL),
(477, 'G41B2012F', NULL, NULL, '2023-02-16', 'G41B2012F05', 1, 41, '60', 1, 65, 'Saima', 'Homayra', NULL, '2', 1, NULL, 67, 'Geological Survey of Bangladesh', 'Assistant Director (Geology)', '01796656996', 'homyrasaima@gmail.com#mailto:homyrasaima@gmail.com#', '1st floor, 397/1, North Shahjahanpur, Dhaka-1207', '1st floor, 397/1, North Shahjahanpur, Dhaka-1207', NULL, NULL, '65179332_362043261165287_7526486116686364672_n.jpg', NULL, NULL, NULL, NULL),
(478, 'G37B2008F', NULL, NULL, '2023-02-16', 'G37B2008F05', 1, 37, '56', 1, 61, 'Nazmun', 'Nahar', NULL, '2', 2, NULL, 62, NULL, NULL, '01941592882', 'nazzme17@gmail.com#mailto:nazzme17@gmail.com#', 'Plot No-24, Shah Maghdum Avenue, Sector-11, Uttara, Dhaka', '31/1, Block B, Babor road, Mohammadpur, Dhaka', NULL, NULL, '65656285_339905363343381_2883736072980791296_n.jpg', NULL, NULL, NULL, NULL),
(479, 'G41B2012M', NULL, NULL, '2023-02-16', 'G41B2012M13', 1, 41, '60', 1, 65, 'Md. Ahsan', 'Habib', NULL, '1', 2, NULL, 66, 'Geological Survey of Bangladesh', 'Assistant Director (Geology)', '01674966986', 'habibahsan1991@gmail.com#mailto:habibahsan1991@gmail.com#', 'Vill. South Bhandaria, Post. Office- Bhandaria, Thana- Bhandaria, District- Pirojpur', '153, Pioneer road, Segunbagicha, Dhaka-1000', NULL, NULL, '65385706_1291635240994917_5341284400900341760_n.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `member_infos` (`id`, `BatchID`, `SL`, `unique_count_id`, `date`, `member_id`, `entery_degree`, `batch`, `admission_session`, `alumni_category`, `entery_degree_completion_year`, `first_name`, `last_name`, `user_name`, `gender_id`, `exit_degree`, `bsc_year_passing`, `exit_year`, `current_affiliation`, `designation`, `contact_no`, `email`, `parmanent_address`, `current_address`, `note`, `scanced_form`, `member_image`, `entry_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(480, 'G25B1995M', NULL, NULL, '2023-02-16', 'G25B1995M03', 1, 25, '43', 1, 48, 'Md. Lutfor', 'Rahman', NULL, '1', 2, NULL, 49, 'Dhaka Power Distribution Company Limited', 'Deputy Manager', '01715051471', 'lutforrahman@dpdc.org.bd#mailto:lutforrahman@dpdc.org.bd#', 'Village-jigogori, Post Office- Tomaltola, P.S. - Bagatipara, District-Natore', '8/5-8.6, Lalmatia, Road-02, Block-A, Flat-D1, Dhaka-1207', NULL, NULL, '64998825_2269831236463725_9701296034545664_n.jpg', NULL, NULL, NULL, NULL),
(481, 'G37B2008F', NULL, NULL, '2023-02-16', 'G37B2008F06', 1, 37, '56', 1, 61, 'Khaleda', 'Afrin', NULL, '2', 2, NULL, 62, 'Geological Survey of Bangladesh', 'Assistant Director', '01963773882', 'kafrin25@gmail.com#mailto:kafrin25@gmail.com#', 'House-2, Road-2, Block-A, Dhakauddyan, Mohammadpur, Dhaka-1207', 'House-2, Road-2, Block-A, Dhakauddyan, Mohammadpur, Dhaka-1207', NULL, NULL, '64925272_2058514581121687_5366943596383567872_n.jpg', NULL, NULL, NULL, NULL),
(482, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M11', 1, 40, '59', 1, 64, 'Mohammad Khairul', 'Islam', NULL, '1', 2, NULL, 65, 'Geological Survey of Bangladesh', 'Assitant Director (Geology)', '01683853218', 'khairul.du2009@gmail.com#mailto:khairul.du2009@gmail.com#', 'Village-Beparipara, P.O+P.S.- Haluaghat, District- Mymensingh', '153,Pioneer road, Segunbagicha, Dhaka-1000', NULL, NULL, '65511023_504433120296614_7678444121203146752_n.jpg', NULL, NULL, NULL, NULL),
(483, 'G40B2011M', NULL, NULL, '2023-02-16', 'G40B2011M12', 1, 40, '59', 1, 64, 'MD. Harun-Or-Rashid', NULL, NULL, '1', 2, NULL, 65, 'Geological Survey of Bangladesh', 'Assistant Director', '01717-053903', 'hiru.rashid@gmail.com#mailto:hiru.rashid@gmail.com#', 'Village-Dharmeshwar, Post office- Mirbagh, UPO- Kawnia, District-Rangpur', '5/16, Baily square officer\'s quarter, Dhaka', NULL, NULL, '59752625_361704057884763_8858583400500428800_n.jpg', NULL, NULL, NULL, NULL),
(484, 'G24B1994M', NULL, NULL, '2023-02-16', '24B1994M17', 1, 24, '43', 1, 47, 'Wahid', 'Mia', NULL, '1', 2, NULL, 48, 'BAPEX', 'Deputy General Manager', '01717077731', 'wahidmiaarun@gmail.com#mailto:wahidmiaarun@gmail.com#', 'Village-Chandiber (Mollah bari), P.O+P.S.- Bhairab, Upazila-Bhairab, District-Kishoreganj', '4, Karwan Bazar, Bapex Bhaban, Level-2, Bapex, Tejgaon, Dhaka, Bangladesh', NULL, NULL, '65143777_323505518585009_6015623021178388480_n.jpg', NULL, NULL, NULL, NULL),
(485, 'L35B2006M', NULL, NULL, '2023-02-16', 'L35B2006M16', 1, 35, '54', 3, 59, 'MOHAMMAD JAHID', 'ALAM', NULL, '1', 2, NULL, 62, 'JICA', 'Hydrogeologist', '01819447219', 'jahid2106.ja@gmail.com#mailto:jahid2106.ja@gmail.com#', 'H-126, Nurul Ahad Jamme Mosque Road,Ward-50, Middle Azampur, Dewan para, Dakshinkhan, Dhaka-1230', 'H-126, Nurul Ahad Jamme Mosque Road,Ward-50, Middle Azampur, Dewan para, Dakshinkhan, Dhaka-1230', NULL, NULL, 'Picture1.png', NULL, NULL, NULL, NULL),
(486, 'L11B1981M', NULL, NULL, '2023-02-16', 'L11B1981M12', 1, 11, '30', 3, 34, 'Abid Nowaz Khan', 'Lodhi', NULL, '1', 2, NULL, 35, 'Freelancer', 'Consultant Geologist', '01713455590', 'abid.lodhi77@gmail.com#mailto:abid.lodhi77@gmail.com#', 'H-101, R-3, Block-C\r\nBasundhara RA\r\nDhaka 1229', '12-19 Cromwell Hills Drive\r\nCromwell, CT-06416, USA', NULL, 'Lodhi_Registration Form DUGAA_Final_Signed.pdf', 'Lodhi PP.jpg', NULL, NULL, NULL, NULL),
(487, NULL, NULL, 1, '2023-02-19', 'G12B1957M1', 4, 12, '17', 1, 1957, 'farhad', 'ali', NULL, NULL, 4, NULL, 1958, '', '', '234234', 'farhadali0507@gmail.com', '', '', '', NULL, NULL, 46, NULL, '2023-02-18 22:53:49', '2023-02-18 22:53:49'),
(488, NULL, NULL, 1, '2023-02-19', 'A23B1941M1', 1, 23, '17', 2, 1941, 'far', 'a', NULL, NULL, 1, NULL, 1942, '', '', '', 'farhadali0507@gmail.com', '', '', '', NULL, NULL, 46, NULL, '2023-02-18 23:09:34', '2023-02-18 23:09:34'),
(489, NULL, NULL, 1, '2023-02-19', 'H99B1952M1', 4, 99, '2', 4, 1952, 'Farhad', 'ali', NULL, '2', 2, '2070', 1954, '', '', '', 'farhadali0507@gmail.com', '', '', '', NULL, NULL, 46, NULL, '2023-02-19 01:16:23', '2023-02-19 01:16:23'),
(490, NULL, NULL, 1, '2023-02-19', 'A15B1954M1', 4, 15, '15', 2, 1954, 'Farhad', 'ali', NULL, '1', 4, '1985', 1955, '', '', '', 'farhadali0507@gmail.com', '', '', '', NULL, NULL, 46, NULL, '2023-02-19 01:19:25', '2023-02-19 01:19:25');

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
(171, '2023_02_13_071358_create_committee_histories_table', 61),
(172, '2023_02_15_100303_create_document_downloads_table', 62),
(173, '2023_02_19_084915_create_event_manages_table', 63);

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
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 61),
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

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('farhadali0507@gmail.com', '$2y$10$BJfRI/xvDI27Hz1ZQY1yNepT6t33At7TY1qE.KyRyflJJDugM3Ate', '2023-02-18 23:07:19');

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
(1, 'Cash', NULL, NULL, NULL),
(2, 'Check', NULL, NULL, NULL),
(3, 'Pay-Order', NULL, NULL, NULL),
(4, 'Bkash', NULL, NULL, NULL),
(5, 'others(specify in Note)', NULL, NULL, NULL);

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
(311, 'committee-delete', 'web', 'Committee', NULL, NULL),
(312, 'social_media-list', 'web', 'Social Media', NULL, NULL),
(313, 'social_media-create', 'web', 'Social Media', NULL, NULL),
(314, 'social_media-edit', 'web', 'Social Media', NULL, NULL),
(315, 'social_media-delete', 'web', 'Social Media', NULL, NULL),
(316, 'document-upload-list', 'web', 'Downloadable Document', NULL, NULL),
(317, 'document-upload-create', 'web', 'Downloadable Document', NULL, NULL),
(318, 'document-upload-edit', 'web', 'Downloadable Document', NULL, NULL),
(319, 'document-upload-delete', 'web', 'Downloadable Document', NULL, NULL),
(320, 'alumni-section', 'web', 'Alumni Section', NULL, NULL),
(321, 'event-management-list', 'web', 'Event Management', NULL, NULL),
(322, 'event-management-create', 'web', 'Event Management', NULL, NULL),
(323, 'event-management-edit', 'web', 'Event Management', NULL, NULL),
(324, 'event-management-delete', 'web', 'Event Management', NULL, NULL),
(325, 'own-profile-update', 'web', 'Non Admin Module', NULL, NULL),
(326, 'master-menu', 'web', 'Admin Setting', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_possition` tinyint(4) DEFAULT NULL,
  `post_subtitle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_hide_show` tinyint(4) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `_vedio_link_show` int(11) NOT NULL,
  `_vedio_link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'col-md-6',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `menu_id`, `date`, `time`, `post_title`, `post_slug`, `image_possition`, `post_subtitle`, `details`, `author`, `image_hide_show`, `position`, `status`, `_vedio_link_show`, `_vedio_link`, `column_size`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 9, '2023-02-14', '10:27:46', 'Social Responsibility of Dhaka University Alumni Association', NULL, 2, 'Sub Title of  Social Responsibility', '<p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">commemoration the DUAA objectives one of which says,” to carry out CSR activities and to undertake, support and carry out welfare and development activities of Dhaka University and DUAA”, It has been taking up various programs. <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">We arranged about 700 scholarships every year covering all 56 departments and 16 institutes </strong>through collecting donations from individuals, alumni and organizations from home and abroad. Besides, DUAA takes up various projects, publishes books and souvenirs, and organizes seminars, programs and job counselling.<strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">“Dhaka University is my pride; it is time now to re-pay our debts”</strong> (Dhaka Bishwabidyalaya amar ahangker; Ekhoni samoy dai mochaner) — is the current motto of DUAA.</p><p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">DUAA now ventures to engage in social work in collaboration with other socio-economic organizations. It collects funds from various banks and financial institutions, business enterprises, generous individuals and the like to arrange scholarships, computer training to students and children of staff members of the university, organize various socio-cultural programs, seminars, job counseling etc. DUAA, in the mean time, distributed 200 bi-cycles for the students in a bid to encourage cycling aimed at maintaining a pollution free society and helping physical fitness in collaboration with Green Belt Trust, a student based NGO. Such program will continue. Another organization named ‘Ethics Club’ in collaboration with DUAA organize seminars aimed at developing the minds of the students and other people in order to build a society free of corruption. In the mean time we chalked out a bi-annual program of seminars from July to December 2011 in various faculties and departments. In collaboration with Green Belt Trust, Fire Service & Civil Defence and Development Initiative DUAA formed a Disaster Management Force (DMF) with 500 volunteers selected from 10 Halls of students of Dhaka University who will be trained by Fire Service & Civil Defence in a two year program funded by Development Initiative. In the mean time, DMF was launched through a ceremony on 26 May 2011 with 50 volunteers recruited from two halls trained for a short period who took part in a demonstration on disaster rescue operation led by Fire Service and Civil Defence. Vice Chancellor of Dhaka University was the Chief Guest and DG of Fire Service & Civil Defence, the special guest.</p><p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Development of research activities of the University has been taken up to be implemented in near future along with the improvement of the Library. In the mean time a project was taken up to erect a number of sophisticated and decorative entry gates of the University. The first one is being processed sponsored by the NCC Bank at Shahbag point. Gradually other will be designed and erected.</p>', 'Amin', 1, 1, 1, 0, NULL, '4', 46, NULL, '2023-02-11 22:25:58', '2023-02-14 04:27:46'),
(2, 2, '2023-02-12', '04:32:21', 'Journey of DUAA', NULL, 0, 'Sub title of journey of duaa', '<p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">commemoration the DUAA objectives one of which says,” to carry out CSR activities and to undertake, support and carry out welfare and development activities of Dhaka University and DUAA”, It has been taking up various programs. <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">We arranged about 700 scholarships every year covering all 56 departments and 16 institutes </strong>through collecting donations from individuals, alumni and organizations from home and abroad. Besides, DUAA takes up various projects, publishes books and souvenirs, and organizes seminars, programs and job counselling.<strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">“Dhaka University is my pride; it is time now to re-pay our debts”</strong> (Dhaka Bishwabidyalaya amar ahangker; Ekhoni samoy dai mochaner) — is the current motto of DUAA.</p><p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">DUAA now ventures to engage in social work in collaboration with other socio-economic organizations. It collects funds from various banks and financial institutions, business enterprises, generous individuals and the like to arrange scholarships, computer training to students and children of staff members of the university, organize various socio-cultural programs, seminars, job counseling etc. DUAA, in the mean time, distributed 200 bi-cycles for the students in a bid to encourage cycling aimed at maintaining a pollution free society and helping physical fitness in collaboration with Green Belt Trust, a student based NGO. Such program will continue. Another organization named ‘Ethics Club’ in collaboration with DUAA organize seminars aimed at developing the minds of the students and other people in order to build a society free of corruption. In the mean time we chalked out a bi-annual program of seminars from July to December 2011 in various faculties and departments. In collaboration with Green Belt Trust, Fire Service & Civil Defence and Development Initiative DUAA formed a Disaster Management Force (DMF) with 500 volunteers selected from 10 Halls of students of Dhaka University who will be trained by Fire Service & Civil Defence in a two year program funded by Development Initiative. In the mean time, DMF was launched through a ceremony on 26 May 2011 with 50 volunteers recruited from two halls trained for a short period who took part in a demonstration on disaster rescue operation led by Fire Service and Civil Defence. Vice Chancellor of Dhaka University was the Chief Guest and DG of Fire Service & Civil Defence, the special guest.</p><p class=\"m_bottom_15 fw_light fs_large\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Development of research activities of the University has been taken up to be implemented in near future along with the improvement of the Library. In the mean time a project was taken up to erect a number of sophisticated and decorative entry gates of the University. The first one is being processed sponsored by the NCC Bank at Shahbag point. Gradually other will be designed and erected.</p>', 'Amin', 1, 1, 1, 0, NULL, '4', 46, NULL, '2023-02-11 22:26:32', '2023-02-11 22:32:21'),
(3, 10, '2023-02-15', '05:59:42', 'ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে শতবর্ষের মিলনমেলা অনুষ্ঠিত', 'dhaka-biswbidzalyer-gourbmy-stbrshpuurti-uplkshe-stbrsher-milnmela-onushthit', 1, 'অত্যন্ত আনন্দ উল্লাসে গত ১২ মার্চ ২০২২ উদ্যাপিত হলো ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন আয়োজিত ‘শতবর্ষের', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অত্যন্ত আনন্দ উল্লাসে গত ১২ মার্চ ২০২২ উদ্যাপিত হলো ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন আয়োজিত ‘শতবর্ষের মিলনমেলা’। ‘বাংলাদেশের পথযাত্রায় ঢাকা বিশ্ববিদ্যালয় অ্যালামনাই’ এই প্রতিপাদ্য নিয়ে প্রায় ১২,০০০ সম্মানিত সদস্যের উপস্থিতিতে ঢাকা বিশ্ববিদ্যালয় খেলার মাঠে অনুষ্ঠিত হয় ‘শতবর্ষের মিলনমেলা’।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানে প্রধান অতিথি হিসেবে উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ের প্রবীণতম শিক্ষার্থী মতিউল ইসলাম, বিশেষ অতিথি  শতবর্ষ উদ্যাপন কমিটির চেয়ারম্যান জনাব সৈয়দ মঞ্জুর এলাহী, ঢাকা বিশ্ববিদ্যালয়ের মাননীয়  প্রো-ভাইস চ্যান্সেলর (শিক্ষা) অধ্যাপক ড. এ. এস. এম. মাকসুদ কামাল,  প্রো-ভাইস চ্যান্সেলর (প্রশাসন) অধ্যাপক ড. মুহাম্মদ সামাদ, অনুষ্ঠানে সভাপতিত্ব করেন অ্যালামনাই অ্যাসোসিয়েশনের সম্মানিত সভাপতি এ. কে. আজাদ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">দিনব্যাপী অনুষ্ঠানের শুরুতেই জাতীয় পতাকা উত্তোলন ও বেলুন উড়ানোর মধ্য দিয়ে উদ্বোধনী অনুষ্ঠান অনুষ্ঠিত হয়। জাতীয় পতাকা উত্তোলন করেন প্রধান অতিথি ঢাকা বিশ্ববিদ্যালয়ের প্রবীণতম শিক্ষার্থী মো. মতিউল ইসলাম। ঢাকা বিশ্ববিদ্যালয়ের পতাকা উত্তোলন করেন বিশেষ অতিথি ঢাকা বিশ্ববিদ্যালয়ের প্রো-ভাইস চ্যান্সেলর (শিক্ষা) অধ্যাপক ড. এ. এস. এম. মাকসুদ কামাল, প্রো-ভাইস চ্যান্সেলর (প্রশাসন) অধ্যাপক ড. মুহাম্মদ সামাদ। ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের পতাকা উত্তোলন করেন অ্যালামনাই অ্যাসোসিয়েশন-এর সভাপতি জনাব এ. কে. আজাদ, সিনিয়র সহ-সভাপতি মোল্লা মোহাম্মাদ আবু কাওছার, মহাসচিব রঞ্জন কর্মকার, শতবর্ষ উদ্যাপন কমিটির চেয়ারম্যান জনাব সৈয়দ মঞ্জুর এলাহী, শতবর্ষ উদ্যাপন কমিটির আহ্বায়ক ও সহ-সভাপতি জনাব আনোয়ার-উল-আলম চৌধুরী পারভেজসহ ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের কার্যনির্বাহী কমিটির সদস্যবৃন্দ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">উদ্বোধনী মঞ্চে উপস্থিত সম্মানিত অতিথিবৃন্দ এবং উদ্বোধনী অনুষ্ঠানে উপস্থিত সকল সম্মানিত অ্যালামনাইগণ বেলুন উড়িয়ে আনন্দ উল্লাসের মধ্য দিয়ে উদ্বোধনী অনুষ্ঠানের মাধ্যমে একে-অপরকে বরণ করে নেন।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এরপর শত শিল্পীর লাইভ অর্কেস্ট্রা, সংগীত এবং নৃত্য পরিবেশনের মধ্য দিয়ে অনুষ্ঠান শুরু হয়। শতবর্ষ উপলক্ষে প্রকাশিত গ্রন্থসমূহের মোড়ক উম্মোচন ও ‘শিল্পীর রং তুলিতে ঢাকা বিশ্ববিদ্যালয়’ প্রদর্শনী উদ্বোধন করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">শতবর্ষের মিলনমেলায় ‘রং তুলিতে ঢাকা বিশ্ববিদ্যালয়’ শীর্ষক কর্মসূচিতে ১০০জন চিত্রশিল্পীর চিত্রকর্ম নিয়ে একটি প্রদর্শনীর ব্যবস্থা ছিল। এছাড়া শতবর্ষের স্মারকগ্রন্থ সহ অন্যান্য প্রকাশনাগুলো অ্যালামনাইদের মাঝে বিক্রয়ের ব্যবস্থা ছিলো। সম্মানিত অ্যালামনাইদের স্বাস্থ্য সুরক্ষার কথা বিবেচনায় নিয়ে একটি মেডিকেল ক্যাম্প করা হয়েছিল। যাতে কোনো অ্যালামনাই অসুস্থ হয়ে পড়লে তাৎক্ষণিক চিকিৎসা প্রদান করা সম্ভব হয়। এছাড়াও অংশগ্রহণকারী অ্যালামনাইদের সার্বক্ষণিক নিরাপত্তা, আপ্যায়ন ও পর্যাপ্ত সেনিটেশন-এর ব্যবস্থা রাখা হয়েছিল।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">শতবর্ষের মিলনমেলায় দিনব্যাপী অনুষ্ঠানের মধ্য দিয়ে সম্মানিত অ্যালামনাইগণ তাঁদের পুরনো দিনের স্মৃতি স্মরণ করেন এবং একে অপরকে তা সহভাগিতা করেন। শতবর্ষের মিলনমেলার মূল আকর্ষণ ছিলো জাকজমকপূর্ণ সাংস্কৃতিক অনুষ্ঠান।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">সাংস্কৃতিক অনুষ্ঠানের শুরুতে রবীন্দ্র, নজরুল ও হারানো দিনের গান পরিবেশন করেন অদিতি মহসীন, প্রিয়াংকা গোপ ও হৈমন্তী রক্ষিত। ৬০ ও ৭০ দশকের বাংলা চলচ্চিত্রের গান নিয়ে নৃত্য পরিবেশন করেন চাঁদনি, সিনথিয়া, মিম চৌধুরী ও তাঁদের দল। আধুনিক ও পুরানো দিনের গান পরিবেশনা করেন জনপ্রিয় শিল্পী সামিনা চৌধুরী ও সন্দীপন। প্রেমা ও তাঁর দলের অংশগ্রহণে পরিবেশন করা হয় আকর্ষণীয় রায়বেশি নৃত্য। এরপর সবথেকে বড় আকর্ষণ ছিল জনপ্রিয় ও জাতীয় পুরস্কারপ্রাপ্ত শিল্পী সাবিনা ইয়াসমিন-এর একক পরিবেশনা। বর্তমান প্রজন্মের শিল্পী নিশীতা বড়য়া-এর সংগীত পরিবেশনার মধ্য দিয়ে সাংস্কৃতিক অনুষ্ঠানের সমাপ্তি ঘোষণা করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">শতবর্ষে এসে শিক্ষার গুণগত মান ও পরিবেশ উন্নয়ন এবং গবেষণার পরিধি সম্প্রসারণ করে চতুর্থ শিল্প বিপ্লবের উপযোগী দক্ষ মানব সম্পদ তৈরির লক্ষ্য নিয়ে বর্তমান প্রশাসন একটি পূর্ণাঙ্গ মাস্টার প্ল্যান প্রণয়ন করেছেন।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">আমাদের পূর্বসূরি শ্রদ্ধেয় অ্যালামনাইদের নেতৃত্ব ও অংশগ্রহণে সৃষ্টি বাংলাদেশকে মুক্তিযুদ্ধের চেতনায় বঙ্গবন্ধুর আদর্শে অসাম্প্রদায়িক, গণতান্ত্রিক, মানবিক ও কল্যাণকামী উন্নত সম্বৃদ্ধ রাষ্ট্র প্রতিষ্ঠায় বর্তমান প্রজন্মকে দক্ষ মানব সম্পদ হিসেবে গড়ে তোলার ক্ষেত্রে যার যার অবস্থান থেকে শ্রদ্ধেয় অ্যালামনাইবৃন্দের প্রতি আহ্বান জানানো হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"> </p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা বিশ্ববিদ্যালয়ের সকল হল ও বিভাগীয় অ্যালামনাই অ্যাসোসিয়েশন একটি পরিবার হয়ে সম্মিলিত প্রচেষ্টায় মাতৃসম অ্যালমা মেটার ঢাকা বিশ্ববিদ্যালয়ের প্রতি আমাদের যে দায়বদ্ধতা তা মোচনের ক্ষেত্রে ভবিষ্যতের উদ্যোগ আরো বেগবান এবং কার্যকর হবে, শতবর্ষে দাঁড়িয়ে এই প্রত্যাশা করার মধ্য দিয়ে শতবর্ষের মিলনমেলা শেষ হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">শতবর্ষের মিলনমেলার প্রকাশনা</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা বিশ্ববিদ্যালয়ের গৌরবময় শতবর্ষপূর্তি উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন বেশ কয়েকটি প্রকাশনা বের করে।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">যাত্রিক বিশেষ সংখ্যা</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর সম্মানিত সদস্যদের স্মৃতি ও ঢাকা বিশ্ববিদ্যালয় সম্পর্কিত লেখা নিয়ে নিয়মিত যাত্রিকের বিশেষ একটি সংখ্যা মুদ্রণ করা হয়। যা সম্মানিত অ্যালামনাইদের মধ্যে বিনামূল্যে বিতরণ করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">শতবর্ষের ঢাকা বিশ্ববিদ্যালয়</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন কর্তৃক ঢাকা বিশ্ববিদ্যালয়ের শতবর্ষ উপলক্ষে  দেশের খ্যাতিমান ও ঢাকা বিশ্ববিদ্যালয়ের বরেণ্য ১০০ জন অ্যালামনাই-এর লেখা সম্বলিত ‘শতবর্ষের ঢাকা বিশ্ববিদ্যালয় শিরোনামে শতবর্ষ স্মারকগ্রন্থ প্রকাশ করা হয়। গ্রন্থটির সম্পাদনার দায়িত্বে ছিলেন একুশে পদকপ্রাপ্ত সাংবাদিক অজয় দাশগুপ্ত। গ্রন্থটি অত্যন্ত তথ্যবহুল ও স্মৃতি বিজড়িত লেখায় পরিপূর্ণ। শতবর্ষের গৌরব, অর্জন, বৈচিত্র্য এবং এমনকি অপূর্ণতা ধারণের চেষ্টা করা হয়েছে এই গ্রন্থটিতে।</p>', 'Amin', 1, 1, 1, 0, '', '4', 46, NULL, '2023-02-11 22:33:42', '2023-02-14 23:59:42'),
(4, 10, '2023-02-15', '05:59:51', 'ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর প্রতিষ্ঠার ৭৩ বছর উদযাপন', 'dhaka-iunivarsiti-ozalamnai-ozasosiyesn-er-prtishthar-73-bchr-udzapn', 1, 'ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের ৭৩তম প্রতিষ্ঠাবার্ষিকী উপলক্ষে ২৪ সেপ্টেম্বর ২০২১, শুক্রবার বিকেল ৪টায় ঢাকা বিশ্ববিদ্যালয়ের সিনেট ভবনস্থ অ্যালামনাই ফ্লোরে যথাযথ স্বাস্থ্যবিধি মেনে উদ্বোধনী অনুষ্ঠান, শুভেচ্ছা জ্ঞাপন এবং সাংস্কৃতিক অনুষ্ঠানের আয়োজন করা হয়।', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের ৭৩তম প্রতিষ্ঠাবার্ষিকী উপলক্ষে ২৪ সেপ্টেম্বর ২০২১, শুক্রবার বিকেল ৪টায় ঢাকা বিশ্ববিদ্যালয়ের সিনেট ভবনস্থ অ্যালামনাই ফ্লোরে যথাযথ স্বাস্থ্যবিধি মেনে উদ্বোধনী অনুষ্ঠান, শুভেচ্ছা জ্ঞাপন এবং সাংস্কৃতিক অনুষ্ঠানের আয়োজন করা হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">পতাকা উত্তোলন, কেক কাটার মধ্য দিয়ে অনুষ্ঠানটি উদ্বোধন করেন ঢাকা বিশ্ববিদ্যালয়ের মাননীয় উপাচার্য ও ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের প্রধান পৃষ্ঠপোষক অধ্যাপক ড. মো. আখতারুজ্জামান। তিনি ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের কার্যনির্বাহী কমিটি, সকল জীবন সদস্যদের শুভেচ্ছা জানান এবং ঢাকা বিশ্ববিদ্যালয়ের অবকাঠামোগত উন্নয়ন ও শিক্ষার্থীদের বৃত্তি প্রদানের জন্য ধন্যবাদ জানান। এসময় আরো উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ের প্রো-ভাইস-চ্যান্সেলর (শিক্ষা) অধ্যাপক ড. এস এম মাকসুদ কামাল, ঢাকা বিশ্ববিদ্যালয় শিক্ষক সমিতির সাধারণ সম্পাদক অধ্যাপক ড. নিজামুল হক ভুঁইয়া। প্রো ভাইস-চ্যান্সেলর এবং শিক্ষক সমিতির সাধারণ সম্পাদক ঢাকা বিশ্ববিদ্যালয়ের শতবর্ষ উদ্যাপন উপলক্ষে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর অংশগ্রহণ এবং বিশ্ববিদ্যালয়ের সার্বিক উন্নয়নে সহযোগিতা প্রদান করায় কৃতজ্ঞতা প্রকাশ করেন।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানে সভাপতিত্ব করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর সভাপতি জনাব এ. কে. আজাদ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এরপর ঢাকা বিশ্ববিদ্যালয়ের শতবর্ষ এবং ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের ৭৩তম প্রতিষ্ঠাবার্ষিকী উপলক্ষে বিশিষ্ট ব্যক্তিবর্গ ভিডিও বার্তার মাধ্যমে শুভেচ্ছা বার্তা পাঠান। অনলাইনে যুক্ত হয়ে শুভেচ্ছা জ্ঞাপন বক্তব্য রাখেনÑ সিনিয়র সহ-সভাপতি মোল্লা মোহম্মাদ আবু কাওছার, ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের প্রাপ্তন সভাপতি ও মহাসচিব রকীবউদ্দীন আহম্মেদ। এছাড়াও শুভেচ্ছা জ্ঞাপন করেন সহ-সভাপতি আনোয়ার-উল-আলম চৌধুরী (পারভেজ), সহ-সভাপতি শাইখ সিরাজ, মহাসচিব রঞ্জন কর্মকার, কোষাধ্যক্ষ দেওয়ান রাশিদুল হাসান এবং কার্যনির্বাহী কমিটির সদস্য সেলিমা খাতুন।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\"><img src=\"https://duaa-bd.org/wp-content/uploads/2021/10/duaa73.jpg\" alt=\"\" width=\"725\" height=\"407\" class=\"aligncenter size-full wp-image-1349\" srcset=\"https://duaa-bd.org/wp-content/uploads/2021/10/duaa73.jpg 725w, https://duaa-bd.org/wp-content/uploads/2021/10/duaa73-300x168.jpg 300w\" sizes=\"(max-width: 725px) 100vw, 725px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; clear: both; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">বক্তাগণ বিশ্ববিদ্যালয়ের সার্বিক উন্নয়নে অ্যালামনাইদের সার্বিক সহযোগিতার প্রতিশ্রুতি ব্যক্ত করেন এবং শতবর্ষী বিশ্ববিদ্যালয়ের গৌরবের ও ঐতিহ্য রক্ষায় বর্তমান প্রজন্মকে আরো আন্তরিক ও সচেষ্ট হওয়ার আহ্বান জানান।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানটি সঞ্চালনা করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর যুগ্ম মহাসচিব আশরাফুল হক মুকুল।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এরপর এক মনোজ্ঞ সাংস্কৃতিক অনুষ্ঠানে সংগীত পরিবেশন করেন শিল্পী প্রিয়াঙ্কা গোপ এবং নৃত্য পরিবেশন করেন নৃত্যশিল্পী সামিনা হোসেন প্রেমা। সাংস্কৃতিক অনুষ্ঠান পরিচালনা করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সাংস্কৃতিক সম্পাদক রোকাইয়া হাসিনা নিলি।</p>', 'Amin', 1, 1, 1, 0, '', '0', 46, NULL, '2023-02-11 22:34:52', '2023-02-14 23:59:51'),
(5, 10, '2023-02-15', '06:00:03', 'জাতীয় শোক দিবস উপলক্ষে “বাংলাদেশের বিরুদ্ধে ষড়যন্ত্র ও বঙ্গবন্ধু হত্যাকান্ড”- শীর্ষক একটি সেমিনার অনুষ্ঠিত।', 'jateey-sok-dibs-uplkshe-bangladeser-biruddhe-shrzntr-oo-bngobndhu-htzakand-seershk-ekti-seminar-onushthit', 1, 'ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর আয়োজনে জাতীয় শোক দিবস উপলক্ষে ‘বাংলাদেশের বিরুদ্ধে ষড়যন্ত্র ও বঙ্গবন্ধু হত্যাকান্ড-’ শীর্ষক একটি সেমিনার  ২৮ আগস্ট ২০২১, শনিবার সকাল ১০:৩০ মিনিটে ঢাকা বিশ্ববিদ্যালয়ের নবাব নওয়াব আলী চৌধুরী সিনেট ভবনস্থ অ্যালামনাই ফ্লোরে যথাযথ স্বাস্থ্যবিধি মেনে অনুষ্ঠিত হয়।', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন-এর আয়োজনে জাতীয় শোক দিবস উপলক্ষে ‘বাংলাদেশের বিরুদ্ধে ষড়যন্ত্র ও বঙ্গবন্ধু হত্যাকান্ড-’ শীর্ষক একটি সেমিনার  ২৮ আগস্ট ২০২১, শনিবার সকাল ১০:৩০ মিনিটে ঢাকা বিশ্ববিদ্যালয়ের নবাব নওয়াব আলী চৌধুরী সিনেট ভবনস্থ অ্যালামনাই ফ্লোরে যথাযথ স্বাস্থ্যবিধি মেনে অনুষ্ঠিত হয়।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">সেমিনারে প্রধান অতিথি হিসেবে উপস্থিত ছিলেন বাংলাদেশ আওয়ামী লীগের সাধারণ সম্পাদক ও গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের সড়ক পরিবহন ও সেতু মন্ত্রী জনাব ওবায়দুল কাদের, বিশেষ অতিথি হিসেবে উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ের মাননীয় উপাচার্য ও ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের প্রধান পৃষ্ঠপোষক অধ্যাপক ড. মো. আখতারুজ্জামান। মূল প্রবন্ধ উপস্থাপন করেন ঢাকা বিশ্ববিদ্যালয়ের কলা অনুষদের ডিন অধ্যাপক ড. আবু মো. দেলোয়ার হোসেন। মূল প্রবন্ধের উপর আলোচনায় অংশ নেন ঢাকা বিশ্ববিদ্যালয়ের আইন অনুষদের ডিন ও ঢাকা বিশ্ববিদ্যালয় শিক্ষক সমিতির সভাপতি অধ্যাপক ড. রহমত উল্লাহ এবং ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সহ-সভাপতি আনোয়ার-উল-আলম চোধুরী (পারভেজ) এবং মহাসচিব জনাব রঞ্জন কর্মকার। স্বাগত বক্তব্য রাখেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সিনিয়র সহ-সভাপতি মোল্লা মোহাম্মাদ আবু কাওছার। সেমিনারটি সঞ্চালনা করেন ঢাকা বিশ্ববিদ্যালয়ের ইনস্টিটিউট অব ডিজাস্টার ম্যানেজমেন্ট এন্ড ভালনারেবিলিটি স্টাডিজ এর অধ্যাপক ড. খোন্দকার মোকাদ্দেম হোসেন ও ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সাংগঠনিক সম্পাদক এ. কে. এম. আফজালুর রহমান বাবু। সেমিনারে ওয়েবিনার যুক্ত এবং স্বশরীরে উপস্থিত ছিলেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সম্মানিত জীবনসদস্যবৃন্দ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানের সভাপতিত্ব করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সভাপতি জনাব এ. কে. আজাদ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">সেমিনারের শুরুতেই ১৯৭৫ সালের ১৫ আগস্ট স্বাধীনতা বিরোধী, দেশি-বিদেশি ষড়যন্ত্রকারীদের হাতে নিহত সর্বকালের সর্বশ্রেষ্ঠ বাঙালি জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমান, বঙ্গমাতা ফজিলাতুন্নেছা মুজিব সহ সকল শহীদের শ্রদ্ধা জানিয়ে পুস্পার্ঘ অর্পন এবং শহীদের প্রতি শ্রদ্ধা জানিয়ে দাঁড়িয়ে এক মিনিট নীরবতা পালন।<br>অ্যালামনাই অ্যাসোসিয়েশনের পক্ষ থেকে দাবী জানানো হয় জাতীয় কমিশন গঠন করে ১৫ আগস্ট ও ২১ আগস্ট হত্যাকান্ডের ষড়যন্ত্রকারীদের বর্তমান ও ভবিষ্যৎ প্রজন্মের কাছে তুলে ধরার।</p>', 'Amin', 1, 3, 1, 0, '', '4', 46, NULL, '2023-02-11 22:35:54', '2023-02-15 00:00:03'),
(6, 11, '2023-02-15', '07:15:49', 'Member Information Update', 'member-information-update', 1, 'Honorable DUAA members, kindly update your email address by clicking this link. https://duaa-bd.org/update/ You may also visit DUAA office to', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Honorable DUAA members, kindly update your email address by clicking this link.<br>https://duaa-bd.org/update/</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">You may also visit DUAA office to update your email address:<br>Credentials to log into DUAA’s Konnekt platform will be sent to your email.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">About DUAA’s Konnekt Platform:<br>https://www.konnektios.net<br>https://www.youtube.com/@konnektios3721<br>https://www.facebook.com/profile.php?id=100083271254392</p>', 'Amin', 1, 1, 1, 0, '', '0', 46, NULL, '2023-02-11 22:36:57', '2023-02-15 01:15:49'),
(7, 11, '2023-02-15', '07:15:58', 'দরপত্র-বিজ্ঞপ্তি', 'drptr-bijngpti', 1, '', '', 'Amin', 1, 1, 1, 0, '', '0', 46, NULL, '2023-02-11 22:37:35', '2023-02-15 01:15:58'),
(8, 11, '2023-02-15', '07:16:05', 'সাব-কমিটি গঠন সংক্রান্ত বিজ্ঞপ্তি', 'sab-kmiti-gthn-sngkrant-bijngpti', 1, '', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">সম্মানিত জীবন সদস্যদের জ্ঞাতার্থে জানানো যাচ্ছে যে, ঢাকা বিশ্ববিদ্যালয়ের শতবর্ষপূর্তি উপলক্ষ্যে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন কর্তৃক আয়োজিত শতবর্ষের মিলনমেলার কাজগুলোকে সুন্দর ও সুশৃঙ্খলভাবে পরিচালনার জন্য বিভিন্ন সাব-কমিটি গঠন করা হচ্ছে। আপনি যদি সাব-কমিটিতে যুক্ত থেকে কাজ করতে আগ্রহী থাকেন তাহলে আগামী ১৩ নভেম্বর ২০২১ তারিখের মধ্যে অফিসে এসে নাম প্রদানের জন্য অনুরোধ করা হলো।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">উল্লেখ্য যে, নাম প্রদানকৃত সদস্যদেরকে অবশ্যই সময় দিতে হবে এবং কাজ করার মনোভাব থাকতে হবে।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ধন্যবাদান্তে,</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">রঞ্জন কর্মকার<br>মহাসচিব</p>', 'Amin', 1, 1, 1, 0, '', '0', 46, NULL, '2023-02-11 22:38:28', '2023-02-15 01:16:05'),
(9, 12, '2023-02-15', '07:22:55', 'আন্তর্জাতিক মাতৃভাষা দিবসে শহিদদের প্রতি শ্রদ্ধা নিবেদন', 'antrjatik-matrrivasha-dibse-shidder-prti-srddha-nibedn', 1, '', '', 'Amin', 1, 1, 1, 0, '', '1', 46, NULL, '2023-02-11 22:39:37', '2023-02-15 01:22:55'),
(10, 12, '2023-02-15', '07:23:01', 'সন্ত্রাস, জঙ্গিবাদ, মাদক ও বাল্যবিবাহের বিরুদ্ধে প্রচারাভিযান ২০১৮', 'sntras-jngoibad-madk-oo-balzbibaher-biruddhe-prcaravizan-2018', 1, '', '', 'Amin', 1, 2, 1, 0, '', '1', 46, NULL, '2023-02-11 22:40:55', '2023-02-15 01:23:01'),
(11, 13, '2023-02-12', '04:43:08', 'সমাজ পরিবর্তনে শিক্ষার্থী অভিজ্ঞতা বিনিময় অনুষ্ঠান', NULL, 1, 'গত ০৪ মার্চ ২০১৮ ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন ২০১৫-২০১৬ শিক্ষাবর্ষের বৃত্তিপ্রাপ্ত ‘সামাজিক উদ্যোগে স্বেচ্ছাশ্রম’ কর্মকান্ডে অংশগ্রহণ করা শিক্ষার্থীদের নিয়ে ঢাকা', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">গত ০৪ মার্চ ২০১৮ ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন ২০১৫-২০১৬ শিক্ষাবর্ষের বৃত্তিপ্রাপ্ত ‘সামাজিক উদ্যোগে স্বেচ্ছাশ্রম’ কর্মকান্ডে অংশগ্রহণ করা শিক্ষার্থীদের নিয়ে ঢাকা বিশ্ববিদ্যালয়ের টিএসসি তে ‘সমাজ পরিবর্তনে শিক্ষার্থী অভিজ্ঞতা বিনিময় অনুষ্ঠানের’ আয়োজন করে। উক্ত অনুষ্ঠানে সভাপতিত্ত্ব করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশ এর সভাপতি জনাব এ. কে. আজাদ এবং প্রধান অতিথি হিসেবে উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ে উপ-উপাচার্য (শিক্ষা) অধ্যাপক ড. নাসরীন আহমাদ এবং বিশেষ অতিথি হিসেবে উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ে শিক্ষক সমিতির সভাপতি অধ্যাপক ড. এস এম মাকসুদ কামাল।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><img class=\"alignleft size-medium wp-image-813\" src=\"https://duaa-bd.org/wp-content/uploads/2018/03/img1-300x209.jpg\" alt=\"\" width=\"300\" height=\"209\" srcset=\"https://duaa-bd.org/wp-content/uploads/2018/03/img1-300x209.jpg 300w, https://duaa-bd.org/wp-content/uploads/2018/03/img1-392x272.jpg 392w, https://duaa-bd.org/wp-content/uploads/2018/03/img1-130x90.jpg 130w, https://duaa-bd.org/wp-content/uploads/2018/03/img1.jpg 458w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\">রাজশাহী অঞ্চলে আমরা তিনটি বাল্যবিয়ে ঠেকিয়ে দিতে পেরেছি। প্রাথমিক শিক্ষা থেকে ঝরে পড়া একঝাঁক শিশুকে আবারও পড়াশোনা কিভাবে শুরু করা যাবে, দিয়েছি সেই পরামর্শ। আমাদের উৎসাহে মাগুরায় মাদক বিক্রি নিষিদ্ধে সক্রিয় উদ্যোগের প্রকাশ্য ঘোষণা দেন একজন জনপ্রতিনিধি। কোনো ধর্মেই যে জঙ্গিবাদের স্থান নেই- সে ব্যাপারেও প্রত্যন্ত অঞ্চলের শিক্ষার্থীদের সঙ্গে প্রাণখোলা আলাপ হয়েছে।<img class=\"alignright size-medium wp-image-815\" src=\"https://duaa-bd.org/wp-content/uploads/2018/03/img3-300x195.jpg\" alt=\"\" width=\"300\" height=\"195\" srcset=\"https://duaa-bd.org/wp-content/uploads/2018/03/img3-300x195.jpg 300w, https://duaa-bd.org/wp-content/uploads/2018/03/img3.jpg 488w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: right; margin-left: 30px;\"></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">&nbsp;</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">&nbsp;</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">এভাবেই নিজেদের অভিজ্ঞতার কথা জানান ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের উদ্যোগে পরিচালিত ‘সামাজিক উদ্যোগে স্বেচ্ছাশ্রম’ ক্যাম্পেইনে অংশগ্রহণকারী শিক্ষার্থীরা। অ্যালামনাই অ্যাসোসিয়েশনের আর্থিক সহযোগিতায় নিজেদের পারিবারিক অসচ্ছলতাকে জয় করে মেধার সর্বোচ্চ বিকাশে পরিশ্রম করে চলেছেন তারা। পাশাপাশি সম্পৃক্ত হয়েছেন সন্ত্রাস-জঙ্গিবাদ-মাদক এবং বাল্যবিয়ে প্রতিরোধের লক্ষ্যে গ্রাম ও শিক্ষা প্রতিষ্ঠান পর্যায়ে পরিচালিত প্রচার কার্যক্রমেও। গত ০৪ মার্চ ২০১৮ রোববার ঢাবির টিএসসি মিলনায়তনে ’সমাজ পরিবর্তনে শিক্ষার্থী’ শীর্ষক অনুষ্ঠানে সেই কার্যক্রমে পাওয়া অভিজ্ঞতাই বিনিময় করেন শিক্ষার্থীরা।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><img class=\"alignleft size-medium wp-image-814\" src=\"https://duaa-bd.org/wp-content/uploads/2018/03/img5-300x210.jpg\" alt=\"\" width=\"300\" height=\"210\" srcset=\"https://duaa-bd.org/wp-content/uploads/2018/03/img5-300x210.jpg 300w, https://duaa-bd.org/wp-content/uploads/2018/03/img5-130x90.jpg 130w, https://duaa-bd.org/wp-content/uploads/2018/03/img5.jpg 450w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন “শিক্ষা ও সামাজিক উন্নয়নের জন্য বৃত্তি” এই অঙ্গীকার নিয়ে ঢাকা বিশ্ববিদ্যালয়ের অসচ্ছল শিক্ষার্থীদের মধ্যে বৃত্তি কার্যক্রম শুরু করে। এরই ধারাবাহিকতায় ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন ঢাকা বিশ্ববিদ্যালয়ের ২০১৫-২০১৬ শিক্ষাবর্ষের ৭০৪ জন অসচ্ছল মেধাবী শিক্ষার্থীকে আগামী ৪ বছরের জন্য প্রতি মাসে প্রত্যেককে ২,৫০০ টাকা করে বৃত্তি প্রদান করে যাচ্ছে। বৃত্তির পাশাপাশি শিক্ষার্থীরা যাতে সামাজিক উন্নয়নে ভূমিকা রাখতে পারে সেজন্য ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন এ বছর বৃত্তিপ্রাপ্ত শিক্ষার্থীদের নিয়ে ‘সামাজিক উদ্যোগে স্বেচ্ছাশ্রম’ শীর্ষক একটি ক্যাম্পেইনের আয়োজন করে। বিশ্ববিদ্যালয়ের শীতকালীন ছুটিতে বৃত্তিপ্রাপ্ত শিক্ষার্থীরা নিজ নিজ এলাকায় গিয়ে ২০ থেকে ৩০ ডিসেম্বর ২০১৭ স্কুল ও কলেজের শিক্ষার্থী এবং এলাকার যুব সমাজের মাঝে তাদের এই সামাজিক কার্যক্রম পরিচালনা করে। ৬০টি জেলার মোট অংশগ্রহণকারী ৬১০ জন (ছেলে ৩৮৭ এবং মেয়ে ২২৩) শিক্ষার্থী ১৬৩ টি গ্রুপে ভাগ হয়ে এই কার্যক্রম পরিচালনা করে।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><img class=\"alignleft size-medium wp-image-811\" src=\"https://duaa-bd.org/wp-content/uploads/2018/03/img4-300x205.jpg\" alt=\"\" width=\"300\" height=\"205\" srcset=\"https://duaa-bd.org/wp-content/uploads/2018/03/img4-300x205.jpg 300w, https://duaa-bd.org/wp-content/uploads/2018/03/img4-130x90.jpg 130w, https://duaa-bd.org/wp-content/uploads/2018/03/img4.jpg 457w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\"></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">শিক্ষার্থীদের অভিজ্ঞতা শোনার পর প্রধান অতিথির বক্তব্যে অধ্যাপক ড. নাসরীন আহমাদ বলেন, সাবেক ও বর্তমান প্রত্যেক শিক্ষার্থী ঢাকা বিশ্ববিদ্যালয়ের একেকজন দূত। তাই অ্যালামনাইদের এমন উদ্যোগ সত্যিই প্রশংসনীয়। সন্ত্রাস-জঙ্গিবাদ-মাদক এবং বাল্যবিয়ে রোধের পাশাপাশি পরিবেশ রক্ষা, পরিস্কার-পরিচ্ছন্নতা ও সঠিক ইতিহাস জানানোর বিষয়ে সচেতনতা তৈরির আহ্বান জানান তিনি।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><br></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">&nbsp;</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">&nbsp;</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\"><img class=\"alignleft size-medium wp-image-808\" src=\"https://duaa-bd.org/wp-content/uploads/2018/03/img2-300x212.jpg\" alt=\"\" width=\"300\" height=\"212\" srcset=\"https://duaa-bd.org/wp-content/uploads/2018/03/img2-300x212.jpg 300w, https://duaa-bd.org/wp-content/uploads/2018/03/img2.jpg 451w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\">সভাপতির বক্তব্যে এ. কে. আজাদ বলেন, সামাজিক পরিবর্তনে স্বেচ্ছা কার্যক্রমে অংশ নিয়ে শিক্ষার্থীরা অসাধ্য সাধন করেছে। তাদের অভিজ্ঞতা সবার জন্যই শিক্ষণীয়। এসব শিক্ষার্থীর মধ্যে আটজনকে ‘অ্যালামনাই অ্যাওয়ার্ড ফর সোশ্যাল অ্যাক্টিভিটিস’ প্রদান করা হবে। বিশ্ববিদ্যালয়ৈর টিএসসিসহ বিভিন্ন অবকাঠামো উন্নয়নে অ্যালামনাই অ্যাসোসিয়েশনের উদ্যোগ ও পরিকল্পনার কথা তুলে ধরে দেশের বিশিষ্ট এ উদ্যোক্তা বলেন, বিশ্বব্যাপী বিশ্ববিদ্যালয়ের উন্নয়নে অ্যালামনাইরা অগ্রণী ভূমিকা রাখেন। ঢাকা বিশ্ববিদ্যালয়ের বিপুল সম্ভাবনাকে কাজে লাগাতে এখানকার অ্যালামনাই অ্যাসোসিয়েশনও প্রস্তুত। এ ক্ষেত্রে বিশ্ববিদ্যালয় প্রশাসনের সহযোগিতা কামনা করেন তিনি।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">বিশেষ অতিথির বক্তব্যে ঢাকা বিশ্ববিদ্যালয় শিক্ষক সমিতির সভাপতি অধ্যাপক ড. এস এম মাকসুদ কামাল বলেন, মাদক, বাল্য বিয়ে, জঙ্গিবাদ, ইভটিজিং একেকটি সামাজিক ক্ষত। এসবের বিরুদ্ধে সামাজিক প্রতিরোধের কোনো বিকল্প নেই।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \" open=\"\" sans\",=\"\" serif;=\"\" font-size:=\"\" 15px;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(68,=\"\" 68,=\"\" 68);\"=\"\">অ্যাসোসিয়েশনের মহাসচিব রঞ্জন কর্মকারের সঞ্চালনায় অনুষ্ঠানে অন্যদের মধ্যে বক্তব্য দেন সহ-সভাপতি মোল্লা মো. আবু কাওছার, এসিআই গ্রুপের চেয়ারম্যান এম আনিস উদ দৌলা, অ্যাসোসিয়েশনের কার্যনির্বাহী সদস্য আনোয়ারুল আলম চৌধুরী পারভেজ। অ্যাসোসিয়েশনের নেতৃবৃন্দসহ অতিথিদের মধ্যে এ সময় মঞ্চে আর উপস্থিত ছিলেন মুনিরা খান, সেলিনা খালেক, মাহফুজা রহমান চৌধুরী বাবলী, শবনম শাহনাজ চৌধুরী প্রমুখ।</p>', 'Amin', 1, 1, 1, 0, NULL, '4', 46, NULL, '2023-02-11 22:42:34', '2023-02-11 22:43:08');
INSERT INTO `posts` (`id`, `menu_id`, `date`, `time`, `post_title`, `post_slug`, `image_possition`, `post_subtitle`, `details`, `author`, `image_hide_show`, `position`, `status`, `_vedio_link_show`, `_vedio_link`, `column_size`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(12, 10, '2023-02-15', '06:00:07', 'স্বাধীনতার সুবর্ণজয়ন্তী উপলক্ষ্যে কর্মসূচি ঘোষণা', 'swadheentar-subrnjyntee-uplkshze-krmsuuci-ghoshna', 1, 'ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন মুজিব শতবর্ষ, শতবর্ষে ঢাকা বিশ্ববিদ্যালয় এবং স্বাধীনতার সুবর্ণ জয়ন্তী উপলক্ষ্যে ২৭ ফেব্রুয়ারি ২০২১, বিকেল ৫ টায়', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন মুজিব শতবর্ষ, শতবর্ষে ঢাকা বিশ্ববিদ্যালয় এবং স্বাধীনতার সুবর্ণ জয়ন্তী উপলক্ষ্যে ২৭ ফেব্রুয়ারি ২০২১, বিকেল ৫ টায় নবাব নওয়াব আলী চৌধুরী সিনেট ভবনস্থ অ্যালামনাই ফ্লোরে বিভিন্ন কর্মসূচি ঘোষণা করে।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানের সভাপতিত্ব করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের সভাপতি জনাব এ. কে. আজাদ। প্রধান অতিথি হিসেবে উপস্থিত ছিলেন ঢাকা বিশ্ববিদ্যালয়ের মাননীয় উপাচার্য অধ্যাপক ড. মো. আখতারুজ্জামান ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এ সময় উপস্থিত ছিলেন- ঢাকা বিশ্ববিদ্যালয় শিক্ষক সমিতির সাধারণ সম্পাদক অধ্যাপক ড. নিজামুল হক ভূঞাঁ। সংগঠনের সিনিয়র সহ-সভাপতি মোল্লা মো. আবু কাওছার, আনোয়ার-উল আলম চৌধুরী পারভেজ, শাইখ সিরাজ, যুগ্ম মহাসচিব আশরাফুল হক মুকুল, সুভাষ সিংহ রায়, সেলিমা খাতুন বাহালুল মজনুন চুন্নু-সহ অ্যালামনাই অ্যাসোসিয়েশনের নেতৃবৃন্দ, জীবন সদস্যবৃন্দ, বিভিন্ন সাব-কমিটির সদস্যবৃন্দ এবং বিভিন্ন ইলেকট্রনিক ও প্রিন্ট মিডিয়ার সাংবাদিকবৃন্দ। অনুষ্ঠানটি সঞ্চালনা করেন ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের মহাসচিব জনাব রঞ্জন কর্মকার।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এরপর ‘শতবর্ষে ঢাকা বিশ্ববিদ্যালয় উৎসব লোগো উন্মোচন ও শিল্পীর রং তুলিতে ঢাকা বিশ্ববিদ্যালয়’ শীর্ষক কর্মসূচীর উদ্বোধন করেন ঢাকা বিশ্ববিদ্যালয়ের মাননীয় উপাচার্য ও ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশনের প্রধান পৃষ্ঠপোষক অধ্যাপক ড. মো. আখতারুজ্জামান।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">অনুষ্ঠানের সভাপতি জনাব এ. কে. আজাদ বলেনÑ এই গুরুত্বপূর্ণ অনুষ্ঠানগুলোর সফল বাস্তবায়নের জন্য আপনাদের সকলের সহযোগিতা প্রয়োজন। আমরা যে কর্মসূচিগুলোর পরিকল্পনা করেছি তা সকলের সহযোগিতায় সফলভাবে বাস্তবায়ন করবো।</p>', 'Amin', 1, 4, 1, 0, '', '4', 46, NULL, '2023-02-14 02:06:45', '2023-02-15 00:00:07'),
(13, 10, '2023-02-15', '07:24:01', 'শহীদ বুদ্ধিজীবীদের স্মরণে মোমবাতি প্রজ্বালন ও শ্রদ্ধার্ঘ্য নিবেদন', 'sheed-buddhijeebeeder-smrne-mombati-prjwaln-oo-srddharghz-nibedn', 1, 'মোমবাতি প্রজ্বালন ও শ্রদ্ধার্ঘ্য নিবেদনের মধ্য দিয়ে শহীদ বুদ্ধিজীবীদের স্মরণ করেছে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন। সোমবার সন্ধ্যায় বিশ্ববিদ্যালয়ের স্মৃতি চিরন্তনের শহীদ বেদিতে পুষ্পস্তবক অর্পণ করেন সংগঠনটির নেতৃবৃন্দ।', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">মোমবাতি প্রজ্বালন ও শ্রদ্ধার্ঘ্য নিবেদনের মধ্য দিয়ে শহীদ বুদ্ধিজীবীদের স্মরণ করেছে ঢাকা ইউনিভার্সিটি অ্যালামনাই অ্যাসোসিয়েশন। সোমবার সন্ধ্যায় বিশ্ববিদ্যালয়ের স্মৃতি চিরন্তনের শহীদ বেদিতে পুষ্পস্তবক অর্পণ করেন সংগঠনটির নেতৃবৃন্দ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এ সময় উপস্থিত ছিলেন অ্যালামনাই অ্যাসোসিয়েশনের সভাপতি এ. কে. আজাদ, মহাসচিব রঞ্জন কর্মকার, সিনিয়র সহসভাপতি মোল্লা মোহাম্মদ আবু কাওছার, সাংগঠনিক সম্পাদক আফজালুর রহমান বাবু, প্রচার ও যোগাযোগ সম্পাদক কাজী মোয়াজ্জেম হোসেনসহ কার্যনির্বাহী কমিটি ও সাব কমিটির সদস্যবৃন্দ।</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">শ্রদ্ধা নিবেদন শেষে এ. কে. আজাদ বলেন, ‘দেশের বুদ্ধিজীবীদের নিশ্চিহ্ন করার জন্য, দেশের স্বাধীনতা সংগ্রামকে থামিয়ে দেওয়ার জন্য, রাজাকার-আলবদররা যে নীলনকশা করেছিল, তার একটাই উদ্দেশ্য ছিল- জাতিকে মেধাশূন্য করা। সেই লক্ষ্যেই ঢাকা বিশ্ববিদ্যালয়ের বহু ছাত্র ও শিক্ষককে ১৪ ডিসেম্বর রাতে হত্যা করা হয়। ২৫ মার্চ থেকে শুরু করে ১৪ ডিসেম্বর পর্যন্ত তারা নির্বিচারে নারী-পুরুষদের হত্যা করেছে। তারা আজও সক্রিয়। কয়েকদিন আগে তারা জাতির পিতার ভাস্কর্য ভেঙেছে এবং ক্রমাগত হুমকি দিয়ে যাচ্ছে। দেশের সব বুদ্ধিজীবীকে এ বিষয়ে সজাগ থেকে প্রতিবাদ করতে হবে।’</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">মুক্তিযুদ্ধে ঢাকা বিশ্ববিদ্যালয়ের শহীদ শিক্ষক-শিক্ষার্থীদের পূর্ণাঙ্গ তালিকা প্রণয়নের দাবি জানিয়ে তিনি বলেন, ‘তাদের পরিবারের সদস্যরা কী অবস্থায় আছেন, তা জানা গেলে আমরা তাদের পাশে দাঁড়াব। এ সময় তিনি বিশ্ববিদ্যালয়ের ইংরেজি বিভাগের এমেরিটাস অধ্যাপক সিরাজুল ইসলাম চৌধুরীর প্রস্তাবনার ভিত্তিতে ক্যাম্পাসে মুক্তিযুদ্ধ জাদুঘর প্রতিষ্ঠার কথা পুনর্ব্যক্ত করেন।’</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">এর আগে বিশ্ববিদ্যালয়ের নবাব নওয়াব আলী চৌধুরী সিনেট ভবনের অ্যালামনাই অ্যাসোসিয়েশনের কার্যালয়ে সংক্ষিপ্ত আলোচনা সভা অনুষ্ঠিত হয়।</p>', 'Amin', 1, 5, 1, 0, '<iframe  style=\"width:100%;hight:auto;\" src=\"https://www.youtube.com/embed/J9cKe7kwobo\" title=\"জেমস এর সেরা ১০টি গান 🎤| Best Of James | Bangla Top Popular Songs 🎶 2023\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '4', 46, NULL, '2023-02-14 02:07:53', '2023-02-15 01:24:01'),
(14, 11, '2023-02-15', '07:16:13', 'NOTICE OF THE ANNUAL GENERAL MEETING', 'notice-of-the-annual-general-meeting', 1, 'In pursuant to Article 17 & 28 of the Constitution of the Association. Notice is hereby given that the Annual General Meeting ( AGM) of the respected Life Members of the Dhaka University Alumni Association ( DUAA ) will be held on 27 April 2019, at 4.00 pm Saturday at TSC Auditorium, Dhaka University.', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">In pursuant to Article 17 & 28 of the Constitution of the Association. Notice is hereby given that the Annual General Meeting ( AGM) of the respected Life Members of the Dhaka University Alumni Association ( DUAA ) will be held on 27 April 2019, at 4.00 pm Saturday at TSC Auditorium, Dhaka University.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Agenda:-<br>1. To confirm Minutes of the last Annual General Meeting held on 10 March 2018;<br>2. To confirm Annual Report ( 2018-2019) of the Association;<br>3. To consider Financial Audited Report for the period January-2018 to December-2018;<br>4. To consider amendment of DUAA Constitution by the EC of the Association;<br>5. To transact any other business subject to prior permission of the chair;<br>6. To announce election result of the Executive Committee ( 2019-22) of DUAA by the Election Commission.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68);\">Ranjan Karmaker<br>Secretary General</p>', 'Amin', 1, 4, 1, 0, '', '4', 46, NULL, '2023-02-14 02:10:15', '2023-02-15 01:16:13');
INSERT INTO `posts` (`id`, `menu_id`, `date`, `time`, `post_title`, `post_slug`, `image_possition`, `post_subtitle`, `details`, `author`, `image_hide_show`, `position`, `status`, `_vedio_link_show`, `_vedio_link`, `column_size`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(15, 13, '2023-02-14', '08:13:09', 'Donors Taking Responsibility For The Following Departments', NULL, 1, 'শিক্ষা ও সামাজিক উদ্যোগ-এর জন্য বৃত্তি  (Scholarship for Education & Social Activism) 2016-2017', '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68); text-align: center;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">শিক্ষা ও সামাজিক উদ্যোগ-এর জন্য বৃত্তি</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.6; font-family: \"Open Sans\", serif; font-size: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(68, 68, 68); text-align: center;\">(Scholarship for Education & Social Activism) 2016-2017</p><table width=\"1362\" style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: \"Open Sans\", serif; margin: 0px 0px 1.5em; outline: 0px; padding: 0px; vertical-align: baseline; border-spacing: 0px; width: 770px; color: rgb(68, 68, 68); height: 6046px;\"><tbody style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Sl No.</strong></td><td width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Name</strong></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Department</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">No. of Students</strong></td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td rowspan=\"9\" width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1.</td><td rowspan=\"9\" width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><img class=\"size-full wp-image-702 alignleft\" src=\"https://duaa-bd.org/wp-content/uploads/2017/11/eastern.gif\" alt=\"\" width=\"314\" height=\"48\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\"><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Ali Reza Iftekhar</strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Managing Director & CEO</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Eastern Bank Ltd.</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">History <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">(P.C-1</strong>)</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">30</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Law</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">10</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Modern language</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">9</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Philosophy <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">(Physically Chall.-2)</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">22</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Sociology</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">27</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Sanskrit <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">(Physically Challenged- 1)</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">12</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Social Welfare</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">11</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Tourism & Hospitality</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">6</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Anthropology</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">7</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"></td><td width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Criminology</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"></td><td width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Dance</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"></td><td width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Development Studies</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"></td><td width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Leather Engineering</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"></td><td width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"></td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"></td><td width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Total Students</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">150</strong></td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td rowspan=\"17\" width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">2</td><td rowspan=\"17\" width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><img class=\"alignleft size-full wp-image-703\" src=\"https://duaa-bd.org/wp-content/uploads/2017/11/aci.png\" alt=\"\" width=\"84\" height=\"78\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\"><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">M. Anis Ud Dowla</strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Chairman</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">ACI Group</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Accounting</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">09</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Population Science</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Banking & Insurance</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">8</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Botany</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Chemistry</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Disaster Management</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Disaster Science</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">English</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">8</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Finance</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">10</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">International Business</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">6</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Management</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">13</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Management Information System</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">5</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Marketing</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">7</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Pharmacy</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">8</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Public Administration</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">5</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Zoology</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">6</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Total Students</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">100</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td rowspan=\"15\" width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3.</td><td rowspan=\"15\" width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><img class=\"alignleft size-medium wp-image-704\" src=\"https://duaa-bd.org/wp-content/uploads/2017/11/pubali-300x61.png\" alt=\"\" width=\"300\" height=\"61\" srcset=\"https://duaa-bd.org/wp-content/uploads/2017/11/pubali-300x61.png 300w, https://duaa-bd.org/wp-content/uploads/2017/11/pubali.png 472w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\"><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">PUBALI BANK LIMITED</strong><br>Head Office, 26,</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Dilkusha Commercial Area,</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Dhaka – 1000, Bangladesh.</p></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Psychology</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">17</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Urdu</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Theoretical Physics</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">2</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Television, Film & Photo</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Information Science & Library</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">9</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Mathematics</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Nuclear Engineering</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Political Science <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">(Phy.Chall.-3)</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">28</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Fisheries</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Economics</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">9</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Sculpture</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">2</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">EEE</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">2</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Statistics</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Arabic</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">9</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Total Students</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">100</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td rowspan=\"9\" width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td><td rowspan=\"9\" width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Hafiz Ahmed Mazumder</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Chairman</strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Bangladesh Red Crescent Society</strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Bengali</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">18</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Applied Chemistry</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Nutrition & Food Science  <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">(P.C-1</strong>)</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">2</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">International Relations</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">9</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Organization Strategy</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Pali & Buddist</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">10</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Geology</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Information Technology</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Total Students</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">50</strong></td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td rowspan=\"7\" width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">4</td><td rowspan=\"7\" width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Late Amena Begum Sinha</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Given by</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Mr. Arifur Rahman Sinha</strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Managing Director</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Sinha People’s Energy Ltd.</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Accounting</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">04</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Geography & Environment</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">10</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Persian Language</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">8</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Applied Mathematics</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Islamic Studies <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">(Phy. Chall.- 2)</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">(16)</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">World Religion</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">9</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Total Students</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">50</strong></td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td rowspan=\"9\" width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">5</td><td rowspan=\"9\" width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><img class=\"alignleft size-full wp-image-705\" src=\"https://duaa-bd.org/wp-content/uploads/2017/11/eastland.jpg\" alt=\"\" width=\"251\" height=\"70\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\"><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Md. Mahabubur Rahman</strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Chairman</strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Eastland Insurance Co. Ltd.</strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Applied Statistics</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">2</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Drawing & Painting</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Soil, Water & Environment</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">6</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Print Making</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Education & Research <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">(Phy.Chall.-2)</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">9</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Health Economics</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Computer Sciences</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">2</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Genetic Eng. & Biotechnology</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Total Students</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">25</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td rowspan=\"7\" width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">6</td><td rowspan=\"7\" width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">  <img class=\"alignleft size-full wp-image-706\" src=\"https://duaa-bd.org/wp-content/uploads/2017/11/softex.png\" alt=\"\" width=\"116\" height=\"108\" style=\"max-width: 100%; height: auto; vertical-align: top; margin-bottom: 0px; display: inline; float: left; margin-right: 30px;\"><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">SOFTEX SWEATER INDUSTRIES (PVT.) LIMITED</strong></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Md. Rezwan Selim</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Managing Director</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Islamic History & Culture <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">(P.C-1</strong>)</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">15</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">History of Art</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Oceanography</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Peace & Conflict Studies</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Women & Gender Studies</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">2</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Graphic Design</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">2</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Total Students</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">25</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td rowspan=\"8\" width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">7</td><td rowspan=\"8\" width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Mahafuza Chowdhury Bably</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Linguistics</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">7</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Theater & Performance Studies</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Music <strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">(P.C-1)</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Physics</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Crafts</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Mass Comm. & Journalism</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">6</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Soil, Water & Environment</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">6</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Total Students</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">25</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td rowspan=\"4\" width=\"42\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">8</td><td rowspan=\"4\" width=\"282\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Dr. Md. Mahabub Khan</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Executive Director</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Jamiruddin Khan Foundation</p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </p></td><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Communication Disorders</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">3</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Management Studies</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">Microbiology</td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\">1</td></tr><tr style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><td width=\"318\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Total Students</strong></td><td width=\"90\" style=\"border: 1px solid rgb(234, 234, 234); font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 6px 10px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">5</strong><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"></p><p style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: 1.6; font-size: 15px; font-style: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><strong style=\"border: 0px; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-style: inherit; font-weight: bold; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"> </strong></p></td></tr></tbody></table>', 'Amin', 1, 2, 1, 0, NULL, '4', 46, NULL, '2023-02-14 02:12:57', '2023-02-14 02:13:09');

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
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(325, 3);

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

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `url`, `icon`, `position`, `status`, `created_at`, `updated_at`) VALUES
(3, 'facebook', '#', 'fa fa-facebook', 1, 1, NULL, NULL),
(4, 'instagram', '#', 'fa fa-instagram', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `member_id`, `name`, `first_name`, `last_name`, `phone_number`, `email`, `image`, `user_type`, `email_verified_at`, `password`, `text_pass`, `status`, `_ac_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, NULL, 'farhad Ali', NULL, NULL, NULL, 'ewre.com', NULL, 'user', NULL, '$2y$10$j3MgpqnXEzPE37MMZ/E75.MsHfOMCLUKS4WxiBrW5ftoShIXg3H8S', NULL, 1, 0, 'Pbkdx2kynTrUdGwQbKaY5JKIaNqRgGPPA9pgnFX6sMkRQHXFRi3lsTkhXWCl', '2021-05-29 11:35:46', '2023-01-25 05:52:18'),
(46, NULL, 'Amin', NULL, NULL, NULL, 'admin@gmail.com', NULL, 'admin', NULL, '$2y$10$a1x6VBU0VWqbI8T8HeDX3exLuF4XJm6sxCMNUJYxYQFOPh7VZSMh2', NULL, 1, 1, NULL, '2022-03-04 14:08:25', '2023-01-16 05:08:31'),
(47, NULL, 'Md. Joshim Uddin Sarder', NULL, NULL, NULL, 'jashimuddin@gmail.com', NULL, 'visitor', NULL, '$2y$10$2zsNsUjIcucUTRtUTe65I.ifix4tn3XWK6nFYul/gj6bf4iAmHf1y', NULL, 1, 0, NULL, '2022-05-24 11:15:41', '2022-05-24 11:15:41'),
(51, NULL, 'mamun ali', NULL, NULL, NULL, 'mamun@gmail.com', NULL, 'user', NULL, '$2y$10$euMFO0pzScpJ8iKOwniQn.gHxhCklZvi7bXePBQH7j91aX5AV5hJS', NULL, 0, 0, NULL, '2023-01-23 13:37:47', '2023-01-23 13:37:47'),
(52, NULL, 'Jony Ahmed', NULL, NULL, NULL, 'jony@gmail.com', NULL, 'user', NULL, '$2y$10$XPqBrzvcw4yPubP/5pgB..h/hbDPjlTxTHNPGF0rQWi8y7yWbszAK', NULL, 1, 0, NULL, '2023-01-24 02:23:20', '2023-01-24 02:23:20'),
(55, NULL, 'Nila nila', NULL, NULL, NULL, 'nila@gmail.com', NULL, 'user', NULL, '$2y$10$fE3TexnO7f/JAGnRZKZ4weXjDxsGXqK0SX9gQ6PAkbJs0RIGpdfbq', NULL, 0, 0, NULL, '2023-01-24 11:50:46', '2023-01-24 11:50:46'),
(56, NULL, 'Atick Mahmud', NULL, NULL, NULL, 'atick@gmail.com', NULL, 'user', NULL, '$2y$10$EMGCweSov4C9Ge5TZZgenOuNYTV4ZNwid9I3GLkNgtg.a1K9R/LqG', NULL, 1, 0, NULL, '2023-01-25 03:28:59', '2023-01-25 03:51:07'),
(57, NULL, 'Test Test 2', NULL, NULL, NULL, 'test@gmail.com', NULL, 'user', NULL, '$2y$10$4jfcFNiaC8kzpxp7egd9HOn.rRfoGqtf/Oxgg2CCWmQ2o0gQ2uGpq', NULL, 0, 0, NULL, '2023-01-25 09:38:29', '2023-01-25 09:38:29'),
(58, NULL, 'ddasd dsadas', NULL, NULL, NULL, 'jonyirwer@gmail.com', NULL, 'user', NULL, '$2y$10$PiUjc5ZkNIVK5Q8NhxjEzeD/CVhPooFnHtX4Xli/ezTIMJb4WPXq.', NULL, 1, 0, NULL, '2023-01-25 09:45:19', '2023-01-25 09:47:56'),
(59, NULL, 'Mo Ali Ali', NULL, NULL, NULL, 'moali0507@gmail.com', NULL, 'user', NULL, '$2y$10$kLkzcr8oQn4lixbEgGbrfevr2KhGa0aU0YXxYgkMbC.0lNKfKGkr.', NULL, 0, 0, NULL, '2023-01-25 09:50:31', '2023-01-25 09:50:31'),
(60, 2, 'Md. Mahfuzur Rahman', 'Md. Mahfuzur Rahman', 'Khan', '+8801816433092', 'farhadali0507@gmail.com', '', 'user', NULL, '$2y$10$qsc0yPi2nP83p1tfipnD2.Eor3jKZkDd8u4bSM8dGCqzNCG1K1NTG', NULL, 1, 0, NULL, '2023-02-19 01:16:23', '2023-02-19 04:20:28'),
(61, 2, 'Md. Mahfuzur Rahman', 'Md. Mahfuzur Rahman', 'Khan', '+8801816433092', 'farhad.ali@saifpowertec.com', NULL, 'user', NULL, '$2y$10$a1x6VBU0VWqbI8T8HeDX3exLuF4XJm6sxCMNUJYxYQFOPh7VZSMh2', NULL, 1, 0, NULL, '2023-02-19 03:54:27', '2023-02-19 03:55:53');

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
(1, '1949', '0', NULL, NULL),
(2, '1950', '0', NULL, NULL),
(3, '1951', '0', NULL, NULL),
(4, '1952', '0', NULL, NULL),
(5, '1953', '0', NULL, NULL),
(6, '1954', '0', NULL, NULL),
(7, '1955', '0', NULL, NULL),
(8, '1956', '0', NULL, NULL),
(9, '1957', '0', NULL, NULL),
(10, '1958', '0', NULL, NULL),
(11, '1959', '0', NULL, NULL),
(12, '1960', '0', NULL, NULL),
(13, '1961', '0', NULL, NULL),
(14, '1962', '0', NULL, NULL),
(15, '1963', '0', NULL, NULL),
(16, '1964', '0', NULL, NULL),
(17, '1965', '0', NULL, NULL),
(18, '1966', '0', NULL, NULL),
(19, '1967', '0', NULL, NULL),
(20, '1968', '0', NULL, NULL),
(21, '1969', '0', NULL, NULL),
(23, '1970', '1', NULL, NULL),
(24, '1971', '2', NULL, NULL),
(25, '1972', '3', NULL, NULL),
(26, '1973', '4', NULL, NULL),
(27, '1974', '5', NULL, NULL),
(28, '1975', '6', NULL, NULL),
(29, '1976', '7', NULL, NULL),
(30, '1977', '8', NULL, NULL),
(31, '1978', '9', NULL, NULL),
(32, '1979', '0', NULL, NULL),
(33, '1980', '10', NULL, NULL),
(34, '1981', '11', NULL, NULL),
(35, '1982', '12', NULL, NULL),
(36, '1983', '13', NULL, NULL),
(37, '1984', '14', NULL, NULL),
(38, '1985', '15', NULL, NULL),
(39, '1986', '16', NULL, NULL),
(40, '1987', '17', NULL, NULL),
(41, '1988', '18', NULL, NULL),
(42, '1989', '19', NULL, NULL),
(43, '1990', '20', NULL, NULL),
(44, '1991', '21', NULL, NULL),
(45, '1992', '22', NULL, NULL),
(46, '1993', '23', NULL, NULL),
(47, '1994', '24', NULL, NULL),
(48, '1995', '25', NULL, NULL),
(49, '1996', '26', NULL, NULL),
(50, '1997', '27', NULL, NULL),
(51, '1998', '28', NULL, NULL),
(52, '1999', '0', NULL, NULL),
(53, '2000', '29', NULL, NULL),
(54, '2001', '30', NULL, NULL),
(55, '2002', '31', NULL, NULL),
(56, '2003', '32', NULL, NULL),
(57, '2004', '33', NULL, NULL),
(58, '2005', '34', NULL, NULL),
(59, '2006', '35', NULL, NULL),
(60, '2007', '36', NULL, NULL),
(61, '2008', '37', NULL, NULL),
(62, '2009', '38', NULL, NULL),
(63, '2010', '39', NULL, NULL),
(64, '2011', '40', NULL, NULL),
(65, '2012', '41', NULL, NULL),
(66, '2013', '42', NULL, NULL),
(67, '2014', '43', NULL, NULL),
(68, '2015', '44', NULL, NULL),
(69, '2016', '45', NULL, NULL),
(70, '2017', '46', NULL, NULL),
(71, '2018', '47', NULL, NULL),
(72, '2019', '48', NULL, NULL),
(73, '2020', '49', NULL, NULL),
(74, '2021', '50', NULL, NULL),
(75, '2022', '51', NULL, NULL),
(76, '2023', '52', NULL, NULL),
(77, '2024', '53', NULL, NULL),
(78, '2025', '54', NULL, NULL),
(79, '2026', '55', NULL, NULL),
(80, '2027', '56', NULL, NULL),
(81, '2028', '57', NULL, NULL),
(82, '2029', '58', NULL, NULL),
(83, '2030', '59', NULL, NULL),
(84, '2031', '60', NULL, NULL),
(85, '2032', '61', NULL, NULL),
(86, '2033', '62', NULL, NULL),
(87, '2034', '63', NULL, NULL),
(88, '2035', '64', NULL, NULL),
(89, '2036', '65', NULL, NULL),
(90, '2037', '66', NULL, NULL),
(91, '2038', '67', NULL, NULL),
(92, '2039', '68', NULL, NULL),
(93, '2040', '69', NULL, NULL),
(94, '2041', '70', NULL, NULL),
(95, '2042', '71', NULL, NULL),
(96, '2043', '72', NULL, NULL),
(97, '2044', '73', NULL, NULL),
(98, '2045', '74', NULL, NULL),
(99, '2046', '75', NULL, NULL),
(100, '2047', '76', NULL, NULL),
(101, '2048', '77', NULL, NULL),
(102, '2049', '78', NULL, NULL),
(103, '2050', '79', NULL, NULL),
(104, '2051', '80', NULL, NULL),
(105, '2052', '81', NULL, NULL),
(106, '2053', '82', NULL, NULL),
(107, '2054', '83', NULL, NULL),
(108, '2055', '84', NULL, NULL),
(109, '2056', '85', NULL, NULL),
(110, '2057', '86', NULL, NULL),
(111, '2058', '87', NULL, NULL),
(112, '2059', '88', NULL, NULL),
(113, '2060', '89', NULL, NULL),
(114, '2061', '90', NULL, NULL),
(115, '2062', '91', NULL, NULL),
(116, '2063', '92', NULL, NULL),
(117, '2064', '93', NULL, NULL),
(118, '2065', '94', NULL, NULL),
(119, '2066', '95', NULL, NULL),
(120, '2067', '96', NULL, NULL),
(121, '2068', '97', NULL, NULL),
(122, '2069', '98', NULL, NULL),
(123, '2070', '99', NULL, NULL),
(126, '0000', 'NA', NULL, NULL);

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
-- Indexes for table `document_downloads`
--
ALTER TABLE `document_downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_manages`
--
ALTER TABLE `event_manages`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `committee_histories`
--
ALTER TABLE `committee_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `document_downloads`
--
ALTER TABLE `document_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_manages`
--
ALTER TABLE `event_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_sessions`
--
ALTER TABLE `exam_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `membership_types`
--
ALTER TABLE `membership_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `member_infos`
--
ALTER TABLE `member_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `year_batches`
--
ALTER TABLE `year_batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

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
