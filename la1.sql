-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2018 at 06:42 AM
-- Server version: 5.7.19
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `la1`
--

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_instansi` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `kl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `es1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `es2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `telp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `nama_instansi`, `kl`, `es1`, `es2`, `alamat`, `telp`, `fax`, `email`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'coba', 'coba', 'coba', 'coba', 'cobabobajlakjd', '102998383', 'coba', '', '', '[]', '#000', '2018-07-16 02:07:06', '2018-07-15 07:17:37', '2018-07-16 02:07:06'),
(2, 'Direktorat SITP', 'Kementerian Keuangan', 'Direktorat Jenderal Perbendaharaan', 'Direktorat Sistem Informasi dan Teknologi Perbendaharaan', 'Jalan Wahidin II No 3, Gedung Praptosuharjo 3 lt.3Sawah Besar, Jakarta Pusat', '021092829020', '02199484892', 'sitp@kemenkeu.go.id', '', '[]', '', NULL, '2018-07-16 02:06:43', '2018-07-16 02:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'ITDOCS', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(2, 'sitename_part1', '', 'ITDOC', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(3, 'sitename_part2', '', 'System', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(4, 'sitename_short', '', 'ITDOCS', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(5, 'site_description', '', 'Information Technology Documentation System', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(6, 'sidebar_search', '', '1', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(7, 'show_messages', '', '1', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(8, 'show_notifications', '', '1', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(9, 'show_tasks', '', '1', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(10, 'show_rightsidebar', '', '1', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(11, 'skin', '', 'skin-white', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(12, 'layout', '', 'fixed', '2018-07-15 07:17:38', '2018-07-15 23:52:45'),
(13, 'default_email', '', 'mail.laksana@gmail.com', '2018-07-15 07:17:38', '2018-07-15 23:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'Team', '#', 'fa-group', 'custom', 0, 1, '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(2, 'Users', 'users', 'fa-group', 'module', 1, 0, '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 0, '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 0, '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 0, '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(9, 'Departments', 'departments', 'fa-tags', 'module', 0, 0, '2018-07-16 00:56:18', '2018-07-16 00:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2018-07-15 07:17:32', '2018-07-16 01:59:35'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2018-07-15 07:17:33', '2018-07-15 07:17:38'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2018-07-15 07:17:33', '2018-07-15 07:17:38'),
(5, 'Roles', 'Roles', 'roles', 'nama_instansi', 'Role', 'RolesController', 'fa-user-plus', 1, '2018-07-15 07:17:34', '2018-07-16 02:22:16'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2018-07-15 07:17:35', '2018-07-15 07:17:38'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2018-07-15 07:17:36', '2018-07-15 07:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Nama', 1, 16, 0, '', 5, 250, 1, '', 0, '2018-07-15 07:17:32', '2018-07-16 01:59:12'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(4, 'password', 'Password', 1, 17, 0, '', 4, 250, 1, '', 0, '2018-07-15 07:17:32', '2018-07-16 00:47:40'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2018-07-15 07:17:34', '2018-07-15 07:17:34'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2018-07-15 07:17:34', '2018-07-15 07:17:34'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2018-07-15 07:17:34', '2018-07-15 07:17:34'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2018-07-15 07:17:34', '2018-07-15 07:17:34'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2018-07-15 07:17:35', '2018-07-15 07:17:35'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2018-07-15 07:17:35', '2018-07-15 07:17:35'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2018-07-15 07:17:35', '2018-07-15 07:17:35'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2018-07-15 07:17:36', '2018-07-15 07:17:36'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2018-07-15 07:17:36', '2018-07-15 07:17:36'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2018-07-15 07:17:36', '2018-07-15 07:17:36'),
(52, 'nama_instansi', 'Nama Instansi', 3, 16, 1, '', 1, 255, 1, '', 1, '2018-07-15 23:32:06', '2018-07-15 23:35:19'),
(53, 'kl', 'Kementerian/Lembaga', 3, 16, 0, '', 0, 255, 0, '', 2, '2018-07-15 23:33:03', '2018-07-15 23:39:26'),
(54, 'es1', 'Eselon 1', 3, 16, 0, '', 0, 255, 0, '', 3, '2018-07-15 23:36:17', '2018-07-15 23:36:17'),
(55, 'es2', 'Eselon 2', 3, 16, 0, '', 0, 255, 0, '', 4, '2018-07-15 23:36:41', '2018-07-15 23:36:41'),
(56, 'alamat', 'Alamat', 3, 1, 0, '', 0, 1000, 0, '', 5, '2018-07-15 23:37:14', '2018-07-15 23:37:14'),
(57, 'telp', 'No Telepon', 3, 14, 0, '', 0, 50, 0, '', 8, '2018-07-15 23:38:03', '2018-07-15 23:38:03'),
(58, 'fax', 'No Fax', 3, 14, 0, '', 0, 50, 0, '', 7, '2018-07-15 23:38:32', '2018-07-15 23:38:32'),
(59, 'email', 'Email', 3, 8, 0, '', 0, 50, 0, '', 6, '2018-07-15 23:39:08', '2018-07-15 23:39:08'),
(60, 'nama_instansi', 'Nama Instansi', 5, 7, 0, '', 0, 0, 0, '@departments', 0, '2018-07-16 02:41:10', '2018-07-16 02:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2018-07-15 07:17:31', '2018-07-15 07:17:31'),
(2, 'Checkbox', '2018-07-15 07:17:31', '2018-07-15 07:17:31'),
(3, 'Currency', '2018-07-15 07:17:31', '2018-07-15 07:17:31'),
(4, 'Date', '2018-07-15 07:17:31', '2018-07-15 07:17:31'),
(5, 'Datetime', '2018-07-15 07:17:31', '2018-07-15 07:17:31'),
(6, 'Decimal', '2018-07-15 07:17:31', '2018-07-15 07:17:31'),
(7, 'Dropdown', '2018-07-15 07:17:31', '2018-07-15 07:17:31'),
(8, 'Email', '2018-07-15 07:17:31', '2018-07-15 07:17:31'),
(9, 'File', '2018-07-15 07:17:31', '2018-07-15 07:17:31'),
(10, 'Float', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(11, 'HTML', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(12, 'Image', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(13, 'Integer', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(14, 'Mobile', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(15, 'Multiselect', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(16, 'Name', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(17, 'Password', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(18, 'Radio', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(19, 'String', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(20, 'Taginput', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(21, 'Textarea', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(22, 'TextField', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(23, 'URL', '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(24, 'Files', '2018-07-15 07:17:32', '2018-07-15 07:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(2, 'TESTER_PANEL', 'Tester Panel', 'Untuk Pengetesan', NULL, '2018-07-16 05:44:47', '2018-07-16 05:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_instansi` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `deleted_at`, `created_at`, `updated_at`, `nama_instansi`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, NULL, '2018-07-15 07:17:37', '2018-07-16 02:42:01', 2),
(2, 'ROLE_TESTER', 'Tester', 'Pengetesan Aplikasi', 1, NULL, '2018-07-16 01:58:30', '2018-07-16 05:46:19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(2, 1, 2, 1, 1, 1, 1, '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(3, 1, 3, 1, 1, 1, 1, '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(5, 1, 5, 1, 1, 1, 1, '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(7, 1, 7, 1, 1, 1, 1, '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(8, 1, 8, 1, 1, 1, 1, '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(9, 2, 1, 0, 0, 0, 0, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(10, 2, 2, 1, 1, 1, 1, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(11, 2, 3, 1, 1, 1, 1, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(12, 2, 5, 0, 0, 0, 0, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(13, 2, 7, 0, 0, 0, 0, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(14, 2, 8, 0, 0, 0, 0, '2018-07-16 01:58:30', '2018-07-16 01:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(2, 1, 2, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(3, 1, 3, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(4, 1, 4, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(6, 1, 6, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(7, 1, 7, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(8, 1, 8, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(9, 1, 9, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(10, 1, 10, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(11, 1, 11, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(12, 1, 12, 'write', '2018-07-15 07:17:37', '2018-07-15 07:17:37'),
(30, 1, 30, 'write', '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(31, 1, 31, 'write', '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(32, 1, 32, 'write', '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(33, 1, 33, 'write', '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(46, 1, 46, 'write', '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(47, 1, 47, 'write', '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(48, 1, 48, 'write', '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(49, 1, 49, 'write', '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(50, 1, 50, 'write', '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(51, 1, 51, 'write', '2018-07-15 07:17:38', '2018-07-15 07:17:38'),
(52, 1, 52, 'write', '2018-07-15 23:32:06', '2018-07-15 23:32:06'),
(53, 1, 53, 'write', '2018-07-15 23:33:03', '2018-07-15 23:33:03'),
(54, 1, 54, 'write', '2018-07-15 23:36:17', '2018-07-15 23:36:17'),
(55, 1, 55, 'write', '2018-07-15 23:36:41', '2018-07-15 23:36:41'),
(56, 1, 56, 'write', '2018-07-15 23:37:15', '2018-07-15 23:37:15'),
(57, 1, 57, 'write', '2018-07-15 23:38:03', '2018-07-15 23:38:03'),
(58, 1, 58, 'write', '2018-07-15 23:38:32', '2018-07-15 23:38:32'),
(59, 1, 59, 'write', '2018-07-15 23:39:08', '2018-07-15 23:39:08'),
(60, 2, 1, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(61, 2, 2, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(62, 2, 3, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(63, 2, 4, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(64, 2, 6, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(65, 2, 7, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(66, 2, 8, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(67, 2, 9, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(68, 2, 10, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(69, 2, 11, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(70, 2, 12, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(71, 2, 52, 'write', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(72, 2, 53, 'write', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(73, 2, 54, 'write', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(74, 2, 55, 'write', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(75, 2, 56, 'write', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(76, 2, 59, 'write', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(77, 2, 58, 'write', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(78, 2, 57, 'write', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(79, 2, 30, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(80, 2, 31, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(81, 2, 32, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(82, 2, 33, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(84, 2, 46, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(85, 2, 47, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(86, 2, 48, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(87, 2, 49, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(88, 2, 50, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(89, 2, 51, 'readonly', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(90, 1, 60, 'write', '2018-07-16 02:41:11', '2018-07-16 02:41:11'),
(91, 2, 60, 'invisible', '2018-07-16 05:48:18', '2018-07-16 05:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Surat Sehat.pdf', 'D:\\laragon\\www\\la1\\storage\\uploads\\2018-07-16-123424-Surat Sehat.pdf', 'pdf', '', 1, 'h0xzbzz4vvucxdsxpdcw', 0, NULL, '2018-07-16 05:34:24', '2018-07-16 05:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin admin', 1, 'mail.laksana@gmail.com', '$2y$10$6o7MrWPaxCmtWXQG4ErmZencsiS93fh7Z0/uTyScpzZlBr8fejgki', 'KwQQcc7dd3eyw9zaD3DCNaIhe4pbeJJwTuOPdFose1AefpSvwMhiBx11aT8A', NULL, '2018-07-15 07:18:14', '2018-07-16 21:08:22'),
(2, 'User Tester', 1, 'test@gmail.com', '$2y$10$sieBI6Cx2xmyxCpPb.3Nb.5rKtqNA/.HmKEPi.Gd/pF3NiOn8dAMa', 'nJvNtjg5VxucOuFoEiyRnInGH8dD8R3xAgiNyud2kk36NinPm9DyIAlEnBeO', NULL, '2018-07-16 05:42:57', '2018-07-16 21:08:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_nama_instansi_unique` (`nama_instansi`),
  ADD UNIQUE KEY `departments_kl_unique` (`kl`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_nama_instansi_foreign` (`nama_instansi`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_nama_instansi_foreign` FOREIGN KEY (`nama_instansi`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
