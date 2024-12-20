-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 07:55 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `md_sport`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `address`, `phone_no`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'ON RUNING', 'ON_black.jpg', '107 Trương Định, Phường 6, Quận 3, Hồ Chí Minh, Việt Nam', '0383485202', 'on-runing', 0, '2020-06-29 23:58:03', '2024-11-18 23:51:07'),
(2, 'SAUCONY', 'SAUCONY.jpg', '248 Nguyễn Đình Chiểu, Phường Võ Thị Sáu, Quận 3, Hồ Chí Minh 74000, Việt Nam', '0869253860', 'saucony', 0, '2020-06-29 23:58:41', '2024-11-18 23:52:37'),
(3, 'COLUMBIA', 'SP_BR_COLUM_0a5dd1e4-d410-4efb-b381-fda52ccb6e68.jpg', 'Tầng 9, Tòa nhà A&B, 76A Lê Lai, Phường Bến Thành, Quận 1,  Thành phố Hồ Chí Minh', '0316713913', 'columbia', 0, '2020-06-29 23:59:24', '2024-11-18 23:55:21'),
(4, 'CROCS', 'SP_BR_CROCS_b77b8613-50d1-43b5-a7fa-0b46546a9734.jpg', '229 Đ. Lê Duẩn, Tân Chính, Thanh Khê, Đà Nẵng 550000, Việt Nam', '0839558368', 'crocs', 0, '2020-06-29 23:59:49', '2024-11-18 23:57:45'),
(5, 'FILA', 'SP_BR_FILA_c6af7494-e276-45e0-b10f-74f7a940d3ea.jpg', '910A Ngô Quyền, An Hải Bắc, Sơn Trà, Đà Nẵng 550000, Việt Nam', '0383485202', 'fila', 0, '2020-06-30 00:00:15', '2024-11-19 00:00:42'),
(6, 'NIKE', 'SP_BR_NIKE_c3a940f1-9d42-47a2-bec3-04a47aa62e04.jpg', '27 Đ. Nguyễn Văn Linh, Bình Hiên, Hải Châu, Đà Nẵng 550000, Việt Nam', '0367300599', 'nike', 0, '2020-06-30 00:42:37', '2024-11-19 00:04:06'),
(7, 'SKECHERS', 'SP_BR_SKECHER_6dca3273-3ddf-4210-b165-62562fa59ef6.jpg', 'No 178 Đ. Lê Duẩn, Thạch Thang, Hải Châu, Đà Nẵng 550000, Việt Nam', '0363272178', 'skechers', 0, '2020-06-30 00:58:23', '2024-11-19 00:05:08'),
(8, 'JUNO', '11.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'juno', 1, '2020-06-30 00:59:23', '2024-11-19 00:07:13'),
(9, 'FURLA', '26.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'furla', 1, '2020-06-30 01:00:14', '2024-11-19 00:07:09'),
(10, 'ADIDAS', 'SP_BR_DAS_29f333f3-037a-4340-b15c-91e290153a20.jpg', '112 Đ. Lê Duẩn, Thạch Thang, Hải Châu, Đà Nẵng 550000, Việt Nam', '0363810024', 'adidas', 0, '2020-06-30 01:00:48', '2024-11-18 23:59:53'),
(11, 'SPEEDO', 'SP_BR_SPEEDO_ece13004-e7a2-4c37-bf0e-16302121e99a.jpg', '154 Yên Khê 1, Thanh Khê Tây, Hải Châu, Đà Nẵng, Việt Nam', '0378563556', 'speedo', 0, '2020-08-22 00:13:06', '2024-11-19 00:06:18'),
(12, 'Caracole', '14.jpg', '432 Trường Trinh, Kiến An, Hải Phòng', '0869253860', 'caracole', 1, '2020-08-22 00:19:05', '2024-11-19 00:07:18'),
(13, 'UNDER ARMOUR', 'SP_BR_UA_971a481e-3d35-4376-b5a3-332e2d34165d.jpg', 'Crescent Mall, Lô 25B, 26A, Tầng 3, 101 Đ Tôn Dật Tiên, Tân Phú, Quận 7, Hồ Chí Minh 72908, Việt Nam', '0356986348', 'under-armour', 0, '2020-08-22 00:20:46', '2024-11-19 00:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mess` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `mess`, `created_at`, `updated_at`) VALUES
(1, 'Tuan Pham', 'tuanpham1212020@gmail.com', 'Giày', 'Test', '2024-11-12 03:09:52', '2024-11-12 03:09:52'),
(2, 'Phạm Văn Tuấn', 'tuanpham202k2@gmail.com', 'Giày', 'complain', '2024-11-21 21:31:31', '2024-11-21 21:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `address`, `phone_no`, `email`, `slug`, `is_deleted`, `created_at`, `updated_at`, `user_id`) VALUES
(28, 'Tuan Pham', 'Thôn Phú Đông, Xã Đại Hiệp', '0123456789', 'tieulang2k2@gmail.com', 'tuan-pham', 0, '2024-11-12 03:02:14', '2024-11-12 03:02:14', 16),
(29, 'Phạm Văn Tuấn', 'Ngũ Hành Sơn Đà Nẵng', '0383485202', 'tuanpham202k2@gmail.com', 'pham-van-tuan', 0, '2024-11-21 21:29:13', '2024-11-21 21:29:13', 17),
(30, 'Phạm Văn Tuấn', 'Thôn Phú Đông, Xã Đại Hiệp', '0383485202', 'tieulang2k2@gmail.com', 'pham-van-tuan', 0, '2024-11-29 04:30:53', '2024-11-29 04:30:53', 18),
(31, 'Phạm Văn Tuấn', 'NHS,Đà Nẵng', '0383485202', 'tuan202k2@gmail.com', 'pham-van-tuan', 0, '2024-12-14 00:06:45', '2024-12-14 00:06:45', 19);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2020_06_15_152041_create_brands_table', 1),
(42, '2020_06_15_152157_create_product_categories_table', 1),
(43, '2020_06_15_152239_create_products_table', 1),
(44, '2020_06_15_152522_create_customers_table', 1),
(45, '2020_06_15_152557_create_slides_table', 1),
(46, '2020_06_15_152636_create_orders_table', 1),
(47, '2020_06_15_152744_create_order_details_table', 1),
(48, '2020_06_15_152949_create_roles_table', 1),
(49, '2020_06_15_153032_create_permissions_table', 1),
(50, '2020_06_15_153116_create_permission_roles_table', 1),
(51, '2020_06_15_154322_create_users_table', 1),
(52, '2020_06_15_154332_create_role_user_table', 1),
(53, '2020_07_03_021215_add_user_id_to_customers_table', 2),
(54, '2020_07_03_025411_add_foreign_user_id_to_customers_table', 3),
(55, '2024_11_12_080313_create_contacts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_status`, `payment_status`, `customer_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(67, 0, 3, 28, 1, '2024-11-12 03:02:38', '2024-11-20 21:15:09'),
(68, 1, 1, 28, 1, '2024-11-20 01:15:33', '2024-11-20 21:15:07'),
(69, 1, 3, 28, 1, '2024-11-20 21:13:14', '2024-11-20 21:15:04'),
(70, 1, 3, 28, 1, '2024-11-20 21:14:29', '2024-11-20 21:15:02'),
(71, 1, 3, 29, 1, '2024-11-21 21:32:33', '2024-11-24 01:32:20'),
(72, 1, 3, 29, 1, '2024-11-24 01:29:49', '2024-11-24 01:32:18'),
(73, 1, 3, 29, 1, '2024-11-24 01:29:58', '2024-11-24 01:32:15'),
(74, 1, 3, 29, 1, '2024-11-24 01:33:36', '2024-11-24 01:45:21'),
(75, 1, 3, 29, 1, '2024-11-24 01:39:09', '2024-11-24 01:45:19'),
(76, 1, 3, 29, 1, '2024-11-24 01:41:33', '2024-11-24 01:45:17'),
(77, 1, 3, 29, 1, '2024-11-24 01:44:34', '2024-11-24 01:45:15'),
(78, 1, 3, 29, 1, '2024-11-24 01:46:05', '2024-11-24 01:46:20'),
(79, 1, 3, 29, 1, '2024-11-24 01:47:38', '2024-11-24 01:50:31'),
(80, 1, 3, 29, 0, '2024-11-24 01:50:40', '2024-11-24 01:50:40'),
(81, 1, 3, 30, 0, '2024-11-29 04:31:17', '2024-11-29 04:31:17'),
(82, 1, 3, 28, 0, '2024-12-08 22:18:16', '2024-12-08 22:18:16'),
(83, 1, 3, 31, 0, '2024-12-14 00:11:17', '2024-12-14 00:11:17'),
(84, 1, 1, 28, 0, '2024-12-19 23:29:49', '2024-12-19 23:29:49'),
(85, 1, 3, 28, 0, '2024-12-19 23:30:15', '2024-12-19 23:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `quantity`, `order_id`, `product_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(60, 1, 68, 31, 0, '2024-11-20 01:15:33', '2024-11-20 01:15:33'),
(61, 1, 69, 29, 0, '2024-11-20 21:13:14', '2024-11-20 21:13:14'),
(62, 1, 70, 32, 0, '2024-11-20 21:14:29', '2024-11-20 21:14:29'),
(63, 1, 71, 29, 0, '2024-11-21 21:32:33', '2024-11-21 21:32:33'),
(64, 1, 72, 39, 0, '2024-11-24 01:29:49', '2024-11-24 01:29:49'),
(65, 1, 73, 39, 0, '2024-11-24 01:29:58', '2024-11-24 01:29:58'),
(66, 1, 74, 32, 0, '2024-11-24 01:33:36', '2024-11-24 01:33:36'),
(67, 1, 75, 29, 0, '2024-11-24 01:39:09', '2024-11-24 01:39:09'),
(68, 1, 76, 28, 0, '2024-11-24 01:41:33', '2024-11-24 01:41:33'),
(69, 2, 77, 29, 0, '2024-11-24 01:44:34', '2024-11-24 01:44:34'),
(70, 1, 78, 28, 0, '2024-11-24 01:46:05', '2024-11-24 01:46:05'),
(71, 1, 79, 29, 0, '2024-11-24 01:47:38', '2024-11-24 01:47:38'),
(72, 1, 80, 29, 0, '2024-11-24 01:50:40', '2024-11-24 01:50:40'),
(73, 1, 81, 32, 0, '2024-11-29 04:31:17', '2024-11-29 04:31:17'),
(74, 1, 82, 28, 0, '2024-12-08 22:18:16', '2024-12-08 22:18:16'),
(75, 1, 83, 29, 0, '2024-12-14 00:11:17', '2024-12-14 00:11:17'),
(76, 1, 84, 28, 0, '2024-12-19 23:29:49', '2024-12-19 23:29:49'),
(77, 1, 85, 28, 0, '2024-12-19 23:30:15', '2024-12-19 23:30:15');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'create_user', 'Create user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'edit_user', 'Edit user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'view_user', 'View user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'detail_user', 'Detail user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(5, 'create_brand', 'Create brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(6, 'edit_brand', 'Edit brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(7, 'view_brand', 'View brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(8, 'detail_brand', 'Detail brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(9, 'create_category', 'Create category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(10, 'edit_category', 'Edit category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(11, 'view_category', 'View category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(12, 'detail_category', 'Detail category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(13, 'create_product', 'Create product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(14, 'edit_product', 'Edit product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(15, 'view_product', 'View product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(16, 'detail_product', 'Detail product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(17, 'create_order', 'Create order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(18, 'edit_order', 'Edit order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(19, 'view_order', 'View order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(20, 'detail_order', 'Detail order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(21, 'create_slide', 'Create slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(22, 'edit_slide', 'Edit slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(23, 'view_slide', 'View slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(24, 'detail_slide', 'Detail slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(25, 'create_role', 'Create role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(26, 'edit_role', 'Edit role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(27, 'view_role', 'View role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(28, 'detail_role', 'Detail role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(29, 'delete_brand', 'Delete Brand', 0, NULL, NULL),
(30, 'delete_role', 'Delete Role', 0, NULL, NULL),
(31, 'delete_product', 'Delete Product', 0, NULL, NULL),
(32, 'delete_category', 'Delete Category', 0, NULL, NULL),
(33, 'delete_slide', 'Delete Slide', 0, NULL, NULL),
(34, 'delete_user', 'Delete User', 0, NULL, NULL),
(35, 'delete_order', 'Delete Order', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(112, 1, 1, NULL, NULL),
(113, 2, 1, NULL, NULL),
(114, 3, 1, NULL, NULL),
(115, 4, 1, NULL, NULL),
(116, 5, 1, NULL, NULL),
(117, 6, 1, NULL, NULL),
(118, 7, 1, NULL, NULL),
(119, 8, 1, NULL, NULL),
(120, 9, 1, NULL, NULL),
(121, 10, 1, NULL, NULL),
(122, 11, 1, NULL, NULL),
(123, 12, 1, NULL, NULL),
(124, 13, 1, NULL, NULL),
(125, 14, 1, NULL, NULL),
(126, 15, 1, NULL, NULL),
(127, 16, 1, NULL, NULL),
(128, 17, 1, NULL, NULL),
(129, 18, 1, NULL, NULL),
(130, 19, 1, NULL, NULL),
(131, 20, 1, NULL, NULL),
(132, 21, 1, NULL, NULL),
(133, 22, 1, NULL, NULL),
(134, 23, 1, NULL, NULL),
(135, 24, 1, NULL, NULL),
(136, 25, 1, NULL, NULL),
(137, 26, 1, NULL, NULL),
(138, 27, 1, NULL, NULL),
(139, 28, 1, NULL, NULL),
(140, 29, 1, NULL, NULL),
(141, 30, 1, NULL, NULL),
(142, 31, 1, NULL, NULL),
(143, 32, 1, NULL, NULL),
(144, 33, 1, NULL, NULL),
(145, 34, 1, NULL, NULL),
(146, 35, 1, NULL, NULL),
(166, 3, 2, NULL, NULL),
(167, 4, 2, NULL, NULL),
(168, 7, 2, NULL, NULL),
(169, 8, 2, NULL, NULL),
(170, 11, 2, NULL, NULL),
(171, 12, 2, NULL, NULL),
(172, 15, 2, NULL, NULL),
(173, 16, 2, NULL, NULL),
(174, 19, 2, NULL, NULL),
(175, 20, 2, NULL, NULL),
(176, 23, 2, NULL, NULL),
(177, 24, 2, NULL, NULL),
(178, 27, 2, NULL, NULL),
(179, 28, 2, NULL, NULL),
(180, 5, 3, NULL, NULL),
(181, 6, 3, NULL, NULL),
(182, 7, 3, NULL, NULL),
(183, 8, 3, NULL, NULL),
(184, 9, 3, NULL, NULL),
(185, 10, 3, NULL, NULL),
(186, 11, 3, NULL, NULL),
(187, 12, 3, NULL, NULL),
(188, 13, 3, NULL, NULL),
(189, 14, 3, NULL, NULL),
(190, 15, 3, NULL, NULL),
(191, 16, 3, NULL, NULL),
(192, 17, 3, NULL, NULL),
(193, 18, 3, NULL, NULL),
(194, 19, 3, NULL, NULL),
(195, 20, 3, NULL, NULL),
(196, 21, 3, NULL, NULL),
(197, 22, 3, NULL, NULL),
(198, 23, 3, NULL, NULL),
(199, 24, 3, NULL, NULL),
(200, 29, 3, NULL, NULL),
(201, 31, 3, NULL, NULL),
(202, 32, 3, NULL, NULL),
(203, 33, 3, NULL, NULL),
(204, 35, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(11,0) NOT NULL,
  `promotion_price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `description`, `detail`, `url_image`, `price`, `promotion_price`, `quantity`, `slug`, `is_hot`, `is_new`, `brand_id`, `category_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(28, 'Giày Đá Bóng Trẻ Em Adidas Predator League Turf (Dành Cho Sân Cỏ Nhân Tạo)', '673c3f1751fdc', '<p><strong>GI&Agrave;Y Đ&Aacute; B&Oacute;NG TRẺ EM ADIDAS PREDATOR LEAGUE TF</strong></p>\r\n\r\n<p>Khi bạn nhắm v&agrave;o mục ti&ecirc;u, adidas Predator gi&uacute;p bạn biến &aacute;p lực th&agrave;nh những c&uacute; s&uacute;t ch&iacute;nh x&aacute;c. Phần tr&ecirc;n Hybridfeel của đ&ocirc;i gi&agrave;y b&oacute;ng đ&aacute; trẻ em League n&agrave;y c&oacute; kết cấu 3D v&agrave; c&aacute;c v&acirc;y Strikescale b&aacute;m chắc ở mặt trong, được tối ưu h&oacute;a để tăng độ ch&iacute;nh x&aacute;c khi s&uacute;t b&oacute;ng. Đế ngo&agrave;i cao su với c&aacute;c đinh t&aacute;n gi&uacute;p giữ vững sự ổn định tr&ecirc;n s&acirc;n cỏ nh&acirc;n tạo.</p>\r\n\r\n<p>&nbsp;</p>', 'Kiểu dáng vừa vặn\r\nCó dây buộc\r\nPhần trên Hybridfeel với các chi tiết Strikescale\r\nĐế cao su dành cho sân cỏ nhân tạo\r\nChứa ít nhất 20% vật liệu tái chế và tái tạo', '1.jpg', '1700000', 1680000, 15, 'giay-da-bong-tre-em-adidas-predator-league-turf-danh-cho-san-co-nhan-tao', 0, 1, 10, 2, 0, '2024-11-19 00:34:04', '2024-12-19 23:30:15'),
(29, 'Giày Đá Bóng Trẻ Em Adidas F50 League Turf Messi (Dành Cho Sân Cỏ Nhân Tạo)', '673c40f91c6cd', '<p><strong>GI&Agrave;Y Đ&Aacute; B&Oacute;NG TRẺ EM ADIDAS F50 LEAGUE TF MESSI</strong></p>\r\n\r\n<p>Tốc độ F50, phong c&aacute;ch Messi. Năm 2024, d&ograve;ng gi&agrave;y b&oacute;ng đ&aacute; adidas của Lionel Messi được thiết kế ho&agrave;n hảo theo sở th&iacute;ch của anh ấy. Đ&ocirc;i gi&agrave;y F50 League d&agrave;nh cho trẻ em n&agrave;y c&oacute; phần tr&ecirc;n HybridTouch linh hoạt với lưỡi gi&agrave;y tổng hợp mang lại cảm gi&aacute;c thoải m&aacute;i nhẹ nh&agrave;ng. Đế cao su với c&aacute;c đinh t&aacute;n gi&uacute;p tăng độ phản hồi tr&ecirc;n s&acirc;n cỏ nh&acirc;n tạo, gi&uacute;p bạn di chuyển như một ng&ocirc;i sao thực thụ.</p>', 'Kiểu dáng vừa vặn\r\nCó dây buộc\r\nPhần trên HybridTouch\r\nLưỡi giày tổng hợp nhẹ\r\nĐế cao su dành cho sân cỏ nhân tạo\r\nChứa ít nhất 20% vật liệu tái chế', '2.jpg', '1700000', 1600000, 42, 'giay-da-bong-tre-em-adidas-f50-league-turf-messi-danh-cho-san-co-nhan-tao', 1, 0, 10, 2, 0, '2024-11-19 00:42:03', '2024-12-14 00:11:17'),
(30, 'Giày Đá Bóng Dành Cho Sân Cỏ Tự Nhiên Nam Adidas F50 League/Mg', '673c41bebac31', '<p><strong>GI&Agrave;Y Đ&Aacute; B&Oacute;NG D&Agrave;NH CHO S&Acirc;N CỎ TỰ NHI&Ecirc;N NAM ADIDAS F50 LEAGUE/MG</strong></p>\r\n\r\n<p>Giải ph&oacute;ng tốc độ với gi&agrave;y adidas F50. Khai ph&aacute; tối đa tiềm năng bứt tốc, chuyển động v&agrave; tốc độ của bạn. Cố định b&agrave;n ch&acirc;n nhờ lưỡi g&agrave; co gi&atilde;n, th&acirc;n gi&agrave;y Fiberskin tr&ecirc;n đ&ocirc;i gi&agrave;y đ&aacute; b&oacute;ng si&ecirc;u nhẹ adidas League n&agrave;y c&oacute; họa tiết Sprintgrid ở phần mũi gi&agrave;y. B&ecirc;n dưới l&agrave; đế ngo&agrave;i Sprintplate 360 tạo đ&agrave; tr&ecirc;n nhiều bề mặt đa dạng.</p>', 'Dáng regular fit\r\nCó dây giày\r\nThân giày Fiberskin với họa tiết Sprintgrid\r\nLớp lót bằng vải dệt\r\nLưỡi gà co giãn\r\nĐế ngoài Sprintplate 360 phù hợp sân cỏ tự nhiên/multi-ground\r\nCó chứa tối thiểu 20% thành phần tái chế', '3.jpg', '2400000', 2300000, 60, 'giay-da-bong-danh-cho-san-co-tu-nhien-nam-adidas-f50-leaguemg', 0, 1, 10, 2, 1, '2024-11-19 00:44:55', '2024-11-20 23:09:07'),
(31, 'Giày Đá Bóng Dành Cho Sân Cỏ Nhân Tạo Nam Nike Phantom Luna Ii Academy', '673c42365a1b1', '<p><strong>GI&Agrave;Y Đ&Aacute; B&Oacute;NG D&Agrave;NH CHO S&Acirc;N CỎ NH&Acirc;N TẠO NAM NIKE PHANTOM LUNA II ACADEMY</strong></p>\r\n\r\n<p>Gi&agrave;y Đ&aacute; B&oacute;ng Nike Phantom Luna II Academy phi&ecirc;n bản d&agrave;nh cho s&acirc;n cỏ nh&acirc;n tạo mang đến sự linh hoạt v&agrave; kiểm so&aacute;t b&oacute;ng tối ưu. C&ocirc;ng nghệ NikeSkin được mở rộng để tăng cường cảm gi&aacute;c b&oacute;ng v&agrave; độ ch&iacute;nh x&aacute;c trong c&aacute;c c&uacute; chạm. Đế gi&agrave;y được thiết kế để b&aacute;m s&acirc;n tốt, gi&uacute;p bạn di chuyển tự tin ngay cả khi trận đấu trở n&ecirc;n căng thẳng. Phần cổ gi&agrave;y mềm mại &ocirc;m s&aacute;t cổ ch&acirc;n gi&uacute;p bạn lu&ocirc;n thoải m&aacute;i v&agrave; ổn định trong suốt trận đấu.</p>', 'Công nghệ NikeSkin cải tiến cho cảm giác bóng tốt hơn\r\nĐế giày thiết kế chuyên biệt cho sân cỏ nhân tạo\r\nCổ giày êm ái, ôm sát cổ chân\r\nĐế giày bám tốt, hỗ trợ di chuyển linh hoạt', '4.jpg', '3059000', 3000000, 29, 'giay-da-bong-danh-cho-san-co-nhan-tao-nam-nike-phantom-luna-ii-academy', 0, 0, 6, 2, 0, '2024-11-19 00:46:47', '2024-11-20 01:15:33'),
(32, 'Giày Đá Bóng Unisex Under Armour Shadow Turf 2.0 (Dành Cho Sân Cỏ Nhân Tạo)', '673c426fcc61e', '<p><strong>GI&Agrave;Y Đ&Aacute; B&Oacute;NG UNISEX UNDER ARMOUR SHADOW TURF 2.0</strong></p>\r\n\r\n<p>Thống trị tr&ecirc;n s&acirc;n cỏ nh&acirc;n tạo với Gi&agrave;y Đ&aacute; B&oacute;ng Unisex Under Armour Shadow Turf 2.0. Được thiết kế để hỗ trợ c&aacute;c pha chạm b&oacute;ng tinh tế, chuyển hướng đột ngột v&agrave; tăng tốc bứt ph&aacute;, đ&ocirc;i gi&agrave;y n&agrave;y sẽ l&agrave; người bạn đồng h&agrave;nh đ&aacute;ng tin cậy cho c&aacute;c cầu thủ ở mọi cấp độ.</p>', 'Kiểu buộc dây: Dây buộc tiêu chuẩn\r\nThân giày: Chất liệu tổng hợp siêu mềm mại và bền bỉ, tạo cảm giác chạm bóng tuyệt vời\r\nLót giày: EVA tạo sự thoải mái tối đa\r\nĐệm giữa: Công nghệ Charged Cushioning® giúp hấp thụ lực', '5.jpg', '1995000', NULL, 14, 'giay-da-bong-unisex-under-armour-shadow-turf-20-danh-cho-san-co-nhan-tao', 1, 0, 13, 2, 0, '2024-11-19 00:48:26', '2024-11-29 04:31:17'),
(33, 'Giày Đá Bóng Trẻ Em Under Armour Shadow Turf Jr 2 (Dành Cho Sân Cỏ Nhân Tạo)', '673d992198808', '<p><strong>GI&Agrave;Y Đ&Aacute; B&Oacute;NG TRẺ EM UNDER ARMOUR SHADOW TURF JR 2 (D&Agrave;NH CHO S&Acirc;N CỎ NH&Acirc;N TẠO)</strong></p>\r\n\r\n<p>Gi&agrave;y Đ&aacute; B&oacute;ng Trẻ Em Under Armour Shadow Turf Jr 2 sẽ l&agrave; người bạn đồng h&agrave;nh tuyệt vời của c&aacute;c cầu thủ nh&iacute;. Phần mũ gi&agrave;y mềm mại v&agrave; &ocirc;m ch&acirc;n, cho b&eacute; cảm gi&aacute;c chạm b&oacute;ng tốt nhất. Đế gi&agrave;y c&oacute; gai cao su b&aacute;m d&iacute;nh, an to&agrave;n v&agrave; ổn định. Đệm giữa si&ecirc;u nhạy, hỗ trợ tối đa cho lối chơi tốc độ của b&eacute;.</p>\r\n\r\n<p>&nbsp;</p>', 'Cảm giác chạm bóng tuyệt vời: Mũ giày chất liệu tổng hợp siêu mềm, bền bỉ\r\nBám sân, chuyển hướng tốt: Đế ngoài với các núm gai dành riêng cho sân cỏ nhân tạo\r\nThoải mái tối đa: Lót giày EVA êm ái', '6.jpg', '1410000', 1400000, 48, 'giay-da-bong-tre-em-under-armour-shadow-turf-jr-2-danh-cho-san-co-nhan-tao', 1, 0, 13, 2, 0, '2024-11-20 01:11:15', '2024-12-09 22:14:53'),
(34, 'Giày Chạy Bộ Nam On Running Cloudsurfer Next', '673d9ec530b71', '<p><strong>GI&Agrave;Y CHẠY BỘ NAM ON RUNNING CLOUDSURFER NEXT</strong></p>\r\n\r\n<p>Trải nghiệm sự thoải m&aacute;i tối ưu v&agrave; năng lượng hồi đ&aacute;p ho&agrave;n hảo với Gi&agrave;y Chạy Bộ Nam On Running Cloudsurfer Next. Thiết kế hỗ trợ tối đa cho hoạt động chạy bộ mang lại cảm gi&aacute;c nhẹ nh&agrave;ng hơn v&agrave; cung cấp độ đệm tốt hơn, gi&uacute;p bạn mạnh mẽ tiến bước v&agrave; trở n&ecirc;n linh hoạt hơn trong mỗi bước chạy. H&atilde;y để Cloudsurfer Next gi&uacute;p bạn chinh phục mọi cung đường với hiệu suất vượt trội.</p>\r\n\r\n<p><strong>TH&Ocirc;NG SỐ</strong></p>\r\n\r\n<ul>\r\n	<li>Th&acirc;n tr&ecirc;n bằng chất liệu dệt kỹ thuật mang đến sự vừa vặn liền mạch</li>\r\n	<li>Đế giữa CloudTec Phase&reg; tạo cảm gi&aacute;c ch&acirc;n mượt m&agrave; từ g&oacute;t đến mũi v&agrave; nhẹ nh&agrave;ng hơn trong từng bước chạy</li>\r\n	<li>Đế giữa sử dụng hợp chất Helion&trade; superfoam mới, mang lại cảm gi&aacute;c đ&agrave;n hồi v&agrave; ho&agrave;n trả năng lượng tốt hơn</li>\r\n	<li>Mũi ch&acirc;n thiết kế th&ocirc;ng minh hỗ trợ lực đẩy</li>\r\n	<li>Đế ngo&agrave;i bằng cao su b&aacute;m đường tốt</li>\r\n	<li>Đệm: Đệm vừa phải</li>\r\n	<li>Ch&ecirc;nh lệch g&oacute;t ch&acirc;n: 6 mm</li>\r\n	<li>Chiều cao đế g&oacute;t: 30 mm</li>\r\n	<li>Chiều cao đế mũi ch&acirc;n: 24 mm</li>\r\n	<li>Chất liệu th&acirc;n tr&ecirc;n: Polyester</li>\r\n	<li>Đế ngo&agrave;i: Cao su</li>\r\n	<li>Trọng lượng: 273g</li>\r\n</ul>', 'Trọng lượng (g/chiếc)	273\r\nChiều cao đế	Từ 2 cm - 4 cm\r\nHọa tiết đế	Đế họa tiết\r\nChất liệu thân giày	Lưới tổng hợp\r\nBề mặt sử dụng	Đường chạy\r\nDịp sử dụng	Hàng ngày, Luyện tập\r\nMôn thể thao	Chạy bộ\r\nCông nghệ	CloudTec®\r\nBộ sưu tập	On Running Cloudsufer\r\nTính năng nổi bật	Thoáng khí, Độ bám - Chống trơn trượt\r\nLoại dây giày	Có\r\nCổ giày	Cổ thấp\r\nKết nối App	Không\r\nĐộ đệm	Trung bình\r\nKiểu dáng	Vừa vặn (Regular Fit)', 'a3.jpg', '4499000', 4400000, 24, 'giay-chay-bo-nam-on-running-cloudsurfer-next', 0, 1, 1, 6, 0, '2024-11-20 01:36:19', '2024-11-20 01:38:26'),
(35, 'Giày Chạy Bộ Nữ On Running Cloudsurfer Next Wide', '673da222a7aa7', '<p><strong>GI&Agrave;Y CHẠY BỘ NỮ ON RUNNING CLOUDSURFER NEXT WIDE</strong></p>\r\n\r\n<p>Trải nghiệm sự thoải m&aacute;i tối ưu v&agrave; năng lượng hồi đ&aacute;p ho&agrave;n hảo với Gi&agrave;y Chạy Bộ Nữ On Running Cloudsurfer Next Wide. Thiết kế hỗ trợ tối đa cho hoạt động chạy bộ mang lại cảm gi&aacute;c nhẹ nh&agrave;ng hơn v&agrave; cung cấp độ đệm tốt hơn, gi&uacute;p bạn mạnh mẽ tiến bước v&agrave; trở n&ecirc;n linh hoạt hơn trong mỗi bước chạy. H&atilde;y để Cloudsurfer Next gi&uacute;p bạn chinh phục mọi cung đường với hiệu suất vượt trội.</p>\r\n\r\n<p><strong>TH&Ocirc;NG SỐ</strong></p>\r\n\r\n<ul>\r\n	<li>Th&acirc;n tr&ecirc;n bằng chất liệu dệt kỹ thuật mang đến sự vừa vặn liền mạch</li>\r\n	<li>Đế giữa CloudTec Phase&reg; tạo cảm gi&aacute;c ch&acirc;n mượt m&agrave; từ g&oacute;t đến mũi v&agrave; nhẹ nh&agrave;ng hơn trong từng bước chạy</li>\r\n	<li>Đế giữa sử dụng hợp chất Helion&trade; superfoam mới, mang lại cảm gi&aacute;c đ&agrave;n hồi v&agrave; ho&agrave;n trả năng lượng tốt hơn</li>\r\n	<li>Mũi ch&acirc;n thiết kế th&ocirc;ng minh hỗ trợ lực đẩy</li>\r\n	<li>Đế ngo&agrave;i bằng cao su b&aacute;m đường tốt</li>\r\n	<li>Ch&ecirc;nh lệch g&oacute;t ch&acirc;n: 6 mm</li>\r\n	<li>Trọng lượng: 230g</li>\r\n</ul>', 'Trọng lượng (g/chiếc)	230\r\nChiều cao đế	Từ 2 cm - 4 cm\r\nHọa tiết đế	Đế họa tiết\r\nChất liệu thân giày	Vải dệt\r\nBề mặt sử dụng	Đường chạy\r\nDịp sử dụng	Hàng ngày, Luyện tập\r\nMôn thể thao	Chạy bộ\r\nCông nghệ	CloudTec®\r\nBộ sưu tập	On Running Cloudsurfer\r\nTính năng nổi bật	Độ bám - Chống trơn trượt\r\nLoại dây giày	Có\r\nCổ giày	Cổ thấp\r\nKết nối App	Không\r\nĐộ đệm	Trung bình\r\nKiểu dáng	Vừa vặn (Regular Fit)', 'a1.jpg', '4999000', 4900000, 14, 'giay-chay-bo-nu-on-running-cloudsurfer-next-wide', 0, 1, 1, 6, 0, '2024-11-20 01:49:22', '2024-11-20 23:09:27'),
(36, 'Quần Bơi Nam Speedo End+ Max Compression', '673ecaf0f01a3', '<p><strong>QUẦN BƠI NAM SPEEDO END+ MAX COMPRESSION</strong></p>\r\n\r\n<p>&Aacute;o bơi chống nắng nam Speedo End+ Splice l&agrave; lựa chọn ho&agrave;n hảo cho những ng&agrave;y hoạt động ngo&agrave;i trời! Với thiết kế tay d&agrave;i m&agrave;u xanh hải qu&acirc;n v&agrave; họa tiết &quot;pixelated&quot; phối m&agrave;u hồng - xanh ấn tượng mang đến vẻ ngo&agrave;i năng động v&agrave; phong c&aacute;ch. Kiểu d&aacute;ng &ocirc;m s&aacute;t nhưng dễ mặc kết hợp bị đường may phẳng mang lại cảm gi&aacute;c vừa vặn thoải m&aacute;i vượt trội.</p>\r\n\r\n<p>Chất vải Endurance+ tối ưu khả năng kh&ocirc; nhanh v&agrave; chống clo giữ vải bền bỉ v&agrave; bền m&agrave;u l&acirc;u d&agrave;i. Đặc biệt, chất liệu polyester trong vải được sản xuất từ 100% chất thải ti&ecirc;u d&ugrave;ng t&aacute;i chế, như chai nhựa, g&oacute;p phần bảo vệ m&ocirc;i trường.</p>', 'THÔNG SỐ\r\nChống ma sát, kích ứng, chống nắng hoàn hảo cả khi ở trong nước và ngoài nước\r\nĐường chỉ khâu phẳng - Đem lại cảm giác thoải mái khi tiếp xúc với cơ thể\r\nVòng gắn quần boardshort - Kết nối với dây kéo của quần hoặc legging để giữ cố định thêm\r\nVừa vặn ôm sát\r\nChống Clo - Đảm bảo hiệu suất lâu dài\r\nKhô nhanh - Khô nhanh hơn sau khi tập bơi\r\nSợi polyester trong chất liệu Endurance+ được làm từ 100% chất thải tiêu dùng, chẳng hạn như chai nhựa tái chế', '8-00374117538-2_900x.jpg', '1899000', 1800000, 34, 'quan-boi-nam-speedo-end-max-compression', 0, 1, 11, 7, 0, '2024-11-20 22:55:08', '2024-11-20 22:55:08'),
(37, 'Đồ Bơi Một Mảnh Nữ Speedo Hero 5.0 - Xanh Navy', '673ecbff0554f', '<p><strong>ĐỒ BƠI MỘT MẢNH NỮ SPEEDO HERO 5.0</strong></p>\r\n\r\n<p>Những l&agrave;n s&oacute;ng kh&ocirc;ng bao giờ dừng lại v&agrave; sự đổi mới kh&ocirc;ng bao giờ ngừng tiến bước. Speedo Black Label 5.0 mới được n&acirc;ng cấp, lấy cảm hứng từ đại dương v&ocirc; tận v&agrave; bầu trời sao rộng lớn. Sản phẩm đến từ bộ sưu tập được cải tiến vượt bậc với vải c&ocirc;ng nghệ Endurance + MAX từ &Yacute; gi&uacute;p kh&aacute;ng clo vượt trội v&agrave; kh&ocirc; nhanh sau khi bơi, mang lại sự thoải m&aacute;i v&agrave; phong c&aacute;ch ho&agrave;n hảo.</p>\r\n\r\n<p>Đồ bơi một mảnh nữ Speedo Hero 5.0 được thiết kế với đường cổ cong tối giản v&agrave; c&aacute;c chi tiết mượt m&agrave;, tạo điểm nhấn tuyệt đẹp cho h&igrave;nh thể thể thao uyển chuyển v&agrave; thanh tho&aacute;t hơn. C&aacute;c chi tiết cut-out bằng laser tinh tế v&agrave; ấn tượng gi&uacute;p bạn tự tin tỏa s&aacute;ng với phong c&aacute;ch đầy cuốn h&uacute;t.</p>', 'THÔNG SỐ\r\nSử dụng vải Endurance+ MAX thế hệ mới được nhập khẩu từ Italy, có khả năng chống nước tuyệt vời, giúp đồ bơi không bám dính và ôm vừa vặn, khô nhanh sau khi bơi và đặc biệt có khả năng kháng clo 100% giúp giữ cho đồ bơi luôn bền đẹp.\r\nThiết kế kết hợp các loại vải đa dạng, tối ưu hóa việc tôn lên các đường nét cơ thể uyển chuyển và thon gọn\r\nKhả năng chống tia UV hơn 98%, bảo vệ da và tạo sự tự tin khi tham gia các hoạt động ngoài trời.\r\n100% chất liệu tái chế - sợi Polyester và PBT được làm từ 100% chất thải sau tiêu thụ, như chai nhựa tái chế.\r\nChất liệu: Thân trên: 53% Polyester, 47% PBT Polyester, sợi tái chế Polyester (100%); Lưới: 70% Polyester, 30% Elastane.\r\nLớp lót: Giảm ma sát và mang lại cảm giác êm ái để đảm bảo sự thoải mái và bảo vệ tối đa.\r\nCó đệm ngực: Hỗ trợ nâng đỡ tạo hình và ôm trọn mang lại sự tự tin và thoải mái trong quá trình vận động', '8-15959396-2_900x.jpg', '2499000', 2200000, 23, 'do-boi-mot-manh-nu-speedo-hero-50-xanh-navy', 0, 1, 11, 7, 0, '2024-11-20 23:00:25', '2024-11-20 23:08:20'),
(38, 'Bộ Đồ Bơi Chống Nắng Nữ Speedo Swim Dress - Xanh Dương', '673ecc7bc1fdf', '<p><strong>BỘ ĐỒ BƠI CHỐNG NẮNG NỮ SPEEDO SWIM DRESS - XANH DƯƠNG</strong></p>\r\n\r\n<p>Tạo sự tự tin khi bơi tại hồ bơi hoặc tr&ecirc;n b&atilde;i biển với Bộ Đồ Bơi Nữ Speedo Swim Dress m&agrave;u xanh đậm h&uacute;t mắt n&agrave;y. Thiết kế c&oacute; độ che phủ cao, lưng cao v&agrave; kh&oacute;a zip ph&iacute;a sau tiện lợi mang lại vẻ k&iacute;n đ&aacute;o nhưng kh&ocirc;ng k&eacute;m phần cuốn h&uacute;t v&agrave; rất dễ d&agrave;ng khi mặc. Lớp l&oacute;t ngực hỗ trợ nhẹ nh&agrave;ng, giữ ổn định trong suốt qu&aacute; tr&igrave;nh vận động. Đặc biệt, chất vải EnduraBrite kết hợp c&ocirc;ng nghệ CREORA&reg; HighClo&trade; c&oacute; khả năng chống chlorine v&agrave; giữ m&agrave;u sắc tươi mới</p>', 'THÔNG SỐ\r\nĐộ che phủ cao với khóa kéo lưng tiện lợi\r\nHỗ trợ ngực nhẹ với lớp lót ngực cổ điển giữ ngực ổn định.\r\nKháng clo tốt hơn vải bơi tiêu chuẩn - giữ dáng như mới lâu hơn với CREORA® HighClo™.\r\nĐộ bền màu cao - hỗ trợ màu sắc tươi sáng và rực rỡ.\r\nLàm từ chai nhựa tái chế - sợi Polyester trong vải EnduraBrite làm từ 100% chất thải tái chế.', '8-00372317576-2_900x.jpg', '2099000', 2000000, 65, 'bo-do-boi-chong-nang-nu-speedo-swim-dress-xanh-duong', 0, 1, 11, 7, 0, '2024-11-20 23:01:30', '2024-11-20 23:08:27'),
(39, 'Áo Đá Bóng Nam Adidas Real Preshi - Trắng', '673ecd418da95', '<p><strong>&Aacute;O Đ&Aacute; B&Oacute;NG NAM ADIDAS REAL PRESHI</strong></p>\r\n\r\n<p>Trước trận đấu, quan trọng nhất l&agrave; sự tập trung. Vậy n&ecirc;n h&atilde;y mặc chiếc &aacute;o đấu b&oacute;ng đ&aacute; adidas Real Madrid n&agrave;y v&agrave; sẵn s&agrave;ng cho mọi thử th&aacute;ch ph&iacute;a trước. C&ocirc;ng nghệ AEROREADY kiểm so&aacute;t ẩm gi&uacute;p bạn lu&ocirc;n thoải m&aacute;i khi chạy v&agrave; gi&atilde;n cơ. Lấy cảm hứng từ chiếc &aacute;o đấu s&acirc;n kh&aacute;ch đầy sao của CLB, &aacute;o c&oacute; thiết kế sống động phủ to&agrave;n bộ đi k&egrave;m với huy hiệu CLB th&ecirc;u nổi.</p>\r\n\r\n<p>Sản phẩm n&agrave;y l&agrave;m từ 100% chất liệu t&aacute;i chế. Bằng c&aacute;ch t&aacute;i sử dụng c&aacute;c chất liệu đ&atilde; được tạo ra, ch&uacute;ng t&ocirc;i g&oacute;p phần giảm thiểu l&atilde;ng ph&iacute; v&agrave; hạn chế phụ thuộc v&agrave;o c&aacute;c nguồn t&agrave;i nguy&ecirc;n hữu hạn, cũng như giảm ph&aacute;t thải từ c&aacute;c sản phẩm m&agrave; ch&uacute;ng t&ocirc;i sản xuất.</p>', 'THÔNG SỐ\r\nDáng regular fit\r\nCổ tròn bo gân\r\nVải dệt interlock làm từ 100% polyester tái chế\r\nChất vải mềm mại\r\nAEROREADY\r\nHuy hiệu Real Madrid thêu nổi', 'IT5101-1.jpg', '1500000', NULL, 28, 'ao-da-bong-nam-adidas-real-preshi-trang', 1, 0, 10, 8, 0, '2024-11-20 23:07:07', '2024-11-24 01:29:58'),
(40, 'Áo Đá Bóng Trẻ Em Adidas Manchester United Sân Nhà 24/25 - Đỏ', '673ece0fcfb26', '<p><strong>&Aacute;O Đ&Aacute; B&Oacute;NG TRẺ EM ADIDAS MANCHESTER UNITED 24/25 HOME</strong></p>\r\n\r\n<p>Ngắm nh&igrave;n Manchester United tr&ecirc;n s&acirc;n Old Trafford với lửa đam m&ecirc; rực ch&aacute;y! V&agrave;o m&ugrave;a giải 24/25, mẫu &aacute;o đấu s&acirc;n nh&agrave; kinh điển của CLB c&agrave;ng nổi bật hơn với c&aacute;c mảng phối m&agrave;u đỏ tươi ở hai b&ecirc;n v&agrave; thiết kế chuyển m&agrave;u tinh tế ở mặt trước v&agrave; mặt sau. Với thiết kế d&agrave;nh cho cổ động vi&ecirc;n, &Aacute;o Đ&aacute; B&oacute;ng Trẻ Em Adidas Manchester United 24/25 Home sử dụng c&ocirc;ng nghệ Aeroready gi&uacute;p kiểm so&aacute;t ẩm v&agrave; tạo ấn tượng với huy hiệu th&ecirc;u nổi. Sản phẩm n&agrave;y l&agrave;m từ 100% chất liệu t&aacute;i chế, g&oacute;p phần giảm thiểu l&atilde;ng ph&iacute; v&agrave; hạn chế phụ thuộc v&agrave;o c&aacute;c nguồn t&agrave;i nguy&ecirc;n hữu hạn, cũng như giảm ph&aacute;t thải từ c&aacute;c sản phẩm m&agrave; adidas sản xuất.</p>', 'THÔNG SỐ\r\nKiểu dáng vừa vặn, thoải mái (Regular fit)\r\nCổ tròn\r\n100% polyester (tái chế)\r\nAEROREADY\r\nCác mảng lưới hai bên\r\nHuy hiệu Manchester United thêu nổi', 'IT1972-1.jpg', '1500000', 1300000, 68, 'ao-da-bong-tre-em-adidas-manchester-united-san-nha-2425-do', 1, 0, 10, 8, 0, '2024-11-20 23:07:56', '2024-11-20 23:08:33'),
(41, 'Áo Đá Bóng Nam Adidas Manchester United Sân Nhà 24/25 Authentic - Đỏ', '673eced5d7aac', '<p><strong>&Aacute;O Đ&Aacute; B&Oacute;NG NAM ADIDAS MANCHESTER UNITED 24/25 HOME AUTHENTIC</strong></p>\r\n\r\n<p>Khơi gợi h&igrave;nh ảnh Manchester United tr&ecirc;n s&acirc;n Old Trafford c&ugrave;ng &Aacute;o Đ&aacute; B&oacute;ng Nam Adidas Manchester United 24/25 Home Authentic! Người h&acirc;m mộ ở qu&ecirc; nh&agrave; y&ecirc;u th&iacute;ch họ v&agrave; ngay cả đối thủ cũng kh&ocirc;ng thể bỏ qua họ. V&agrave;o m&ugrave;a giải 24/25, mẫu &aacute;o đấu s&acirc;n nh&agrave; kinh điển của CLB c&agrave;ng nổi bật hơn với c&aacute;c mảng phối m&agrave;u đỏ tươi ở hai b&ecirc;n v&agrave; thiết kế chuyển m&agrave;u tinh tế ở mặt trước v&agrave; mặt sau. Phi&ecirc;n bản nguy&ecirc;n mẫu adidas n&agrave;y sử dụng c&ocirc;ng nghệ HEAT.RDY tho&aacute;ng kh&iacute; v&agrave; c&aacute;c chi tiết si&ecirc;u nhẹ cho lối chơi tự tin. Sản phẩm n&agrave;y l&agrave;m từ 100% chất liệu t&aacute;i chế, g&oacute;p phần giảm thiểu l&atilde;ng ph&iacute; v&agrave; hạn chế phụ thuộc v&agrave;o c&aacute;c nguồn t&agrave;i nguy&ecirc;n hữu hạn, cũng như giảm ph&aacute;t thải từ c&aacute;c sản phẩm m&agrave; ch&uacute;ng t&ocirc;i sản xuất.</p>', 'THÔNG SỐ\r\nKiểu dáng ôm vừa vặn cơ thể (Slim fit)\r\nCổ tròn\r\n100% polyester (tái chế)\r\nHEAT.RDY\r\nHuy hiệu Manchester United in nhiệt', 'JF1291-1.jpg', '3000000', 2900000, 78, 'ao-da-bong-nam-adidas-manchester-united-san-nha-2425-authentic-do', 1, 0, 7, 8, 0, '2024-11-20 23:13:45', '2024-11-20 23:15:32'),
(42, 'Áo Đá Bóng Nam Nike Barcelona 24/25 Stadium Home - Đỏ', '673ecf9e53e3b', '<p><strong>&Aacute;O Đ&Aacute; B&Oacute;NG NAM NIKE BARCELONA 24/25 STADIUM HOME</strong></p>\r\n\r\n<p>Sẵn s&agrave;ng cho mọi trận đấu với &aacute;o b&oacute;ng rổ Nike Dri-FIT DNA. Với thiết kế thoải m&aacute;i v&agrave; nhẹ nh&agrave;ng, &aacute;o sử dụng c&ocirc;ng nghệ Dri-FIT để thấm h&uacute;t mồ h&ocirc;i, gi&uacute;p bạn lu&ocirc;n m&aacute;t mẻ. Chất liệu lưới th&ocirc;ng tho&aacute;ng v&agrave; bền bỉ đảm bảo bạn c&oacute; thể vận động thoải m&aacute;i m&agrave; kh&ocirc;ng bị g&ograve; b&oacute;. Thiết kế cổ v&agrave; c&aacute;nh tay kẻ sọc tạo n&ecirc;n phong c&aacute;ch thể thao năng động.</p>', 'THÔNG SỐ\r\nCông nghệ Dri-FIT thấm hút mồ hôi hiệu quả\r\nChất liệu lưới nhẹ và thoáng khí\r\nThiết kế cổ và tay áo kẻ sọc\r\nLogo Swoosh thêu tinh tế\r\nChất liệu: 100% polyester\r\nMã sản phẩm: FN8797-456', 'FN8797-456-1.jpg', '2639000', 2600000, 49, 'ao-da-bong-nam-nike-barcelona-2425-stadium-home-do', 1, 0, 6, 8, 0, '2024-11-20 23:14:51', '2024-12-19 23:14:26'),
(43, 'Ba Lô Thể Thao Columbia Atlas Explorer™ 26L - Xanh Quân Đội', '673ed0b997f0d', '<p><strong>BA L&Ocirc; THỂ THAO COLUMBIA ATLAS EXPLORER&trade; 26L</strong></p>\r\n\r\n<p>Với thiết kế tinh tế, trẻ trung c&ugrave;ng những t&iacute;nh năng tiện dụng, Atlas Explorer&trade; kh&ocirc;ng chỉ l&agrave; một chiếc ba l&ocirc; đơn thuần m&agrave; c&ograve;n l&agrave; phụ kiện thời trang thể hiện phong c&aacute;ch sống năng động, hiện đại của bạn. Chiếc ba l&ocirc; n&agrave;y sẽ đồng h&agrave;nh c&ugrave;ng bạn trong mọi hoạt động thường ng&agrave;y, từ chinh phục những t&ograve;a nh&agrave; chọc trời cho đến kh&aacute;m ph&aacute; những cung đường mới lạ.</p>', 'THÔNG SỐ\r\nThể tích: 26L\r\nKích thước: 47 cm (Dài) x 31.4 cm (Ngang) x 22.2cm (Rộng)\r\nTrọng lượng: 570g (1 lb 2.7 oz)\r\nChất liệu: Vải cao cấp chống thấm nước\r\nNgăn chứa: Hai ngăn chính, ngăn đựng laptop riêng biệt (lên đến 15 inch), ngăn đựng máy tính bảng riêng biệt, ngăn phụ tổ chức, hai túi đựng nước bên hông, túi zip nhanh lấy đồ ở mặt trước.\r\nDây đeo: Hệ thống dây đeo vai Contour™ êm ái, thoáng khí, dây đeo ngực có thể điều chỉnh.\r\nKhóa kéo: Khóa kéo YKK bền bỉ, phản quang an toàn.', '1955401278-3.jpg', '1014000', 1000000, 84, 'ba-lo-the-thao-columbia-atlas-explorer-26l-xanh-quan-doi', 0, 0, 3, 9, 0, '2024-11-20 23:19:50', '2024-12-19 23:14:10'),
(44, 'Ba Lô Thể Thao Columbia Atlas Explorer™ 26L - Xanh Dương', '673ed11014a4c', '<p><strong>BA L&Ocirc; THỂ THAO UNISEX COLUMBIA ATLAS EXPLORER&trade; 26L&nbsp;</strong></p>\r\n\r\n<p>Ba l&ocirc; 26 l&iacute;t linh hoạt n&agrave;y được chế tạo để mang theo những vật dụng cần thiết của bạn một c&aacute;ch thoải m&aacute;i từ nơi l&agrave;m việc cho đến khi đi bộ đường d&agrave;i trong ng&agrave;y.</p>\r\n\r\n<p>Đặc biệt, chiếc ba l&ocirc; c&oacute; ngăn chứa m&aacute;y t&iacute;nh x&aacute;ch tay c&oacute; đệm (v&agrave; l&oacute;t l&ocirc;ng cừu), d&acirc;y đai vai v&agrave; xương ức c&oacute; thể điều chỉnh được, t&uacute;i đựng chai nước k&eacute;p v&agrave; bộ lưu trữ bungee b&ecirc;n ngo&agrave;i tiện lợi.&nbsp;</p>', 'THÔNG SỐ\r\n\r\nDây vải Twin Slot ™ linh hoạt và có thể tùy chỉnh\r\nNgăn chứa máy tính xách tay có đệm và lót lông cừu, phù hợp với máy tính xách tay lên đến 15”\r\nHệ thống túi được thiết kế tiện lợi\r\nDây kéo phản quang\r\nDây đeo vai có đệm đường viền\r\nĐáy ba lô có đệm phẳng hỗ trợ \r\nDung tích: 1525,59 cu. In. / 25 L\r\nKích thước: 8,13\" x 12\" x 18,38\" / 20,7 x 30,5 x 46,7 cm\r\nTrọng lượng: 14,9 oz / 422 g\r\nChất liệu: 100% polyester', '1955401432-3.jpg', '676000', NULL, 44, 'ba-lo-the-thao-columbia-atlas-explorer-26l-xanh-duong', 0, 0, 3, 9, 0, '2024-11-20 23:20:46', '2024-11-20 23:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Giày thể thao', 'abc', 'giay-the-thao', 1, '2020-06-30 00:00:28', '2024-11-13 08:06:12'),
(2, 'Giày đá bóng', 'Giày đá bóng', 'giay-da-bong', 0, '2020-06-30 00:02:00', '2024-11-19 00:09:41'),
(3, 'Tai Nghe', 'abc', 'tai-nghe', 1, '2020-06-30 00:02:38', '2020-08-13 00:08:42'),
(4, 'Pin', 'abc', 'pin', 1, '2020-06-30 00:03:18', '2020-08-13 00:08:39'),
(5, 'Charger', 'abc', 'charger', 1, '2020-06-30 00:04:23', '2020-08-13 00:08:36'),
(6, 'Giày chạy bộ', 'Giày chạy bộ', 'giay-chay-bo', 0, '2020-08-22 00:12:24', '2024-11-19 00:10:00'),
(7, 'Đồ bơi', 'Đồ bơi', 'do-boi', 0, '2021-04-04 04:26:51', '2024-11-19 00:10:36'),
(8, 'Áo đá bóng', 'Áo đá bóng', 'ao-da-bong', 0, '2021-06-08 21:51:40', '2024-11-19 00:12:28'),
(9, 'Balo', 'Balo', 'balo', 0, '2021-06-08 21:51:53', '2024-11-19 00:12:57'),
(10, 'Túi thể thao', 'Túi thể thao', 'tui-the-thao', 0, '2021-06-08 21:52:27', '2024-11-19 00:13:05'),
(11, 'Bình nước', 'Bình nước', 'binh-nuoc', 0, '2021-06-08 21:52:47', '2024-11-19 00:13:37'),
(12, 'Mũ', 'Mũ', 'mu', 0, '2021-06-08 21:53:10', '2024-11-19 00:13:26'),
(13, 'Găng tay', 'Găng tay', 'gang-tay', 0, '2021-06-08 21:53:24', '2024-11-19 00:13:48'),
(14, 'asdasd', 'asdas', 'asdasd', 1, '2021-06-09 03:14:28', '2021-06-09 03:17:12'),
(15, 'ádasd', 'ádsad', 'adasd', 1, '2021-06-10 21:21:21', '2021-06-10 21:22:40'),
(16, 'Áo Khoác', 'Áo Khoác', 'ao-khoac', 0, '2024-11-19 00:14:30', '2024-11-19 00:14:30'),
(17, 'Giày leo núi', 'Giày leo núi', 'giay-leo-nui', 0, '2024-11-19 00:14:51', '2024-11-19 00:14:51'),
(18, 'Băng đô', 'Băng đô', 'bang-do', 0, '2024-11-19 00:15:12', '2024-11-19 00:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'ROLE_ADMIN', 'Administrator', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'ROLE_MANAGER', 'Manager', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'ROLE_STAFF', 'Staff', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'ROLE_CUSTOMER', 'Customer', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(25, 4, 16, NULL, NULL),
(26, 4, 17, NULL, NULL),
(27, 1, 1, NULL, NULL),
(28, 4, 18, NULL, NULL),
(29, 4, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `content`, `description`, `image`, `url`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'KHUYẾN MÃI MỚI SALE KHỔNG LỒ - GIẢM SỐC 21 - 50% Tháng 12  - quà ngập nhà', 'Khuyến mãi đặc biệt cuối năm !!!', 'banner1.jpg', '/product-all', 0, '2020-07-02 07:34:10', '2024-11-21 20:44:24'),
(2, 'CHÍNH SÁCH BẢO HÀNH DÀNH CHO KHÁCH HÀNG', 'Đổi 1 vs 1 - Hoàn trả cũ lấy mới thu hồi nếu lỗi trong vòng 1 tuần', 'banner2.jpg', '/product-all', 0, '2020-07-02 07:34:29', '2024-11-21 20:44:31'),
(3, 'KHUYẾN MÃI MỚI SALE KHỔNG LỒ - GIẢM SỐC đến 50% ngày 25/12', 'Ưu đãi giảm giá siêu hot đối với tất cả các mặt hàng nhân dịp Noel', 'banner3.jpg', '#product-all', 0, '2020-07-02 07:34:40', '2024-11-20 22:49:26'),
(4, 'KHUYẾN MÃI MỚI SALE KHỔNG LỒ - GIẢM SỐC 21 - 50% Tháng 12  - quà ngập nhà', 'ádsadasd', 'banner1.jpg', '/product-all', 1, '2024-11-21 20:10:39', '2024-11-21 20:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reset_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `email_verified_at`, `password`, `reset_password`, `remember_token`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'tieulang2k2@gmail.com', 'admin@gmail.com', 0, NULL, '$2y$10$XNRDaJoNMaEjKNn1obRv4uxfl/TvlqyOjyxUu8/9tVPycV4D04slO', NULL, NULL, 0, '2020-06-29 01:00:44', '2024-12-08 22:17:38'),
(16, 'TuanPham', 'tieulang2k2@gmail.com', 1, NULL, '$2y$10$o.O87yuEjiYeh5VCdcTAfOkaUbPnPI9UJbLvsXcMQvVrEYr4cR90G', NULL, 'mFBQcloAKzTeTtB2zxpQah5nRFa9hXtdXS7uYZMFzyh89dp79f3UiW17o4mF', 0, '2024-11-12 03:02:13', '2024-11-20 20:52:01'),
(17, 'VanTuan', 'tuanpham202k2@gmail.com', 1, NULL, '$2y$10$Tw4H5ufb5QQ5LvN2LcxUuOrFZ6v6FGGKPNTT6m1ieHqfxH5rkPpr6', NULL, 'jwvQ9rjiV4KN7lTdbtaXZJi3DVbiKH00GE6NxnpeWJp1N7vw5lnGP68c9fFW', 0, '2024-11-21 21:29:13', '2024-11-25 00:59:46'),
(18, 'PhamTuan', 'tieulang2k2@gmail.com', 1, NULL, '$2y$10$HOUALu5sQI/7pC47L6GiRuzW0jSpngbnljLOhVDIN2xxAoYPvftB2', NULL, 't4ySqvyKGaopEWrwPc2SuPk6PJ8D9cPJz5DwuqQIjNIgdfaHmkhnmUpXlFAO', 0, '2024-11-29 04:30:53', '2024-11-29 04:30:53'),
(19, 'TuanPham', 'tuan202k2@gmail.com', 1, NULL, '$2y$10$8JkrVg6Q7ukRhluLcCddnuKwKm68EoiwKYIDUnTSoV2Wc6QOnJTpq', NULL, 'rskMnZFesxkcmp5N7BihZUFwLqI7R2b0D68ucTfVYksOghb4OWUFNqVIm9tF', 0, '2024-12-14 00:06:45', '2024-12-14 00:06:45');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
