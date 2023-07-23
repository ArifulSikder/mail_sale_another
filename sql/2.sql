-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2023 at 04:47 PM
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
(1, 'Afghanistan', 'AF', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(2, 'Åland Islands', 'AX', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(3, 'Albania', 'AL', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(4, 'Algeria', 'DZ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(5, 'American Samoa', 'AS', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(6, 'Andorra', 'AD', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(7, 'Angola', 'AO', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(8, 'Anguilla', 'AI', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(9, 'Antarctica', 'AQ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(10, 'Antigua and Barbuda', 'AG', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(11, 'Argentina', 'AR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(12, 'Armenia', 'AM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(13, 'Aruba', 'AW', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(14, 'Australia', 'AU', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(15, 'Austria', 'AT', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(16, 'Azerbaijan', 'AZ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(17, 'Bahamas', 'BS', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(18, 'Bahrain', 'BH', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(19, 'Bangladesh', 'BD', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(20, 'Barbados', 'BB', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(21, 'Belarus', 'BY', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(22, 'Belgium', 'BE', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(23, 'Belize', 'BZ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(24, 'Benin', 'BJ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(25, 'Bermuda', 'BM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(26, 'Bhutan', 'BT', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(27, 'Bolivia, Plurinational State of', 'BO', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(29, 'Bosnia and Herzegovina', 'BA', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(30, 'Botswana', 'BW', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(31, 'Bouvet Island', 'BV', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(32, 'Brazil', 'BR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(33, 'British Indian Ocean Territory', 'IO', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(34, 'Brunei Darussalam', 'BN', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(35, 'Bulgaria', 'BG', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(36, 'Burkina Faso', 'BF', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(37, 'Burundi', 'BI', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(38, 'Cambodia', 'KH', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(39, 'Cameroon', 'CM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(40, 'Canada', 'CA', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(41, 'Cape Verde', 'CV', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(42, 'Cayman Islands', 'KY', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(43, 'Central African Republic', 'CF', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(44, 'Chad', 'TD', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(45, 'Chile', 'CL', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(46, 'China', 'CN', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(47, 'Christmas Island', 'CX', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(48, 'Cocos (Keeling) Islands', 'CC', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(49, 'Colombia', 'CO', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(50, 'Comoros', 'KM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(51, 'Congo', 'CG', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(52, 'Congo, the Democratic Republic of the', 'CD', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(53, 'Cook Islands', 'CK', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(54, 'Costa Rica', 'CR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(55, 'Côte d\'Ivoire', 'CI', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(56, 'Croatia', 'HR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(57, 'Cuba', 'CU', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(58, 'Curaçao', 'CW', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(59, 'Cyprus', 'CY', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(60, 'Czech Republic', 'CZ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(61, 'Denmark', 'DK', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(62, 'Djibouti', 'DJ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(63, 'Dominica', 'DM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(64, 'Dominican Republic', 'DO', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(65, 'Ecuador', 'EC', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(66, 'Egypt', 'EG', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(67, 'El Salvador', 'SV', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(68, 'Equatorial Guinea', 'GQ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(69, 'Eritrea', 'ER', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(70, 'Estonia', 'EE', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(71, 'Ethiopia', 'ET', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(72, 'Falkland Islands (Malvinas)', 'FK', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(73, 'Faroe Islands', 'FO', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(74, 'Fiji', 'FJ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(75, 'Finland', 'FI', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(76, 'France', 'FR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(77, 'French Guiana', 'GF', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(78, 'French Polynesia', 'PF', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(79, 'French Southern Territories', 'TF', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(80, 'Gabon', 'GA', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(81, 'Gambia', 'GM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(82, 'Georgia', 'GE', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(83, 'Germany', 'DE', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(84, 'Ghana', 'GH', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(85, 'Gibraltar', 'GI', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(86, 'Greece', 'GR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(87, 'Greenland', 'GL', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(88, 'Grenada', 'GD', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(89, 'Guadeloupe', 'GP', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(90, 'Guam', 'GU', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(91, 'Guatemala', 'GT', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(92, 'Guernsey', 'GG', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(93, 'Guinea', 'GN', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(94, 'Guinea-Bissau', 'GW', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(95, 'Guyana', 'GY', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(96, 'Haiti', 'HT', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(97, 'Heard Island and McDonald Mcdonald Islands', 'HM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(98, 'Holy See (Vatican City State)', 'VA', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(99, 'Honduras', 'HN', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(100, 'Hong Kong', 'HK', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(101, 'Hungary', 'HU', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(102, 'Iceland', 'IS', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(103, 'India', 'IN', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(104, 'Indonesia', 'ID', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(105, 'Iran, Islamic Republic of', 'IR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(106, 'Iraq', 'IQ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(107, 'Ireland', 'IE', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(108, 'Isle of Man', 'IM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(109, 'Israel', 'IL', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(110, 'Italy', 'IT', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(111, 'Jamaica', 'JM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(112, 'Japan', 'JP', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(113, 'Jersey', 'JE', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(114, 'Jordan', 'JO', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(115, 'Kazakhstan', 'KZ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(116, 'Kenya', 'KE', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(117, 'Kiribati', 'KI', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(118, 'Korea, Democratic People\'s Republic of', 'KP', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(119, 'Korea, Republic of', 'KR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(120, 'Kuwait', 'KW', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(121, 'Kyrgyzstan', 'KG', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(122, 'Lao People\'s Democratic Republic', 'LA', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(123, 'Latvia', 'LV', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(124, 'Lebanon', 'LB', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(125, 'Lesotho', 'LS', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(126, 'Liberia', 'LR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(127, 'Libya', 'LY', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(128, 'Liechtenstein', 'LI', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(129, 'Lithuania', 'LT', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(130, 'Luxembourg', 'LU', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(131, 'Macao', 'MO', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(132, 'Macedonia, the Former Yugoslav Republic of', 'MK', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(133, 'Madagascar', 'MG', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(134, 'Malawi', 'MW', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(135, 'Malaysia', 'MY', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(136, 'Maldives', 'MV', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(137, 'Mali', 'ML', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(138, 'Malta', 'MT', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(139, 'Marshall Islands', 'MH', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(140, 'Martinique', 'MQ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(141, 'Mauritania', 'MR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(142, 'Mauritius', 'MU', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(143, 'Mayotte', 'YT', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(144, 'Mexico', 'MX', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(145, 'Micronesia, Federated States of', 'FM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(146, 'Moldova, Republic of', 'MD', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(147, 'Monaco', 'MC', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(148, 'Mongolia', 'MN', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(149, 'Montenegro', 'ME', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(150, 'Montserrat', 'MS', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(151, 'Morocco', 'MA', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(152, 'Mozambique', 'MZ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(153, 'Myanmar', 'MM', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(154, 'Namibia', 'NA', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(155, 'Nauru', 'NR', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(156, 'Nepal', 'NP', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(157, 'Netherlands', 'NL', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(158, 'New Caledonia', 'NC', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(159, 'New Zealand', 'NZ', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(160, 'Nicaragua', 'NI', NULL, '2023-03-10 10:06:27', '2023-03-10 10:06:27'),
(161, 'Niger', 'NE', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(162, 'Nigeria', 'NG', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(163, 'Niue', 'NU', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(164, 'Norfolk Island', 'NF', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(165, 'Northern Mariana Islands', 'MP', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(166, 'Norway', 'NO', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(167, 'Oman', 'OM', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(168, 'Pakistan', 'PK', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(169, 'Palau', 'PW', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(170, 'Palestine, State of', 'PS', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(171, 'Panama', 'PA', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(172, 'Papua New Guinea', 'PG', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(173, 'Paraguay', 'PY', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(174, 'Peru', 'PE', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(175, 'Philippines', 'PH', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(176, 'Pitcairn', 'PN', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(177, 'Poland', 'PL', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(178, 'Portugal', 'PT', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(179, 'Puerto Rico', 'PR', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(180, 'Qatar', 'QA', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(181, 'Réunion', 'RE', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(182, 'Romania', 'RO', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(183, 'Russian Federation', 'RU', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(184, 'Rwanda', 'RW', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(185, 'Saint Barthélemy', 'BL', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(187, 'Saint Kitts and Nevis', 'KN', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(188, 'Saint Lucia', 'LC', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(189, 'Saint Martin (French part)', 'MF', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(190, 'Saint Pierre and Miquelon', 'PM', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(191, 'Saint Vincent and the Grenadines', 'VC', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(192, 'Samoa', 'WS', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(193, 'San Marino', 'SM', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(194, 'Sao Tome and Principe', 'ST', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(195, 'Saudi Arabia', 'SA', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(196, 'Senegal', 'SN', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(197, 'Serbia', 'RS', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(198, 'Seychelles', 'SC', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(199, 'Sierra Leone', 'SL', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(200, 'Singapore', 'SG', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(201, 'Sint Maarten (Dutch part)', 'SX', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(202, 'Slovakia', 'SK', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(203, 'Slovenia', 'SI', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(204, 'Solomon Islands', 'SB', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(205, 'Somalia', 'SO', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(206, 'South Africa', 'ZA', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(207, 'South Georgia and the South Sandwich Islands', 'GS', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(208, 'South Sudan', 'SS', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(209, 'Spain', 'ES', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(210, 'Sri Lanka', 'LK', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(211, 'Sudan', 'SD', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(212, 'Suriname', 'SR', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(213, 'Svalbard and Jan Mayen', 'SJ', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(214, 'Swaziland', 'SZ', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(215, 'Sweden', 'SE', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(216, 'Switzerland', 'CH', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(217, 'Syrian Arab Republic', 'SY', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(218, 'Taiwan', 'TW', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(219, 'Tajikistan', 'TJ', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(220, 'Tanzania, United Republic of', 'TZ', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(221, 'Thailand', 'TH', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(222, 'Timor-Leste', 'TL', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(223, 'Togo', 'TG', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(224, 'Tokelau', 'TK', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(225, 'Tonga', 'TO', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(226, 'Trinidad and Tobago', 'TT', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(227, 'Tunisia', 'TN', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(228, 'Turkey', 'TR', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(229, 'Turkmenistan', 'TM', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(230, 'Turks and Caicos Islands', 'TC', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(231, 'Tuvalu', 'TV', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(232, 'Uganda', 'UG', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(233, 'Ukraine', 'UA', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(234, 'United Arab Emirates', 'AE', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(235, 'United Kingdom', 'GB', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(236, 'United States', 'US', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(237, 'United States Minor Outlying Islands', 'UM', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(238, 'Uruguay', 'UY', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(239, 'Uzbekistan', 'UZ', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(240, 'Vanuatu', 'VU', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(241, 'Venezuela, Bolivarian Republic of', 'VE', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(242, 'Viet Nam', 'VN', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(243, 'Virgin Islands, British', 'VG', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(244, 'Virgin Islands, U.S.', 'VI', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(245, 'Wallis and Futuna', 'WF', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(246, 'Western Sahara', 'EH', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(247, 'Yemen', 'YE', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(248, 'Zambia', 'ZM', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28'),
(249, 'Zimbabwe', 'ZW', NULL, '2023-03-10 10:06:28', '2023-03-10 10:06:28');

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
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2023_03_09_044832_create_countries_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `f_name`, `l_name`, `company_name`, `city`, `address`, `street`, `town`, `country`, `code`, `post_code`, `phone`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Customer', 'myuser', 'Ariful', 'Sikder', 'Ariful Company', NULL, 'dsfds', 'dfsd', 'sdfsd', 'sdfsdf', 'BD', '1000', '01784703000', NULL, 'arifulsikder6d2@gmail.com', NULL, '$2y$10$QL2fVkEVrUf2wnj211bO5engvc9qOxYt0NCvY3t.CcaUus7VzMqd.', NULL, '2023-03-10 10:02:54', '2023-03-10 10:31:03');

--
-- Indexes for dumped tables
--

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
