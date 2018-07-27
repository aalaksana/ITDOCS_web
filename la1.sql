-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2018 at 11:05 AM
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
(1, 'Direktorat SITP', 'Kementerian Keuangan', 'Direktorat Jenderal Perbendaharan', 'Direktorat Sistem Informasi dan Teknologi Perbendaharaan', 'Gd. Prijadi Praptosuhardjo IIIB lt. 3. Jl. Wahidin II No.3\r\nSawah Besar, Jakarta Pusat', '021-3864784', '021-3864784', 'sitp@kemenkeu.go.id', '', '[]', '', NULL, '2018-07-16 02:06:43', '2018-07-17 16:37:29'),
(2, 'Direktorat Sistem Perbendaharaan', 'Kementerian Keuangan', 'Direktorat Jenderal Perbendaharaan', 'Direktorat Sistem Perbendaharaan', 'Gd. Prijadi Praptosuhardjo IIIA lt. 4. Jl. Budi Utomo No. 6\r\nSawah Besar, Jakarta Pusat', '021-3849670', '021-3849670', 'dsp@kemenkeu.go.id', '', '[]', '', NULL, '2018-07-17 16:35:40', '2018-07-22 00:07:32'),
(3, 'Inspektorat VII', 'Kementerian Keuangan', 'Inspektorat Jenderal', 'Inspektorat VII', 'Gd. Djuanda II, Jl. Dr. Wahidin Raya No. 1, Jakarta Pusat', '021-3865430', '021-3440907', 'Itjen@kemenkeu.go.id', '', '[]', '', NULL, '2018-07-19 06:40:01', '2018-07-19 06:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `doctypes`
--

CREATE TABLE `doctypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenis` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `tahap` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctypes`
--

INSERT INTO `doctypes` (`id`, `deleted_at`, `created_at`, `updated_at`, `jenis`, `role`, `tahap`) VALUES
(1, NULL, '2018-07-24 19:02:15', '2018-07-24 19:02:15', 'Dok 0', 4, 'Analisa'),
(2, NULL, '2018-07-24 19:02:29', '2018-07-24 19:02:29', 'Dok 1', 6, 'Analisa'),
(3, NULL, '2018-07-24 19:02:42', '2018-07-24 19:02:55', 'Dok 2', 6, 'Analisa'),
(4, NULL, '2018-07-24 19:03:14', '2018-07-24 19:07:19', 'Dok 3', 6, 'Perancangan'),
(5, NULL, '2018-07-24 19:03:26', '2018-07-24 19:07:27', 'Dok 4', 6, 'Perancangan'),
(6, NULL, '2018-07-24 19:03:57', '2018-07-24 19:07:38', 'Dok 5', 7, 'Pengembangan'),
(7, NULL, '2018-07-24 19:08:01', '2018-07-24 19:08:01', 'Dok 6', 7, 'Pengembangan'),
(8, NULL, '2018-07-24 19:08:39', '2018-07-24 19:08:39', 'Dok 7', 7, 'Pengembangan'),
(9, NULL, '2018-07-24 19:09:08', '2018-07-24 19:09:08', 'Dok 7.0', 7, 'Pengembangan'),
(10, NULL, '2018-07-24 19:09:51', '2018-07-24 19:09:51', 'Dok 7.1', 8, 'Pengujian'),
(11, NULL, '2018-07-24 19:10:19', '2018-07-24 19:10:19', 'Dok 8', 8, 'Pengujian'),
(12, NULL, '2018-07-24 19:10:57', '2018-07-24 19:11:31', 'Dok 8.1', 8, 'Pengujian'),
(13, NULL, '2018-07-24 19:11:17', '2018-07-24 19:12:07', 'Dok 9', 8, 'Pengujian'),
(14, NULL, '2018-07-24 19:12:55', '2018-07-24 19:12:55', 'Dok 10', 9, 'Implementasi'),
(15, NULL, '2018-07-24 19:13:29', '2018-07-24 19:13:29', 'Dok 11', 9, 'Implementasi'),
(16, NULL, '2018-07-24 19:14:00', '2018-07-24 19:14:00', 'Dok 12', 9, 'Implementasi'),
(17, NULL, '2018-07-24 19:14:24', '2018-07-24 19:14:24', 'Dok 13', 9, 'Implementasi'),
(18, NULL, '2018-07-24 19:16:07', '2018-07-24 19:16:07', 'Dok 14', 4, 'Pasca Implementasi'),
(19, NULL, '2018-07-24 19:16:25', '2018-07-24 19:16:25', 'Dok 15', 4, 'Pasca Implementasi');

-- --------------------------------------------------------

--
-- Table structure for table `dokumens`
--

CREATE TABLE `dokumens` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` int(11) NOT NULL,
  `jenis` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_by` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `approved_by` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deskripsi` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Diajukan',
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dokumens`
--

INSERT INTO `dokumens` (`id`, `deleted_at`, `created_at`, `updated_at`, `file`, `jenis`, `uploaded_by`, `approved_by`, `deskripsi`, `status`, `project_id`) VALUES
(1, NULL, '2018-07-23 16:58:56', '2018-07-24 18:50:16', 7, 'User Test', 1, 1, 'coba', 'Disetujui', 1),
(2, '2018-07-24 09:11:51', '2018-07-23 19:30:41', '2018-07-24 09:11:51', 5, 'Dok 0', 1, 1, '', 'Diajukan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(8) DEFAULT NULL,
  `value1` varchar(255) DEFAULT NULL,
  `value2` varchar(255) DEFAULT NULL,
  `value3` varchar(255) DEFAULT NULL,
  `tabel` varchar(64) DEFAULT NULL,
  `project` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `created_at`, `user_id`, `value1`, `value2`, `value3`, `tabel`, `project`) VALUES
(17, '2018-07-22 07:28:21', 3, 'Input', 'Aplikasi Pengembangan IT', NULL, 'projects', 1),
(18, '2018-07-23 04:54:37', 3, 'input', 'Aplikasi Dummy', '', 'projects', 21);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `label` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'Label Menu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`, `label`) VALUES
(2, 'Users', 'users', 'fa-group', 'module', 1, 0, '2018-07-15 07:17:37', '2018-07-15 07:17:37', 'User'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 0, '2018-07-15 07:17:37', '2018-07-15 07:17:37', 'Role'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 0, '2018-07-15 07:17:37', '2018-07-15 07:17:37', 'Permission'),
(9, 'Departments', 'departments', 'fa-tags', 'module', 0, 2, '2018-07-16 00:56:18', '2018-07-21 02:27:32', 'Instansi'),
(15, 'Users', 'users', 'fa-group', 'module', 0, 5, '2018-07-21 02:26:37', '2018-07-21 02:27:32', 'User'),
(16, 'Roles', 'roles', 'fa-user-plus', 'module', 0, 6, '2018-07-21 02:26:58', '2018-07-21 02:27:32', 'Role'),
(17, 'Permissions', 'permissions', 'fa-magic', 'module', 0, 7, '2018-07-21 02:27:01', '2018-07-21 02:27:32', 'Permission'),
(18, 'Projects', 'projects', 'fa fa-connectdevelop', 'module', 0, 0, '2018-07-21 19:17:39', '2018-07-21 19:17:39', 'Proyek'),
(19, 'Dokumens', 'dokumens', 'fa fa-file-pdf-o', 'module', 0, 0, '2018-07-23 16:58:07', '2018-07-23 16:58:07', 'Dokumen'),
(20, 'Doctypes', 'doctypes', 'fa fa-code-fork', 'module', 0, 0, '2018-07-24 19:01:06', '2018-07-24 19:01:06', 'Jenis Dokumen'),
(21, 'Teams', 'teams', 'fa fa-cube', 'module', 0, 0, '2018-07-24 21:01:40', '2018-07-24 21:01:40', 'Tim');

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
(3, 'Departments', 'Departments', 'departments', 'nama_instansi', 'Department', 'DepartmentsController', 'fa-tags', 1, '2018-07-15 07:17:33', '2018-07-17 00:38:06'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2018-07-15 07:17:34', '2018-07-17 02:01:45'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2018-07-15 07:17:35', '2018-07-15 07:17:38'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2018-07-15 07:17:36', '2018-07-15 07:17:38'),
(14, 'Projects', 'Projects', 'projects', 'nama', 'Project', 'ProjectsController', 'fa-connectdevelop', 1, '2018-07-21 19:00:10', '2018-07-21 19:17:39'),
(16, 'Dokumens', 'Dokumens', 'dokumens', 'jenis', 'Dokuman', 'DokumensController', 'fa-file-pdf-o', 1, '2018-07-23 16:49:37', '2018-07-23 16:58:07'),
(17, 'Doctypes', 'Doctypes', 'doctypes', 'jenis', 'Doctype', 'DoctypesController', 'fa-code-fork', 1, '2018-07-24 18:56:55', '2018-07-24 19:01:06'),
(19, 'Teams', 'Teams', 'teams', 'nama', 'Team', 'TeamsController', 'fa-cube', 1, '2018-07-24 20:55:14', '2018-07-24 21:01:40');

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
(2, 'nip', 'NIP', 1, 16, 0, '', 0, 18, 0, '', 0, '2018-07-15 07:17:32', '2018-07-24 20:26:54'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2018-07-15 07:17:32', '2018-07-15 07:17:32'),
(4, 'password', 'Password', 1, 17, 0, '', 4, 250, 1, '', 0, '2018-07-15 07:17:32', '2018-07-16 00:47:40'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(10, 'user_id', 'Owner', 2, 7, 0, '', 0, 0, 0, '@users', 0, '2018-07-15 07:17:33', '2018-07-17 02:16:49'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-07-15 07:17:33', '2018-07-15 07:17:33'),
(12, 'public', 'Is Public', 2, 2, 0, '1', 0, 0, 0, '', 0, '2018-07-15 07:17:33', '2018-07-17 04:55:06'),
(30, 'name', 'Nama Role', 5, 16, 0, '', 1, 250, 1, '', 0, '2018-07-15 07:17:34', '2018-07-24 19:52:23'),
(31, 'display_name', 'Label', 5, 19, 0, '', 0, 250, 0, '', 0, '2018-07-15 07:17:34', '2018-07-24 19:59:48'),
(32, 'description', 'Deskripsi', 5, 21, 0, '', 0, 1000, 0, '', 0, '2018-07-15 07:17:34', '2018-07-19 03:56:01'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2018-07-15 07:17:34', '2018-07-15 07:17:34'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2018-07-15 07:17:35', '2018-07-15 07:17:35'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2018-07-15 07:17:35', '2018-07-15 07:17:35'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2018-07-15 07:17:35', '2018-07-15 07:17:35'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2018-07-15 07:17:36', '2018-07-15 07:17:36'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2018-07-15 07:17:36', '2018-07-15 07:17:36'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2018-07-15 07:17:36', '2018-07-15 07:17:36'),
(52, 'nama_instansi', 'Nama Instansi', 3, 16, 0, '', 1, 255, 1, '', 1, '2018-07-15 23:32:06', '2018-07-17 00:36:37'),
(53, 'kl', 'Kementerian/Lembaga', 3, 16, 0, '', 0, 255, 0, '', 2, '2018-07-15 23:33:03', '2018-07-17 16:38:23'),
(54, 'es1', 'Eselon 1', 3, 16, 0, '', 0, 255, 0, '', 3, '2018-07-15 23:36:17', '2018-07-15 23:36:17'),
(55, 'es2', 'Eselon 2', 3, 16, 0, '', 0, 255, 0, '', 4, '2018-07-15 23:36:41', '2018-07-15 23:36:41'),
(56, 'alamat', 'Alamat', 3, 1, 0, '', 0, 1000, 0, '', 5, '2018-07-15 23:37:14', '2018-07-15 23:37:14'),
(57, 'telp', 'No Telepon', 3, 14, 0, '', 0, 50, 0, '', 7, '2018-07-15 23:38:03', '2018-07-15 23:38:03'),
(58, 'fax', 'No Fax', 3, 14, 0, '', 0, 50, 0, '', 8, '2018-07-15 23:38:32', '2018-07-15 23:38:32'),
(59, 'email', 'Email', 3, 8, 0, '', 0, 50, 0, '', 6, '2018-07-15 23:39:08', '2018-07-15 23:39:08'),
(76, 'nama', 'Nama Proyek', 14, 16, 0, '', 0, 255, 1, '', 1, '2018-07-21 19:01:08', '2018-07-21 19:01:08'),
(77, 'dasar', 'Dasar Hukum', 14, 16, 0, '', 0, 255, 0, '', 2, '2018-07-21 19:01:46', '2018-07-21 19:01:46'),
(79, 'deskripsi', 'Deskripsi', 14, 21, 0, '', 0, 0, 0, '', 5, '2018-07-21 19:05:59', '2018-07-21 19:05:59'),
(80, 'start_date', 'Tanggal Mulai', 14, 4, 0, '', 0, 0, 0, '', 6, '2018-07-21 19:13:34', '2018-07-21 19:14:06'),
(81, 'inisiator', 'Inisiator', 14, 7, 0, '', 0, 10, 0, '@users', 3, '2018-07-21 19:16:37', '2018-07-21 23:52:14'),
(83, 'analisa', 'Analisa', 14, 7, 0, 'Input', 0, 0, 0, '[\"Input\",\"Diajukan\",\"Disetujui\",\"Ditolak\"]', 7, '2018-07-21 19:54:29', '2018-07-22 00:27:01'),
(84, 'perancangan', 'Perancangan', 14, 7, 0, '', 0, 0, 0, '[\"Input\",\"Diajukan\",\"Disetujui\",\"Ditolak\"]', 8, '2018-07-21 23:38:29', '2018-07-22 00:27:21'),
(85, 'pengembangan', 'Pengembangan', 14, 7, 0, '', 0, 0, 0, '[\"Input\",\"Diajukan\",\"Disetujui\",\"Ditolak\"]', 9, '2018-07-21 23:40:10', '2018-07-22 00:27:29'),
(86, 'pengujian', 'Pengujian', 14, 7, 0, '', 0, 0, 0, '[\"Input\",\"Diajukan\",\"Disetujui\",\"Ditolak\"]', 10, '2018-07-21 23:41:04', '2018-07-22 00:27:37'),
(87, 'implementasi', 'Implementasi', 14, 7, 0, '', 0, 0, 0, '[\"Input\",\"Diajukan\",\"Disetujui\",\"Ditolak\"]', 11, '2018-07-21 23:42:05', '2018-07-22 00:27:46'),
(88, 'pc_implemen', 'Pasca Implementasi', 14, 7, 0, '', 0, 0, 0, '[\"Input\",\"Diajukan\",\"Disetujui\",\"Ditolak\"]', 12, '2018-07-21 23:42:50', '2018-07-22 00:27:58'),
(89, 'instansi', 'Nama Instansi', 14, 7, 0, '', 0, 0, 0, '@departments', 4, '2018-07-21 23:57:49', '2018-07-21 23:57:49'),
(92, 'file', 'File', 16, 9, 0, '', 0, 0, 0, '', 1, '2018-07-23 16:50:09', '2018-07-23 16:50:09'),
(93, 'jenis', 'Jenis Dokumen', 16, 7, 0, '', 0, 0, 0, 'null', 2, '2018-07-23 16:50:49', '2018-07-23 18:29:48'),
(94, 'uploaded_by', 'Diupload', 16, 7, 0, '', 0, 0, 0, '@users', 4, '2018-07-23 16:52:10', '2018-07-23 18:29:08'),
(95, 'approved_by', 'Disetujui', 16, 7, 0, '', 0, 0, 0, '@users', 5, '2018-07-23 16:53:27', '2018-07-23 18:29:19'),
(96, 'deskripsi', 'Deskripsi', 16, 21, 0, '', 0, 0, 0, '', 3, '2018-07-23 16:54:15', '2018-07-23 16:54:15'),
(97, 'status', 'Status', 16, 7, 0, 'Diajukan', 0, 0, 0, '[\"Disetujui\",\"Ditolak\"]', 6, '2018-07-23 16:56:35', '2018-07-23 19:10:20'),
(98, 'project_id', 'Proyek', 16, 7, 0, '', 0, 0, 0, '@projects', 0, '2018-07-23 16:57:29', '2018-07-23 16:57:29'),
(99, 'jenis', 'Jenis Dokumen', 17, 16, 0, '', 0, 32, 0, '', 0, '2018-07-24 18:59:45', '2018-07-24 18:59:45'),
(100, 'role', 'Role Upload', 17, 7, 0, '', 0, 0, 0, '@roles', 0, '2018-07-24 19:00:09', '2018-07-24 19:36:22'),
(101, 'tahap', 'Tahap', 17, 16, 0, '', 0, 64, 0, '', 0, '2018-07-24 19:01:00', '2018-07-24 19:01:00'),
(107, 'instansi', 'Nama Instansi', 1, 7, 0, '', 0, 0, 0, '@departments', 0, '2018-07-24 20:33:51', '2018-07-24 20:33:51'),
(108, 'nama', 'Nama Tim', 19, 16, 0, '', 0, 150, 0, '', 0, '2018-07-24 20:55:44', '2018-07-24 20:55:44'),
(109, 'project_id', 'proyek', 19, 7, 0, '', 0, 0, 0, '@projects', 0, '2018-07-24 20:56:27', '2018-07-24 20:56:27'),
(110, 'peran', 'Peran', 19, 7, 0, '', 0, 0, 0, '[\"Proses Bisnis\",\"Pengembang SI\",\"Tim QA\"]', 0, '2018-07-24 20:59:34', '2018-07-24 20:59:34'),
(111, 'nama_pj', 'Penanggung jawab', 19, 7, 0, '', 0, 0, 0, '@users', 0, '2018-07-24 21:00:01', '2018-07-24 21:00:01'),
(112, 'staf', 'Staf', 19, 15, 0, '', 0, 0, 0, '@users', 0, '2018-07-24 21:00:51', '2018-07-24 21:00:51');

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
(2, 'TESTER_PANEL', 'Tester Panel', 'Untuk Pengetesan', NULL, '2018-07-16 05:44:47', '2018-07-16 05:44:47'),
(3, 'PROBIS', 'Pemilik Proses Bisnis', 'Pemilik Proses Bisnis', NULL, '2018-07-21 20:11:52', '2018-07-21 20:11:52'),
(4, 'PENGEMBANG_SI', 'Pengembangan Sistem Informasi', 'Pengembangan Sistem Informasi', NULL, '2018-07-21 20:13:16', '2018-07-21 20:13:16'),
(5, 'QA', 'Tim Quality Assurance', 'Tim Quality Assurance', NULL, '2018-07-21 20:13:59', '2018-07-21 20:13:59');

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
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dasar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `inisiator` int(10) UNSIGNED DEFAULT '1',
  `analisa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perancangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pengembangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pengujian` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `implementasi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pc_implemen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instansi` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `deleted_at`, `created_at`, `updated_at`, `nama`, `dasar`, `deskripsi`, `start_date`, `inisiator`, `analisa`, `perancangan`, `pengembangan`, `pengujian`, `implementasi`, `pc_implemen`, `instansi`) VALUES
(1, NULL, '2018-07-21 19:48:40', '2018-07-22 00:24:35', 'Aplikasi Pengembangan IT', 'KMK No. 351/KMK.1/2011', 'Monitoring Perkembangan proyek IT di lingkungan kementerian keuangan', '2018-07-16', 3, 'Input', 'Input', 'Input', 'Input', 'Input', 'Input', 2),
(21, NULL, '2018-07-22 21:54:37', '2018-07-22 21:54:37', 'Aplikasi Dummy', 'Perdirjen Dummy', 'Aplikasi Dummy', '2018-07-26', 3, 'Input', 'input', 'input', 'input', 'Input', 'Input', 2);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, NULL, '2018-07-15 07:17:37', '2018-07-16 02:42:01'),
(2, 'ROLE_TESTER', 'Tester', 'Pengetesan Aplikasi', 1, NULL, '2018-07-16 01:58:30', '2018-07-16 05:46:19'),
(3, 'INISIATOR', 'Penanggung jawab Probis', 'Inisiasi Proyek\r\nMonitoring Proyek', 1, NULL, NULL, '2018-07-21 20:26:25'),
(4, 'INIT OPS', 'Staf Probis', 'Upload Dokumen\r\nMonitoring Proyek', 1, NULL, NULL, '2018-07-19 06:32:14'),
(5, 'PROJECT MAN', 'Penanggung Jawab Pengembangan', 'Monitoring Proyek', 1, NULL, NULL, '2018-07-19 06:34:51'),
(6, 'ANALYST', 'Staf Analis', 'Upload Dokumen\r\nMonitoring Proyek', 1, NULL, NULL, '2018-07-19 06:32:03'),
(7, 'DEV', 'Staf Pengembang', 'Upload Dokumen\r\nMonitoring Proyek', 1, NULL, NULL, '2018-07-19 06:32:59'),
(8, 'TESTER', 'Staf QC', 'Upload Dokumen\r\nMonitoring Proyek', 1, NULL, NULL, '2018-07-19 06:33:27'),
(9, 'SUPPORT', 'Staf Duktek', 'Upload Dokumen\r\nMonitoring Proyek', 1, NULL, NULL, '2018-07-19 06:33:51'),
(10, 'QA', 'Penanggung Jawab QA', 'Monitoring Proyek', 1, NULL, NULL, '2018-07-19 06:40:17');

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
(9, 2, 1, 1, 0, 0, 0, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(10, 2, 2, 1, 1, 1, 1, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(11, 2, 3, 1, 1, 1, 1, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(12, 2, 5, 1, 0, 0, 0, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(13, 2, 7, 0, 0, 0, 0, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(14, 2, 8, 0, 0, 0, 0, '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
(47, 3, 3, 1, 0, 0, 0, '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(48, 4, 3, 1, 0, 0, 0, '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(49, 5, 3, 1, 0, 0, 0, '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(50, 6, 3, 1, 0, 0, 0, '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(51, 7, 3, 1, 0, 0, 0, '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(52, 8, 3, 1, 0, 0, 0, '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(53, 9, 3, 1, 0, 0, 0, '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(54, 10, 3, 1, 0, 0, 0, '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(55, 1, 14, 1, 1, 1, 1, '2018-07-21 19:17:39', '2018-07-21 19:17:39'),
(56, 2, 14, 0, 0, 0, 0, '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(57, 3, 14, 1, 1, 1, 1, '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(58, 4, 14, 1, 0, 0, 0, '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(59, 5, 14, 1, 0, 0, 0, '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(60, 6, 14, 1, 0, 0, 0, '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(61, 7, 14, 1, 0, 0, 0, '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(62, 8, 14, 1, 0, 0, 0, '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(63, 9, 14, 1, 0, 0, 0, '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(64, 10, 14, 1, 0, 0, 0, '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(65, 3, 1, 1, 0, 0, 0, '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(66, 4, 1, 1, 0, 0, 0, '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(67, 5, 1, 1, 0, 0, 0, '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(68, 6, 1, 1, 0, 0, 0, '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(69, 7, 1, 1, 0, 0, 0, '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(70, 8, 1, 1, 0, 0, 0, '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(71, 9, 1, 1, 0, 0, 0, '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(72, 10, 1, 1, 0, 0, 0, '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(73, 1, 16, 1, 1, 1, 1, '2018-07-23 16:58:07', '2018-07-23 16:58:07'),
(74, 2, 16, 1, 1, 1, 1, '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(75, 3, 16, 1, 0, 0, 0, '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(76, 4, 16, 1, 1, 1, 1, '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(77, 5, 16, 1, 0, 1, 0, '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(78, 6, 16, 1, 1, 1, 1, '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(79, 7, 16, 1, 1, 1, 1, '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(80, 8, 16, 1, 1, 1, 1, '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(81, 9, 16, 1, 1, 1, 1, '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(82, 10, 16, 1, 0, 0, 0, '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(83, 1, 17, 1, 1, 1, 1, '2018-07-24 19:01:06', '2018-07-24 19:01:06'),
(84, 2, 17, 1, 0, 0, 0, '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(85, 3, 17, 1, 0, 0, 0, '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(86, 4, 17, 1, 0, 0, 0, '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(87, 5, 17, 1, 0, 0, 0, '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(88, 6, 17, 1, 0, 0, 0, '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(89, 7, 17, 1, 0, 0, 0, '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(90, 8, 17, 1, 0, 0, 0, '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(91, 9, 17, 1, 0, 0, 0, '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(92, 10, 17, 1, 0, 0, 0, '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(93, 3, 5, 1, 0, 0, 0, '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(94, 4, 5, 1, 0, 0, 0, '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(95, 5, 5, 1, 0, 0, 0, '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(96, 6, 5, 1, 0, 0, 0, '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(97, 7, 5, 1, 0, 0, 0, '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(98, 8, 5, 1, 0, 0, 0, '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(99, 9, 5, 1, 0, 0, 0, '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(100, 10, 5, 1, 0, 0, 0, '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(101, 1, 19, 1, 1, 1, 1, '2018-07-24 21:01:40', '2018-07-24 21:01:40'),
(102, 2, 19, 1, 0, 0, 0, '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(103, 3, 19, 0, 0, 0, 0, '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(104, 4, 19, 0, 0, 0, 0, '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(105, 5, 19, 0, 0, 0, 0, '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(106, 6, 19, 0, 0, 0, 0, '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(107, 7, 19, 0, 0, 0, 0, '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(108, 8, 19, 0, 0, 0, 0, '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(109, 9, 19, 0, 0, 0, 0, '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(110, 10, 19, 0, 0, 0, 0, '2018-07-24 21:15:58', '2018-07-24 21:15:58');

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
(63, 2, 4, 'invisible', '2018-07-16 01:58:30', '2018-07-16 01:58:30'),
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
(188, 3, 52, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(189, 3, 53, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(190, 3, 54, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(191, 3, 55, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(192, 3, 56, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(193, 3, 59, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(194, 3, 57, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(195, 3, 58, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(196, 4, 52, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(197, 4, 53, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(198, 4, 54, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(199, 4, 55, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(200, 4, 56, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(201, 4, 59, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(202, 4, 57, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(203, 4, 58, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(204, 5, 52, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(205, 5, 53, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(206, 5, 54, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(207, 5, 55, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(208, 5, 56, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(209, 5, 59, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(210, 5, 57, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(211, 5, 58, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(212, 6, 52, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(213, 6, 53, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(214, 6, 54, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(215, 6, 55, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(216, 6, 56, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(217, 6, 59, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(218, 6, 57, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(219, 6, 58, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(220, 7, 52, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(221, 7, 53, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(222, 7, 54, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(223, 7, 55, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(224, 7, 56, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(225, 7, 59, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(226, 7, 57, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(227, 7, 58, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(228, 8, 52, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(229, 8, 53, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(230, 8, 54, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(231, 8, 55, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(232, 8, 56, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(233, 8, 59, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(234, 8, 57, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(235, 8, 58, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(236, 9, 52, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(237, 9, 53, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(238, 9, 54, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(239, 9, 55, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(240, 9, 56, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(241, 9, 59, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(242, 9, 57, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(243, 9, 58, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(244, 10, 52, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(245, 10, 53, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(246, 10, 54, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(247, 10, 55, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(248, 10, 56, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(249, 10, 59, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(250, 10, 57, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(251, 10, 58, 'readonly', '2018-07-21 02:17:47', '2018-07-21 02:17:47'),
(252, 1, 76, 'write', '2018-07-21 19:01:08', '2018-07-21 19:01:08'),
(253, 1, 77, 'write', '2018-07-21 19:01:46', '2018-07-21 19:01:46'),
(255, 1, 79, 'write', '2018-07-21 19:05:59', '2018-07-21 19:05:59'),
(256, 1, 80, 'write', '2018-07-21 19:13:34', '2018-07-21 19:13:34'),
(257, 1, 81, 'write', '2018-07-21 19:16:38', '2018-07-21 19:16:38'),
(258, 2, 76, 'invisible', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(259, 2, 77, 'invisible', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(260, 2, 81, 'invisible', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(262, 2, 79, 'invisible', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(263, 2, 80, 'invisible', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(264, 3, 76, 'write', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(265, 3, 77, 'write', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(266, 3, 81, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(268, 3, 79, 'write', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(269, 3, 80, 'write', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(270, 4, 76, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(271, 4, 77, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(272, 4, 81, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(274, 4, 79, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(275, 4, 80, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(276, 5, 76, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(277, 5, 77, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(278, 5, 81, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(280, 5, 79, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(281, 5, 80, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(282, 6, 76, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(283, 6, 77, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(284, 6, 81, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(286, 6, 79, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(287, 6, 80, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(288, 7, 76, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(289, 7, 77, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(290, 7, 81, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(292, 7, 79, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(293, 7, 80, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(294, 8, 76, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(295, 8, 77, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(296, 8, 81, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(298, 8, 79, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(299, 8, 80, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(300, 9, 76, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(301, 9, 77, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(302, 9, 81, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(304, 9, 79, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(305, 9, 80, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(306, 10, 76, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(307, 10, 77, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(308, 10, 81, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(310, 10, 79, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(311, 10, 80, 'readonly', '2018-07-21 19:21:25', '2018-07-21 19:21:25'),
(313, 1, 83, 'write', '2018-07-21 19:54:29', '2018-07-21 19:54:29'),
(314, 2, 83, 'invisible', '2018-07-21 19:55:41', '2018-07-21 19:55:41'),
(316, 3, 83, 'invisible', '2018-07-21 19:55:41', '2018-07-21 19:55:41'),
(318, 4, 83, 'invisible', '2018-07-21 19:55:41', '2018-07-21 19:55:41'),
(320, 5, 83, 'invisible', '2018-07-21 19:55:41', '2018-07-21 19:55:41'),
(322, 6, 83, 'invisible', '2018-07-21 19:55:41', '2018-07-21 19:55:41'),
(324, 7, 83, 'invisible', '2018-07-21 19:55:41', '2018-07-21 19:55:41'),
(326, 8, 83, 'invisible', '2018-07-21 19:55:41', '2018-07-21 19:55:41'),
(328, 9, 83, 'invisible', '2018-07-21 19:55:41', '2018-07-21 19:55:41'),
(330, 10, 83, 'invisible', '2018-07-21 19:55:41', '2018-07-21 19:55:41'),
(332, 1, 84, 'write', '2018-07-21 23:38:30', '2018-07-21 23:38:30'),
(333, 1, 85, 'write', '2018-07-21 23:40:10', '2018-07-21 23:40:10'),
(334, 1, 86, 'write', '2018-07-21 23:41:05', '2018-07-21 23:41:05'),
(335, 1, 87, 'write', '2018-07-21 23:42:05', '2018-07-21 23:42:05'),
(336, 1, 88, 'write', '2018-07-21 23:42:50', '2018-07-21 23:42:50'),
(337, 2, 84, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(338, 2, 85, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(339, 2, 86, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(340, 2, 87, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(341, 2, 88, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(342, 3, 84, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(343, 3, 85, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(344, 3, 86, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(345, 3, 87, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(346, 3, 88, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(347, 4, 84, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(348, 4, 85, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(349, 4, 86, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(350, 4, 87, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(351, 4, 88, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(352, 5, 84, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(353, 5, 85, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(354, 5, 86, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(355, 5, 87, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(356, 5, 88, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(357, 6, 84, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(358, 6, 85, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(359, 6, 86, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(360, 6, 87, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(361, 6, 88, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(362, 7, 84, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(363, 7, 85, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(364, 7, 86, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(365, 7, 87, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(366, 7, 88, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(367, 8, 84, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(368, 8, 85, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(369, 8, 86, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(370, 8, 87, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(371, 8, 88, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(372, 9, 84, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(373, 9, 85, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(374, 9, 86, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(375, 9, 87, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(376, 9, 88, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(377, 10, 84, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(378, 10, 85, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(379, 10, 86, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(380, 10, 87, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(381, 10, 88, 'invisible', '2018-07-21 23:48:33', '2018-07-21 23:48:33'),
(382, 1, 89, 'write', '2018-07-22 00:00:06', '2018-07-22 00:00:06'),
(383, 2, 89, 'invisible', '2018-07-22 00:00:54', '2018-07-22 00:00:54'),
(384, 3, 89, 'readonly', '2018-07-22 00:00:54', '2018-07-22 00:00:54'),
(385, 4, 89, 'readonly', '2018-07-22 00:00:54', '2018-07-22 00:00:54'),
(386, 5, 89, 'readonly', '2018-07-22 00:00:54', '2018-07-22 00:00:54'),
(387, 6, 89, 'readonly', '2018-07-22 00:00:54', '2018-07-22 00:00:54'),
(388, 7, 89, 'readonly', '2018-07-22 00:00:54', '2018-07-22 00:00:54'),
(389, 8, 89, 'readonly', '2018-07-22 00:00:54', '2018-07-22 00:00:54'),
(390, 9, 89, 'readonly', '2018-07-22 00:00:54', '2018-07-22 00:00:54'),
(391, 10, 89, 'readonly', '2018-07-22 00:00:54', '2018-07-22 00:00:54'),
(392, 3, 1, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(393, 3, 2, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(394, 3, 3, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(395, 3, 4, 'invisible', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(396, 4, 1, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(397, 4, 2, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(398, 4, 3, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(399, 4, 4, 'invisible', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(400, 5, 1, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(401, 5, 2, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(402, 5, 3, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(403, 5, 4, 'invisible', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(404, 6, 1, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(405, 6, 2, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(406, 6, 3, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(407, 6, 4, 'invisible', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(408, 7, 1, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(409, 7, 2, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(410, 7, 3, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(411, 7, 4, 'invisible', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(412, 8, 1, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(413, 8, 2, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(414, 8, 3, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(415, 8, 4, 'invisible', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(416, 9, 1, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(417, 9, 2, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(418, 9, 3, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(419, 9, 4, 'invisible', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(420, 10, 1, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(421, 10, 2, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(422, 10, 3, 'readonly', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(423, 10, 4, 'invisible', '2018-07-22 19:16:02', '2018-07-22 19:16:02'),
(426, 1, 92, 'write', '2018-07-23 16:50:10', '2018-07-23 16:50:10'),
(427, 1, 93, 'write', '2018-07-23 16:50:49', '2018-07-23 16:50:49'),
(428, 1, 94, 'write', '2018-07-23 16:52:10', '2018-07-23 16:52:10'),
(429, 1, 95, 'write', '2018-07-23 16:53:28', '2018-07-23 16:53:28'),
(430, 1, 96, 'write', '2018-07-23 16:54:15', '2018-07-23 16:54:15'),
(431, 1, 97, 'write', '2018-07-23 16:56:35', '2018-07-23 16:56:35'),
(432, 1, 98, 'write', '2018-07-23 16:57:30', '2018-07-23 16:57:30'),
(433, 2, 98, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(434, 2, 92, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(435, 2, 93, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(436, 2, 96, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(437, 2, 94, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(438, 2, 95, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(439, 2, 97, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(440, 3, 98, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(441, 3, 92, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(442, 3, 93, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(443, 3, 96, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(444, 3, 94, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(445, 3, 95, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(446, 3, 97, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(447, 4, 98, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(448, 4, 92, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(449, 4, 93, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(450, 4, 96, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(451, 4, 94, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(452, 4, 95, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(453, 4, 97, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(454, 5, 98, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(455, 5, 92, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(456, 5, 93, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(457, 5, 96, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(458, 5, 94, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(459, 5, 95, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(460, 5, 97, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(461, 6, 98, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(462, 6, 92, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(463, 6, 93, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(464, 6, 96, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(465, 6, 94, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(466, 6, 95, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(467, 6, 97, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(468, 7, 98, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(469, 7, 92, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(470, 7, 93, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(471, 7, 96, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(472, 7, 94, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(473, 7, 95, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(474, 7, 97, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(475, 8, 98, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(476, 8, 92, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(477, 8, 93, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(478, 8, 96, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(479, 8, 94, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(480, 8, 95, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(481, 8, 97, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(482, 9, 98, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(483, 9, 92, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(484, 9, 93, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(485, 9, 96, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(486, 9, 94, 'write', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(487, 9, 95, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(488, 9, 97, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(489, 10, 98, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(490, 10, 92, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(491, 10, 93, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(492, 10, 96, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(493, 10, 94, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(494, 10, 95, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(495, 10, 97, 'readonly', '2018-07-23 20:00:56', '2018-07-23 20:00:56'),
(496, 1, 99, 'write', '2018-07-24 18:59:46', '2018-07-24 18:59:46'),
(497, 1, 100, 'write', '2018-07-24 19:00:09', '2018-07-24 19:00:09'),
(498, 1, 101, 'write', '2018-07-24 19:01:00', '2018-07-24 19:01:00'),
(499, 2, 99, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(500, 2, 100, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(501, 2, 101, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(502, 3, 99, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(503, 3, 100, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(504, 3, 101, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(505, 4, 99, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(506, 4, 100, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(507, 4, 101, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(508, 5, 99, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(509, 5, 100, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(510, 5, 101, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(511, 6, 99, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(512, 6, 100, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(513, 6, 101, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(514, 7, 99, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(515, 7, 100, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(516, 7, 101, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(517, 8, 99, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(518, 8, 100, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(519, 8, 101, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(520, 9, 99, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(521, 9, 100, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(522, 9, 101, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(523, 10, 99, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(524, 10, 100, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(525, 10, 101, 'write', '2018-07-24 19:39:33', '2018-07-24 19:39:33'),
(530, 3, 30, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(531, 3, 31, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(532, 3, 32, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(533, 3, 33, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(536, 4, 30, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(537, 4, 31, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(538, 4, 32, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(539, 4, 33, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(542, 5, 30, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(543, 5, 31, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(544, 5, 32, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(545, 5, 33, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(548, 6, 30, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(549, 6, 31, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(550, 6, 32, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(551, 6, 33, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(554, 7, 30, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(555, 7, 31, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(556, 7, 32, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(557, 7, 33, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(560, 8, 30, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(561, 8, 31, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(562, 8, 32, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(563, 8, 33, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(566, 9, 30, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(567, 9, 31, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(568, 9, 32, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(569, 9, 33, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(572, 10, 30, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(573, 10, 31, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(574, 10, 32, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(575, 10, 33, 'readonly', '2018-07-24 19:57:10', '2018-07-24 19:57:10'),
(588, 1, 107, 'write', '2018-07-24 20:39:13', '2018-07-24 20:39:13'),
(589, 2, 107, 'readonly', '2018-07-24 20:39:13', '2018-07-24 20:39:13'),
(590, 3, 107, 'readonly', '2018-07-24 20:39:13', '2018-07-24 20:39:13'),
(591, 4, 107, 'invisible', '2018-07-24 20:39:13', '2018-07-24 20:39:13'),
(592, 5, 107, 'readonly', '2018-07-24 20:39:13', '2018-07-24 20:39:13'),
(593, 6, 107, 'readonly', '2018-07-24 20:39:13', '2018-07-24 20:39:13'),
(594, 7, 107, 'readonly', '2018-07-24 20:39:13', '2018-07-24 20:39:13'),
(595, 8, 107, 'readonly', '2018-07-24 20:39:13', '2018-07-24 20:39:13'),
(596, 9, 107, 'readonly', '2018-07-24 20:39:13', '2018-07-24 20:39:13'),
(597, 10, 107, 'readonly', '2018-07-24 20:39:13', '2018-07-24 20:39:13'),
(598, 1, 108, 'write', '2018-07-24 20:55:45', '2018-07-24 20:55:45'),
(599, 1, 109, 'write', '2018-07-24 20:56:27', '2018-07-24 20:56:27'),
(600, 1, 110, 'write', '2018-07-24 20:59:34', '2018-07-24 20:59:34'),
(601, 1, 111, 'write', '2018-07-24 21:00:01', '2018-07-24 21:00:01'),
(602, 1, 112, 'write', '2018-07-24 21:00:51', '2018-07-24 21:00:51'),
(603, 2, 108, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(604, 2, 109, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(605, 2, 110, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(606, 2, 111, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(607, 2, 112, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(608, 3, 108, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(609, 3, 109, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(610, 3, 110, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(611, 3, 111, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(612, 3, 112, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(613, 4, 108, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(614, 4, 109, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(615, 4, 110, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(616, 4, 111, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(617, 4, 112, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(618, 5, 108, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(619, 5, 109, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(620, 5, 110, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(621, 5, 111, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(622, 5, 112, 'write', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(623, 6, 108, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(624, 6, 109, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(625, 6, 110, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(626, 6, 111, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(627, 6, 112, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(628, 7, 108, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(629, 7, 109, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(630, 7, 110, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(631, 7, 111, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(632, 7, 112, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(633, 8, 108, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(634, 8, 109, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(635, 8, 110, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(636, 8, 111, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(637, 8, 112, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(638, 9, 108, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(639, 9, 109, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(640, 9, 110, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(641, 9, 111, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(642, 9, 112, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(643, 10, 108, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(644, 10, 109, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(645, 10, 110, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(646, 10, 111, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58'),
(647, 10, 112, 'readonly', '2018-07-24 21:15:58', '2018-07-24 21:15:58');

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
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 5, 5, NULL, NULL),
(6, 6, 6, NULL, NULL),
(7, 7, 7, NULL, NULL),
(8, 8, 8, NULL, NULL),
(9, 9, 9, NULL, NULL),
(10, 10, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `peran` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_pj` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `staf` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `deleted_at`, `created_at`, `updated_at`, `nama`, `project_id`, `peran`, `nama_pj`, `staf`) VALUES
(1, NULL, '2018-07-24 21:03:06', '2018-07-24 21:10:48', 'Tim A', 1, 'Proses Bisnis', 3, '[4]'),
(2, NULL, '2018-07-24 21:11:11', '2018-07-24 21:11:25', 'Tim A', 1, 'Pengembang SI', 5, '[6,7,8,9]'),
(3, NULL, '2018-07-24 21:12:32', '2018-07-24 21:12:32', 'Tim A', 1, 'Proses Bisnis', 10, '[]');

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
  `public` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Surat Sehat.pdf', 'D:\\laragon\\www\\la1\\storage\\uploads\\2018-07-16-123424-Surat Sehat.pdf', 'pdf', '', 1, 'h0xzbzz4vvucxdsxpdcw', 1, '2018-07-17 04:55:36', '2018-07-16 05:34:24', '2018-07-17 04:55:36'),
(2, 'Laravel Cheatsheet.pdf', 'D:\\laragon\\www\\la1\\storage\\uploads\\2018-07-17-103234-Laravel Cheatsheet.pdf', 'pdf', '', 1, 'z8qqt0z2a248rbn2bsge', 1, NULL, '2018-07-17 03:32:34', '2018-07-17 04:48:29'),
(3, 'MySQL.pdf', 'D:\\laragon\\www\\la1\\storage\\uploads\\2018-07-17-115617-MySQL.pdf', 'pdf', '', 1, 'xje7ndwwjuyytnktbtdp', 1, NULL, '2018-07-17 04:56:17', '2018-07-17 04:56:17'),
(4, 'HTML-cheat-sheet.pdf', 'D:\\laragon\\www\\la1\\storage\\uploads\\2018-07-17-120413-HTML-cheat-sheet.pdf', 'pdf', '', 2, 'xhzxnc63khgw8k7phrwl', 0, NULL, '2018-07-17 05:04:13', '2018-07-17 05:04:13'),
(5, 'Cheat Sheet - PHP and Form.pdf', 'D:\\laragon\\www\\la1\\storage\\uploads\\2018-07-17-120508-Cheat Sheet - PHP and Form.pdf', 'pdf', '', 1, 'wpdp44zvkpdjznkymnyy', 0, NULL, '2018-07-17 05:05:08', '2018-07-17 06:27:05'),
(6, 'Cheat Sheet - PHP String.pdf', 'D:\\laragon\\www\\la1\\storage\\uploads\\2018-07-17-132854-Cheat Sheet - PHP String.pdf', 'pdf', '', 1, '5fpubqifvraj2ls6ixbj', 0, '2018-07-23 06:57:02', '2018-07-17 06:28:54', '2018-07-23 06:57:02'),
(7, 'Laravel Cheatsheet.pdf', 'D:\\laragon\\www\\la1\\storage\\uploads\\2018-07-23-135628-Laravel Cheatsheet.pdf', 'pdf', '', 1, 'xt0wfoqfrocwupravx0b', 0, NULL, '2018-07-23 06:56:28', '2018-07-23 06:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nip` varchar(18) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instansi` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nip`, `email`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`, `instansi`) VALUES
(1, 'admin admin', '199008262012101002', 'mail.laksana@gmail.com', '$2y$10$O.7C006oeGCLv703St/3Quy5QT2KYEhsfvJhz5o1tD54MQr3f/npO', 'puREDYkBns4t7FoiOh5dBB0JxXKoiNwI8wLpTX5eB7s2hGJ1gLWY665bAjzo', NULL, '2018-07-15 07:18:14', '2018-07-24 21:55:16', 1),
(2, 'User Test', '199101212011101001', 'test@gmail.com', '$2y$10$1kp0hdJ..xOkvoWmHbJ8BuGIksVmTsxtMEk1vGN4q09WRF.Wu1LMS', 'vp9QLLBR35GGQqFRxYva8ZXefpN9llJuOh0lQI4naoXQtlnrlCXUuf20SGuW', NULL, '2018-07-16 05:42:57', '2018-07-21 20:02:06', 1),
(3, 'User Inisiator', '198737373648272632', 'inisiator@kemenkeu.go.id', '$2y$10$209bBMKYn3Jv9ggTHx7JUezqt6UGSosxNd3FzdQeQIv3kj0KlC9BO', 'ZyAan3uzTu9ySLTkZNUUw79IwZMNc61LHeyZ2FOODzcGCirT1hshvgpmNdry', NULL, '2018-07-19 06:45:09', '2018-07-24 20:41:44', 2),
(4, 'User Init Ops', '198001029381029192', 'initops@kemenkeu.go.id', '$2y$10$Fub0Ai9QMiC565jJGm5zDumENSFeLKn6/Un55ptsh49Auy.k17ofO', 'ht9dRGwx8hIgljhTBgogOC3VlsZTUWamoeFvWYNTzZ0Y2O1vqaj4Il3YqECA', NULL, '2018-07-19 06:46:54', '2018-07-24 23:34:24', 2),
(5, 'User Project Man', '198201020102102011', 'projectman@kemenkeu.go.id', '$2y$10$Tv3MM5GXrfyGzWxNHwHrBeqLUjr08v70hs6qluhovtUPT8x/Mj1NK', NULL, NULL, '2018-07-19 06:47:39', '2018-07-19 06:47:39', 1),
(6, 'User Analyst', '198201929281928192', 'analyst@kemenkeu.go.id', '$2y$10$pWHDGit9Ji1HmLxnKDwCgOdKrAs8CMlUgA2SnC6Scqs4QAfhuWfxu', NULL, NULL, '2018-07-19 06:48:22', '2018-07-19 06:48:22', 1),
(7, 'User Dev', '199019201928191829', 'dev@kemenkeu.go.id', '$2y$10$yFtWkYcVIm94TBXuVbY9mej.wTztc/R083MlXhtS8B9EY3/7wxlru', NULL, NULL, '2018-07-19 06:49:18', '2018-07-19 06:49:18', 1),
(8, 'User Tester', '198201020102102001', 'tester@kemenkeu.go.id', '$2y$10$.yWYxbnLLLz/.UQUguOU8.xnKxUG8Z2bP3pRSnvWXIzjITkl8lxxe', NULL, NULL, '2018-07-19 06:50:49', '2018-07-19 06:50:49', 1),
(9, 'User Support', '198201929281928002', 'support@kemenkeu.go.id', '$2y$10$kj4XXEyVAA.0DpHbHW9GAOIfvSRHkHUJLTg/t31ya0YvmMdgtx5sy', NULL, NULL, '2018-07-19 06:51:39', '2018-07-19 06:51:39', 1),
(10, 'User QA', '198737373648200031', 'qa@kemenkeu.go.id', '$2y$10$7vZSYx.Y30NQ6.qfJEIHXuITXWk4MwvnHAakyjiClsMwciuD8032W', 'OJEXxoUEOdac7DeEbHvXK7pFfjEegALisDNtavaSYzwey7uNS8KVmnNRrl8c', NULL, '2018-07-19 06:52:28', '2018-07-24 21:26:39', 3);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctypes`
--
ALTER TABLE `doctypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctypes_role_foreign` (`role`);

--
-- Indexes for table `dokumens`
--
ALTER TABLE `dokumens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumens_project_id_foreign` (`project_id`),
  ADD KEY `dokumens_uploaded_by_foreign` (`uploaded_by`),
  ADD KEY `dokumens_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_inisiator_foreign` (`inisiator`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`);

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
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_project_id_foreign` (`project_id`),
  ADD KEY `teams_nama_pj_foreign` (`nama_pj`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctypes`
--
ALTER TABLE `doctypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dokumens`
--
ALTER TABLE `dokumens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=648;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctypes`
--
ALTER TABLE `doctypes`
  ADD CONSTRAINT `doctypes_role_foreign` FOREIGN KEY (`role`) REFERENCES `roles` (`id`);

--
-- Constraints for table `dokumens`
--
ALTER TABLE `dokumens`
  ADD CONSTRAINT `dokumens_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `dokumens_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `dokumens_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`);

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
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_inisiator_foreign` FOREIGN KEY (`inisiator`) REFERENCES `users` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
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
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_nama_pj_foreign` FOREIGN KEY (`nama_pj`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `teams_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
