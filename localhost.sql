-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2023 at 12:01 AM
-- Server version: 10.6.14-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1806321_db_prod_puskesmas`
--
CREATE DATABASE IF NOT EXISTS `u1806321_db_prod_puskesmas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `u1806321_db_prod_puskesmas`;

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
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_resets_table', 1),
(34, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(35, '2019_08_19_000000_create_failed_jobs_table', 1),
(36, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(37, '2020_05_21_100000_create_teams_table', 1),
(38, '2020_05_21_200000_create_team_user_table', 1),
(39, '2020_05_21_300000_create_team_invitations_table', 1),
(40, '2022_02_17_125908_laravel_entrust_setup_tables', 1),
(41, '2022_02_17_133508_create_sessions_table', 1),
(42, '2022_02_18_102441_create_model_polis_table', 1),
(43, '2022_02_20_112543_create_model_pasiens_table', 1),
(44, '2022_02_20_114632_create_detail_pasien_models_table', 1),
(45, '2022_02_21_001240_add_column_role_to_users_table', 1),
(46, '2022_02_21_003450_create_model_dokters_table', 1),
(47, '2022_02_21_010248_create_model_jadwal_praktik_dokters_table', 1),
(48, '2022_02_22_065622_add_column_device_token_to_tb_pasien_table', 1),
(49, '2022_02_22_065630_add_column_device_token_to_tb_dokter_table', 1),
(50, '2022_02_23_022621_add_column_is_verificationktp_to_tb_pasien_table', 1),
(51, '2022_03_01_183536_create_model_status_verifikasi_ktps_table', 1),
(52, '2022_03_07_035249_create_model_antrians_table', 1),
(53, '2022_05_15_185225_add_column_id_user_to_tb_dokter_table', 1),
(54, '2022_05_16_044253_create_model_pemeriksaans_table', 1),
(55, '2022_05_17_014633_add_column_id_poli_to_tb_pemeriksaan_table', 1),
(56, '2022_05_21_235118_add_column_status_pemeriksaan_to_tb_pemeriksaan_table', 1),
(57, '2022_05_22_082749_create_model_hasil_pemeriksaans_table', 1),
(58, '2022_05_23_082202_create_model_status_antrians_table', 1),
(59, '2022_06_24_121155_add_keluhan_pasien_to_tb_hasil_pemeriksaan_table', 1),
(60, '2022_06_29_004338_create_model_pemeriksaanlabs_table', 1),
(61, '2022_06_29_173849_create_model_surat_rujukans_table', 1),
(62, '2022_06_30_043843_add_column_name_file_to_tb_surat_rujukan_pasien_table', 1),
(63, '2022_08_06_122610_create_model_upload_kontens_table', 2),
(64, '2022_08_19_011958_add_column_otp_to_tb_pasien_table', 3),
(65, '2023_02_25_200016_create_model_website_settings_table', 4);

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
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\ModelPasien', 1, 'authToken', 'fecb87635004fb2d4f773192a1454cd9b0a25384d2601da568f930bc0278a360', '[\"*\"]', '2022-07-17 16:56:55', '2022-07-17 16:07:46', '2022-07-17 16:56:55'),
(2, 'App\\Models\\User', 3, 'authToken', '4a5e187a13e24313cffb3c16e096e73bc2a87613d24bac7f55b32ec500d186e6', '[\"*\"]', '2022-07-17 17:33:52', '2022-07-17 17:30:05', '2022-07-17 17:33:52'),
(3, 'App\\Models\\ModelPasien', 1, 'authToken', '9804b0ebcd6fa88d1ec76c1a54a3bf140ef99002e20ad9cc0a7e5dc8ad356d40', '[\"*\"]', '2022-07-17 18:21:36', '2022-07-17 18:19:41', '2022-07-17 18:21:36'),
(4, 'App\\Models\\ModelPasien', 2, 'authToken', 'b88beb8ea2698cdda88e3be887926908040fcbd2c3930740c9f4729d4570f2d6', '[\"*\"]', '2022-07-17 18:25:29', '2022-07-17 18:21:49', '2022-07-17 18:25:29'),
(5, 'App\\Models\\ModelPasien', 2, 'authToken', 'f2697134d7cd34bfb41424ddcc88c9ac0b60356cffdfd90316d24d311caee6c3', '[\"*\"]', '2022-07-17 18:54:14', '2022-07-17 18:27:52', '2022-07-17 18:54:14'),
(6, 'App\\Models\\User', 3, 'authToken', 'efb5766ff1bd9bfa4075f49276685101282424b7037798f0fb3104c96878b508', '[\"*\"]', NULL, '2022-07-17 18:59:02', '2022-07-17 18:59:02'),
(7, 'App\\Models\\ModelPasien', 1, 'authToken', '1f48ce47cac23c2d9a8141d58471634cdcf0f0639a1a6129202adeca82748e3c', '[\"*\"]', '2022-07-17 23:18:34', '2022-07-17 22:20:56', '2022-07-17 23:18:34'),
(8, 'App\\Models\\ModelPasien', 2, 'authToken', '133374396e5d931ab5e676a0f6391e3cbef99848b48fd63007dd7b78aa20d4fc', '[\"*\"]', '2022-07-18 06:48:09', '2022-07-18 06:48:06', '2022-07-18 06:48:09'),
(9, 'App\\Models\\ModelPasien', 2, 'authToken', '0498eb7bc170ee30209d39ea5c750652f51345285f964a7c724c55b7b076d49f', '[\"*\"]', '2022-07-18 07:21:15', '2022-07-18 07:19:36', '2022-07-18 07:21:15'),
(10, 'App\\Models\\ModelPasien', 2, 'authToken', 'f191e791408e288d47ba4c6ca036428d104d0e1f6743d4900e58c841094ed9c1', '[\"*\"]', '2022-07-18 07:32:44', '2022-07-18 07:31:16', '2022-07-18 07:32:44'),
(11, 'App\\Models\\ModelPasien', 2, 'authToken', 'f0511b213e9b2a75a3824fc570e54a79153a05cc5d67865887afc7b597473599', '[\"*\"]', '2022-07-18 07:38:57', '2022-07-18 07:38:52', '2022-07-18 07:38:57'),
(12, 'App\\Models\\ModelPasien', 2, 'authToken', 'ca867b6d0c08c68a945893067781ea6461c8e70c35b16316cf9a8890a8718124', '[\"*\"]', '2022-07-18 07:45:58', '2022-07-18 07:45:55', '2022-07-18 07:45:58'),
(13, 'App\\Models\\ModelPasien', 2, 'authToken', '72795104a3d5d1c677a64f7ccb5bb4eb861cb48f25dbea2a32dc4bdf58ee7202', '[\"*\"]', '2022-07-18 07:53:20', '2022-07-18 07:53:06', '2022-07-18 07:53:20'),
(14, 'App\\Models\\ModelPasien', 2, 'authToken', '83af03d2511198d6dc9e4ec1121c62b843e92dedd54d89c2ebae5bd38b28e249', '[\"*\"]', '2022-07-18 07:58:08', '2022-07-18 07:58:05', '2022-07-18 07:58:08'),
(15, 'App\\Models\\ModelPasien', 2, 'authToken', 'b9fd444b771e5f087939ff8a47ef401efcfa836abd69e00bcdf9e4495c9f170a', '[\"*\"]', '2022-07-18 15:49:28', '2022-07-18 15:49:23', '2022-07-18 15:49:28'),
(16, 'App\\Models\\ModelPasien', 2, 'authToken', '4de0d6b6df912683307e915ead021661cb80f5b307c725b39b1bcc2ef3479e82', '[\"*\"]', '2022-07-18 16:01:09', '2022-07-18 16:01:07', '2022-07-18 16:01:09'),
(17, 'App\\Models\\ModelPasien', 2, 'authToken', '6dae4665c3424f69c12f76e25e0243888461b3897628a215fa6ac3006d3d7b3f', '[\"*\"]', '2022-07-18 16:12:09', '2022-07-18 16:10:09', '2022-07-18 16:12:09'),
(18, 'App\\Models\\ModelPasien', 2, 'authToken', 'fb797945239d11a14e843c7756bdcfe8dab7bba764ab9c21c6167d2573a077f8', '[\"*\"]', '2022-07-18 16:43:48', '2022-07-18 16:43:45', '2022-07-18 16:43:48'),
(19, 'App\\Models\\ModelPasien', 2, 'authToken', 'a5d71910863f37d178ecf6d4e0891d74b29dea7ed7756ac5ab9a9eaee1ea141b', '[\"*\"]', '2022-07-18 19:47:34', '2022-07-18 19:45:03', '2022-07-18 19:47:34'),
(20, 'App\\Models\\ModelPasien', 2, 'authToken', '0afb504da768a1e6730a12f8e96089ea53950fc856036baaec63b4c1cac5fe81', '[\"*\"]', '2022-07-18 20:24:05', '2022-07-18 19:50:11', '2022-07-18 20:24:05'),
(21, 'App\\Models\\ModelPasien', 2, 'authToken', 'cd1e574391e5fcde36dfd11845d8fa85e1d502e958c7cd7d2937633ab7f5785b', '[\"*\"]', '2022-07-18 20:27:32', '2022-07-18 20:24:31', '2022-07-18 20:27:32'),
(22, 'App\\Models\\ModelPasien', 2, 'authToken', 'ded5c1e4945d1c97174953c8ef3f2cf558cc65d15e7b87e5f968c2174b95b5a3', '[\"*\"]', '2022-07-18 20:29:21', '2022-07-18 20:27:47', '2022-07-18 20:29:21'),
(23, 'App\\Models\\ModelPasien', 2, 'authToken', '0a65cfb79025b101cdfbf60ec8b93b5b2e4a6799296bd1f7d0a68ebb248cc9a4', '[\"*\"]', '2022-07-18 20:31:23', '2022-07-18 20:31:21', '2022-07-18 20:31:23'),
(24, 'App\\Models\\ModelPasien', 2, 'authToken', 'bc884dd0e9125ee82abfcd28de6dd473c92db1e881648aa28460a080ed932d91', '[\"*\"]', '2022-07-18 20:35:07', '2022-07-18 20:31:58', '2022-07-18 20:35:07'),
(25, 'App\\Models\\ModelPasien', 2, 'authToken', '0562c3b9ee82a3cd1feedce60d6710cefbb8359a5a9895ae10e9d3bd0e271e52', '[\"*\"]', '2022-07-18 20:38:17', '2022-07-18 20:35:32', '2022-07-18 20:38:17'),
(26, 'App\\Models\\ModelPasien', 2, 'authToken', '6eb2dcc322c062860fd44427e813976ee08c656f483b9348a7ca5d630f0a76e3', '[\"*\"]', '2022-07-18 20:41:35', '2022-07-18 20:38:53', '2022-07-18 20:41:35'),
(27, 'App\\Models\\ModelPasien', 2, 'authToken', '5003921fec8f144d5e10bba92d79e05960fbaa1e3f4f72cfc208d3eabc0492f7', '[\"*\"]', '2022-07-18 20:43:26', '2022-07-18 20:41:50', '2022-07-18 20:43:26'),
(28, 'App\\Models\\ModelPasien', 2, 'authToken', '5be255539b19ca1b070bc3da00e932e2ef8037af5591713b76e6903a1e0f3b2c', '[\"*\"]', '2022-07-18 20:47:32', '2022-07-18 20:44:49', '2022-07-18 20:47:32'),
(29, 'App\\Models\\ModelPasien', 2, 'authToken', '2fe370de329db9dc8748e4d7f52a16c4fd2c76f88af0fb364db0a6b389e6e5ab', '[\"*\"]', '2022-07-18 20:51:33', '2022-07-18 20:48:04', '2022-07-18 20:51:33'),
(30, 'App\\Models\\ModelPasien', 2, 'authToken', 'e589e53bdf44d39f337b024741db1a3d94ad999f7b4f11c356af2a66ee7930ad', '[\"*\"]', '2022-07-18 20:55:35', '2022-07-18 20:52:49', '2022-07-18 20:55:35'),
(31, 'App\\Models\\ModelPasien', 2, 'authToken', '62ed881207ce3254773b84ac1b7bd96b1ad95ddbe4e4c2b4968813091caed825', '[\"*\"]', '2022-07-18 20:59:15', '2022-07-18 20:56:37', '2022-07-18 20:59:15'),
(32, 'App\\Models\\ModelPasien', 2, 'authToken', 'bc1aea4e7026eb81142e1cb2a59bb486fed68611823274ea10f4c22a909b140b', '[\"*\"]', '2022-07-18 21:01:11', '2022-07-18 20:59:29', '2022-07-18 21:01:11'),
(33, 'App\\Models\\ModelPasien', 2, 'authToken', '93bcf43db40b45ac9ce5517161d0eb989dac88bc2ef729b5b3af701280b10b7c', '[\"*\"]', '2022-07-18 21:04:00', '2022-07-18 21:02:06', '2022-07-18 21:04:00'),
(34, 'App\\Models\\ModelPasien', 2, 'authToken', '0a65e21f1bdc8dd569a516217ec8dcbfc8ac34d2c9836551b4dbea1926bf8e87', '[\"*\"]', '2022-07-18 21:06:58', '2022-07-18 21:05:20', '2022-07-18 21:06:58'),
(35, 'App\\Models\\ModelPasien', 2, 'authToken', '5d61cf0e6d5666898f6411ce8ed6d47e96072062acbab449b7bab4c59606a73b', '[\"*\"]', '2022-07-18 21:10:00', '2022-07-18 21:08:07', '2022-07-18 21:10:00'),
(36, 'App\\Models\\ModelPasien', 2, 'authToken', 'e379d86a1191227e27e2ce376af12a1196670dbb16aab1f458ea220ea8eae761', '[\"*\"]', '2022-07-18 21:13:33', '2022-07-18 21:11:36', '2022-07-18 21:13:33'),
(37, 'App\\Models\\ModelPasien', 2, 'authToken', 'a268e0e713517228c45faea054c74f6d7d5f48113fe729691ed0b053314d17e1', '[\"*\"]', '2022-07-18 21:16:57', '2022-07-18 21:14:46', '2022-07-18 21:16:57'),
(38, 'App\\Models\\ModelPasien', 2, 'authToken', 'c5e8b995aab4893baeb8694fbee40bf923a3684b3a1aecaffb40f7988ec9f4e3', '[\"*\"]', '2022-07-18 21:18:07', '2022-07-18 21:18:04', '2022-07-18 21:18:07'),
(39, 'App\\Models\\ModelPasien', 2, 'authToken', 'a117f2da3e2d584bf382aba2592e3bd77e7be16c473dbe84e289edae56874f67', '[\"*\"]', '2022-07-18 21:20:22', '2022-07-18 21:18:23', '2022-07-18 21:20:22'),
(40, 'App\\Models\\ModelPasien', 2, 'authToken', '5939cb30185914f0089d8c91c6d3837b78b448138d0a1e48c2980011c38bfc29', '[\"*\"]', '2022-07-18 21:25:44', '2022-07-18 21:21:53', '2022-07-18 21:25:44'),
(41, 'App\\Models\\ModelPasien', 2, 'authToken', '6189c6ea30d505a9da6b5d45c8c2b71ae6fe89dfc5e886dc9fa26897f3437352', '[\"*\"]', '2022-07-18 21:25:57', '2022-07-18 21:25:56', '2022-07-18 21:25:57'),
(42, 'App\\Models\\ModelPasien', 2, 'authToken', '31338cf5ea9d25c46ffb2730e00114cc0674774c77777d8d1ca1d6b4f19dbb03', '[\"*\"]', '2022-07-18 21:25:58', '2022-07-18 21:25:57', '2022-07-18 21:25:58'),
(43, 'App\\Models\\ModelPasien', 2, 'authToken', '51af2fe66a657fac4519576d71a4bef1aab316f9c51c878ad43e701b7d1dc5a0', '[\"*\"]', '2022-07-18 21:30:41', '2022-07-18 21:26:12', '2022-07-18 21:30:41'),
(44, 'App\\Models\\ModelPasien', 2, 'authToken', '3cb4ba1a32dc40d75081fad18c7ab9ce0b8c027bbd770a5bfec0d798a8f91196', '[\"*\"]', '2022-07-18 21:33:56', '2022-07-18 21:30:55', '2022-07-18 21:33:56'),
(45, 'App\\Models\\ModelPasien', 2, 'authToken', 'f6fa4462416a6b73da482b764311f3037b3ecd2a07bd2f426e1ad975f6778312', '[\"*\"]', '2022-07-18 21:36:10', '2022-07-18 21:34:20', '2022-07-18 21:36:10'),
(46, 'App\\Models\\ModelPasien', 2, 'authToken', 'ab51d2807cef78d5f4319f4345713ee5990b7733f13b8fe391587c6db482800c', '[\"*\"]', '2022-07-18 21:39:22', '2022-07-18 21:37:35', '2022-07-18 21:39:22'),
(47, 'App\\Models\\ModelPasien', 2, 'authToken', '753d256a00f056e9211ab5610061e0558d1ea0cc14f402d84aab56756282a026', '[\"*\"]', '2022-07-18 21:44:49', '2022-07-18 21:41:36', '2022-07-18 21:44:49'),
(48, 'App\\Models\\ModelPasien', 2, 'authToken', 'a0acb999c588a07ccaccf1abd04fbaf047e8f97325202bba11a6b6e2e898ccf5', '[\"*\"]', '2022-07-18 21:47:11', '2022-07-18 21:45:04', '2022-07-18 21:47:11'),
(49, 'App\\Models\\ModelPasien', 2, 'authToken', '01051d52bc76393e56639def860c4c7b3a9b8afb49c3a8faf153f58f53b517a4', '[\"*\"]', '2022-07-18 21:51:39', '2022-07-18 21:49:39', '2022-07-18 21:51:39'),
(50, 'App\\Models\\ModelPasien', 2, 'authToken', 'e3745e0b81f88ea8dfe3cc1fbd87491312f3482de763835ae0014bdc28fc6ba1', '[\"*\"]', '2022-07-18 21:54:55', '2022-07-18 21:52:49', '2022-07-18 21:54:55'),
(51, 'App\\Models\\ModelPasien', 2, 'authToken', 'e6ba4af64e758f6711ed569be05551c0170c9f2b49aac6684c63fef200f5908a', '[\"*\"]', '2022-07-18 21:58:43', '2022-07-18 21:56:30', '2022-07-18 21:58:43'),
(52, 'App\\Models\\ModelPasien', 2, 'authToken', '7a2aecc7062899a93d34335da03581d0028ca0876ff9db449f8e865d33b9b27c', '[\"*\"]', '2022-07-18 22:07:53', '2022-07-18 22:01:20', '2022-07-18 22:07:53'),
(53, 'App\\Models\\ModelPasien', 2, 'authToken', 'a92b990a7e0830fd5ca594e9eca6fb92240bef351767dfde9185f9d08640b111', '[\"*\"]', '2022-07-18 22:10:24', '2022-07-18 22:08:41', '2022-07-18 22:10:24'),
(54, 'App\\Models\\ModelPasien', 2, 'authToken', '5699990061fa74741f084329cadb6df1211f9fac22b2e510420d8ab2bbe45429', '[\"*\"]', '2022-07-18 22:15:17', '2022-07-18 22:12:57', '2022-07-18 22:15:17'),
(55, 'App\\Models\\ModelPasien', 2, 'authToken', '6cd55beb68307062adbb9bb095d0ed7f3779fe8f57266009b086af667e3eb359', '[\"*\"]', '2022-07-18 22:23:00', '2022-07-18 22:16:46', '2022-07-18 22:23:00'),
(56, 'App\\Models\\ModelPasien', 1, 'authToken', '7f6ab57a0c4a693ff5e07ea632aa9d2e963a03be4e7fcb72eda1d8d2a9b35380', '[\"*\"]', '2022-07-21 12:03:15', '2022-07-21 11:55:44', '2022-07-21 12:03:15'),
(57, 'App\\Models\\ModelPasien', 1, 'authToken', '7440c984411cf4e4095fc6d7e433b0a44a4081293a81e33d62867ae822d08ed1', '[\"*\"]', '2022-07-21 13:47:36', '2022-07-21 13:47:10', '2022-07-21 13:47:36'),
(58, 'App\\Models\\ModelPasien', 3, 'authToken', 'e5d69fb36ab56cc9d12b526adbe845fed8deab2b00534daa9a91d885cf6b669c', '[\"*\"]', '2022-07-21 14:38:39', '2022-07-21 14:37:28', '2022-07-21 14:38:39'),
(59, 'App\\Models\\ModelPasien', 3, 'authToken', 'c12bb87f9cae478ad64073f8f57dfa4c6690832d9f6d40afa9722b96e8df0a8c', '[\"*\"]', '2022-07-21 14:39:19', '2022-07-21 14:38:49', '2022-07-21 14:39:19'),
(60, 'App\\Models\\ModelPasien', 3, 'authToken', '3496a42198342e8947c72b3e212091c8e61f5383861ec09a4d7fea55431c4cd6', '[\"*\"]', '2022-07-21 14:45:44', '2022-07-21 14:40:15', '2022-07-21 14:45:44'),
(61, 'App\\Models\\ModelPasien', 4, 'authToken', 'e24801deda4e825ab3e5d1624bbe2431a94c9baf0c04a6a7b78a17f611f1468c', '[\"*\"]', '2022-08-17 13:16:17', '2022-07-27 14:50:10', '2022-08-17 13:16:17'),
(62, 'App\\Models\\User', 3, 'authToken', 'f8c7fbe79d0e1bd487f3d9186e2910eb9c5e8f1fa416fe0a5d0a0f7a36768f23', '[\"*\"]', NULL, '2022-08-04 17:29:23', '2022-08-04 17:29:23'),
(63, 'App\\Models\\ModelPasien', 5, 'authToken', 'c4cae6cfa095662d3fa1fcf9fcec205b934f664a8d9c4773bf8a446dfc034959', '[\"*\"]', '2022-08-07 21:36:20', '2022-08-07 21:35:19', '2022-08-07 21:36:20'),
(64, 'App\\Models\\User', 3, 'authToken', '15ee23c9954cb6a6d23c0d1f3ada019be7938d02e0f1ad12aa93c27f62e74802', '[\"*\"]', NULL, '2022-08-07 21:38:55', '2022-08-07 21:38:55'),
(65, 'App\\Models\\User', 3, 'authToken', '305b4af7ee544dd67e0d2d2ce8e6fa8b12492ba63666f00caabd03494ceca238', '[\"*\"]', NULL, '2022-08-07 21:42:52', '2022-08-07 21:42:52'),
(66, 'App\\Models\\User', 3, 'authToken', '50bb891e73cf5f74152c3dce3b3458dce056be740030968b5208b66a324f78ea', '[\"*\"]', '2022-08-07 22:03:43', '2022-08-07 21:47:15', '2022-08-07 22:03:43'),
(67, 'App\\Models\\User', 3, 'authToken', 'a3f71ab8b57fd7e7ec41c28607633d86331323d8ddc4f45b26c02b9441a10e86', '[\"*\"]', NULL, '2022-08-07 22:04:14', '2022-08-07 22:04:14'),
(68, 'App\\Models\\ModelPasien', 5, 'authToken', 'c37d971c4e71a8fb1546cc587b9dc62563d463f3d6960b980432398006507b20', '[\"*\"]', '2022-08-08 16:27:25', '2022-08-08 16:20:52', '2022-08-08 16:27:25'),
(69, 'App\\Models\\User', 3, 'authToken', 'ae8948b93f60d1fb2f2f0166d3e580c16563dd5db4040ac8732cd3657eeb3637', '[\"*\"]', NULL, '2022-08-08 16:30:06', '2022-08-08 16:30:06'),
(70, 'App\\Models\\ModelPasien', 5, 'authToken', '42fef1473cb723477e3ecb70e6bb3d9892dbd838d9e01243cbc68ab105d4e437', '[\"*\"]', '2022-08-08 20:22:33', '2022-08-08 16:37:13', '2022-08-08 20:22:33'),
(71, 'App\\Models\\ModelPasien', 5, 'authToken', '78bc7b83ec47a39e680b0ca8cf58efdf8a9c54385794352a925ea636e1168ed5', '[\"*\"]', '2022-08-08 16:40:29', '2022-08-08 16:39:46', '2022-08-08 16:40:29'),
(72, 'App\\Models\\ModelPasien', 5, 'authToken', '690cc210afc41e975f8279be98c0e4b040bbc65e313a42268309922c811c62b0', '[\"*\"]', '2022-08-08 20:29:09', '2022-08-08 20:28:39', '2022-08-08 20:29:09'),
(73, 'App\\Models\\ModelPasien', 5, 'authToken', '1cac407b79ee7baf45a66ae7a896831f80d689980b90f900106c4692cb087c02', '[\"*\"]', '2022-08-08 21:39:49', '2022-08-08 21:39:39', '2022-08-08 21:39:49'),
(74, 'App\\Models\\ModelPasien', 5, 'authToken', '0684f11163affea89a3a7416ca01a5b6068f26dc342ca142e7f24480beb63cbd', '[\"*\"]', '2022-08-08 21:56:08', '2022-08-08 21:48:36', '2022-08-08 21:56:08'),
(75, 'App\\Models\\ModelPasien', 5, 'authToken', '1c0ab9be105b924c86b3e8f58c8632ad4137ad66e40ce4c44c7706c4bf1e0ae4', '[\"*\"]', '2022-08-09 00:45:11', '2022-08-09 00:44:58', '2022-08-09 00:45:11'),
(76, 'App\\Models\\User', 3, 'authToken', '02e06b444b547549a0e6dccfffa0dba3016ef764004035803abde88468ff90b5', '[\"*\"]', NULL, '2022-08-09 00:48:12', '2022-08-09 00:48:12'),
(77, 'App\\Models\\User', 3, 'authToken', '379d522d2c729f1338fdf5629b68b7d925ca1a590126366568066a78569c6dac', '[\"*\"]', NULL, '2022-08-09 01:11:18', '2022-08-09 01:11:18'),
(78, 'App\\Models\\ModelPasien', 5, 'authToken', 'fe63bb1826309cc2dc4241faeff77a6d98f16f0b91c3e974bbcc4402ef84baca', '[\"*\"]', '2022-08-09 01:18:15', '2022-08-09 01:17:43', '2022-08-09 01:18:15'),
(79, 'App\\Models\\ModelPasien', 6, 'authToken', '31cdaf5bd1b9a0127fe7b86a5dfb554c137026de1920fe0baef436623cfe5585', '[\"*\"]', '2022-08-09 01:20:17', '2022-08-09 01:19:53', '2022-08-09 01:20:17'),
(80, 'App\\Models\\ModelPasien', 5, 'authToken', 'da3eab163777fb8a7f9a4cf7c3384479526827a00c335d63681fce7adab4f7df', '[\"*\"]', '2022-08-09 01:38:37', '2022-08-09 01:38:27', '2022-08-09 01:38:37'),
(81, 'App\\Models\\ModelPasien', 5, 'authToken', '1e4c185600b366df1e422a5beaaf8a79b575d0099d90bba77090a0e8e68f3c7e', '[\"*\"]', '2022-08-09 04:14:51', '2022-08-09 04:03:36', '2022-08-09 04:14:51'),
(82, 'App\\Models\\ModelPasien', 6, 'authToken', 'c7781af34445b2f9ae988b79358cccf4beafbe71a17ffaeb3da69b0320c1082b', '[\"*\"]', '2022-08-15 14:50:02', '2022-08-09 04:15:08', '2022-08-15 14:50:02'),
(83, 'App\\Models\\ModelPasien', 5, 'authToken', '3436e077fe3841bbca4e659bc62b612ed5452721e90b794430c9e3aabc700c63', '[\"*\"]', '2022-08-15 14:54:31', '2022-08-15 14:54:10', '2022-08-15 14:54:31'),
(84, 'App\\Models\\ModelPasien', 5, 'authToken', '1aff0ec6c92aa20581743a0869b07852b36aa98b58971a5ff15da2865b5159e1', '[\"*\"]', '2022-08-15 14:56:38', '2022-08-15 14:56:17', '2022-08-15 14:56:38'),
(85, 'App\\Models\\ModelPasien', 6, 'authToken', '0e32cae3e2c84095169db1ee8be4cd82d413270f7a10f861d730ebfb0862231f', '[\"*\"]', '2022-08-15 15:02:31', '2022-08-15 14:56:54', '2022-08-15 15:02:31'),
(86, 'App\\Models\\ModelPasien', 6, 'authToken', 'a7b1bc4247e1d806f4edba1c4ef4f2389d991e9d7712068a25bc4e5becad8ed4', '[\"*\"]', '2022-08-15 15:12:10', '2022-08-15 15:12:04', '2022-08-15 15:12:10'),
(87, 'App\\Models\\ModelPasien', 5, 'authToken', 'ce423b3394117774deb0ca697457bc9628b85cc5a94b424b0c696976e7de481c', '[\"*\"]', '2022-08-15 15:15:15', '2022-08-15 15:12:33', '2022-08-15 15:15:15'),
(88, 'App\\Models\\ModelPasien', 5, 'authToken', '6c07798c819c9d251090971544e5a91ea8ed7c0af4b803b293d35cfc089f5198', '[\"*\"]', '2022-08-15 19:05:44', '2022-08-15 18:43:44', '2022-08-15 19:05:44'),
(89, 'App\\Models\\ModelPasien', 5, 'authToken', '8cd84c36063cb142b419c83e558cb6b79cda26888d19deee17d75170ab226abb', '[\"*\"]', '2022-08-15 19:08:59', '2022-08-15 19:06:19', '2022-08-15 19:08:59'),
(90, 'App\\Models\\ModelPasien', 5, 'authToken', '53b2f8b0863ca4319efb9b1d26068e7b48e158101aca1bf2c36a048bb6b2ffb6', '[\"*\"]', '2022-08-15 19:15:56', '2022-08-15 19:09:10', '2022-08-15 19:15:56'),
(91, 'App\\Models\\ModelPasien', 5, 'authToken', '06b7d8aad7566f800ffa9f4c56c3a098ddf34640bd2afc93a624a5024a62db6a', '[\"*\"]', '2022-08-15 19:54:15', '2022-08-15 19:16:08', '2022-08-15 19:54:15'),
(92, 'App\\Models\\ModelPasien', 5, 'authToken', 'b6cb3604270bc57e58e6c1a92351f296980d9ed2e9ff4ab3f116df1b08c3441b', '[\"*\"]', '2022-08-16 13:51:13', '2022-08-15 19:55:37', '2022-08-16 13:51:13'),
(93, 'App\\Models\\ModelPasien', 7, 'authToken', '444af7fb8ef01661d20773c666bd38a9504ca091e1661c6bbb9736d2308f4e56', '[\"*\"]', NULL, '2022-08-18 20:49:39', '2022-08-18 20:49:39'),
(94, 'App\\Models\\ModelPasien', 8, 'authToken', 'b299e56e40124522b63d1bce41d70e41acd283f31717d2d5c8d3e54950870822', '[\"*\"]', NULL, '2022-08-18 20:50:44', '2022-08-18 20:50:44'),
(95, 'App\\Models\\ModelPasien', 9, 'authToken', '684cf64df5e52b39bc076038154881b4380b6f28d05d84c8d9b43e85011f836b', '[\"*\"]', NULL, '2022-08-18 20:57:38', '2022-08-18 20:57:38'),
(96, 'App\\Models\\ModelPasien', 10, 'authToken', '5549f4483ff2b6c7a06b6e843ed9e38ab25935f6d77b0facc56cdefa0c639034', '[\"*\"]', NULL, '2022-08-18 21:13:20', '2022-08-18 21:13:20'),
(97, 'App\\Models\\ModelPasien', 11, 'authToken', '6bdf009e01d68d69752ffe3285b4bc08d63410091110036362666236f01e88eb', '[\"*\"]', NULL, '2022-08-18 21:17:51', '2022-08-18 21:17:51'),
(98, 'App\\Models\\ModelPasien', 12, 'authToken', '3e4d023e31d342ac4659438a7e5c9f64e77ed6316b94e30447c8fb0226860b09', '[\"*\"]', NULL, '2022-08-18 21:21:12', '2022-08-18 21:21:12'),
(99, 'App\\Models\\ModelPasien', 13, 'authToken', '9b652efa24d6fd84c38049d8f91e069c670ebc66105e6e79cd6e1bdd85a1c7bf', '[\"*\"]', NULL, '2022-08-18 21:48:57', '2022-08-18 21:48:57'),
(100, 'App\\Models\\ModelPasien', 14, 'authToken', '2fef9fd11cd75742b8fc9b66aa45d5797260ec15e16ef659237aa98bd15d884d', '[\"*\"]', NULL, '2022-08-18 22:01:35', '2022-08-18 22:01:35'),
(101, 'App\\Models\\ModelPasien', 15, 'authToken', 'b793fbc1bc90129ac6c38a984e83d96ef17312c69ccad70674eed8092b740dee', '[\"*\"]', '2022-08-18 23:19:42', '2022-08-18 22:46:50', '2022-08-18 23:19:42'),
(102, 'App\\Models\\ModelPasien', 16, 'authToken', 'bf04dd56055026574e8aa03394aa48987f40d22ad601313d62eff90a4cf09ed3', '[\"*\"]', '2022-08-18 23:37:25', '2022-08-18 23:36:09', '2022-08-18 23:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1Bo1Q6T5Ccw19sTIxZ9tcNifJkeGbCZ9ilEMp3Vr', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHVRNXV6Z0o3RXlDZUNpY1JEV2xzYTZYTmk2M2xNa21HR2o5ZVJzbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692146350),
('2K2eicOYoeS3L7TBz22uT3qx0f1WUaGGnL0u75FL', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0VsWVB0N2Y0OG9RREtjRDRiaDlqY1Zjdkh4VlNFdXZjeFhpaks4cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692193173),
('2P3HKZTowDSes2QHaF8nyxbEmRrZxawvWYCrp4p0', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUko2QktWRnNhR1FvckptcTZLazN0OUxJRHVKODNEak9QTTNadHFINyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692155414),
('54R8K1CYmjKZ944vZBK4npsEVJ1VLy0RTIIvQfZp', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGRMOFJxMG9scVRuNzUyWGlrSlh4N1hkZU9kemxOeGZQZEMxdUc5NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692189565),
('5aTw2jxNXXJTrtwvRbJsPsVYAXLx37Vxv2pPcywb', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHJQeFVBeG9uTnhBOEpzZkhvajRvb2M1NzBMZ0NKY2NXQmM5YzhqbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692175204),
('72tN5xlwUoe6s2qgEEdVmPnavDmXijGqwxoYkugl', NULL, '136.243.155.105', 'serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTVucG9jaGJIMzJxWUQweTRRTnU1bVRUUVhERW41RlNYNU1CUjhVSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692141165),
('7lnpGXfDPseT3q5yEhHMf77y4CWjcMIExYlGx3Vy', NULL, '36.74.78.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYml2QXlUZHBXNmRnVGNDMnhlUm5HdmVVOVpaVjF2ek9Kb241Z2tTRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LnB1c2tlc2xpbmdnYXJqYXRpLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1692158774),
('8JyqsC26bot3h4tsF5Ewo90xzwAbXePatmL3O4F6', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkxlOXMwUnlOdzhvcGVRR2ZoME9JTmNDTkRUNURQQkZmZXFlNkx3RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692148121),
('9nFxGfbBcjR3dLdpkZfsKOIAQrNP4434AdDcvlsY', NULL, '17.241.219.157', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGdSQzhqT2k3OVpTeHBPa0NjTXRyMHdKY0NwcmI3RHd6SUZCS2JrMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LnB1c2tlc2xpbmdnYXJqYXRpLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1692173812),
('aIMxlTXUv0L0PUWr7wWHrm6mIOz2O1NjXFqwxS1I', NULL, '54.201.243.150', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2RrRDJZN2RuVXdzYkZsZXdTZkVlcFZnMDdJNkd0U0lvUHJNRVpQbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692141550),
('aPKcmx4qvuWtQ7Dyg7Tv6VwAvQOLtngSJNTuHWa9', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ25kTkhsRE13dTU2M0hUMnlFczhXSnRWYVpCcVZlVXlCaDlRM2xiTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692185989),
('aUAprdVyUX0rGXKR1PV2bwkatZwUhXxIm6euxb3m', NULL, '14.29.216.170', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUhhQ2Y2QnB5d0Y5dVhHSGZTREVPdWh4V0hzQ1NuSkRNV2N5bnlIZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692189860),
('bIFBIO8ZQInclxbAXiBP330BG4wDVkvY0BMkWTZG', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmdKdHBva2NkNXJDdVRxdWc4V1RQSzN2bExmekNIVk1TZGJPbjlJeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692139154),
('BRt5JhHZTidlmRGisyOBTF6lAHNUi7SxlFlhWlvB', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTljTGhhQXJ3ZFByR2hKWnNyTnFyNXBuZ0lVTm1QaFdHNEJadU92SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692164450),
('cK4tjJxvfcgvK9cwlr45nh0UCMHPAiH3IiXoJaC5', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia09leUZUaXE5ZGdpUDhBTDhMYUdHTlZKWDlVNEhTemw4SHdHRXZxRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692151769),
('cTT5WMnVoaUb1LGKRRrBjYbJeUbuR8JvcVZDNQC2', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR09ObEZ3a3NVQWJKOUFQOEU1T01sRFJHN2FsNDNTdmw5ZXlOTFJleSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692149986),
('cy80ZRN3pkAJIyLDNka5jbdrbfaa2YY1WNRfILp8', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjVCUDlzUmtaazVCS01OMUtqVkR2elZKQVdncU9CV3lqd1hQYTNBayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692198556),
('dBD7Kaow9SeqGJ2BFQcASvQxc2HmkfXhojtGOdSY', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk5DeXZycXFHYzRGeEp5aDlSQXI1V2lRNmI0RnUwQmVQejdPTE83QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692184187),
('DcTsQf1ZP905rKkLUi5fSiiJsaUxtnTrjMVXl8ot', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWRyeGtmcEVvc3ZSYW5pdEJhOWV5c2ZzZlZ4T1B5dzFjZzVOcVJKbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692157230),
('DJdcit73rLNgI9ybQLHC1r7NN38q2ytPiev4ZbYZ', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlg0RWpTcmJsalZCWnRlRTJOeGJaUkZiaWduMUFoZEZCTkZsMHZ5TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692191343),
('DmzNacy8s2GK4fMexxqjFARCmjuA1NSvkWS0DFKl', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGtoeGNFRjdmSlE5Z3p5VjN5TTdOT1NZaGltR1pXOG5RbEVpMXRzTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692162638),
('E9Fi9Bx4qDGY4EFxTlbwPRlrOjJMWTxsFVBguQst', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEViMlVOQ3lldWRLSzBqZDhRVTg0eWFIY3J4QnY0NkNqTE43bUJBVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692133763),
('eOJsBWDDQhoDFbQRQSquUQWT3sZn9uVq9ES3TuJo', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczZPQ1kxeWtVVEllUWhxdm82Z0g4d0ticGRjMDI5Z0JrOU1zTm95SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692169809),
('fF4qFbABfqqtTMZuxiDz4WlVszKmYBM7egRDUJ9A', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY25UV0V0TnRYM2pSeWplWDVCR1Y2QlpWQUJ0Q25tWWVjQnVCUTRWMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692166246),
('FM9Th1Q4cbSjMIqR0SlqA1ByGW4GgxYSm7VNeu9H', NULL, '54.36.149.83', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickpYUkltd1hpQmViVjVCUXFKN2dwR05sU2NwVkdWUFptYVExSXlUeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vcHVza2VzbGluZ2dhcmphdGkuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1692163573),
('Gnc8a4DwzZGQsObTciDJUGdDTyo8u3SvRTjrd0Lu', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRG01Ukdhbjd0UUxQWFh1eklPZmhhMGdPN2JPTVhDWTJCZkttWHpvZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692182367),
('Gq7XWzN82xcRGn08Sa3rjF6LjhovOmI5NPXRjAr2', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0ppTk16MXd3ZEZ0dTdjdnltNE45UFQ0RlUxS09CYmJOSjNPUnBhNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692200348),
('gWrg5bBBe2rzTAXJA6qt7hudMlGeFSklt5W9BFP1', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWZMS1RlSWc2QTBxMXpLalZhS0F6WkVmUXhRRTZZRGFLN1pzd0c3NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692137335),
('H1HyWUuwitZPNazsPMqlqBiC7HiiD0kZjcpNJu0n', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWxuR3FLWnRINm1UWW9jTUtEUUFuTHE2aVFvZExVYVJYdUk1VTRHVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692187787),
('h4fvKkbdwGMiKBQBXtitHyONkPeJuIjHaUSi4Joc', NULL, '146.190.143.86', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFBBMWU3aXFlR3dWTWpMcWVjUk5vTDNZdkdLWUdXMEdMYWpEbExROSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692176514),
('HowuWX6sYPK7qkWT8rZlFpHp5QFCs0NAmCVjRrWl', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ01WcHdPTjk3eXB0TUJyTG83aWtFbktEb1VkMUIzZUtCcXpLS3cxcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692194955),
('Hui5FUUAFRjv6u3Dj3ENCQkhXvMieGnN9PyihbN0', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTBSVnZUbzJ5ck9zbTRiSmRSc3dTNnVGSXRSWTh3TVkzajBZN0p1MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692196769),
('i5vLQa3hbQgVZKm9K8SvUZmFsMXX4eIA5o5lF2MN', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEVyTE45a1JYQ1hKZVpHUGx3eGMySnIzVDNBVWtsTWNDTkRXT3VyZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692135522),
('JHZVwSe6j0IOmB331zcphXGqBS25Ulc1NEwDbz1F', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTdDVFRyajFIQmt3WUN1dHpLcElrSlIzM2RUQjVMbXRwWXlDRVV3ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692159010),
('JWhi6vCLMHBFrCXGzlaKQkqUKVKxp9tcd9OGuyeI', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0h2QnpDMjJiWWZsSEFpb3Jqb1dWV0s0VTh5R2daVjZva1YxOEFFMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692153605),
('k1x1mdZysfdBjPKh2Pc9mEcgh1uQqygEnGPEsuuH', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZm5CU1ZYcXpFdzNlRmpoNzBGcEx1VUVscDRQMHNxQjRsUXA1WW5ldCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692171611),
('K7meZljWTosBFxh8Jlhq2JuvO5L7UApFDdVmJjAi', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2RWMWE2MzNWVG56Mm84ck1ENnJ5UjZoRGhjVGpnTFg0YTNaMmE5SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692160831),
('majQjN3gSm0rYeIrEiWs0I7ps8y8C1zLl4GSsxwc', NULL, '34.216.18.46', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibldOT1RGbUhiZHJabkdzUjJ2WUZJcUJUUWY0WUpITDNFUTZrcld4SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692141544),
('MBkerjlrcCoakZckpVgmoGx1BspyFLu4HDyk4txs', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmRQTTlzak1KVWx2ZlNacG5BaEtJT1czS1pXOUN5cUF6WmZRYklyOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692140936),
('NVVxfGWTcKukRmO27iPC5147TqGWvtnSSjFKZnjX', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEJPZmJqRXRBTWg0MlgyUUtYZGFHZVhLMGVnQzdTNmVpRHl4alBVWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692168028),
('o3EkD2SyNmVlAQ5vSMvmb41FmvNRd0fvhWHyUeSx', NULL, '146.190.143.86', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzcyeVdQdGFiVkRPZWdPUEttUGNwVWRIdmFwdlFEMFo4eGc0MmpSNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vcHVza2VzbGluZ2dhcmphdGkuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1692176515),
('OP0EGUkaVp0CmKU7oTZl3kTIBJnuQQVFAUCip47O', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXZlcXVxbXdHRHoxTThkQTR5UXdEOGdlaTgwbjJyS0hyaUo2TmhlUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692131920),
('PdVM6qbxC2F0qT8UYzi3WfuwQvrvjodLoHe6gWyi', NULL, '136.243.155.105', 'serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzBuc1N2SmZTRnZuU1E3SmVTSW04YjN1YjNXSFk5eUpDaW9vV2M5VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692137245),
('QAlu8BA8CK4IjxaSYEGZIDasfgqhEox1HrZC0FzT', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEtHcFB0OWpZOVVHbFFsT210RW5QZTZkaE50QUtjM2h3cTk1OUplMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692144532),
('QhhaY4YGut86iYMmrfejiwoOl6CXfsUJM5c3Qnmv', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGo5NXVRS2hwUVlBUjZiV0FrbmNIREJaMHh6QXRvYnBIdXNhYm96NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692203959),
('rjKbXOKNeoxdEpGlOA9DWgvkhVUsYFZgdDhvocLF', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFhYWHlWQUVJQlNvMzBkN2RWZktUa01UVjg0VW1ITVVTbnhHTW5zZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692173393),
('S2kQW0mKINtynDz7SYEP3ZNq7JwDyKwRWJ6dj949', NULL, '54.172.141.161', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0d3YUlTeDh4WlNHSTRISXNiTHh3Q0syTldhc2JqRzBpZEFLWWZIRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692169681),
('t4TZst1R3b8LrlYoPZBmGUOMz8LzrOuRHh4AO7ct', NULL, '123.60.146.214', 'Mozilla/5.0 (Windows NT 9.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3411.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDZqbWhFWVl5QUtHVlBWbGtpZ1ZBalNuTTdCa0lTSFZhaTc4YW5mSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly93d3cucHVza2VzbGluZ2dhcmphdGkuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1692156553),
('tgiywh4DRVYC3OBnhwh7DooG9bES1YuwM33kSIW8', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkVVU213OUJyaWFiMlJURjlyaXhWbTdQRExRTDNyWEZFOXd6aTdDQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692202151),
('To6ksl2p7G87kM7eM8QKzfViZoU76MGypKJqpLiw', NULL, '172.172.97.55', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWtwRWJLY2loQ1lqTDExQnJ2Nml4QzNwbmR2b2FOWHJPQ0llREVpYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692200990),
('ttwhZs1AVqGuTFrizoA0sXXIy6meqVY40WC5Tlrl', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1FnYlRlV3BLVnpNZWNKSnBhdmFjZDd0dWNUOUt5QjhTNW8wS0YzNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692142723),
('xip9rE8rB4Q3P0q6KczckctCDicUDxiXusm7nkNw', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzlvWDdmUmFYT09OeTdTeVR2OGJlajlzMnZOM0NYR3MydnhoU3NVTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692178782),
('Z3PW9ORcMEIv2kN8Hcxf26TjkfmFTNbom2S0qGwr', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2pIdDhpNVRKUHVta0x4QVY5UXVROThZRG1RVkRJeHNpT2VJa0JtNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692177009),
('Z6ZG4uQapZMMq6FLnFyItC7nzMyAhcFYErxGJ7PP', NULL, '136.243.155.105', 'serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2twcXo1Y05lUWlrakJwR2lTOGFTdFdZYWxITlZtVGQwY2ZIRkVHayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20vZm9yZ290LXBhc3N3b3JkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1692139210),
('z7pI9FPIcBMqzfH6V6UEpVNViOxXivDg6Z2UDusn', NULL, '153.92.13.95', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0lLYUxuMkZzSnRBdHVtMkxsUjBrMGhybEs0MmxnclpmQ0VOU1Q5NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9wdXNrZXNsaW5nZ2FyamF0aS5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1692180590);

-- --------------------------------------------------------

--
-- Table structure for table `tb_antrian`
--

CREATE TABLE `tb_antrian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_poli` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `no_antrian` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_antrian`
--

INSERT INTO `tb_antrian` (`id`, `id_poli`, `status`, `no_antrian`, `created_at`, `updated_at`) VALUES
(2, 2, 'active', 0, '2022-07-17 15:49:21', '2022-07-25 10:21:35'),
(3, 3, 'active', 0, '2022-08-09 04:06:58', '2022-08-09 04:08:14'),
(4, 4, 'active', 0, '2023-02-03 04:17:14', '2023-02-03 04:43:20'),
(5, 5, 'non-active', 0, '2023-03-16 06:05:17', '2023-03-16 06:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_pasien`
--

CREATE TABLE `tb_detail_pasien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `berat_badan` varchar(255) DEFAULT NULL,
  `tinggi_badan` varchar(255) DEFAULT NULL,
  `gol_darah` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_dokter` varchar(255) DEFAULT NULL,
  `nama_dokter` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `spesialis` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id`, `kode_dokter`, `nama_dokter`, `jenis_kelamin`, `spesialis`, `tanggal_lahir`, `created_at`, `updated_at`, `device_token`, `id_user`) VALUES
(1, 'DOKTER001', 'dr Yesicca Juliane Chandra', 'Perempuan', 'Dokter Umum', 'Cirebon, 24 Juli 1991', NULL, NULL, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil_pemeriksaan`
--

CREATE TABLE `tb_hasil_pemeriksaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pemeriksaan` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `is_rujukan` tinyint(1) DEFAULT NULL,
  `rujukan` longtext DEFAULT NULL,
  `resep_obat` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keluhan_pasien` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_hasil_pemeriksaan`
--

INSERT INTO `tb_hasil_pemeriksaan` (`id`, `id_pemeriksaan`, `id_pasien`, `is_rujukan`, `rujukan`, `resep_obat`, `created_at`, `updated_at`, `keluhan_pasien`) VALUES
(7, 8, 5, 0, 'Sudah melakukan rujukan', 'Paracetamol 3x1 hari', '2022-08-08 16:24:15', '2022-08-08 16:26:51', 'Pusing, Susah Tidur'),
(8, 10, 5, 0, 'Sudah melakukan rujukan', '-', '2022-08-09 04:11:28', '2022-08-09 04:12:14', 'Tipes'),
(9, 9, 6, 0, 'Tidak memerlukan rujuan', 'Paramex', '2023-02-03 04:53:55', '2023-02-03 04:53:55', 'Sakit Gigi'),
(10, 11, 17, 1, 'Pasien memerlukan rujukan', 'Obat Diare', '2023-03-16 06:16:53', '2023-03-16 06:16:53', 'Diare');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwalpraktikdokter`
--

CREATE TABLE `tb_jadwalpraktikdokter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `poli_id` bigint(20) UNSIGNED NOT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pasien` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `alamat` longtext DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `no_handphone` varchar(255) DEFAULT NULL,
  `foto_ktp` varchar(2048) DEFAULT NULL,
  `is_verification` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `is_verificationktp` tinyint(1) DEFAULT 0,
  `otp_number` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id`, `kode_pasien`, `nama_lengkap`, `alamat`, `jenis_kelamin`, `no_ktp`, `no_handphone`, `foto_ktp`, `is_verification`, `email_verified_at`, `email`, `password`, `remember_token`, `is_active`, `created_at`, `updated_at`, `device_token`, `is_verificationktp`, `otp_number`, `is_verified`) VALUES
(4, 'PASIEN/0001', 'Muhammad Fajar', 'Dimana aja', 'laki-laki', '1231312392913', '081388669834', '/images/A6B294B6-4A6C-4BC7-AA51-5AB5F493CB6D.jpg', 1, NULL, 'kojaye@gmail.com', '$2y$10$MBEOLv7Ll60275R/2/svmOJtaA2Oc4CUkWHOVKCr33WorLtfsJFca', NULL, 1, '2022-07-27 14:49:55', '2022-07-27 14:50:28', 'null', 0, NULL, 0),
(5, 'PASIEN/0002', 'Muhammad Atalarik Syach Ajay', 'Yogyakarta', 'laki-laki', '13131030210', '421421312312', '/images/rn_image_picker_lib_temp_e2781b4a-ade1-429e-9d6e-e62601d53fd3.png', 1, NULL, 'atalarikajay@gmail.com', '$2y$10$Hj8biZyL2r0ZoOEsJwW1ceNHx05mkoDGvAJ.zTDqlwgTOGgHH7fCy', NULL, 1, '2022-08-07 21:34:56', '2022-08-07 21:35:32', 'null', 0, NULL, 0),
(6, 'PASIEN/0003', 'Teja', 'Kuningan', 'laki-laki', '131321412421', '088484842321', '/images/rn_image_picker_lib_temp_0bfe704a-2133-43c1-b026-fa3753fdd8b2.png', 1, NULL, 'teja@gmail.com', '$2y$10$E/jTMPvwAVD9WvlkeE8HLu5ti9OaiF76QPHT54oGGBF5bzhc9mLcu', NULL, 1, '2022-08-09 01:19:40', '2022-08-09 04:15:45', 'null', 0, NULL, 0),
(15, 'PASIEN/0004', 'Kojay', 'dimanajaja', 'L', '22223334', '081388669863', NULL, 1, NULL, 'invasionf@gmail.com', '$2y$10$pWAgFe/ff2qiOtS/WXjKoewsBmQaHeEzOkwwHy.DEpAhDSnz2KdIu', NULL, 0, '2022-08-18 22:46:50', '2022-08-18 23:17:54', 'dhlKVvGZRVqIGCQVLLjzpo:APA91bGm3FU4U986VCtL3Kx_oXc8EmY5IkZTScYb0ViL6ea600gYjVRQoI1jlJMtLBvZfLQf-HQ2AKpeZvTdFIGU_693zxPiTr2qFyFprk7DekedXeQkNc_avodK1pi_4wGkMUR1a_64', 0, '5989', 0),
(16, 'PASIEN/0005', 'reyhan', 'dimaaja', 'L', '1221329', '081388669869', NULL, 1, NULL, 'reyhan@gmail.com', '$2y$10$AzoBp.Wga16ClhB3OiQsjOkeAR1CLhrPsHhY7j7nBtjBNVglOBJra', NULL, 0, '2022-08-18 23:36:09', '2022-08-18 23:37:14', 'elwi990yQWCGfhK_iPCA4b:APA91bFK7tTFQVjVka7RuzoKov3GgsdgMX85HzRRAXSCsfyBhazZO07w74zEqABhs3C2mLn7rhU96TO-_wsalyIIxZ0hKZRwb025oBbnF_YOg_PpxwOjqq_nyFuvXGY_ObqrmNoDzvVR', 0, '2315', 1),
(17, 'PASIEN/0006', 'Jhon', 'Sukapura', 'laki-laki', '1321421421', '082481242123', NULL, 1, NULL, 'jhon@gmail.com', '$2y$10$zv2clN64R1b7UJkjzHJuF.uvu9AQ6jRRgbn3rlb.KY8gmXhe2WG2u', NULL, 1, '2023-02-14 09:47:25', '2023-02-14 09:47:25', 'null', 0, NULL, 0),
(18, 'PASIEN/0007', 'Nicholas Teja', 'Kuningan', 'laki-laki', '32140595831', '085829304943', NULL, 1, NULL, 'nicholasteja@gmail.com', '$2y$10$HoQH2Nf3W2nVpyPkB2t9d.7z37.UM1Ipx36DlLO1.UWODiwGEKIgC', NULL, 1, '2023-03-16 06:03:19', '2023-03-16 06:03:19', 'null', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemeriksaan`
--

CREATE TABLE `tb_pemeriksaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `umur` int(11) DEFAULT NULL,
  `no_urut` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `corrected_by` int(11) NOT NULL,
  `kunjungan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_poli` int(11) NOT NULL,
  `status_pemeriksaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_pemeriksaan`
--

INSERT INTO `tb_pemeriksaan` (`id`, `id_pasien`, `umur`, `no_urut`, `status`, `corrected_by`, `kunjungan`, `created_at`, `updated_at`, `id_poli`, `status_pemeriksaan`) VALUES
(7, 4, 23, 'PA1', 'bpjs', 2, 'kunjungan_baru', '2022-07-27 14:49:55', '2022-07-27 14:49:55', 1, 'MENUNGGU'),
(8, 5, 23, 'PA1', 'bpjs', 2, 'kunjungan_baru', '2022-08-07 21:34:56', '2022-08-08 16:24:15', 1, 'SELESAI'),
(9, 6, 23, 'PG1', 'bpjs', 2, 'kunjungan_baru', '2022-08-09 01:19:40', '2023-02-03 04:53:55', 2, 'SELESAI'),
(10, 5, NULL, 'PA2', 'umum', 5, 'kunjungan_lama', '2022-08-09 04:09:10', '2022-08-09 04:11:28', 1, 'SELESAI'),
(11, 17, 25, 'PG1', 'bpjs', 2, 'kunjungan_baru', '2023-02-14 09:47:25', '2023-03-16 06:16:53', 2, 'SELESAI'),
(12, 18, 24, 'PG1', 'bpjs', 2, 'kunjungan_baru', '2023-03-16 06:03:19', '2023-03-16 06:03:19', 2, 'MENUNGGU');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemeriksaanlab`
--

CREATE TABLE `tb_pemeriksaanlab` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `no_rm` varchar(255) NOT NULL,
  `jenis_pemeriksaan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`jenis_pemeriksaan`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_poli`
--

CREATE TABLE `tb_poli` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_poli` varchar(255) DEFAULT NULL,
  `desc_poli` longtext DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_poli`
--

INSERT INTO `tb_poli` (`id`, `nama_poli`, `desc_poli`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Poli Gigi', 'Poli Gigi', 1, '2022-07-17 15:49:21', '2022-07-17 15:49:21'),
(3, 'Poli Konseling', 'Konseling', 1, '2022-08-09 04:06:58', '2022-08-09 04:06:58'),
(4, 'Poli Anak', 'Kesehatan Anak', 1, '2023-02-03 04:17:14', '2023-02-03 04:17:14'),
(5, 'Poli Umum', 'Poli Umum', 1, '2023-03-16 06:05:17', '2023-03-16 06:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status_antrian`
--

CREATE TABLE `tb_status_antrian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pemeriksaan` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `no_urut` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_status_antrian`
--

INSERT INTO `tb_status_antrian` (`id`, `id_pemeriksaan`, `id_pasien`, `no_urut`, `status`, `created_at`, `updated_at`) VALUES
(4, 10, 5, 'PA2', 'MENUNGGU', '2022-08-09 04:09:10', '2022-08-09 04:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status_verifikasi_ktp`
--

CREATE TABLE `tb_status_verifikasi_ktp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_status_verifikasi_ktp`
--

INSERT INTO `tb_status_verifikasi_ktp` (`id`, `pasien_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 4, 'Sudah Konfirmasi', '2022-07-27 14:49:55', '2022-07-27 14:56:29'),
(5, 5, 'Sudah Konfirmasi', '2022-08-07 21:34:56', '2022-08-07 21:35:39'),
(6, 6, 'Sudah Konfirmasi', '2022-08-09 01:19:40', '2022-08-09 04:16:14'),
(7, 16, 'Belum Upload KTP', '2022-08-18 23:36:09', '2022-08-18 23:36:09'),
(8, 17, 'Belum Upload KTP', '2023-02-14 09:47:25', '2023-02-14 09:47:25'),
(9, 18, 'Belum Upload KTP', '2023-03-16 06:03:19', '2023-03-16 06:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_rujukan_pasien`
--

CREATE TABLE `tb_surat_rujukan_pasien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pasien` bigint(20) NOT NULL,
  `path_file_pdf` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_surat_rujukan_pasien`
--

INSERT INTO `tb_surat_rujukan_pasien` (`id`, `id_pasien`, `path_file_pdf`, `no_surat`, `created_at`, `updated_at`, `name_file`) VALUES
(2, 5, 'suratrujukan/1-PKM-LGJ-202238.pdf', '1-PKM-LGJ-202238', '2022-08-08 16:26:52', '2022-08-08 16:26:52', '1-PKM-LGJ-202238.pdf'),
(3, 5, 'suratrujukan/2-PKM-LGJ-202275.pdf', '2-PKM-LGJ-202275', '2022-08-09 04:12:15', '2022-08-09 04:12:15', '2-PKM-LGJ-202275.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_upload_konten`
--

CREATE TABLE `tb_upload_konten` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_konten` varchar(255) DEFAULT NULL,
  `deskripsi_konten` longtext DEFAULT NULL,
  `path_gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_upload_konten`
--

INSERT INTO `tb_upload_konten` (`id`, `judul_konten`, `deskripsi_konten`, `path_gambar`, `created_at`, `updated_at`) VALUES
(3, 'Contoh Gambar', 'Contoh Gambar', '/images/auth-bg (2).jpg', '2023-03-10 02:35:48', '2023-03-10 02:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_website_setting`
--

CREATE TABLE `tb_website_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_website` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_website_setting`
--

INSERT INTO `tb_website_setting` (`id`, `nama_website`, `created_at`, `updated_at`) VALUES
(1, 'E-Puskesmas', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role`) VALUES
(2, 'Admin\'s', 'admin', 'admin@gmail.com', NULL, '$2y$10$EGCHJ86GkJtayvlxsYjc4OXGm.iQMh8oVjfwZkUOU3XC9oggbXeQu', NULL, NULL, NULL, NULL, NULL, '2022-07-17 03:38:47', '2023-03-07 02:35:25', 'admin1'),
(3, 'dr. Yesicca Juliane Chandra', 'yesiccajuliane', 'yessicajuliane@puskesmas.com', NULL, '$2y$10$FPUpmnPzt7kq52Mg00c9iOgfsWs98u0HgyrVTA.xMrHtx/S9T0gaa', NULL, NULL, NULL, NULL, NULL, '2022-07-17 03:38:47', '2022-07-17 03:38:47', 'dokter'),
(7, 'Muhammad Fajar', 'Muhammad Fajar', 'kojaye@gmail.com', NULL, '$2y$10$IcbHMdBA7NaW5FDhfxkCY.dtxUf9J8/OqaQdT4avzfwfuBJlcQnY.', NULL, NULL, NULL, NULL, NULL, '2022-07-27 02:49:55', '2022-07-27 14:49:55', 'pasien'),
(8, 'Muhammad Atalarik Syach Ajay', 'Muhammad Atalarik Syach Ajay', 'atalarikajay@gmail.com', NULL, '$2y$10$ttZ96/gLlZ8JWVUojnIS2ecb/9MgDB//OO7dEYDy45Vr7Or7/tfj6', NULL, NULL, NULL, NULL, NULL, '2022-08-07 21:34:56', '2022-08-07 21:34:56', 'pasien'),
(9, 'Teja', 'Teja', 'teja@gmail.com', NULL, '$2y$10$zwrPbFEjPf4WRglzborECeaTLdn9G9RwELI2zLUYMKhf1AyBtN0IS', NULL, NULL, NULL, NULL, NULL, '2022-08-09 01:19:40', '2022-08-09 01:19:40', 'pasien'),
(10, 'Jhon', 'Jhon', 'jhon@gmail.com', NULL, '$2y$10$3nwFizKVxoMzBPU5cEcSnuSHSRlX56f19seRVl4gVXTxEkqxXJM3i', NULL, NULL, NULL, NULL, NULL, '2023-02-13 21:47:25', '2023-02-14 09:47:25', 'pasien'),
(11, 'Nicholas Teja', 'Nicholas Teja', 'nicholasteja@gmail.com', NULL, '$2y$10$5TyDyHSp7yf/TO5HHoGjve0ILWpgXEUuEKWLx6B9Csne2Li.3Giw6', NULL, NULL, NULL, NULL, NULL, '2023-03-15 18:03:19', '2023-03-16 06:03:19', 'pasien');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tb_antrian`
--
ALTER TABLE `tb_antrian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_antrian_id_poli_foreign` (`id_poli`);

--
-- Indexes for table `tb_detail_pasien`
--
ALTER TABLE `tb_detail_pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_detail_pasien_pasien_id_foreign` (`pasien_id`);

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_dokter_id_user_unique` (`id_user`);

--
-- Indexes for table `tb_hasil_pemeriksaan`
--
ALTER TABLE `tb_hasil_pemeriksaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jadwalpraktikdokter`
--
ALTER TABLE `tb_jadwalpraktikdokter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_jadwalpraktikdokter_dokter_id_foreign` (`dokter_id`),
  ADD KEY `tb_jadwalpraktikdokter_poli_id_foreign` (`poli_id`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_pasien_kode_pasien_unique` (`kode_pasien`),
  ADD UNIQUE KEY `tb_pasien_no_ktp_unique` (`no_ktp`);

--
-- Indexes for table `tb_pemeriksaan`
--
ALTER TABLE `tb_pemeriksaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pemeriksaanlab`
--
ALTER TABLE `tb_pemeriksaanlab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_poli`
--
ALTER TABLE `tb_poli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_status_antrian`
--
ALTER TABLE `tb_status_antrian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_status_verifikasi_ktp`
--
ALTER TABLE `tb_status_verifikasi_ktp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_status_verifikasi_ktp_pasien_id_foreign` (`pasien_id`);

--
-- Indexes for table `tb_surat_rujukan_pasien`
--
ALTER TABLE `tb_surat_rujukan_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_upload_konten`
--
ALTER TABLE `tb_upload_konten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_website_setting`
--
ALTER TABLE `tb_website_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_antrian`
--
ALTER TABLE `tb_antrian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_detail_pasien`
--
ALTER TABLE `tb_detail_pasien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_hasil_pemeriksaan`
--
ALTER TABLE `tb_hasil_pemeriksaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_jadwalpraktikdokter`
--
ALTER TABLE `tb_jadwalpraktikdokter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_pemeriksaan`
--
ALTER TABLE `tb_pemeriksaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pemeriksaanlab`
--
ALTER TABLE `tb_pemeriksaanlab`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_poli`
--
ALTER TABLE `tb_poli`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_status_antrian`
--
ALTER TABLE `tb_status_antrian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_status_verifikasi_ktp`
--
ALTER TABLE `tb_status_verifikasi_ktp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_surat_rujukan_pasien`
--
ALTER TABLE `tb_surat_rujukan_pasien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_upload_konten`
--
ALTER TABLE `tb_upload_konten`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_website_setting`
--
ALTER TABLE `tb_website_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_antrian`
--
ALTER TABLE `tb_antrian`
  ADD CONSTRAINT `tb_antrian_id_poli_foreign` FOREIGN KEY (`id_poli`) REFERENCES `tb_poli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_detail_pasien`
--
ALTER TABLE `tb_detail_pasien`
  ADD CONSTRAINT `tb_detail_pasien_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `tb_pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_jadwalpraktikdokter`
--
ALTER TABLE `tb_jadwalpraktikdokter`
  ADD CONSTRAINT `tb_jadwalpraktikdokter_dokter_id_foreign` FOREIGN KEY (`dokter_id`) REFERENCES `tb_dokter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_jadwalpraktikdokter_poli_id_foreign` FOREIGN KEY (`poli_id`) REFERENCES `tb_poli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_status_verifikasi_ktp`
--
ALTER TABLE `tb_status_verifikasi_ktp`
  ADD CONSTRAINT `tb_status_verifikasi_ktp_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `tb_pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
