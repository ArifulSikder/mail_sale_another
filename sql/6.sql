-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 25, 2023 at 01:41 PM
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
(2, '<h6>&nbsp;</h6>\r\n\r\n<h6><strong>&ldquo;WHAT IS PVA ACCOUNT&rdquo;????</strong></h6>\r\n\r\n<p>The&nbsp;<strong>PVA</strong>&nbsp;is a (phone verified account) this is a genuine account, which is phone verified account so non-pva has not been phone verified. Facebook phone verified account and other social media account have more privileges than Non-pva and also pva can add more friend in a safe way,send more message, post updates with URL and most important is that PVA won&rsquo;t ban easily as Non-PVA.</p>\r\n\r\n<h6><strong>&ldquo;WHAT WE SERVE&rdquo;</strong></h6>\r\n\r\n<p>We are here to serve you the best quality&nbsp;<strong>pva account</strong>&nbsp;in the&nbsp;<strong>best and cheap price</strong>&nbsp;we provide the different types of accounts according to our client&rsquo;s need. We will never give the fake account. we provide the best and 100% Working PVA Accounts. All Accounts are created with Unique IP PVA Accounts are 100% Verified, We Never Negotiate on Quality. You can&nbsp;<strong>Buy Instagram Accounts in bulk ,</strong>&nbsp;<strong>bulk email-business account,</strong>&nbsp;<strong>buy Facebook account,</strong>&nbsp;<strong>twitter pva accounts</strong></p>\r\n\r\n<p><strong>&ldquo;WHAT YOU GET IN OUR SERVICES&rdquo;</strong></p>\r\n\r\n<p>we allow more privileges than non-pva, we allow posting without captchas also provide it from our website.This&nbsp;<strong>PVA</strong>&nbsp;is Good and Profitable way to Grow Your Business all the&nbsp;<strong>social media accounts</strong>&nbsp;You can&nbsp;<strong>buy genuine real instagram likes and followers</strong>&nbsp;and also get&nbsp;<strong>bulk verify email accounts</strong>&nbsp;and also&nbsp;<strong>get google voice call phone number account</strong>&nbsp;you can buy&nbsp;<strong>buy old pinterest and hotmail PVA accounts.</strong></p>\r\n\r\n<p>For Any Query Please contact us Via Chat.We are Here 24hrs in Your Service.</p>\r\n\r\n<p>Thanks</p>\r\n\r\n<p>PVAESHOP &amp; TEAM</p>', 1, 1, 1, NULL, '2023-08-12 00:00:22', '2023-08-24 15:41:33'),
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
  `policy_type` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 2, 'users are their sole mment', 0, 1, NULL, NULL, '2023-08-06 04:41:30', '2023-08-06 04:41:30'),
(2, 1, '<p>Comments published by users are their sole responsibility and the users will take full responsibility, liability, and blame for any libel or litigation that results from something written in or as a direct result of something written in a comment. The Company is not liable for any comment published by users and reserve the right to delete any comment for any reason whatsoever.</p><h2><strong>No Responsibility Disclaimer</strong></h2><p>The information on the Service is provided with the understanding that the Company is not herein engaged in rendering legal, accounting, tax, or other professional advice&nbsp;</p><h2><strong>\"Use at Your Own Risk\" Disclaimer</strong></h2><p>All information in the Service is provided \" as is\" with no guarantee of completeness, accuracy, timeliness or of the results obtained from the use of this information, and without warranty of any kind, express or implied, including, but not limited to warranties of performance, merchantability, and fitness for a particular purpose.</p><p>The Company will not be liable to You or anyone else for any decision made or action taken in reliance on the information given by the Service or for any consequential, special or similar damages, even if advised of the possibility of such damages.</p><h2><strong>Contact Us</strong></h2><p>If you have any questions about this Disclaimer, You can contact Us:</p><ul><li>By email: pvaeshop@gmail.com</li></ul>', 1, 1, NULL, NULL, '2023-08-06 04:42:15', '2023-08-06 04:42:15'),
(3, 2, '<p>Comments published by users are their sole responsibility and the users will take full responsibility, liability, and blame for any libel or litigation that results from something written in or as a direct result of something written in a comment. The Company is not liable for any comment published by users and reserve the right to delete any comment for any reason whatsoever.</p><h2><strong>No Responsibility Disclaimer</strong></h2><p>The information on the Service is provided with the understanding that the Company is not herein engaged in rendering legal, accounting, tax, or other professional advice </p><h2><strong>\"Use at Your Own Risk\" Disclaimer</strong></h2><p>All information in the Service is provided \" as is\" with no guarantee of completeness, accuracy, timeliness or of the results obtained from the use of this information, and without warranty of any kind, express or implied, including, but not limited to warranties of performance, merchantability, and fitness for a particular purpose.</p><p>The Company will not be liable to You or anyone else for any decision made or action taken in reliance on the information given by the Service or for any consequential, special or similar damages, even if advised of the possibility of such damages.</p><h2><strong>Contact </strong></h2><p>If you have any questions about this Disclaimer, You can contact Us:</p><ul><li>By email: pvaeshop@gmail.com</li></ul>', 0, 1, 1, NULL, '2023-08-06 04:42:26', '2023-08-09 04:39:14'),
(5, 1, '<p>Comments published by users are their sole responsibility and the users will take full responsibility, liability, and blame for any libel or litigation that results from something written in or as a direct result of something written in a comment. The Company is not liable for any comment published by users and reserve the right to delete any comment for any reason whatsoever.</p>\r\n\r\n<h2><strong>No Responsibility Disclaimer</strong></h2>\r\n\r\n<p>The information on the Service is provided with the understanding that the Company is not herein engaged in rendering legal, accounting, tax, or other professional advice&nbsp;</p>\r\n\r\n<h2><strong>&quot;Use at Your Own Risk&quot; Disclaimer</strong></h2>\r\n\r\n<p>All information in the Service is provided &quot; as is&quot; with no guarantee of completeness, accuracy, timeliness or of the results obtained from the use of this information, and without warranty of any kind, express or implied, including, but not limited to warranties of performance, merchantability, and fitness for a particular purpose.</p>\r\n\r\n<p>The Company will not be liable to You or anyone else for any decision made or action taken in reliance on the information given by the Service or for any consequential, special or similar damages, even if advised of the possibility of such damages.</p>\r\n\r\n<h2><strong>Contact&nbsp;</strong></h2>\r\n\r\n<p>If you have any questions about this Disclaimer, You can contact Us</p>', 1, 1, 1, NULL, '2023-08-09 04:08:28', '2023-08-09 07:26:55'),
(6, 3, '<h2>Fugiat deserunt ali</h2>\r\n\r\n<p><strong>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RATE.</strong></p>\r\n\r\n<p><em>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUN</em></p>\r\n\r\n<h2>Fugiat deserunt ali</h2>\r\n\r\n<p><strong>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RATE.</strong></p>\r\n\r\n<p><em>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUN</em></p>\r\n\r\n<h2>Fugiat deserunt ali</h2>\r\n\r\n<p><strong>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUNTS MANUALLY CREATED ACCOUNTS ON DISCOUNT RATE.</strong></p>\r\n\r\n<p><em>GET REAL GMAIL PVA ACCOUNTS.BUY GMAIL OLD ACCOUNTS. PVA ACCOUN</em></p>', 1, 1, NULL, NULL, '2023-08-09 07:28:01', '2023-08-09 07:28:01');

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
(1, 'BULLDOZER', '#', 0, NULL, 1, 1, NULL, '2023-06-06 10:24:42', '2023-08-24 14:19:08'),
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
  `coupon_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Sade Spence', '#sade234', 5, '2016-12-12T18:20', '2018-03-07T09:31', 53, 100, 1, 1, 1, NULL, '2023-08-24 06:26:16', '2023-08-24 06:26:23'),
(2, 'Sade Spence', '#sade234', 4, '2023-08-17T18:20', '2023-08-31T09:31', 53, 100, 1, 1, 1, NULL, '2023-08-24 06:26:16', '2023-08-24 06:28:18'),
(3, 'Mikayla Stout', '#mikayla32', 7, '2023-08-24T16:30', '2023-08-31T17:28', 65, 100, 1, 1, 1, NULL, '2023-08-24 06:27:27', '2023-08-24 06:30:30'),
(4, 'Mikayla Stout', '#mikayla3', 6, '2023-08-24T16:30', '2023-08-31T17:28', 65, 100, 1, 1, NULL, NULL, '2023-08-24 06:27:27', '2023-08-24 06:27:27');

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
(3, 'saiful islam', 'saiful.is00007@gmail.com', 'i want to buy  something', 1, 1, NULL, '2023-08-23 04:37:23', '2023-08-22 16:36:13', '2023-08-23 04:37:23');

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
(2, 1, 'Is this safe to use on Facebook?', 'This is totally safe to using. Because of its your Facebook account never ban.', 0, 1, 1, NULL, '2023-08-10 23:00:22', '2023-08-12 01:57:00'),
(3, 2, 'Does Pvaeshop provide real Twitter Accounts?', 'All of these Twitter Accounts are real as we provide you it from human user.', 0, 1, 1, '2023-08-24 15:40:57', '2023-08-12 01:57:39', '2023-08-24 15:40:57');

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
(28, '2023_08_06_094155_create_business_policies_table', 6),
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
(112, '2023_08_13_135020_create_coupons_table', 26),
(113, '2023_08_23_232036_create_otp_varifications_table', 27);

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
(4, 1, 'Montana Short', 'Rowan Perry', 'Owen and Lindsey Traders', NULL, 'Odio nisi et nemo ir', 'Nihil mollit illo co', 'Quia quas eaque non', 'Id sit totam commod', 'CM', 'Dolore laudantium q', '4', 'hajef@mailinator.com', 'Pending', 'Tenetur ut enim dese', 2698.00, 0.00, 1, 1, NULL, '2023-08-23 17:44:18', '2023-08-23 17:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `otp_varifications`
--

CREATE TABLE `otp_varifications` (
  `id` bigint UNSIGNED NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, 4, 'ahad', 4242424242424242, 12, 2028, 123, 'tok_1NiL6JSAN6jKDLrc2gapHnEO', 2698.00, NULL, '2023-08-23 17:44:18', '2023-08-23 17:44:18');

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
(1, 'public/uploads/1774671905556006.png', 3, 4, 'Gail Vaughns', 'gail-vaughns', 0, 816.00, 0, 1, 1, '2023-08-24 14:24:24', '2023-08-19 15:30:16', '2023-08-24 14:24:24'),
(2, 'public/uploads/1775120910147989.jpg', 3, 4, 'Gmail Acoount', 'gmail-acoount', 1, 100.00, 1, 1, 1, NULL, '2023-08-19 15:30:55', '2023-08-24 14:28:49'),
(3, 'public/uploads/1775122067584536.jpg', 6, 7, 'Facebook Account', 'facebook-account', 1, 20.00, 1, 1, 1, NULL, '2023-08-19 15:31:20', '2023-08-24 14:45:24'),
(4, 'public/uploads/1775121607822087.jpg', 3, 5, 'Bulk Gmail Account', 'bulk-gmail-account', 1, 10.00, 1, 1, 1, NULL, '2023-08-19 15:31:41', '2023-08-24 14:38:06'),
(5, 'public/uploads/1775121564864176.jpeg', 6, 8, 'Facebook Group', 'facebook-group', 1, 50.00, 1, 1, 1, NULL, '2023-08-19 15:32:03', '2023-08-24 14:37:25'),
(6, 'public/uploads/1774672042894813.png', 6, 2, 'Brody Adamss', 'brody-adamss', 0, 697.00, 0, 1, 1, NULL, '2023-08-19 15:32:27', '2023-08-24 14:47:31'),
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
(3, 4, 4, 4, 541.00, NULL, '2023-08-23 17:44:18', '2023-08-23 17:44:18');

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
(2, 'templete2', 'Est dolore laborum a', '<p><span style=\"font-size:28px\"><strong>&nbsp;as their primary communication </strong></span>channel as well as for direct social communication. One cannot overlook the importance of having a good email marketing service as it can enhance your online business growth to a whole new level. If you&rsquo;re looking f</p>', 'https://www.aasdf.com/', 1, 1, 1, NULL, '2023-08-18 14:07:52', '2023-08-18 14:08:24');

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
(2, 'Customer', 'gukoqoj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lemisyr@mailinator.com', NULL, '$2y$10$4MiOhsq1m28YUkNbDIryzOHrp592adRYWK1wj3dQYUkXY3Bs/xIVS', NULL, NULL, '2023-07-18 11:13:37', '2023-07-18 11:13:37');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_messages`
--
ALTER TABLE `customer_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otp_varifications`
--
ALTER TABLE `otp_varifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
