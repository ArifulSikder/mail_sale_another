-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2023 at 05:05 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `note` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double(8,2) DEFAULT NULL,
  `applied_coupon` double(8,2) DEFAULT '0.00',
  `agree` tinyint(1) DEFAULT '0' COMMENT '0=not agreed, 1=agreed',
  `payment_method` int DEFAULT NULL COMMENT '1=stripe, 2=paypal, 3=payoneer',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `f_name`, `l_name`, `company_name`, `city`, `address`, `street`, `town`, `country`, `code`, `post_code`, `phone`, `email`, `status`, `note`, `total_price`, `applied_coupon`, `agree`, `payment_method`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ariful', 'Sikder', 'Ariful Company', NULL, 'Dhaka', 'Rajbari', 'Rajbari', 'Rajbari', 'BD', '7700', '01784703000', 'arifulsikder62@gmail.com', 'Pending', NULL, 116.00, 0.00, 1, 1, NULL, '2023-07-28 13:12:57', '2023-07-28 13:12:57'),
(2, 1, 'Ariful', 'Sikder', 'Ariful Company', NULL, 'Dhaka', 'Rajbari', 'Rajbari', 'Rajbari', 'BD', '7700', '01784703000', 'arifulsikder62@gmail.com', 'Pending', NULL, 116.00, 0.00, 1, 1, NULL, '2023-07-28 13:14:34', '2023-07-28 13:14:34'),
(3, 1, 'Ariful', 'Sikder', 'Ariful Company', NULL, 'Dhaka', 'Rajbari', 'Rajbari', 'Rajbari', 'BD', '7700', '01784703000', 'arifulsikder62@gmail.com', 'Pending', NULL, 116.00, 0.00, 1, 1, NULL, '2023-07-28 13:15:09', '2023-07-28 13:15:09'),
(4, 1, 'Ariful', 'Sikder', 'Ariful Company', NULL, 'Dhaka', 'Rajbari', 'Rajbari', 'Rajbari', 'BD', '7700', '01784703000', 'arifulsikder62@gmail.com', 'Pending', NULL, 116.00, 0.00, 1, 1, NULL, '2023-07-28 13:17:31', '2023-07-28 13:17:31'),
(5, 1, 'Ariful', 'Sikder', 'Ariful Company', NULL, 'Dhaka', 'Rajbari', 'Rajbari', 'Rajbari', 'BD', '7700', '01784703000', 'arifulsikder62@gmail.com', 'Pending', NULL, 116.00, 0.00, 1, 1, NULL, '2023-07-28 13:26:38', '2023-07-28 13:26:38'),
(6, 1, 'Ariful', 'Sikder', 'Ariful Company', NULL, 'Dhaka', 'Rajbari', 'Rajbari', 'Rajbari', 'BD', '7700', '01784703000', 'arifulsikder62@gmail.com', 'Pending', NULL, 700.00, 0.00, 1, 2, NULL, '2023-07-28 15:34:45', '2023-07-28 15:34:45'),
(7, NULL, 'Ariful', 'Sikder', 'Ariful Company', NULL, 'Dhaka', 'Rajbari', 'Rajbari', 'Rajbari', 'BD', '7700', '01784703000', 'admin@gmail.com', 'Pending', NULL, 50.00, 0.00, 1, 2, NULL, '2023-07-29 00:11:44', '2023-07-29 00:11:44'),
(8, 1, 'Ariful', 'Sikder', 'Ariful Company', NULL, 'Dhaka', 'Rajbari', 'Rajbari', 'Rajbari', 'BD', '7700', '01784703000', 'arifulsikder62@gmail.com', 'Pending', NULL, 75.00, 0.00, 1, 1, NULL, '2023-07-29 01:06:14', '2023-07-29 01:06:14'),
(9, 1, 'Ariful', 'Sikder', 'Ariful Company', NULL, 'Dhaka', 'Rajbari', 'Rajbari', 'Rajbari', 'BD', '7700', '01784703000', 'arifulsikder62@gmail.com', 'Pending', NULL, 75.00, 0.00, 1, 1, NULL, '2023-07-29 01:15:00', '2023-07-29 01:15:00'),
(10, 1, 'Ariful', 'Sikder', 'Ariful Company', NULL, 'Dhaka', 'Rajbari', 'Rajbari', 'Rajbari', 'BD', '7700', '01784703000', 'arifulsikder62@gmail.com', 'Pending', NULL, 75.00, 0.00, 1, 2, NULL, '2023-07-29 01:16:38', '2023-07-29 01:16:38'),
(11, 9, 'Kellie Carver', 'Irma Stone', 'Dean Mcdonald Trading', NULL, 'Minus qui quia et si', 'Quo quia sint commod', 'Vitae pariatur Simi', 'Exercitationem velit', 'LU', 'Voluptates similique', '26', 'bimazi@mailinator.com', 'Pending', 'i want to buy.', 50.00, 0.00, 1, 1, NULL, '2023-08-05 13:56:28', '2023-08-05 13:56:28'),
(12, 9, 'Kellie Carver', 'Irma Stone', 'Dean Mcdonald Trading', NULL, 'Minus qui quia et si', 'Quo quia sint commod', 'Vitae pariatur Simi', 'Exercitationem velit', 'LU', 'Voluptates similique', '26', 'bimazi@mailinator.com', 'Pending', NULL, 200.00, 0.00, 1, 1, NULL, '2023-08-05 14:15:52', '2023-08-05 14:15:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
