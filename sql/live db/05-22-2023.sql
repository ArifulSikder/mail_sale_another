-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2023 at 01:29 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `altabcon_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_banners`
--

CREATE TABLE `about_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_banners`
--

INSERT INTO `about_banners` (`id`, `title`, `banner_image`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'About Banner', 'public/uploads/about/banner/1748954511594050.jpg', 0, 1, 1, NULL, '2022-11-08 12:22:20', '2022-11-11 11:37:17'),
(2, 'Add Form', 'public/uploads/about/banner/1748953863374428.jpg', 0, 1, 1, NULL, '2022-11-08 12:23:20', '2022-11-08 12:42:11'),
(3, 'Altab Construction-এ  আপনাকে স্বাগতম', 'public/uploads/about/banner/1748953309187663.jpg', 1, 1, 2, NULL, '2022-11-08 12:24:11', '2023-03-28 12:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `about_contents`
--

CREATE TABLE `about_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_contents`
--

INSERT INTO `about_contents` (`id`, `content`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '<p>আমাদের নির্মাণ ওয়েবসাইটের \"About us&nbsp; \" পেজে&nbsp; স্বাগতম! আমরা একটি নির্মাণ সংস্থা যা আমাদের ক্লায়েন্টদের ব্যতিক্রমী নির্মাণ পরিষেবা প্রদানের জন্য প্রতিশ্রুতিবদ্ধ। আমাদের পেশাদারদের দলটির নির্মাণ শিল্পে ব্যাপক অভিজ্ঞতা রয়েছে এবং সময়মতো এবং বাজেটের মধ্যে উচ্চ-মানের নির্মাণ পরিষেবা প্রদানের জন্য নিবেদিত।</p><p><br></p><p>আমাদের নির্মাণ কোম্পানিতে, আমরা বিশ্বাস করি যে আমাদের ক্লায়েন্টরা আমাদের শীর্ষ অগ্রাধিকার। আমরা আমাদের ক্লায়েন্টদের সাথে ঘনিষ্ঠভাবে কাজ করতে প্রতিশ্রুতিবদ্ধ তাদের অনন্য চাহিদা এবং পছন্দগুলি বোঝার জন্য এবং তাদের প্রত্যাশা ছাড়িয়ে যাওয়া ব্যক্তিগতকৃত সমাধানগুলি সরবরাহ করতে। আমরা বুঝি যে প্রতিটি প্রজেক্টই অনন্য, এবং আমরা আমাদের ক্লায়েন্টদের কথা শোনার এবং তাদের নির্দিষ্ট চাহিদা পূরণ করে এমন কাস্টমাইজড সমাধান প্রদান করার ক্ষমতা নিয়ে নিজেদেরকে গর্বিত করি।</p><p><br></p><p>আমাদের বিশেষজ্ঞদের দলটি অত্যন্ত দক্ষ এবং অভিজ্ঞ পেশাদারদের নিয়ে গঠিত যারা গুণমান এবং কারুশিল্পের সর্বোচ্চ মান প্রদানের জন্য নিবেদিত। আমরা শুধুমাত্র সর্বোত্তম উপকরণ ব্যবহার করি এবং আমাদের ক্লায়েন্টরা যাতে তাদের বিনিয়োগের জন্য সর্বোত্তম মূল্য পায় তা নিশ্চিত করতে সর্বশেষ নির্মাণ কৌশল ব্যবহার করি।</p><p><br></p><p>আমাদের নির্মাণ কোম্পানিতে, আমরা সততা, সততা এবং স্বচ্ছতায় বিশ্বাস করি। আমরা আমাদের ক্লায়েন্টদের সাথে খোলা এবং সৎ যোগাযোগের জন্য প্রতিশ্রুতিবদ্ধ, এবং আমরা বিশ্বাস করি যে এটি শক্তিশালী এবং দীর্ঘস্থায়ী সম্পর্ক গড়ে তোলার চাবিকাঠি।</p><p><br></p><p>আমাদের ক্লায়েন্টদের প্রতি আমাদের প্রতিশ্রুতি ছাড়াও, আমরা স্থায়িত্ব এবং পরিবেশ বান্ধব অনুশীলনের প্রতিও প্রতিশ্রুতিবদ্ধ। আমরা বিশ্বাস করি যে পরিবেশের উপর আমাদের প্রভাব কমিয়ে আনা আমাদের দায়িত্ব, এবং আমাদের নির্মাণ অনুশীলনগুলি যতটা সম্ভব পরিবেশগতভাবে বন্ধুত্বপূর্ণ হয় তা নিশ্চিত করার জন্য আমরা পদক্ষেপ নিই।</p><p><br></p><p>আপনার যদি নির্মাণ পরিষেবার প্রয়োজন হয়, আমরা আপনাকে কীভাবে আপনার নির্মাণ লক্ষ্য অর্জনে সহায়তা করতে পারি সে সম্পর্কে আরও জানতে আজই আমাদের সাথে যোগাযোগ করতে উৎসাহিত করছি। আমাদের দল ব্যতিক্রমী ফলাফল প্রদানের জন্য নিবেদিত, এবং আমরা নিশ্চিত যে আপনি যে কাজটি করি তাতে আপনি সম্পূর্ণরূপে সন্তুষ্ট হবেন। আপনার নির্মাণ চাহিদার জন্য আমাদের নির্মাণ কোম্পানি বিবেচনা করার জন্য আপনাকে ধন্যবাদ</p>', 1, 1, 2, NULL, '2022-11-09 11:11:12', '2023-03-23 10:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `header_title` varchar(255) NOT NULL,
  `app_logo` varchar(255) NOT NULL,
  `fabicon` varchar(255) NOT NULL,
  `logo_image_alt` varchar(255) NOT NULL,
  `construction_equipment_location` varchar(255) NOT NULL,
  `subscribe_title` varchar(255) NOT NULL,
  `subscribe_description` text NOT NULL,
  `location_map` text NOT NULL,
  `footer_about_description` text NOT NULL,
  `get_in_touch` text NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `linkedin_link` varchar(255) NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `footer_title` text NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `app_name`, `header_title`, `app_logo`, `fabicon`, `logo_image_alt`, `construction_equipment_location`, `subscribe_title`, `subscribe_description`, `location_map`, `footer_about_description`, `get_in_touch`, `fb_link`, `twitter_link`, `linkedin_link`, `instagram_link`, `footer_title`, `address`, `mobile`, `mail`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Altab Construction & Machineries', 'Contact Us At +880 1327845461', 'public/uploads/settings/logo altab.png', 'public/uploads/settings/icon.png', 'App Logo', 'কনস্ট্রাকশন ইকুইপমেন্ট , রাজবাড়ী , ঢাকা, বাংলাদেশ।', 'আমাদের নিউজলেটার সাবস্ক্রাইব করুন', 'প্রচার, নতুন পণ্য এবং বিক্রয়. সরাসরি আপনার ইনবক্সে।', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14249.639416367661!2d89.6393597572162!3d23.761130001534784!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fe6bef9cfacbd7%3A0x2e2a6b440cc2af3!2sAltab%20Construction%20%26%20Machineries!5e1!3m2!1sen!2sbd!4v1672240787218!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', 'Altab Construction-এ স্বাগতম, নির্মাণ পরিষেবায় আপনার নির্ভরযোগ্য অংশীদার। আমাদের কোম্পানি কয়েক বছর ধরে ক্লায়েন্টদের শীর্ষস্থানীয় নির্মাণ সমাধান প্রদান করে আসছে। আমরা আমাদের কাজের জন্য গর্বিত এবং আমাদের হাতে নেওয়া প্রতিটি প্রকল্পের জন্য সর্বোচ্চ মানের ফলাফল প্রদান করতে প্রতিশ্রুতিবদ্ধ।', 'সবসময় আমাদের সাথে যোগাযোগ রাখতে ,', '+6589296011', '+6589296011', '+6589296011', '+6589296011', 'Copyright © 2022 https://altabconstruction.com All rights reserved.', '25 Kaki Bukit, Ave 3, 415923', '+880 1327845461', 'hossainaltab2820@gmail.com', 2, NULL, NULL, '2022-11-01 07:48:53', '2023-04-04 10:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `body_sliders`
--

CREATE TABLE `body_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `slider_image` varchar(255) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `body_sliders`
--

INSERT INTO `body_sliders` (`id`, `title`, `description`, `slider_image`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'And Many More..', '<p><span style=\"font-size: 1rem;\">And Many More..</span><br></p>', 'public/uploads/home/slider/1748570319632752.jpg', 1, 1, 1, NULL, '2022-11-06 12:09:29', '2022-11-11 07:42:56'),
(2, 'Body Slider', '<p><br></p><p><span style=\"font-size: 1rem;\">Body Slider</span><br></p>', 'public/uploads/home/slider/hero-2.jpg', 1, 1, 1, NULL, '2022-11-06 12:32:09', '2022-11-11 11:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `set_in_home` tinyint(1) NOT NULL DEFAULT 0,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `alt`, `photo`, `set_in_home`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Bulldozer', 'bulldozer', 'bulldozer', 'public/uploads/product/category/1748672648415209.jpg', 1, 1, 1, 2, NULL, '2022-11-03 12:35:42', '2023-04-01 10:59:24'),
(3, 'WELDING SET', 'welding-set', 'welding-set', 'public/uploads/product/category/1749133448479159.jpg', 1, 0, 1, NULL, NULL, '2022-11-10 12:07:26', '2023-03-23 10:57:49'),
(4, 'WHEEL DOZER', 'wheel-dozer', 'wheel-dozer', 'public/uploads/product/category/1749134708073624.jpeg', 1, 0, 1, NULL, NULL, '2022-11-10 12:27:27', '2023-03-15 21:56:20'),
(7, 'Excavators', 'excavators', 'Excavators', 'public/uploads/product/category/1761903039988466.jpg', 1, 1, 2, 2, NULL, '2023-03-31 20:54:37', '2023-03-31 20:54:57'),
(8, 'Backhoe loaders', 'backhoe-loaders', 'Backhoe loaders', 'public/uploads/product/category/1761956531177768.jpg', 0, 1, 2, NULL, NULL, '2023-04-01 11:04:50', '2023-04-01 11:04:50'),
(9, 'Loaders', 'loaders', 'Loaders', 'public/uploads/product/category/1761958908269788.jpg', 0, 1, 2, 2, NULL, '2023-04-01 11:42:37', '2023-04-01 11:42:50'),
(10, 'Dump Trucks', 'dump-trucks-', 'Dump Trucks', 'public/uploads/product/category/1761992865280527.jpg', 0, 1, 2, NULL, NULL, '2023-04-01 20:42:21', '2023-04-01 20:42:21'),
(11, 'Concrete Mixers', 'concrete-mixers', 'Concrete Mixers', 'public/uploads/product/category/1762316711893561.jpg', 1, 1, 2, 2, NULL, '2023-04-05 10:29:45', '2023-04-05 10:30:23'),
(12, 'Motor Graders', 'motor-graders-', 'Motor Graders', 'public/uploads/product/category/1762318337896313.jpg', 1, 1, 2, NULL, NULL, '2023-04-05 10:55:36', '2023-04-05 10:55:36'),
(13, 'Asphalt Rollers', 'asphalt-rollers', 'Asphalt Rollers', 'public/uploads/product/category/1762319366962417.jpg', 1, 1, 2, NULL, NULL, '2023-04-05 11:11:57', '2023-04-05 11:11:57'),
(14, 'Pile Driver', '-pile-driver', 'Pile Driver', 'public/uploads/product/category/1762604982963546.PNG', 0, 0, 2, 2, NULL, '2023-04-08 14:51:42', '2023-04-11 14:29:55'),
(15, 'Forklift', 'forklift-', 'forklift', 'public/uploads/product/category/1762875466484296.jpg', 1, 1, 2, NULL, NULL, '2023-04-11 14:30:55', '2023-04-11 14:30:55'),
(16, 'Power Units', 'power-units', 'power units', 'public/uploads/product/category/1762880143921861.jpeg', 1, 1, 2, NULL, NULL, '2023-04-11 15:45:16', '2023-04-11 15:45:16'),
(17, 'Portable Generators', 'portable-generators', 'Portable Generators', 'public/uploads/product/category/1762881320371482.jpeg', 1, 1, 2, NULL, NULL, '2023-04-11 16:03:58', '2023-04-11 16:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `consignment_banners`
--

CREATE TABLE `consignment_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consignment_banners`
--

INSERT INTO `consignment_banners` (`id`, `title`, `banner_image`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Consignment Banner', 'public/uploads/consignment/banner/1749210257467323.jpg', 1, 1, 1, NULL, '2022-11-11 08:28:16', '2022-11-11 11:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `consignment_contents`
--

CREATE TABLE `consignment_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consignment_contents`
--

INSERT INTO `consignment_contents` (`id`, `content`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"color: rgb(255, 128, 0); font-family: Roboto, sans-serif; font-size: 2rem; font-weight: 600; text-transform: capitalize;\">Consigning With Us</span><br></p><div class=\"Consigning-text\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><p style=\"font-family: Abel, sans-serif;\">Consigning your used equipment with Multi Ways has never been easier!</p><p style=\"font-family: Abel, sans-serif;\">We understand the marketplace, we will put our knowledge to work for you. Our consignment</p><p style=\"font-family: Abel, sans-serif;\">programs allow you to tap into our powerful used construction equipment sales network to help you find a buyer for your used construction equipment quickly, and for more money. programs allow you to tap into our powerful used construction equipment sales network to help you find a buyer for your used construction equipment quickly, and for more money. There are four top reasons why Multi Ways consignment services work to sell your machines</p><p style=\"font-family: Abel, sans-serif;\">There are four top reasons why Multi Ways consignment services work to sell your machines:</p></div><h4 class=\"subtitle\" style=\"margin-top: 2rem; font-weight: 600; font-family: Roboto, sans-serif; text-transform: capitalize; color: rgb(255, 128, 0); font-size: 17px !important;\">Flexibility</h4><div class=\"Consigning-text\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><p style=\"font-family: Abel, sans-serif;\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Minima, cumque porro perferendis, magnam dolorum asperiores fuga obcaecati consectetur, dolores ullam commodi. Amet vero voluptate adipisci porro nobis assumenda, cupiditate aliquam corrupti maxime distinctio facilis impedit tempora recusandae? Inventore harum ut eligendi, ipsam laborum quaerat? Fugiat aut et doloribus quam architecto?</p></div><h4 class=\"subtitle\" style=\"margin-top: 2rem; font-weight: 600; font-family: Roboto, sans-serif; text-transform: capitalize; color: rgb(255, 128, 0); font-size: 17px !important;\">Flexibility</h4><div class=\"Consigning-text\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><p style=\"font-family: Abel, sans-serif;\">We provide service and maintenance package for your construction equipment with our qualified and experience team of technician We provide service and maintenance package for your construction equipment with our qualified and experience team of technician</p></div><h4 class=\"subtitle\" style=\"margin-top: 2rem; font-weight: 600; font-family: Roboto, sans-serif; text-transform: capitalize; color: rgb(255, 128, 0); font-size: 17px !important;\">Flexibility</h4><div class=\"Consigning-text\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><p style=\"font-family: Abel, sans-serif;\">We provide service and maintenance package for your construction equipment with our qualified and experience team of technician We provide service and maintenance package for your construction equipment with our qualified and experience team of technician</p></div>', 1, 1, 1, NULL, '2022-11-11 08:39:55', '2022-11-11 08:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(1500) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `phone`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'first name', 'last name', 'email@email.com', '01784703111', 'Please Fill Out This Form To Contact Us', NULL, '2022-11-11 12:32:01', '2022-11-11 12:46:07'),
(2, 'antora', 'tabassum', 'antarawakeupict@gmail.com', '01756550819', 'hello', NULL, '2022-12-06 14:22:19', '2022-12-06 14:22:19'),
(3, 'Brianna', 'Belton', 'briannabelton.mkt@gmail.com', '1201201200', 'Hey, Hope you are doing well,\r\n\r\nAs I see, you have a newly launched website not showing up on top search engines like Google/Bing/Yahoo. If you are on page #1, you will get so many new customers every day.\r\n\r\nOur service is an asset to your organization in bringing traffic to your website and generating more Leads, Sales, and Conversions.\r\n\r\nTo improve your business, we can help you with business optimization services like SEO, SMO, ORM, CRO, SMM, PPC, web design, and development to enhance your operation.\r\n\r\nIf you wish to take advantage of this chance.\r\n\r\nPlease respond with your phone number and country code, along with the services (listed above like SEO, SMO, SMM, PPC, web design ) you are interested in, so we can schedule a follow-up call for you within 24 hours. I\'d be glad to go over our plan with you.\r\n\r\nHave a nice day :)\r\n\r\nRegards, Brianna Belton', NULL, '2022-12-12 15:13:46', '2022-12-12 15:13:46'),
(4, 'Antora', 'Nupur', 'antoratabassaumbracisd@gmail.com', '01790280508', 'Hello', NULL, '2022-12-26 10:02:58', '2022-12-26 10:02:58'),
(5, 'Antora', 'Nupur', 'antarawakeupict@gmail.com', '0790280508', 'Hello', NULL, '2022-12-26 10:06:53', '2022-12-26 10:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `image_alt` varchar(255) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `description`, `slider_image`, `image_alt`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'sdfsd', '<p>welcome to first slider</p>', '', 'Image Alt', 1, 1, NULL, '2022-11-01 01:03:29', '2022-10-31 12:43:01', '2022-11-01 01:03:29'),
(2, 'sdfsd', '<p>welcome to first slider</p>', '', 'Image Alt', 1, 1, NULL, '2022-11-01 01:03:26', '2022-10-31 12:43:27', '2022-11-01 01:03:26'),
(3, 'sdfsd', '<p>welcome to first slider</p>', 'C:\\xampp\\tmp\\phpFF1B.tmp', 'Image Alt', 1, 1, NULL, '2022-11-01 01:03:22', '2022-10-31 12:47:26', '2022-11-01 01:03:22'),
(4, 'dsfsd', '<p>dsfds</p>', 'C:\\xampp\\tmp\\php62E2.tmp', 'dsfds', 1, 1, NULL, '2022-11-01 01:03:18', '2022-10-31 12:48:57', '2022-11-01 01:03:18'),
(5, 'আমাদের বিশেষজ্ঞ দল', '<p><b>আমাদের বিশেষজ্ঞদের দলটি নিশ্চিত করতে নিবেদিত যে প্রতিটি প্রকল্পের গুণমান এবং কারুশিল্পের সর্বোচ্চ মানসম্পন্ন । আমরা শুধুমাত্র সর্বোত্তম উপকরণ ব্যবহার করি এবং আমাদের ক্লায়েন্টরা যাতে তাদের বিনিয়োগের জন্য সর্বোত্তম মূল্য পায় তা নিশ্চিত করতে আধুনিক&nbsp; নির্মাণ কৌশল ব্যবহার করি।</b></p>', 'public/uploads/home/slider/hero-1.jpg', 'আমাদের বিশেষজ্ঞ দল', 1, 1, 2, NULL, '2022-11-01 00:56:46', '2023-03-23 10:47:50'),
(6, 'আপনার সমস্ত নির্মাণ প্রয়োজনের জন্য আপনার বিশ্বস্ত অংশীদার Altab Construction-এ স্বাগতম।', '<p><b style=\"font-size: 1rem;\">&nbsp;আমাদের অভিজ্ঞ পেশাদার টীম শুরু থেকে শেষ পর্যন্ত প্রতিটি প্রকল্পে সর্বোচ্চ মানের ভালো কাজ প্রদান করবে ।আপনার দৃষ্টিভঙ্গিকে জীবন্ত করার জন্য দক্ষতা এবং জ্ঞান রয়েছে আমাদের। নির্মাণ পরিষেবা সম্পর্কে আরও জানতে&nbsp; আজই আমাদের সাথে যোগাযোগ করুন।</b><br></p>', 'public/uploads/home/slider/hero-2.jpg', 'আমাদের নির্মাণ ওয়েবসাইটে আপনাকে স্বাগতম।', 1, 1, 2, NULL, '2022-11-01 01:00:13', '2023-04-02 10:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_10_31_171814_create_home_sliders_table', 2),
(8, '2022_11_01_100221_create_app_settings_table', 3),
(9, '2022_11_02_174124_create_categories_table', 4),
(11, '2022_11_03_174231_create_products_table', 5),
(13, '2022_11_04_102609_create_product_multiple_imgs_table', 6),
(14, '2022_11_06_175554_create_body_sliders_table', 7),
(16, '2022_11_07_171123_create_subcribe_emails_table', 8),
(17, '2022_11_08_175646_create_about_banners_table', 9),
(18, '2022_11_08_185753_create_about_contents_table', 10),
(19, '2022_11_11_123454_create_service_banners_table', 11),
(20, '2022_11_11_130146_create_service_contents_table', 12),
(21, '2022_11_11_141616_create_consignment_banners_table', 13),
(22, '2022_11_11_142954_create_consignment_contents_table', 14),
(23, '2022_11_11_150726_create_sell_to_us_banners_table', 15),
(24, '2022_11_11_163932_create_sell_to_us_contents_table', 16),
(25, '2022_11_11_180453_create_contacts_table', 17),
(26, '2022_11_14_165038_create_permission_tables', 18),
(29, '2022_11_14_183430_create_seo_pages_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `sno` varchar(255) NOT NULL,
  `eno` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `image_alt` varchar(255) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `slug`, `model`, `sno`, `eno`, `thumbnail`, `image_alt`, `specification`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 2, 'CATERPILLAR BULLDOZER D8T - (BD8-093)', 'caterpillar-bulldozer-d8t---bd8-093', 'D8T', 'SNO', 'ENO', 'public/uploads/product/1748679269409847.jpg', 'CATERPILLAR BULLDOZER D8T - (BD8-093)', 'public/uploads/product/specification/khatija.pdf', 1, 1, NULL, '2023-03-15 21:52:39', '2022-11-04 05:53:51', '2023-03-15 21:52:39'),
(5, 2, 'Shantui SD16', 'shantui-sd16', 'Shantui SD16', 'Shantui SD16', 'Shantui SD16', 'public/uploads/product/1761955890183169.jpeg', 'Shantui SD16', 'public/uploads/product/specification/HAULOTTE BOOM LIFT HA121 হল একটি মোবাইল এলিভেটেড ওয়ার্ক প্ল্যাটফর্ম.pdf', 1, 2, NULL, NULL, '2022-11-04 06:53:47', '2023-04-01 10:54:39'),
(6, 2, 'AIRMAN AIR COMPRESSOR PDSG-460S - (HC460-001', 'airman-air-compressor-pdsg-460s---hc460-001', 'PDSG-460S', 'B9-4B20087', 'J08C-V11043', 'public/uploads/product/1748679234413322.jpg', 'J08C-V11043', 'public/uploads/product/specification/khatija.pdf', 1, 1, NULL, '2023-04-01 10:50:53', '2022-11-04 06:56:44', '2023-04-01 10:50:53'),
(7, 2, 'SAVALCO ASPHALT FINISHER HM10HD - (AF-098)', 'savalco-asphalt-finisher-hm10hd---af-098', 'HM10HD', '130', '006233', 'public/uploads/product/1748679224592480.png', 'SAVALCO ASPHALT FINISHER HM10HD - (AF-098)', 'public/uploads/product/specification/khatija.pdf', 0, 1, NULL, '2023-03-15 21:52:32', '2022-11-04 07:00:31', '2023-03-15 21:52:32'),
(8, 1, 'asddsd', 'asddsd', 'D8T', 'df', 'dsfsd', 'public/uploads/product/1748680007864469.jpg', 'dsfds', '', 1, 1, NULL, '2023-03-15 21:52:45', '2022-11-05 12:00:11', '2023-03-15 21:52:45'),
(9, 7, 'Caterpillar 320D', 'caterpillar-320d', 'Caterpillar 320D', 'Caterpillar 320D', 'Caterpillar 320D', 'public/uploads/product/1761953099598264.jpeg', 'Caterpillar 320D Excavators', 'public/uploads/product/specification/excavators.pdf', 1, 2, NULL, NULL, '2023-04-01 10:10:18', '2023-04-01 10:10:18'),
(10, 7, 'Komatsu PC200-8', 'komatsu-pc200-8', 'Komatsu PC200-8', 'Komatsu PC200-8', 'Komatsu PC200-8', 'public/uploads/product/1761953593797076.jpeg', 'Komatsu PC200-8', 'public/uploads/product/specification/The Komatsu PC200-8 .pdf', 1, 2, NULL, NULL, '2023-04-01 10:18:09', '2023-04-01 10:18:09'),
(11, 7, 'Hitachi ZX200-3', 'hitachi-zx200-3', 'Hitachi ZX200-3', 'Hitachi ZX200-3', 'Hitachi ZX200-3', 'public/uploads/product/1761954161957626.jpeg', 'Hitachi ZX200-3', 'public/uploads/product/specification/Hitachi ZX200-3.pdf', 1, 2, NULL, NULL, '2023-04-01 10:26:28', '2023-04-01 10:27:11'),
(12, 7, 'Volvo EC210B Prime', 'volvo-ec210b-prime', 'Volvo EC210B Prime', 'Volvo EC210B Prime', 'Volvo EC210B Prime', 'public/uploads/product/1761954597290637.jpg', 'Volvo EC210B Prime', 'public/uploads/product/specification/vlovo.pdf', 1, 2, NULL, NULL, '2023-04-01 10:34:06', '2023-04-01 10:34:06'),
(13, 2, 'Caterpillar D6T', 'caterpillar-d6t', 'Caterpillar D6T', 'Caterpillar D6T', 'Caterpillar D6T', 'public/uploads/product/1761955015273750.jpeg', 'Caterpillar D6T', '', 1, 2, NULL, NULL, '2023-04-01 10:40:44', '2023-04-01 10:40:44'),
(14, 2, 'Komatsu D85', 'komatsu-d85', 'Komatsu D85', 'Komatsu D85', 'Komatsu D85', 'public/uploads/product/1761955159082924.jpg', 'Komatsu D85', '', 1, 2, NULL, NULL, '2023-04-01 10:43:02', '2023-04-01 10:43:02'),
(15, 2, 'JCB JS205LC', 'jcb-js205lc', 'JCB JS205LC', 'JCB JS205LC', 'JCB JS205LC', 'public/uploads/product/1761955535591303.jpg', 'JCB JS205LC', '', 1, 2, NULL, NULL, '2023-04-01 10:49:01', '2023-04-01 10:49:01'),
(16, 8, 'JCB 3CX', 'jcb-3cx', 'JCB 3CX', 'JCB 3CX', 'JCB 3CX', 'public/uploads/product/1761956657295955.jpeg', 'JCB 3CX', '', 1, 2, NULL, NULL, '2023-04-01 11:06:50', '2023-04-01 11:06:50'),
(17, 8, 'Caterpillar 428F2', 'caterpillar-428f2', 'Caterpillar 428F2', 'Caterpillar 428F2', 'Caterpillar 428F2', 'public/uploads/product/1761956786189168.jpeg', 'Caterpillar 428F2', '', 1, 2, NULL, NULL, '2023-04-01 11:08:53', '2023-04-01 11:08:53'),
(18, 8, 'Komatsu WB97S-5', 'komatsu-wb97s-5', 'Komatsu WB97S-5', 'Komatsu WB97S-5', 'Komatsu WB97S-5', 'public/uploads/product/1761957575941939.jpeg', 'Komatsu WB97S-5', '', 1, 2, NULL, '2023-04-05 10:43:18', '2023-04-01 11:21:26', '2023-04-05 10:43:18'),
(19, 8, 'Volvo BL71B', 'volvo-bl71b', 'Volvo BL71B', 'Volvo BL71B', 'Volvo BL71B', 'public/uploads/product/1761958544617824.jpg', 'Volvo BL71B', '', 1, 2, NULL, NULL, '2023-04-01 11:36:50', '2023-04-01 11:36:50'),
(20, 8, 'Mahindra EarthMaster SX 90', 'mahindra-earthmaster-sx-90', 'Mahindra EarthMaster SX 90', 'Mahindra EarthMaster SX 90', 'Mahindra EarthMaster SX 90', 'public/uploads/product/1761958697655037.png', 'Mahindra EarthMaster SX 90', '', 1, 2, NULL, NULL, '2023-04-01 11:39:17', '2023-04-01 11:39:17'),
(21, 9, 'Caterpillar 950 GC', 'caterpillar-950-gc', 'Caterpillar 950 GC', 'Caterpillar 950 GC', 'Caterpillar 950 GC', 'public/uploads/product/1761959046834998.jpg', 'Caterpillar 950 GC', '', 1, 2, NULL, NULL, '2023-04-01 11:44:49', '2023-04-01 11:44:49'),
(22, 9, 'Komatsu WA320-7', 'komatsu-wa320-7', 'Komatsu WA320-7', 'Komatsu WA320-7', 'Komatsu WA320-7', 'public/uploads/product/1761959164047813.png', 'Komatsu WA320-7', '', 1, 2, NULL, NULL, '2023-04-01 11:46:41', '2023-04-01 11:46:41'),
(23, 9, 'Volvo L120H', 'volvo-l120h', 'Volvo L120H', 'Volvo L120H', 'Volvo L120H', 'public/uploads/product/1761959265971995.jpeg', 'Volvo L120H', '', 1, 2, NULL, NULL, '2023-04-01 11:48:18', '2023-04-01 11:48:18'),
(24, 9, 'JCB 457ZX', 'jcb-457zx', 'JCB 457ZX', 'JCB 457ZX', 'JCB 457ZX', 'public/uploads/product/1761959404146843.jpeg', 'JCB 457ZX', '', 1, 2, NULL, NULL, '2023-04-01 11:50:30', '2023-04-01 11:50:30'),
(25, 10, 'Tata Prima LX 2528', 'tata-prima-lx-2528', 'Tata Prima LX 2528', 'Tata Prima LX 2528', 'Tata Prima LX 2528', 'public/uploads/product/1761992968184764.jpg', 'Tata Prima LX 2528', '', 1, 2, NULL, '2023-04-05 10:42:31', '2023-04-01 20:43:59', '2023-04-05 10:42:31'),
(26, 10, 'FAW J6P', 'faw-j6p', 'FAW J6P', 'FAW J6P', 'FAW J6P', 'public/uploads/product/1761993168420856.jpg', 'FAW J6P', '', 1, 2, NULL, NULL, '2023-04-01 20:47:10', '2023-04-01 20:47:10'),
(27, 10, 'Hino 700', 'hino-700', 'Hino 700', 'Hino 700', 'Hino 700', 'public/uploads/product/1761994572941061.jpg', 'Hino 700', '', 1, 2, NULL, NULL, '2023-04-01 20:55:26', '2023-04-01 21:09:30'),
(28, 10, 'Ashok Leyland U-3118', 'ashok-leyland-u-3118', 'Ashok Leyland U-3118', 'Ashok Leyland U-3118', 'Ashok Leyland U-3118', 'public/uploads/product/1761994927286034.png', 'Ashok Leyland U-3118', '', 1, 2, NULL, NULL, '2023-04-01 21:15:08', '2023-04-01 21:15:08'),
(29, 10, 'Isuzu NQR', 'isuzu-nqr', 'Isuzu NQR', 'Isuzu NQR', 'Isuzu NQR', 'public/uploads/product/1761995202871698.jpg', 'Isuzu NQR', '', 1, 2, NULL, NULL, '2023-04-01 21:19:30', '2023-04-01 21:19:30'),
(30, 11, 'HINO 500 FM1J', 'hino-500-fm1j', 'HINO 500 FM1J', 'HINO 500 FM1J', 'HINO 500 FM1J', 'public/uploads/product/1762316843311362.PNG', 'HINO 500 FM1J', '', 1, 2, NULL, NULL, '2023-04-05 10:31:51', '2023-04-05 10:31:51'),
(31, 11, 'Isuzu CYZ51K', 'isuzu-cyz51k', 'Isuzu CYZ51K', 'Isuzu CYZ51K', 'Isuzu CYZ51K', 'public/uploads/product/1762317156799653.jpg', 'Isuzu CYZ51K', '', 1, 2, NULL, NULL, '2023-04-05 10:36:50', '2023-04-05 10:36:50'),
(32, 11, 'Tata Transit Mixer LPK 2518', 'tata-transit-mixer-lpk-2518', 'Tata Transit Mixer LPK 2518', 'Tata Transit Mixer LPK 2518', 'Tata Transit Mixer LPK 2518', 'public/uploads/product/1762317214308146.png', 'Tata Transit Mixer LPK 2518', '', 1, 2, NULL, NULL, '2023-04-05 10:37:45', '2023-04-05 10:37:45'),
(33, 11, 'Ashok Leyland Transit Mixer U-2825', 'ashok-leyland-transit-mixer-u-2825', 'Ashok Leyland Transit Mixer U-2825', 'Ashok Leyland Transit Mixer U-2825', 'Ashok Leyland Transit Mixer U-2825', 'public/uploads/product/1762317453237276.jpg', 'Ashok Leyland Transit Mixer U-2825', '', 1, 2, NULL, NULL, '2023-04-05 10:41:32', '2023-04-05 10:41:32'),
(34, 12, 'Caterpillar 120M', 'caterpillar-120m', 'Caterpillar 120M', 'Caterpillar 120M', 'Caterpillar 120M', 'public/uploads/product/1762318410959220.jpeg', 'Caterpillar 120M', '', 1, 2, NULL, NULL, '2023-04-05 10:56:46', '2023-04-05 10:56:46'),
(35, 12, 'Komatsu GD555-5', 'komatsu-gd555-5', 'Komatsu GD555-5', 'Komatsu GD555-5', 'Komatsu GD555-5', 'public/uploads/product/1762318468670727.png', 'Komatsu GD555-5', '', 1, 2, NULL, NULL, '2023-04-05 10:57:41', '2023-04-05 10:57:41'),
(36, 12, 'XCMG GR215', 'xcmg-gr215', 'XCMG GR215', 'XCMG GR215', 'XCMG GR215', 'public/uploads/product/1762318521638944.jpg', 'XCMG GR215', '', 1, 2, NULL, NULL, '2023-04-05 10:58:31', '2023-04-05 10:58:31'),
(37, 12, 'SDLG G9190', 'sdlg-g9190', 'SDLG G9190', 'SDLG G9190', 'SDLG G9190', 'public/uploads/product/1762318567713587.jpg', 'SDLG G9190', '', 1, 2, NULL, NULL, '2023-04-05 10:59:15', '2023-04-05 10:59:15'),
(38, 13, 'Caterpillar CB54XW', 'caterpillar-cb54xw', 'Caterpillar CB54XW', 'Caterpillar CB54XW', 'Caterpillar CB54XW', 'public/uploads/product/1762319452606482.jpg', 'Caterpillar CB54XW', '', 1, 2, NULL, NULL, '2023-04-05 11:13:19', '2023-04-05 11:13:19'),
(39, 13, 'Dynapac CA250D', 'dynapac-ca250d', 'Dynapac CA250D', 'Dynapac CA250D', 'Bomag BW202AD', 'public/uploads/product/1762319556576211.jpg', 'Dynapac CA250D', '', 1, 2, NULL, NULL, '2023-04-05 11:14:58', '2023-04-05 11:14:58'),
(40, 13, 'Sakai SW502', 'sakai-sw502', 'Sakai SW502', 'Sakai SW502', 'Sakai SW502', 'public/uploads/product/1762319679666940.jpg', 'Sakai SW502', '', 1, 2, NULL, NULL, '2023-04-05 11:16:56', '2023-04-05 11:16:56'),
(41, 13, 'Sakai SW50', 'sakai-sw50', 'Sakai SW502', 'Sakai SW502', 'Sakai SW502', 'public/uploads/product/1762319717721621.jpg', 'Sakai SW502', '', 1, 2, NULL, NULL, '2023-04-05 11:17:32', '2023-04-05 11:17:32'),
(42, 15, 'Toyota Forklift 8FGCU25', 'toyota-forklift-8fgcu25', 'Toyota Forklift 8FGCU25', 'Toyota Forklift 8FGCU25', 'Toyota Forklift 8FGCU25', 'public/uploads/product/1762875544409279.jpeg', 'Toyota Forklift 8FGCU25', '', 1, 2, NULL, NULL, '2023-04-11 14:32:09', '2023-04-11 14:32:09'),
(43, 15, 'Heli CPCD35 Forklift', 'heli-cpcd35-forklift', 'Heli CPCD35 Forklift', 'Heli CPCD35 Forklift', 'Heli CPCD35 Forklift', 'public/uploads/product/1762876237236408.jpg', 'Heli CPCD35 Forklift', '', 1, 2, NULL, NULL, '2023-04-11 14:42:34', '2023-04-11 14:43:10'),
(44, 15, 'Crown RR5220-45 Reach Truck', 'crown-rr5220-45-reach-truck', 'Crown RR5220-45 Reach Truck', 'Crown RR5220-45 Reach Truck', 'Crown RR5220-45 Reach Truck', 'public/uploads/product/1762876351355889.jpeg', 'Crown RR5220-45 Reach Truck', '', 1, 2, NULL, NULL, '2023-04-11 14:44:59', '2023-04-11 14:44:59'),
(45, 15, 'Mitsubishi FG25N Forklift', 'mitsubishi-fg25n-forklift', 'Mitsubishi FG25N Forklift', 'Mitsubishi FG25N Forklift', 'Mitsubishi FG25N Forklift', 'public/uploads/product/1762876408052346.jpeg', 'Mitsubishi FG25N Forklift', '', 1, 2, NULL, NULL, '2023-04-11 14:45:53', '2023-04-11 14:45:53'),
(46, 15, 'Komatsu FG25T Forklift', 'komatsu-fg25t-forklift', 'Komatsu FG25T Forklift', 'Komatsu FG25T Forklift', 'Komatsu FG25T Forklift', 'public/uploads/product/1762876478540098.jpeg', 'Komatsu FG25T Forklift', '', 1, 2, NULL, NULL, '2023-04-11 14:47:00', '2023-04-11 14:47:00'),
(47, 16, 'Caterpillar C18 Diesel Generator', 'caterpillar-c18-diesel-generator', 'Caterpillar C18 Diesel Generator', 'Caterpillar C18 Diesel Generator', 'Caterpillar C18 Diesel Generator', 'public/uploads/product/1762880363415318.jpeg', 'Caterpillar C18 Diesel Generator', '', 1, 2, NULL, NULL, '2023-04-11 15:48:45', '2023-04-11 15:48:45'),
(48, 16, 'Cummins Onan Quiet Series Diesel RV Generator', 'cummins-onan-quiet-series-diesel-rv-generator', 'Cummins Onan Quiet Series Diesel RV Generator', 'Cummins Onan Quiet Series Diesel RV Generator', 'Cummins Onan Quiet Series Diesel RV Generator', 'public/uploads/product/1762880467304039.jpeg', 'Cummins Onan Quiet Series Diesel RV Generator', '', 1, 2, NULL, NULL, '2023-04-11 15:50:24', '2023-04-11 15:50:24'),
(49, 16, 'Kohler 14RESAL-200SELS', 'kohler-14resal-200sels', 'Kohler 14RESAL-200SELS', 'Kohler 14RESAL-200SELS', 'Kohler 14RESAL-200SELS', 'public/uploads/product/1762880607051676.jpeg', 'Kohler 14RESAL-200SELS', '', 1, 2, NULL, NULL, '2023-04-11 15:52:37', '2023-04-11 15:52:37'),
(50, 16, 'Generac RD03022ADAE', 'generac-rd03022adae-', 'Generac RD03022ADAE', 'Generac RD03022ADAE', 'Generac RD03022ADAE', 'public/uploads/product/1762880715670036.jpeg', 'Generac RD03022ADAE', '', 1, 2, NULL, NULL, '2023-04-11 15:54:21', '2023-04-11 15:54:21'),
(51, 16, 'Wacker Neuson G25', 'wacker-neuson-g25-', 'Wacker Neuson G25', 'Wacker Neuson G25', 'Wacker Neuson G25', 'public/uploads/product/1762880787095205.jpeg', 'Wacker Neuson G25', '', 1, 2, NULL, NULL, '2023-04-11 15:55:29', '2023-04-11 15:55:29'),
(52, 16, 'Generac 7043 Home Standby Generator', 'generac-7043-home-standby-generator', 'Generac 7043 Home Standby Generator', 'Generac 7043 Home Standby Generator', 'Generac 7043 Home Standby Generator', 'public/uploads/product/1762880911224564.jpeg', 'Generac 7043 Home Standby Generator', '', 1, 2, NULL, NULL, '2023-04-11 15:57:28', '2023-04-11 15:57:28'),
(53, 16, 'Champion 3800-Watt Dual Fuel RV Ready Portable Generator', 'champion-3800-watt-dual-fuel-rv-ready-portable-generator', 'Champion 3800-Watt Dual Fuel RV Ready Portable Generator', 'Champion 3800-Watt Dual Fuel RV Ready Portable Generator', 'Champion 3800-Watt Dual Fuel RV Ready Portable Generator', 'public/uploads/product/1762881008646383.jpeg', 'Champion 3800-Watt Dual Fuel RV Ready Portable Generator', '', 1, 2, NULL, NULL, '2023-04-11 15:59:00', '2023-04-11 15:59:00'),
(54, 16, 'Westinghouse WGen9500DF', 'westinghouse-wgen9500df', 'Westinghouse WGen9500DF', 'Westinghouse WGen9500DF', 'Westinghouse WGen9500DF', 'public/uploads/product/1762881090634647.jpeg', 'Westinghouse WGen9500DF', '', 1, 2, NULL, NULL, '2023-04-11 16:00:19', '2023-04-11 16:00:19'),
(55, 16, 'Sportsman GEN7500DF', 'sportsman-gen7500df-', 'Sportsman GEN7500DF', 'Sportsman GEN7500DF', 'Sportsman GEN7500DF', 'public/uploads/product/1762881150461912.jpeg', 'Sportsman GEN7500DF', '', 1, 2, NULL, NULL, '2023-04-11 16:01:16', '2023-04-11 16:01:16'),
(56, 16, 'Duromax XP4850EH', 'duromax-xp4850eh-', 'Duromax XP4850EH', 'Duromax XP4850EH', 'Duromax XP4850EH', 'public/uploads/product/1762881201133772.jpeg', 'Duromax XP4850EH', '', 1, 2, NULL, NULL, '2023-04-11 16:02:04', '2023-04-11 16:02:04'),
(57, 17, 'Honda EU2200i', 'honda-eu2200i', 'Honda EU2200i', 'Honda EU2200i', 'Honda EU2200i', 'public/uploads/product/1762881390398864.jpeg', 'Honda EU2200i', '', 1, 2, NULL, NULL, '2023-04-11 16:05:05', '2023-04-11 16:05:05'),
(58, 17, 'Generac GP6500', 'generac-gp6500', 'Generac GP6500', 'Generac GP6500', 'Generac GP6500', 'public/uploads/product/1762881443356592.jpeg', 'Generac GP6500', '', 1, 2, NULL, NULL, '2023-04-11 16:05:55', '2023-04-11 16:05:55'),
(59, 17, 'Westinghouse iGen4500', 'westinghouse-igen4500', 'Westinghouse iGen4500', 'Westinghouse iGen4500', 'Westinghouse iGen4500', 'public/uploads/product/1762881512661476.jpeg', 'Westinghouse iGen4500', '', 1, 2, NULL, NULL, '2023-04-11 16:07:01', '2023-04-11 16:07:01'),
(60, 17, 'Briggs & Stratton P2200 Power Smart Series', 'briggs--stratton-p2200-power-smart-series-', 'Briggs & Stratton P2200 Power Smart Series', 'Briggs & Stratton P2200 Power Smart Series', 'Briggs & Stratton P2200 Power Smart Series', 'public/uploads/product/1762881574287539.jpeg', 'Briggs & Stratton P2200 Power Smart Series', '', 1, 2, NULL, NULL, '2023-04-11 16:08:00', '2023-04-11 16:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_multiple_imgs`
--

CREATE TABLE `product_multiple_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `multiple_image` varchar(255) NOT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_multiple_imgs`
--

INSERT INTO `product_multiple_imgs` (`id`, `product_id`, `multiple_image`, `image_alt`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 4, 'public/uploads/product/multiple/1748566363897674.jpg', NULL, 1, 1, NULL, '2023-03-15 21:52:39', '2022-11-04 05:53:52', '2023-03-15 21:52:39'),
(6, 4, 'public/uploads/product/multiple/1748566364322708.jpeg', NULL, 1, 1, NULL, '2023-03-15 21:52:39', '2022-11-04 05:53:52', '2023-03-15 21:52:39'),
(7, 5, 'public/uploads/product/multiple/1749177020600784.jpeg', 'Single Image', 1, 1, 1, NULL, '2022-11-04 06:53:47', '2022-11-10 23:39:59'),
(8, 5, 'public/uploads/product/multiple/1749177031542630.jpg', 'Single Image', 1, 1, 1, NULL, '2022-11-04 06:53:47', '2022-11-10 23:40:10'),
(9, 5, 'public/uploads/product/multiple/1749177044141373.jpg', 'Single Image', 1, 1, 1, NULL, '2022-11-04 06:53:47', '2022-11-10 23:40:22'),
(10, 6, 'public/uploads/product/multiple/1748570319669304.jpg', NULL, 1, 1, NULL, '2023-04-01 10:50:53', '2022-11-04 06:56:44', '2023-04-01 10:50:53'),
(11, 6, 'public/uploads/product/multiple/1748570319735705.jpg', NULL, 1, 1, NULL, '2023-04-01 10:50:53', '2022-11-04 06:56:44', '2023-04-01 10:50:53'),
(12, 6, 'public/uploads/product/multiple/1748570319767982.jpg', NULL, 1, 1, NULL, '2023-04-01 10:50:53', '2022-11-04 06:56:44', '2023-04-01 10:50:53'),
(13, 6, 'public/uploads/product/multiple/1748570319800419.jpg', NULL, 1, 1, NULL, '2023-04-01 10:50:53', '2022-11-04 06:56:44', '2023-04-01 10:50:53'),
(14, 7, 'public/uploads/product/multiple/1748570558227253.png', NULL, 1, 1, NULL, '2023-03-15 21:52:32', '2022-11-04 07:00:31', '2023-03-15 21:52:32'),
(15, 8, 'public/uploads/product/multiple/1748680008588811.jpg', NULL, 1, 1, NULL, '2023-03-15 21:52:45', '2022-11-05 12:00:12', '2023-03-15 21:52:45'),
(16, 8, 'public/uploads/product/multiple/1748680008859254.jpg', NULL, 1, 1, NULL, '2023-03-15 21:52:45', '2022-11-05 12:00:12', '2023-03-15 21:52:45'),
(17, 8, 'public/uploads/product/multiple/1748680009535070.jpg', NULL, 1, 1, NULL, '2023-03-15 21:52:45', '2022-11-05 12:00:13', '2023-03-15 21:52:45'),
(18, 9, 'public/uploads/product/multiple/1761953099864010.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-01 10:10:18', '2023-04-01 10:10:18'),
(19, 10, 'public/uploads/product/multiple/1761953593994475.webp', NULL, 1, 2, NULL, NULL, '2023-04-01 10:18:09', '2023-04-01 10:18:09'),
(20, 11, 'public/uploads/product/multiple/1761954117014113.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-01 10:26:28', '2023-04-01 10:26:28'),
(21, 12, 'public/uploads/product/multiple/1761954597610246.jpg', NULL, 1, 2, NULL, NULL, '2023-04-01 10:34:06', '2023-04-01 10:34:06'),
(22, 13, 'public/uploads/product/multiple/1761955015461902.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-01 10:40:45', '2023-04-01 10:40:45'),
(23, 14, 'public/uploads/product/multiple/1761955159918227.jpg', NULL, 1, 2, NULL, NULL, '2023-04-01 10:43:02', '2023-04-01 10:43:02'),
(24, 15, 'public/uploads/product/multiple/1761955535835659.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-01 10:49:01', '2023-04-01 10:49:01'),
(25, 16, 'public/uploads/product/multiple/1761956657461702.png', NULL, 1, 2, NULL, NULL, '2023-04-01 11:06:51', '2023-04-01 11:06:51'),
(26, 17, 'public/uploads/product/multiple/1761956786415309.jpg', NULL, 1, 2, NULL, NULL, '2023-04-01 11:08:54', '2023-04-01 11:08:54'),
(27, 18, 'public/uploads/product/multiple/1761957576073117.jpeg', NULL, 1, 2, NULL, '2023-04-05 10:43:18', '2023-04-01 11:21:27', '2023-04-05 10:43:18'),
(28, 19, 'public/uploads/product/multiple/1761958545007722.png', NULL, 1, 2, NULL, NULL, '2023-04-01 11:36:51', '2023-04-01 11:36:51'),
(29, 20, 'public/uploads/product/multiple/1761958698236717.jpg', NULL, 1, 2, NULL, NULL, '2023-04-01 11:39:17', '2023-04-01 11:39:17'),
(30, 21, 'public/uploads/product/multiple/1761959047032021.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-01 11:44:49', '2023-04-01 11:44:49'),
(31, 22, 'public/uploads/product/multiple/1761959164704579.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-01 11:46:42', '2023-04-01 11:46:42'),
(32, 23, 'public/uploads/product/multiple/1761959266124465.jpg', NULL, 1, 2, NULL, NULL, '2023-04-01 11:48:19', '2023-04-01 11:48:19'),
(33, 24, 'public/uploads/product/multiple/1761959404314511.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-01 11:50:30', '2023-04-01 11:50:30'),
(34, 25, 'public/uploads/product/multiple/1761992968630254.jpg', NULL, 1, 2, NULL, '2023-04-05 10:42:31', '2023-04-01 20:44:00', '2023-04-05 10:42:31'),
(35, 26, 'public/uploads/product/multiple/1761993168583629.jpg', NULL, 1, 2, NULL, NULL, '2023-04-01 20:47:10', '2023-04-01 20:47:10'),
(36, 27, 'public/uploads/product/multiple/1761993688364789.png', NULL, 1, 2, NULL, NULL, '2023-04-01 20:55:26', '2023-04-01 20:55:26'),
(37, 28, 'public/uploads/product/multiple/1761994927894615.jpg', NULL, 1, 2, NULL, NULL, '2023-04-01 21:15:08', '2023-04-01 21:15:08'),
(38, 29, 'public/uploads/product/multiple/1761995203013828.jpg', NULL, 1, 2, NULL, NULL, '2023-04-01 21:19:30', '2023-04-01 21:19:30'),
(39, 30, 'public/uploads/product/multiple/1762316843796851.jpg', NULL, 1, 2, NULL, NULL, '2023-04-05 10:31:51', '2023-04-05 10:31:51'),
(40, 31, 'public/uploads/product/multiple/1762317157039887.jpg', NULL, 1, 2, NULL, NULL, '2023-04-05 10:36:50', '2023-04-05 10:36:50'),
(41, 32, 'public/uploads/product/multiple/1762317214683083.jpg', NULL, 1, 2, NULL, NULL, '2023-04-05 10:37:45', '2023-04-05 10:37:45'),
(42, 33, 'public/uploads/product/multiple/1762317453526585.jpg', NULL, 1, 2, NULL, NULL, '2023-04-05 10:41:33', '2023-04-05 10:41:33'),
(43, 34, 'public/uploads/product/multiple/1762318411182002.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-05 10:56:46', '2023-04-05 10:56:46'),
(44, 35, 'public/uploads/product/multiple/1762318469219853.jpg', NULL, 1, 2, NULL, NULL, '2023-04-05 10:57:41', '2023-04-05 10:57:41'),
(45, 36, 'public/uploads/product/multiple/1762318521871657.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-05 10:58:31', '2023-04-05 10:58:31'),
(46, 37, 'public/uploads/product/multiple/1762318567849745.jpg', NULL, 1, 2, NULL, NULL, '2023-04-05 10:59:15', '2023-04-05 10:59:15'),
(47, 38, 'public/uploads/product/multiple/1762319452800445.jpg', NULL, 1, 2, NULL, NULL, '2023-04-05 11:13:19', '2023-04-05 11:13:19'),
(48, 39, 'public/uploads/product/multiple/1762319556843090.jpg', NULL, 1, 2, NULL, NULL, '2023-04-05 11:14:58', '2023-04-05 11:14:58'),
(49, 40, 'public/uploads/product/multiple/1762319680082023.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-05 11:16:56', '2023-04-05 11:16:56'),
(50, 41, 'public/uploads/product/multiple/1762319718134598.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-05 11:17:32', '2023-04-05 11:17:32'),
(51, 42, 'public/uploads/product/multiple/1762875544579419.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 14:32:10', '2023-04-11 14:32:10'),
(52, 43, 'public/uploads/product/multiple/1762876199640082.jpg', NULL, 1, 2, NULL, NULL, '2023-04-11 14:42:34', '2023-04-11 14:42:34'),
(53, 44, 'public/uploads/product/multiple/1762876351485289.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 14:44:59', '2023-04-11 14:44:59'),
(54, 45, 'public/uploads/product/multiple/1762876408173276.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 14:45:53', '2023-04-11 14:45:53'),
(55, 46, 'public/uploads/product/multiple/1762876478669523.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 14:47:00', '2023-04-11 14:47:00'),
(56, 47, 'public/uploads/product/multiple/1762880363541898.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 15:48:45', '2023-04-11 15:48:45'),
(57, 48, 'public/uploads/product/multiple/1762880467413241.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 15:50:24', '2023-04-11 15:50:24'),
(58, 49, 'public/uploads/product/multiple/1762880607158251.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 15:52:38', '2023-04-11 15:52:38'),
(59, 50, 'public/uploads/product/multiple/1762880715791144.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 15:54:21', '2023-04-11 15:54:21'),
(60, 51, 'public/uploads/product/multiple/1762880787217528.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 15:55:29', '2023-04-11 15:55:29'),
(61, 52, 'public/uploads/product/multiple/1762880911381682.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 15:57:28', '2023-04-11 15:57:28'),
(62, 53, 'public/uploads/product/multiple/1762881008773632.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 15:59:01', '2023-04-11 15:59:01'),
(63, 54, 'public/uploads/product/multiple/1762881090831681.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 16:00:19', '2023-04-11 16:00:19'),
(64, 55, 'public/uploads/product/multiple/1762881150590582.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 16:01:16', '2023-04-11 16:01:16'),
(65, 56, 'public/uploads/product/multiple/1762881201283941.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 16:02:04', '2023-04-11 16:02:04'),
(66, 57, 'public/uploads/product/multiple/1762881390606053.jpg', NULL, 1, 2, NULL, NULL, '2023-04-11 16:05:05', '2023-04-11 16:05:05'),
(67, 58, 'public/uploads/product/multiple/1762881443458039.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 16:05:55', '2023-04-11 16:05:55'),
(68, 59, 'public/uploads/product/multiple/1762881512768721.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 16:07:01', '2023-04-11 16:07:01'),
(69, 60, 'public/uploads/product/multiple/1762881574388602.jpeg', NULL, 1, 2, NULL, NULL, '2023-04-11 16:08:00', '2023-04-11 16:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', NULL, NULL),
(2, 'User', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_to_us_banners`
--

CREATE TABLE `sell_to_us_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sell_to_us_banners`
--

INSERT INTO `sell_to_us_banners` (`id`, `title`, `banner_image`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sell To Us', 'public/uploads/sellToUs/banner/1749213452299111.jpg', 1, 1, 1, NULL, '2022-11-11 09:19:03', '2022-11-11 11:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `sell_to_us_contents`
--

CREATE TABLE `sell_to_us_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sell_to_us_contents`
--

INSERT INTO `sell_to_us_contents` (`id`, `content`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"sell-title text-center\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><h2 style=\"margin-bottom: 15px; font-family: Roboto, sans-serif; text-transform: capitalize; color: rgb(255, 128, 0); font-weight: 600 !important;\"><br>Sell Your Equipment To Us</h2></div><div class=\"sell-text text-center\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><p style=\"font-family: Abel, sans-serif;\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Minima, cumque porro perferendis, magnam dolorum asperiores fuga obcaecati consectetur, dolores ullam commodi. Amet vero voluptate adipisci porro nobis assumenda, cupiditate aliquam corrupti maxime distinctio facilis impedit tempora recusandae? Inventore harum ut eligendi, ipsam laborum quaerat? Fugiat aut et doloribus quam architecto?</p></div>', 1, 1, 1, NULL, '2022-11-11 10:45:08', '2022-11-11 10:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `published_time` varchar(255) DEFAULT NULL,
  `modified_time` varchar(255) DEFAULT NULL,
  `expiration_time` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `canonical` varchar(255) DEFAULT NULL,
  `og_locale` varchar(255) DEFAULT NULL,
  `og_url` varchar(255) DEFAULT NULL,
  `og_type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `link_img_size` varchar(255) DEFAULT NULL,
  `image_height` varchar(255) DEFAULT NULL,
  `image_width` varchar(255) DEFAULT NULL,
  `twitter_side` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `slug`, `title`, `description`, `keywords`, `published_time`, `modified_time`, `expiration_time`, `author`, `section`, `canonical`, `og_locale`, `og_url`, `og_type`, `image`, `image_url`, `link_img_size`, `image_height`, `image_width`, `twitter_side`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Home', '<p><br></p>', 'hi,hello,bye', '2022-11-18 23:33:00', '2022-11-18 23:33:00', '2022-11-18 23:33:00', NULL, NULL, NULL, NULL, NULL, NULL, 'public/uploads/seo/1749856238986743.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-18 11:35:53', '2022-12-06 00:14:17'),
(2, 'about', 'About', NULL, NULL, '2022-11-18 17:39:40', '2022-11-18 17:39:40', '2022-11-18 17:39:40', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-18 11:39:40', '2022-11-18 11:39:40'),
(3, 'collections', 'Collections', NULL, NULL, '2022-11-18 17:46:11', '2022-11-18 17:46:11', '2022-11-18 17:46:11', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-18 11:46:11', '2022-11-18 11:46:11'),
(4, 'service', 'Service', NULL, NULL, '2022-11-18 17:48:02', '2022-11-18 17:48:02', '2022-11-18 17:48:02', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-18 11:48:02', '2022-11-18 11:48:02'),
(5, 'consignment', 'Consignment', NULL, NULL, '2022-11-18 17:49:26', '2022-11-18 17:49:26', '2022-11-18 17:49:26', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-18 11:49:26', '2022-11-18 11:49:26'),
(6, 'sell-to-us', 'Sell To Us', NULL, NULL, '2022-11-18 17:50:18', '2022-11-18 17:50:18', '2022-11-18 17:50:18', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-18 11:50:18', '2022-11-18 11:50:18'),
(7, 'contact-us', 'Contact Us', NULL, NULL, '2022-11-18 17:51:27', '2022-11-18 17:51:27', '2022-11-18 17:51:27', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-18 11:51:27', '2022-11-18 11:51:27'),
(8, 'ariful-sikder', 'Ariful', NULL, NULL, '2022-12-28 14:22:51', '2022-12-28 14:22:51', '2022-12-28 14:22:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, '2022-11-18 11:59:46', '2022-12-28 19:22:51'),
(9, 'mobile-updated', 'Mobile Update', NULL, NULL, '2022-11-18 18:03:38', '2022-11-18 18:03:38', '2022-11-18 18:03:38', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-11-18 12:03:38', '2022-11-18 12:03:38'),
(10, 'asddsd', 'Demo', NULL, NULL, '2022-12-28 14:22:23', '2022-12-28 14:22:23', '2022-12-28 14:22:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2022-12-28 19:22:23'),
(11, 'savalco-asphalt-finisher-hm10hd---af-098', 'SAVALCO ASPHALT FINISHER HM10HD - (AF-098)', NULL, NULL, '2022-12-11 05:48:38', '2022-12-11 05:48:38', '2022-12-11 05:48:38', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-12-11 10:48:38', '2022-12-11 10:48:38'),
(12, 'airman-air-compressor-pdsg-460s---hc460-001', 'AIRMAN AIR COMPRESSOR PDSG-460S - (HC460-001', NULL, NULL, '2022-12-11 05:50:30', '2022-12-11 05:50:30', '2022-12-11 05:50:30', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-12-11 10:50:30', '2022-12-11 10:50:30'),
(13, 'shantui-sd16', 'HAULOTTE BOOM LIFT HA121 - (ML-304)', NULL, NULL, '2022-12-11 05:50:53', '2022-12-11 05:50:53', '2022-12-11 05:50:53', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, '2022-12-11 10:50:53', '2023-04-01 10:55:20'),
(14, 'caterpillar-bulldozer-d8t---bd8-093', 'CATERPILLAR BULLDOZER D8T - (BD8-093)', NULL, NULL, '2022-12-11 05:51:18', '2022-12-11 05:51:18', '2022-12-11 05:51:18', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-12-11 10:51:18', '2022-12-11 10:51:18'),
(15, 'bulldozer', 'Bulldozer', NULL, NULL, '2022-12-28 14:27:55', '2022-12-28 14:27:55', '2022-12-28 14:27:55', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, '2022-12-28 19:27:55', '2023-04-01 10:59:24'),
(16, 'welding-set', 'welding-set', NULL, NULL, '2022-12-28 14:48:12', '2022-12-28 14:48:12', '2022-12-28 14:48:12', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-12-28 19:48:12', '2022-12-28 19:48:12'),
(17, 'wheel-dozer', 'wheel-dozer', NULL, NULL, '2022-12-28 14:49:25', '2022-12-28 14:49:25', '2022-12-28 14:49:25', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-12-28 19:49:25', '2022-12-28 19:49:25'),
(18, 'wheel-loader', 'wheel-loader', NULL, NULL, '2022-12-28 14:49:40', '2022-12-28 14:49:40', '2022-12-28 14:49:40', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2022-12-28 19:49:40', '2022-12-28 19:49:40'),
(19, 'excavators', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, '2023-03-31 20:54:37', '2023-03-31 20:54:57'),
(20, 'caterpillar-320d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 10:10:18', '2023-04-01 10:10:18'),
(21, 'komatsu-pc200-8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 10:18:09', '2023-04-01 10:18:09'),
(22, 'hitachi-zx200-3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, '2023-04-01 10:26:28', '2023-04-01 10:27:33'),
(23, 'volvo-ec210b-prime', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 10:34:06', '2023-04-01 10:34:06'),
(24, 'caterpillar-d6t', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 10:40:44', '2023-04-01 10:40:44'),
(25, 'komatsu-d85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 10:43:02', '2023-04-01 10:43:02'),
(26, 'jcb-js205lc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 10:49:01', '2023-04-01 10:49:01'),
(27, 'backhoe-loaders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 11:04:50', '2023-04-01 11:04:50'),
(28, 'jcb-3cx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 11:06:50', '2023-04-01 11:06:50'),
(29, 'caterpillar-428f2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 11:08:53', '2023-04-01 11:08:53'),
(30, 'komatsu-wb97s-5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 11:21:26', '2023-04-01 11:21:26'),
(31, 'volvo-bl71b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 11:36:50', '2023-04-01 11:36:50'),
(32, 'mahindra-earthmaster-sx-90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 11:39:17', '2023-04-01 11:39:17'),
(33, 'loaders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, '2023-04-01 11:42:37', '2023-04-01 11:42:50'),
(34, 'caterpillar-950-gc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 11:44:49', '2023-04-01 11:44:49'),
(35, 'komatsu-wa320-7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 11:46:41', '2023-04-01 11:46:41'),
(36, 'volvo-l120h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 11:48:18', '2023-04-01 11:48:18'),
(37, 'jcb-457zx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 11:50:30', '2023-04-01 11:50:30'),
(38, 'dump-trucks-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 20:42:21', '2023-04-01 20:42:21'),
(39, 'tata-prima-lx-2528', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 20:43:59', '2023-04-01 20:43:59'),
(40, 'faw-j6p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 20:47:10', '2023-04-01 20:47:10'),
(41, 'hino-700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, '2023-04-01 20:55:26', '2023-04-01 21:09:29'),
(42, 'ashok-leyland-u-3118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 21:15:08', '2023-04-01 21:15:08'),
(43, 'isuzu-nqr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-01 21:19:30', '2023-04-01 21:19:30'),
(44, 'concrete-mixers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, '2023-04-05 10:29:45', '2023-04-05 10:30:23'),
(45, 'hino-500-fm1j', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 10:31:51', '2023-04-05 10:31:51'),
(46, 'isuzu-cyz51k', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 10:36:50', '2023-04-05 10:36:50'),
(47, 'tata-transit-mixer-lpk-2518', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 10:37:45', '2023-04-05 10:37:45'),
(48, 'ashok-leyland-transit-mixer-u-2825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 10:41:32', '2023-04-05 10:41:32'),
(49, 'motor-graders-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 10:55:36', '2023-04-05 10:55:36'),
(50, 'caterpillar-120m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 10:56:46', '2023-04-05 10:56:46'),
(51, 'komatsu-gd555-5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 10:57:41', '2023-04-05 10:57:41'),
(52, 'xcmg-gr215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 10:58:31', '2023-04-05 10:58:31'),
(53, 'sdlg-g9190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 10:59:15', '2023-04-05 10:59:15'),
(54, 'asphalt-rollers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 11:11:57', '2023-04-05 11:11:57'),
(55, 'caterpillar-cb54xw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 11:13:19', '2023-04-05 11:13:19'),
(56, 'dynapac-ca250d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 11:14:58', '2023-04-05 11:14:58'),
(57, 'sakai-sw502', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 11:16:56', '2023-04-05 11:16:56'),
(58, 'sakai-sw50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-05 11:17:32', '2023-04-05 11:17:32'),
(59, '-pile-driver', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, '2023-04-08 14:51:42', '2023-04-11 14:29:55'),
(60, 'forklift-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 14:30:55', '2023-04-11 14:30:55'),
(61, 'toyota-forklift-8fgcu25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 14:32:09', '2023-04-11 14:32:09'),
(62, 'heli-cpcd35-forklift', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, '2023-04-11 14:42:34', '2023-04-11 14:43:10'),
(63, 'crown-rr5220-45-reach-truck', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 14:44:59', '2023-04-11 14:44:59'),
(64, 'mitsubishi-fg25n-forklift', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 14:45:53', '2023-04-11 14:45:53'),
(65, 'komatsu-fg25t-forklift', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 14:47:00', '2023-04-11 14:47:00'),
(66, 'power-units', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 15:45:16', '2023-04-11 15:45:16'),
(67, 'caterpillar-c18-diesel-generator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 15:48:45', '2023-04-11 15:48:45'),
(68, 'cummins-onan-quiet-series-diesel-rv-generator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 15:50:24', '2023-04-11 15:50:24'),
(69, 'kohler-14resal-200sels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 15:52:37', '2023-04-11 15:52:37'),
(70, 'generac-rd03022adae-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 15:54:21', '2023-04-11 15:54:21'),
(71, 'wacker-neuson-g25-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 15:55:29', '2023-04-11 15:55:29'),
(72, 'generac-7043-home-standby-generator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 15:57:28', '2023-04-11 15:57:28'),
(73, 'champion-3800-watt-dual-fuel-rv-ready-portable-generator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 15:59:00', '2023-04-11 15:59:00'),
(74, 'westinghouse-wgen9500df', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 16:00:19', '2023-04-11 16:00:19'),
(75, 'sportsman-gen7500df-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 16:01:16', '2023-04-11 16:01:16'),
(76, 'duromax-xp4850eh-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 16:02:04', '2023-04-11 16:02:04'),
(77, 'portable-generators', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 16:03:58', '2023-04-11 16:03:58'),
(78, 'honda-eu2200i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 16:05:05', '2023-04-11 16:05:05'),
(79, 'generac-gp6500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 16:05:55', '2023-04-11 16:05:55'),
(80, 'westinghouse-igen4500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 16:07:01', '2023-04-11 16:07:01'),
(81, 'briggs--stratton-p2200-power-smart-series-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, '2023-04-11 16:08:00', '2023-04-11 16:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_banners`
--

CREATE TABLE `service_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_banners`
--

INSERT INTO `service_banners` (`id`, `title`, `banner_image`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Service Banner', 'public/uploads/service/banner/1749204328902773.jpg', 0, 1, NULL, NULL, '2022-11-11 06:54:02', '2022-11-11 11:40:41'),
(2, 'Service Banner', 'public/uploads/service/banner/1749204370423156.jpg', 1, 1, 1, NULL, '2022-11-11 06:54:42', '2022-11-11 11:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `service_contents`
--

CREATE TABLE `service_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_contents`
--

INSERT INTO `service_contents` (`id`, `content`, `active_status`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"color: rgb(255, 128, 0); font-family: Roboto, sans-serif; font-size: 1.29412em; font-weight: 600; text-transform: capitalize;\">Servicing And Maintenance</span><br></p><div class=\"service-text\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><p style=\"font-family: Abel, sans-serif;\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Minima, cumque porro perferendis, magnam dolorum asperiores fuga obcaecati consectetur, dolores ullam commodi. Amet vero voluptate adipisci porro nobis assumenda, cupiditate aliquam corrupti maxime distinctio facilis impedit tempora recusandae? Inventore harum ut eligendi, ipsam laborum quaerat? Fugiat aut et doloribus quam architecto?</p></div><h3 class=\"subtitle\" style=\"margin-top: 2rem; font-weight: 600; font-size: 1.29412em; font-family: Roboto, sans-serif; text-transform: capitalize; color: rgb(255, 128, 0);\">Servicing And Maintenance</h3><div class=\"service-text\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><p style=\"font-family: Abel, sans-serif;\">We provide service and maintenance package for your construction equipment with our qualified and experience team of technician We provide service and maintenance package for your construction equipment with our qualified and experience team of technician</p></div><h3 class=\"subtitle\" style=\"margin-top: 2rem; font-weight: 600; font-size: 1.29412em; font-family: Roboto, sans-serif; text-transform: capitalize; color: rgb(255, 128, 0);\">Servicing And Maintenance</h3><div class=\"service-text\" style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><p style=\"font-family: Abel, sans-serif;\">We provide service and maintenance package for your construction equipment with our qualified and experience team of technician We provide service and maintenance package for your construction equipment with our qualified and experience team of technician</p></div>', 1, 1, 1, NULL, '2022-11-11 07:09:47', '2022-11-11 07:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `subcribe_emails`
--

CREATE TABLE `subcribe_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcribe_emails`
--

INSERT INTO `subcribe_emails` (`id`, `email`, `active_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'hossainaltab2891@gmail.com', 0, NULL, '2022-12-06 04:23:32', '2022-12-06 04:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Altab Hossain', 'public/uploads/user/1749496104189984.jpg', 'hossainaltab2820@gmail.com', NULL, '$2y$10$ryQZ7e.8DqNSbx1cwbwErebwzdtCChCRKUX9hVTXYEhLJwgrPVX4e', NULL, '2022-10-30 09:21:14', '2022-12-06 04:32:06'),
(2, 'Ariful', 'public/uploads/user/1749493731585312.jpg', 'ariful@gmail.com', NULL, '$2y$10$yt7d/NgrGhOfcmQAHML57eiXadty0z6bQfgtL4SbDDhLs4J.55AGO', NULL, '2022-11-14 11:33:58', '2023-04-19 14:56:47'),
(3, 'Rifat Molla', 'public/uploads/user/1763601777728376.jpg', 'rifat@gmail.com', NULL, '$2y$10$y/Cmm8ydCG/Wr2ZU3hFPwO5Fw0/dEO44TbPPJtmQLWePukJNwi8nG', NULL, '2023-04-19 14:55:20', '2023-04-19 14:55:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_banners`
--
ALTER TABLE `about_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_contents`
--
ALTER TABLE `about_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `body_sliders`
--
ALTER TABLE `body_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consignment_banners`
--
ALTER TABLE `consignment_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consignment_contents`
--
ALTER TABLE `consignment_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_multiple_imgs`
--
ALTER TABLE `product_multiple_imgs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sell_to_us_banners`
--
ALTER TABLE `sell_to_us_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_to_us_contents`
--
ALTER TABLE `sell_to_us_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_banners`
--
ALTER TABLE `service_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_contents`
--
ALTER TABLE `service_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcribe_emails`
--
ALTER TABLE `subcribe_emails`
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
-- AUTO_INCREMENT for table `about_banners`
--
ALTER TABLE `about_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `about_contents`
--
ALTER TABLE `about_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `body_sliders`
--
ALTER TABLE `body_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `consignment_banners`
--
ALTER TABLE `consignment_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `consignment_contents`
--
ALTER TABLE `consignment_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `product_multiple_imgs`
--
ALTER TABLE `product_multiple_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sell_to_us_banners`
--
ALTER TABLE `sell_to_us_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sell_to_us_contents`
--
ALTER TABLE `sell_to_us_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `service_banners`
--
ALTER TABLE `service_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_contents`
--
ALTER TABLE `service_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcribe_emails`
--
ALTER TABLE `subcribe_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
