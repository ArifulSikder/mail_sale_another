-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2023 at 06:23 PM
-- Server version: 8.0.30
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `altab_mail_sell`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_image_alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `active_status`, `parent_id`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BULLDOZER', '#', 1, NULL, 1, NULL, NULL, '2023-06-06 10:24:42', '2023-06-06 10:24:42'),
(2, 'Mobile updated', 'mobile-updated', 1, 1, 1, 1, NULL, '2023-06-06 10:24:55', '2023-06-06 10:25:00'),
(3, 'Google', '#', 1, NULL, 1, NULL, NULL, '2023-06-13 11:17:03', '2023-06-13 11:17:03'),
(4, 'Google Account', 'google-account', 1, 3, 1, NULL, NULL, '2023-06-13 11:18:25', '2023-06-13 11:18:25'),
(5, 'Google Bulk Account', 'google-bulk-account', 1, 3, 1, NULL, NULL, '2023-06-13 11:19:11', '2023-06-13 11:19:11'),
(6, 'Facebook', '#', 1, NULL, 1, NULL, NULL, '2023-07-22 12:30:17', '2023-07-22 12:30:17'),
(7, 'Facebook Account', 'facebook-account', 1, 6, 1, NULL, NULL, '2023-07-22 12:30:53', '2023-07-22 12:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(2, 'Åland Islands', 'AX', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(3, 'Albania', 'AL', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(4, 'Algeria', 'DZ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(5, 'American Samoa', 'AS', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(6, 'Andorra', 'AD', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(7, 'Angola', 'AO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(8, 'Anguilla', 'AI', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(9, 'Antarctica', 'AQ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(10, 'Antigua and Barbuda', 'AG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(11, 'Argentina', 'AR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(12, 'Armenia', 'AM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(13, 'Aruba', 'AW', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(14, 'Australia', 'AU', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(15, 'Austria', 'AT', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(16, 'Azerbaijan', 'AZ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(17, 'Bahamas', 'BS', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(18, 'Bahrain', 'BH', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(19, 'Bangladesh', 'BD', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(20, 'Barbados', 'BB', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(21, 'Belarus', 'BY', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(22, 'Belgium', 'BE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(23, 'Belize', 'BZ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(24, 'Benin', 'BJ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(25, 'Bermuda', 'BM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(26, 'Bhutan', 'BT', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(27, 'Bolivia, Plurinational State of', 'BO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(29, 'Bosnia and Herzegovina', 'BA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(30, 'Botswana', 'BW', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(31, 'Bouvet Island', 'BV', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(32, 'Brazil', 'BR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(33, 'British Indian Ocean Territory', 'IO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(34, 'Brunei Darussalam', 'BN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(35, 'Bulgaria', 'BG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(36, 'Burkina Faso', 'BF', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(37, 'Burundi', 'BI', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(38, 'Cambodia', 'KH', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(39, 'Cameroon', 'CM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(40, 'Canada', 'CA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(41, 'Cape Verde', 'CV', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(42, 'Cayman Islands', 'KY', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(43, 'Central African Republic', 'CF', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(44, 'Chad', 'TD', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(45, 'Chile', 'CL', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(46, 'China', 'CN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(47, 'Christmas Island', 'CX', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(48, 'Cocos (Keeling) Islands', 'CC', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(49, 'Colombia', 'CO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(50, 'Comoros', 'KM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(51, 'Congo', 'CG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(52, 'Congo, the Democratic Republic of the', 'CD', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(53, 'Cook Islands', 'CK', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(54, 'Costa Rica', 'CR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(55, 'Côte d\'Ivoire', 'CI', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(56, 'Croatia', 'HR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(57, 'Cuba', 'CU', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(58, 'Curaçao', 'CW', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(59, 'Cyprus', 'CY', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(60, 'Czech Republic', 'CZ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(61, 'Denmark', 'DK', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(62, 'Djibouti', 'DJ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(63, 'Dominica', 'DM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(64, 'Dominican Republic', 'DO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(65, 'Ecuador', 'EC', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(66, 'Egypt', 'EG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(67, 'El Salvador', 'SV', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(68, 'Equatorial Guinea', 'GQ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(69, 'Eritrea', 'ER', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(70, 'Estonia', 'EE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(71, 'Ethiopia', 'ET', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(72, 'Falkland Islands (Malvinas)', 'FK', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(73, 'Faroe Islands', 'FO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(74, 'Fiji', 'FJ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(75, 'Finland', 'FI', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(76, 'France', 'FR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(77, 'French Guiana', 'GF', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(78, 'French Polynesia', 'PF', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(79, 'French Southern Territories', 'TF', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(80, 'Gabon', 'GA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(81, 'Gambia', 'GM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(82, 'Georgia', 'GE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(83, 'Germany', 'DE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(84, 'Ghana', 'GH', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(85, 'Gibraltar', 'GI', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(86, 'Greece', 'GR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(87, 'Greenland', 'GL', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(88, 'Grenada', 'GD', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(89, 'Guadeloupe', 'GP', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(90, 'Guam', 'GU', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(91, 'Guatemala', 'GT', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(92, 'Guernsey', 'GG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(93, 'Guinea', 'GN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(94, 'Guinea-Bissau', 'GW', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(95, 'Guyana', 'GY', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(96, 'Haiti', 'HT', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(97, 'Heard Island and McDonald Mcdonald Islands', 'HM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(98, 'Holy See (Vatican City State)', 'VA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(99, 'Honduras', 'HN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(100, 'Hong Kong', 'HK', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(101, 'Hungary', 'HU', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(102, 'Iceland', 'IS', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(103, 'India', 'IN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(104, 'Indonesia', 'ID', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(105, 'Iran, Islamic Republic of', 'IR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(106, 'Iraq', 'IQ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(107, 'Ireland', 'IE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(108, 'Isle of Man', 'IM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(109, 'Israel', 'IL', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(110, 'Italy', 'IT', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(111, 'Jamaica', 'JM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(112, 'Japan', 'JP', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(113, 'Jersey', 'JE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(114, 'Jordan', 'JO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(115, 'Kazakhstan', 'KZ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(116, 'Kenya', 'KE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(117, 'Kiribati', 'KI', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(118, 'Korea, Democratic People\'s Republic of', 'KP', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(119, 'Korea, Republic of', 'KR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(120, 'Kuwait', 'KW', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(121, 'Kyrgyzstan', 'KG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(122, 'Lao People\'s Democratic Republic', 'LA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(123, 'Latvia', 'LV', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(124, 'Lebanon', 'LB', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(125, 'Lesotho', 'LS', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(126, 'Liberia', 'LR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(127, 'Libya', 'LY', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(128, 'Liechtenstein', 'LI', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(129, 'Lithuania', 'LT', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(130, 'Luxembourg', 'LU', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(131, 'Macao', 'MO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(132, 'Macedonia, the Former Yugoslav Republic of', 'MK', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(133, 'Madagascar', 'MG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(134, 'Malawi', 'MW', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(135, 'Malaysia', 'MY', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(136, 'Maldives', 'MV', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(137, 'Mali', 'ML', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(138, 'Malta', 'MT', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(139, 'Marshall Islands', 'MH', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(140, 'Martinique', 'MQ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(141, 'Mauritania', 'MR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(142, 'Mauritius', 'MU', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(143, 'Mayotte', 'YT', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(144, 'Mexico', 'MX', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(145, 'Micronesia, Federated States of', 'FM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(146, 'Moldova, Republic of', 'MD', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(147, 'Monaco', 'MC', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(148, 'Mongolia', 'MN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(149, 'Montenegro', 'ME', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(150, 'Montserrat', 'MS', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(151, 'Morocco', 'MA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(152, 'Mozambique', 'MZ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(153, 'Myanmar', 'MM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(154, 'Namibia', 'NA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(155, 'Nauru', 'NR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(156, 'Nepal', 'NP', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(157, 'Netherlands', 'NL', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(158, 'New Caledonia', 'NC', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(159, 'New Zealand', 'NZ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(160, 'Nicaragua', 'NI', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(161, 'Niger', 'NE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(162, 'Nigeria', 'NG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(163, 'Niue', 'NU', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(164, 'Norfolk Island', 'NF', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(165, 'Northern Mariana Islands', 'MP', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(166, 'Norway', 'NO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(167, 'Oman', 'OM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(168, 'Pakistan', 'PK', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(169, 'Palau', 'PW', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(170, 'Palestine, State of', 'PS', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(171, 'Panama', 'PA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(172, 'Papua New Guinea', 'PG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(173, 'Paraguay', 'PY', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(174, 'Peru', 'PE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(175, 'Philippines', 'PH', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(176, 'Pitcairn', 'PN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(177, 'Poland', 'PL', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(178, 'Portugal', 'PT', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(179, 'Puerto Rico', 'PR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(180, 'Qatar', 'QA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(181, 'Réunion', 'RE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(182, 'Romania', 'RO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(183, 'Russian Federation', 'RU', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(184, 'Rwanda', 'RW', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(185, 'Saint Barthélemy', 'BL', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(187, 'Saint Kitts and Nevis', 'KN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(188, 'Saint Lucia', 'LC', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(189, 'Saint Martin (French part)', 'MF', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(190, 'Saint Pierre and Miquelon', 'PM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(191, 'Saint Vincent and the Grenadines', 'VC', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(192, 'Samoa', 'WS', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(193, 'San Marino', 'SM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(194, 'Sao Tome and Principe', 'ST', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(195, 'Saudi Arabia', 'SA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(196, 'Senegal', 'SN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(197, 'Serbia', 'RS', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(198, 'Seychelles', 'SC', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(199, 'Sierra Leone', 'SL', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(200, 'Singapore', 'SG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(201, 'Sint Maarten (Dutch part)', 'SX', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(202, 'Slovakia', 'SK', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(203, 'Slovenia', 'SI', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(204, 'Solomon Islands', 'SB', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(205, 'Somalia', 'SO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(206, 'South Africa', 'ZA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(207, 'South Georgia and the South Sandwich Islands', 'GS', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(208, 'South Sudan', 'SS', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(209, 'Spain', 'ES', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(210, 'Sri Lanka', 'LK', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(211, 'Sudan', 'SD', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(212, 'Suriname', 'SR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(213, 'Svalbard and Jan Mayen', 'SJ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(214, 'Swaziland', 'SZ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(215, 'Sweden', 'SE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(216, 'Switzerland', 'CH', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(217, 'Syrian Arab Republic', 'SY', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(218, 'Taiwan', 'TW', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(219, 'Tajikistan', 'TJ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(220, 'Tanzania, United Republic of', 'TZ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(221, 'Thailand', 'TH', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(222, 'Timor-Leste', 'TL', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(223, 'Togo', 'TG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(224, 'Tokelau', 'TK', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(225, 'Tonga', 'TO', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(226, 'Trinidad and Tobago', 'TT', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(227, 'Tunisia', 'TN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(228, 'Turkey', 'TR', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(229, 'Turkmenistan', 'TM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(230, 'Turks and Caicos Islands', 'TC', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(231, 'Tuvalu', 'TV', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(232, 'Uganda', 'UG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(233, 'Ukraine', 'UA', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(234, 'United Arab Emirates', 'AE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(235, 'United Kingdom', 'GB', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(236, 'United States', 'US', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(237, 'United States Minor Outlying Islands', 'UM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(238, 'Uruguay', 'UY', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(239, 'Uzbekistan', 'UZ', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(240, 'Vanuatu', 'VU', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(241, 'Venezuela, Bolivarian Republic of', 'VE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(242, 'Viet Nam', 'VN', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(243, 'Virgin Islands, British', 'VG', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(244, 'Virgin Islands, U.S.', 'VI', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(245, 'Wallis and Futuna', 'WF', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(246, 'Western Sahara', 'EH', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(247, 'Yemen', 'YE', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(248, 'Zambia', 'ZM', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26'),
(249, 'Zimbabwe', 'ZW', NULL, '2023-07-06 10:40:26', '2023-07-06 10:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_03_09_044832_create_countries_table', 1),
(12, '2023_03_22_172813_create_app_settings_table', 1),
(13, '2023_04_05_061655_create_categories_table', 2),
(14, '2023_04_26_065848_create_products_table', 2),
(15, '2023_05_22_082918_create_product_advantages_table', 2),
(16, '2023_05_22_122843_create_product_details_table', 2),
(17, '2023_06_10_175427_create_product_descriptions_table', 3);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `id` bigint UNSIGNED NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` double(8,2) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `thumbnail`, `category_id`, `sub_category_id`, `name`, `slug`, `selling_price`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'public/uploads/1768882310790731.jpg', 1, 2, 'Ghutmil management', 'ghutmil-management', 25.00, 1, 1, 1, NULL, '2023-06-06 10:25:24', '2023-06-16 11:47:08'),
(2, 'public/uploads/1768882236017109.png', 3, 4, 'Google Account PVA', 'google-account-pva', 50.00, 1, 1, 1, NULL, '2023-06-13 11:58:25', '2023-06-16 11:45:57'),
(3, 'public/uploads/1768881520293383.png', 3, 5, 'Master bulk Account', 'master-bulk-account', 22.00, 1, 1, NULL, NULL, '2023-06-16 11:34:35', '2023-06-16 11:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_advantages`
--

CREATE TABLE `product_advantages` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_advantages`
--

INSERT INTO `product_advantages` (`id`, `product_id`, `title`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Advantage 1', 1, 1, NULL, '2023-06-16 11:46:20', '2023-06-06 10:25:53', '2023-06-16 11:46:20'),
(2, 1, 'dsfds', 1, 1, NULL, '2023-06-16 11:46:20', '2023-06-11 11:34:47', '2023-06-16 11:46:20'),
(3, 1, 'dfffffffffffffffff', 1, 1, NULL, '2023-06-16 11:46:20', '2023-06-11 11:34:53', '2023-06-16 11:46:20'),
(4, 1, '5465456', 1, 1, NULL, '2023-06-16 11:46:20', '2023-06-11 11:35:01', '2023-06-16 11:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_descriptions`
--

CREATE TABLE `product_descriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_descriptions`
--

INSERT INTO `product_descriptions` (`id`, `product_id`, `content`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '<h2>Instagram Accounts Buy for Sale</h2><p><a href=\"http://localhost/altab_mail_sell/product/ghutmil-management#\">Instagram</a> is one of the top social networking gates for sharing photos where users can apply different filters to take photos and make it more interesting and can share them on many social networks such as Reddit, Facebook, and Twitter, Tested and especially functional PVA S account.So,you can <strong>Instagram Accounts </strong><a href=\"http://localhost/altab_mail_sell/product/ghutmil-management#\"><strong>Buy</strong></a><strong> for Sale</strong> from us.</p><p><br> </p><p>You can order many PVA accounts from us. You will be amazed when you know that each account is created with a unique IP address and we will deliver it after we check it thoroughly. All the PVA accounts we have created are just examples of absolute accuracy and absolute technology.</p><p><br> </p><p>If you are interested in buying PVA accounts you can get it from us by enjoying attractive prices and offers. Mass PVA Instagram accounts can be the perfect tool for your business and personal needs. Our great packages for mass PVA Instagram accounts are always there to help you so you can buy Instagram PVA accounts in no time.</p><h2>Instagram account for sale</h2><p><img src=\"http://localhost/altab_mail_sell/frontend/assets/images/all-images/insta-1.png\" alt=\"\"></p><p>Photos and videos can speak louder and more confidently. Thus, <a href=\"http://localhost/altab_mail_sell/product/ghutmil-management#\"><strong>Instagram</strong></a> is gaining popularity for business promotion. Our Instagram accounts can be the right incentive to promote your exclusive clicks or sell your brand.</p><p>In addition to providing Instagram <a href=\"http://localhost/altab_mail_sell/product/ghutmil-management#\"><strong>accounts for sale</strong></a>, we also add followers to Instagram accounts according to the needs of our customers. Marketing and promotion strategies are changing. That’s why you need a smart and effective way to promote your business and You can get many offers at cheap prices, but such businesses may not meet your business goals. Therefore, we have created the most revolutionary and effectively designed Instagram account.</p><p>Anyone can use these accounts to increase the number of followers and tags “I like”. This will help you create a reliable and growing platform for your <a href=\"http://localhost/altab_mail_sell/product/ghutmil-management#\"><strong>business socially</strong></a>. If your business needs a huge number of Instagram followers on Instagram, this can be done very easily, because our experts are always ready to meet your personal needs. You can understand Instagram accounts at a very competitive price. Your experts are available 24×7 to solve all your questions and problems.</p>', 1, 1, 1, NULL, '2023-06-11 10:52:04', '2023-06-11 11:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `content`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '<ol><li>All accounts permanent (Guaranteed)</li><li>100% Satisfaction Guarantee</li><li>No bots, programs/software used</li><li>Delivery Time 4Hours</li><li>100% safe and stable accounts</li><li>Real High-Quality Work</li><li>100% Safe and Guaranteed</li><li>100% Customer Satisfaction</li></ol><p>You save time and effort</p><p>* Safe and discreet-protected by the Data Protection</p><p>* Manual Order processing and Quality Assurance</p><p>* Free support and customized solutions</p><h4><strong>If you feeling any problem and knowing more about us then contact Email/ Skype.</strong></h4><blockquote><p><i>24 Hours Reply/Contact</i></p></blockquote>', 1, 1, 1, NULL, '2023-06-07 12:42:20', '2023-06-11 11:45:18'),
(2, 1, '<p>Showing results for <a href=\"https://www.google.com/search?sxsrf=APwXEdfyvFGngqbleB7HF9RxugA68pxSMQ:1686417077839&amp;q=ckeditor+5+value+pass+when+edit&amp;spell=1&amp;sa=X&amp;ved=2ahUKEwjCnfiWmbn_AhWtcmwGHaibD6MQkeECKAB6BAgJEAE\"><i><strong>ckeditor</strong></i> 5 value pass when edit</a><br>Search instead for <a href=\"https://www.google.com/search?sxsrf=APwXEdfyvFGngqbleB7HF9RxugA68pxSMQ:1686417077839&amp;q=ck+editor+5+value+pass+when+edit&amp;nfpr=1&amp;sa=X&amp;ved=2ahUKEwjCnfiWmbn_AhWtcmwGHaibD6MQvgUoAXoECAkQAg\">ck editor 5 value pass when edit</a><br> </p><h2>Search Results</h2><p><br> </p><h3><a href=\"https://ckeditor.com/docs/ckeditor5/latest/installation/getting-started/getting-and-setting-data.html\">Getting and setting data - CKEditor 5 Documentation</a></h3><figure class=\"image\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAB0klEQVR4Ae1XtVIEQRTcv8AlQ1L0AyAkgxCXFHfZBJcEl+gi3DPc3SHELcI1u8d2FYPvzdwuDq+qT1am+9mI9NQSbSgk2YYGFZwqoA/AYJINBUsvLdmSHO+J6ZOwCE6JGS7gxidj8GnY6SuAdEhaQl/jT7QxQXR7TnSyRzTXSJTvpTEK5rwguxCN1pGq9ZaYLeBUWEC3DI+Ja4hIU4y4CEkk3BjUXDtcQ1p0CMj3Rp5Jt/HqQ1Ih54Yb91EPIOCnBSKEBfA9B6ns8lQwTwjEigtQMQhDTWipF9SEkACESm+Lvd2qJ7u6BHBIOWPoFICXP00A8A0F/Au4Of+wJVl8HqgJ+GIBbC6QXVUGszVSjt8UFUe2qqBdXMDJLme5jX3+fJbHHhk6gqh910UVtVWp4gJAQEYyaU/X/IZpH5PkQJb7vrgAwBBGdMwioV7RCC2XvKooV9uGBCteb/HLaGDREfce9+G9BgEvltsGCMH34/UyuZzrfXFUG7cLhE9BEMI2FvCK6/2UL78NtZ6IKgvzqH3HVRWG9mCIFNmWaz+YgOAtpDtfCL2fys6Jyp8BXPhkLEjMUizJMUm5oFw0fgIxOAbAKb0wlg5Ew/gBOMHYLOzM7gBTgTg6TqwBDAAAAABJRU5ErkJggg==\" alt=\"\"></figure><p><a href=\"https://ckeditor.com/docs/ckeditor5/latest/installation/getting-started/getting-and-setting-data.html\">CKEditor</a></p><p><a href=\"https://ckeditor.com/docs/ckeditor5/latest/installation/getting-started/getting-and-setting-data.html\">https://ckeditor.com › installation › getting-started › g...</a></p><p> </p><p> </p><p><strong>CKEditor 5</strong> allows you to retrieve the data from and save it to your server ... Classic <strong>editor</strong> will automatically update the <strong>value</strong> of the &lt;textarea&gt; element&nbsp;...</p><p><br> </p><h3><a href=\"https://ckeditor.com/old/forums/Support/How-can-I-pass-values-plugin-when-editor-starts\">How can I pass values to a plugin when the editor starts up?</a></h3><p><a href=\"https://ckeditor.com/old/forums/Support/How-can-I-pass-values-plugin-when-editor-starts\">https://ckeditor.com › old › forums › Support › How-...</a></p><p> </p><p> </p><p>Jul 14, 2008 · 3 posts · 2 authors</p><p>I want to use the AddItem method to add the items dynamically when the <strong>editor</strong> instance is instantiated. ... oFCKeditor.myCustomValue = \'\"some&nbsp;...</p><p><br> </p><h3><a href=\"https://ckeditor.com/docs/ckeditor5/latest/framework/deep-dive/observables.html\">Observables - CKEditor 5 Documentation</a></h3><p><a href=\"https://ckeditor.com/docs/ckeditor5/latest/framework/deep-dive/observables.html\">https://ckeditor.com › latest › framework › deep-dive</a></p><p> </p><p> </p><p>Observables are objects which have properties that can be observed. That means when the <strong>value</strong> of such property changes, an event is fired by the observable and&nbsp;...</p>', 0, 1, 1, NULL, '2023-06-10 11:23:26', '2023-06-11 11:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `f_name`, `l_name`, `company_name`, `city`, `address`, `street`, `town`, `country`, `code`, `post_code`, `phone`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Author', 'ariful', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BD', NULL, NULL, 'public/uploads/1688667802.jpg', 'admin@gmail.com', NULL, '$2y$10$4MiOhsq1m28YUkNbDIryzOHrp592adRYWK1wj3dQYUkXY3Bs/xIVS', NULL, NULL, '2023-06-06 10:19:26', '2023-07-07 09:23:19'),
(2, 'Customer', 'gukoqoj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lemisyr@mailinator.com', NULL, '$2y$10$4MiOhsq1m28YUkNbDIryzOHrp592adRYWK1wj3dQYUkXY3Bs/xIVS', NULL, NULL, '2023-07-18 11:13:37', '2023-07-18 11:13:37'),
(4, 'Customer', 'kedymev', 'Dominic Abbott', 'Hyatt Suarez', 'Alston Daugherty Associates', NULL, 'Incidunt minima rep', 'In atque odit dolore', 'Deserunt error eos d', 'Aliqua Numquam esse', 'LI', 'Odit voluptatem fugi', '47', NULL, 'viqepan@mailinator.com', NULL, '$2y$10$NdFzo.rFuGmA.H8jKxks9OtANYpGMwsCOH0yks.JMSywtWIEaihYm', NULL, NULL, '2023-07-26 11:46:04', '2023-07-26 11:46:04'),
(5, 'Customer', 'tyjyg', 'Xyla Stephens', 'Amir Sandoval', 'Baker and Peck Traders', 'A perferendis sit de', 'Enim perferendis mag', 'Veniam dicta except', 'A perferendis sit de', 'Cumque fugiat aute s', 'AO', 'Blanditiis non optio', '39', NULL, 'jope@mailinator.com', NULL, '$2y$10$/qnE.MHENls6gxFDdPIQZuvoXr7oJzmp2ljpVdba2tt8OlDisxSLS', NULL, NULL, '2023-07-26 11:51:23', '2023-07-26 11:51:23'),
(6, 'Customer', 'vokyqice', 'Ina Vaughan', 'Norman Simmons', 'Williams and Waters Associates', 'Et labore mollit ame', 'Maxime error unde ve', 'Dolorem id laboris a', 'Et labore mollit ame', 'Ducimus hic quo at', 'SN', 'Qui cumque molestiae', '1', NULL, 'runy@mailinator.com', NULL, '$2y$10$ba7wjrdmLF.A25m24EifIehOjdy9JBHqazeLfUlS4ekmJeUyloWLK', NULL, NULL, '2023-07-26 11:52:43', '2023-07-26 11:52:43'),
(7, 'Customer', 'fyduxowiwo', 'Xena Sharp', 'Quincy Rodriquez', 'Silva and Gilmore Plc', 'Commodi modi quo qui', 'Magnam non hic non d', 'Dolorem unde neque d', 'Commodi modi quo qui', 'Ut autem proident c', 'SN', 'Quia non ex sint ull', '74', NULL, 'tajavequje@mailinator.com', NULL, '$2y$10$BpPLvMY.yJIzN557woR/pebKvubs4dStss70F97yM3kinutvsXYIy', NULL, NULL, '2023-07-26 11:54:32', '2023-07-26 11:54:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_advantages`
--
ALTER TABLE `product_advantages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_advantages`
--
ALTER TABLE `product_advantages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
