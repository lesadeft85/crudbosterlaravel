-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 27, 2019 at 05:51 AM
-- Server version: 5.7.26
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k13`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE IF NOT EXISTS `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE IF NOT EXISTS `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE IF NOT EXISTS `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE IF NOT EXISTS `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE IF NOT EXISTS `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-07-26 22:24:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE IF NOT EXISTS `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-07-26 22:25:52', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-07-26 22:27:20', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-07-26 22:27:29', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/users/edit-save/1', 'Update data ZAENAL ARIFIN at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>ZAENAL ARIFIN</td></tr><tr><td>photo</td><td></td><td>uploads/1/2019-07/logo_sdn_padurenan_i_kota_bekasi.png</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>lesadeft@gmail.com</td></tr><tr><td>password</td><td>$2y$10$HFJXRpSMtEc6H1c6gYs3x.c2T2G4LnbALXPN8hDGsTiazc/oJhepC</td><td>$2y$10$.9PWxNOgQOmR.Y8fHHQQoeCvItU1hUHhQi5sSFODGf2c86njOm59K</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-07-26 22:29:23', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'lesadeft@gmail.com logout', '', 1, '2019-07-26 22:29:30', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'lesadeft@gmail.com login with IP Address ::1', '', 1, '2019-07-26 22:29:41', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/users/add-save', 'Add New Data ARIF at Users Management', '', 1, '2019-07-26 22:30:19', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'lesadeft@gmail.com logout', '', 1, '2019-07-26 22:30:24', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'sdn.padurenan1@gmail.com login with IP Address ::1', '', 2, '2019-07-26 22:30:41', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'sdn.padurenan1@gmail.com logout', '', 2, '2019-07-26 22:30:57', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'sdn.padurenan1@gmail.com login with IP Address ::1', '', 2, '2019-07-26 22:38:53', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'sdn.padurenan1@gmail.com logout', '', 2, '2019-07-26 22:38:58', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'sdn.padurenan1@gmail.com login with IP Address ::1', '', 2, '2019-07-26 22:39:03', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/2', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_font_color</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>label</td><td>Login Font Color</td><td>Login Warna Font</td></tr></tbody></table>', 2, '2019-07-26 22:41:11', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/1', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_background_color</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>label</td><td>Login Background Color</td><td>Warna Background Login</td></tr></tbody></table>', 2, '2019-07-26 22:41:38', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/2', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_font_color</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>label</td><td>Login Warna Font</td><td>Warna Font Login</td></tr></tbody></table>', 2, '2019-07-26 22:41:54', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/1', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_background_color</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>group_setting</td><td>Login Register Style</td><td>Pengaturan Login Register</td></tr></tbody></table>', 2, '2019-07-26 22:42:13', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/1', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_background_color</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>group_setting</td><td>Pengaturan Login Register</td><td>Login Register Style</td></tr></tbody></table>', 2, '2019-07-26 22:43:20', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/10', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>appname</td><td></td></tr><tr><td>content</td><td>K13</td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td></td><td></td></tr><tr><td>label</td><td>Application Name</td><td>Nama Aplikasi</td></tr></tbody></table>', 2, '2019-07-26 22:44:11', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/11', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>default_paper_size</td><td></td></tr><tr><td>content</td><td>Legal</td><td></td></tr><tr><td>dataenum</td><td></td><td>A4, F4, legal, letter</td></tr><tr><td>label</td><td>Default Paper Print Size</td><td>Default Kertas Print</td></tr></tbody></table>', 2, '2019-07-26 22:44:51', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/4', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>email_sender</td><td></td></tr><tr><td>content</td><td>support@crudbooster.com</td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td></td><td></td></tr><tr><td>label</td><td>Email Sender</td><td>Email Pengirim</td></tr></tbody></table>', 2, '2019-07-26 22:45:27', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/3', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_background_image</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td></td><td></td></tr><tr><td>label</td><td>Login Background Image</td><td>Gambar Login Background</td></tr></tbody></table>', 2, '2019-07-26 22:46:03', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/2', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_font_color</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td>Input hexacode</td><td>Masukan hexacode</td></tr></tbody></table>', 2, '2019-07-26 22:46:21', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/1', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_background_color</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td>Input hexacode</td><td>Masukan hexacode</td></tr></tbody></table>', 2, '2019-07-26 22:46:30', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/3', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_background_image</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td></td><td>File hanya suport jpg,png,gif, Max ukuan 10 MB</td></tr></tbody></table>', 2, '2019-07-26 22:47:12', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/3', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_background_image</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td>File hanya suport jpg,png,gif, Max ukuan 10 MB</td><td></td></tr></tbody></table>', 2, '2019-07-26 22:47:20', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/settings/edit-save/3', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>login_background_image</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td>File hanya suport jpg,png,gif, Max ukuan 10 MB</td><td></td></tr></tbody></table>', 2, '2019-07-26 22:47:27', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/users/edit-save/2', 'Update data ARIF at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$sBTF9uAI5fPd4YmzJ7JBju9Xdu2k22pkoux8PbpOpJlyYrEybibDq</td><td>$2y$10$/.kJEf610Jcan2RYh8etFuBH4ZOCt.s6HsPbTBhoi72C51M.QA5wu</td></tr><tr><td>id_cms_privileges</td><td>1</td><td>2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2019-07-26 22:48:40', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'sdn.padurenan1@gmail.com logout', '', 2, '2019-07-26 22:48:52', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'sdn.padurenan1@gmail.com login with IP Address ::1', '', 2, '2019-07-26 22:48:54', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'sdn.padurenan1@gmail.com logout', '', 2, '2019-07-26 22:49:24', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'lesadeft@gmail.com login with IP Address ::1', '', 1, '2019-07-26 22:49:29', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'lesadeft@gmail.com logout', '', 1, '2019-07-26 22:49:52', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'sdn.padurenan1@gmail.com login with IP Address ::1', '', 2, '2019-07-26 22:49:58', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/users/edit-save/2', 'Update data ARIF ZAENAL at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>ARIF</td><td>ARIF ZAENAL</td></tr><tr><td>password</td><td>$2y$10$/.kJEf610Jcan2RYh8etFuBH4ZOCt.s6HsPbTBhoi72C51M.QA5wu</td><td>$2y$10$601ZJ1GE7QRoMxeX4/yPguLTbcnoBj64zSeV6iuECpspohF87vsK2</td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2019-07-26 22:50:12', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'sdn.padurenan1@gmail.com logout', '', 2, '2019-07-26 22:50:24', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'sdn.padurenan1@gmail.com login with IP Address ::1', '', 2, '2019-07-26 22:50:25', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/users/edit-save/2', 'Update data ARIF ZAENAL SPD at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>ARIF ZAENAL</td><td>ARIF ZAENAL SPD</td></tr><tr><td>password</td><td>$2y$10$601ZJ1GE7QRoMxeX4/yPguLTbcnoBj64zSeV6iuECpspohF87vsK2</td><td>$2y$10$atNH9hkKlS5fnWBC9BGglOap2pOVckvYzg0uBc24.XHUJbTpwg.Ty</td></tr><tr><td>id_cms_privileges</td><td>2</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2019-07-26 22:50:35', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'sdn.padurenan1@gmail.com logout', '', 2, '2019-07-26 22:50:39', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'sdn.padurenan1@gmail.com login with IP Address ::1', '', 2, '2019-07-26 22:50:40', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/logout', 'sdn.padurenan1@gmail.com logout', '', 2, '2019-07-26 22:50:44', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'http://localhost/k13/public/admin/login', 'lesadeft@gmail.com login with IP Address ::1', '', 1, '2019-07-26 22:50:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE IF NOT EXISTS `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE IF NOT EXISTS `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE IF NOT EXISTS `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-07-26 22:24:49', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-07-26 22:24:49', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-07-26 22:24:49', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-07-26 22:24:49', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-07-26 22:24:49', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-07-26 22:24:49', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-07-26 22:24:49', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-07-26 22:24:49', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-07-26 22:24:49', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-07-26 22:24:49', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-07-26 22:24:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE IF NOT EXISTS `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE IF NOT EXISTS `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-purple-light', '2019-07-26 22:24:49', NULL),
(2, 'Operator', 0, 'skin-purple-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE IF NOT EXISTS `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(2, 1, 0, 0, 1, 0, 2, 4, NULL, NULL),
(1, 1, 1, 1, 1, 1, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Masukan hexacode', '2019-07-26 22:24:49', '2019-07-26 22:46:30', 'Login Register Style', 'Warna Background Login'),
(2, 'login_font_color', NULL, 'text', NULL, 'Masukan hexacode', '2019-07-26 22:24:49', '2019-07-26 22:46:21', 'Login Register Style', 'Warna Font Login'),
(3, 'login_background_image', NULL, 'upload_image', NULL, 'File hanya suport jpg,png,gif, Max ukuan 10 MB', '2019-07-26 22:24:49', '2019-07-26 22:47:27', 'Login Register Style', 'Gambar Login Background'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-07-26 22:24:49', '2019-07-26 22:45:27', 'Email Setting', 'Email Pengirim'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-07-26 22:24:49', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2019-07-26 22:24:49', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-07-26 22:24:49', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2019-07-26 22:24:49', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2019-07-26 22:24:49', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'K13', 'text', NULL, NULL, '2019-07-26 22:24:49', '2019-07-26 22:44:11', 'Application Setting', 'Nama Aplikasi'),
(11, 'default_paper_size', 'Legal', 'text', 'A4, F4, legal, letter', 'Paper size, ex : A4, Legal, etc', '2019-07-26 22:24:49', '2019-07-26 22:44:51', 'Application Setting', 'Default Kertas Print'),
(12, 'logo', 'uploads/2019-07/238b05a71daa9f519c544b5461adebde.png', 'upload_image', NULL, NULL, '2019-07-26 22:24:49', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2019-07/f710820038db93320e69dd60451ae030.png', 'upload_image', NULL, NULL, '2019-07-26 22:24:49', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-07-26 22:24:49', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2019-07-26 22:24:49', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2019-07-26 22:24:49', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE IF NOT EXISTS `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE IF NOT EXISTS `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'ZAENAL ARIFIN', 'uploads/1/2019-07/logo_sdn_padurenan_i_kota_bekasi.png', 'lesadeft@gmail.com', '$2y$10$.9PWxNOgQOmR.Y8fHHQQoeCvItU1hUHhQi5sSFODGf2c86njOm59K', 1, '2019-07-26 22:24:49', '2019-07-26 22:29:23', 'Active'),
(2, 'ARIF ZAENAL SPD', 'uploads/1/2019-07/kotabekasi.jpg', 'sdn.padurenan1@gmail.com', '$2y$10$atNH9hkKlS5fnWBC9BGglOap2pOVckvYzg0uBc24.XHUJbTpwg.Ty', 2, '2019-07-26 22:30:19', '2019-07-26 22:50:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
