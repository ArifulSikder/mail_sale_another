-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 25, 2023 at 06:44 PM
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
  `type` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 'Pariatur Perferendi', 'Aut aut velit placea', '<p>efsdfsd</p>', NULL, '2021-09-12 05:39:00', '1995-11-08 09:44:00', '1990-02-22 19:25:00', 'Nulla recusandae Ci', 'Aut sunt dolorum au', 'Nihil aut facilis un', 'Dolores illo necessi', 'Consequatur dolor fu', 'Possimus qui Nam ac', '', 'Soluta id id verita', '13', '73', '18', 'Amet fuga Quidem u', NULL, 1, NULL, NULL, '2023-08-25 17:01:33', '2023-08-25 17:05:45'),
(2, 'home', 'Home', '<p>For help displaying mathematical formulae in Wikipedia, see&nbsp;<a href=\"https://en.wikipedia.org/wiki/Help:Displaying_a_formula\" title=\"Help:Displaying a formula\">Help:Displaying a formula</a>.</p>\r\n\r\n<p>For other uses, see&nbsp;<a href=\"https://en.wikipedia.org/wiki/Tex_(disambiguation)\" title=\"Tex (disambiguation)\">Tex (disambiguation)</a>.</p>\r\n\r\n<p>Not to be confused with&nbsp;<a href=\"https://en.wikipedia.org/wiki/LaTeX\" title=\"LaTeX\">LaTeX</a>.</p>\r\n\r\n<table>\r\n	<caption>TeX</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\"><a href=\"https://en.wikipedia.org/wiki/File:TeX_logo.svg\" title=\"The TeX logo\"><img alt=\"The TeX logo\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/TeX_logo.svg/100px-TeX_logo.svg.png\" style=\"height:57px; width:100px\" /></a></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Programmer\" title=\"Programmer\">Developer(s)</a></th>\r\n			<td><a href=\"https://en.wikipedia.org/wiki/Donald_Knuth\" title=\"Donald Knuth\">Donald Knuth</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Initial release</th>\r\n			<td>1978; 45&nbsp;years ago</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Software_release_life_cycle\" title=\"Software release life cycle\">Stable release</a></th>\r\n			<td>\r\n			<p><a href=\"https://en.wikipedia.org/wiki/Pi\" title=\"Pi\">3.141592653</a>&nbsp;/ February&nbsp;2021; 2&nbsp;years ago</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Repository_(version_control)\" title=\"Repository (version control)\">Repository</a></th>\r\n			<td>\r\n			<ul>\r\n				<li><a href=\"https://www.tug.org/svn/texlive/\" rel=\"nofollow\">www.tug.org/svn/texlive/</a>&nbsp;<a href=\"https://www.wikidata.org/wiki/Q5301#P1324\" title=\"Edit this at Wikidata\"><img alt=\"Edit this at Wikidata\" src=\"https://upload.wikimedia.org/wikipedia/en/thumb/8/8a/OOjs_UI_icon_edit-ltr-progressive.svg/10px-OOjs_UI_icon_edit-ltr-progressive.svg.png\" style=\"height:10px; width:10px\" /></a></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Written in</th>\r\n			<td><a href=\"https://en.wikipedia.org/wiki/WEB\" title=\"WEB\">WEB</a>/<a href=\"https://en.wikipedia.org/wiki/Pascal_(programming_language)\" title=\"Pascal (programming language)\">Pascal</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Operating_system\" title=\"Operating system\">Operating system</a></th>\r\n			<td><a href=\"https://en.wikipedia.org/wiki/Cross-platform\" title=\"Cross-platform\">Cross-platform</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Software_categories#Categorization_approaches\" title=\"Software categories\">Type</a></th>\r\n			<td><a href=\"https://en.wikipedia.org/wiki/Typesetting\" title=\"Typesetting\">Typesetting</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Software_license\" title=\"Software license\">License</a></th>\r\n			<td><a href=\"https://en.wikipedia.org/wiki/Permissive_free_software_license\" title=\"Permissive free software license\">Permissive free software</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Website</th>\r\n			<td><a href=\"http://tug.org/\" rel=\"nofollow\">tug.org</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<caption>TeX</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Filename_extension\" title=\"Filename extension\">Filename extension</a></th>\r\n			<td>\r\n			<p>.tex</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\"><a href=\"https://en.wikipedia.org/wiki/Media_type\" title=\"Media type\">Internet media&nbsp;type</a></th>\r\n			<td>\r\n			<p>application/x-tex&nbsp;<sup><a href=\"https://en.wikipedia.org/wiki/TeX#cite_note-Unreg-1\">[a]</a></sup></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Initial release</th>\r\n			<td>1978; 45&nbsp;years ago</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Type of format</th>\r\n			<td><a href=\"https://en.wikipedia.org/wiki/Document_file_format\" title=\"Document file format\">Document file format</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>TeX</strong>&nbsp;(<a href=\"https://en.wikipedia.org/wiki/Help:IPA/English\" title=\"Help:IPA/English\">/tɛx/</a>, see&nbsp;<a href=\"https://en.wikipedia.org/wiki/TeX#Pronunciation_and_spelling\">below</a>), stylized within the system as&nbsp;TEX, is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Typesetting_system\" title=\"Typesetting system\">typesetting system</a>&nbsp;which was designed and written by computer scientist and Stanford University professor&nbsp;<a href=\"https://en.wikipedia.org/wiki/Donald_Knuth\" title=\"Donald Knuth\">Donald Knuth</a><sup><a href=\"https://en.wikipedia.org/wiki/TeX#cite_note-2\">[1]</a></sup>&nbsp;and first released in 1978. TeX is a popular means of typesetting complex&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mathematical_formulae\" title=\"Mathematical formulae\">mathematical formulae</a>; it has been noted as one of the most sophisticated digital typographical systems.<sup><a href=\"https://en.wikipedia.org/wiki/TeX#cite_note-3\">[2]</a></sup></p>\r\n\r\n<p>TeX is widely used in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Academia\" title=\"Academia\">academia</a>, especially in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mathematics\" title=\"Mathematics\">mathematics</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Computer_science\" title=\"Computer science\">computer science</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Economics\" title=\"Economics\">economics</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Political_science\" title=\"Political science\">political science</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Engineering\" title=\"Engineering\">engineering</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Linguistics\" title=\"Linguistics\">linguistics</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Physics\" title=\"Physics\">physics</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Statistics\" title=\"Statistics\">statistics</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Quantitative_psychology\" title=\"Quantitative psychology\">quantitative psychology</a>. It has long since displaced&nbsp;<a href=\"https://en.wikipedia.org/wiki/Troff\" title=\"Troff\">Unix troff</a>,<sup><a href=\"https://en.wikipedia.org/wiki/TeX#cite_note-4\">[b]</a></sup>&nbsp;the previously favored formatting system, in most&nbsp;<a href=\"https://en.wikipedia.org/wiki/Unix\" title=\"Unix\">Unix</a>&nbsp;installations. It is also used for many other typesetting tasks, especially in the form of&nbsp;<a href=\"https://en.wikipedia.org/wiki/LaTeX\" title=\"LaTeX\">LaTeX</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/ConTeXt\" title=\"ConTeXt\">ConTeXt</a>, and other macro packages.</p>\r\n\r\n<p>TeX was designed with two main goals in mind: to allow anybody to produce high-quality books with minimal effort, and to provide a system that would give exactly the same results on all computers, at any point in time (together with the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Metafont\" title=\"Metafont\">Metafont</a>&nbsp;language for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Font\" title=\"Font\">font</a>&nbsp;description and the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Computer_Modern\" title=\"Computer Modern\">Computer Modern</a>&nbsp;family of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Typeface\" title=\"Typeface\">typefaces</a>).<sup><a href=\"https://en.wikipedia.org/wiki/TeX#cite_note-5\">[3]</a></sup>&nbsp;TeX is&nbsp;<a href=\"https://en.wikipedia.org/wiki/Free_software\" title=\"Free software\">free software</a>, which made it accessible to a wide range of users.</p>\r\n\r\n<h2>History</h2>', NULL, '2023-08-26 00:02:55', '2023-08-26 00:02:55', '2023-08-26 00:02:55', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-08-25 18:02:55', '2023-08-25 18:03:27'),
(3, 'my-seo', 'My-seo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'product', 1, NULL, NULL, '2023-08-25 18:06:01', '2023-08-25 18:06:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
