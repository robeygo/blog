-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 01:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stream_notification`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `replay_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `replay_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'test', 0, '2023-05-20 06:40:55', '2023-05-20 06:40:55'),
(2, 2, 1, 'test2', 0, '2023-05-20 06:56:56', '2023-05-20 06:56:56'),
(7, 2, 1, 'rep1', 1, '2023-05-20 07:16:54', '2023-05-20 07:16:54'),
(8, 2, 1, 'sds', 1, '2023-05-20 07:23:27', '2023-05-20 07:23:27'),
(9, 2, 1, 'rep', 2, '2023-05-20 07:23:46', '2023-05-20 07:23:46'),
(10, 134, 1, 'test2', 0, '2023-05-20 08:16:28', '2023-05-20 08:16:28'),
(11, 134, 1, 'rep test', 10, '2023-05-20 08:23:45', '2023-05-20 08:23:45'),
(12, 134, 1, 'rep test2', 10, '2023-05-20 08:24:18', '2023-05-20 08:24:18'),
(13, 134, 1, 'comment2', 0, '2023-05-20 08:24:48', '2023-05-20 08:24:48'),
(14, 134, 1, 'rep comment 2', 13, '2023-05-20 08:24:55', '2023-05-20 08:24:55'),
(15, 134, 1, 'test', 13, '2023-05-20 08:28:27', '2023-05-20 08:28:27'),
(16, 2, 2, 'rep from ola', 1, '2023-05-20 08:35:25', '2023-05-20 08:35:25');

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
(5, '2023_05_07_134255_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('03d2b082-f6a1-4d3d-bb26-984324eeb7c2', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 2, '{\"data\":\"new postsdsahas been added by\"}', '2023-05-20 01:54:11', '2023-05-20 01:52:39', '2023-05-20 01:54:11'),
('0bfa5838-8a55-44c4-a458-e63b9da51757', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 2, '{\"data\":\"new posttesthas been added by\"}', '2023-05-20 08:34:31', '2023-05-20 04:21:59', '2023-05-20 08:34:31'),
('1497ea11-3d65-4735-97fd-5656e47cd283', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 1, '{\"data\":\"new postsdsahas been added by\"}', '2023-05-20 02:36:13', '2023-05-20 01:52:38', '2023-05-20 02:36:13'),
('177a57ee-ebae-470e-b2d7-e7f247e98c81', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 2, '{\"data\":\"new postfdshas been added by\"}', '2023-05-20 08:34:36', '2023-05-20 01:50:31', '2023-05-20 08:34:36'),
('187e4920-4806-4fb0-ba28-4a8a46804dbd', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 1, '{\"data\":\"new postwaewqehas been added by\"}', NULL, '2023-05-20 08:34:41', '2023-05-20 08:34:41'),
('3e16a83d-2481-4850-a579-a0f4272b2807', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 1, '{\"data\":\"new posttesthas been added by\"}', '2023-05-20 06:10:30', '2023-05-20 04:21:56', '2023-05-20 06:10:30'),
('4e27a149-77e5-401e-800d-7e1255560dfd', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 1, '{\"data\":\"new postfdshas been added by\"}', '2023-05-20 01:50:50', '2023-05-20 01:50:29', '2023-05-20 01:50:50'),
('69061da0-3933-4f3a-8579-4301c8db9b11', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 2, '{\"data\":\"new postfor deletedhas been added by\"}', '2023-05-20 08:34:29', '2023-05-20 05:24:35', '2023-05-20 08:34:29'),
('b5add13c-6f40-4218-a8fb-9e6fd59a7c4c', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 1, '{\"data\":\"new postfor deletedhas been added by\"}', '2023-05-20 06:10:26', '2023-05-20 05:24:34', '2023-05-20 06:10:26'),
('be609d15-f06f-4d9f-9179-431156fcb25e', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 1, '{\"data\":\"new postsadahas been added by\"}', '2023-05-20 08:16:46', '2023-05-20 04:00:36', '2023-05-20 08:16:46'),
('c698e282-c35b-4508-b6f5-a8d4b668a450', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 2, '{\"data\":\"new postsadahas been added by\"}', '2023-05-20 08:34:33', '2023-05-20 04:00:37', '2023-05-20 08:34:33'),
('ea8bb2b7-c988-41a5-b972-8b2760a54fdf', 'App\\Notifications\\AddPostNotification', 'App\\Models\\User', 2, '{\"data\":\"new postwaewqehas been added by\"}', '2023-05-20 08:35:32', '2023-05-20 08:34:43', '2023-05-20 08:35:32');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `view`, `created_at`, `updated_at`) VALUES
(1, 0, 'post1', 'text from ali', 1, '2023-05-07 08:26:36', '2023-05-07 08:26:36'),
(2, 0, 'test', 'test', 0, '2023-05-07 10:36:15', '2023-05-07 10:36:15'),
(3, 0, 'test', 'test', 0, '2023-05-07 10:37:19', '2023-05-07 10:37:19'),
(6, 0, 'new post', 'from ola', 0, '2023-05-07 11:01:30', '2023-05-07 11:01:30'),
(7, 0, 'new post', 'from ola', 0, '2023-05-07 11:04:47', '2023-05-07 11:04:47'),
(8, 0, 'terter', 'retrete', 0, '2023-05-07 11:42:42', '2023-05-07 11:42:42'),
(9, 0, 'ewrw', 'erwr', 0, '2023-05-07 11:46:28', '2023-05-07 11:46:28'),
(10, 0, 'ewrw', 'erwr', 0, '2023-05-07 11:46:28', '2023-05-07 11:46:28'),
(11, 0, 'rwer', 'erewr', 0, '2023-05-07 11:46:56', '2023-05-07 11:46:56'),
(12, 0, 'asda', 'dad', 0, '2023-05-07 11:47:34', '2023-05-07 11:47:34'),
(13, 0, 'sdas', 'sadasd', 0, '2023-05-07 13:19:28', '2023-05-07 13:19:28'),
(14, 0, 'waed', 'asdsada', 0, '2023-05-08 00:22:49', '2023-05-08 00:22:49'),
(15, 0, 'waed', 'asdsada', 0, '2023-05-08 00:23:31', '2023-05-08 00:23:31'),
(16, 0, 'wsas', 'asdasd', 0, '2023-05-08 00:26:36', '2023-05-08 00:26:36'),
(17, 0, 'sdf', 'sdfsdf', 0, '2023-05-08 10:18:38', '2023-05-08 10:18:38'),
(18, 0, 'AWSEA', 'WDSADSA', 0, '2023-05-08 10:19:08', '2023-05-08 10:19:08'),
(19, 0, 'test ola', 'asdasd asdsadsa as', 0, '2023-05-08 17:26:09', '2023-05-08 17:26:09'),
(20, 0, 'asdad', 'sadsad', 0, '2023-05-08 17:27:27', '2023-05-08 17:27:27'),
(21, 0, 'sasa', 'asa', 0, '2023-05-08 17:29:27', '2023-05-08 17:29:27'),
(22, 0, 'sada', 'sadas', 0, '2023-05-08 17:33:09', '2023-05-08 17:33:09'),
(23, 0, 'sadsad', 'sadasd', 0, '2023-05-08 17:35:27', '2023-05-08 17:35:27'),
(24, 0, 'sadsasad', 'asdasd', 0, '2023-05-08 17:35:42', '2023-05-08 17:35:42'),
(25, 0, 'edrfd', 'sfsfs', 0, '2023-05-08 17:37:53', '2023-05-08 17:37:53'),
(26, 0, 'sadas', 'sadasd', 0, '2023-05-08 17:38:28', '2023-05-08 17:38:28'),
(27, 0, 'sad', 'adas', 0, '2023-05-08 17:39:11', '2023-05-08 17:39:11'),
(28, 0, 'test', 'from ola', 0, '2023-05-08 17:40:50', '2023-05-08 17:40:50'),
(29, 0, 'asdasd', 'sadasda', 0, '2023-05-08 17:42:10', '2023-05-08 17:42:10'),
(30, 0, 'سشيسشي', 'شسيسشيسش', 0, '2023-05-08 17:50:04', '2023-05-08 17:50:04'),
(31, 0, 'sda', 'dsad', 0, '2023-05-08 17:53:36', '2023-05-08 17:53:36'),
(32, 0, 'sdad', 'sadsa', 0, '2023-05-08 17:55:26', '2023-05-08 17:55:26'),
(33, 0, 'sadas', 'dsad', 0, '2023-05-08 17:56:09', '2023-05-08 17:56:09'),
(34, 0, 'dsad', 'sadas', 0, '2023-05-08 17:56:39', '2023-05-08 17:56:39'),
(35, 0, 'asad', 'asd', 0, '2023-05-08 17:57:18', '2023-05-08 17:57:18'),
(36, 0, 'sadsa', 'dsad', 0, '2023-05-08 17:58:07', '2023-05-08 17:58:07'),
(37, 0, 'sddw', 'asdsa', 0, '2023-05-08 17:58:48', '2023-05-08 17:58:48'),
(38, 0, 'dsadsa', 'dsadasd', 0, '2023-05-08 18:02:09', '2023-05-08 18:02:09'),
(39, 0, 'sdasd', 'dssadas', 0, '2023-05-08 18:04:34', '2023-05-08 18:04:34'),
(40, 0, 'ytyutguy', 'ijuio', 0, '2023-05-08 18:11:12', '2023-05-08 18:11:12'),
(41, 0, 'asd', 'asdas', 0, '2023-05-09 01:55:53', '2023-05-09 01:55:53'),
(42, 0, 'sda', 'dad', 0, '2023-05-09 01:57:20', '2023-05-09 01:57:20'),
(43, 0, 'sad', 'eawed', 0, '2023-05-09 01:57:36', '2023-05-09 01:57:36'),
(44, 0, 'w', 'ewq', 0, '2023-05-09 01:58:30', '2023-05-09 01:58:30'),
(45, 0, 'sas', 'as', 0, '2023-05-09 01:59:01', '2023-05-09 01:59:01'),
(46, 0, 'swd', 'asdsad', 0, '2023-05-09 02:02:11', '2023-05-09 02:02:11'),
(47, 0, 'صسثي', 'سشي', 0, '2023-05-09 02:08:47', '2023-05-09 02:08:47'),
(48, 0, 'sad', 'sadas', 0, '2023-05-09 02:10:45', '2023-05-09 02:10:45'),
(49, 0, 'sad', 'sad', 0, '2023-05-09 02:12:34', '2023-05-09 02:12:34'),
(50, 0, 'zsd', 'sadasd', 0, '2023-05-09 02:13:37', '2023-05-09 02:13:37'),
(51, 0, 'zxs', 'dsdasd', 0, '2023-05-09 02:16:36', '2023-05-09 02:16:36'),
(52, 0, 'asdsd', 'sads', 0, '2023-05-09 02:17:47', '2023-05-09 02:17:47'),
(53, 0, 'sad', 'sadas', 0, '2023-05-09 02:19:45', '2023-05-09 02:19:45'),
(54, 0, 'sa', 'dsad', 0, '2023-05-09 02:20:31', '2023-05-09 02:20:31'),
(55, 0, 'sadsadsadsa', 'dsadsadsa', 0, '2023-05-09 02:21:17', '2023-05-09 02:21:17'),
(56, 0, 'test', 'sdsfsdfsdfsd', 0, '2023-05-09 02:35:21', '2023-05-09 02:35:21'),
(57, 0, 'sdad', 'sadsa', 0, '2023-05-09 02:35:46', '2023-05-09 02:35:46'),
(58, 0, 'asdad', 'sadas', 0, '2023-05-09 02:37:22', '2023-05-09 02:37:22'),
(59, 0, 'dsa', 'sadsad', 0, '2023-05-09 02:38:23', '2023-05-09 02:38:23'),
(60, 0, 'sss', 'sss', 0, '2023-05-09 02:38:35', '2023-05-09 02:38:35'),
(61, 0, 'test', 'dsds dee', 0, '2023-05-09 02:39:17', '2023-05-09 02:39:17'),
(62, 0, 'asdsad', 'asdsad', 0, '2023-05-09 02:39:39', '2023-05-09 02:39:39'),
(63, 0, 'zx', 'sdsad', 0, '2023-05-09 02:39:50', '2023-05-09 02:39:50'),
(64, 0, 'sadsa', 'dsad', 0, '2023-05-09 02:40:05', '2023-05-09 02:40:05'),
(65, 0, 'ased33', '333', 0, '2023-05-09 02:40:19', '2023-05-09 02:40:19'),
(66, 0, '33', '33', 0, '2023-05-09 02:40:37', '2023-05-09 02:40:37'),
(67, 0, '33', '33', 0, '2023-05-09 02:41:53', '2023-05-09 02:41:53'),
(68, 0, 'sadsa', 'das', 0, '2023-05-09 02:42:29', '2023-05-09 02:42:29'),
(69, 0, 'alialasmar', 'ererw', 0, '2023-05-09 02:43:27', '2023-05-09 02:43:27'),
(70, 0, 'asd4', 'sadasdasd', 0, '2023-05-09 02:45:22', '2023-05-09 02:45:22'),
(71, 0, 'tttt', 'ttt', 0, '2023-05-09 02:46:07', '2023-05-09 02:46:07'),
(72, 0, 'الله', 'الله', 0, '2023-05-09 02:47:13', '2023-05-09 02:47:13'),
(73, 0, 'يسشيشسي', 'شسيشس', 0, '2023-05-09 02:54:31', '2023-05-09 02:54:31'),
(74, 0, 'swdasd', 'asd', 0, '2023-05-09 03:13:49', '2023-05-09 03:13:49'),
(75, 0, 'asdadas', 'das', 0, '2023-05-09 03:18:54', '2023-05-09 03:18:54'),
(76, 0, 'tttttttt', 'ttt', 0, '2023-05-09 03:19:14', '2023-05-09 03:19:14'),
(77, 0, 'ttttt', 'tttt', 0, '2023-05-09 03:19:56', '2023-05-09 03:19:56'),
(78, 0, 'alialasmar', 'derfdsfsd', 0, '2023-05-09 03:21:10', '2023-05-09 03:21:10'),
(79, 0, 'aaaaaaaaaaa', 'aaaaaaaaa', 0, '2023-05-09 03:21:41', '2023-05-09 03:21:41'),
(80, 0, 'sdsa', 'sadas', 0, '2023-05-09 03:23:06', '2023-05-09 03:23:06'),
(81, 0, 'sdsa', 'sad', 0, '2023-05-09 03:24:04', '2023-05-09 03:24:04'),
(82, 0, 'dsadsada', 'sd a', 0, '2023-05-09 03:24:14', '2023-05-09 03:24:14'),
(83, 0, 'sdds', 's', 0, '2023-05-09 03:24:33', '2023-05-09 03:24:33'),
(84, 0, 'rrrrrrrrr', 'rrrrrrrrr', 0, '2023-05-09 03:25:25', '2023-05-09 03:25:25'),
(85, 0, 'wwwwwwww', 'wwwwwww', 0, '2023-05-09 03:26:05', '2023-05-09 03:26:05'),
(86, 0, 'ss', 'sss', 0, '2023-05-09 03:26:37', '2023-05-09 03:26:37'),
(87, 0, 'aaa', 'aaa', 0, '2023-05-09 03:26:51', '2023-05-09 03:26:51'),
(88, 0, 'aaa', 'aaa', 0, '2023-05-09 03:26:53', '2023-05-09 03:26:53'),
(89, 0, 'yyyyyyyyy', 'yyyyyyyyyyyyyyy', 0, '2023-05-09 03:27:21', '2023-05-09 03:27:21'),
(90, 0, 'new post from ola', 'dsaddddd', 0, '2023-05-09 03:27:46', '2023-05-09 03:27:46'),
(91, 0, 'df', 'sdsd', 0, '2023-05-09 03:28:01', '2023-05-09 03:28:01'),
(92, 0, 'sadasd', 'asdas', 0, '2023-05-09 03:28:22', '2023-05-09 03:28:22'),
(93, 0, 'dsadsadas', 'dsadsad', 0, '2023-05-09 03:33:55', '2023-05-09 03:33:55'),
(94, 0, 'sadasdsadsad', 'dsadsad', 0, '2023-05-09 03:34:12', '2023-05-09 03:34:12'),
(95, 0, 'sadasdsadsad', 'dsadsad', 0, '2023-05-09 03:34:14', '2023-05-09 03:34:14'),
(96, 0, 'dd', 'dd', 0, '2023-05-09 03:34:23', '2023-05-09 03:34:23'),
(97, 0, 'edrf', 'sddsfs', 0, '2023-05-09 03:34:37', '2023-05-09 03:34:37'),
(98, 0, 'بوست من علا', 'بثقصث ثصقصثق', 0, '2023-05-09 03:36:01', '2023-05-09 03:36:01'),
(99, 0, 'علا 2222', 'يبسيب', 0, '2023-05-09 03:36:14', '2023-05-09 03:36:14'),
(100, 0, 'علاللل', 'ليقلفقث', 0, '2023-05-09 03:43:42', '2023-05-09 03:43:42'),
(101, 0, 'test1', 'sdfsdf', 0, '2023-05-09 03:51:07', '2023-05-09 03:51:07'),
(102, 0, 'sadasd', 'sadas', 0, '2023-05-09 03:53:24', '2023-05-09 03:53:24'),
(103, 0, 'rr', 'rr', 0, '2023-05-09 03:58:41', '2023-05-09 03:58:41'),
(104, 0, 'sws', 'ss', 0, '2023-05-09 03:59:02', '2023-05-09 03:59:02'),
(105, 0, 'axxxxxx', 'xxx', 0, '2023-05-09 04:00:22', '2023-05-09 04:00:22'),
(106, 0, 'axxxxxx', 'xxx', 0, '2023-05-09 04:00:25', '2023-05-09 04:00:25'),
(107, 0, 'aaaa', 'aa', 0, '2023-05-09 04:00:41', '2023-05-09 04:00:41'),
(108, 0, 'neee', 'eresa', 0, '2023-05-09 04:20:00', '2023-05-09 04:20:00'),
(109, 0, 'sdsa', 'das', 0, '2023-05-09 04:20:20', '2023-05-09 04:20:20'),
(110, 0, 'sad', 'asd', 0, '2023-05-09 04:21:08', '2023-05-09 04:21:08'),
(111, 0, 'sds', 'adsad', 0, '2023-05-09 04:21:59', '2023-05-09 04:21:59'),
(112, 0, 'asd', 'sad', 0, '2023-05-09 04:22:33', '2023-05-09 04:22:33'),
(113, 0, 'test', 'adas', 0, '2023-05-09 04:23:23', '2023-05-09 04:23:23'),
(114, 0, 'asd', 'das', 0, '2023-05-09 04:23:57', '2023-05-09 04:23:57'),
(115, 0, 'dsad', 'asd', 0, '2023-05-09 04:25:33', '2023-05-09 04:25:33'),
(116, 0, 'ali', 'dss', 0, '2023-05-09 04:26:08', '2023-05-09 04:26:08'),
(117, 0, 'dasd', 'sad', 0, '2023-05-09 05:23:56', '2023-05-09 05:23:56'),
(118, 0, 'aaaaaaaaaaaaa', 'sa', 0, '2023-05-09 05:28:57', '2023-05-09 05:28:57'),
(119, 0, 'sdadd asdas', 'dsad a', 0, '2023-05-09 05:30:56', '2023-05-09 05:30:56'),
(120, 0, 'dsadas', 'das', 0, '2023-05-09 05:32:01', '2023-05-09 05:32:01'),
(121, 0, 'sadsad', 'asda', 0, '2023-05-09 05:33:11', '2023-05-09 05:33:11'),
(122, 0, 'l;kl;lk;l', 'k;k', 0, '2023-05-09 05:33:48', '2023-05-09 05:33:48'),
(123, 0, 'sadsa', 'dasd', 0, '2023-05-09 05:34:51', '2023-05-09 05:34:51'),
(124, 0, 'zx', 'ZXZ', 0, '2023-05-09 05:35:36', '2023-05-09 05:35:36'),
(125, 0, 'asdasd', 'asd', 0, '2023-05-09 05:41:11', '2023-05-09 05:41:11'),
(126, 0, 'dasd', 'asd', 0, '2023-05-09 05:42:53', '2023-05-09 05:42:53'),
(127, 0, 'test add', 'ddd', 0, '2023-05-09 05:44:37', '2023-05-09 05:44:37'),
(128, 0, 'sad', 'asdasd', 0, '2023-05-09 05:51:04', '2023-05-09 05:51:04'),
(129, 0, 'dfds', 'fsdf', 0, '2023-05-09 05:52:54', '2023-05-09 05:52:54'),
(130, 0, 'sad', 'sada', 0, '2023-05-09 05:53:52', '2023-05-09 05:53:52'),
(131, 0, 'sadas', 'dasd', 0, '2023-05-09 05:56:04', '2023-05-09 05:56:04'),
(132, 0, 'fds', 'gsdfsdf', 0, '2023-05-20 01:50:29', '2023-05-20 01:50:29'),
(133, 0, 'sdsa', 'dasd', 0, '2023-05-20 01:52:38', '2023-05-20 01:52:38'),
(134, 1, 'test 1 updated', 'test body', 0, '2023-05-20 04:00:36', '2023-05-20 05:21:29'),
(137, 2, 'waewqe', 'dsada', 0, '2023-05-20 08:34:39', '2023-05-20 08:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ali Alasmar', 'alialasmar522@gmail.com', NULL, '$2y$10$.G.DL6CdhegNe2HwABX.w.efdOMKw.XqNP8ia.gOleON0n8G2NPVO', NULL, '2023-05-07 04:42:16', '2023-05-07 04:42:16'),
(2, 'ola', 'ola@gmail.com', NULL, '$2y$10$f2yZCDvrGhmSdeK.TDjZHeTO9MUxE5EcV7nITYzHbStgpFim0kuJi', NULL, '2023-05-07 10:59:50', '2023-05-07 10:59:50');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
