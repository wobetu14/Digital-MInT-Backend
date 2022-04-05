-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 05, 2022 at 09:08 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_intranet`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_books`
--

DROP TABLE IF EXISTS `address_books`;
CREATE TABLE IF NOT EXISTS `address_books` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `office_name_am` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_name_en` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_responsibility` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address_books`
--

INSERT INTO `address_books` (`id`, `office_name_am`, `office_name_en`, `office_email`, `office_phone`, `office_responsibility`, `director_name`, `director_email`, `created_at`, `updated_at`) VALUES
(6, NULL, 'Productivity Enhancement, Technologies Assessment, Analysis & Support Directorate', '', '', '', 'Terefe Alemu', '', NULL, NULL),
(7, 'የኢኖቬሽንና ቴክኖሎጅ ፕሮጀክት አስተዳደር ዳይሬክቶሬት', 'Innovation and Technology Project Administration Directorate', '', '', '', 'Adanech Tujo', 'tujoadanech@gmail.com', NULL, NULL),
(8, '', 'Green Technologies Regulatory and Administrative Directorate', '', '', '', 'Adanech Assegu', '', NULL, NULL),
(9, 'የህግ ጉዳዮች ዳይሬክቶሬት', 'Law / Legal Affairs Directorate', '', '', '', 'Ayalneh Lemma', 'ayalnehl@yahoo.com', NULL, NULL),
(10, '', 'Policy , Strategy and Future Planning Directorate', '', '', '', 'Desta Abera', 'desta.abera2001@yahoo.com', NULL, NULL),
(11, '', 'Innovation Fund Management Directorate', '', '', '', 'Taye Estifanos', 'taye1999@gmail.com', NULL, NULL),
(12, '', 'Council and Regions Affairs Coordination Directorate', '', '', '', 'Nurlign Koku', 'Nurlign.Koku@mint.gov.et', NULL, NULL),
(13, '', 'International Relations and Cooperation Directorate', '', '', '', 'Leul Seyoum', 'lesey02@gmail.com', NULL, NULL),
(14, '', 'Plan Preparation, Monitoring & Evaluation Directorate', '', '', '', 'Azmach Desalegn', 'Azmach.Desalegn@mint.gov.et', NULL, NULL),
(15, '', 'Media Press Directorate', '', '', '', 'Tesfaye Alemnew', 'tesfayealemnew21@gmail.com', NULL, NULL),
(16, '', 'Innovation Development Research Support, Rewards & Recognition Directorate', '', '', '', 'Atire Negash', 'atire.negash@mint.gov.et', NULL, NULL),
(17, '', 'Technology Incubation Centre and Administration Directorate', '', '', '', 'Tadesse Anbese', 'Tadesse.Anbessie@mint.gov.et', NULL, NULL),
(18, '', 'Government ICT Network Development and Administration Directorate', '', '', '', 'Yonas Hailu', 'Yonas.Hailu@mint.gov.et', NULL, NULL),
(19, '', 'Government Electronic Services and Applications Development and Management Directorate', '', '', '', 'Bethelhem Bedilu', 'Bethelehem.Bedilu@mint.gov.et', NULL, NULL),
(20, '', 'Women, Children, Gender and Youth Directorate', '', '', '', 'Elzabet Gebreselasie', 'Elsabeth.Gebersilassie@mint.gov.et', NULL, NULL),
(21, '', 'Reform/Change Management and Good Governance Directorate', '', '', '', 'Siber Andualem', 'siband1973@gmail.com', NULL, NULL),
(22, 'ብሔራዊ ዳታ ማዕከል', 'National Data Center', '', '', '', 'Meseret Nigatu', 'Meseret.negatu@mint.gov.et', NULL, NULL),
(23, '', 'Product and Service Engineering Directorate', '', '', '', 'Birhanu Abebe', '', NULL, NULL),
(24, '', 'Private Sector Industry Technology Support Directorate', '', '', '', 'Seyoum Mengesha', 'Seyoum.Mengesha@mint.gov.et', NULL, NULL),
(25, '', 'Procurement and Property Administration Directorate', '', '', '', 'Kahsay Guben', 'Kahsay.Guben@mint.gov.e', NULL, NULL),
(26, '', 'Property and General Service directorate', '', '', '', 'Tesfaye Wedajo', 'tesfayewe2018@gmail.com', NULL, NULL),
(27, '', 'Finance Directorate', '', '', '', 'Ashagre Alemu', 'ashealemu79@gmail.com', NULL, NULL),
(28, '', 'Internal Audit Directorate', '', '', '', 'Solomon Aynmar', '', NULL, NULL),
(29, '', 'Human Resource development Directorate', '', '', '', 'Dagne Assefa', 'dagne.assefa@yahoo.com', NULL, NULL),
(30, '', 'Technology and Knowledge Expansion and Management Directorate', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_repos`
--

DROP TABLE IF EXISTS `app_repos`;
CREATE TABLE IF NOT EXISTS `app_repos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_ipaddress` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_thumbnail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_repos`
--

INSERT INTO `app_repos` (`id`, `app_name`, `app_description`, `app_ipaddress`, `app_url`, `app_thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'IFMIS - Integrated Financial Management Information System', 'Integrated Financial Management System. Integrated Financial Management System. Integrated Financial Management System. ', 'http://IFMIS.MOFED.GOV.ET:8081', 'http://IFMIS.MOFED.GOV.ET:8081', 'Thumbnail', '2022-03-08 21:00:00', '2022-03-23 21:00:00'),
(2, 'EGB - Electronic Government Procurement', 'EGB - Electronic Government Procurement. EGB - Electronic Government Procurement. EGB - Electronic Government Procurement. ', 'http://172.29.16.17/registration/login', 'http://172.29.16.17/registration/login', 'Thumbnail', '2022-03-08 21:00:00', '2022-03-23 21:00:00'),
(5, 'E-Office - Electronic Office', 'E-Office - Electronic Office Management Sytem. E-Office - Electronic Office Management Sytem. E-Office - Electronic Office Management Sytem. ', 'http://172.30.91.183:9100', 'http://172.30.91.183:9100', 'Thumbnail', '2022-03-08 21:00:00', '2022-03-23 21:00:00'),
(3, 'E-Office - Electronic Office', 'E-Office - Electronic Office Management Sytem', 'http://172.30.91.183:9191', 'http://172.30.91.183:9191', 'Thumbnail', '2022-03-08 21:00:00', '2022-03-23 21:00:00'),
(7, 'Digital Ethiopia Learning Portal - DEL', 'Digital Ethiopia Learning (DEL) is a digital skills and literacy initiative designed to deliver digital skill trainings and courses around emerging technologies in IT as part of human skills development aimed to enable citizens use and work with the digital technology tools and services for realizing digital transformation vision of Ethiopia.', 'http://del.gov.et', 'http://del.gov.et', '1648811144-Digital Ethiopia Learning Portal - DEL.jpg', '2022-03-08 21:00:00', '2022-03-23 21:00:00'),
(4, 'ICSMIS - MInT Human Resource Management System', 'ICSMIS - MInT Human Resource Management System. ICSMIS - MInT Human Resource Management System.', 'http://172.21.41.196', 'http://172.21.41.196', 'Thumbnail', '2022-03-08 21:00:00', '2022-03-23 21:00:00'),
(8, 'VMS - Visitor Management System', 'VMS - Visitor Management System. VMS - Visitor Management System. VMS - Visitor Management System. ', 'http://Vms.mint.gov.et', 'http://Vms.mint.gov.et', 'Thumbnail', '2022-03-08 21:00:00', '2022-03-23 21:00:00'),
(9, 'FDRE E-Services Portal', 'E-Service - Ethiopian Government Electronic Services. \r\nE-Service - Ethiopian Government Electronic Services. \r\nE-Service - Ethiopian Government Electronic Services. \r\n', 'https://www.eservices.gov.et', 'https://www.eservices.gov.et', '1648800896-FDRE E-Services.jpg', '2022-04-01 05:14:56', '2022-04-01 05:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `corporate_notices`
--

DROP TABLE IF EXISTS `corporate_notices`;
CREATE TABLE IF NOT EXISTS `corporate_notices` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notice_audience` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_owner` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_subject` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_main_content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_attachement` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `corporate_notices`
--

INSERT INTO `corporate_notices` (`id`, `notice_audience`, `notice_owner`, `notice_subject`, `notice_main_content`, `notice_attachement`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች', 'የሰው ሀብት ስራ አመራር ዳይሬክቶሬት', 'ስብሰባ እንድትሳተፉ ስለማሳወቅ', 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች ነገ ማለትም መጋቢት 13፣ 2014 ዓ.ም የመስሪያ ቤቱ የስድስት ወር አፈፃፀም ሪፖርት ለውይይት ስለሚቀርብ በውይይቱ ላይ እንድሳተፉ እናሳስባለን። ', 'No attachment', 'active', '2022-03-15 21:00:00', '2022-03-15 21:00:00'),
(2, 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች', 'የሰው ሀብት ስራ አመራር ዳይሬክቶሬት', 'ስብሰባ እንድትሳተፉ ስለማሳወቅ', 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች ነገ ማለትም መጋቢት 13፣ 2014 ዓ.ም የመስሪያ ቤቱ የስድስት ወር አፈፃፀም ሪፖርት ለውይይት ስለሚቀርብ በውይይቱ ላይ እንድሳተፉ እናሳስባለን። ', 'No attachment', 'active', '2022-03-15 21:00:00', '2022-03-15 21:00:00'),
(3, 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች', 'የሰው ሀብት ስራ አመራር ዳይሬክቶሬት', 'ስብሰባ እንድትሳተፉ ስለማሳወቅ', 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች ነገ ማለትም መጋቢት 13፣ 2014 ዓ.ም የመስሪያ ቤቱ የስድስት ወር አፈፃፀም ሪፖርት ለውይይት ስለሚቀርብ በውይይቱ ላይ እንድሳተፉ እናሳስባለን። ', 'No attachment', 'active', '2022-03-15 21:00:00', '2022-03-15 21:00:00'),
(4, 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች', 'የሰው ሀብት ስራ አመራር ዳይሬክቶሬት', 'ስብሰባ እንድትሳተፉ ስለማሳወቅ', 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች ነገ ማለትም መጋቢት 13፣ 2014 ዓ.ም የመስሪያ ቤቱ የስድስት ወር አፈፃፀም ሪፖርት ለውይይት ስለሚቀርብ በውይይቱ ላይ እንድሳተፉ እናሳስባለን። ', 'No attachment', 'active', '2022-03-15 21:00:00', '2022-03-15 21:00:00'),
(5, 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች', 'የሰው ሀብት ስራ አመራር ዳይሬክቶሬት', 'ስብሰባ እንድትሳተፉ ስለማሳወቅ', 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች ነገ ማለትም መጋቢት 13፣ 2014 ዓ.ም የመስሪያ ቤቱ የስድስት ወር አፈፃፀም ሪፖርት ለውይይት ስለሚቀርብ በውይይቱ ላይ እንድሳተፉ እናሳስባለን። ', 'No attachment', 'active', '2022-03-15 21:00:00', '2022-03-15 21:00:00'),
(6, 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች', 'የሰው ሀብት ስራ አመራር ዳይሬክቶሬት', 'ስብሰባ እንድትሳተፉ ስለማሳወቅ', 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች ነገ ማለትም መጋቢት 13፣ 2014 ዓ.ም የመስሪያ ቤቱ የስድስት ወር አፈፃፀም ሪፖርት ለውይይት ስለሚቀርብ በውይይቱ ላይ እንድሳተፉ እናሳስባለን። ', 'No attachment', 'active', '2022-03-15 21:00:00', '2022-03-15 21:00:00'),
(7, 'ለሁሉም የመስሪያ ቤታችን ሰራተኞች', 'የዲጂታል ትራንስፎርሜሽን ፕሮግራም ጽ/ቤት', 'ለማይክሮሶፍት 365 ሰልጣኞች በሙሉ', 'ለመስሪያ ቤታችን ሰራተኞች የማይክሮሶፍት 365 ኦንላይን ስልጠና ለመስጠት ጥሪ መደረጉ ይታወቃል። በዚሁ መሰረት ስማች ሁ ከታች በተያያዘው ፋይል ውስጥ የተጠቀሰ ሰራተኞች ሰኞ መጋቢት 19፣ 2014 ዓ.ም ስለ ስልጠናው አጀማመር የግማሽ ቀን ኦሬንቴሽን ስለሚሰጥ ከጥዋቱ 3:00 ሰዓት በጂኦስፓሻል ኢንስቲትዩት መሰብሰቢያ አዳራሽ እንድትገኙ እናሳስባለን።', 'No attachment', 'active', '2022-03-25 21:00:00', '2022-03-25 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_files`
--

DROP TABLE IF EXISTS `downloadable_files`;
CREATE TABLE IF NOT EXISTS `downloadable_files` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_author` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_owner` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloadable_files`
--

INSERT INTO `downloadable_files` (`id`, `file_title`, `file_description`, `file_author`, `file_owner`, `file_name`, `created_at`, `updated_at`) VALUES
(13, 'Ethiopia: Home Grown Economic Reform Agenda', 'Ethiopia\'s 10 year Home Grown Economic Development Agenda. Ethiopia\'s 10 year Home Grown Economic Development Agenda. Ethiopia\'s 10 year Home Grown Economic Development Agenda. Ethiopia\'s 10 year Home Grown Economic Development Agenda. Ethiopia\'s 10 year Home Grown Economic Development Agenda. Ethiopia\'s 10 year Home Grown Economic Development Agenda.', 'FDRE Ministry of Innovation and Technology', 'The Government of Ethiopia', '1649146603DNA Learning Paths (1)(3).pdf', '2022-04-05 05:16:43', '2022-04-05 05:16:43'),
(14, 'Ethiopia: The 10 year Science, Technology and Innovation development plan', 'Ethiopia: The 10 year Science, Technology and Innovation development plan.  Ethiopia: The 10 year Science, Technology and Innovation development plan. Ethiopia: The 10 year Science, Technology and Innovation development plan', 'FDRE Ministry of Innovation and Technology', 'The Government of Ethiopia', '16491467242020 05 06 DT Strategy MS Version 4.0 FINAL.pdf', '2022-04-05 05:18:44', '2022-04-05 05:18:44'),
(15, 'Digital Ethiopia Strategy Document', 'A digital Strategy for Ethiopian Inclusive Prosperity. A digital Strategy for Ethiopian Inclusive Prosperity. A digital Strategy for Ethiopian Inclusive Prosperity.', 'FDRE Ministry of Innovation and Technology', 'The Government of Ethiopia', '1649146883DIGCOMP-FINAL- UPDATED 02-06-2016.pdf', '2022-04-05 05:21:23', '2022-04-05 05:21:23'),
(12, 'Ethiopia: Home Grown Economic Reform Agenda', 'Ethiopia\'s 10 year Home Grown Economic Development Agenda. Ethiopia\'s 10 year Home Grown Economic Development Agenda. Ethiopia\'s 10 year Home Grown Economic Development Agenda. Ethiopia\'s 10 year Home Grown Economic Development Agenda. Ethiopia\'s 10 year Home Grown Economic Development Agenda. Ethiopia\'s 10 year Home Grown Economic Development Agenda.', 'FDRE Ministry of Innovation and Technology', 'The Government of Ethiopia', '1649146073DNA Learning Paths (1)(3).pdf', '2022-04-05 05:07:53', '2022-04-05 05:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infographics_messages`
--

DROP TABLE IF EXISTS `infographics_messages`;
CREATE TABLE IF NOT EXISTS `infographics_messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `infographics_subject` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infographics_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_duration` int(11) NOT NULL,
  `display_status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infographics_messages`
--

INSERT INTO `infographics_messages` (`id`, `infographics_subject`, `infographics_description`, `image_path`, `display_duration`, `display_status`, `created_at`, `updated_at`) VALUES
(4, 'Digital Power and Energy Panel', 'Digital Ethiopia Webinar Series - Digital Power and Energy', '1649063215-Digital Power and Energy Panel.jpg', 2, 'active', '2022-04-04 06:06:55', '2022-04-04 06:06:55'),
(5, 'Digital Power and Energy Panel', 'Digital Ethiopia Webinar Series - Digital Power and Energy', '1649063273-Digital Power and Energy Panel.jpg', 2, 'archived', '2022-04-04 06:07:53', '2022-04-04 06:07:53'),
(6, 'Digital Mint', 'Digital Ethiopia Webinar Series - Digital MInT', '1649067820-Digital Mint.jpg', 2, 'archived', '2022-04-04 07:23:40', '2022-04-04 07:23:40'),
(7, 'IBM UNCDF MINT Collaboration', 'Digital Ethiopia - partnership - Memorandum of understanding - IBM MInT UNCDF Collaboration', '1649073103-IBM UNCDF MINT Collaboration.jpg', 2, 'active', '2022-04-04 08:51:43', '2022-04-04 08:51:43'),
(8, 'Digital Power and Energy Panel', 'Digital Ethiopia Webinar Series - Digital Power and Energy', '1649077067-Digital Power and Energy Panel.jpg', 2, 'active', '2022-04-04 09:57:47', '2022-04-04 09:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `infographics_promos`
--

DROP TABLE IF EXISTS `infographics_promos`;
CREATE TABLE IF NOT EXISTS `infographics_promos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `infographics_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_duration` int(11) NOT NULL,
  `display_status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infographics_promos`
--

INSERT INTO `infographics_promos` (`id`, `infographics_description`, `image_path`, `display_duration`, `display_status`, `created_at`, `updated_at`) VALUES
(1, 'Infographics Description', '1649060999-C:\\wamp64\\tmp\\php2455.tmp.jpg', 3, 'active', '2022-04-04 05:29:59', '2022-04-04 05:29:59'),
(2, 'Infographics Description', '1649061192-C:\\wamp64\\tmp\\php1851.tmp', 3, 'active', '2022-04-04 05:33:12', '2022-04-04 05:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_16_204750_create_app_repos_table', 1),
(6, '2022_03_19_192037_create_corporate_notices_table', 1),
(7, '2022_03_26_210431_create_address_books_table', 2),
(8, '2022_04_04_072609_create_infographics_promos_table', 3),
(9, '2022_04_04_083818_create_infographics_messages_table', 4),
(10, '2022_04_05_064112_create_downloadable_files_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
