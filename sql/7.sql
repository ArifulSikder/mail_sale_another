-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 12, 2023 at 04:18 PM
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
-- Database: `admin_user_auth_system`
--
CREATE DATABASE IF NOT EXISTS `admin_user_auth_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `admin_user_auth_system`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$H.kCB6dzOwzz3B7hs.QryO/ggKpAi9NaUWWLroFg2eSeyNifnsY22', NULL, '2023-03-15 00:20:04', '2023-03-15 00:20:04'),
(2, 'admin2', 'admin2@admin.con', NULL, '$2y$10$hdCG68oId7xeznswWvqA2.TG05WEdosVQbvOPKhZYq.3Fs4Hu37hK', NULL, '2023-03-15 07:00:24', '2023-03-15 07:00:24');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_044853_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@user.com', NULL, '$2y$10$VZCfsTdzpvK6D.8lRUyMleZGBXEMLh85TyLhZ3hwrqA6L7wRtXw2S', NULL, '2023-03-15 00:17:09', '2023-03-15 00:17:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
--
-- Database: `altab_mail_sell`
--
CREATE DATABASE IF NOT EXISTS `altab_mail_sell` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `altab_mail_sell`;

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `description`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '<h6><strong>&ldquo;WHAT IS PVA ACCOUNT&rdquo;</strong></h6>\r\n\r\n<p>The&nbsp;<strong>PVA</strong>&nbsp;is a (phone verified account) this is a genuine account, which is phone verified account so non-pva has not been phone verified. Facebook phone verified account and other social media account have more privileges than Non-pva and also pva can add more friend in a safe way,send more message, post updates with URL and most important is that PVA won&rsquo;t ban easily as Non-PVA.</p>\r\n\r\n<h6><strong>&ldquo;WHAT WE SERVE&rdquo;</strong></h6>\r\n\r\n<p>We are here to serve you the best quality&nbsp;<strong>pva account</strong>&nbsp;in the&nbsp;<strong>best and cheap price</strong>&nbsp;we provide the different types of accounts according to our client&rsquo;s need. We will never give the fake account. we provide the best and 100% Working PVA Accounts. All Accounts are created with Unique IP PVA Accounts are 100% Verified, We Never Negotiate on Quality. You can&nbsp;<strong>Buy Instagram Accounts in bulk ,</strong>&nbsp;<strong>bulk email-business account,</strong>&nbsp;<strong>buy Facebook account,</strong>&nbsp;<strong>twitter pva accounts</strong></p>\r\n\r\n<p><strong>&ldquo;WHAT YOU GET IN OUR SERVICES&rdquo;</strong></p>\r\n\r\n<p>we allow more privileges than non-pva, we allow posting without captchas also provide it from our website.This&nbsp;<strong>PVA</strong>&nbsp;is Good and Profitable way to Grow Your Business all the&nbsp;<strong>social media accounts</strong>&nbsp;You can&nbsp;<strong>buy genuine real instagram likes and followers</strong>&nbsp;and also get&nbsp;<strong>bulk verify email accounts</strong>&nbsp;and also&nbsp;<strong>get google voice call phone number account</strong>&nbsp;you can buy&nbsp;<strong>buy old pinterest and hotmail PVA accounts.</strong></p>\r\n\r\n<p>For Any Query Please contact us Via Chat.We are Here 24hrs in Your Service.</p>\r\n\r\n<p>Thanks</p>\r\n\r\n<p>PVAESHOP &amp; TEAM</p>', 0, 1, 1, NULL, '2023-08-11 22:10:13', '2023-08-24 15:40:46'),
(2, '<h6>&nbsp;</h6>\r\n\r\n<h6><strong>&ldquo;WHAT IS PVA ACCOUNT&rdquo;????</strong></h6>\r\n\r\n<p>The&nbsp;<strong>PVA</strong>&nbsp;is a (phone verified account) this is a genuine account, which is phone verified account so non-pva has not been phone verified. Facebook phone verified account and other social media account have more privileges than Non-pva and also pva can add more friend in a safe way,send more message, post updates with URL and most important is that PVA won&rsquo;t ban easily as Non-PVA.</p>\r\n\r\n<h6><strong>&ldquo;WHAT WE SERVE&rdquo;</strong></h6>\r\n\r\n<p>We are here to serve you the best quality&nbsp;<strong>pva account</strong>&nbsp;in the&nbsp;<strong>best and cheap price</strong>&nbsp;we provide the different types of accounts according to our client&rsquo;s need. We will never give the fake account. we provide the best and 100% Working PVA Accounts. All Accounts are created with Unique IP PVA Accounts are 100% Verified, We Never Negotiate on Quality. You can&nbsp;<strong>Buy Instagram Accounts in bulk ,</strong>&nbsp;<strong>bulk email-business account,</strong>&nbsp;<strong>buy Facebook account,</strong>&nbsp;<strong>twitter pva accounts</strong></p>\r\n\r\n<p><strong>&ldquo;WHAT YOU GET IN OUR SERVICES&rdquo;</strong></p>\r\n\r\n<p>we allow more privileges than non-pva, we allow posting without captchas also provide it from our website.This&nbsp;<strong>PVA</strong>&nbsp;is Good and Profitable way to Grow Your Business all the&nbsp;<strong>social media accounts</strong>&nbsp;You can&nbsp;<strong>buy genuine real instagram likes and followers</strong>&nbsp;and also get&nbsp;<strong>bulk verify email accounts</strong>&nbsp;and also&nbsp;<strong>get google voice call phone number account</strong>&nbsp;you can buy&nbsp;<strong>buy old pinterest and hotmail PVA accounts.</strong></p>\r\n\r\n<p>For Any Query Please contact us Via Chat.We are Here 24hrs in Your Service.</p>\r\n\r\n<p>Thanks</p>\r\n\r\n<p>PVAESHOP &amp; TEAM ahad</p>', 1, 1, 1, NULL, '2023-08-12 00:00:22', '2023-09-06 12:49:19'),
(3, '<h6>We are here to serve you the best quality&nbsp;<strong>pva account</strong>&nbsp;in the&nbsp;<strong>best and cheap price</strong>&nbsp;we provide the different types of accounts according to our client&rsquo;s need. We will never give the fake account. we provide the best and 100% Working PVA Accounts. All Accounts are created with Unique IP PVA Accounts are 100% Verified, We Never Negotiate on Quality. You can&nbsp;<strong>Buy Instagram Accounts in bulk ,</strong>&nbsp;<strong>bulk email-business account,</strong>&nbsp;<strong>buy Facebook account,</strong>&nbsp;<strong>twitter pva accounts</strong></h6>\r\n\r\n<p><strong>&ldquo;WHAT YOU GET IN OUR SERVICES&rdquo;</strong></p>\r\n\r\n<p>we allow more privileges than non-pva, we allow posting without captchas also provide it from our website.This&nbsp;<strong>PVA</strong>&nbsp;is Good and Profitable way to Grow Your Business all the&nbsp;<strong>social media accounts</strong>&nbsp;You can&nbsp;<strong>buy genuine real instagram likes and followers</strong>&nbsp;and also get&nbsp;<strong>bulk verify email accounts</strong>&nbsp;and also&nbsp;<strong>get google voice call phone number account</strong>&nbsp;you can buy&nbsp;<strong>buy old pinterest and hotmail PVA accounts.</strong></p>\r\n\r\n<p>For Any Query Please contact us Via Chat.We are Here 24hrs in Your Service.</p>\r\n\r\n<p>Thanks</p>\r\n\r\n<p>PVAESHOP &amp; TEAM</p>', 1, 1, NULL, '2023-08-24 15:41:28', '2023-08-24 15:40:46', '2023-08-24 15:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `faq_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `favicon`, `logo`, `logo_alt`, `fb_link`, `instagram_link`, `twitter_link`, `linkedin_link`, `pinterest_link`, `email`, `skype`, `whatsapp`, `telegram`, `github`, `youtube`, `phone`, `address`, `product_heading`, `team_heading`, `about_des`, `faq_des`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'public/uploads/1774494191286889.png', 'public/uploads/1774494190925006.png', NULL, 'https://www.facebook.com/', NULL, 'https://www.twitter.com/', 'https://www.linkedin.com/', 'https://www.pinterest.com/', 'admin@gmail.com', 'aadf2w342sd', '01716965615', NULL, NULL, NULL, '01716965615', 'Muhammod pur, Dhaka', 'Let\'s Best Deal', NULL, 'Maecenas pellentesque placerat quam, in finibus nisl tincidunt sed. Aliquam magna augue, malesuada ut feugiat eget, cursus eget felis.', 'Please, Read our Frequently Asked Questions carefully. We think it gives you best solution for purchasing our service and it helps you get the required information. If you have more questions about our service, contact us immediately.', 1, 1, NULL, '2023-08-09 23:10:20', '2023-08-21 10:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `business_policies`
--

CREATE TABLE `business_policies` (
  `id` bigint UNSIGNED NOT NULL,
  `policy_type` int NOT NULL COMMENT '1=refund, 2=privacy, 3=terms, 4=disclaimer',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_policies`
--

INSERT INTO `business_policies` (`id`, `policy_type`, `description`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, '<p>Showing results for&nbsp;<a href=\"https://www.youtube.com/results?search_query=search+in+laravel+with+relationship\">search in laravel with&nbsp;relationship</a>&nbsp;Search instead for&nbsp;<a href=\"https://www.youtube.com/results?search_query=search+in+laravel+with+realtionship&amp;sp=QgIIAQ%253D%253D\">search in laravel with realtionship</a></p>', 1, 1, 1, NULL, '2023-09-07 12:45:17', '2023-09-07 13:13:51'),
(2, 1, '<p>Despite the different names, these agreements are all the same.</p>\r\n\r\n<p>No matter what you choose to call it, a generic terms of service policy can help protect your business from users who might break the law or cause harm to your website, app, or other users.</p>', 1, 1, NULL, NULL, '2023-09-07 13:12:42', '2023-09-07 13:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 'BULLDOZER', '#', 1, NULL, 1, 1, NULL, '2023-06-06 10:24:42', '2023-09-06 06:04:58'),
(2, 'Mobile updated', 'mobile-updated', 1, 6, 1, 1, NULL, '2023-06-06 10:24:55', '2023-08-18 05:56:04'),
(3, 'Google', '#', 1, NULL, 1, 1, NULL, '2023-06-13 11:17:03', '2023-08-05 00:11:48'),
(4, 'Google Account', 'google-account', 1, 3, 1, NULL, NULL, '2023-06-13 11:18:25', '2023-06-13 11:18:25'),
(5, 'Google Bulk Account', 'google-bulk-account', 1, 3, 1, NULL, NULL, '2023-06-13 11:19:11', '2023-06-13 11:19:11'),
(6, 'Facebook', '#', 1, NULL, 1, NULL, NULL, '2023-07-22 12:30:17', '2023-07-22 12:30:17'),
(7, 'Facebook Account', 'facebook-account', 1, 6, 1, NULL, NULL, '2023-07-22 12:30:53', '2023-07-22 12:30:53'),
(8, 'facebook group', 'facebook-group', 1, 6, 1, 1, NULL, '2023-07-28 10:38:16', '2023-07-31 02:50:01'),
(9, 'Google Drive', 'google-drive', 1, 3, 1, NULL, NULL, '2023-08-24 14:50:21', '2023-08-24 14:50:21'),
(10, 'Facebook Page', 'facebook-page', 1, 6, 1, NULL, NULL, '2023-08-24 14:55:52', '2023-08-24 14:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int NOT NULL,
  `limit` int NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_code`, `product_id`, `start_date`, `end_date`, `coupon_discount`, `limit`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Drive Storage', '#DriveStorage64ed949b38788', 7, '2023-08-28T20:01', '2023-08-31T14:34', 10, 100, 1, 1, 1, NULL, '2023-08-29 06:47:55', '2023-08-29 06:51:14'),
(2, 'new offer', '#newoffer64ef814f4fbd3', 6, '2023-08-30T05:05', '2023-09-07T22:25', 8, 100, 1, 1, 1, NULL, '2023-08-30 17:50:07', '2023-08-30 17:50:15'),
(3, 'new offer', '#newoffer64ef814f7e6fe', 3, '2023-08-30T05:05', '2023-09-07T22:25', 8, 100, 1, 1, 1, NULL, '2023-08-30 17:50:07', '2023-08-30 17:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `customer_messages`
--

CREATE TABLE `customer_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_messages`
--

INSERT INTO `customer_messages` (`id`, `name`, `email`, `message`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Cline', 'mahfujul.dev@gmail.com', 'Perspiciatis cupidi', 1, NULL, 1, NULL, '2023-08-22 04:45:14', '2023-08-22 14:54:41'),
(2, 'Cooper Mann', 'islammahfuz31@gmail.com', 'Est a aute labore co', 1, 1, NULL, NULL, '2023-08-22 13:24:32', '2023-08-22 13:24:32'),
(3, 'saiful islam', 'saiful.is00007@gmail.com', 'i want to buy  something', 1, 1, NULL, '2023-08-23 04:37:23', '2023-08-22 16:36:13', '2023-08-23 04:37:23'),
(4, 'Baker Hester', 'islammahfuz31@gmail.com', 'this is working', 1, 1, NULL, NULL, '2023-09-05 19:48:06', '2023-09-05 19:48:06'),
(5, 'Baker Hester', 'islammahfuz31@gmail.com', 'this is working', 1, 1, NULL, NULL, '2023-09-05 19:48:21', '2023-09-05 19:48:21'),
(6, 'Rudyard Crane', 'islammahfuz31@gmail.com', 'working', 1, 1, NULL, NULL, '2023-09-05 19:49:30', '2023-09-05 19:49:30'),
(7, 'Rudyard Crane', 'islammahfuz31@gmail.com', 'working', 1, 1, NULL, NULL, '2023-09-05 19:49:46', '2023-09-05 19:49:46'),
(8, 'Slade Berry', 'islammahfuz31@gmail.com', 'Vero quam quis eos', 1, 1, NULL, NULL, '2023-09-06 02:48:52', '2023-09-06 02:48:52'),
(9, 'Aurelia Savage', 'islammahfuz31@gmail.com', 'In aliquid culpa ma', 1, 1, NULL, NULL, '2023-09-06 03:08:10', '2023-09-06 03:08:10'),
(10, 'Darius Knowles', 'islammahfuz31@gmail.com', 'Labore eu doloribus', 1, 1, NULL, NULL, '2023-09-06 03:11:10', '2023-09-06 03:11:10'),
(11, 'Guy Cleveland', 'islammahfuz31@gmail.com', 'Pariatur Et animi', 1, 1, NULL, NULL, '2023-09-06 05:23:07', '2023-09-06 05:23:07'),
(12, 'Connor Acevedo', 'islammahfuz31@gmail.com', 'Aperiam nihil tempor', 1, 1, NULL, NULL, '2023-09-06 05:24:05', '2023-09-06 05:24:05'),
(13, 'Lynn Lloyd', 'mdrezuanahmed649@gmail.com', 'Qui doloremque animi', 1, 1, NULL, '2023-09-07 11:46:14', '2023-09-06 05:44:46', '2023-09-07 11:46:14'),
(14, 'Vielka Fox', 'islammahfuz31@gmail.com', 'Qui do rerum in id v', 1, 1, NULL, NULL, '2023-09-08 18:22:38', '2023-09-08 18:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `customer_sms_defaults`
--

CREATE TABLE `customer_sms_defaults` (
  `id` bigint UNSIGNED NOT NULL,
  `templete_id` bigint UNSIGNED DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_sms_defaults`
--

INSERT INTO `customer_sms_defaults` (`id`, `templete_id`, `subject`, `message`, `visit_link`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Soluta laborum Culp', '<p>as their primary communication channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking f</p>', 'https://www.facebook.com/', 1, 1, NULL, NULL, '2023-09-09 15:25:40', '2023-09-09 15:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_a_q_categories`
--

CREATE TABLE `f_a_q_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_q_categories`
--

INSERT INTO `f_a_q_categories` (`id`, `category_title`, `category_logo`, `logo_alt`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Facebook Question', 'public/uploads/1773907091955227.webp', 'Facebook Question', 1, 1, NULL, NULL, '2023-08-10 22:53:53', '2023-08-12 01:57:00'),
(2, 'TwitterQues', 'public/uploads/1774004398987984.webp', 'Animi placeat comm', 1, 1, NULL, NULL, '2023-08-12 00:40:32', '2023-08-12 01:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_q_s`
--

INSERT INTO `f_a_q_s` (`id`, `category_id`, `question`, `answer`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Are these Facebook Accounts suspend in future?22', 'All of these Facebook Accounts are real as we provide you it from human user...', 0, 1, 1, '2023-08-13 09:06:32', '2023-08-10 22:59:54', '2023-08-13 09:06:32'),
(2, 1, 'Is this safe to use on Facebook?', 'This is totally safe to using. Because of its your Facebook account never ban.', 1, 1, 1, NULL, '2023-08-10 23:00:22', '2023-08-29 04:59:48'),
(3, 2, 'Does Pvaeshop provide real Twitter Accounts?', 'All of these Twitter Accounts are real as we provide you it from human user.', 0, 1, 1, '2023-08-24 15:40:57', '2023-08-12 01:57:39', '2023-08-24 15:40:57'),
(4, 2, 'Are these Twitter Accounts suspend in future?', 'Our Twitter Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.', 1, 1, 1, NULL, '2023-08-29 04:57:46', '2023-08-29 04:58:32'),
(5, 2, 'Does Pvaeshop provide real Twitter Accounts?', 'All of these Twitter Accounts are real as we provide you it from human user.', 1, 1, NULL, NULL, '2023-08-29 04:58:52', '2023-08-29 04:58:52'),
(6, 2, 'Is this safe to use on Twitter?', 'This is totally safe to using. Because of its your Twitter account never ban.', 1, 1, NULL, NULL, '2023-08-29 04:59:12', '2023-08-29 04:59:12'),
(7, 1, 'Does Pvaeshop provide real Facebook Accounts?', 'Our Facebook Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.', 1, 1, 1, NULL, '2023-08-29 04:59:45', '2023-08-29 05:00:06'),
(8, 1, 'Are these Facebook Accounts suspend in future?', 'Our Facebook Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.', 1, 1, 1, NULL, '2023-08-29 05:00:39', '2023-08-29 05:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `home_paveshops`
--

CREATE TABLE `home_paveshops` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_paveshops`
--

INSERT INTO `home_paveshops` (`id`, `title`, `description`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Possimus sed eius s', '<p>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RATE. GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RATE.<strong>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RATE.</strong></p><p><i>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RATE.</i></p>', 1, 1, NULL, '2023-08-08 07:52:20', '2023-08-04 04:40:03', '2023-08-08 07:52:20'),
(2, 'Fugiat deserunt ali', '<p><strong>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RATE.</strong></p><p><i>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RAT</i></p>', 1, 1, 1, '2023-08-09 04:06:41', '2023-08-08 07:45:37', '2023-08-09 04:06:41'),
(3, 'Dolorem laboris veli', '<p><strong>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RATE.</strong></p><p><i>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RAT</i></p>', 0, 1, 1, NULL, '2023-08-08 10:15:30', '2023-08-18 12:11:09'),
(4, 'Perferendis voluptat', '<p>Perferendis voluptat<strong>Perferendis vol</strong></p>', 0, 1, 1, NULL, '2023-08-09 04:05:42', '2023-08-18 12:11:05'),
(5, 'Pvashop Details', '<h2><span style=\"font-size:14px\">You can connect your Gmail account to Inbox in Meta Business Suite and manage your business&rsquo;s communications in one place. With Gmail in Inbox, you can:You can select a saved reply to insert it into the body of the email. Using saved replies can help you avoid rewriting answers to commonly asked questions about your business.You can mark messages as unread, archive them, or add labels to help you find them later more easily. Select a filter in Inbox to view a specific set of emails, such as unread or sent.</span></h2>', 1, 1, 1, NULL, '2023-08-09 04:06:16', '2023-08-24 15:06:31'),
(6, 'In eos accusantium e', '<p>In eos accusantium e adfkjasd sadf</p>', 0, 1, NULL, '2023-08-09 04:07:32', '2023-08-09 04:07:23', '2023-08-09 04:07:32'),
(7, 'Ipsa voluptate volu', '<p>ou have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Pvaeshop. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n\r\n<h4><strong>Consent</strong></h4>\r\n\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n\r\n<h4><strong>Information we collect</strong></h4>\r\n\r\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n\r\n<p>&nbsp;</p>', 0, 1, 1, NULL, '2023-08-09 07:30:47', '2023-08-24 15:02:30'),
(8, 'Ut ex aut corporis o', '<h2>Gmail Phone Verified Accounts</h2>\r\n\r\n<p>Despite the numerous social media tools and tricks that have reformed the way businesses promote themselves online, email marketing still holds the position as the most reliable one. Emails are not just great for online communication. Today, it has become a powerful tool used for more important and official work. Emails serve as the main gateway to access many online services; from bank account verification to registration on all social media platforms to other online services such as Amazon or forums, everything requires a valid email address. There are a lot of email providers in the market and most of them function the same. However,&nbsp;<strong>Gmail</strong>&nbsp;is way ahead of its competition.Gmail is the most popular free email service provider with nearly 30% of all its users open their emails every day. While plenty of people use Gmail for personal work, it also has great functionality for businesses as well.&nbsp;<img alt=\"\" src=\"http://localhost/mail_sale_another/public/uploads/1774568669648585.jpg\" style=\"height:360px; width:875px\" /></p>', 0, 1, 1, NULL, '2023-08-18 12:09:31', '2023-08-24 15:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `meet_teams`
--

CREATE TABLE `meet_teams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meet_teams`
--

INSERT INTO `meet_teams` (`id`, `name`, `designation`, `description`, `photo`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Ahad', 'Support', '24/7 days support given', 'public/uploads/1773294742677852.jpg', 1, 1, 1, NULL, '2023-08-04 04:40:52', '2023-08-24 15:17:51'),
(2, 'Mr. Noyon', 'Manager', 'Well managed products', 'public/uploads/1773362416839896.jpg', 1, 1, 1, NULL, '2023-08-04 04:41:14', '2023-08-24 15:16:56'),
(3, 'Mr Altab', 'Owner', '10 years working in this field', 'public/uploads/1773362428299323.jpg', 1, 1, 1, NULL, '2023-08-04 04:41:42', '2023-08-24 15:16:10');

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_03_09_044832_create_countries_table', 1),
(13, '2023_04_05_061655_create_categories_table', 2),
(15, '2023_05_22_082918_create_product_advantages_table', 2),
(16, '2023_05_22_122843_create_product_details_table', 2),
(17, '2023_06_10_175427_create_product_descriptions_table', 3),
(24, '2023_07_24_040012_create_home_paveshops_table', 5),
(25, '2023_07_24_134711_create_meet_teams_table', 5),
(26, '2023_07_30_161526_create_sliders_table', 5),
(27, '2023_08_03_063245_create_product_guarantees_table', 5),
(40, '2023_03_22_172813_create_app_settings_table', 7),
(42, '2023_08_07_042521_create_f_a_q_s_table', 8),
(43, '2023_08_07_043021_create_f_a_q_categories_table', 9),
(46, '2023_08_11_181906_create_about_us_table', 10),
(59, '2023_08_14_062050_create_reviews_table', 11),
(71, '2023_08_13_133154_create_sellers_table', 12),
(73, '2023_08_16_113556_create_sms_templetes_table', 14),
(78, '2023_08_18_174547_create_sub_category_descriptions_table', 15),
(79, '2023_08_18_211708_create_set_emails_table', 16),
(81, '2023_04_26_065848_create_products_table', 17),
(84, '2023_07_28_193433_create_payments_table', 18),
(87, '2023_07_06_171149_create_orders_table', 19),
(88, '2023_08_11_155432_create_customer_messages_table', 20),
(92, '2023_08_11_095354_create_payment_apis_table', 21),
(97, '2023_08_22_190417_create_send_msg_customers_table', 22),
(109, '2023_07_28_184114_create_purchase_products_table', 23),
(110, '2023_08_13_132437_create_stock_management_table', 24),
(111, '2023_08_16_184303_create_purchases_table', 25),
(113, '2023_08_23_232036_create_otp_varifications_table', 27),
(114, '2023_06_11_053440_create_seo_pages_table', 28),
(115, '2023_08_13_135020_create_coupons_table', 29),
(120, '2023_08_06_094155_create_business_policies_table', 30),
(121, '2023_09_01_235354_create_customer_sms_defaults_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `f_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `note` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 1, 'Jade Goodman', 'Lionel Stanley', 'Fleming Perkins Trading', NULL, 'Quod aut voluptates', 'In commodi maiores e', 'Minus molestias exce', 'Sapiente odio aut su', 'NE', 'Blanditiis quia magn', '65', 'dupux@mailinator.com', 'Pending', 'Temporibus consequat', 816.00, 0.00, 1, 1, NULL, '2023-08-21 05:48:44', '2023-08-21 05:48:44'),
(2, 1, 'Elton', 'Randall', 'Duffy Bird Traders', NULL, 'Repudiandae et earum', 'Pariatur Officia re', 'Molestiae ipsa alia', 'Recusandae Sed dele', 'GR', 'Voluptatum id nihil', '23', 'kecax@mailinator.com', 'Pending', 'Cupiditate non quide', 371.00, 0.00, 1, 1, NULL, '2023-08-21 06:49:48', '2023-08-21 06:49:48'),
(3, 1, 'Uriah Warner', 'Barrett Franks', 'Byrd and Wise LLC', NULL, 'Et corporis sed volu', 'Aut et sed deserunt', 'Incidunt optio sed', 'Ratione reiciendis a', 'HM', 'Unde fuga Deserunt', '74', 'qanul@mailinator.com', 'Pending', 'Dolore sunt velit e', 541.00, 0.00, 1, 1, NULL, '2023-08-23 17:39:37', '2023-08-23 17:39:37'),
(4, 1, 'Montana Short', 'Rowan Perry', 'Owen and Lindsey Traders', NULL, 'Odio nisi et nemo ir', 'Nihil mollit illo co', 'Quia quas eaque non', 'Id sit totam commod', 'CM', 'Dolore laudantium q', '4', 'hajef@mailinator.com', 'Pending', 'Tenetur ut enim dese', 2698.00, 0.00, 1, 1, NULL, '2023-08-23 17:44:18', '2023-08-23 17:44:18'),
(5, 1, 'Jackson Morrison', 'Richard Pate', 'Peck Simmons Traders', NULL, 'Commodi ipsum elit', 'Veniam quia eu magn', 'Id excepteur aliquip', 'Consequat Iste beat', 'KN', 'Consectetur esse qua', '4', 'suxehuheg@mailinator.com', 'Pending', 'Sunt dolor ipsum mi', 45.00, 0.00, 1, 1, NULL, '2023-08-29 15:54:51', '2023-08-29 15:54:51'),
(6, 1, 'Chantale Sharp', 'Wing Vega', 'Wyatt and Baldwin Plc', NULL, 'Exercitationem numqu', 'Veniam illo delectu', 'Aut obcaecati tenetu', 'Esse ut facilis ver', 'HR', 'Pariatur Dolor labo', '32', 'diveweqinu@mailinator.com', 'Pending', 'Et doloribus obcaeca', 90.00, 0.00, 1, 1, NULL, '2023-08-29 16:00:08', '2023-08-29 16:00:08'),
(7, 1, 'Cameran Day', 'Rae Dorsey', 'Hardy Bradley Inc', NULL, 'Sequi et hic est qui', 'Ea proident ratione', 'Anim ullam sed at eu', 'Sit sed qui ut cum', 'RE', 'Sed aute ipsum atque', '49', 'gejyc@mailinator.com', 'Pending', 'Sequi eligendi reici', 500.00, 0.00, 1, 1, NULL, '2023-08-29 17:48:49', '2023-08-29 17:48:49'),
(8, 1, 'Allegra Burnett', 'Wynne Dotson', 'Ellis and Foreman Inc', NULL, 'Repudiandae Nam quis', 'Hic dolorum aperiam', 'Eius quas animi quo', 'Optio eius est cupi', 'GY', 'Nobis magnam odit co', '59', 'jukerih@mailinator.com', 'Pending', 'Quis temporibus sint', 45.00, 0.00, 1, 1, NULL, '2023-08-31 17:58:32', '2023-08-31 17:58:32'),
(9, 1, 'Lucy Lawrence', 'Upton Gilmore', 'Nieves Hoffman Inc', NULL, 'Omnis aut sunt quo u', 'Culpa nobis veritat', 'Dolor quasi aspernat', 'Dolores ex sit non a', 'BG', 'Laudantium nostrud', '79', 'ramypoda@mailinator.com', 'Pending', 'Quaerat quisquam qui', 2000.00, 0.00, 1, 1, NULL, '2023-09-05 06:16:37', '2023-09-05 06:16:37'),
(10, 1, 'Sacha Padilla', 'Darryl Jarvis', 'Cline Hansen Traders', NULL, 'Voluptas in dolores', 'Repudiandae temporib', 'Minus culpa et nisi', 'Qui tenetur consequa', 'TT', 'In expedita voluptas', '50', 'islammahfuz31@gmail.com', 'Pending', 'Ipsum dolores lorem', 20.00, 0.00, 1, 1, NULL, '2023-09-08 18:06:49', '2023-09-08 18:06:49'),
(11, 1, 'Brenna Morton', 'Seth Norton', 'Webb and Stanley Plc', NULL, 'Occaecat qui magnam', 'Velit praesentium in', 'Incididunt totam ali', 'Et qui aut alias rer', 'GY', 'Similique animi ali', '62', 'islammahfuz31@gmail.com', 'Pending', 'Alias quo accusamus', 25.00, 0.00, 1, 1, NULL, '2023-09-08 18:34:10', '2023-09-08 18:34:10'),
(12, NULL, 'Chandler Hobbs', 'Hayley Guerrero', 'Arnold Stewart Trading', NULL, 'Voluptatem veritatis', 'Aut minus pariatur', 'Perferendis molestia', 'Lorem magnam nisi au', 'CK', 'Duis iusto qui susci', '50', 'pefo@mailinator.com', 'Pending', 'Duis dolor enim aute', 25.00, 0.00, 1, 1, NULL, '2023-09-09 04:44:09', '2023-09-09 04:44:09'),
(13, 1, 'Macon Barry', 'Xena Whitney', 'Mays Parsons Associates', NULL, 'Mollitia exercitatio', 'Aut adipisicing dign', 'Eius quam minim hic', 'Aut neque officia qu', 'UA', 'Dignissimos voluptat', '72', 'sarifoveno@mailinator.com', 'Pending', 'Tenetur non sed recu', 55.00, 0.00, 1, 1, NULL, '2023-09-09 16:16:17', '2023-09-09 16:16:17'),
(14, 1, 'Hayes Kirby', 'Emerald Garrison', 'Carter Spence Plc', NULL, 'Nisi dolores nobis v', 'Repudiandae voluptat', 'Perferendis commodo', 'Corporis provident', 'NC', 'Temporibus magni odi', '01765646', 'nikekov@mailinator.com', 'Completed', 'Impedit vero suscip', 125.00, 0.00, 1, 1, NULL, '2023-09-09 16:25:33', '2023-09-10 13:33:04'),
(15, 1, 'Nevada Torres', 'Gwendolyn Quinn', 'Hamilton and Franco Inc', NULL, 'In porro aute autem', 'Nisi qui earum non o', 'Qui aut iure iste al', 'Sunt veniam except', 'AZ', 'Possimus non volupt', '72', 'bybofi@mailinator.com', 'Pending', 'Iure maxime culpa mo', 70.00, 0.00, 1, 1, NULL, '2023-09-11 05:01:28', '2023-09-11 05:01:28'),
(16, 1, 'Amethyst Cochran', 'Ivan Carr', 'Erickson and Blair Traders', NULL, 'Veniam sed ut simil', 'Nulla culpa volupta', 'Qui cupidatat quia l', 'Iusto incididunt lab', 'FK', 'Fuga Provident und', '38', 'islammahfuz31@gmail.com', 'Pending', 'Nulla quo deserunt v', 210.00, 0.00, 1, 1, NULL, '2023-09-11 05:02:49', '2023-09-11 05:02:49'),
(22, 1, 'Arsenio Koch', 'Julian Hurst', 'Pugh and Morgan LLC', NULL, 'Est labore cillum qu', 'Qui nostrud non cons', 'Enim eveniet et vol', 'Enim aut est sed exc', 'DJ', 'Est repellendus Con', '27', 'bypomyd@mailinator.com', 'Pending', 'Voluptatem Et itaqu', 175.00, 0.00, 1, 1, NULL, '2023-09-11 06:12:53', '2023-09-11 06:12:53'),
(23, 1, 'Holly Barron', 'Charlotte Dunn', 'Ayala Fitzpatrick Traders', NULL, 'Numquam doloribus qu', 'Corrupti laborum nu', 'Earum quis assumenda', 'Qui pariatur Sint', 'IE', 'Lorem dolorum nisi o', '97', 'islammahfuz31@gmail.com', 'Pending', 'Excepteur ab culpa n', 175.00, 0.00, 1, 1, NULL, '2023-09-11 06:14:13', '2023-09-11 06:14:13'),
(24, 1, 'Ross Colon', 'Mollie Hoffman', 'Gill Head Co', NULL, 'Quis totam dolore eo', 'Autem officia dolori', 'In cumque officiis a', 'Sapiente eligendi cu', 'CH', 'Commodo consequuntur', '1', 'islammahfuz31@gmail.com', 'Pending', 'Non sequi sunt esse', 100.00, 0.00, 1, 1, NULL, '2023-09-11 06:18:05', '2023-09-11 06:18:05'),
(25, 1, 'Angela Parks', 'Xena Hurley', 'Melendez and Brennan Trading', NULL, 'Error sapiente cillu', 'Qui necessitatibus a', 'Pariatur Excepturi', 'Ut aliquip quibusdam', 'TC', 'Tenetur distinctio', '19', 'islammahfuz31@gmail.com', 'Pending', 'Ut recusandae Aliqu', 100.00, 0.00, 1, 1, NULL, '2023-09-11 06:20:00', '2023-09-11 06:20:00'),
(26, 1, 'Angela Parks', 'Xena Hurley', 'Melendez and Brennan Trading', NULL, 'Error sapiente cillu', 'Qui necessitatibus a', 'Pariatur Excepturi', 'Ut aliquip quibusdam', 'TC', 'Tenetur distinctio', '19', 'islammahfuz31@gmail.com', 'Pending', 'Ut recusandae Aliqu', 100.00, 0.00, 1, 1, NULL, '2023-09-11 06:20:36', '2023-09-11 06:20:36'),
(27, 1, 'Julian Ochoa', 'Eliana Cherry', 'Mccarthy Ayers Trading', NULL, 'Blanditiis quis ipsu', 'Quia rerum nemo volu', 'Fuga Consequatur in', 'Nobis dolores et sae', 'HT', 'Ratione labore labor', '79', 'islammahfuz31@gmail.com', 'Pending', 'Enim est ipsam sint', 230.00, 0.00, 1, 1, NULL, '2023-09-11 06:21:44', '2023-09-11 06:21:44'),
(28, 1, 'Ria Phelps', 'Azalia Hopkins', 'Moon and Roman Trading', NULL, 'Aliquip ex sit aut', 'Id voluptate consect', 'Perferendis qui quis', 'Omnis dolore aperiam', 'DO', 'Nostrud aliquam cons', '87', 'islammahfuz31@gmail.com', 'Pending', 'Et rerum molestiae h', 25.00, 0.00, 1, 1, NULL, '2023-09-11 06:25:29', '2023-09-11 06:25:29'),
(29, 1, 'Marcia Myers', 'Joelle Oconnor', 'Conley Daniels Inc', NULL, 'Similique sint nobi', 'Tenetur reprehenderi', 'Do nesciunt enim eo', 'Minim delectus magn', 'AG', 'Voluptas lorem expli', '10', 'islammahfuz31@gmail.com', 'Pending', 'Pariatur Nisi quia', 260.00, 0.00, 1, 1, NULL, '2023-09-11 06:30:24', '2023-09-11 06:30:24'),
(30, 1, 'Marcia Myers', 'Joelle Oconnor', 'Conley Daniels Inc', NULL, 'Similique sint nobi', 'Tenetur reprehenderi', 'Do nesciunt enim eo', 'Minim delectus magn', 'AG', 'Voluptas lorem expli', '10', 'islammahfuz31@gmail.com', 'Pending', 'Pariatur Nisi quia', 260.00, 0.00, 1, 1, NULL, '2023-09-11 06:31:17', '2023-09-11 06:31:17'),
(31, 1, 'Hermione Boyer', 'Brett Mcdaniel', 'Talley and Ellis Associates', NULL, 'Fugiat voluptates do', 'Illum aliquid dolor', 'Laborum Aliquid dis', 'Voluptatem neque sae', 'DO', 'Molestiae modi eius', '69', 'islammahfuz31@gmail.com', 'Pending', 'Possimus obcaecati', 50.00, 0.00, 1, 1, NULL, '2023-09-11 06:57:54', '2023-09-11 06:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `otp_varifications`
--

CREATE TABLE `otp_varifications` (
  `id` bigint UNSIGNED NOT NULL,
  `otp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp_varifications`
--

INSERT INTO `otp_varifications` (`id`, `otp`, `type`, `username`, `email`, `password`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, '719318', 'Customer', 'admin@gmail.com', 'mdislamnoyon3@gmail.com', '$2y$10$B7C8EvXkCNZwLsnyx4mEDeaGuC6CzSx58m6qdTSDHGloL.DSjVBKa', '2023-08-25 13:27:53', '2023-08-25 13:25:53', '2023-08-25 13:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `card_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` bigint DEFAULT NULL,
  `expiry_month` bigint DEFAULT NULL,
  `expiry_year` bigint DEFAULT NULL,
  `card_cvc` bigint DEFAULT NULL,
  `stripeToken` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `card_name`, `card_number`, `expiry_month`, `expiry_year`, `card_cvc`, `stripeToken`, `amount`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1NhQykSAN6jKDLrcExUPmrO7', 816.00, NULL, '2023-08-21 05:48:44', '2023-08-21 05:48:44'),
(2, 2, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1NhRvsSAN6jKDLrc0GuQ5Bkq', 371.00, NULL, '2023-08-21 06:49:49', '2023-08-21 06:49:49'),
(3, 3, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1NiL1eSAN6jKDLrcUrapnulN', 541.00, NULL, '2023-08-23 17:39:37', '2023-08-23 17:39:37'),
(4, 4, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1NiL6JSAN6jKDLrc2gapHnEO', 2698.00, NULL, '2023-08-23 17:44:18', '2023-08-23 17:44:18'),
(5, 5, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1NkUFcSAN6jKDLrc1txkvuOm', 45.00, NULL, '2023-08-29 15:54:51', '2023-08-29 15:54:51'),
(6, 6, 'ahad', 4242424242424242, 12, 2027, 123, 'tok_1NkUKoSAN6jKDLrcLuy2CEvX', 90.00, NULL, '2023-08-29 16:00:09', '2023-08-29 16:00:09'),
(7, 7, 'ahad', 4242424242424242, 12, 2026, 123, 'tok_1NkW1zSAN6jKDLrcb7BIrAzI', 20.00, NULL, '2023-08-29 17:48:50', '2023-08-29 17:48:50'),
(8, 8, 'ahad', 4242424242424242, 12, 2026, 123, 'tok_1NlF8USAN6jKDLrcgDZvDvfk', 45.00, NULL, '2023-08-31 17:58:32', '2023-08-31 17:58:32'),
(9, 9, 'ahad', 4242424242424242, 12, 2026, 123, 'tok_1NmsYrSAN6jKDLrcQMaFmy0Z', 20.00, NULL, '2023-09-05 06:16:38', '2023-09-05 06:16:38'),
(10, 10, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1No94oSAN6jKDLrc31jPJ7PZ', 20.00, NULL, '2023-09-08 18:06:49', '2023-09-08 18:06:49'),
(11, 11, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1No9VKSAN6jKDLrcIH2YZiib', 25.00, NULL, '2023-09-08 18:34:10', '2023-09-08 18:34:10'),
(12, 12, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1NoJ1dSAN6jKDLrcoi7jDAsH', 25.00, NULL, '2023-09-09 04:44:09', '2023-09-09 04:44:09'),
(13, 13, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1NoTpNSAN6jKDLrc7381AH3k', 55.00, NULL, '2023-09-09 16:16:17', '2023-09-09 16:16:17'),
(14, 14, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1NoTyRSAN6jKDLrcnhdRKSnr', 125.00, NULL, '2023-09-09 16:25:33', '2023-09-09 16:25:33'),
(15, 15, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np2FQSAN6jKDLrc4KsRN8KZ', 70.00, NULL, '2023-09-11 05:01:28', '2023-09-11 05:01:28'),
(16, 16, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np2GoSAN6jKDLrcsd92TvbJ', 210.00, NULL, '2023-09-11 05:02:50', '2023-09-11 05:02:50'),
(17, 17, 'ahad', 4242424242424242, 12, 2023, 123, 'tok_1Np2LnSAN6jKDLrczR3zR4Ei', 175.00, NULL, '2023-09-11 05:07:58', '2023-09-11 05:07:58'),
(18, 18, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np2NYSAN6jKDLrcsztRLXVW', 175.00, NULL, '2023-09-11 05:09:47', '2023-09-11 05:09:47'),
(19, 19, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3DwSAN6jKDLrcT5xNriMx', 175.00, NULL, '2023-09-11 06:03:55', '2023-09-11 06:03:55'),
(20, 20, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3GGSAN6jKDLrcFc9HPdD0', 175.00, NULL, '2023-09-11 06:06:19', '2023-09-11 06:06:19'),
(21, 21, 'ahad', 4242424242424242, 12, 2026, 1423, 'tok_1Np3JHSAN6jKDLrcJA5BOmJr', 175.00, NULL, '2023-09-11 06:09:26', '2023-09-11 06:09:26'),
(22, 22, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3McSAN6jKDLrcQzpsuAOd', 175.00, NULL, '2023-09-11 06:12:53', '2023-09-11 06:12:53'),
(23, 23, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3NuSAN6jKDLrcI2tQDO9E', 175.00, NULL, '2023-09-11 06:14:13', '2023-09-11 06:14:13'),
(24, 24, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3RfSAN6jKDLrczvmXtjL9', 100.00, NULL, '2023-09-11 06:18:05', '2023-09-11 06:18:05'),
(25, 25, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3TVSAN6jKDLrczoCNY863', 100.00, NULL, '2023-09-11 06:20:00', '2023-09-11 06:20:00'),
(26, 26, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3U6SAN6jKDLrcxGfgQ5Il', 100.00, NULL, '2023-09-11 06:20:36', '2023-09-11 06:20:36'),
(27, 27, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3VBSAN6jKDLrcel5A3wI0', 230.00, NULL, '2023-09-11 06:21:44', '2023-09-11 06:21:44'),
(28, 28, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3YoSAN6jKDLrcsTRlxWvZ', 25.00, NULL, '2023-09-11 06:25:29', '2023-09-11 06:25:29'),
(29, 29, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3daSAN6jKDLrc7K7DUKj1', 260.00, NULL, '2023-09-11 06:30:25', '2023-09-11 06:30:25'),
(30, 30, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np3eQSAN6jKDLrcp0AWSkJT', 260.00, NULL, '2023-09-11 06:31:17', '2023-09-11 06:31:17'),
(31, 31, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1Np44ASAN6jKDLrcWBeTCDm5', 50.00, NULL, '2023-09-11 06:57:54', '2023-09-11 06:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment_apis`
--

CREATE TABLE `payment_apis` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1=stripe, 2=paypal',
  `mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1=sendbox, 2=live',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_apis`
--

INSERT INTO `payment_apis` (`id`, `payment_type`, `mode`, `client_id`, `client_secret`, `app_id`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '2', 'magnam', 'magnam', 'magnams', 0, 1, NULL, NULL, '2023-08-22 06:48:05', '2023-08-22 06:48:39'),
(2, '1', '2', 'maxime', 'maxime', 'maxime', 0, 1, NULL, NULL, '2023-08-22 06:48:39', '2023-08-22 06:49:01'),
(3, '1', '1', 'volupt', 'volupt', 'volupt', 1, 1, NULL, NULL, '2023-08-22 06:49:01', '2023-08-22 06:49:01'),
(4, '2', '1', 'omni', 'omni', 'omni', 0, 1, NULL, NULL, '2023-08-22 06:49:27', '2023-08-22 06:49:51'),
(5, '2', '1', 'molestiae', 'molestiae', 'molestiae', 0, 1, NULL, NULL, '2023-08-22 06:49:51', '2023-08-22 06:50:18'),
(6, '2', '2', 'live', 'live', 'live', 1, 1, NULL, NULL, '2023-08-22 06:50:18', '2023-08-22 06:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinned` tinyint(1) NOT NULL DEFAULT '0',
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

INSERT INTO `products` (`id`, `thumbnail`, `category_id`, `sub_category_id`, `name`, `slug`, `pinned`, `selling_price`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'public/uploads/1774671905556006.png', 3, 4, 'Gail Vaughns', 'gail-vaughns', 0, 816.00, 0, 1, 1, NULL, '2023-08-19 15:30:16', '2023-08-24 14:24:24'),
(2, 'public/uploads/1775120910147989.jpg', 3, 4, 'Gmail Acoount', 'gmail-acoount', 1, 100.00, 1, 1, 1, NULL, '2023-08-19 15:30:55', '2023-08-24 14:28:49'),
(3, 'public/uploads/1775122067584536.jpg', 6, 7, 'Facebook Account', 'facebook-account', 1, 20.00, 1, 1, 1, NULL, '2023-08-19 15:31:20', '2023-08-24 14:45:24'),
(4, 'public/uploads/1775121607822087.jpg', 3, 5, 'Bulk Gmail Account', 'bulk-gmail-account', 1, 10.00, 1, 1, 1, NULL, '2023-08-19 15:31:41', '2023-08-24 14:38:06'),
(5, 'public/uploads/1775121564864176.jpeg', 6, 8, 'Facebook Group', 'facebook-group', 1, 50.00, 1, 1, 1, NULL, '2023-08-19 15:32:03', '2023-08-24 14:37:25'),
(6, 'public/uploads/1774672042894813.png', 6, 2, 'Brody Adamss', 'brody-adamss', 0, 697.00, 1, 1, 1, NULL, '2023-08-19 15:32:27', '2023-08-29 05:15:40'),
(7, 'public/uploads/1775122518500155.jpg', 3, 9, 'Google Drive Storage', 'google-drive-storage', 1, 25.00, 1, 1, 1, NULL, '2023-08-19 15:32:51', '2023-08-24 14:52:34'),
(8, 'public/uploads/1775122763633945.jpg', 6, 10, 'Facebook Page', 'facebook-page', 1, 30.00, 1, 1, 1, NULL, '2023-08-19 15:32:52', '2023-08-24 14:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_advantages`
--

CREATE TABLE `product_advantages` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, 1, '5465456', 1, 1, NULL, '2023-06-16 11:46:20', '2023-06-11 11:35:01', '2023-06-16 11:46:20'),
(5, 2, '100 GMAIL Accounts', 1, 1, NULL, NULL, '2023-08-24 14:27:31', '2023-08-24 14:27:31'),
(6, 2, '100% Real', 1, 1, NULL, NULL, '2023-08-24 14:27:46', '2023-08-24 14:27:46'),
(7, 2, 'Fast Delivery with 48 hours', 1, 1, NULL, NULL, '2023-08-24 14:27:57', '2023-08-24 14:27:57'),
(8, 2, 'Replacement policy', 1, 1, NULL, NULL, '2023-08-24 14:28:07', '2023-08-24 14:28:07'),
(9, 2, 'Satisfaction Guaranteed', 1, 1, NULL, NULL, '2023-08-24 14:28:14', '2023-08-24 14:28:14'),
(10, 5, '100 Facebook Group', 1, 1, 1, NULL, '2023-08-24 14:38:36', '2023-08-24 14:39:08'),
(11, 5, '100% Real', 1, 1, NULL, NULL, '2023-08-24 14:39:19', '2023-08-24 14:39:19'),
(12, 5, 'Fast Delivery with 48 hours', 1, 1, NULL, NULL, '2023-08-24 14:39:26', '2023-08-24 14:39:26'),
(13, 5, 'Replacement policy', 1, 1, NULL, NULL, '2023-08-24 14:39:34', '2023-08-24 14:39:34'),
(14, 5, 'Satisfaction Guaranteed', 1, 1, NULL, NULL, '2023-08-24 14:39:41', '2023-08-24 14:39:41'),
(15, 3, '500 Bulk Account', 1, 1, NULL, '2023-08-24 14:41:53', '2023-08-24 14:40:55', '2023-08-24 14:41:53'),
(16, 3, '100% Real', 1, 1, NULL, NULL, '2023-08-24 14:41:04', '2023-08-24 14:41:04'),
(17, 3, 'Fast Delivery with 48 hours', 1, 1, NULL, NULL, '2023-08-24 14:41:13', '2023-08-24 14:41:13'),
(18, 3, 'Replacement policy', 1, 1, NULL, NULL, '2023-08-24 14:41:19', '2023-08-24 14:41:19'),
(19, 3, 'Satisfaction Guaranteed', 1, 1, NULL, NULL, '2023-08-24 14:41:26', '2023-08-24 14:41:26'),
(20, 4, '500 Bulk Account', 1, 1, NULL, NULL, '2023-08-24 14:42:30', '2023-08-24 14:42:30'),
(21, 4, '100% Real', 1, 1, NULL, NULL, '2023-08-24 14:42:39', '2023-08-24 14:42:39'),
(22, 4, 'Fast Delivery with 48 hours', 1, 1, NULL, NULL, '2023-08-24 14:42:44', '2023-08-24 14:42:44'),
(23, 4, 'Replacement policy', 1, 1, NULL, NULL, '2023-08-24 14:42:54', '2023-08-24 14:42:54'),
(24, 4, 'Satisfaction Guaranteed', 1, 1, NULL, NULL, '2023-08-24 14:43:17', '2023-08-24 14:43:17'),
(25, 3, 'Old Account', 1, 1, NULL, NULL, '2023-08-24 14:46:39', '2023-08-24 14:46:39'),
(26, 7, '500 Google Drive', 1, 1, NULL, NULL, '2023-08-24 14:53:21', '2023-08-24 14:53:21'),
(27, 7, '100 Gb Storage', 1, 1, NULL, NULL, '2023-08-24 14:53:40', '2023-08-24 14:53:40'),
(28, 7, 'Fast Delivery with 48 hours', 1, 1, NULL, NULL, '2023-08-24 14:53:46', '2023-08-24 14:53:46'),
(29, 7, 'Replacement policy', 1, 1, NULL, NULL, '2023-08-24 14:53:53', '2023-08-24 14:53:53'),
(30, 7, 'Satisfaction Guaranteed', 1, 1, NULL, NULL, '2023-08-24 14:54:00', '2023-08-24 14:54:00'),
(31, 8, '100 Facebook Pages', 1, 1, NULL, NULL, '2023-08-24 14:56:55', '2023-08-24 14:56:55'),
(32, 8, '100% Real', 1, 1, NULL, NULL, '2023-08-24 14:57:01', '2023-08-24 14:57:01'),
(33, 8, 'Fast Delivery with 48 hours', 1, 1, NULL, NULL, '2023-08-24 14:57:07', '2023-08-24 14:57:07'),
(34, 8, 'Replacement policy', 1, 1, NULL, NULL, '2023-08-24 14:57:11', '2023-08-24 14:57:11'),
(35, 8, 'Satisfaction Guaranteed', 1, 1, NULL, NULL, '2023-08-24 14:57:16', '2023-08-24 14:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `product_descriptions`
--

CREATE TABLE `product_descriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 1, '<h2>Instagram Accounts Buy for Sale</h2><p><a href=\"http://localhost/altab_mail_sell/product/ghutmil-management#\">Instagram</a> is one of the top social networking gates for sharing photos where users can apply different filters to take photos and make it more interesting and can share them on many social networks such as Reddit, Facebook, and Twitter, Tested and especially functional PVA S account.So,you can <strong>Instagram Accounts </strong><a href=\"http://localhost/altab_mail_sell/product/ghutmil-management#\"><strong>Buy</strong></a><strong> for Sale</strong> from us.</p><p><br> </p><p>You can order many PVA accounts from us. You will be amazed when you know that each account is created with a unique IP address and we will deliver it after we check it thoroughly. All the PVA accounts we have created are just examples of absolute accuracy and absolute technology.</p><p><br> </p><p>If you are interested in buying PVA accounts you can get it from us by enjoying attractive prices and offers. Mass PVA Instagram accounts can be the perfect tool for your business and personal needs. Our great packages for mass PVA Instagram accounts are always there to help you so you can buy Instagram PVA accounts in no time.</p><h2>Instagram account for sale</h2><p><img src=\"http://localhost/altab_mail_sell/frontend/assets/images/all-images/insta-1.png\" alt=\"\"></p><p>Photos and videos can speak louder and more confidently. Thus, <a href=\"http://localhost/altab_mail_sell/product/ghutmil-management#\"><strong>Instagram</strong></a> is gaining popularity for business promotion. Our Instagram accounts can be the right incentive to promote your exclusive clicks or sell your brand.</p><p>In addition to providing Instagram <a href=\"http://localhost/altab_mail_sell/product/ghutmil-management#\"><strong>accounts for sale</strong></a>, we also add followers to Instagram accounts according to the needs of our customers. Marketing and promotion strategies are changing. That’s why you need a smart and effective way to promote your business and You can get many offers at cheap prices, but such businesses may not meet your business goals. Therefore, we have created the most revolutionary and effectively designed Instagram account.</p><p>Anyone can use these accounts to increase the number of followers and tags “I like”. This will help you create a reliable and growing platform for your <a href=\"http://localhost/altab_mail_sell/product/ghutmil-management#\"><strong>business socially</strong></a>. If your business needs a huge number of Instagram followers on Instagram, this can be done very easily, because our experts are always ready to meet your personal needs. You can understand Instagram accounts at a very competitive price. Your experts are available 24×7 to solve all your questions and problems.</p>', 1, 1, 1, NULL, '2023-06-11 10:52:04', '2023-06-11 11:46:22'),
(2, 2, '<h3>Introductions</h3>\r\n\r\n<p><strong>Gmail</strong>&nbsp;is a free esail service provided by Google. In many ways, Gmail is like any other email service: You can&nbsp;<strong>send and receive emails</strong>,&nbsp;<strong>block spam</strong>, create an&nbsp;<strong>address book</strong>, and perform other basic email tasks. But it also has some more unique features that help make it one of the most popular online email services.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Google accounts</h3>\r\n\r\n<p>Creating a&nbsp;<strong>Google account</strong>&nbsp;is needed to access&nbsp;<strong>Gmail</strong>&nbsp;because it is just one of the many services offered by Google to registered users. Signing up for a Google account is free and easy, and naming your new&nbsp;<strong>Gmail address</strong>&nbsp;will be a part of the sign-up process. This means whenever you&#39;re signed in to Gmail, you are automatically signed in to your Google account. You&#39;ll be able to easily access other Google services like&nbsp;<strong>Google Docs</strong>,&nbsp;<strong>Calendar</strong>, and<strong>&nbsp;YouTube</strong>.</p>', 1, 1, 1, NULL, '2023-08-24 16:07:52', '2023-08-24 16:20:18'),
(3, 3, '<h1>What is a Facebook Profile?</h1>\r\n\r\n<p><strong>Definition</strong>: A Facebook profile is an individual&#39;s personal account, where he or she can post updates, upload photos, share videos, maintain a friends list and provide personal information. Though &quot;profile&quot; is often used to refer to the page of both personal or professional accounts, businesses have Facebook &quot;Pages&quot; which offer advertising features.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>profiles have&nbsp;<strong>friends</strong>. Pages can invite users to&nbsp;<strong>follow</strong>&nbsp;their page as a fan.</p>\r\n\r\n<p>Profiles are for intended strictly for individual people only and are meant for non-commercial purposes. In fact, to use one for commercial gain is a violation of&nbsp;<a href=\"https://www.facebook.com/legal/terms\" target=\"_blank\">Facebook&#39;s terms of service</a>&nbsp;and can get the account suspended.</p>\r\n\r\n<p>Pages, by contrast, resemble profiles, but are meant for businesses and organizations. Pages can run Facebook ads and promotions. Pages must be affiliated with at least one profile, so for business owners uninitiated to Facebook, creating a personal profile is a prerequisite. However, Facebook allows users to&nbsp;<a href=\"https://www.facebook.com/help/116067818477568\" target=\"_blank\">convert your profile into a page</a>, which will carry over all of your followers and friends.</p>', 1, 1, NULL, NULL, '2023-08-24 16:33:43', '2023-08-24 16:33:43'),
(4, 8, '<h2>What Does Facebook Page Mean?</h2>\r\n\r\n<p>A Facebook page is a public profile created by businesses, organizations, celebrities and anyone seeking to promote themselves publicly through social media. Facebook pages work much like personal profile pages, except that they have &ldquo;fans&rdquo; instead of &ldquo;friends.&rdquo; These pages are publicly visible online and often post status updates, links, events, photos and videos to their fans&rsquo; news feeds and walls.</p>\r\n\r\n<p>Facebook pages provide a way for businesses and other organizations to interact with &ndash; rather than just advertise to &ndash; potential customers. They also provides a simple hub of information about the page&rsquo;s owner.</p>\r\n\r\n<p>Pages are&nbsp;<strong>places on Facebook where artists, public figures, businesses, brands, organizations and nonprofits can connect with their fans or customers</strong>. When someone likes or follows a Page on Facebook, they can start seeing updates from that Page in their Feed. To see an example of a Page, see the screenshot below.</p>', 1, 1, NULL, NULL, '2023-08-24 16:36:01', '2023-08-24 16:36:01'),
(5, 7, '<h3>What is Google Drive?</h3>\r\n\r\n<p>Google Drive is a cloud-based storage service that enables users to store and access files online. The service syncs stored documents, photos and more across all the user&#39;s devices, including mobile devices, tablets and PCs.</p>\r\n\r\n<p>Google Drive integrates with the company&#39;s other services and systems -- including&nbsp;<a href=\"https://www.techtarget.com/whatis/definition/Google-Docs\">Google Docs</a>, Gmail, Android,&nbsp;<a href=\"https://www.techtarget.com/whatis/definition/Google-Chrome-OS\">Chrome</a>, YouTube,&nbsp;<a href=\"https://www.techtarget.com/searchbusinessanalytics/definition/Google-Analytics\">Google Analytics</a>&nbsp;and&nbsp;<a href=\"https://www.techtarget.com/whatis/definition/Google-plus\">Google+</a>. Google Drive competes with Microsoft OneDrive, Apple iCloud, Box, Dropbox and SugarSync.</p>\r\n\r\n<h3>How does Google Drive work?</h3>\r\n\r\n<p>To get started with Google Drive, the user must create or sign in to a Google account. Then, the user types&nbsp;<em>drive.google.com</em>&nbsp;into their browser. My Drive will automatically appear, which can contain uploaded or synced files and folders, as well as&nbsp;<a href=\"https://www.techtarget.com/whatis/definition/Google-Spreadsheets\">Google Sheets</a>, Google Slides and Google Docs files. Then, the user can either upload files from their computer or create files in Google Drive.</p>\r\n\r\n<p>Alternatively, the user can download a Google Drive application to one or more devices. A Google Drive folder will appear along with other folders in each device&#39;s file system. Files that the user adds to one folder are available through a Google Drive web app or the Google Drive folder on each device.</p>\r\n\r\n<p>When a user creates a file or folder, they become its&nbsp;<em>owner</em>&nbsp;by default. The owner can control the level of visibility -- public or privately shared with specific Google accounts -- and transfer ownership to another user using Gmail addresses. The owner can also regulate permissions for both folders and files, using access levels such as&nbsp;<em>editor</em>,&nbsp;<em>viewer</em>&nbsp;and&nbsp;<em>commenter</em>.</p>', 1, 1, NULL, NULL, '2023-08-24 16:51:13', '2023-08-24 16:51:13'),
(6, 5, '<h2><strong>How to write a Facebook Group Description?</strong></h2>\r\n\r\n<p><em>&ldquo;Your group description should state the intent of your group clearly to help new members understand how to best contribute and engage,&rdquo;</em>&nbsp;says&nbsp;<a href=\"https://www.facebook.com/community/getting-started-with-groups/how-to-set-up-a-facebook-group/\" rel=\"noopener\" target=\"_blank\">Facebook</a>.</p>\r\n\r\n<p>In addition to that, one thing that you CANNOT miss out on is:</p>\r\n\r\n<p>Telling potential members what makes your group unique and the things existing members identify with.</p>\r\n\r\n<p>Doing this makes it easier for them to decide whether or not they should join your group.</p>\r\n\r\n<p>Hence, it&rsquo;s absolutely a no-brainer.</p>\r\n\r\n<p>Sharing with you our learnings on how to write the best description for your group on Facebook.</p>\r\n\r\n<h3><strong>Things to keep in mind to write the best group description for Facebook</strong></h3>\r\n\r\n<h4><strong>1. Include a mission statement&nbsp;</strong></h4>\r\n\r\n<p>No Facebook group description is ever COMPLETE without a mission statement.</p>\r\n\r\n<p>Now, what&rsquo;s exactly a mission statement?</p>\r\n\r\n<p>To put it simply, a mission statement is something that explains very clearly: your reason for starting the group and what you intend to achieve with it.</p>\r\n\r\n<p>If you&rsquo;ve done this well, half your job of getting people to hit that join button is done.</p>\r\n\r\n<p>Have a look at the description of our&nbsp;<a href=\"https://www.facebook.com/groups/fbgroupgrowth\" rel=\"noopener\" target=\"_blank\">Facebook group</a>. Tamanna Dhamija (CEO and Founder of&nbsp;<a href=\"https://www.convosight.com/\">Convosight</a>) started this group in May 2020 and she has clearly stated:&nbsp;what led her to it&nbsp;and&nbsp;what she wishes to accomplish with the group.</p>', 1, 1, NULL, NULL, '2023-08-24 16:51:58', '2023-08-24 16:51:58'),
(7, 4, '<h1>Learn about bulk email best practices</h1>\r\n\r\n<p>When you send commercial or bulk emails, it&rsquo;s important to follow best practices that respect your recipient&#39;s inbox and follow local regulations and&nbsp;<a href=\"https://www.google.com/gmail/about/policy/\">Gmail policies</a>.</p>\r\n\r\n<p>To run an effective email campaign, messages you send should connect you and your recipients in a meaningful way. Check below for recommendations to help improve the effectiveness of your bulk emails.</p>\r\n\r\n<h2>Get your recipients&rsquo; consent</h2>\r\n\r\n<p>Many countries and regions have requirements to get consent before you send commercial emails to customers. Before you send them an email, it&rsquo;s best to get clear consent by giving customers the option to opt-in or subscribe to your email list.&nbsp;</p>\r\n\r\n<p>Many countries and regions also have requirements to provide a way for recipients to unsubscribe. If you&rsquo;re a Google Workspace Individual subscriber, you can use multi-send mode to send commercial or bulk emails that have an unsubscribe option built in.&nbsp;<a href=\"https://support.google.com/google-workspace-individual/answer/11243118\" rel=\"noopener\">Learn more about multi-send mode</a>.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Tip:&nbsp;</strong>Keep in mind that customers can&rsquo;t unsubscribe from certain kinds of messages, such as order confirmations and receipt messages.</p>\r\n\r\n<h2><a id=\"spam-warnings\" name=\"spam-warnings\"></a>Follow applicable SPAM laws</h2>\r\n\r\n<p>In many countries and regions, commercial or bulk emails must include information to identify the sender.&nbsp;</p>\r\n\r\n<p>If you are a Google Workspace Individual Subscriber that uses Gmail layouts, you can customize the footer content to include:</p>\r\n\r\n<ul>\r\n	<li>Business name&nbsp;</li>\r\n	<li>Business address&nbsp;</li>\r\n	<li>Phone number&nbsp;</li>\r\n</ul>', 1, 1, NULL, NULL, '2023-08-24 16:52:49', '2023-08-24 16:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 1, '<p>Showing results for <a href=\"https://www.google.com/search?sxsrf=APwXEdfyvFGngqbleB7HF9RxugA68pxSMQ:1686417077839&amp;q=ckeditor+5+value+pass+when+edit&amp;spell=1&amp;sa=X&amp;ved=2ahUKEwjCnfiWmbn_AhWtcmwGHaibD6MQkeECKAB6BAgJEAE\"><i><strong>ckeditor</strong></i> 5 value pass when edit</a><br>Search instead for <a href=\"https://www.google.com/search?sxsrf=APwXEdfyvFGngqbleB7HF9RxugA68pxSMQ:1686417077839&amp;q=ck+editor+5+value+pass+when+edit&amp;nfpr=1&amp;sa=X&amp;ved=2ahUKEwjCnfiWmbn_AhWtcmwGHaibD6MQvgUoAXoECAkQAg\">ck editor 5 value pass when edit</a><br> </p><h2>Search Results</h2><p><br> </p><h3><a href=\"https://ckeditor.com/docs/ckeditor5/latest/installation/getting-started/getting-and-setting-data.html\">Getting and setting data - CKEditor 5 Documentation</a></h3><figure class=\"image\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAB0klEQVR4Ae1XtVIEQRTcv8AlQ1L0AyAkgxCXFHfZBJcEl+gi3DPc3SHELcI1u8d2FYPvzdwuDq+qT1am+9mI9NQSbSgk2YYGFZwqoA/AYJINBUsvLdmSHO+J6ZOwCE6JGS7gxidj8GnY6SuAdEhaQl/jT7QxQXR7TnSyRzTXSJTvpTEK5rwguxCN1pGq9ZaYLeBUWEC3DI+Ja4hIU4y4CEkk3BjUXDtcQ1p0CMj3Rp5Jt/HqQ1Ih54Yb91EPIOCnBSKEBfA9B6ns8lQwTwjEigtQMQhDTWipF9SEkACESm+Lvd2qJ7u6BHBIOWPoFICXP00A8A0F/Au4Of+wJVl8HqgJ+GIBbC6QXVUGszVSjt8UFUe2qqBdXMDJLme5jX3+fJbHHhk6gqh910UVtVWp4gJAQEYyaU/X/IZpH5PkQJb7vrgAwBBGdMwioV7RCC2XvKooV9uGBCteb/HLaGDREfce9+G9BgEvltsGCMH34/UyuZzrfXFUG7cLhE9BEMI2FvCK6/2UL78NtZ6IKgvzqH3HVRWG9mCIFNmWaz+YgOAtpDtfCL2fys6Jyp8BXPhkLEjMUizJMUm5oFw0fgIxOAbAKb0wlg5Ew/gBOMHYLOzM7gBTgTg6TqwBDAAAAABJRU5ErkJggg==\" alt=\"\"></figure><p><a href=\"https://ckeditor.com/docs/ckeditor5/latest/installation/getting-started/getting-and-setting-data.html\">CKEditor</a></p><p><a href=\"https://ckeditor.com/docs/ckeditor5/latest/installation/getting-started/getting-and-setting-data.html\">https://ckeditor.com › installation › getting-started › g...</a></p><p> </p><p> </p><p><strong>CKEditor 5</strong> allows you to retrieve the data from and save it to your server ... Classic <strong>editor</strong> will automatically update the <strong>value</strong> of the &lt;textarea&gt; element&nbsp;...</p><p><br> </p><h3><a href=\"https://ckeditor.com/old/forums/Support/How-can-I-pass-values-plugin-when-editor-starts\">How can I pass values to a plugin when the editor starts up?</a></h3><p><a href=\"https://ckeditor.com/old/forums/Support/How-can-I-pass-values-plugin-when-editor-starts\">https://ckeditor.com › old › forums › Support › How-...</a></p><p> </p><p> </p><p>Jul 14, 2008 · 3 posts · 2 authors</p><p>I want to use the AddItem method to add the items dynamically when the <strong>editor</strong> instance is instantiated. ... oFCKeditor.myCustomValue = \'\"some&nbsp;...</p><p><br> </p><h3><a href=\"https://ckeditor.com/docs/ckeditor5/latest/framework/deep-dive/observables.html\">Observables - CKEditor 5 Documentation</a></h3><p><a href=\"https://ckeditor.com/docs/ckeditor5/latest/framework/deep-dive/observables.html\">https://ckeditor.com › latest › framework › deep-dive</a></p><p> </p><p> </p><p>Observables are objects which have properties that can be observed. That means when the <strong>value</strong> of such property changes, an event is fired by the observable and&nbsp;...</p>', 0, 1, 1, NULL, '2023-06-10 11:23:26', '2023-06-11 11:44:53'),
(3, 2, '<p><strong>Gmail sd</strong>&nbsp;is a free esail service provided by Google. In many ways, Gmail is like any other email service: You can&nbsp;<strong>send and receive emails</strong>,&nbsp;<strong>block spam</strong>, create an&nbsp;<strong>address book</strong></p>', 1, 1, 1, NULL, '2023-08-24 17:18:27', '2023-08-24 17:41:27'),
(4, 8, '<p>A Facebook page is a public profile created by businesses, organizations, celebrities and anyone seeking to promote themselves publicly through social media. Facebook pages work much like personal profile pages, except that they have &ldquo;fans&rdquo; instead of &ldquo;friends.&rdquo;</p>', 1, 1, NULL, NULL, '2023-08-24 17:42:28', '2023-08-24 17:42:28'),
(5, 7, '<p>Google Drive is a cloud-based storage service that enables users to store and access files online. The service syncs stored documents, photos and more across all the user&#39;s devices, including mobile devices, tablets and PCs</p>', 1, 1, NULL, NULL, '2023-08-24 17:43:07', '2023-08-24 17:43:07'),
(6, 5, '<p>&ldquo;Your group description should state the intent of your group clearly to help new members understand how to best contribute and engage,&rdquo;&nbsp;says&nbsp;<a href=\"https://www.facebook.com/community/getting-started-with-groups/how-to-set-up-a-facebook-group/\" rel=\"noopener\" target=\"_blank\">Facebook</a>.</p>', 1, 1, NULL, NULL, '2023-08-24 17:43:52', '2023-08-24 17:43:52'),
(7, 4, '<p>When you send commercial or bulk emails, it&rsquo;s important to follow best practices that respect your recipient&#39;s inbox and follow local regulations and&nbsp;<a href=\"https://www.google.com/gmail/about/policy/\">Gmail policies</a>.</p>', 1, 1, NULL, NULL, '2023-08-24 17:56:19', '2023-08-24 17:56:19'),
(8, 3, '<p>A Facebook profile is an individual&#39;s personal account, where he or she can post updates, upload photos, share videos, maintain a friends list and provide personal information.</p>', 1, 1, NULL, NULL, '2023-08-24 17:56:43', '2023-08-24 17:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_guarantees`
--

CREATE TABLE `product_guarantees` (
  `id` bigint UNSIGNED NOT NULL,
  `logo_type` tinyint(1) NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_guarantees`
--

INSERT INTO `product_guarantees` (`id`, `logo_type`, `logo`, `title`, `short_description`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6, 1, '<i class=\"fas fa-percent\"></i>', '100% Guarantee', 'We Provide You 100% guarantee about any products', 1, 1, 1, NULL, '2023-08-05 21:33:11', '2023-08-24 15:11:07'),
(7, 0, 'public/uploads/1775123915942991.png', 'Real Products', 'No doubt, Our products are real', 1, 1, 1, NULL, '2023-08-17 13:48:38', '2023-08-24 15:14:47'),
(8, 0, 'public/uploads/1774484338639535.png', 'Similique qui sunt', 'Sed quidem nostrud f', 1, 1, NULL, '2023-08-24 15:12:17', '2023-08-17 13:48:58', '2023-08-24 15:12:17'),
(9, 1, '<i class=\"fas fa-coins\"></i>', 'Money Back Gurantee', 'If any problem about money we back your money', 1, 1, 1, NULL, '2023-08-17 13:49:06', '2023-08-24 15:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint UNSIGNED NOT NULL,
  `date` timestamp NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `seller_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `per_price` double(8,2) NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `date`, `product_id`, `seller_id`, `quantity`, `per_price`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1990-07-11 03:12:00', 8, 1, 62, 354.00, 1, NULL, NULL, '2023-08-23 11:23:40', '2023-08-23 11:23:40'),
(2, '2011-08-16 07:43:00', 6, 2, 50, 411.00, 1, NULL, NULL, '2023-08-23 11:23:44', '2023-08-23 16:37:19'),
(3, '1993-03-11 12:08:00', 4, 1, 5, 366.00, 1, NULL, NULL, '2023-08-23 11:23:49', '2023-08-23 11:23:49'),
(4, '2023-08-23 01:44:00', 4, 1, 100, 757.00, 1, NULL, NULL, '2023-08-23 11:24:38', '2023-08-23 11:24:38'),
(5, '2012-12-07 07:55:00', 1, 3, 973, 202.00, 1, NULL, NULL, '2023-08-23 11:25:36', '2023-08-23 11:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `product_quantity` int NOT NULL,
  `sales_price` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_products`
--

INSERT INTO `purchase_products` (`id`, `order_id`, `product_id`, `product_quantity`, `sales_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 1, 541.00, NULL, '2023-08-23 17:39:37', '2023-08-23 17:39:37'),
(2, 4, 7, 2, 267.00, NULL, '2023-08-23 17:44:18', '2023-08-23 17:44:18'),
(3, 4, 4, 4, 541.00, NULL, '2023-08-23 17:44:18', '2023-08-23 17:44:18'),
(4, 5, 7, 2, 25.00, NULL, '2023-08-29 15:54:51', '2023-08-29 15:54:51'),
(5, 6, 7, 4, 25.00, NULL, '2023-08-29 16:00:09', '2023-08-29 16:00:09'),
(6, 7, 3, 1, 20.00, NULL, '2023-08-29 17:48:50', '2023-08-29 17:48:50'),
(7, 8, 7, 2, 25.00, NULL, '2023-08-31 17:58:32', '2023-08-31 17:58:32'),
(8, 9, 3, 1, 20.00, NULL, '2023-09-05 06:16:38', '2023-09-05 06:16:38'),
(9, 10, 3, 1, 20.00, NULL, '2023-09-08 18:06:49', '2023-09-08 18:06:49'),
(10, 11, 7, 1, 25.00, NULL, '2023-09-08 18:34:10', '2023-09-08 18:34:10'),
(11, 12, 7, 1, 25.00, NULL, '2023-09-09 04:44:09', '2023-09-09 04:44:09'),
(12, 13, 7, 1, 25.00, NULL, '2023-09-09 16:16:17', '2023-09-09 16:16:17'),
(13, 13, 8, 1, 30.00, NULL, '2023-09-09 16:16:17', '2023-09-09 16:16:17'),
(14, 14, 5, 2, 50.00, NULL, '2023-09-09 16:25:33', '2023-09-09 16:25:33'),
(15, 14, 7, 1, 25.00, NULL, '2023-09-09 16:25:33', '2023-09-09 16:25:33'),
(16, 15, 3, 2, 20.00, NULL, '2023-09-11 05:01:28', '2023-09-11 05:01:28'),
(17, 15, 8, 1, 30.00, NULL, '2023-09-11 05:01:28', '2023-09-11 05:01:28'),
(18, 16, 2, 2, 100.00, NULL, '2023-09-11 05:02:49', '2023-09-11 05:02:49'),
(19, 16, 4, 1, 10.00, NULL, '2023-09-11 05:02:50', '2023-09-11 05:02:50'),
(20, 17, 2, 1, 100.00, NULL, '2023-09-11 05:07:58', '2023-09-11 05:07:58'),
(21, 17, 7, 3, 25.00, NULL, '2023-09-11 05:07:58', '2023-09-11 05:07:58'),
(22, 18, 2, 1, 100.00, NULL, '2023-09-11 05:09:47', '2023-09-11 05:09:47'),
(23, 18, 7, 3, 25.00, NULL, '2023-09-11 05:09:47', '2023-09-11 05:09:47'),
(24, 19, 2, 1, 100.00, NULL, '2023-09-11 06:03:55', '2023-09-11 06:03:55'),
(25, 19, 7, 3, 25.00, NULL, '2023-09-11 06:03:55', '2023-09-11 06:03:55'),
(26, 20, 2, 1, 100.00, NULL, '2023-09-11 06:06:19', '2023-09-11 06:06:19'),
(27, 20, 7, 3, 25.00, NULL, '2023-09-11 06:06:19', '2023-09-11 06:06:19'),
(28, 21, 2, 1, 100.00, NULL, '2023-09-11 06:09:26', '2023-09-11 06:09:26'),
(29, 21, 7, 3, 25.00, NULL, '2023-09-11 06:09:26', '2023-09-11 06:09:26'),
(30, 22, 2, 1, 100.00, NULL, '2023-09-11 06:12:53', '2023-09-11 06:12:53'),
(31, 22, 7, 3, 25.00, NULL, '2023-09-11 06:12:53', '2023-09-11 06:12:53'),
(32, 23, 2, 1, 100.00, NULL, '2023-09-11 06:14:13', '2023-09-11 06:14:13'),
(33, 23, 7, 3, 25.00, NULL, '2023-09-11 06:14:13', '2023-09-11 06:14:13'),
(34, 24, 2, 1, 100.00, NULL, '2023-09-11 06:18:05', '2023-09-11 06:18:05'),
(35, 25, 2, 1, 100.00, NULL, '2023-09-11 06:20:00', '2023-09-11 06:20:00'),
(36, 26, 2, 1, 100.00, NULL, '2023-09-11 06:20:36', '2023-09-11 06:20:36'),
(37, 27, 2, 2, 100.00, NULL, '2023-09-11 06:21:44', '2023-09-11 06:21:44'),
(38, 27, 8, 1, 30.00, NULL, '2023-09-11 06:21:44', '2023-09-11 06:21:44'),
(39, 28, 7, 1, 25.00, NULL, '2023-09-11 06:25:29', '2023-09-11 06:25:29'),
(40, 29, 2, 2, 100.00, NULL, '2023-09-11 06:30:25', '2023-09-11 06:30:25'),
(41, 29, 8, 2, 30.00, NULL, '2023-09-11 06:30:25', '2023-09-11 06:30:25'),
(42, 30, 2, 2, 100.00, NULL, '2023-09-11 06:31:17', '2023-09-11 06:31:17'),
(43, 30, 8, 2, 30.00, NULL, '2023-09-11 06:31:17', '2023-09-11 06:31:17'),
(44, 31, 5, 1, 50.00, NULL, '2023-09-11 06:57:54', '2023-09-11 06:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `name`, `email`, `customer_review`, `product_slug`, `parent`, `date`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 'Harriet Wilkerson', 'muvoporoxy@mailinator.com', 'Laudantium culpa f', 'master-bulk-account', '0', '2023-08-14 13:04:30', 1, 1, NULL, NULL, '2023-08-14 07:04:30', '2023-08-14 07:04:30'),
(2, 2, 'Virginia Byers', 'nylavuty@mailinator.com', 'Ut repellendus DoloUt repellendus Dolo Ut repellendus Dolo Ut repellendus Dolo Ut repellendus Dolo Ut repellendus Dolo Ut repellendus Dolo Ut repellendus Dolo', 'master-bulk-account', '0', '2023-08-14 13:04:56', 1, 1, NULL, NULL, '2023-08-14 07:04:56', '2023-08-14 07:04:56'),
(3, 2, 'Yuri Brewer', 'wagazebepi@mailinator.com', 'Qui error commodi ve', 'ghutmil-management', '0', '2023-08-15 04:43:02', 1, 1, NULL, NULL, '2023-08-14 22:43:02', '2023-08-14 22:43:02'),
(4, 2, 'Joel Waters', 'jufax@mailinator.com', 'Illum provident qu', 'google-account-pva', '0', '2023-08-17 22:17:24', 1, 1, NULL, NULL, '2023-08-17 16:17:24', '2023-08-17 16:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint UNSIGNED NOT NULL,
  `seller_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `seller_name`, `address`, `phone`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Thomas Fields', 'Minima duis voluptat', '+1 (673) 794-9257', 1, 1, 1, NULL, '2023-08-16 23:38:59', '2023-08-18 15:35:00'),
(2, 'Calista Osborne', 'Dolorem consectetur', '+1 (239) 735-5851', 1, 1, 1, NULL, '2023-08-16 23:39:03', '2023-08-16 23:39:06'),
(3, 'Axel Dickerson', 'Non repudiandae non', '+1 (871) 503-4049', 0, 1, NULL, NULL, '2023-08-16 23:39:11', '2023-08-16 23:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `send_msg_customers`
--

CREATE TABLE `send_msg_customers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `templete_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `send_msg_customers`
--

INSERT INTO `send_msg_customers` (`id`, `email`, `templete_name`, `subject`, `message`, `visit_link`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'mahfujul.dev@gmail.com', '1', 'Soluta laborum Culp', '<p>as their primary communication channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking f</p>', 'https://www.facebook.com/', 1, NULL, '2023-08-22 15:30:12', '2023-08-22 15:06:16', '2023-08-22 15:30:12'),
(2, 'islammahfuz31@gmail.com', '1', 'Soluta laborum Culp', '<p>as their primary communication channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking f</p>', 'https://www.facebook.com/', 1, NULL, '2023-08-22 15:30:12', '2023-08-22 15:06:19', '2023-08-22 15:30:12'),
(3, 'mahfujul.dev@gmail.com', '1', 'Soluta laborum Culp', '<p>as their primary communication channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking f</p>', 'https://www.facebook.com/', 1, NULL, NULL, '2023-08-22 15:40:33', '2023-08-22 15:40:33'),
(4, 'islammahfuz31@gmail.com', '1', 'Soluta laborum Culp', '<p>as their primary communication channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking f</p>', 'https://www.facebook.com/', 1, NULL, NULL, '2023-08-22 15:40:37', '2023-08-22 15:40:37'),
(5, 'saiful.is00007@gmail.com', '1', 'Pvashop', '<p>Thanks for letting us.</p>', 'https://www.facebook.com/', 1, NULL, '2023-08-23 04:37:14', '2023-08-22 16:38:10', '2023-08-23 04:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_img_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_side` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `slug`, `title`, `description`, `keywords`, `published_time`, `modified_time`, `expiration_time`, `author`, `section`, `canonical`, `og_locale`, `og_url`, `og_type`, `image`, `image_url`, `link_img_size`, `image_height`, `image_width`, `twitter_side`, `type`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Home', NULL, NULL, '2023-08-29 10:50:00', '2023-08-29 10:50:00', '2023-08-29 10:50:00', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-29 04:50:00', '2023-08-29 04:50:00'),
(2, 'product', 'Product', NULL, NULL, '2023-08-29 10:50:38', '2023-08-29 10:50:38', '2023-08-29 10:50:38', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-29 04:50:38', '2023-08-29 04:50:38'),
(3, 'faq', 'FAQ', NULL, NULL, '2023-08-29 10:51:49', '2023-08-29 10:51:49', '2023-08-29 10:51:49', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-29 04:51:49', '2023-08-29 04:51:49'),
(4, 'about-us', 'About Us', NULL, NULL, '2023-08-29 10:52:01', '2023-08-29 10:52:01', '2023-08-29 10:52:01', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-29 04:52:01', '2023-08-29 04:52:01'),
(5, 'disclaimer', 'Disclaimer', NULL, NULL, '2023-08-29 10:52:18', '2023-08-29 10:52:18', '2023-08-29 10:52:18', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-29 04:52:18', '2023-08-29 04:52:18'),
(6, 'terms-of-service', 'Terms Of Service', NULL, NULL, '2023-08-29 10:52:34', '2023-08-29 10:52:34', '2023-08-29 10:52:34', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-29 04:52:34', '2023-08-29 04:52:34'),
(7, 'privacy-policy', 'Privacy Policy', NULL, NULL, '2023-08-29 10:52:54', '2023-08-29 10:52:54', '2023-08-29 10:52:54', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-29 04:52:54', '2023-08-29 04:52:54'),
(8, 'refund-policy', 'Refund Policy', NULL, NULL, '2023-08-29 10:53:12', '2023-08-29 10:53:12', '2023-08-29 10:53:12', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-29 04:53:12', '2023-08-29 04:53:12'),
(9, 'contact-us', 'Contact Us', NULL, NULL, '2023-08-29 10:54:39', '2023-08-29 10:54:39', '2023-08-29 10:54:39', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-29 04:54:39', '2023-08-29 04:54:39'),
(10, 'google-account', 'Google Account', NULL, NULL, '2023-08-29 11:03:44', '2023-08-29 11:03:44', '2023-08-29 11:03:44', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sub_category', 1, NULL, NULL, '2023-08-29 05:03:44', '2023-08-29 05:03:44'),
(11, 'google-bulk-account', 'Google Bulk Account', NULL, NULL, '2023-08-29 11:04:52', '2023-08-29 11:04:52', '2023-08-29 11:04:52', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sub_category', 1, NULL, NULL, '2023-08-29 05:04:52', '2023-08-29 05:04:52'),
(12, 'google-drive', 'Google Drive', NULL, NULL, '2023-08-29 11:05:33', '2023-08-29 11:05:33', '2023-08-29 11:05:33', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sub_category', 1, NULL, NULL, '2023-08-29 05:05:33', '2023-08-29 05:05:33'),
(13, 'mobile-updated', 'Mobile Updated', NULL, NULL, '2023-08-29 11:06:26', '2023-08-29 11:06:26', '2023-08-29 11:06:26', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sub_category', 1, NULL, NULL, '2023-08-29 05:06:26', '2023-08-29 05:06:26'),
(14, 'facebook-account', 'Facebook Account', NULL, NULL, '2023-08-29 11:07:02', '2023-08-29 11:07:02', '2023-08-29 11:07:02', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sub_category', 1, NULL, NULL, '2023-08-29 05:07:02', '2023-08-29 05:07:02'),
(15, 'facebook-group', 'Facebook Group', NULL, NULL, '2023-08-29 11:07:56', '2023-08-29 11:07:56', '2023-08-29 11:07:56', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sub_category', 1, NULL, NULL, '2023-08-29 05:07:56', '2023-08-29 05:07:56'),
(16, 'facebook-page', 'Facebook Page', NULL, NULL, '2023-08-29 11:08:46', '2023-08-29 11:08:46', '2023-08-29 11:08:46', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sub_category', 1, NULL, NULL, '2023-08-29 05:08:46', '2023-08-29 05:08:46'),
(17, 'gmail-acoount', 'Gmail Acoount', NULL, NULL, '2023-08-29 11:10:55', '2023-08-29 11:10:55', '2023-08-29 11:10:55', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'product', 1, NULL, NULL, '2023-08-29 05:10:55', '2023-08-29 05:10:55'),
(18, 'facebook-account', 'Facebook Account', NULL, NULL, '2023-08-29 11:11:50', '2023-08-29 11:11:50', '2023-08-29 11:11:50', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'product', 1, NULL, NULL, '2023-08-29 05:11:50', '2023-08-29 05:11:50'),
(19, 'bulk-gmail-account', 'Bulk Gmail Account', NULL, NULL, '2023-08-29 11:12:43', '2023-08-29 11:12:43', '2023-08-29 11:12:43', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'product', 1, NULL, NULL, '2023-08-29 05:12:43', '2023-08-29 05:12:43'),
(20, 'facebook-group', 'Facebook Group', NULL, NULL, '2023-08-29 11:13:20', '2023-08-29 11:13:20', '2023-08-29 11:13:20', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'product', 1, NULL, NULL, '2023-08-29 05:13:20', '2023-08-29 05:13:20'),
(21, 'google-drive-storage', 'Google Drive Storage', NULL, NULL, '2023-08-29 11:14:04', '2023-08-29 11:14:04', '2023-08-29 11:14:04', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'product', 1, NULL, NULL, '2023-08-29 05:14:04', '2023-08-29 05:14:04'),
(22, 'facebook-page', 'Facebook Page', NULL, NULL, '2023-08-29 11:15:09', '2023-08-29 11:15:09', '2023-08-29 11:15:09', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'product', 1, NULL, NULL, '2023-08-29 05:15:09', '2023-08-29 05:15:09'),
(23, 'brody-adamss', 'Brody Adamss', NULL, NULL, '2023-08-29 11:16:15', '2023-08-29 11:16:15', '2023-08-29 11:16:15', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'product', 1, NULL, NULL, '2023-08-29 05:16:15', '2023-08-29 05:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `set_emails`
--

CREATE TABLE `set_emails` (
  `id` bigint UNSIGNED NOT NULL,
  `mailer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `encription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `set_emails`
--

INSERT INTO `set_emails` (`id`, `mailer`, `host`, `port`, `username`, `password`, `encription`, `address`, `name`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(11, 'smtp', 'smtp.gmail.com', '465', 'islammahfuzul31@gmail.com', 'ssgrpqebopohuvgj', 'ssl', 'islammahfuzul31@gmail.com', 'Pvashop', 1, 1, 1, NULL, '2023-08-21 18:06:42', '2023-08-22 07:47:14'),
(12, 'praesentium', 'praesentium', '95', 'praesentium', 'praesentium', 'praesentium', 'praesentium', 'praesentium', 0, 1, 1, NULL, '2023-08-22 07:45:30', '2023-08-22 07:47:14'),
(13, 'volupt', 'volupt', '59', 'volupt', 'volupt', 'volupt', 'volupt', 'volupt', 0, 1, NULL, NULL, '2023-08-22 07:46:42', '2023-08-22 07:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `background_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `background_photo`, `photo_alt`, `title`, `short_description`, `subcategory_id`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'public/uploads/1773294834608813.png', 'Fugiat eos perfere', 'Aut ipsum soluta vi', 'Sint quaerat corpori', '8', 1, 1, NULL, '2023-08-04 04:45:08', '2023-08-04 04:42:19', '2023-08-04 04:45:08'),
(2, 'public/uploads/1773300159615881.png', 'Vitae ullam numquam', 'Natus aliquam laboru', 'Quaerat praesentium Quaerat praesentium Quaerat praesentium', '7', 0, 1, 1, '2023-08-24 14:12:37', '2023-08-04 06:06:33', '2023-08-24 14:12:37'),
(3, 'public/uploads/1775120323129710.jpeg', 'Placeat in debitis', 'What is social media account?', 'A social media account is a personal or business account that is created on a social media platform such as Facebook, Twitter, Instagram, LinkedIn,', '3', 1, 1, 1, NULL, '2023-08-05 00:00:24', '2023-08-24 14:17:40'),
(4, 'public/uploads/1773418205624125.png', 'Quo reprehenderit e', 'Tempora minima eum q', 'Qui facilis autem is', '3', 0, 1, 1, '2023-08-24 14:12:32', '2023-08-05 13:23:15', '2023-08-24 14:12:32'),
(5, 'public/uploads/1775119972186273.png', 'Ea omnis dolorum par', 'Similique recusandae', 'Aut recusandae Magn', '7', 1, 1, NULL, '2023-08-24 14:12:21', '2023-08-24 14:12:06', '2023-08-24 14:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templetes`
--

CREATE TABLE `sms_templetes` (
  `id` bigint UNSIGNED NOT NULL,
  `templete_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templetes`
--

INSERT INTO `sms_templetes` (`id`, `templete_name`, `subject`, `message`, `visit_link`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'templete1', 'Soluta laborum Culp', '<p>as their primary communication channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking f</p>', 'https://www.facebook.com/', 1, 1, 1, NULL, '2023-08-18 14:06:20', '2023-08-18 14:08:41'),
(2, 'templete2', 'Est dolore laborum a', '<p>&nbsp;as their primary communication<span style=\"font-size:28px\"><strong> </strong></span>channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking f</p>', 'https://www.youtube.com/', 1, 1, 1, '2023-09-05 19:16:19', '2023-08-18 14:07:52', '2023-09-05 19:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `stock_management`
--

CREATE TABLE `stock_management` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `stock_alert` int NOT NULL DEFAULT '0',
  `average_per_price` double(8,2) NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_management`
--

INSERT INTO `stock_management` (`id`, `product_id`, `quantity`, `stock_alert`, `average_per_price`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 8, 62, 100, 354.00, 1, 1, NULL, '2023-08-23 11:23:40', '2023-08-23 11:25:19'),
(2, 6, 907, 0, 411.00, 1, 1, NULL, '2023-08-23 11:23:44', '2023-08-23 16:37:19'),
(3, 4, 105, 10, 561.50, 1, 1, NULL, '2023-08-23 11:23:49', '2023-08-23 11:24:38'),
(4, 1, 1, 0, 202.00, 1, NULL, NULL, '2023-08-23 11:25:36', '2023-08-23 11:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_descriptions`
--

CREATE TABLE `sub_category_descriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `subcategory_id` bigint UNSIGNED NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category_descriptions`
--

INSERT INTO `sub_category_descriptions` (`id`, `subcategory_id`, `description`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, '<p>emails as their primary communication channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking for buying the best&nbsp;<strong>Gmail PVA accounts</strong>&nbsp;for your business, then look no further as&nbsp;<strong><em>PVAESHOP</em></strong>&nbsp;has the best Gmail PVA package for you!</p>\r\n\r\n<p>&nbsp;</p>', 1, 1, NULL, NULL, '2023-08-18 12:21:54', '2023-08-18 12:21:54'),
(2, 2, '<p>emails as their primary communication channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking for buying the best&nbsp;<strong>Gmail PVA accounts</strong>&nbsp;for your business, then look no further as&nbsp;<strong><em>PVAESHOP</em></strong>&nbsp;has the best Gmail PVA package for you!</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/mail_sale_another/public/uploads/1774569500528710.jpg\" style=\"height:360px; width:600px\" /></p>', 1, 1, NULL, NULL, '2023-08-18 12:22:42', '2023-08-18 12:22:42'),
(3, 2, '<p>emails as their primary communication channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking for buying the best&nbsp;<strong>Gmail PVA accounts</strong>&nbsp;for your business, then look no further as&nbsp;<strong><em>PVAESHOP</em></strong>&nbsp;has the best Gmail PVA package for you!</p>\r\n\r\n<p><img alt=\"Gmail_image\" src=\"http://localhost/mail_sale_another/frontend/assets/images/all-images/google.png\" /></p>', 0, 1, 1, NULL, '2023-08-18 12:23:04', '2023-08-18 13:42:25'),
(4, 2, '<p>&nbsp;as their primary communication channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking for buying the best&nbsp;<strong>Gmail PVA accounts</strong>&nbsp;for your business, then look no further as&nbsp;<strong><em>PVAESHOP</em></strong>&nbsp;has the best Gmail PVA package for you!</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/mail_sale_another/public/uploads/1774569576041378.png\" style=\"height:256px; width:256px\" /></p>', 1, 1, 1, NULL, '2023-08-18 12:24:00', '2023-08-18 13:42:20'),
(5, 4, '<h2>Features of Gmail PVA accounts</h2>\r\n\r\n<h3>Gmail search</h3>\r\n\r\n<p>The Gmail search feature uses &lsquo;search chops&rsquo; with email service to help you successfully manage your business account inbox. The inbox contains important customer information; misplacing a file, deleting important email messages, searching for them can be chaotic, especially if you&rsquo;ve other tasks at hand. With the Gmail search feature, it allows you to intuitively search for a specific message or a piece of information hidden away in your cluttered inbox. You can use keywords, symbols, dates, or even search by sender, recipient, subject to filter your search results. There is an advanced search option where you can search within the email body based on specific words, or file attachments.</p>\r\n\r\n<h3>Offline Access</h3>\r\n\r\n<p>Gmail offers offline support to open old emails without an internet connection. The offline mode allows you to draft and read messages, search your inbox, label, delete old emails, and queue messages for sending with limited connectivity. Sending and receiving new messages is however not possible but you can compose new emails, any new messages you are likely to send will be stored in a new &lsquo;draft&rsquo; folder and then sent out once you come back online. You have the option to store emails from the last seven days, 30 days or 90 days, and keep offline data on your device indefinitely.</p>\r\n\r\n<h3>Confidential mode</h3>\r\n\r\n<p>Gmail offers a confidential mode to support all your confidential emails by allowing you to add an expiration date on emails or revoke them after a certain period of time. This mode ensures better privacy of information that you share over Gmail. Sending important documents or confidential information via emails is risky, hence with this feature, you can set a specific date or time for the recipient to view or open the message. There are options to stop users from downloading their own version of the message, forwarding, copying, and printing of any of the information. This feature comes with a two-factor authentication verification for recipients to view the message. Businesses can benefit from the confidential mode especially when sharing sensitive information with clients or customers. Get&nbsp;<strong>Gmail PVA accounts</strong>&nbsp;today, and keep your information more secure.</p>\r\n\r\n<h3>Easily Accessible</h3>\r\n\r\n<p>Gmail makes use of a web browser instead of using an email customer program for message transmissions. It is hosted in the cloud and all emails are stored as back up to protect it from permanent loss. Since Gmail is supported by the cloud, email messages can be accessed by anyone from anywhere as long as there is an internet connection. This can be beneficial for businesses, employees, and customers to easily access emails without any restrictions.</p>', 1, 1, NULL, NULL, '2023-08-18 13:03:26', '2023-08-18 13:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `f_name`, `l_name`, `company_name`, `city`, `address`, `street`, `town`, `country`, `code`, `post_code`, `phone`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Author', 'ariful', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BD', NULL, NULL, 'public/uploads/1691687441.jpg', 'admin@gmail.com', NULL, '$2y$10$4MiOhsq1m28YUkNbDIryzOHrp592adRYWK1wj3dQYUkXY3Bs/xIVS', NULL, NULL, '2023-06-06 10:19:26', '2023-08-10 11:10:41'),
(2, 'Customer', 'gukoqoj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lemisyr@mailinator.com', NULL, '$2y$10$4MiOhsq1m28YUkNbDIryzOHrp592adRYWK1wj3dQYUkXY3Bs/xIVS', NULL, NULL, '2023-07-18 11:13:37', '2023-07-18 11:13:37'),
(4, 'Customer', 'qenynera', 'Chandler Hobbs', 'Hayley Guerrero', 'Arnold Stewart Trading', 'Perferendis molestia', 'Voluptatem veritatis', 'Aut minus pariatur', 'Perferendis molestia', 'Lorem magnam nisi au', 'CK', 'Duis iusto qui susci', '50', NULL, 'pefo@mailinator.com', NULL, '$2y$10$wzSJn2DXS47JmKhEMOcSp.0z.qXZHrGrZJCFc53VocZ.dvMBLd5.W', NULL, NULL, '2023-09-09 04:43:41', '2023-09-09 04:43:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_policies`
--
ALTER TABLE `business_policies`
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
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_messages`
--
ALTER TABLE `customer_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_sms_defaults`
--
ALTER TABLE `customer_sms_defaults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `f_a_q_categories`
--
ALTER TABLE `f_a_q_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_paveshops`
--
ALTER TABLE `home_paveshops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meet_teams`
--
ALTER TABLE `meet_teams`
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
-- Indexes for table `otp_varifications`
--
ALTER TABLE `otp_varifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_apis`
--
ALTER TABLE `payment_apis`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `product_guarantees`
--
ALTER TABLE `product_guarantees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_msg_customers`
--
ALTER TABLE `send_msg_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_emails`
--
ALTER TABLE `set_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templetes`
--
ALTER TABLE `sms_templetes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_management`
--
ALTER TABLE `stock_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_descriptions`
--
ALTER TABLE `sub_category_descriptions`
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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_policies`
--
ALTER TABLE `business_policies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_messages`
--
ALTER TABLE `customer_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_sms_defaults`
--
ALTER TABLE `customer_sms_defaults`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_q_categories`
--
ALTER TABLE `f_a_q_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `home_paveshops`
--
ALTER TABLE `home_paveshops`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `meet_teams`
--
ALTER TABLE `meet_teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `otp_varifications`
--
ALTER TABLE `otp_varifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `payment_apis`
--
ALTER TABLE `payment_apis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_advantages`
--
ALTER TABLE `product_advantages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_descriptions`
--
ALTER TABLE `product_descriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_guarantees`
--
ALTER TABLE `product_guarantees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase_products`
--
ALTER TABLE `purchase_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `send_msg_customers`
--
ALTER TABLE `send_msg_customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `set_emails`
--
ALTER TABLE `set_emails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms_templetes`
--
ALTER TABLE `sms_templetes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_management`
--
ALTER TABLE `stock_management`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_category_descriptions`
--
ALTER TABLE `sub_category_descriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `crud_api`
--
CREATE DATABASE IF NOT EXISTS `crud_api` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci;
USE `crud_api`;

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
--
-- Database: `dino`
--
CREATE DATABASE IF NOT EXISTS `dino` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
USE `dino`;

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2022_11_24_051025_create_profiles_table', 1);

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
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES
(4, 'Aline Everett', 'hycezu@mailinator.com', '+1 (533) 399-1618', '2022-11-29 19:33:32', NULL),
(9, 'Russell Hinton', 'kytacyl@mailinator.com', '+1 (622) 797-6892', '2022-11-29 19:43:23', NULL),
(10, 'Emerald Mccray', 'xymafesazu@mailinator.com', '+1 (432) 384-8329', '2022-11-29 19:43:26', '2022-11-29 20:17:04'),
(11, 'Burke Farmer', 'sezoduw@mailinator.com', '234232', '2022-11-29 19:43:27', '2022-11-29 20:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_email_unique` (`email`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `ecommercepro`
--
CREATE DATABASE IF NOT EXISTS `ecommercepro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ecommercepro`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_id`, `user_id`, `product_title`, `quantity`, `price`, `image`, `created_at`, `updated_at`) VALUES
(8, 'ahad', 'islammahfuz31@gmail.com', '013254781253', 'Netrokona', '2', '3', 'Iphone X', '4', '440000', '1680233865.jpg', '2023-03-31 00:05:47', '2023-03-31 00:06:49'),
(9, 'ahad', 'islammahfuz31@gmail.com', '013254781253', 'Netrokona', '3', '3', 'Necless', '4', '600000', '1680233901.jpg', '2023-03-31 00:07:03', '2023-03-31 00:07:12'),
(12, 'mahfuz', 'mahfujul.dev@gmail.com', '014564981656', 'sylhet', '2', '2', 'Iphone X', '3', '330000', '1680233865.jpg', '2023-04-29 22:49:24', '2023-04-29 22:49:24'),
(13, 'admin', 'admin@admin.com', '0545132654', 'sylhet', '2', '1', 'Iphone X', '1', '110000', '1680233865.jpg', '2023-08-10 01:00:43', '2023-08-10 01:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', '2023-03-30 21:34:46', '2023-03-30 21:34:46'),
(2, 'Laptop', '2023-03-30 21:34:53', '2023-03-30 21:34:53'),
(3, 'Juwelary', '2023-03-30 21:35:01', '2023-03-30 21:35:01'),
(4, 'Food', '2023-03-30 21:35:09', '2023-03-30 21:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'mahfuz', 'Your product Quality is so much good..........', '2', '2023-04-01 23:44:48', '2023-04-01 23:44:48'),
(2, 'ahad', 'Hi bro what\'s up???', '3', '2023-04-01 23:49:03', '2023-04-01 23:49:03');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_16_132309_create_sessions_table', 1),
(7, '2023_03_21_044928_create_categories_table', 1),
(8, '2023_03_22_062243_create_products_table', 1),
(9, '2023_03_25_033908_create_carts_table', 1),
(10, '2023_03_25_071150_create_orders_table', 1),
(11, '2023_03_28_051958_create_notifications_table', 1),
(12, '2023_03_30_055712_create_comments_table', 1),
(13, '2023_03_30_055731_create_replies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delevery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_id`, `product_title`, `quantity`, `price`, `image`, `payment_status`, `delevery_status`, `created_at`, `updated_at`) VALUES
(1, 'mahfuz', 'mahfujul.dev@gmail.com', '014564981656', 'sylhet', '2', '1', 'Samsung S21', '1', '100000', '1680233826.png', 'Cash On Delevery', 'Processing', '2023-03-30 21:50:32', '2023-03-30 21:50:32'),
(2, 'mahfuz', 'mahfujul.dev@gmail.com', '014564981656', 'sylhet', '2', '5', 'Nokia 1200', '1', '1100', '1680234160.jpg', 'Cash On Delevery', 'Processing', '2023-03-30 21:50:32', '2023-03-30 21:50:32'),
(3, 'ahad', 'islammahfuz31@gmail.com', '013254781253', 'Netrokona', '3', '11', 'Fizza', '3', '1350', '1680234515.jpg', 'Cash On Delevery', 'Processing', '2023-03-30 21:55:57', '2023-03-30 21:55:57'),
(4, 'ahad', 'islammahfuz31@gmail.com', '013254781253', 'Netrokona', '3', '10', 'Burger', '5', '500', '1680234476.jpg', 'Cash On Delevery', 'Processing', '2023-03-30 21:55:57', '2023-03-30 21:55:57'),
(5, 'ahad', 'islammahfuz31@gmail.com', '013254781253', 'Netrokona', '3', '4', 'Dell laptop', '2', '86000', '1680234116.jpg', 'Cash On Delevery', 'Order Canceled', '2023-03-30 21:55:57', '2023-03-30 21:59:30'),
(6, 'mahfuz', 'mahfujul.dev@gmail.com', '014564981656', 'sylhet', '2', '4', 'Dell laptop', '3', '129000', '1680234116.jpg', 'Paid With Card', 'Processing', '2023-04-01 23:59:44', '2023-04-01 23:59:44'),
(7, 'mahfuz', 'mahfujul.dev@gmail.com', '014564981656', 'sylhet', '2', '2', 'Iphone X', '1', '110000', '1680233865.jpg', 'Paid With Card', 'Processing', '2023-04-01 23:59:44', '2023-04-01 23:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `discount_price`, `category`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Samsung S21', 'This is samsung brand  mobile', '102000', '100000', 'Mobile', '10', '1680233826.png', '2023-03-30 21:37:06', '2023-03-30 21:37:06'),
(2, 'Iphone X', 'Iphone X best brand', '130000', '110000', 'Mobile', '280', '1680233865.jpg', '2023-03-30 21:37:45', '2023-03-30 21:37:45'),
(3, 'Necless', 'Necless gold and diamond', '150000', NULL, 'Juwelary', '132', '1680233901.jpg', '2023-03-30 21:38:21', '2023-03-30 21:38:21'),
(4, 'Dell laptop', 'Dell laptop is good brand', '500000', '43000', 'Laptop', '348', '1680234116.jpg', '2023-03-30 21:41:56', '2023-03-30 21:41:56'),
(5, 'Nokia 1200', 'Nokia 1200 best small phone', '1200', '1100', 'Mobile', '918', '1680234160.jpg', '2023-03-30 21:42:40', '2023-03-30 21:42:40'),
(6, 'Complete necles', 'Complete necles Complete neclesComplete necles Complete neclesComplete neclesComplete necles', '4000000', '350000', 'Juwelary', '657', '1680234237.jpg', '2023-03-30 21:43:57', '2023-03-30 21:43:57'),
(7, 'Asus Laptop', 'Asus Laptop Republic of gamers', '110000', '150000', 'Laptop', '10', '1680234304.jpg', '2023-03-30 21:45:04', '2023-03-30 21:45:04'),
(8, 'Iphone 12max', 'Iphone 12max is best selling phone of  plagship', '99000', NULL, 'Mobile', '280', '1680234357.jpg', '2023-03-30 21:45:57', '2023-03-30 21:45:57'),
(9, 'Necles and earing', 'Necles and earing is best combination', '120000', '119000', 'Juwelary', '10', '1680234443.jpg', '2023-03-30 21:47:23', '2023-03-30 21:47:23'),
(10, 'Burger', 'Delicious Burger', '100', NULL, 'Food', '132', '1680234476.jpg', '2023-03-30 21:47:56', '2023-03-30 21:47:56'),
(11, 'Fizza', 'Fizza moja', '500', '450', 'Food', '657', '1680234515.jpg', '2023-03-30 21:48:35', '2023-03-30 21:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `name`, `comment_id`, `reply`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'ahad', '1', 'Thank you', '3', '2023-04-01 23:49:40', '2023-04-01 23:49:40'),
(3, 'mahfuz', '2', 'Fine, and you?', '2', '2023-04-01 23:49:57', '2023-04-01 23:49:57'),
(4, 'ahad', '2', 'i\'m also fine.', '3', '2023-04-01 23:50:15', '2023-04-01 23:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('621iOoqUa2I2HPgmI3ZBuNp1grqkMqeM5BsKTARP', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiU2ljQ3JiUWpYdW8wU0gycHdSMmVFYmgzbnR0Q3ZQQ2M2R1A3ekQ4cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3JlZGlyZWN0Ijt9czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkN2dveFY3NDdDeWhYY0FhWGFzU3JYLkREVUNyTlVQc3ozZzlJVE5WNG1LYkEvS0dFcnlId3kiO30=', 1691728512),
('78KdahQ9PZZsCfTRTLKh8doMkW6xGuiaiAwwZqyj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2RrM1U2QTRLOElST0x0YnpDTGk0b2dESjNMNE1rZDc4UzRoV2Y2aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1691680653),
('KEhRCYfBbvg4zygvhaViO5ZKtO2CZNX5nvHUPEW6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEs5RERPVHhvMjNKOXhqOWtpODVFbWhScTN1bG1rZlZKMHg3SzFmQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1691668709),
('PxckLp3aVVQJEehyvSzTnPIL1Zm9ILSwVUxFg7yD', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSGhLU2l5T2tKYmRkbXNxaEdJeDVRcDVHNGZibDV3S2NrSnlwUGdsMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHJpcGUvMTEwMDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1691650852),
('zYg3Yad13lkr4W1vzJtv4KKesjFBW56eARI5sh1Q', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidGpEdGpyU0VPTHVQN05qNFhwOVlselVOdFRDRTBJY0dIYml2WjZ2QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93X29yZGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1691680961);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `role`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '0545132654', 'sylhet', 'admin', '2023-03-30 07:30:25', '$2y$10$uHnWK.MfwHxaaDcLaItN8u466xLO.xiP5Ng1x3iNI9skHfZC0g87q', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-30 07:30:25', NULL),
(2, 'mahfuz', 'mahfujul.dev@gmail.com', '014564981656', 'sylhet', 'user', '2023-03-30 07:35:15', '$2y$10$jCIIMcois.1RnVljI42t8u1.0yusLJnWf0g7n1jAx/XqN72DyaGVi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-30 07:34:39', '2023-03-30 07:35:15'),
(3, 'ahad', 'islammahfuz31@gmail.com', '013254781253', 'Netrokona', 'user', '2023-03-30 07:36:20', '$2y$10$5aZSbJNAIqIcAeW3FmfZAuUL3U.vO8EbF9VLuHlAWoVVnD7NOf98u', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-30 07:36:01', '2023-03-30 07:36:20'),
(4, 'Omar Burke', 'kaso@mailinator.com', '162342323', 'Et harum error occae', 'user', NULL, '$2y$10$7goxV747CyhXcAaXasSrX.DDUCrNUPsz3g9ITNV4mKbA/KGEryHwy', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-10 22:34:24', '2023-08-10 22:34:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `ecomsingle`
--
CREATE DATABASE IF NOT EXISTS `ecomsingle` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci;
USE `ecomsingle`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(23, 8, 2, 1, 510, NULL, NULL),
(24, 16, 2, 1, 100, NULL, NULL),
(25, 14, 2, 1, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_count` int NOT NULL DEFAULT '0',
  `product_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `subcategory_count`, `product_count`, `created_at`, `updated_at`) VALUES
(5, 'Electronics', 'electronics', 2, 6, NULL, '2023-03-05 10:09:47'),
(6, 'Jewellery', 'jewellery', 1, 2, NULL, '2023-03-05 10:04:24'),
(7, 'Foods', 'foods', 2, 2, NULL, '2023-03-05 10:06:19');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_19_171923_laratrust_setup_tables', 1),
(6, '2023_02_21_123352_create_categories_table', 1),
(7, '2023_02_21_123921_create_subcategories_table', 1),
(8, '2023_02_21_124558_create_products_table', 1),
(9, '2023_03_01_052153_create_carts_table', 2),
(11, '2023_03_02_152412_create_shipping_infos_table', 3),
(15, '2023_03_02_173825_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `currency` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2023-02-24 06:51:29', '2023-02-24 06:51:29'),
(2, 'users-read', 'Read Users', 'Read Users', '2023-02-24 06:51:29', '2023-02-24 06:51:29'),
(3, 'users-update', 'Update Users', 'Update Users', '2023-02-24 06:51:29', '2023-02-24 06:51:29'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2023-02-24 06:51:30', '2023-02-24 06:51:30'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2023-02-24 06:51:30', '2023-02-24 06:51:30'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2023-02-24 06:51:30', '2023-02-24 06:51:30'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2023-02-24 06:51:30', '2023-02-24 06:51:30'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2023-02-24 06:51:30', '2023-02-24 06:51:30'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2023-02-24 06:51:30', '2023-02-24 06:51:30'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2023-02-24 06:51:30', '2023-02-24 06:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(9, 2),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
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
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `product_quantity` int NOT NULL,
  `product_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` int NOT NULL,
  `product_subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_subcategory_id` int NOT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `slug`, `product_short_des`, `product_long_des`, `price`, `product_quantity`, `product_category_name`, `product_category_id`, `product_subcategory_name`, `product_subcategory_id`, `product_img`, `created_at`, `updated_at`) VALUES
(8, 'Asus X5556UB', 'asus_x5556ub', 'This is a laptop. this laptop is made by ASUS .', 'This is a laptop. this laptop is made by ASUS .This is a laptop. this laptop is made by ASUS .This is a laptop. this laptop is made by ASUS .This is a laptop. this laptop is made by ASUS .This is a laptop. this laptop is made by ASUS .This is a laptop. this laptop is made by ASUS .This is a laptop. this laptop is made by ASUS .', 510, 56, 'Electronics', 5, 'laptop', 5, 'upload/1759544147389337.jpg', NULL, NULL),
(9, 'Hp', 'hp', 'This is a laptop. this laptop is made by HP .', 'This is a laptop. this laptop is made by HP .This is a laptop. this laptop is made by HP .This is a laptop. this laptop is made by HP .This is a laptop. this laptop is made by HP .This is a laptop. this laptop is made by HP .This is a laptop. this laptop is made by HP .This is a laptop. this laptop is made by HP .This is a laptop. this laptop is made by HP .', 400, 23, 'Electronics', 5, 'laptop', 5, 'upload/1759544199028471.jpg', NULL, NULL),
(10, 'Dell', 'dell', 'This is a laptop. this laptop is made by Dell.', 'This is a laptop. this laptop is made by Dell.This is a laptop. this laptop is made by Dell.This is a laptop. this laptop is made by Dell.This is a laptop. this laptop is made by Dell.This is a laptop. this laptop is made by Dell.', 600, 56, 'Electronics', 5, 'laptop', 5, 'upload/1759544238478263.jpg', NULL, NULL),
(11, 'Necles', 'necles', 'This is a neckless. this laptop is made by neckless.', 'This is a neckless. this laptop is made by neckless.This is a neckless. this laptop is made by neckless.This is a neckless. this laptop is made by neckless.This is a neckless. this laptop is made by neckless.This is a neckless. this laptop is made by neckless.', 1000, 20, 'Jewellery', 6, 'Neches', 7, 'upload/1759544292371059.jpg', NULL, NULL),
(12, 'Necles shita', 'necles_shita', 'This is a Necles shita. this laptop is made by Necles shita.', 'This is a Necles shita. this laptop is made by Necles shita.This is a Necles shita. this laptop is made by Necles shita.This is a Necles shita. this laptop is made by Necles shita.This is a Necles shita. this laptop is made by Necles shita.', 500, 3, 'Jewellery', 6, 'Neches', 7, 'upload/1759544360003953.jpg', NULL, NULL),
(13, 'Burger beef', 'burger_beef', 'This is a burger . this burger is made by kfc.', 'This is a burger . this burger is made by kfc.This is a burger . this burger is made by kfc.This is a burger . this burger is made by kfc.This is a burger . this burger is made by kfc.', 10, 500, 'Foods', 7, 'Burger', 4, 'upload/1759544423891715.jpg', NULL, NULL),
(14, 'Fizza', 'fizza', 'This is a Fizza. this burger is made by kfc.', 'This is a Fizza. this burger is made by kfc.This is a Fizza. this burger is made by kfc.This is a Fizza. this burger is made by kfc.This is a Fizza. this burger is made by kfc.This is a Fizza. this burger is made by kfc.This is a Fizza. this burger is made by kfc.This is a Fizza. this burger is made by kfc.This is a Fizza. this burger is made by kfc.This is a Fizza. this burger is made by kfc.This is a Fizza. this burger is made by kfc.This is a Fizza. this burger is made by kfc.', 15, 100, 'Foods', 7, 'Fizza', 8, 'upload/1759544480384958.jpg', NULL, NULL),
(15, 'Sumsang m50', 'sumsang_m50', 'This is a Sumsang m50. this burger is made by Sumsang.', 'This is a Sumsang m50. this burger is made by Sumsang.This is a Sumsang m50. this burger is made by Sumsang.This is a Sumsang m50. this burger is made by Sumsang.This is a Sumsang m50. this burger is made by Sumsang.This is a Sumsang m50. this burger is made by Sumsang.', 500, 10, 'Electronics', 5, 'Mobile', 6, 'upload/1759544589235207.png', NULL, NULL),
(16, 'Nokia 1200', 'nokia_1200', 'This is a Nokia 1200 mobile. this burger is made by Nokia .', 'This is a Nokia 1200 mobile. this burger is made by Nokia .This is a Nokia 1200 mobile. this burger is made by Nokia .This is a Nokia 1200 mobile. this burger is made by Nokia .This is a Nokia 1200 mobile. this burger is made by Nokia .This is a Nokia 1200 mobile. this burger is made by Nokia .This is a Nokia 1200 mobile. this burger is made by Nokia .This is a Nokia 1200 mobile. this burger is made by Nokia .This is a Nokia 1200 mobile. this burger is made by Nokia .This is a Nokia 1200 mobile. this burger is made by Nokia .', 100, 200, 'Electronics', 5, 'Mobile', 6, 'upload/1759544655010993.jpg', NULL, NULL),
(17, 'I Phone xr', 'i_phone_xr', 'This is a I Phone xr. this burger is made by I Phone .', 'This is a I Phone xr. this burger is made by I Phone .This is a I Phone xr. this burger is made by I Phone .This is a I Phone xr. this burger is made by I Phone .This is a I Phone xr. this burger is made by I Phone .This is a I Phone xr. this burger is made by I Phone .This is a I Phone xr. this burger is made by I Phone .This is a I Phone xr. this burger is made by I Phone .', 100, 20, 'Electronics', 5, 'Mobile', 6, 'upload/1759544698160366.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', '2023-02-24 06:51:29', '2023-02-24 06:51:29'),
(2, 'user', 'User', 'User', '2023-02-24 06:51:31', '2023-02-24 06:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_infos`
--

CREATE TABLE `shipping_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_infos`
--

INSERT INTO `shipping_infos` (`id`, `user_id`, `mobile`, `city`, `village`, `postal`, `created_at`, `updated_at`) VALUES
(4, 2, '+880123658458', 'Sylhet', 'Ishaq Pur', '3632', NULL, NULL),
(5, 2, '101', 'Vel mollit autem min', 'Deleniti quo ut est', '54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint NOT NULL,
  `product_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory_name`, `slug`, `category_name`, `category_id`, `product_count`, `created_at`, `updated_at`) VALUES
(4, 'Burger', 'burger', 'Foods', 7, 1, NULL, '2023-03-05 10:05:25'),
(5, 'laptop', 'laptop', 'Electronics', 5, 3, NULL, '2023-03-05 10:02:28'),
(6, 'Mobile', 'mobile', 'Electronics', 5, 3, NULL, '2023-03-05 10:09:47'),
(7, 'Neches', 'neches', 'Jewellery', 6, 2, NULL, '2023-03-05 10:04:24'),
(8, 'Fizza', 'fizza', 'Foods', 7, 1, NULL, '2023-03-05 10:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$4MiOhsq1m28YUkNbDIryzOHrp592adRYWK1wj3dQYUkXY3Bs/xIVS', 'QkGnMxpvJjSWkjCtjpPFdTJQMkdg80qNtlJzrWAlNDuwgF0FrrAyY3hDA3Dm', '2023-02-24 06:53:10', '2023-02-24 06:53:10'),
(2, 'user', 'user@user.com', NULL, '$2y$10$4MiOhsq1m28YUkNbDIryzOHrp592adRYWK1wj3dQYUkXY3Bs/xIVS', 'E55glDVduWYh6hTzJis0gnyYTCXiZSm2T3GcYQqsDOSzK8SwhCtE0RSG1kar', '2023-02-27 11:55:04', '2023-02-27 11:55:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `shipping_infos`
--
ALTER TABLE `shipping_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_infos`
--
ALTER TABLE `shipping_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `eloquent_relationship`
--
CREATE DATABASE IF NOT EXISTS `eloquent_relationship` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `eloquent_relationship`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'category one', '2023-02-06 17:41:48', '2023-02-06 17:41:48'),
(2, 'category two', '2023-02-06 17:41:48', '2023-02-06 17:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `post_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-02-06 17:42:51', '2023-02-06 17:42:51'),
(2, 1, 2, '2023-02-06 17:42:51', '2023-02-06 17:42:51'),
(3, 1, 3, '2023-02-06 17:42:51', '2023-02-06 17:42:51'),
(4, 2, 2, '2023-02-06 17:42:51', '2023-02-06 17:42:51'),
(5, 2, 3, '2023-02-06 17:42:51', '2023-02-06 17:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2023_02_06_105153_create_phones_table', 1),
(6, '2014_10_12_000000_create_users_table', 2),
(7, '2014_10_12_100000_create_password_resets_table', 2),
(8, '2019_08_19_000000_create_failed_jobs_table', 2),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(10, '2023_02_06_111010_create_phones_table', 3),
(11, '2023_02_06_144728_create_posts_table', 4),
(16, '2023_02_06_144956_create_comments_table', 5),
(17, '2023_02_06_172157_create_categories_table', 5),
(18, '2023_02_06_172719_create_category_post_table', 5);

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
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `name`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'iphone 12', '1', '2023-02-06 11:14:21', '2023-02-06 11:14:21'),
(2, 'Oneplus', '2', '2023-02-06 11:14:21', '2023-02-06 11:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `created_at`, `updated_at`) VALUES
(1, 'Post One', '2023-02-06 14:56:49', '2023-02-06 14:56:49'),
(2, 'Post Two', '2023-02-06 14:56:49', '2023-02-06 14:56:49'),
(3, 'Post Three', '2023-02-06 14:56:49', '2023-02-06 14:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User One', 'user1@gmail.com', NULL, '12345678', NULL, '2023-02-06 11:16:12', '2023-02-06 11:16:12'),
(2, 'User Two', 'user2@gmail.com', NULL, '12345678', NULL, '2023-02-06 11:16:12', '2023-02-06 11:16:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `justice`
--
CREATE DATABASE IF NOT EXISTS `justice` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci;
USE `justice`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_10_093115_todo', 2),
(7, '2022_12_10_093619_create_todos_table', 3);

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
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint UNSIGNED NOT NULL,
  `add` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `add`, `created_at`, `updated_at`) VALUES
(123, 'Quo architecto aut e', '2022-12-14 01:15:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `kufa`
--
CREATE DATABASE IF NOT EXISTS `kufa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
USE `kufa`;

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int NOT NULL,
  `about_me` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `skill_icon` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `skill_title` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `skill_percent` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about_me`, `skill_icon`, `skill_title`, `skill_percent`) VALUES
(8, 'Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim', 'fab fa-html5', 'Optio eos non proi', 85),
(9, 'Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim', 'fab fa-css3-alt', 'Totam ea officiis vo', 80),
(10, 'Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim', 'fab fa-js-square', 'Sed nemo reiciendis', 60),
(11, 'Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim Necessitatibus enim', 'fab fa-php', 'Ut id fugit est p', 88);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `profile_pic` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'demo.png',
  `address` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `instagram` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `linkedin` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone_number`, `profile_pic`, `address`, `facebook`, `twitter`, `instagram`, `linkedin`) VALUES
(43, 'Mahfuz', 'wotojy@mailinator.com', '5359634296651746cadd6dbb7af8c68c7fe6c04b', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL),
(44, 'Mahfuz', 'cigyxaz@mailinator.com', '5359634296651746cadd6dbb7af8c68c7fe6c04b', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL),
(45, 'Ahad', 'vabaveq@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL),
(46, 'cudosez', 'mosu@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL),
(47, 'repebo', 'cazym@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, '47.png', NULL, NULL, NULL, NULL, NULL),
(48, 'cabihecyla', 'pucuwyvix@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL),
(49, 'pixutym', 'hicej@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL),
(50, 'cymylu', 'pihobyp@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, '50.png', NULL, 'https://www.pomufetapuca.infosdfsdf', 'https://www.zetoturadawobuz.co.uk', 'https://www.pogi.info', 'https://www.gymaxek.net'),
(51, 'ahad', 'leci@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '+1 (341) 521-2045', '51.png', 'Mirpur 2no road, Dhaka , Bangladesh', 'https://www.facebook.com/https://www.facebook.com/RihatOnline', 'https://www.twitter.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/'),
(52, 'givyco', 'kydu@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, '52.png', NULL, NULL, NULL, NULL, NULL),
(53, 'juxebekopy', 'vaza@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', '+1 (665) 998-4092', '53.png', NULL, NULL, NULL, NULL, NULL),
(54, 'fonohydfjy', 'wotsdfojy@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, 'demo.png', NULL, 'https://www.rucycepybevyk.me.uk', 'https://www.telekav.org', 'https://www.xitujevuve.info', 'https://www.lamadokisunywy.org.uk'),
(55, 'vulix', 'kicowusa@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL),
(56, 'gylunoky', 'rokuqew@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL),
(57, 'hogym', 'monibys@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, '57.png', NULL, NULL, NULL, NULL, NULL),
(58, 'kovuhyjyj', 'ahad123@gmail.com', '0e403ce69b07788b3b2347e856ba8bdb94986474', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL),
(59, 'pinesymofi', 'dyhexetu@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL),
(60, 'zyriveluwu aasedf', 'nuxyxutumo@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', NULL, 'demo.png', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int NOT NULL,
  `brand_name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `brand_logo` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`) VALUES
(6, 'Victoria Alston', '51_1668538102.png'),
(12, 'Melanie Monroe', '51_1668580990.png'),
(14, 'Silas Hudson', '51_1668581006.png'),
(16, 'Irene Floyd', '51_1668581017.png'),
(17, 'Yuri Barker', '51_1668581246.png'),
(18, 'Taylor Riley', '51_1668581250.png'),
(19, 'Garrison Short', '51_1668581257.png'),
(20, 'Joseph Blackwell', '51_1668581272.png'),
(21, 'Rudyard Swanson', '51_1668581277.png'),
(22, 'Tamekah Boyd', '51_1668581284.png'),
(25, 'Solomon Henry', '51_1668581572.png');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`) VALUES
(6, 'Garrett Johns', 'baxuvyjy@mailinator.com', 'Mollit recusandae Q'),
(7, 'Natalie Mack', 'nerykydyjy@mailinator.com', 'Unde duis est ad aut'),
(8, 'Ann Cantrell', 'vihasyw@mailinator.com', 'Commodi corporis ali'),
(9, 'Kane Arnold', 'sikagyjafu@mailinator.com', 'Dolor fugit non et '),
(10, 'Linus Hamilton', 'quverybuz@mailinator.com', 'Sit non minima quod '),
(11, 'Jelani Wilkins', 'wypagobok@mailinator.com', 'Deserunt nisi atque '),
(12, 'Griffin Page', 'niluqew@mailinator.com', 'Perspiciatis nihil '),
(13, 'Carol Galloway', 'gemyqoxaje@mailinator.com', 'Nam suscipit magna m'),
(14, 'Ahad', 'texilifa@mailinator.com', 'Asperiores sapiente '),
(15, 'Clare Cain', 'gicadeqaq@mailinator.com', 'Cupiditate quibusdam'),
(16, 'Evelyn Greer', 'potoru@mailinator.com', 'Eiusmod est non bea'),
(17, 'Garrett Walls', 'islammahfuzul31@gmail.com', 'Corrupti ullam ad t'),
(18, 'Xyla Levy', 'islammahfuzul31@gmail.com', 'Debitis laudantium '),
(19, 'Whilemina Cantu', 'gybakyruza@mailinator.com', 'Exercitationem exerc'),
(20, 'Jamal Schroeder', 'islammahfuzul31@gmail.com', 'Pariatur Doloremque'),
(21, 'Ginger Mcclain', 'nybirosi@mailinator.com', 'Laborum atque quae e');

-- --------------------------------------------------------

--
-- Table structure for table `facts`
--

CREATE TABLE `facts` (
  `id` int NOT NULL,
  `fact_icon` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fact_count` int DEFAULT NULL,
  `fact_title` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `facts`
--

INSERT INTO `facts` (`id`, `fact_icon`, `fact_count`, `fact_title`) VALUES
(15, 'fa fa-ambulance', 13, 'Corrupti quod ducim'),
(16, 'fa fa-arrows-v', 88, 'Fugiat quisquam aut'),
(17, 'fa fa-anchor', 37, 'Incidunt culpa dol'),
(18, 'fa fa-bomb', 60, 'Et aut fugiat nisi n');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `service_title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `service_icon` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `service_description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `service_status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_title`, `service_icon`, `service_description`, `service_status`) VALUES
(48, 'Distinctio Excepteu', 'fa fa-address-book', 'Enim tempora nihil v', 'active'),
(49, 'Voluptates Nam et am', 'fa fa-check-square-o', 'Alias repudiandae qu', 'active'),
(50, 'Facilis do ut quam q', 'fa fa-bullhorn', 'Non voluptate aperia', 'active'),
(51, 'Laborum Sit sit vol', 'fa fa-bicycle', 'Quis ut dolore volup', 'active'),
(52, 'Incididunt pariatur', 'fa fa-asl-interpreting', 'Eos illum qui quis', 'active'),
(54, 'Ut autem aut pariatu', 'fa fa-address-book-o', 'Culpa quam officiis', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `showcases`
--

CREATE TABLE `showcases` (
  `id` int NOT NULL,
  `showcase_title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `showcase_heading` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `showcase_description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `showcase_image` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `showcase_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `showcases`
--

INSERT INTO `showcases` (`id`, `showcase_title`, `showcase_heading`, `showcase_description`, `showcase_image`, `showcase_status`) VALUES
(8, 'Dolor non explicabo', 'Cumque consequatur', 'Dolore excepturi est', '51_1668594462.png', 'active'),
(10, 'Ahad is', 'Web Developer', 'Laborum dignissimos Laborum dignissimosLaborum dignissimos Laborum dignissimos Laborum dignissimos Laborum dignissimosLaborum dignissimosLaborum dignissimosLaborum', '51_1668594539.png', 'active'),
(11, 'In fugiat vel irure', 'Proident in qui est', 'Iste rerum perspicia', '51_1668410978.png', 'active'),
(12, 'Accusantium assumend', 'Ad quo delectus ver', 'Cupiditate neque eos', '51_1668410987.png', 'active'),
(13, 'Ut quis illo sit com', 'Voluptatem quis opti', 'Eu eaque id quibusda', '51_1668410999.png', 'active'),
(14, 'Quis irure eius temp', 'Deserunt quibusdam i', 'Quos omnis elit nes', '51_1668581777.png', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `comment`, `name`, `title`, `status`) VALUES
(5, '1_1674544391.png', 'Dolore repellendus', 'Tanner Graves ', 'Sunt asperiores pra', 'active'),
(8, '51_1668437205.png', 'Est quasi earum quia', 'Ivy Gomez ', 'Doloribus dolorem re', 'active'),
(9, '51_1668437213.png', 'Eum vero excepteur c', 'Stephen Fuentes ', 'Et recusandae Ut ma', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facts`
--
ALTER TABLE `facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showcases`
--
ALTER TABLE `showcases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `facts`
--
ALTER TABLE `facts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `showcases`
--
ALTER TABLE `showcases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `laravel-rest-api`
--
CREATE DATABASE IF NOT EXISTS `laravel-rest-api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel-rest-api`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_20_162710_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 1, 'RestApi', '4521a9faa4e43f987d300bddd0be0628f260e08065e29e252e36ff486892cf68', '[\"*\"]', NULL, NULL, '2023-06-23 10:00:06', '2023-06-23 10:00:06'),
(4, 'App\\Models\\User', 1, 'RestApi', '4a60fcfcbf39b7ff7fe192bab93bbb79c0045da95dfa9c44c22602749f558e62', '[\"*\"]', NULL, NULL, '2023-06-23 10:02:05', '2023-06-23 10:02:05'),
(5, 'App\\Models\\User', 1, 'RestApi', '21f5b01f5f355f29aa692a1c8525effc9938e63e55e4f7a2815c57407cc925bf', '[\"*\"]', NULL, NULL, '2023-06-23 10:02:46', '2023-06-23 10:02:46'),
(6, 'App\\Models\\User', 1, 'RestApi', '285e46216864061d9beac847103e17bbdc3c95be1c1e9e94557e2c93cef2c6dd', '[\"*\"]', NULL, NULL, '2023-06-23 10:03:46', '2023-06-23 10:03:46'),
(7, 'App\\Models\\User', 1, 'RestApi', '2e92ab856cd38280546e1a178b6f1a63f4f3244fe2b5c5894914784d2fdf533f', '[\"*\"]', NULL, NULL, '2023-06-23 10:04:02', '2023-06-23 10:04:02'),
(8, 'App\\Models\\User', 1, 'RestApi', 'dd07c6320c8e99a2b0b1306208071fa331e3618bd30c8f2d9f12c83cf1f944e6', '[\"*\"]', NULL, NULL, '2023-06-23 10:04:15', '2023-06-23 10:04:15'),
(9, 'App\\Models\\User', 1, 'RestApi', 'e6e6b2affd3f44013c621549fc12dcbfe3358028a94852ea651154ae44bd95c5', '[\"*\"]', NULL, NULL, '2023-06-23 10:05:11', '2023-06-23 10:05:11'),
(10, 'App\\Models\\User', 1, 'RestApi', 'fdf24c3fb7dff7ab70e81a0ae994a6467602498e2c7786208121aaa1cbfdafcc', '[\"*\"]', NULL, NULL, '2023-06-23 10:09:21', '2023-06-23 10:09:21'),
(11, 'App\\Models\\User', 1, 'RestApi', 'ef11e51255bd8b872607ada8a8c6bc914903e6c46f14d3d4fa131d263fc03eba', '[\"*\"]', NULL, NULL, '2023-06-23 10:09:49', '2023-06-23 10:09:49'),
(12, 'App\\Models\\User', 1, 'RestApi', '0fab7a60758751f37f7bf8ac00d943ca7963eff116e473be5784f65334f164fe', '[\"*\"]', NULL, NULL, '2023-06-23 10:10:29', '2023-06-23 10:10:29'),
(13, 'App\\Models\\User', 1, 'RestApi', '1ba58c13248262d171b70943e10ac71733ee7ad97f776f8d6bf53f4a3bf63855', '[\"*\"]', NULL, NULL, '2023-06-23 10:10:56', '2023-06-23 10:10:56'),
(14, 'App\\Models\\User', 1, 'RestApi', '41421a7ed0ebce43a86ef5d4bc97c2ceddba9f962ff98502896ed7bc08d8467a', '[\"*\"]', NULL, NULL, '2023-06-23 10:11:07', '2023-06-23 10:11:07'),
(15, 'App\\Models\\User', 1, 'RestApi', 'a6e1c9c36d23099271aa639846a3bfef3ca1aa04c50a921ba8b885beea0815fc', '[\"*\"]', NULL, NULL, '2023-06-23 10:11:28', '2023-06-23 10:11:28'),
(16, 'App\\Models\\User', 1, 'RestApi', 'bc02cffe931fb4b29218f0374a58156127473f4f23da9063a475a8e6ed55a79c', '[\"*\"]', NULL, NULL, '2023-06-23 10:11:38', '2023-06-23 10:11:38'),
(17, 'App\\Models\\User', 1, 'RestApi', 'cc1d7e9f660a39104030b459c072fbf63379479f29738547d5b0dd983b2dc55c', '[\"*\"]', NULL, NULL, '2023-06-23 10:18:20', '2023-06-23 10:18:20'),
(18, 'App\\Models\\User', 1, 'RestApi', 'c198a00fcc80ea7d3daf6ea3200c4a69633c576d0307eb549872b36c06c3f997', '[\"*\"]', NULL, NULL, '2023-06-23 10:18:40', '2023-06-23 10:18:40'),
(19, 'App\\Models\\User', 1, 'RestApi', 'e72bfd7466415bf5469c37cb6f679e1237d95a32748fc9f6a11231773c7765ee', '[\"*\"]', NULL, NULL, '2023-06-23 10:19:00', '2023-06-23 10:19:00'),
(20, 'App\\Models\\User', 1, 'RestApi', '9203523d5905d4e4ced2aa587d5f7f51b23fd2bb49835bc80c9f45348f481038', '[\"*\"]', NULL, NULL, '2023-06-23 10:20:02', '2023-06-23 10:20:02'),
(21, 'App\\Models\\User', 1, 'RestApi', '0417a7a56f51f4bbe40e88e520cf884c070060c6c0e29db382430503a303ac18', '[\"*\"]', NULL, NULL, '2023-06-23 10:20:49', '2023-06-23 10:20:49'),
(22, 'App\\Models\\User', 1, 'RestApi', '41d9d6884138c0b5ffdc05e05b21308764cc3833b2f67cb4a9298e64169ea269', '[\"*\"]', NULL, NULL, '2023-06-23 10:22:37', '2023-06-23 10:22:37'),
(23, 'App\\Models\\User', 1, 'RestApi', '5cf6dae96d3650d93269a3bc5c962ba42d9a559fb95c55195cec801a932965ff', '[\"*\"]', '2023-06-23 10:25:27', NULL, '2023-06-23 10:25:02', '2023-06-23 10:25:27'),
(24, 'App\\Models\\User', 1, 'RestApi', '6a309e231d579ffc08baa7bfd83be96e4829120ce4e3d07a11d9de15d0d9e725', '[\"*\"]', '2023-06-23 10:25:46', NULL, '2023-06-23 10:25:45', '2023-06-23 10:25:46'),
(25, 'App\\Models\\User', 1, 'RestApi', 'a937b263b357c08ca7d074bfe25fcee1651e3cb8df767f065a1a6d467556d2ba', '[\"*\"]', '2023-06-23 10:26:49', NULL, '2023-06-23 10:26:49', '2023-06-23 10:26:49'),
(26, 'App\\Models\\User', 1, 'RestApi', '9fe15fdfc3bd421e3de184b38b416de9b7b49afa89f5274d1bb9bdf361d5053b', '[\"*\"]', '2023-06-23 10:28:13', NULL, '2023-06-23 10:28:13', '2023-06-23 10:28:13'),
(27, 'App\\Models\\User', 1, 'RestApi', 'd02147d9b0bca73172a96614ec6e2d70ddcb74f2942e9f2a4da0d71b9004b79f', '[\"*\"]', '2023-06-23 10:33:39', NULL, '2023-06-23 10:33:38', '2023-06-23 10:33:39'),
(28, 'App\\Models\\User', 1, 'RestApi', 'c7d21052276bc2db41166cad55100a69aafde403d55e400c852fae484d6906f9', '[\"*\"]', '2023-06-23 10:34:06', NULL, '2023-06-23 10:34:06', '2023-06-23 10:34:06'),
(29, 'App\\Models\\User', 1, 'RestApi', 'c99a649ada7486b30b9a3135d3a735edb5d7239848fc308b683a4254d076a36b', '[\"*\"]', '2023-06-23 10:34:18', NULL, '2023-06-23 10:34:18', '2023-06-23 10:34:18'),
(30, 'App\\Models\\User', 1, 'RestApi', 'd86fe66b30e76357b0f41c7e3e08235e493ef119c782da1cebe2fd27a05b2da3', '[\"*\"]', '2023-06-23 10:34:27', NULL, '2023-06-23 10:34:27', '2023-06-23 10:34:27'),
(31, 'App\\Models\\User', 1, 'RestApi', '86da870ec4f60ef0b829a23d2b3db470d88a4c5eca8b4f9085009716340b7c49', '[\"*\"]', '2023-06-23 10:34:36', NULL, '2023-06-23 10:34:36', '2023-06-23 10:34:36'),
(32, 'App\\Models\\User', 1, 'RestApi', '7ece0217802664196924ba260b6d6820a972139dc947204e67f0d8fe876cb2fc', '[\"*\"]', '2023-06-23 10:36:30', NULL, '2023-06-23 10:36:30', '2023-06-23 10:36:30'),
(33, 'App\\Models\\User', 1, 'RestApi', 'adaf06b1302f920c64e93c054b7b5fe7e34284dec75e9e87ec5b74eefaa2171e', '[\"*\"]', '2023-06-23 10:36:58', NULL, '2023-06-23 10:36:58', '2023-06-23 10:36:58'),
(34, 'App\\Models\\User', 1, 'RestApi', '2d67d171598328e1449312c4aac985e1db11029bf2064e3f7ae7a29bbbe5120c', '[\"*\"]', '2023-06-23 10:37:18', NULL, '2023-06-23 10:37:17', '2023-06-23 10:37:18'),
(35, 'App\\Models\\User', 1, 'RestApi', '219a9214e64bb893186a1f2d6ab35d98cdbb0d287401bcb7c8500525f9f91f62', '[\"*\"]', '2023-06-23 10:37:25', NULL, '2023-06-23 10:37:25', '2023-06-23 10:37:25'),
(36, 'App\\Models\\User', 1, 'RestApi', '02a85fe8e97a863d61e500f0b91e4ee27e002e16dd6ed5c86ca733305fe73d04', '[\"*\"]', '2023-06-23 10:37:36', NULL, '2023-06-23 10:37:35', '2023-06-23 10:37:36'),
(37, 'App\\Models\\User', 1, 'RestApi', 'a4cbea98451ebe1e208a6c13e4bd5052e492ac53ab0b5dd2dc629e28191992d2', '[\"*\"]', '2023-06-23 10:37:53', NULL, '2023-06-23 10:37:53', '2023-06-23 10:37:53'),
(38, 'App\\Models\\User', 1, 'RestApi', '365fdf4b3ff17fdcc3ea8a60c209eb24205609e6cb71ed9c4ecf67072ff95141', '[\"*\"]', '2023-06-23 10:39:11', NULL, '2023-06-23 10:39:11', '2023-06-23 10:39:11'),
(39, 'App\\Models\\User', 1, 'RestApi', 'bed17b503633c79e73eacdce517eb9bab7ee85386254cea1e848164b502b77d4', '[\"*\"]', '2023-06-23 10:39:50', NULL, '2023-06-23 10:39:49', '2023-06-23 10:39:50'),
(40, 'App\\Models\\User', 1, 'RestApi', '8c86d0c75dd9ab8bc6df7b86dbc049feea2c76018638736e2ff3df759330fb2e', '[\"*\"]', '2023-06-23 10:40:00', NULL, '2023-06-23 10:40:00', '2023-06-23 10:40:00'),
(41, 'App\\Models\\User', 1, 'RestApi', '87000ec863850524c449b903f59997c6c4cf6f7e4f542eb8b2f6766d3b7c1131', '[\"*\"]', '2023-06-23 10:40:25', NULL, '2023-06-23 10:40:25', '2023-06-23 10:40:25'),
(42, 'App\\Models\\User', 1, 'RestApi', '1b173c703603afae48670e7ba6f80f02d79788a927a0782f825a2cf84ca1cbdf', '[\"*\"]', '2023-06-23 10:40:41', NULL, '2023-06-23 10:40:41', '2023-06-23 10:40:41'),
(43, 'App\\Models\\User', 1, 'RestApi', '862225053656b8ab24aef79a167e715a6b2950a2fa5d3ca5c96ab497cfd786d6', '[\"*\"]', '2023-06-23 10:41:22', NULL, '2023-06-23 10:41:22', '2023-06-23 10:41:22'),
(44, 'App\\Models\\User', 1, 'RestApi', '262d82fadffe0fc70bb214e67cf1a0800e3bcf8f078c5cf0362472b498403d49', '[\"*\"]', '2023-06-23 10:49:51', NULL, '2023-06-23 10:49:50', '2023-06-23 10:49:51'),
(45, 'App\\Models\\User', 1, 'RestApi', 'f071d6266ec88a89b520189e62277737e6bc1628bb3ac63beb8431eb33dc2470', '[\"*\"]', '2023-06-23 10:50:12', NULL, '2023-06-23 10:50:12', '2023-06-23 10:50:12'),
(46, 'App\\Models\\User', 1, 'RestApi', '3e81741bb0e412a19fbd6e5bfddcec381b21e568e6961085d2813bd04c363f13', '[\"*\"]', '2023-06-23 10:50:24', NULL, '2023-06-23 10:50:24', '2023-06-23 10:50:24'),
(47, 'App\\Models\\User', 1, 'RestApi', 'a3ddb4d896ba1d040c23b3af0324fa169f646ec443d0df68b596e5422acf6c97', '[\"*\"]', '2023-06-23 10:54:12', NULL, '2023-06-23 10:54:11', '2023-06-23 10:54:12'),
(48, 'App\\Models\\User', 1, 'RestApi', 'cae2283adb66dcf28e10945eaeb90f8922d9b0781514dbfca526f20310329fb1', '[\"*\"]', NULL, NULL, '2023-06-23 21:31:55', '2023-06-23 21:31:55'),
(49, 'App\\Models\\User', 1, 'RestApi', '9ad850aabc3739ee80eb8e8274c00d961658041605aeafe4d23df6d784006d29', '[\"*\"]', '2023-06-23 21:32:03', NULL, '2023-06-23 21:32:01', '2023-06-23 21:32:03'),
(50, 'App\\Models\\User', 1, 'RestApi', 'e300da4bf38d467da2e6c0dfdb81e3916bb451b3ec041b50524f95472264cad4', '[\"*\"]', '2023-06-23 21:32:11', NULL, '2023-06-23 21:32:10', '2023-06-23 21:32:11'),
(51, 'App\\Models\\User', 1, 'RestApi', '080a45e26c08ab52269d813e2c6264b2ef30722aff1b8106e2b32eeb677cf729', '[\"*\"]', NULL, NULL, '2023-06-23 21:32:20', '2023-06-23 21:32:20'),
(52, 'App\\Models\\User', 1, 'RestApi', '43c734a3842b5487465525e9d33a606cda7986e876089b8809a67478e9ef3bde', '[\"*\"]', '2023-06-23 21:32:47', NULL, '2023-06-23 21:32:46', '2023-06-23 21:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(4, 'product one', 'product one description', '2023-06-23 04:06:31', '2023-06-23 04:49:08'),
(5, 'product two', 'product two description', '2023-06-23 04:06:31', '2023-06-23 04:49:08'),
(6, 'product three', 'product three description', '2023-06-23 04:06:31', '2023-06-23 04:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahad', 'ahad@gmail.com', NULL, '$2y$10$ieyWo3egy3lNy/6TtCBGlOUu.9EIz/ZysloOaR00THRTilpiXFFEa', NULL, '2023-06-23 00:21:35', '2023-06-23 00:21:35');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `laravelapi`
--
CREATE DATABASE IF NOT EXISTS `laravelapi` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci;
USE `laravelapi`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_11_152624_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'post title two', 'post description two', '2023-03-11 11:36:13', '2023-03-11 11:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravelstarter`
--
CREATE DATABASE IF NOT EXISTS `laravelstarter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravelstarter`;

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
-- Table structure for table `frontusers`
--

CREATE TABLE `frontusers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mailsettings`
--

CREATE TABLE `mailsettings` (
  `id` bigint UNSIGNED NOT NULL,
  `mail_transport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_port` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mailsettings`
--

INSERT INTO `mailsettings` (`id`, `mail_transport`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `mail_from`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'smtp.mailtrap.io', '2525', 'ed3caa94a48fd1', 'baf29d92154c72', 'tls', 'ajayyadavexpo@gmail.com', '2023-08-28 09:48:00', '2023-08-28 09:48:00');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_24_052122_create_frontusers_table', 1),
(6, '2021_10_24_055150_create_permission_tables', 1),
(7, '2021_10_31_101342_create_posts_table', 1),
(8, '2022_05_01_060321_add_profile_to_users_table', 1),
(9, '2022_05_19_122208_create_mailsettings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Post access', 'web', '2023-08-28 09:47:55', '2023-08-28 09:47:55'),
(2, 'Post edit', 'web', '2023-08-28 09:47:55', '2023-08-28 09:47:55'),
(3, 'Post create', 'web', '2023-08-28 09:47:55', '2023-08-28 09:47:55'),
(4, 'Post delete', 'web', '2023-08-28 09:47:55', '2023-08-28 09:47:55'),
(5, 'Role access', 'web', '2023-08-28 09:47:55', '2023-08-28 09:47:55'),
(6, 'Role edit', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(7, 'Role create', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(8, 'Role delete', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(9, 'User access', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(10, 'User edit', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(11, 'User create', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(12, 'User delete', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(13, 'Permission access', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(14, 'Permission edit', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(15, 'Permission create', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(16, 'Permission delete', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(17, 'Mail access', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56'),
(18, 'Mail edit', 'web', '2023-08-28 09:47:56', '2023-08-28 09:47:56');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `user_id`, `publish`, `created_at`, `updated_at`) VALUES
(1, 'Velit error quo voluptatibus impedit temporibus. Eligendi blanditiis animi quidem non amet qui consectetur rerum. Assumenda sunt hic nobis sed tempore perspiciatis.', 'Ea nemo nihil soluta perferendis repudiandae et. Cupiditate aut dicta qui et voluptatibus. Est eum esse voluptatem vero qui omnis. Error quae non saepe id.', 1, 0, '2023-08-28 09:47:57', '2023-08-28 09:47:57'),
(2, 'Laborum sit veritatis est et rem. Occaecati ea exercitationem incidunt illo omnis vel est in. Omnis ipsam ex recusandae quia ipsum qui.', 'Quia sunt officia architecto ea mollitia. Impedit maiores et debitis. Est accusantium quia libero quia ullam atque. Veritatis unde quia ea cumque accusantium et. Voluptatum quo omnis dolores in non porro voluptates.', 1, 1, '2023-08-28 09:47:57', '2023-08-28 09:47:57'),
(3, 'Voluptas quidem ut deleniti ut ducimus eveniet. Ipsa aut magni et architecto. Rerum est qui aut. Alias exercitationem accusantium sunt sint consequatur qui deserunt.', 'Autem explicabo fugit et aut soluta consequuntur iusto et. Voluptas eius ab perspiciatis officiis ut dicta. Rem dignissimos voluptatem quis qui a sed. Suscipit sit sapiente cum.', 1, 0, '2023-08-28 09:47:57', '2023-08-28 09:47:57'),
(4, 'Sed expedita nam ipsam at sit et. Quisquam officia nemo consequatur asperiores quaerat. Esse id qui cum dolorum voluptas.', 'Quia aut hic consequatur quos suscipit laboriosam. Rerum laudantium laborum non omnis. Nostrum aut occaecati dolorem sit. Libero magnam nobis omnis et. Accusantium quis labore qui ducimus aliquam.', 2, 1, '2023-08-28 09:47:57', '2023-08-28 09:47:57'),
(5, 'Ad modi autem quo aliquam et. Velit veniam magnam et earum qui. Dolore veritatis neque illum. Consectetur non accusamus officia.', 'At magni incidunt debitis ab quas incidunt consectetur et. Pariatur quis sit quis vel enim quasi laboriosam id. Eveniet cum quam qui saepe excepturi. Et commodi distinctio blanditiis accusantium accusamus id velit est.', 2, 1, '2023-08-28 09:47:57', '2023-08-28 09:47:57'),
(6, 'In cumque magnam velit. Vitae quisquam quia nesciunt nam quos esse natus. Quisquam commodi tempora atque ut quidem voluptatem quasi. Molestias magnam eius aut alias sunt et quasi corporis.', 'Quam aliquid enim deserunt sed. Reiciendis quam sit voluptates aspernatur hic.', 2, 0, '2023-08-28 09:47:57', '2023-08-28 09:47:57'),
(7, 'Voluptatibus error beatae doloribus nostrum excepturi. Eos voluptatem vero omnis impedit consequatur a.', 'Eum illum ipsam voluptas sed. Impedit perspiciatis eveniet rerum sint placeat. Fuga necessitatibus ducimus dolorem et debitis sunt quo et.', 1, 0, '2023-08-28 09:47:57', '2023-08-28 09:47:57'),
(8, 'Similique qui tenetur eaque vitae sint vero ratione. Commodi dolore unde est aut. Cupiditate delectus delectus voluptatem eos. Quisquam officiis rerum odio rerum.', 'Nesciunt hic aperiam dolor amet iure optio non. Ad eveniet commodi delectus laudantium consequatur autem. Aut sint et vel. Quas placeat eos tempora quaerat voluptate.', 2, 0, '2023-08-28 09:47:57', '2023-08-28 09:47:57'),
(9, 'Dolores sunt et cumque et cumque voluptatibus rerum ut. Nostrum beatae vel ut nihil nostrum nemo. Aut aut nihil perspiciatis est ab.', 'Hic et quia aut quos rerum. Veniam omnis quae eaque ut. Et sed ullam doloremque sed aut ipsa ad. Amet animi libero beatae doloremque.', 1, 1, '2023-08-28 09:47:57', '2023-08-28 09:47:57'),
(10, 'Perspiciatis possimus veritatis occaecati. Sit dolor quas excepturi inventore. Aut odit accusamus ipsa.', 'Provident dolorem eveniet velit dolores rerum nam et. Et aut sequi doloremque porro perspiciatis quos. Ut perferendis et dolorem placeat omnis sint.', 1, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(11, 'Ut quo praesentium quam non. Et qui est placeat repellat est est aperiam. Voluptas sequi ex cum itaque fugiat. Quo blanditiis nostrum ad qui in ut et architecto.', 'Voluptatem ut neque voluptatem voluptate illum qui ea velit. Eum blanditiis consequuntur qui est temporibus quibusdam. Nam voluptas sint totam sed quia odit magnam. Ut eveniet dolorem ea non enim.', 1, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(12, 'In dicta fugit non temporibus ipsum velit qui fuga. Cupiditate voluptatum nemo sit odit exercitationem quam qui ducimus. Itaque temporibus est nobis quo illo. Facilis eos non tempore minima vitae.', 'Reprehenderit aut similique in qui consequuntur qui. Reprehenderit dolore autem molestiae impedit. Sint soluta nihil repellendus est et dolor repellat asperiores. Iste aliquam debitis aperiam recusandae repellat.', 1, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(13, 'Natus consectetur qui unde ut id ut tempore. Minima possimus aut nobis nisi. Qui et et non repudiandae ipsam.', 'Et fugit doloremque quod distinctio ipsam eum dignissimos. Eos quia sed ut nihil voluptas porro explicabo.', 1, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(14, 'Vitae labore rerum corrupti atque. Ea illo et necessitatibus id dolorum laboriosam voluptate. Natus neque sit aperiam et ipsum.', 'In qui ad sit molestiae. Eius repellendus alias ipsa tempore voluptatum repellendus et. Dolores vitae labore fugit qui adipisci esse minus similique. Recusandae sint laudantium error ut.', 2, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(15, 'Natus culpa rem sit unde corporis doloribus totam. Adipisci et et soluta fugit et. Ducimus et consequuntur voluptate dolor accusamus optio totam. Praesentium ipsa quas fugiat accusantium sit eius.', 'Voluptatem eaque quia saepe nihil et. Deleniti nostrum iure laborum ratione nihil et. Consequatur et voluptatem sed numquam omnis.', 2, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(16, 'Enim adipisci aut totam perspiciatis placeat qui. Quasi non possimus minima sint. Non maxime culpa labore distinctio.', 'Esse facere eum provident doloribus sed deserunt inventore. Omnis tenetur qui est. Recusandae iste nobis consequatur rerum placeat voluptas architecto. Dolorum voluptatem neque dolores molestiae provident maiores.', 1, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(17, 'Qui aliquam qui non. Quis minus possimus reprehenderit ex culpa ullam. Corporis enim eveniet repellendus quis maiores. Explicabo quisquam deleniti cum sed alias. Quis maiores est sit repudiandae.', 'Recusandae ullam temporibus similique consequuntur ut doloremque perferendis. Non voluptatem iure aut.', 2, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(18, 'Nesciunt aliquid ratione quas repellat consectetur. Fugit enim cum deleniti ut. Omnis consequatur voluptate accusamus voluptate ut excepturi non.', 'Eos voluptates atque libero consequatur ipsum. Commodi tenetur eos dolor similique et consequuntur. Ipsam facilis at impedit dolorem nostrum deleniti. A pariatur dolorem est laborum autem deserunt.', 2, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(19, 'Laborum unde nihil culpa nulla nam quia incidunt nam. Reprehenderit sapiente quae nulla corrupti unde quo inventore.', 'Dolor at vitae ut atque unde modi minus. Reiciendis laboriosam rerum nesciunt suscipit officia. Et reprehenderit quos deleniti porro quos repellendus molestiae. Itaque accusamus corrupti totam nisi unde molestiae explicabo. Corporis et exercitationem et quia.', 1, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(20, 'Corrupti fugit accusantium id necessitatibus ab officia. Soluta inventore est provident ab voluptatem sed. Sed dolorem ea officia soluta est unde. Eum necessitatibus libero recusandae et sit et.', 'Sed et consequatur autem et consequatur quia sunt iste. Quia eaque modi quia qui ad qui laudantium illum. Quisquam quas eligendi consequatur vel voluptatem. Voluptatem labore et ipsum earum unde aspernatur. Suscipit expedita doloremque voluptatem a totam accusantium quia.', 2, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(21, 'Totam et enim voluptas eum voluptate rerum tempora. Qui autem et voluptatem ratione explicabo explicabo. Ut est a consectetur ea qui quasi impedit autem.', 'Doloremque eligendi iste consectetur praesentium est. Iste sequi tempora saepe. Voluptatem aut debitis eius assumenda quia quia.', 2, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(22, 'Ea recusandae tempore velit ipsa. Ea similique sit ipsam veniam expedita doloribus nemo. Voluptatem consequatur facilis ducimus reprehenderit molestias. Et fugit id maxime.', 'Unde qui veritatis facilis dolores quae. Totam velit quo molestias.', 1, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(23, 'Voluptatem natus reiciendis ut delectus a. Alias similique eum vitae veniam. Illo maiores sint id deleniti dolore.', 'Et aut et beatae ea fuga tempore omnis veniam. Quae odit culpa error nulla non voluptates ut.', 2, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(24, 'Consequuntur dolorem qui occaecati alias corrupti nam. Ipsa est commodi fuga nostrum doloribus autem. Repellat qui excepturi fuga. Laudantium ea neque quas maxime dolorem magnam tempore.', 'Enim pariatur ea eum saepe. Id sed nam distinctio nostrum deserunt quia. Omnis molestias tenetur et ut facere quia molestiae. Rerum iusto voluptas quia sit porro rerum.', 2, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(25, 'Sint sequi quasi tempora accusamus assumenda alias libero. Quia totam repellat quo nesciunt. Optio aut rerum ut autem.', 'Enim est dolores tenetur animi. Tempora sint mollitia aut. Beatae dolores velit sed et ut ipsum corrupti suscipit. Id neque voluptatem ipsa.', 1, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(26, 'Itaque temporibus aliquam non voluptatum. Sit est rerum necessitatibus animi commodi modi quibusdam. Porro neque aut cumque qui eligendi quam.', 'Eos voluptate placeat quis iure optio velit sint. Aperiam error molestiae consequatur aut libero saepe. Maiores consequatur vel et velit corrupti necessitatibus aliquam. Id harum ratione id eligendi laboriosam facilis est. Sit rerum maxime qui ut quis voluptatibus non et.', 1, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(27, 'Sed nisi voluptatem et ipsum. Eligendi dolores rerum accusamus quidem. Et aliquam nemo facere quo. Eum ut repellendus incidunt voluptas nihil magni vitae.', 'Quos perspiciatis quia et quod animi consectetur et. Consectetur accusantium qui in blanditiis corrupti. Et voluptate et reiciendis.', 2, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(28, 'Et rem fuga reprehenderit autem dolorem eligendi. Eos saepe exercitationem vitae quidem non rerum. Aut voluptate quia dolor quas.', 'Et ducimus aut optio quis. Nisi et iusto non corporis deserunt. Et ullam qui sed minus.', 2, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(29, 'Vero necessitatibus libero amet nemo. Distinctio non est corporis eum dolorem praesentium ut. Maxime delectus eos mollitia fugiat mollitia recusandae.', 'Reprehenderit quos nihil voluptas perspiciatis aut consequatur distinctio alias. Dolorem mollitia ut in et aut illum ea. Beatae et alias sit qui consequuntur.', 2, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(30, 'Ipsa saepe dicta cum qui. Corporis facere sunt recusandae eum eligendi.', 'Magni est asperiores consequatur vel nihil totam ducimus quam. Voluptatem commodi est est similique qui quas. Voluptatum occaecati corrupti quasi dolor eveniet modi.', 2, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(31, 'Et quia iste et aut laudantium cupiditate. Nobis mollitia pariatur necessitatibus at. Qui voluptatem ut voluptas ab libero sed dicta. Et saepe dicta nostrum. Voluptatum eos officiis odit est qui.', 'Eos fuga cumque est qui soluta impedit magnam. Ipsum consequatur vel possimus dolorum aut ipsa in. Numquam iusto quo consequatur ut similique harum reprehenderit.', 1, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(32, 'Facere repellat perspiciatis dolor. Et est repellat accusamus qui quisquam dolores. Ut nostrum ullam iusto beatae.', 'Est animi unde magnam autem ipsa. Recusandae quia porro qui. Repellendus nihil ipsam voluptatem dolorem deleniti. Distinctio ab porro et molestias molestiae labore.', 2, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(33, 'Ipsam eos cupiditate dolorem sunt sed saepe fuga. Facere est reprehenderit unde aspernatur laborum quaerat rem praesentium.', 'Exercitationem delectus aliquam consequatur tenetur laboriosam corporis ex. Occaecati laudantium et unde qui aliquid assumenda. Fugiat a incidunt dolore sit et aut. Quia tempora adipisci voluptatem a laboriosam.', 1, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(34, 'Ullam eum maiores rem inventore hic at. Autem omnis tempore neque alias. Ut qui nesciunt a repellat magni et. Ipsam praesentium perspiciatis ex tenetur eius hic.', 'Consequatur nihil nam quod eius facilis. Dolor quaerat minima ad perferendis veniam sunt neque. Perferendis ut ab quia dolore voluptatibus non aut. Ab quis nostrum voluptates expedita qui.', 1, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(35, 'Officia asperiores nobis dignissimos quo. Assumenda non asperiores sint.', 'Dolores molestiae dignissimos voluptatibus provident minima qui consequuntur. Dolorem et ex voluptate consequatur voluptatem quo. Ex eius qui ea ex amet amet aperiam nulla. Suscipit illo voluptas rerum molestiae est.', 2, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(36, 'Omnis fugiat quia neque neque omnis sit. Velit autem eos quis facere quod. Quam dignissimos nam veritatis veritatis. Voluptate quae aut qui blanditiis consequuntur velit.', 'Ut a nihil ducimus sunt aspernatur voluptas dolorem. Cupiditate aut cupiditate modi optio sint. Ducimus libero magnam eligendi a voluptatem qui autem esse.', 1, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(37, 'Quia labore facilis veritatis. Laborum ut voluptatum voluptas repellat iure. Cumque aut rerum totam voluptas. Sint numquam et deleniti.', 'Velit dicta nihil beatae ut. Et nam reiciendis minima et ipsum omnis sed magnam. Non assumenda ut nostrum vel repellat quaerat accusantium.', 1, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(38, 'Ut sunt porro atque et aut. Voluptatem occaecati quam deleniti enim. Exercitationem minus magni sit at necessitatibus et.', 'Neque vitae quae quaerat dolores dolor. Officiis similique et consequuntur voluptatem praesentium quidem aliquid aliquam. Quia vero architecto quia et hic sint soluta. Qui doloribus beatae debitis rem beatae quos. Architecto magnam soluta alias molestias adipisci a asperiores.', 1, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(39, 'Quo ea officiis soluta dicta est et dolorem repellat. Voluptates qui est quaerat minima quam dolorum. Quia quos beatae totam omnis laboriosam aperiam.', 'Vitae excepturi enim explicabo deserunt voluptas unde tempora. Aut dolore esse animi doloribus hic quaerat et. Nihil voluptate labore qui minus. Deleniti et optio atque neque nostrum ut sint.', 1, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(40, 'Est laboriosam enim earum magnam. Iure rem vero non sit. Quasi sit minima cumque sed debitis id et.', 'Libero et et hic est molestias. Dolorum vel est fuga consequatur aut omnis consequatur. Suscipit quis molestiae quis a itaque id minus. Voluptatem sunt et architecto quisquam tempora.', 1, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(41, 'Non quo consectetur sunt ea. Est et et dolor adipisci asperiores dolore facere. Delectus aut necessitatibus a. Nostrum consequatur qui dicta voluptatem sit.', 'Quam aut fuga odit optio. Sed sunt aspernatur qui omnis. Natus nisi et aut cupiditate asperiores.', 2, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(42, 'Molestiae distinctio nihil dolor vel doloremque explicabo. Omnis reiciendis qui sint voluptatibus. Qui voluptatem voluptatibus eum quam ut doloribus consequatur.', 'Dolorem omnis at blanditiis esse. Est id architecto praesentium. Hic aut earum impedit voluptatem veritatis sit.', 2, 1, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(43, 'Impedit aut accusamus tempora modi voluptatem maxime sint. Officiis tempore est aperiam. Molestiae odit ducimus quam autem aut. Ut eos qui dignissimos.', 'Sint reiciendis facilis itaque quasi aut. Totam corrupti vel qui est. Est eos deserunt fuga vel et maxime. Et neque quia praesentium repudiandae.', 2, 0, '2023-08-28 09:47:58', '2023-08-28 09:47:58'),
(44, 'Nihil aut neque sint est tenetur tempore cupiditate fugit. Quam quia maxime ea voluptate nihil odit molestiae. Id excepturi ipsum magnam officia doloremque incidunt similique.', 'Exercitationem et sunt ad omnis. Facilis quasi non eos perferendis illo omnis ut. Voluptatum nesciunt voluptates quia eos.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(45, 'Alias ut dolorem earum. Provident sed occaecati molestiae saepe temporibus eius. Quo nihil voluptas ipsam nihil.', 'Repellat eligendi cumque consequatur iste corrupti corrupti neque. Fuga iure omnis tempora et non dolore.', 2, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(46, 'Ducimus a eum placeat nihil aut. Quis quis tempora praesentium qui veniam quis. Aut exercitationem velit et distinctio.', 'Non asperiores quis et doloribus. Ad nulla nostrum repudiandae sit nihil illo. Recusandae fuga suscipit pariatur ut animi omnis minus.', 2, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(47, 'Rerum libero rem sequi ut sed et. Est pariatur vero repellat id. Quidem accusantium sequi ut quia sunt perferendis voluptatum. Quaerat vel ut excepturi non voluptatem autem eaque.', 'Inventore non recusandae sequi necessitatibus tempora consequatur. Consequuntur autem quas expedita eius. Natus inventore doloremque accusamus. Et eum sit minima ipsa at suscipit ea unde.', 1, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(48, 'Rerum nisi harum voluptas non non. Magni delectus eligendi occaecati delectus dicta. Facere et quia aspernatur expedita amet ullam corporis.', 'Earum labore voluptatem architecto aperiam eaque rerum. Ut soluta minima aut aut totam suscipit aut nobis.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(49, 'Delectus consequatur exercitationem velit ea ut fuga architecto alias. Aut et deleniti reiciendis. Ut ut ea et veritatis eaque voluptatibus saepe.', 'Deleniti ex ratione quae vero. Saepe unde dolorem id molestiae sit est ut debitis. Distinctio harum ad sit quam quasi quis. Consequatur nulla est saepe tempore quae quibusdam.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(50, 'Iste cumque totam nam qui harum. Eum doloremque placeat eum ea libero inventore. Aliquam repellendus non omnis. Repellendus perspiciatis natus est nulla pariatur aspernatur illum.', 'At corporis ducimus quod fugit et qui aut. Soluta assumenda corporis rerum assumenda quia officiis. Voluptate sed et qui et expedita. Dignissimos aut aut quis excepturi quaerat cum.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(51, 'Atque accusamus fuga unde repudiandae et vero. Laboriosam quisquam veniam ipsam similique nobis. Repellat veritatis laboriosam assumenda est ut. Delectus saepe sit aperiam qui neque.', 'Facilis ipsum commodi aut aut inventore. Laboriosam aut beatae in ratione. Labore aliquam sint dignissimos quis qui voluptatibus sapiente.', 2, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(52, 'Nostrum eos vel sequi aliquid quas ut. Labore praesentium quia laborum quos deleniti vel aperiam voluptatem. Architecto quos ducimus est exercitationem corrupti blanditiis ipsam saepe.', 'Repellat nihil voluptas consectetur reiciendis quibusdam dolorem quos. Veritatis qui aut dolorum temporibus. Aut et sunt nostrum numquam minus repudiandae veniam.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(53, 'Numquam et vero ipsam laboriosam nostrum officia. In culpa eos nesciunt in laboriosam repellat consequatur. Laborum cumque rerum quo cumque rerum error.', 'Sit dolore voluptatem dolorum culpa non debitis et. Voluptas alias quo numquam esse. Vel nobis quis ut molestias quis.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(54, 'Non velit aliquam repellat voluptate laborum nemo non sit. Non non reiciendis est quis officiis. Nostrum optio id a reprehenderit.', 'Iure distinctio eaque rerum. Et facere voluptatem odit est minus et. Eveniet impedit beatae sed exercitationem. Saepe occaecati exercitationem ut ratione perspiciatis officiis.', 1, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(55, 'Rerum aut impedit id aut perspiciatis asperiores veritatis debitis. Laborum at rerum non quod doloremque. Consequatur molestias aut ipsa voluptatum quia deserunt debitis.', 'Cumque aut accusantium nesciunt ipsam beatae quia. Enim sint rerum id est quaerat id quia. Dolorem sit voluptatibus impedit mollitia.', 1, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(56, 'Quasi autem voluptatem iusto consequatur aut. Nihil similique maxime laborum reprehenderit. Quod debitis sapiente atque et.', 'A quo aut non voluptas inventore accusamus quam dolorem. Dolorem quia et aut cupiditate numquam. Non qui facilis repellat ullam aut.', 1, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(57, 'Illum reiciendis quas dolor neque perferendis sed eum. Sit id et qui. Molestiae dignissimos officiis qui. Esse eius cumque ut non fugit rerum.', 'Totam corrupti in vel et numquam. Dolor beatae sed inventore deleniti ut. Voluptatem sit in temporibus commodi sapiente labore qui quidem.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(58, 'Quis fugit pariatur atque modi id est. Voluptas aspernatur quo ex enim. Inventore maxime est laborum rerum labore quidem. Sequi maxime dolor vero illo et repellendus eligendi et.', 'Atque quos eius alias esse. Aut nostrum deserunt harum praesentium. Nostrum voluptatibus sint veniam temporibus consequatur libero assumenda. Assumenda illum dignissimos inventore iure. Inventore sit amet explicabo saepe voluptates ea rem autem.', 1, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(59, 'Neque qui earum et aperiam. Ut porro vitae expedita eaque placeat velit tenetur. Sed sit et odit et harum doloribus.', 'Ducimus ut nostrum nihil repudiandae laborum dolores non. Eligendi ipsum neque aut dolore quidem nihil. Laborum consectetur accusamus rerum cupiditate quis.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(60, 'Ea natus repellendus iure quod magnam aut eos. Sit exercitationem beatae eum iusto. Qui vel est perspiciatis qui sequi nihil itaque. Qui consequatur vel cupiditate ut sed at fugit.', 'Qui cupiditate atque quasi velit cupiditate facilis. Nemo blanditiis numquam neque quia. Aut et illum sit et.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(61, 'Optio nemo voluptas minima ab. Laudantium voluptatem et ut vel similique assumenda omnis. Expedita sit ea inventore necessitatibus. Ut voluptas enim magni eligendi nisi quia quo vel.', 'Quaerat voluptatum molestias non. Eaque id eius facere. Repellat quam vitae at aliquid. Suscipit molestiae praesentium praesentium maxime debitis inventore quis.', 1, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(62, 'Eum et possimus modi voluptatem ullam quae quo repellendus. Veniam autem ut tempore et voluptatum. Et enim enim voluptatibus ea. Cum tempora veniam laboriosam maiores.', 'Quisquam sit quo aliquid. Voluptatem amet et exercitationem et sit voluptatem.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(63, 'Eligendi corporis qui ipsa laudantium quia laborum eligendi. Occaecati nemo voluptatem dolores.', 'Optio fugiat doloremque quis et at maxime excepturi est. Enim corporis occaecati reiciendis vel facilis facilis est. Officia quia ut iure expedita unde. Voluptatem alias aut itaque corporis harum.', 1, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(64, 'Consequuntur culpa autem et cupiditate molestias quae. Et cupiditate id culpa assumenda dolore iste. Suscipit explicabo qui omnis dolore placeat laudantium aliquid quas.', 'Et dolor est dolore eius deleniti. Officia recusandae doloremque similique dicta facere. Est aut numquam ut maxime placeat quo voluptatem.', 1, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(65, 'Animi explicabo aliquid nostrum similique. Qui assumenda vel tempore et nostrum optio sed. Corporis velit quaerat deleniti hic dicta.', 'Nam quia expedita non et tempora officiis aliquam. Eius rerum sed praesentium illum deleniti aut. Tenetur cumque maxime et porro sit. Cumque sequi qui aut ullam laboriosam sint quo praesentium.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(66, 'Delectus beatae harum iure at accusamus velit sit. Cum eum aspernatur et repellat nulla. Iusto ex incidunt praesentium. Sit harum et ut voluptate rerum mollitia in.', 'Quis soluta itaque tenetur possimus. Assumenda ipsam explicabo doloremque omnis ab. Minus a dolores nesciunt aspernatur est corporis.', 2, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(67, 'Delectus beatae non quas quo iusto earum. Sint laborum ab voluptatum harum autem itaque. Ut a molestiae a nostrum enim recusandae.', 'Omnis molestiae doloremque molestiae corrupti ratione. Consequatur vel enim ipsam nisi quos culpa. Eos dolor maxime et. Reiciendis autem quas omnis quibusdam assumenda.', 1, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(68, 'Ipsum illo et nesciunt enim. Non veniam aliquam libero modi et et debitis quo. Id distinctio ut culpa reprehenderit recusandae et in. Fugit eius maxime nesciunt quo dolorem.', 'Consectetur labore id illum id eos voluptatem. Deleniti ut molestias temporibus corporis earum. Veritatis laudantium eum quod aut soluta quia. Eligendi recusandae quia deserunt ut magni a quam.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(69, 'Eum et suscipit ut quia reiciendis vero repellat. Odit eius voluptas laboriosam. Voluptatem natus dicta aut reprehenderit. Sint omnis voluptatibus ut dolor perspiciatis et.', 'Harum facilis animi voluptatem. Omnis esse odio aliquam ut atque. Dolore enim cum provident dolores enim non eius minima.', 1, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(70, 'Error qui labore sapiente modi porro eaque sed. Ipsum ullam magnam voluptatem praesentium eos ea illum.', 'Id enim cumque asperiores praesentium laborum amet. Et deserunt nemo vitae consectetur ex. Nihil ipsam nemo dicta veniam. Sed consequatur impedit quis assumenda delectus. Enim optio assumenda amet.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(71, 'Sapiente nobis voluptate eius velit aut qui. Ratione voluptatum tempore impedit sit. Nostrum voluptatem praesentium voluptatem. Architecto dolorem dicta dignissimos nisi.', 'Quisquam a excepturi nisi maxime. Explicabo corrupti voluptate nesciunt sunt quod fugiat. Et dolor corrupti saepe sed ratione quaerat. Quas possimus non officia cupiditate ipsum quia nam fugit.', 1, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(72, 'Voluptate rerum soluta magni. Illum et et sit veniam ut. Illo quia exercitationem ipsum molestiae expedita culpa sint.', 'Repellendus laboriosam incidunt repellat tempora animi provident illum. Quibusdam aspernatur distinctio consectetur recusandae voluptatibus aut animi possimus. Alias ea harum praesentium tempore suscipit. Fugit tenetur vel et est placeat voluptatem. Aut non voluptatem quaerat sit dolor.', 2, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(73, 'Molestias sed quo dicta non quasi. Iure non aut nulla quas dolor et iusto. Qui molestiae et minus molestiae.', 'Ab eius enim magni ut quo in mollitia. Soluta et numquam totam ducimus cum amet sed. Quo commodi eveniet voluptatem et accusantium consectetur.', 2, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(74, 'Atque provident veritatis provident et accusantium pariatur. Enim magnam libero qui voluptas ut. Rerum deserunt doloribus repudiandae maxime voluptas.', 'Sit in alias soluta sit ipsum. Mollitia est quasi assumenda id et. Est consequatur iste sed eos. Asperiores doloremque vitae soluta tempore.', 1, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(75, 'Doloremque soluta aliquam debitis aut. Fuga eum aspernatur corporis ut dolores omnis. Et eaque soluta debitis. Dolores occaecati sequi eius distinctio nihil qui dicta.', 'Dolorem esse quaerat vel aut illum qui alias. Quos asperiores et non rerum tenetur. Saepe dolorem cupiditate illo deleniti sit. Alias sed quo quo provident ea vero nostrum fuga.', 2, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(76, 'Molestiae ut qui dicta optio ea tempore velit. Rerum qui sit ipsa. Ipsam vero aliquid placeat cumque. Aut earum autem aut.', 'Aut id explicabo consequuntur vitae. Modi deserunt iusto qui. Deserunt vero corporis omnis dolorum nisi. Aut sed voluptatem molestias aut.', 1, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(77, 'Esse beatae ipsum consequatur. Voluptatum non aut et officiis possimus placeat autem. Dolorem quam vel qui rem. Voluptatem animi fugiat exercitationem culpa magnam eum aut.', 'Totam ut a quo ipsum perspiciatis vitae id sed. Nisi impedit animi non non. Et accusantium ut commodi reprehenderit. Laudantium assumenda numquam sint rem necessitatibus. In nihil iusto possimus voluptas magni rerum voluptatem.', 1, 0, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(78, 'Sed est vel atque labore ut quis. Harum aut est sint illo. Consequatur delectus quia accusantium nihil et voluptatem omnis. Corrupti inventore qui omnis dolorem.', 'Corrupti nesciunt omnis non porro sed at et. Doloremque porro et quod aliquam officiis et. Voluptatem impedit dicta unde accusamus deleniti rerum doloribus.', 2, 1, '2023-08-28 09:47:59', '2023-08-28 09:47:59'),
(79, 'Fugiat qui dolorem ipsam itaque. Voluptatem qui et molestiae ut est est. Quibusdam nam ex et officiis velit ipsam.', 'Eos ipsum sit voluptatibus voluptatem. Qui voluptas amet expedita ipsam deleniti iure. Laborum natus debitis qui et.', 1, 1, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(80, 'Dolor nihil ipsum ut odio distinctio. Expedita quaerat a repellendus harum dolores. Voluptas aut ab dolore. Ut inventore ut quibusdam quia.', 'Quidem et est veniam voluptatum. Itaque sunt et molestiae. Doloribus enim esse dolores quis possimus. Nesciunt assumenda labore culpa atque maxime voluptatum. Incidunt qui velit voluptatibus quo.', 2, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(81, 'Neque mollitia rerum occaecati. Quia enim dolores nesciunt rerum. Accusantium quas ab qui voluptas similique accusantium vel.', 'Fuga et ullam et explicabo optio voluptas nam est. Similique eum vel itaque magni maxime. Est voluptatibus earum aperiam voluptatem repellendus qui. Sapiente cumque veritatis molestiae in quasi et.', 2, 1, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(82, 'Iure necessitatibus tempore quia magni autem debitis deserunt et. Et facere atque est et aut non est. Beatae ea id quia possimus provident.', 'Autem reprehenderit eos facere voluptatem. Nulla quis nam laborum. Suscipit tenetur non et. Iure dolorum id labore molestiae.', 1, 1, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(83, 'Repellat error dolorum saepe aliquid. Quibusdam aperiam mollitia qui voluptas id iste animi ratione. Est et nihil ut autem ducimus quia. Libero qui voluptatem praesentium explicabo omnis.', 'Sed quaerat aliquam qui facere quod dolores vero soluta. Quos cumque quis autem distinctio ex. Qui nesciunt voluptatem corporis quo aliquam.', 1, 1, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(84, 'Molestias consequatur voluptates voluptatem est. Molestiae rerum enim optio voluptates eos eaque quod. Suscipit accusamus qui quam aut dolorem fuga id quasi. Aspernatur at sed animi est debitis.', 'Est velit non consequatur rerum modi deleniti deserunt. Sunt sed repudiandae aliquam. Dolorum autem qui quod repellendus alias voluptatem et. Aut laudantium sit nisi placeat fugit.', 2, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(85, 'Dolorem illum eum quaerat ut atque sapiente quidem. Nesciunt neque odit maxime ullam voluptatem. Nihil illum corporis molestiae. Quas ducimus iure aliquid cupiditate temporibus qui.', 'Eos accusantium dicta repudiandae quo earum. Ea omnis est saepe soluta. Autem rerum laborum ut iure quod. Minima voluptas eos tempora et in quia rerum. Eos reprehenderit quas nisi distinctio.', 1, 1, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(86, 'Qui quia dolorem voluptatem cupiditate quam aut et. Quis placeat iusto aliquam nam autem itaque perspiciatis. Deleniti suscipit dolores ut qui.', 'Eum dolor perspiciatis quaerat reiciendis vel et. Doloremque voluptates sint sit ut at dolores tenetur ipsa. Sunt aut dolor est expedita animi. Quia dignissimos et qui pariatur magnam dignissimos. Molestiae id expedita vero adipisci repudiandae quidem accusantium.', 2, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(87, 'Earum iusto ut commodi omnis saepe vitae. Ea enim sint nobis. Ut rerum hic dicta doloremque dicta cumque.', 'Molestias eum quidem ab assumenda qui quod ut. Magnam numquam in ea vel. Et iusto id beatae temporibus placeat repudiandae. Minima non et illo inventore.', 2, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(88, 'Cupiditate ad quis labore aut. Cum sit quas ut voluptas et in animi est. Exercitationem magnam neque repellat voluptatem sapiente.', 'Rem ratione expedita in soluta itaque est. Qui veritatis eos in et nihil. Sed non quo animi facere. Voluptatem autem velit quia dignissimos quia rerum aut quasi. Consequatur dolores qui sunt praesentium.', 1, 1, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(89, 'Architecto dignissimos consequuntur eveniet aperiam et. Dicta tempore hic nihil aliquid. Fugit similique velit consequatur unde aut hic est. Ut animi tenetur esse ipsa vitae.', 'Labore praesentium sunt maxime omnis natus sunt. Aut mollitia enim aut non aspernatur qui nostrum. Deleniti fugit eveniet exercitationem sed et. Ipsa reprehenderit aperiam nostrum quas exercitationem at.', 2, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(90, 'Quam laudantium corrupti sint tempore vero voluptatem eveniet aut. Odit optio et eveniet quos ex labore dolorem. Iure ex laudantium aut aut tenetur voluptas.', 'In in distinctio nam ut. Possimus et accusamus placeat culpa. Eum quia ut id maiores voluptatibus alias. Deserunt qui at accusamus.', 2, 1, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(91, 'Facere reiciendis nisi vero dolorum ipsa deleniti earum. Sint voluptate quasi ipsa molestias. Provident molestiae autem velit recusandae natus autem quia.', 'Qui dignissimos eaque laborum at deserunt. Cum sed nihil vel unde porro quas. Quo asperiores sint aut accusamus rem totam eaque.', 2, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(92, 'Mollitia veniam quo eos magni sit ut. Eius et voluptas cumque officiis sit autem. Facilis in enim blanditiis quod molestiae nemo et.', 'Quam necessitatibus id cumque ducimus odio mollitia in. Et labore qui quia aspernatur amet culpa. Neque deserunt quibusdam animi eum. Necessitatibus ut et ut aliquam.', 2, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(93, 'Autem ut sed corporis consequuntur placeat nihil. Necessitatibus inventore earum provident reprehenderit unde harum.', 'Sed reiciendis quia pariatur incidunt ab quam impedit. Recusandae et ex id vero sapiente incidunt. Dolor ducimus modi adipisci a officia sit quibusdam.', 2, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(94, 'Velit sint veniam ut eos. Ut id aut qui veniam accusamus. Vel quo magni delectus aut pariatur. Odio deleniti dolorem ex voluptates voluptate ipsam occaecati. Enim deleniti voluptatem sunt ex.', 'Sequi quis dolor aut deleniti maxime qui. Aut optio in et omnis est.', 1, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(95, 'Labore a numquam blanditiis porro omnis est. Quaerat dolor repellat aspernatur assumenda. Nemo sed enim eum fugiat sit in provident. Quae qui porro quo error libero vitae.', 'Nobis numquam doloribus accusamus similique minima quis dolores aspernatur. Quo maxime necessitatibus voluptatibus eveniet. Consequuntur quia et hic.', 1, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(96, 'Provident quia error nemo provident. Praesentium veniam laboriosam maxime ut corporis ratione. Quaerat molestiae mollitia quos sit et voluptatum laboriosam. Ut et et vel et fuga.', 'Eum molestias nihil eos est quidem quam vel. Ullam dignissimos dolores et voluptatibus ad eligendi sed. Quia accusantium molestiae est animi fugit. Et totam suscipit similique.', 1, 1, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(97, 'Quos modi tenetur dolorum ducimus magni et illo enim. Tenetur dolor voluptas in ab excepturi. Qui sint tenetur illum adipisci ea voluptas.', 'Sed minus quod numquam. Ullam asperiores officiis rerum perspiciatis possimus. Exercitationem sunt rerum distinctio nobis tempora fuga quas.', 2, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(98, 'Temporibus aspernatur veritatis nulla nam nam voluptatem. Blanditiis cumque esse et ullam expedita. Nobis velit quisquam dolorum odio ab modi et.', 'Laboriosam voluptatem fugiat rerum odio quia quia eveniet. Quia nobis eligendi neque vel nesciunt. Quo quas qui assumenda nam rem aut recusandae.', 1, 1, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(99, 'At deserunt quia temporibus mollitia officia quia architecto. Debitis maxime quasi aut omnis voluptate animi facilis nihil. Ipsa ut aliquid qui voluptatem ullam doloremque.', 'Hic sed quam voluptatem provident aut deserunt delectus. Et consequatur vitae sed veniam. Et est modi est enim autem accusamus.', 1, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00'),
(100, 'Quo sed nostrum sit voluptas nemo unde sit. Distinctio et aut similique reiciendis beatae et excepturi. Quae nesciunt alias maxime aspernatur repellat.', 'Aperiam earum possimus explicabo animi. Vitae sapiente nostrum adipisci itaque animi at velit. Tempora molestiae qui vel aut placeat voluptatem voluptas.', 1, 0, '2023-08-28 09:48:00', '2023-08-28 09:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-08-28 09:47:55', '2023-08-28 09:47:55'),
(2, 'writer', 'web', '2023-08-28 09:47:55', '2023-08-28 09:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
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
(18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `profile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', 'user.avif', NULL, '$2y$10$1pNa7AGMRaa/lRrTtEszGeWMQgunfM6L.v1ESvaR5gy.NrtVYUDC2', NULL, '2023-08-28 09:47:55', '2023-08-28 09:47:55'),
(2, 'writer', 'writer@writer.com', NULL, NULL, '$2y$10$wUPykY3Irq7qcglY6kEGSOU4BxfmuiX/pLSspzav7vUZgk5.b4V9y', NULL, '2023-08-28 09:47:55', '2023-08-28 09:47:55');

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
-- Indexes for table `frontusers`
--
ALTER TABLE `frontusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `frontusers_email_unique` (`email`);

--
-- Indexes for table `mailsettings`
--
ALTER TABLE `mailsettings`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontusers`
--
ALTER TABLE `frontusers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mailsettings`
--
ALTER TABLE `mailsettings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
--
-- Database: `laravel_api`
--
CREATE DATABASE IF NOT EXISTS `laravel_api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel_api`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_18_180519_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(3, 'post update 3', 'aasd fasdf ads asdf', '2023-06-18 12:26:52', '2023-06-18 22:34:35'),
(4, 'post four', 'post two is this description', '2023-06-18 12:36:27', NULL),
(5, 'post five', 'post two is this description', '2023-06-18 12:42:20', NULL),
(6, 'post six', 'post two is this description', '2023-06-18 12:43:30', NULL),
(7, 'post six', 'post two is this description', '2023-06-18 12:43:45', NULL),
(8, 'post six', 'post two is this description', '2023-06-18 12:54:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel_multi_auth`
--
CREATE DATABASE IF NOT EXISTS `laravel_multi_auth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel_multi_auth`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahad', 'admin@admin.com', NULL, '$2y$10$Td.y..mBYxKQHtjM.sIMwu0Vk.TbIwCjZ1nb30M8zMFKn9fIpdrXG', NULL, '2023-03-15 09:41:29', '2023-03-15 09:41:29');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_142556_create_admins_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@user.com', NULL, '$2y$10$s4u9k0SPNGyGb4.2x6/qIOM8J.zoWGbtSAJriXN2a.GVw9d1fSEoe', NULL, '2023-03-15 09:15:14', '2023-03-15 09:15:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
--
-- Database: `laravel_pos`
--
CREATE DATABASE IF NOT EXISTS `laravel_pos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
USE `laravel_pos`;

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` bigint UNSIGNED NOT NULL,
  `emp_id` int NOT NULL,
  `advance_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendences`
--

CREATE TABLE `attendences` (
  `id` bigint UNSIGNED NOT NULL,
  `emp_id` int NOT NULL,
  `attendence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `att_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `att_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `att_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `salary_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint UNSIGNED NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_21_024801_create_employees_table', 1),
(6, '2023_05_23_042612_create_customers_table', 1),
(7, '2023_05_23_042709_create_suppliers_table', 1),
(8, '2023_05_28_133935_create_salaries_table', 1),
(9, '2023_05_30_031726_create_advance_salaries_table', 1),
(10, '2023_06_04_041358_create_categories_table', 1),
(11, '2023_06_05_021942_create_products_table', 1),
(12, '2023_06_06_052754_create_expenses_table', 1),
(13, '2023_06_07_055356_create_attendences_table', 1),
(14, '2023_06_08_155550_create_settings_table', 1),
(15, '2023_06_11_052428_create_orderdetails_table', 1),
(16, '2023_06_11_052440_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int NOT NULL,
  `sup_id` int NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_godown` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` int NOT NULL,
  `selling_price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint UNSIGNED NOT NULL,
  `emp_id` int NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advance_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No Advance',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','employe') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'employe',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahad', 'ahad@gmail.com', NULL, '$2y$10$/wXQbpJD.OHL7cj42DMdieNF/LDLSrC/jJyPLxfY5wRayDvPBpapW', 'admin', 'qkxLi8875jgKCH5OX7gqU5zzR4TK61sEv49SPwscWwifStGXmRxthorGxTbZ', '2023-07-23 09:09:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendences`
--
ALTER TABLE `attendences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
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
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendences`
--
ALTER TABLE `attendences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `laravle-passport-api`
--
CREATE DATABASE IF NOT EXISTS `laravle-passport-api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravle-passport-api`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('154d7c7a4b20296a7424bd5f32c5324de829fc48841d358d9cb9b2e4ecc6365a4b43f1e9425f9417', 1, 1, 'MyToken', '[]', 1, '2023-07-07 05:50:34', '2023-07-07 05:50:54', '2024-07-07 11:50:34'),
('c3805b001dae179003bf63bc149b6b258c97078bbb800977e2544570319d848a13c9eca784608759', 1, 1, 'MyToken', '[]', 1, '2023-07-07 05:03:53', '2023-07-07 05:50:14', '2024-07-07 11:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '1bT8b5r4I74RsctJOP0oNF5TXA6PoGWVapeXHr9R', NULL, 'http://localhost', 1, 0, 0, '2023-07-06 23:50:25', '2023-07-06 23:50:25'),
(2, NULL, 'Laravel Password Grant Client', 'jtNctNtSiaPlm1MY6lpcjGcEMxBlBVPaZVSeFRG5', 'users', 'http://localhost', 0, 1, 0, '2023-07-06 23:50:25', '2023-07-06 23:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-07-06 23:50:25', '2023-07-06 23:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2023-07-06 23:53:41', '$2y$10$9t.7cdU.T9tPpb/tajBH1Olex.2SwkS56ikoCAfw4o98CLJAlJEZW', 'mOfhkxj6Ih', '2023-07-06 23:53:41', '2023-07-06 23:53:41');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
--
-- Database: `mail_send_another`
--
CREATE DATABASE IF NOT EXISTS `mail_send_another` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mail_send_another`;
--
-- Database: `oop_crud`
--
CREATE DATABASE IF NOT EXISTS `oop_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `oop_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `packages`
--
CREATE DATABASE IF NOT EXISTS `packages` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci;
USE `packages`;

-- --------------------------------------------------------

--
-- Table structure for table `package_info`
--

CREATE TABLE `package_info` (
  `id` int NOT NULL,
  `main_title` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `trip_type` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `destination` varchar(50) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `price` int NOT NULL,
  `discount` int NOT NULL,
  `cover_image` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `image_one` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci DEFAULT NULL,
  `image_two` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_520_ci;

--
-- Dumping data for table `package_info`
--

INSERT INTO `package_info` (`id`, `main_title`, `trip_type`, `city`, `destination`, `price`, `discount`, `cover_image`, `image_one`, `image_two`) VALUES
(1, 'tour to london', 'tourist', 'dhaka', 'london', 500, 20, '1683990015.jpg', '', ''),
(2, 'tour to london', 'tourist', 'dhaka', 'london', 500, 20, '1683999152.jpg', '', ''),
(3, 'tour to london', 'tourist', 'dhaka', 'london', 500, 20, '1683999562.jpg', '1813026941683999835.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `package_info`
--
ALTER TABLE `package_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `package_info`
--
ALTER TABLE `package_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `php_test`
--
CREATE DATABASE IF NOT EXISTS `php_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `php_test`;

-- --------------------------------------------------------

--
-- Table structure for table `profile_data`
--

CREATE TABLE `profile_data` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `profile_data`
--

INSERT INTO `profile_data` (`id`, `name`, `email`, `password`, `role`) VALUES
(38, 'ahad', 'wiqug@mailinator.com', '123456', 1),
(43, 'anik', 'assd@mailinator.com', '123456', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile_data`
--
ALTER TABLE `profile_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile_data`
--
ALTER TABLE `profile_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `project`;
--
-- Database: `realstate`
--
CREATE DATABASE IF NOT EXISTS `realstate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `realstate`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `role` enum('admin','agent','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$.02hJ8AKx3DCWSXs75Z/du.I3cXSS9qQyaDLb3p.1hr82pGaMtPqe', '11683642337.png', '01716965615', 'Ut reprehenderit si', 'admin', 'active', NULL, NULL, '2023-05-09 08:34:21'),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$10$TCOMHyWha/ZBk3xXs5LybuwMdVu03YyDJUENbK/kjPX5n.gaRGrCm', NULL, NULL, NULL, 'agent', 'active', NULL, NULL, NULL),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$d.Y8lESDOvEh7Z7RQD1nNuv4BWrvFNqDRGvCRhsYen9t5XJ0Xs5gC', NULL, NULL, NULL, 'user', 'active', NULL, NULL, NULL),
(4, 'Bailey O\'Hara IV', 'rosie.ebert', 'ervin61@example.org', '2023-05-09 08:25:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00bb99?text=nobis', '(855) 392-0033', '670 Towne Course Apt. 355\nNorth Destany, ME 15235', 'user', 'inactive', 'cfvrdzwphz', '2023-05-09 08:25:03', '2023-05-09 08:25:03'),
(5, 'Prof. Sammie Buckridge Sr.', 'orn.loy', 'alberto.kunde@example.net', '2023-05-09 08:25:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00aaff?text=ut', '888-391-1105', '568 Zemlak Passage Apt. 679\nNorth Alekmouth, TN 77455-6455', 'agent', 'inactive', '2ces7Kncm6', '2023-05-09 08:25:03', '2023-05-09 08:25:03'),
(6, 'Mr. Ruben Dooley II', 'xstehr', 'olebsack@example.com', '2023-05-09 08:25:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/000011?text=dicta', '888.394.0516', '27481 Weissnat Crest Suite 023\nLockmanland, MI 61792-4276', 'agent', 'active', 'qYwoqFHzjA', '2023-05-09 08:25:03', '2023-05-09 08:25:03'),
(7, 'Neha Satterfield', 'becker.beulah', 'coby.stroman@example.org', '2023-05-09 08:25:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0077dd?text=enim', '(877) 909-3937', '674 Maximo Ford Suite 176\nNew Filomenaport, KS 52723-7849', 'user', 'active', 'kVIBsRt8Oa', '2023-05-09 08:25:03', '2023-05-09 08:25:03'),
(8, 'Mrs. Willow Wilkinson V', 'dickinson.mustafa', 'lroberts@example.com', '2023-05-09 08:25:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/001155?text=molestias', '866.878.1556', '706 Samantha Via\nLake Elwinfurt, RI 64262-5281', 'user', 'active', 'o2RxXBBLTN', '2023-05-09 08:25:03', '2023-05-09 08:25:03');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `reporting`
--
CREATE DATABASE IF NOT EXISTS `reporting` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `reporting`;

-- --------------------------------------------------------

--
-- Table structure for table `adminifos`
--

CREATE TABLE `adminifos` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_raised` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_receivable` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_taken` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_repaid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_url` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_transfer_Password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expairy_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminriports`
--

CREATE TABLE `adminriports` (
  `id` bigint UNSIGNED NOT NULL,
  `house_rent` int DEFAULT '0',
  `gard_bill` int DEFAULT '0',
  `electricity_bill` int DEFAULT '0',
  `sewerage_bill` int DEFAULT '0',
  `expanse` int DEFAULT '0',
  `personal` int DEFAULT '0',
  `water_bill` int DEFAULT '0',
  `fewa_bill` int DEFAULT '0',
  `wifi_bill` int DEFAULT '0',
  `a` int DEFAULT '0',
  `b` int DEFAULT '0',
  `c` int DEFAULT '0',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `total` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billdates`
--

CREATE TABLE `billdates` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` int DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_rent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gard_bill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `electricity_bill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sewerage_bill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `water_bill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fewa_bill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wifi_bill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empolyee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comopanies`
--

CREATE TABLE `comopanies` (
  `id` bigint UNSIGNED NOT NULL,
  `compony_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empolyeeinfos`
--

CREATE TABLE `empolyeeinfos` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_raised` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_receivable` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_taken` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_repaid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_url` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_transfer_Password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empolyeereports`
--

CREATE TABLE `empolyeereports` (
  `id` bigint UNSIGNED NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compony_id` int DEFAULT NULL,
  `empolyee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `incoming_card` int NOT NULL,
  `incoming_cash` int NOT NULL,
  `incoming` int DEFAULT '0',
  `outgoing` int DEFAULT '0',
  `cash` int DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empolyees`
--

CREATE TABLE `empolyees` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loandetailes`
--

CREATE TABLE `loandetailes` (
  `id` bigint UNSIGNED NOT NULL,
  `mainloan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `installment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loandetailes`
--

INSERT INTO `loandetailes` (`id`, `mainloan_id`, `installment`, `amount`, `date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '1', '1000', '2023-06-27 09:59:45', 'processing', '2023-06-27 03:59:45', '2023-06-27 04:06:54', '2023-06-27 04:06:54'),
(2, '1', '2', '1000', '2023-06-27 10:04:00', 'processing', '2023-06-27 04:04:00', '2023-06-27 04:06:54', '2023-06-27 04:06:54'),
(3, '2', '1', '2000', '2023-06-27 10:05:35', 'processing', '2023-06-27 04:05:35', '2023-06-27 04:07:02', '2023-06-27 04:07:02'),
(4, '2', '2', '2000', '2023-06-27 10:05:48', 'processing', '2023-06-27 04:05:48', '2023-06-27 04:06:06', '2023-06-27 04:06:06'),
(5, '3', '1', '1000', '2023-06-27 10:08:50', 'processing', '2023-06-27 04:08:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mainloans`
--

CREATE TABLE `mainloans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `amount` int DEFAULT NULL,
  `installment` int DEFAULT NULL,
  `per_installment` int DEFAULT NULL,
  `loan_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mainloans`
--

INSERT INTO `mainloans` (`id`, `name`, `phone`, `email`, `image`, `amount`, `installment`, `per_installment`, `loan_type`, `payment_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'ahad', '+1 (728) 405-1884', 'jocyqed@mailinator.com', '1-1687860494.png', 10000, 10, 1000, 'send', '1977-11-04', 'processing', '2023-06-27 04:08:16', '2023-06-27 04:08:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_29_110638_create_sessions_table', 1),
(7, '2023_03_30_043854_create_empolyees_table', 1),
(8, '2023_03_30_044250_add_colum_to_users_table', 1),
(9, '2023_03_31_060050_create_empolyeereports_table', 1),
(10, '2023_04_01_091402_create_adminriports_table', 1),
(11, '2023_04_01_092741_create_siteriports_table', 1),
(12, '2023_04_08_063017_create_comopanies_table', 1),
(13, '2023_04_14_094511_create_billdates_table', 1),
(14, '2023_06_20_053352_create_empolyeeinfos_table', 1),
(15, '2023_06_21_141719_create_adminifos_table', 1),
(16, '2023_06_24_173253_create_mainloans_table', 1),
(17, '2023_06_25_085804_create_loandetailes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vcGWfQDsY4xuAfSBdKnkNKc7MvvjumYuNaILWCct', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMzllTVFvcFBnWWRHMEdFVWdjdFEzdEsyVlFJTHo1RVdjckZQZkpGVCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9hbi9pbnN0YWxsbWVudC9zaG93LzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFBwT0ZKWDlEbVhuejNnM3N6dTZWUE9aaXRkLkt0WUlPdFN0emRzNnZNLnE2RXg0N0dNaVJhIjt9', 1687860709);

-- --------------------------------------------------------

--
-- Table structure for table `siteriports`
--

CREATE TABLE `siteriports` (
  `id` bigint UNSIGNED NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT '0',
  `password` text COLLATE utf8mb4_unicode_ci,
  `why_create` longtext COLLATE utf8mb4_unicode_ci,
  `number` text COLLATE utf8mb4_unicode_ci,
  `verifi_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_transfer_Password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expairy_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number` text COLLATE utf8mb4_unicode_ci,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compony_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compony_id` int DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `number`, `role`, `compony_name`, `compony_id`, `gender`) VALUES
(1, 'admin', 'admin@gmail.com', '2023-06-27 03:57:52', '$2y$10$PpOFJX9DmXnz3g3szu6VPOZitd.KtYIOtStzds6vM.q6Ex47GMiRa', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-27 03:57:52', '2023-06-27 03:57:52', NULL, 'admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminifos`
--
ALTER TABLE `adminifos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminriports`
--
ALTER TABLE `adminriports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billdates`
--
ALTER TABLE `billdates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comopanies`
--
ALTER TABLE `comopanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empolyeeinfos`
--
ALTER TABLE `empolyeeinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empolyeereports`
--
ALTER TABLE `empolyeereports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empolyees`
--
ALTER TABLE `empolyees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `loandetailes`
--
ALTER TABLE `loandetailes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainloans`
--
ALTER TABLE `mainloans`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siteriports`
--
ALTER TABLE `siteriports`
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
-- AUTO_INCREMENT for table `adminifos`
--
ALTER TABLE `adminifos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminriports`
--
ALTER TABLE `adminriports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billdates`
--
ALTER TABLE `billdates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comopanies`
--
ALTER TABLE `comopanies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `empolyeeinfos`
--
ALTER TABLE `empolyeeinfos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `empolyeereports`
--
ALTER TABLE `empolyeereports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `empolyees`
--
ALTER TABLE `empolyees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loandetailes`
--
ALTER TABLE `loandetailes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mainloans`
--
ALTER TABLE `mainloans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `siteriports`
--
ALTER TABLE `siteriports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `schedule_mail`
--
CREATE DATABASE IF NOT EXISTS `schedule_mail` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci;
USE `schedule_mail`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `currency` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahad', 'islammahfuz31@gmail.com', '2023-04-01 03:43:03', '$2y$10$mRV4174jcUrrC41pWI2kEe0lavXdy5LaTQQCfMWeCZpTH6d4g3AGy', NULL, '2023-04-01 03:42:42', '2023-04-01 03:43:03'),
(2, 'mahfuz', 'mahfujul.dev@gmail.com', '2023-04-01 03:43:41', '$2y$10$CXSIFXILxUWRHYNNN8dbveRurfh9dg/322tfbjUJj8JHVOVhCTay.', NULL, '2023-04-01 03:43:30', '2023-04-01 03:43:41'),
(3, 'arif', 'arifurrahmanrifat72@gmail.com', NULL, '$2y$10$dvesWOUY7l2JItw80g8Rt.XZxb9Ep1gAtUpcUOct7tZku0JnDzgJq', NULL, '2023-04-01 07:29:18', '2023-04-01 07:29:18');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `snake`
--
CREATE DATABASE IF NOT EXISTS `snake` DEFAULT CHARACTER SET utf16 COLLATE utf16_unicode_520_ci;
USE `snake`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci,
  `category_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_image`, `category_description`, `category_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'kisezaca', 'life-at-mailinatorcom', '1-1676048525.png', NULL, 'active', '2023-02-10 10:45:34', '2023-02-10 11:02:05', NULL),
(2, 'difemowexy', 'bokate-at-mailinatorcom', '1-1676048671.png', NULL, 'active', '2023-02-10 11:04:31', NULL, NULL),
(3, 'qocinit', 'dufivyca-at-mailinatorcom', '1-1676048686.png', NULL, 'active', '2023-02-10 11:04:46', NULL, NULL),
(4, 'selosojuwo', 'wamokemovi-at-mailinatorcom', '1-1676302828.png', NULL, 'active', '2023-02-13 09:40:29', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_06_063514_add_cols_to_users_table', 1),
(6, '2022_12_17_180855_create_categories_table', 1),
(7, '2022_12_19_070022_create_sub_categories_table', 1),
(8, '2023_01_08_134150_create_tags_table', 1),
(9, '2023_02_04_132040_create_post_tags', 1),
(10, '2023_02_09_095105_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `writer` int NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_category` int NOT NULL,
  `post_subcategory` int DEFAULT NULL,
  `post_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_kind` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `writer`, `post_title`, `post_slug`, `post_thumbnail`, `post_category`, `post_subcategory`, `post_description`, `post_status`, `post_type`, `post_kind`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Sint expedita sed d', 'esse-sint-assumend', '1-1676048803.png', 2, 2, '<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><p>Sint expedita sed dSint expedita sed dSint expedita sed d<span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">Sint expedita sed dSint expedita sed dSint expedita sed d</span><img data-filename=\"download2.png\" style=\"font-size: 0.875rem; width: 225px;\" src=\"http://127.0.0.1:8000/upload/post_description/esse-..._1_1676306872AVN2xF0F_2023.png\"><img data-filename=\"download3.png\" style=\"font-size: 0.875rem; width: 285px;\" src=\"http://127.0.0.1:8000/upload/post_description/esse-..._1_16763068722OOVtffS_2023.png\"><img data-filename=\"download4.png\" style=\"font-size: 0.875rem; width: 303px;\" src=\"http://127.0.0.1:8000/upload/post_description/esse-..._1_1676306872p5kocmug_2023.png\"></p>\n', 'active', 'active', 'top', '2023-02-13 10:47:52', '2023-02-13 10:47:52', NULL),
(2, 1, 'Dolor in nisi quo eo', 'magnam-tenetur-ab-in', '1-1676048849.png', 1, 1, '<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><p>Sint expedita sed dSinDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eoDolor in nisi quo eot expedita sed d<img data-filename=\"new2.png\" style=\"width: 301px;\" src=\"http://127.0.0.1:8000/upload/post_description/magna..._1_1676306855eCcNBBkV_2023.png\"><img data-filename=\"new3.png\" style=\"width: 352px;\" src=\"http://127.0.0.1:8000/upload/post_description/magna..._1_1676306855b3HDYJl9_2023.png\"><br></p>\n', 'active', 'active', 'top', '2023-02-13 10:47:35', '2023-02-13 10:47:36', NULL),
(3, 1, 'Occaecat nihil ut es', 'ut-aut-debitis-ut-ex', '1-1676048897.png', 3, 3, '<?xml encoding=\"utf-8\" ?><?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><p>Sint expedita sed dSint expedita sed dSint expedita sed d<span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><img data-filename=\"download3.png\" style=\"font-size: 0.875rem; width: 285px;\" src=\"http://127.0.0.1:8000/upload/post_description/ut-au..._1_167630757030PqL9ck_2023.png\"><img data-filename=\"demo.png\" style=\"font-size: 0.875rem; width: 225px;\" src=\"http://127.0.0.1:8000/upload/post_description/ut-au..._1_16763075707KBLrqJt_2023.png\"></p>\n', 'active', 'active', 'popular', '2023-02-13 10:59:30', '2023-02-13 10:59:30', NULL),
(4, 1, 'Nesciunt deserunt i', 'tempor-facere-exerci', '1-1676125476.jpg', 2, 2, '<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><p>Nesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt&nbsp;<span style=\"font-size: 0.875rem;\">Nesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt</span><span style=\"font-size: 0.875rem;\">Nesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt</span><span style=\"font-size: 0.875rem;\">Nesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt</span><span style=\"font-size: 0.875rem;\">Nesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt</span><span style=\"font-size: 0.875rem;\">Nesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt</span><span style=\"font-size: 0.875rem;\">Nesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt deserunt iNesciunt</span><span style=\"font-size: 0.875rem;\">&nbsp;deserunt i</span><img data-filename=\"download2.png\" style=\"font-size: 0.875rem; width: 225px;\" src=\"http://127.0.0.1:8000/upload/post_description/tempo..._1_1676306828a5QawpOA_2023.png\"><img data-filename=\"download3.png\" style=\"font-size: 0.875rem; width: 285px;\" src=\"http://127.0.0.1:8000/upload/post_description/tempo..._1_167630682886e62wln_2023.png\"><img data-filename=\"download4.png\" style=\"font-size: 0.875rem; width: 303px;\" src=\"http://127.0.0.1:8000/upload/post_description/tempo..._1_1676306828vraHMQyu_2023.png\"></p>\n', 'active', 'active', 'top', '2023-02-13 10:47:08', '2023-02-13 10:47:08', NULL),
(6, 1, 'Soluta laboriosam i', 'ad-animi-fugiat-la', '1-1676307940.png', 1, 1, '<?xml encoding=\"utf-8\" ?><?xml encoding=\"utf-8\" ?><p>Sint expedita sed dSint expedita sed dSint expedita sed d<span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><span style=\"font-size: 0.875rem;\">int expedita sed dSint expedita sed d</span><img data-filename=\"guide3.png\" style=\"width: 222px;\" src=\"http://127.0.0.1:8000/upload/post_description/ad-an..._1_1676307951UEJgrACK_2023.png\"><img style=\"width: 221px;\" data-filename=\"guide5.png\" src=\"http://127.0.0.1:8000/upload/post_description/ad-an..._1_1676307951YXhHJOpC_2023.png\"><img data-filename=\"guide4.png\" style=\"width: 221px;\" src=\"http://127.0.0.1:8000/upload/post_description/ad-an..._1_1676307951NdiPjXj8_2023.png\"><br></p>\n', 'active', 'active', 'popular', '2023-02-13 11:05:51', '2023-02-13 11:05:51', NULL),
(7, 1, 'Qui ipsum sunt nis', 'unde-irure-aut-rerum', '1-1676307998.png', 2, 2, '<?xml encoding=\"utf-8\" ?><?xml encoding=\"utf-8\" ?><p>Qui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nis<span style=\"font-size: 0.875rem;\">Qui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nis</span><span style=\"font-size: 0.875rem;\">Qui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nis</span><span style=\"font-size: 0.875rem;\">Qui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nis</span><span style=\"font-size: 0.875rem;\">Qui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nis</span><span style=\"font-size: 0.875rem;\">Qui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nisQui ipsum sunt nis</span><img data-filename=\"ahad.jpg\" style=\"width: 593.359px;\" src=\"http://127.0.0.1:8000/upload/post_description/unde-..._1_1676308010O9P0S8NM_2023.jpeg\"><img style=\"width: 300px;\" data-filename=\"ahad_wb_300x300.jpg\" src=\"http://127.0.0.1:8000/upload/post_description/unde-..._1_1676308010a99dQMFV_2023.jpeg\"><img style=\"width: 450px;\" data-filename=\"ahad_wb.jpg\" src=\"http://127.0.0.1:8000/upload/post_description/unde-..._1_1676308010vYyiBSrt_2023.jpeg\"><br></p>\n', 'active', 'active', 'popular', '2023-02-13 11:06:50', '2023-02-13 11:06:50', NULL),
(9, 1, 'Nobis placeat quisq', 'maiores-blanditiis-d', '1-1676309036.jpg', 2, 2, '<?xml encoding=\"utf-8\" ?><p>Nobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisqNobis placeat quisq<img data-filename=\"guide4.png\" style=\"width: 221px;\" src=\"http://127.0.0.1:8000/upload/post_description/maior..._1_1676309037L5KASM57_2023.png\"><br></p>\n', 'active', 'active', 'popular', '2023-02-13 11:23:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(15, 4, 2, '2023-02-13 10:47:09', '2023-02-13 10:47:09'),
(16, 4, 5, '2023-02-13 10:47:09', '2023-02-13 10:47:09'),
(17, 2, 1, '2023-02-13 10:47:36', '2023-02-13 10:47:36'),
(18, 2, 4, '2023-02-13 10:47:36', '2023-02-13 10:47:36'),
(19, 1, 3, '2023-02-13 10:47:52', '2023-02-13 10:47:52'),
(20, 1, 4, '2023-02-13 10:47:52', '2023-02-13 10:47:52'),
(21, 3, 2, '2023-02-13 10:59:30', '2023-02-13 10:59:30'),
(22, 3, 5, '2023-02-13 10:59:30', '2023-02-13 10:59:30'),
(23, 5, 2, '2023-02-13 11:01:04', '2023-02-13 11:01:04'),
(24, 5, 4, '2023-02-13 11:01:04', '2023-02-13 11:01:04'),
(27, 6, 4, '2023-02-13 11:05:51', '2023-02-13 11:05:51'),
(28, 6, 5, '2023-02-13 11:05:51', '2023-02-13 11:05:51'),
(31, 7, 4, '2023-02-13 11:06:50', '2023-02-13 11:06:50'),
(32, 7, 5, '2023-02-13 11:06:50', '2023-02-13 11:06:50'),
(33, 8, 1, '2023-02-13 11:07:40', '2023-02-13 11:07:40'),
(34, 8, 2, '2023-02-13 11:07:40', '2023-02-13 11:07:40'),
(35, 9, 1, '2023-02-13 11:23:57', '2023-02-13 11:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` int NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_description` text COLLATE utf8mb4_unicode_ci,
  `subcategory_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `subcategory_name`, `subcategory_slug`, `subcategory_image`, `subcategory_description`, `subcategory_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'vyboduha', 'xazucuzidi-at-mailinatorcom', '1-1676048607.png', NULL, 'active', '2023-02-10 11:03:27', NULL, NULL),
(2, 2, 'zuqokapufu', 'nakub-at-mailinatorcom', '1-1676048700.png', NULL, 'active', '2023-02-10 11:05:00', NULL, NULL),
(3, 3, 'pyven', 'jymetu-at-mailinatorcom', '1-1676048720.png', NULL, 'active', '2023-02-10 11:05:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', '2023-02-10 11:05:45', NULL),
(2, 'Sri Lanka', '2023-02-10 11:05:47', NULL),
(3, 'Qatar', '2023-02-10 11:05:50', NULL),
(4, 'Japan', '2023-02-10 11:05:54', NULL),
(5, 'Australia', '2023-02-10 11:05:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscriber',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `phone_number`, `address`, `gender`, `profile_image`, `cover_image`) VALUES
(1, 'admin', 'admin@admin.com', '2023-02-10 10:39:51', '$2y$10$kBpudzM9UwneGM34vUtinunLYnYj9uBiT6.VkxBtA5w1tj7MGDoAm', 'admin', 'jJliuwok8Ns27yysH83pXKu7BRTuu0BMPvbjNHiCMNi936pM8RSy5P52H9aB', '2023-02-10 10:39:51', '2023-02-10 10:41:54', '+1 (853) 756-7875', 'Illo nostrud et itaq', 'male', '1.jpg', '1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_slug_unique` (`category_slug`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_subcategory_slug_unique` (`subcategory_slug`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `travel`
--
CREATE DATABASE IF NOT EXISTS `travel` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci;
USE `travel`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `profile_pic` varchar(20) COLLATE utf8mb3_unicode_520_ci NOT NULL DEFAULT 'demo.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_520_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role`, `profile_pic`) VALUES
(1, 'Mahfuz', 'mahfuj.dev@gmail.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', 'admin', '1.jpg'),
(3, 'niza', 'tenok@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', 'user', '3.png'),
(5, 'bakosuxas', 'bemory@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', 'user', 'demo.png'),
(9, 'huga', 'coqabeqyra@mailinator.com', 'ac748cb38ff28d1ea98458b16695739d7e90f22d', 'user', 'demo.png');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `blog_title` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `blog_description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `blog_image` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_520_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `blog_description`, `blog_image`) VALUES
(3, 'visit bisnakandi', 'Tempor soluta ea cup Tempor soluta ea cupTempor soluta ea cupTempor soluta ea cupTempor soluta ea cupTempor soluta ea cupTempor soluta ea cupTempor soluta ea cupTempor soluta ea cupTempor soluta ea cupTempor soluta ea cupTempor soluta ea cup', '1_1675315455.png');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `message` varchar(200) COLLATE utf8mb3_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_520_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`) VALUES
(1, 'Vivian Sweet', 'mahfuj.dev@gmail.com', 'Modi qui quisquam pe'),
(2, 'Pandora Whitley', 'mahfujul.dev@gmail.com', 'Distinctio Recusand'),
(3, 'Dahlia Brewer', 'mahfujul.dev@gmail.com', 'Incididunt nostrum i'),
(4, 'Sheila Shannon', 'mahfujul.dev@gmail.com', 'Voluptate ut eos sed'),
(5, 'Danielle Wilkins', 'mahfujul.dev@gmail.com', 'Ut sit quam asperio'),
(6, 'Developer ahad', 'mahfujul.dev@gmail.com', 'Hi sir! i want to travel with your team'),
(7, 'Jorden Knapp', 'tilovamyq@mailinator.com', 'Sit suscipit mollit '),
(8, 'Caleb Jarvis', 'pojirixuge@mailinator.com', 'Et cillum suscipit d'),
(9, 'imran', 'imranofficial69@gamil.com', 'i want to travel'),
(10, 'mahfujul Islam ahad', 'mahfuj.dev@gmail.com', 'Hi! brother. this is amazing ');

-- --------------------------------------------------------

--
-- Table structure for table `guids`
--

CREATE TABLE `guids` (
  `id` int NOT NULL,
  `guide_name` varchar(50) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `guide_title` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `guide_image` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_520_ci;

--
-- Dumping data for table `guids`
--

INSERT INTO `guids` (`id`, `guide_name`, `guide_title`, `guide_image`) VALUES
(27, 'Mahfujul Islam ', 'Tourist Guide', '1_1675315356.jpg'),
(28, 'Imran ', 'Tourist Guide', '1_1675315391.png'),
(29, 'sami ', 'Tourist Guide', '1_1675315403.png'),
(30, 'Gregory Stanton ', 'Asperiores esse corp', '1_1675315417.png');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `post_title` varchar(50) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `post_description` varchar(500) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `post_thumbnil` varchar(50) COLLATE utf8mb3_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_520_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_description`, `post_thumbnil`) VALUES
(4, 'Jaflong', 'Labore sed ut dolore Labore sed ut doloreLabore sed ut doloreLabore sed ut doloreLabore sed ut doloreLabore sed ut doloreLabore sed ut doloreLabore sed ut dolore', '1_1675315508.png'),
(5, 'Bisnakandi', 'Error dolores temdpor Error dolores temporError dolores temporError dolores temporError dolores temporError dolores temporError dolores tempor', '1_1675315531.png'),
(7, 'Sapiente similique o', 'Volup tate assu menda Voluptate assumen daVolupt ate a sumenda Volup tate assum endaVo uptate assum endaVol uptate assu mend aVolupt ate assumendaVoluptate assumendaVoluptate assumendaVoluptate assumendaVoluptate assumenda Voluptate assumenda', '1_1675315562.png');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `service_title` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL,
  `service_image` varchar(100) COLLATE utf8mb3_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_520_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_title`, `service_image`) VALUES
(26, 'Delectus sint qui v', '1_1675314344.png'),
(27, 'Aut molestias pariat', '1_1675314354.png'),
(28, 'Et consequatur qui e', '1_1675314362.png'),
(29, 'Laborum Molestiae i', '1_1675314371.png');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int NOT NULL,
  `number` varchar(20) COLLATE utf8mb3_unicode_520_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb3_unicode_520_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8mb3_unicode_520_ci DEFAULT NULL,
  `instagram` varchar(200) COLLATE utf8mb3_unicode_520_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8mb3_unicode_520_ci DEFAULT NULL,
  `youtube` varchar(200) COLLATE utf8mb3_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_520_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `number`, `email`, `facebook`, `instagram`, `twitter`, `youtube`) VALUES
(1, '01716965610', 'ahad@mailinator.com', 'https://www.facebook.com', 'https://www.byre.me', 'https://www.putydan.org', 'https://www.dyfikuracum.co.uk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guids`
--
ALTER TABLE `guids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `guids`
--
ALTER TABLE `guids`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `upload_db`
--
CREATE DATABASE IF NOT EXISTS `upload_db` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_520_ci;
USE `upload_db`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_520_ci;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`id`, `name`) VALUES
(2, 'cover2.jpg'),
(3, 'Rectangle275.png'),
(4, '313446211_5807419352653758_4550144495371340664_n.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
