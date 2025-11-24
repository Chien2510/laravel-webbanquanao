-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2024 lúc 04:05 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `WebBanQuanAo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `apartment_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `city`, `district`, `ward`, `apartment_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '203', '1527', '40202', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(2, 3, '203', '1527', '40210', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(3, 1, '232', '2027', '240505', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-09-21 17:40:12', NULL),
(8, 9, '269', '2264', '90816', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(9, 10, '269', '2264', '90816', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(10, 11, '269', '2264', '90816', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(11, 12, '269', '2073', '80415', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(12, 13, '232', '2027', '240502', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(13, 14, '269', '2264', '90816', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(14, 15, '269', '2264', '90816', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(15, 16, '269', '2264', '90816', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(16, 17, '269', '2264', '90816', '130 Điện Biên Phủ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(17, 18, '213', '3158', '560311', '130 Điện Biên Phủ', '2024-08-26 19:18:38', '2024-09-20 14:34:27', NULL),
(18, 19, '232', '2027', '240502', '130 Điện Biên Phủ', '2024-09-16 13:09:17', '2024-09-16 13:09:17', NULL),
(19, 20, '269', '2264', '90816', '130 Điện Biên Phủ', '2024-09-17 15:13:30', '2024-09-17 15:13:30', NULL),
(20, 21, '246', '3694', '800325', '130 Điện Biên Phủ', '2024-09-20 16:04:28', '2024-09-20 16:04:28', NULL),
(21, 22, '269', '2264', '90816', '130 Điện Biên Phủ', '2024-09-20 16:16:54', '2024-09-20 16:16:54', NULL),
(22, 23, '248', '1966', '180330', '130 Điện Biên Phủ', '2024-09-21 17:22:59', '2024-09-21 17:22:59', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nike', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(2, 'Gucci', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(3, 'Adidas', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(4, 'Chanel', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(5, 'Uniqlo', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(6, 'Trường thúy', '2024-09-21 17:16:29', '2024-09-21 17:16:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `parent_id`, `slug`) VALUES
(1, 'Thời Trang Nam', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 0, 'thoi-trang-nam'),
(2, 'Thời Trang Nữ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 0, 'thoi-trang-nu'),
(3, 'Áo polo', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 1, 'ao-polo'),
(4, 'Áo thể thao', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 1, 'ao-the-thao'),
(5, 'Áo Sơ Mi', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 1, 'ao-so-mi'),
(6, 'Áo Thun', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 1, 'ao-thun'),
(7, 'Quần Jeans', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 1, 'quan-jeans'),
(8, 'Quần Shorts', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 1, 'quan-shorts'),
(9, 'Áo Thun', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 2, 'ao-thun-1'),
(10, 'Đầm Váy', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 2, 'dam-vay'),
(11, 'Áo Sơ Mi', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 2, 'ao-so-mi-1'),
(12, 'Chân Váy', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 2, 'chan-vay'),
(13, 'Quần Jeans', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL, 2, 'quan-jeans-1'),
(14, 'Lê Hữu Phước', '2024-08-10 13:25:03', '2024-08-10 13:25:03', '2023-09-25 13:25:10', 1, 'le-huu-phuoc'),
(15, 'Quần legging', '2024-09-21 17:16:54', '2024-09-21 17:16:54', NULL, 2, 'quan-legging');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trắng', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(2, 'Đen', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(3, 'Xám', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(4, 'Đỏ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(5, 'Vàng', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(6, 'Xanh', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(7, 'Tím', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(8, 'XANH NHAT', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(9, 'Đỏ', '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(10, 'Xanh dương', '2024-09-20 14:48:21', '2024-09-20 14:48:21', NULL),
(11, 'Nâu', '2024-09-20 15:09:19', '2024-09-20 15:09:19', NULL),
(12, 'Be', '2024-09-21 17:17:13', '2024-09-21 17:17:13', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_06_054552_create_roles_table', 1),
(3, '2023_02_06_093103_create_users_table', 1),
(4, '2023_02_06_093104_create_addresses_table', 1),
(5, '2023_02_09_141232_create_user_verifies_table', 1),
(6, '2023_02_17_101710_create_brands_table', 1),
(7, '2023_03_13_104142_create_colors_table', 1),
(8, '2023_03_13_104200_create_sizes_table', 1),
(9, '2023_03_15_111222_create_categories_table', 1),
(10, '2023_03_16_130121_create_products_table', 1),
(11, '2023_03_16_140642_create_products_color_table', 1),
(12, '2023_03_16_140906_create_products_size_table', 1),
(13, '2023_03_23_091419_create_payments_table', 1),
(14, '2023_03_23_095605_create_orders_table', 1),
(15, '2023_03_27_001440_create_order_details_table', 1),
(16, '2023_03_28_004112_alert_orders_table', 1),
(17, '2023_03_28_004113_alert_orders_table', 1),
(18, '2023_03_28_143413_alert_products_size_table', 1),
(19, '2023_03_28_144341_alert_products_color_table', 1),
(20, '2023_03_28_144345_alert_products_table', 1),
(21, '2023_03_28_144347_alert_orders_table', 1),
(22, '2023_03_28_144348_create_trigger_validate_quantity', 1),
(23, '2023_03_28_144349_create_trigger_group_by_quantity', 1),
(24, '2023_04_11_111222_alter_categories_table', 1),
(25, '2023_04_11_111223_alter_categories_table', 1),
(26, '2023_04_13_114627_create_product_reviews_table', 1),
(27, '2023_04_17_180428_drop_personal_access_tokens_table', 1),
(28, '2023_04_13_114628_alter_products_size_table ', 2),
(29, '2023_04_30_114628_alter_product_table ', 3),
(30, '2023_04_18_180428_create_setting_table', 4),
(31, '2023_04_19_180428_alter_setting_table', 4),
(32, '2023_03_28_144348_create_reduce_quantity_product_trigger', 5),
(33, '2023_05_1_114628_alter_payments_table ', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `total_money` double NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `transport_fee` double NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `total_money`, `order_status`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`, `deleted_at`, `transport_fee`, `note`, `payment_status`) VALUES
(1726933756839, 19, 1, 730501, 3, 'Nguyen Lanh', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-08 15:49:16', '2024-09-10 15:49:52', NULL, 31501, NULL, 0),
(1726934360762, 19, 1, 941000, 3, 'Nguyen Lanh', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-21 15:59:20', '2024-09-21 16:22:48', NULL, 44000, NULL, 0),
(1726934988894, 19, 2, 2130501, 3, 'Nguyen Lanh', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-18 16:10:37', '2024-09-21 16:23:42', NULL, 31501, NULL, 0),
(1726935072900, 19, 3, 530501, 1, 'Nguyen Lanh', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-21 16:11:53', '2024-09-21 16:23:02', NULL, 31501, NULL, 0),
(1726935704686, 19, 1, 1912500, 4, 'Nguyen Lanh', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-16 16:21:44', '2024-09-21 16:26:23', NULL, 15500, NULL, 0),
(1726935907879, 16, 1, 1434500, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-04 16:25:07', '2024-09-21 16:26:45', NULL, 36500, NULL, 0),
(1726935946885, 16, 1, 535500, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-15 16:25:46', '2024-09-21 17:04:58', '2024-09-21 17:04:58', 36500, NULL, 0),
(1726936294838, 18, 1, 1239000, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-01 16:31:34', '2024-09-21 16:32:05', NULL, 41000, NULL, 0),
(1726936449309, 21, 1, 633000, 3, 'Nguyen Chi', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-03 16:34:09', '2024-09-21 16:34:54', NULL, 34000, NULL, 0),
(1726936859914, 21, 1, 734500, 3, 'Nguyen Chi', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-21 16:40:59', '2024-09-21 16:41:30', NULL, 36500, NULL, 0),
(1726936970320, 21, 1, 435500, 3, 'Nguyen Chi', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-21 16:42:50', '2024-09-21 16:43:30', NULL, 36500, NULL, 0),
(1726938036850, 16, 3, 335500, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-08 17:01:29', '2024-09-21 17:02:19', NULL, 36500, NULL, 0),
(1726938212402, 16, 1, 426500, 2, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-02 17:03:32', '2024-09-04 17:03:37', NULL, 36500, NULL, 0),
(1726938265463, 16, 1, 435500, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-17 17:04:25', '2024-09-21 17:04:50', NULL, 36500, NULL, 0),
(1726938331771, 16, 1, 435500, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-16 17:05:31', '2024-09-21 17:06:26', NULL, 36500, NULL, 0),
(1726938568795, 16, 2, 335500, 0, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-10 17:10:32', '2024-09-10 17:10:32', NULL, 36500, NULL, 0),
(1726938668981, 16, 1, 5223500, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-08-05 17:11:08', '2024-09-21 17:11:38', NULL, 36500, NULL, 0),
(1726938734727, 16, 1, 426500, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-08-12 17:12:14', '2024-09-21 17:13:30', NULL, 36500, NULL, 0),
(1726939452636, 23, 1, 633000, 3, 'Nguễn xuân', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-07-28 17:24:12', '2024-09-21 17:24:50', NULL, 34000, NULL, 0),
(1726939533577, 23, 1, 335500, 3, 'Nguễn xuân', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-07-15 17:25:33', '2024-09-21 17:26:03', NULL, 36500, NULL, 0),
(1726939613659, 23, 1, 434000, 3, 'Nguễn xuân', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-07-16 17:26:53', '2024-09-21 17:27:15', NULL, 34000, NULL, 0),
(1726939688611, 23, 1, 835500, 3, 'Nguễn xuân', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-08-21 17:28:08', '2024-09-21 17:28:34', NULL, 36500, NULL, 0),
(1726939784852, 23, 1, 735500, 3, 'Nguễn xuân', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-08-18 17:29:44', '2024-09-21 17:30:18', NULL, 36500, NULL, 0),
(1726939885227, 23, 1, 435500, 3, 'Nguễn xuân', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-08-18 17:31:25', '2024-09-21 17:31:50', NULL, 36500, NULL, 0),
(1726940096254, 23, 1, 535500, 3, 'Nguễn xuân', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-06-30 17:34:56', '2024-07-09 17:35:20', NULL, 36500, NULL, 0),
(1726940200717, 23, 1, 835500, 0, 'Nguễn xuân', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-06 17:36:40', '2024-09-21 17:36:40', NULL, 36500, NULL, 0),
(1726940537146, 18, 1, 340000, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-10 17:42:17', '2024-09-21 17:43:09', NULL, 41000, NULL, 0),
(1726940632865, 18, 1, 540000, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-21 17:43:52', '2024-09-21 17:44:18', NULL, 41000, NULL, 0),
(1726940880223, 16, 1, 2026500, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-12 17:48:00', '2024-09-21 17:48:27', NULL, 36500, NULL, 0),
(1726941105731, 16, 1, 235500, 3, 'lan nguyen', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-04 17:51:45', '2024-09-10 17:52:18', NULL, 36500, NULL, 0),
(1726941348872, 23, 1, 435500, 3, 'Nguễn xuân', 'test123@gmail.com', '0845111111', 'test123@gmail.com', '2024-09-13 17:55:48', '2024-09-21 17:56:22', NULL, 36500, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_size_id` bigint(20) UNSIGNED NOT NULL,
  `import_price` double NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_size_id`, `import_price`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
(56, 1726933756839, 409, 600000, 699000, 1, '2024-09-21 15:49:16', '2024-09-21 15:49:16'),
(57, 1726934360762, 401, 200000, 299000, 3, '2024-09-21 15:59:20', '2024-09-21 15:59:20'),
(58, 1726934988894, 415, 200000, 300000, 6, '2024-09-21 16:10:37', '2024-09-21 16:10:37'),
(59, 1726934988894, 401, 200000, 299000, 1, '2024-09-21 16:10:37', '2024-09-21 16:10:37'),
(60, 1726935072900, 396, 400000, 499000, 1, '2024-09-21 16:11:53', '2024-09-21 16:11:53'),
(61, 1726935704686, 384, 700000, 799000, 1, '2024-09-21 16:21:44', '2024-09-21 16:21:44'),
(62, 1726935704686, 396, 400000, 499000, 1, '2024-09-21 16:21:44', '2024-09-21 16:21:44'),
(63, 1726935704686, 376, 500000, 599000, 1, '2024-09-21 16:21:44', '2024-09-21 16:21:44'),
(64, 1726935907879, 362, 800000, 899000, 1, '2024-09-21 16:25:07', '2024-09-21 16:25:07'),
(65, 1726935907879, 349, 400000, 499000, 1, '2024-09-21 16:25:07', '2024-09-21 16:25:07'),
(66, 1726935946885, 349, 400000, 499000, 1, '2024-09-21 16:25:46', '2024-09-21 16:25:46'),
(67, 1726936294838, 405, 300000, 399000, 1, '2024-09-21 16:31:34', '2024-09-21 16:31:34'),
(68, 1726936294838, 334, 700000, 799000, 1, '2024-09-21 16:31:34', '2024-09-21 16:31:34'),
(69, 1726936449309, 401, 200000, 299000, 1, '2024-09-21 16:34:09', '2024-09-21 16:34:09'),
(70, 1726936449309, 415, 200000, 300000, 1, '2024-09-21 16:34:09', '2024-09-21 16:34:09'),
(71, 1726936859914, 405, 300000, 399000, 1, '2024-09-21 16:40:59', '2024-09-21 16:40:59'),
(72, 1726936859914, 321, 200000, 299000, 1, '2024-09-21 16:40:59', '2024-09-21 16:40:59'),
(73, 1726936970320, 10, 300000, 399000, 1, '2024-09-21 16:42:50', '2024-09-21 16:42:50'),
(74, 1726938036850, 139, 200000, 299000, 1, '2024-09-21 17:01:29', '2024-09-21 17:01:29'),
(75, 1726938212402, 2, 300000, 390000, 1, '2024-09-21 17:03:32', '2024-09-21 17:03:32'),
(76, 1726938265463, 10, 300000, 399000, 1, '2024-09-21 17:04:25', '2024-09-21 17:04:25'),
(77, 1726938331771, 10, 300000, 399000, 1, '2024-09-21 17:05:31', '2024-09-21 17:05:31'),
(78, 1726938568795, 294, 200000, 299000, 1, '2024-09-21 17:10:32', '2024-09-21 17:10:32'),
(79, 1726938668981, 20, 300000, 399000, 13, '2024-09-21 17:11:08', '2024-09-21 17:11:08'),
(80, 1726938734727, 2, 300000, 390000, 1, '2024-09-21 17:12:14', '2024-09-21 17:12:14'),
(81, 1726939452636, 376, 500000, 599000, 1, '2024-09-21 17:24:12', '2024-09-21 17:24:12'),
(82, 1726939533577, 294, 200000, 299000, 1, '2024-09-21 17:25:33', '2024-09-21 17:25:33'),
(83, 1726939613659, 115, 200000, 400000, 1, '2024-09-21 17:26:53', '2024-09-21 17:26:53'),
(84, 1726939688611, 384, 700000, 799000, 1, '2024-09-21 17:28:09', '2024-09-21 17:28:09'),
(85, 1726939784852, 343, 600000, 699000, 1, '2024-09-21 17:29:44', '2024-09-21 17:29:44'),
(86, 1726939885227, 20, 300000, 399000, 1, '2024-09-21 17:31:25', '2024-09-21 17:31:25'),
(87, 1726940096254, 263, 400000, 499000, 1, '2024-09-21 17:34:56', '2024-09-21 17:34:56'),
(88, 1726940200717, 334, 700000, 799000, 1, '2024-09-21 17:36:40', '2024-09-21 17:36:40'),
(89, 1726940537146, 321, 200000, 299000, 1, '2024-09-21 17:42:17', '2024-09-21 17:42:17'),
(90, 1726940632865, 253, 400000, 499000, 1, '2024-09-21 17:43:52', '2024-09-21 17:43:52'),
(91, 1726940880223, 103, 100000, 199000, 10, '2024-09-21 17:48:00', '2024-09-21 17:48:00'),
(92, 1726941105731, 104, 100000, 199000, 1, '2024-09-21 17:51:45', '2024-09-21 17:51:45'),
(93, 1726941348872, 312, 300000, 399000, 1, '2024-09-21 17:55:48', '2024-09-21 17:55:48');

--
-- Bẫy `order_details`
--
DELIMITER $$
CREATE TRIGGER `group_by_quantity` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
                declare _record int;
                declare _quantity int;
                select count(*) into _record from order_details where product_size_id = new.product_size_id and order_id = new.order_id;
                if (_record >= 2) then
                    select sum(quantity) into _quantity from order_details where product_size_id = new.product_size_id and order_id = new.order_id;
                    update order_details set quantity = _quantity where product_size_id = new.product_size_id and order_id = new.order_id;
                    SIGNAL sqlstate "45001" set message_text = "error";
                end if;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reduce_quantity_product` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
                    declare _quantity int;
                    select quantity into _quantity from products_size where id = new.product_size_id;
                    if (new.quantity <= 0 || _quantity < new.quantity) then
                        SIGNAL sqlstate "45001" set message_text = "error";
                    else
                        update products_size set quantity = _quantity - new.quantity where id = new.product_size_id;
                    end if;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `validate_quantity` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
            declare _quantity int;
            select quantity into _quantity from products_size where id = new.product_size_id;
            if (new.quantity <= 0 || _quantity < new.quantity) then
                SIGNAL sqlstate "45001" set message_text = "error";
            end if;
        END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `status`, `img`) VALUES
(1, 'Khi nhận hàng', NULL, NULL, NULL, 1, '1682960154.png'),
(2, 'Ví điện tử Momo', NULL, NULL, NULL, 1, '1682960202.png'),
(3, 'VNPAY', NULL, '2024-08-11 14:38:17', NULL, 1, '1723387097.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `price_import` double NOT NULL,
  `price_sell` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price_import`, `price_sell`, `img`, `description`, `status`, `category_id`, `brand_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Áo polo nam cafe', 300000, 390000, '1723486755.jpg', '<h5>&nbsp;</h5>\r\n<h6>&Aacute;o polo nữ l&agrave; một trong những loại &aacute;o phổ biến v&agrave; được ưa chuộng tr&ecirc;n to&agrave;n thế giới. Với thiết kế đơn giản, thoải m&aacute;i v&agrave; thời trang, &aacute;o polo nam trở th&agrave;nh một lựa chọn tuyệt vời cho c&aacute;c hoạt động từ h&agrave;ng ng&agrave;y đến c&aacute;c sự kiện quan trọng.</h6>', 1, 9, 1, '2024-08-10 13:25:03', '2024-09-21 17:16:03', NULL),
(3, 'Áo Polo nam công nghệ khử mùi Anti-Smell', 300000, 399000, '1683009368.png', 'Áo polo nam là một trong những loại áo phổ biến và được ưa chuộng trên toàn thế giới. Với thiết kế đơn giản, thoải mái và thời trang, áo polo nam trở thành một lựa chọn tuyệt vời cho các hoạt động từ hàng ngày đến các sự kiện quan trọng.', 1, 3, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(4, 'Áo Polo nam Excool', 300000, 399000, '1683009662.png', 'Áo polo nam là một trong những loại áo phổ biến và được ưa chuộng trên toàn thế giới. Với thiết kế đơn giản, thoải mái và thời trang, áo polo nam trở thành một lựa chọn tuyệt vời cho các hoạt động từ hàng ngày đến các sự kiện quan trọng.', 1, 3, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(5, 'Áo Polo nam Pique Cotton USA', 300000, 399000, '1683009904.png', 'Áo polo nam là một trong những loại áo phổ biến và được ưa chuộng trên toàn thế giới. Với thiết kế đơn giản, thoải mái và thời trang, áo polo nam trở thành một lựa chọn tuyệt vời cho các hoạt động từ hàng ngày đến các sự kiện quan trọng.', 1, 3, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(6, 'Áo sơ mi nam dài tay Café Sticky Free', 400000, 499000, '1683010732.png', '<div>Áo sơ mi là một trong những loại trang phục phổ biến nhất trong thế giới thời trang hiện đại. Với kiểu dáng đơn giản nhưng tinh tế và đa dạng về màu sắc, áo sơ mi có thể phù hợp với nhiều dịp khác nhau, từ công sở đến cuộc hẹn hò hay các sự kiện thời trang.</div><div><br></div><div>Áo sơ mi được làm từ chất liệu cotton thoáng mát và thấm hút mồ hôi, giúp cho người mặc cảm thấy thoải mái và tự tin trong mọi hoạt động. Kiểu dáng cổ áo và tay áo cũng rất đa dạng, từ cổ bẻ nhọn cho đến cổ trụ, tay ngắn hoặc tay dài, tạo nên sự linh hoạt cho người mặc khi phối đồ.</div><div><br></div><div>Nếu bạn đang tìm kiếm một trang phục trẻ trung, thanh lịch và dễ dàng kết hợp với các loại quần áo khác, áo sơ mi sẽ là sự lựa chọn hoàn hảo cho bạn.</div>', 1, 5, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(7, 'Áo sơ mi nam dài tay Café-DriS', 400000, 499000, '1683010851.png', '<div>Áo sơ mi là một trong những loại trang phục phổ biến nhất trong thế giới thời trang hiện đại. Với kiểu dáng đơn giản nhưng tinh tế và đa dạng về màu sắc, áo sơ mi có thể phù hợp với nhiều dịp khác nhau, từ công sở đến cuộc hẹn hò hay các sự kiện thời trang.</div><div><br></div><div>Áo sơ mi được làm từ chất liệu cotton thoáng mát và thấm hút mồ hôi, giúp cho người mặc cảm thấy thoải mái và tự tin trong mọi hoạt động. Kiểu dáng cổ áo và tay áo cũng rất đa dạng, từ cổ bẻ nhọn cho đến cổ trụ, tay ngắn hoặc tay dài, tạo nên sự linh hoạt cho người mặc khi phối đồ.</div><div><br></div><div>Nếu bạn đang tìm kiếm một trang phục trẻ trung, thanh lịch và dễ dàng kết hợp với các loại quần áo khác, áo sơ mi sẽ là sự lựa chọn hoàn hảo cho bạn.</div>', 1, 5, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(8, 'Áo Sơ mi nam Excool Limited ngắn tay chui đầu', 300000, 390000, '1683011055.png', '<div>Áo sơ mi là một trong những loại trang phục phổ biến nhất trong thế giới thời trang hiện đại. Với kiểu dáng đơn giản nhưng tinh tế và đa dạng về màu sắc, áo sơ mi có thể phù hợp với nhiều dịp khác nhau, từ công sở đến cuộc hẹn hò hay các sự kiện thời trang.</div><div><br></div><div>Áo sơ mi được làm từ chất liệu cotton thoáng mát và thấm hút mồ hôi, giúp cho người mặc cảm thấy thoải mái và tự tin trong mọi hoạt động. Kiểu dáng cổ áo và tay áo cũng rất đa dạng, từ cổ bẻ nhọn cho đến cổ trụ, tay ngắn hoặc tay dài, tạo nên sự linh hoạt cho người mặc khi phối đồ.</div><div><br></div><div>Nếu bạn đang tìm kiếm một trang phục trẻ trung, thanh lịch và dễ dàng kết hợp với các loại quần áo khác, áo sơ mi sẽ là sự lựa chọn hoàn hảo cho bạn.</div>', 1, 5, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(9, 'Áo sát nách thể thao nam Dri-Breathe', 200000, 290000, '1683011385.png', '<div>Áo thể thao là một trong những loại trang phục phổ biến nhất cho các hoạt động thể thao và tập luyện. Với kiểu dáng và chất liệu đặc biệt, áo thể thao có khả năng thấm hút mồ hôi tốt, giúp cho người mặc cảm thấy thoải mái và mát mẻ khi vận động.</div><div><br></div><div>Các loại áo thể thao đa dạng về kiểu dáng và chất liệu, từ áo thun tay ngắn cho đến áo khoác phản quang. Áo thể thao thường được thiết kế để ôm sát cơ thể, giúp cho người mặc có thể dễ dàng di chuyển và thực hiện các động tác thể thao một cách linh hoạt.</div><div><br></div><div>Nếu bạn đang tập luyện hoặc tham gia các hoạt động thể thao, áo thể thao sẽ là sự lựa chọn tuyệt vời cho bạn. Với các tính năng ưu việt như độ bền cao, khả năng thấm hút mồ hôi tốt và sự thoải mái khi mặc, áo thể thao giúp cho bạn có thể vận động tốt hơn và đạt được thành tích tốt nhất.</div>', 1, 4, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(10, 'Áo Tank Top thể thao nam Active V1', 200000, 299000, '1683011583.png', '<div>Áo thể thao là một trong những loại trang phục phổ biến nhất cho các hoạt động thể thao và tập luyện. Với kiểu dáng và chất liệu đặc biệt, áo thể thao có khả năng thấm hút mồ hôi tốt, giúp cho người mặc cảm thấy thoải mái và mát mẻ khi vận động.</div><div><br></div><div>Các loại áo thể thao đa dạng về kiểu dáng và chất liệu, từ áo thun tay ngắn cho đến áo khoác phản quang. Áo thể thao thường được thiết kế để ôm sát cơ thể, giúp cho người mặc có thể dễ dàng di chuyển và thực hiện các động tác thể thao một cách linh hoạt.</div><div><br></div><div>Nếu bạn đang tập luyện hoặc tham gia các hoạt động thể thao, áo thể thao sẽ là sự lựa chọn tuyệt vời cho bạn. Với các tính năng ưu việt như độ bền cao, khả năng thấm hút mồ hôi tốt và sự thoải mái khi mặc, áo thể thao giúp cho bạn có thể vận động tốt hơn và đạt được thành tích tốt nhất.</div>', 1, 4, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(11, 'Áo thun chạy bộ nam Essential Fast & Free Run', 100000, 199000, '1683011895.png', '<div>Áo thể thao là một trong những loại trang phục phổ biến nhất cho các hoạt động thể thao và tập luyện. Với kiểu dáng và chất liệu đặc biệt, áo thể thao có khả năng thấm hút mồ hôi tốt, giúp cho người mặc cảm thấy thoải mái và mát mẻ khi vận động.</div><div><br></div><div>Các loại áo thể thao đa dạng về kiểu dáng và chất liệu, từ áo thun tay ngắn cho đến áo khoác phản quang. Áo thể thao thường được thiết kế để ôm sát cơ thể, giúp cho người mặc có thể dễ dàng di chuyển và thực hiện các động tác thể thao một cách linh hoạt.</div><div><br></div><div>Nếu bạn đang tập luyện hoặc tham gia các hoạt động thể thao, áo thể thao sẽ là sự lựa chọn tuyệt vời cho bạn. Với các tính năng ưu việt như độ bền cao, khả năng thấm hút mồ hôi tốt và sự thoải mái khi mặc, áo thể thao giúp cho bạn có thể vận động tốt hơn và đạt được thành tích tốt nhất.</div>', 1, 4, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(12, 'Áo thun thể thao dài tay nam Recycle Active', 200000, 400000, '1683012140.png', '<div>Áo thể thao là một trong những loại trang phục phổ biến nhất cho các hoạt động thể thao và tập luyện. Với kiểu dáng và chất liệu đặc biệt, áo thể thao có khả năng thấm hút mồ hôi tốt, giúp cho người mặc cảm thấy thoải mái và mát mẻ khi vận động.</div><div><br></div><div>Các loại áo thể thao đa dạng về kiểu dáng và chất liệu, từ áo thun tay ngắn cho đến áo khoác phản quang. Áo thể thao thường được thiết kế để ôm sát cơ thể, giúp cho người mặc có thể dễ dàng di chuyển và thực hiện các động tác thể thao một cách linh hoạt.</div><div><br></div><div>Nếu bạn đang tập luyện hoặc tham gia các hoạt động thể thao, áo thể thao sẽ là sự lựa chọn tuyệt vời cho bạn. Với các tính năng ưu việt như độ bền cao, khả năng thấm hút mồ hôi tốt và sự thoải mái khi mặc, áo thể thao giúp cho bạn có thể vận động tốt hơn và đạt được thành tích tốt nhất.</div>', 1, 4, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(13, 'Áo thun chạy bộ nam Essential Fast & Free Run', 300000, 399000, '1683012472.png', '<div>Áo thun là một trong những kiểu trang phục phổ biến nhất và được ưa chuộng trên toàn thế giới. Với kiểu dáng đơn giản và tiện dụng, áo thun có thể phù hợp với nhiều hoàn cảnh khác nhau, từ cuộc hẹn hò cho đến công việc hàng ngày.</div><div><br></div><div>Chất liệu của áo thun thường là cotton hoặc cotton-blend, đem lại sự thoải mái và mềm mại khi mặc. Áo thun có thể có nhiều kiểu dáng khác nhau, từ áo tay ngắn đến áo tay dài, cổ tròn hoặc cổ V. Nhờ vào tính đa dạng này, áo thun có thể phù hợp với nhiều phong cách thời trang khác nhau.</div><div><br></div><div>Nếu bạn muốn có một trang phục đơn giản và tiện dụng, áo thun là sự lựa chọn hoàn hảo. Áo thun có thể được kết hợp với nhiều loại quần áo khác nhau, từ quần jean đến quần kaki hay quần shorts, tạo nên một phong cách trẻ trung và cá tính. Bên cạnh đó, áo thun cũng là một trang phục lý tưởng cho các hoạt động thể thao nhẹ nhàng, hay một buổi đi chơi cuối tuần.</div>', 1, 6, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(14, 'Áo thun nam Cotton Compact', 200000, 299000, '1723486802.jpg', '<div>Áo thun là một trong những kiểu trang phục phổ biến nhất và được ưa chuộng trên toàn thế giới. Với kiểu dáng đơn giản và tiện dụng, áo thun có thể phù hợp với nhiều hoàn cảnh khác nhau, từ cuộc hẹn hò cho đến công việc hàng ngày.</div><div><br></div><div>Chất liệu của áo thun thường là cotton hoặc cotton-blend, đem lại sự thoải mái và mềm mại khi mặc. Áo thun có thể có nhiều kiểu dáng khác nhau, từ áo tay ngắn đến áo tay dài, cổ tròn hoặc cổ V. Nhờ vào tính đa dạng này, áo thun có thể phù hợp với nhiều phong cách thời trang khác nhau.</div><div><br></div><div>Nếu bạn muốn có một trang phục đơn giản và tiện dụng, áo thun là sự lựa chọn hoàn hảo. Áo thun có thể được kết hợp với nhiều loại quần áo khác nhau, từ quần jean đến quần kaki hay quần shorts, tạo nên một phong cách trẻ trung và cá tính. Bên cạnh đó, áo thun cũng là một trang phục lý tưởng cho các hoạt động thể thao nhẹ nhàng, hay một buổi đi chơi cuối tuần.</div>', 1, 9, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(15, 'Chân váy ren bèo 4 tầng dáng ngắn WAVYSKIRT', 200000, 299000, '1723486954.jfif', '<div><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">MÃ SP: Chân váy ren bèo dáng ngắn 4 tầng tiểu thư.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Chất liệu: Thô sần.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Chất liệu lót: Lụa habutan.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Eo: Chun co dãn.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">SỐ ĐO CỤ THỂ:</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Dài váy: 33cm</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Eo chun co dãn: 60-78cm.</p></div>', 1, 12, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(16, 'Áo thun thể thao nam Active ProMax', 200000, 299000, '1683013085.png', '<div>Áo thun là một trong những kiểu trang phục phổ biến nhất và được ưa chuộng trên toàn thế giới. Với kiểu dáng đơn giản và tiện dụng, áo thun có thể phù hợp với nhiều hoàn cảnh khác nhau, từ cuộc hẹn hò cho đến công việc hàng ngày.</div><div><br></div><div>Chất liệu của áo thun thường là cotton hoặc cotton-blend, đem lại sự thoải mái và mềm mại khi mặc. Áo thun có thể có nhiều kiểu dáng khác nhau, từ áo tay ngắn đến áo tay dài, cổ tròn hoặc cổ V. Nhờ vào tính đa dạng này, áo thun có thể phù hợp với nhiều phong cách thời trang khác nhau.</div><div><br></div><div>Nếu bạn muốn có một trang phục đơn giản và tiện dụng, áo thun là sự lựa chọn hoàn hảo. Áo thun có thể được kết hợp với nhiều loại quần áo khác nhau, từ quần jean đến quần kaki hay quần shorts, tạo nên một phong cách trẻ trung và cá tính. Bên cạnh đó, áo thun cũng là một trang phục lý tưởng cho các hoạt động thể thao nhẹ nhàng, hay một buổi đi chơi cuối tuần.</div>', 1, 6, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(17, 'Quần Jeans Clean Denim dáng Regular S2', 500000, 599000, '1683013376.png', '<div>Quần jeans là một trong những loại quần phổ biến nhất trên toàn thế giới. Với kiểu dáng đơn giản và thoải mái, quần jeans có thể được mặc ở nhiều hoàn cảnh khác nhau, từ công việc cho đến cuộc hẹn hò hay những chuyến đi chơi cuối tuần.</div><div><br></div><div>Chất liệu của quần jeans thường là denim, một loại vải bền chắc và khá dày. Quần jeans có nhiều kiểu dáng khác nhau, từ quần slim-fit đến quần bootcut hay quần boyfriend, với nhiều màu sắc và phong cách khác nhau.</div><div><br></div><div>Quần jeans phù hợp với nhiều phong cách thời trang khác nhau, từ trang phục công sở đến trang phục thể thao. Nếu bạn muốn có một trang phục đơn giản và dễ phối đồ, quần jeans là sự lựa chọn tuyệt vời. Bạn có thể kết hợp quần jeans với áo sơ mi cho một phong cách trang trọng, hoặc áo thun và giày thể thao cho một phong cách trẻ trung và năng động.</div><div><br></div><div>Ngoài ra, quần jeans cũng là một trang phục lý tưởng cho các hoạt động ngoài trời như đi bộ đường dài, leo núi hoặc đi phượt. Với tính đa dụng và thoải mái khi mặc, quần jeans sẽ luôn là một lựa chọn thông minh cho tủ đồ của bạn.</div><div><br></div><div><br></div><div><br></div><div><br></div>', 1, 7, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(18, 'Váy sơ mi nữ thiết kế xếp li dáng xuông , đầm nữ hè polo basic trẻ trung năng động Miel Fashion V78', 400000, 499000, '1723487221.jfif', '<div><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Váy sơ mi nữ thiết kế xếp li dáng xuông , đầm nữ hè polo basic trẻ trung năng động Miel Fashion V78\r\nSản phẩm THIẾT KẾ chuẩn form,chuẩn đường kim mũi chỉ\r\nChất liệu dầy dặn chất liệu không bai,không xù .Giặt máy thoải mái\r\nVáy phù hợp đi tiệc,đi chơi,đi sự kiện\r\n\r\n*Thông số mang tính tham khảo tùy thuộc vào CHIỀU CAO và VÓC DÁNG của từng người, chị em dựa vào thông số của shop để áng chừng nhé.\r\n*Lưu ý: Cân nặng chỉ mang tính tham khảo, tuỳ thuộc vào dáng người nữa ạ. Các chị chênh lệch 2-3kg bon chen được ạ</span><br></div><div><br></div><div><br></div><div><br></div><div><br></div>', 1, 10, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(19, 'Quần Jeans dáng Straight', 300000, 399000, '1683013634.png', '<div>Quần jeans là một trong những loại quần phổ biến nhất trên toàn thế giới. Với kiểu dáng đơn giản và thoải mái, quần jeans có thể được mặc ở nhiều hoàn cảnh khác nhau, từ công việc cho đến cuộc hẹn hò hay những chuyến đi chơi cuối tuần.</div><div><br></div><div>Chất liệu của quần jeans thường là denim, một loại vải bền chắc và khá dày. Quần jeans có nhiều kiểu dáng khác nhau, từ quần slim-fit đến quần bootcut hay quần boyfriend, với nhiều màu sắc và phong cách khác nhau.</div><div><br></div><div>Quần jeans phù hợp với nhiều phong cách thời trang khác nhau, từ trang phục công sở đến trang phục thể thao. Nếu bạn muốn có một trang phục đơn giản và dễ phối đồ, quần jeans là sự lựa chọn tuyệt vời. Bạn có thể kết hợp quần jeans với áo sơ mi cho một phong cách trang trọng, hoặc áo thun và giày thể thao cho một phong cách trẻ trung và năng động.</div><div><br></div><div>Ngoài ra, quần jeans cũng là một trang phục lý tưởng cho các hoạt động ngoài trời như đi bộ đường dài, leo núi hoặc đi phượt. Với tính đa dụng và thoải mái khi mặc, quần jeans sẽ luôn là một lựa chọn thông minh cho tủ đồ của bạn.</div><div><br></div><div><br></div><div><br></div><div><br></div>', 1, 7, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(20, 'Quần short nam thể thao ProMax-S1', 50000, 99000, '1683013784.png', '<div>Quần short là một trong những loại quần được ưa chuộng trong mùa hè, với kiểu dáng ngắn và thoải mái. Với chất liệu nhẹ và thông thoáng, quần short phù hợp cho những ngày nắng nóng hoặc những hoạt động ngoài trời.</div><div><br></div><div>Quần short có nhiều kiểu dáng khác nhau, từ quần short dài đến quần short ngắn, từ quần jean đến quần vải hoặc quần thể thao. Với nhiều màu sắc và họa tiết đa dạng, quần short có thể phù hợp với nhiều phong cách thời trang khác nhau.</div><div><br></div><div>Quần short là một trang phục phổ biến trong các hoạt động thể thao như bơi lội, chạy bộ hay tennis. Với tính linh hoạt và thoải mái khi mặc, quần short cũng thường được sử dụng trong các hoạt động giải trí ngoài trời, từ đi chơi đến dạo phố.</div><div><br></div><div>Nếu bạn muốn có một trang phục đơn giản và dễ mặc trong mùa hè, quần short là sự lựa chọn hoàn hảo. Bạn có thể kết hợp quần short với áo thun hoặc áo sơ mi cho một phong cách trẻ trung và thoải mái. Bên cạnh đó, quần short cũng có thể được mặc với áo khoác hoặc áo len khi trời mát, tạo nên một phong cách cá tính và hiện đại.</div>', 1, 8, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(21, 'Váy nữ hè xinh dáng sơ mi , đầm xuông thiết kế ngắn tay thoáng mát mùa hè Miel Fashion V240466', 50000, 69000, '1683013954.png', '<div><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Váy nữ hè xinh dáng sơ mi , đầm xuông thiết kế ngắn tay thoáng mát mùa hè Miel Fashion V240466\r\nSản phẩm THIẾT KẾ chuẩn form,chuẩn đường kim mũi chỉ\r\nChất liệu dầy dặn co dãn 4 chiều,chất liệu không bai,không xù .Giặt máy thoải mái\r\nVáy phù hợp đi tiệc,đi chơi,đi sự kiện\r\n\r\n*Thông số mang tính tham khảo tùy thuộc vào CHIỀU CAO và VÓC DÁNG của từng người, chị em dựa vào thông số của shop để áng chừng nhé.\r\n*Lưu ý: Cân nặng chỉ mang tính tham khảo, tuỳ thuộc vào dáng người nữa ạ. Các chị chênh lệch 2-3kg bon chen được ạ</span><br></div>', 1, 10, 2, '2024-08-10 13:25:03', '2024-09-17 16:30:54', '2024-09-17 16:30:54'),
(22, 'Quần Shorts Nam French Terry logo Marvel', 100000, 199000, '1683014101.png', '<div>Quần short là một trong những loại quần được ưa chuộng trong mùa hè, với kiểu dáng ngắn và thoải mái. Với chất liệu nhẹ và thông thoáng, quần short phù hợp cho những ngày nắng nóng hoặc những hoạt động ngoài trời.</div><div><br></div><div>Quần short có nhiều kiểu dáng khác nhau, từ quần short dài đến quần short ngắn, từ quần jean đến quần vải hoặc quần thể thao. Với nhiều màu sắc và họa tiết đa dạng, quần short có thể phù hợp với nhiều phong cách thời trang khác nhau.</div><div><br></div><div>Quần short là một trang phục phổ biến trong các hoạt động thể thao như bơi lội, chạy bộ hay tennis. Với tính linh hoạt và thoải mái khi mặc, quần short cũng thường được sử dụng trong các hoạt động giải trí ngoài trời, từ đi chơi đến dạo phố.</div><div><br></div><div>Nếu bạn muốn có một trang phục đơn giản và dễ mặc trong mùa hè, quần short là sự lựa chọn hoàn hảo. Bạn có thể kết hợp quần short với áo thun hoặc áo sơ mi cho một phong cách trẻ trung và thoải mái. Bên cạnh đó, quần short cũng có thể được mặc với áo khoác hoặc áo len khi trời mát, tạo nên một phong cách cá tính và hiện đại.</div>', 1, 8, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(23, 'Đầm maxi trễ vai viền bèo dáng dài, váy maxi đi biển bo chun thân chất tơ nhăn 2 lớp HV84', 500000, 599000, '1723487062.jfif', '<div><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Đầm maxi trễ vai viền bèo dáng dài, váy maxi đi biển bo chun thân chất tơ nhăn 2 lớp HV84</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">✅ Chất liệu: tơ nhăn Hàn</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">✅ Size : freesize dưới 55kg</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">✅ Màu sắc : kem</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">✅ Thông tin xuất xứ : </p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Cơ sở sản xuất: tại Việt Nam</p></div>', 1, 10, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(24, 'Áo Sơ Mi Linen Pha', 200000, 299000, '1683015324.png', '<div>Áo sơ mi nữ là một trang phục cơ bản trong tủ đồ của phụ nữ, với kiểu dáng thanh lịch và trang trọng. Với chất liệu nhẹ và thoáng, áo sơ mi nữ thường được sử dụng trong các dịp trang trọng hoặc công việc.</div><div><br></div><div>Áo sơ mi nữ có nhiều kiểu dáng khác nhau, từ áo cổ đứng đến áo cổ tim, áo ngắn tay hay áo dài tay, với nhiều màu sắc và họa tiết đa dạng. Kiểu dáng áo sơ mi cổ đứng thường mang lại sự trang trọng và chuyên nghiệp, trong khi áo sơ mi cổ tim thì tạo nên một phong cách nữ tính và dịu dàng.</div><div><br></div><div>Áo sơ mi nữ cũng có thể được kết hợp với nhiều trang phục khác nhau để tạo nên nhiều phong cách thời trang khác nhau. Bạn có thể kết hợp áo sơ mi với quần jean hoặc chân váy để tạo nên một phong cách trẻ trung và năng động. Nếu muốn tạo nên phong cách trang trọng hơn, bạn có thể kết hợp áo sơ mi với quần tây hoặc chân váy dài.</div><div><br></div><div>Áo sơ mi nữ cũng là một trang phục lý tưởng cho các dịp tiệc tùng hoặc dạo phố. Với tính đa dụng và dễ dàng kết hợp, áo sơ mi nữ sẽ luôn là một trang phục cơ bản mà bạn nên có trong tủ đồ của mình.</div>', 1, 11, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(25, 'Áo Sơ Mi Vải Sheer Ngắn Tay', 400000, 499000, '1683015627.png', '<div>Áo sơ mi nữ là một trang phục cơ bản trong tủ đồ của phụ nữ, với kiểu dáng thanh lịch và trang trọng. Với chất liệu nhẹ và thoáng, áo sơ mi nữ thường được sử dụng trong các dịp trang trọng hoặc công việc.</div><div><br></div><div>Áo sơ mi nữ có nhiều kiểu dáng khác nhau, từ áo cổ đứng đến áo cổ tim, áo ngắn tay hay áo dài tay, với nhiều màu sắc và họa tiết đa dạng. Kiểu dáng áo sơ mi cổ đứng thường mang lại sự trang trọng và chuyên nghiệp, trong khi áo sơ mi cổ tim thì tạo nên một phong cách nữ tính và dịu dàng.</div><div><br></div><div>Áo sơ mi nữ cũng có thể được kết hợp với nhiều trang phục khác nhau để tạo nên nhiều phong cách thời trang khác nhau. Bạn có thể kết hợp áo sơ mi với quần jean hoặc chân váy để tạo nên một phong cách trẻ trung và năng động. Nếu muốn tạo nên phong cách trang trọng hơn, bạn có thể kết hợp áo sơ mi với quần tây hoặc chân váy dài.</div><div><br></div><div>Áo sơ mi nữ cũng là một trang phục lý tưởng cho các dịp tiệc tùng hoặc dạo phố. Với tính đa dụng và dễ dàng kết hợp, áo sơ mi nữ sẽ luôn là một trang phục cơ bản mà bạn nên có trong tủ đồ của mình.</div>', 1, 11, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(26, 'AIRism Cotton Áo Thun', 400000, 499000, '1683015921.png', '<div>Áo thun nữ là một trong những trang phục đơn giản nhưng vô cùng phổ biến và được ưa chuộng trong thời trang hiện đại. Với chất liệu cotton mềm mại và thoáng mát, áo thun nữ mang lại cảm giác thoải mái cho người mặc trong suốt cả ngày dài.</div><div><br></div><div>Các kiểu dáng của áo thun nữ cũng đa dạng, có thể là áo tay ngắn hoặc áo tay dài, áo cổ tròn hoặc áo cổ V. Áo thun nữ cổ tròn thường mang lại sự đơn giản và trẻ trung, trong khi áo thun nữ cổ V tạo nên sự thanh lịch và quý phái hơn.</div><div><br></div><div>Áo thun nữ có thể kết hợp với nhiều loại quần như jeans, quần shorts, quần tây hoặc chân váy để tạo nên phong cách thời trang khác nhau. Khi kết hợp với quần jeans, áo thun nữ tạo nên vẻ năng động và trẻ trung. Khi kết hợp với quần tây hoặc chân váy, áo thun nữ sẽ tạo nên phong cách trang trọng và chuyên nghiệp.</div><div><br></div><div>Áo thun nữ cũng có rất nhiều màu sắc và hoạ tiết để lựa chọn, từ những màu sắc cơ bản như trắng, đen, xám cho đến những hoạ tiết sặc sỡ và đầy cá tính. Với tính đa năng và phù hợp với nhiều phong cách thời trang, áo thun nữ sẽ là sự lựa chọn hoàn hảo cho bất kỳ cô gái nào muốn có một trang phục đơn giản nhưng vẫn tạo được ấn tượng.</div>', 1, 9, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(27, 'Áo Ba Lỗ Gân Cổ Henley', 300000, 399000, '1683016255.png', '<div>Áo thun nữ là một trong những trang phục đơn giản nhưng vô cùng phổ biến và được ưa chuộng trong thời trang hiện đại. Với chất liệu cotton mềm mại và thoáng mát, áo thun nữ mang lại cảm giác thoải mái cho người mặc trong suốt cả ngày dài.</div><div><br></div><div>Các kiểu dáng của áo thun nữ cũng đa dạng, có thể là áo tay ngắn hoặc áo tay dài, áo cổ tròn hoặc áo cổ V. Áo thun nữ cổ tròn thường mang lại sự đơn giản và trẻ trung, trong khi áo thun nữ cổ V tạo nên sự thanh lịch và quý phái hơn.</div><div><br></div><div>Áo thun nữ có thể kết hợp với nhiều loại quần như jeans, quần shorts, quần tây hoặc chân váy để tạo nên phong cách thời trang khác nhau. Khi kết hợp với quần jeans, áo thun nữ tạo nên vẻ năng động và trẻ trung. Khi kết hợp với quần tây hoặc chân váy, áo thun nữ sẽ tạo nên phong cách trang trọng và chuyên nghiệp.</div><div><br></div><div>Áo thun nữ cũng có rất nhiều màu sắc và hoạ tiết để lựa chọn, từ những màu sắc cơ bản như trắng, đen, xám cho đến những hoạ tiết sặc sỡ và đầy cá tính. Với tính đa năng và phù hợp với nhiều phong cách thời trang, áo thun nữ sẽ là sự lựa chọn hoàn hảo cho bất kỳ cô gái nào muốn có một trang phục đơn giản nhưng vẫn tạo được ấn tượng.</div>', 1, 9, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(28, 'Áo Thun Mini Ngắn Tay', 200000, 299000, '1683016523.png', '<div>Áo thun nữ là một trong những trang phục đơn giản nhưng vô cùng phổ biến và được ưa chuộng trong thời trang hiện đại. Với chất liệu cotton mềm mại và thoáng mát, áo thun nữ mang lại cảm giác thoải mái cho người mặc trong suốt cả ngày dài.</div><div><br></div><div>Các kiểu dáng của áo thun nữ cũng đa dạng, có thể là áo tay ngắn hoặc áo tay dài, áo cổ tròn hoặc áo cổ V. Áo thun nữ cổ tròn thường mang lại sự đơn giản và trẻ trung, trong khi áo thun nữ cổ V tạo nên sự thanh lịch và quý phái hơn.</div><div><br></div><div>Áo thun nữ có thể kết hợp với nhiều loại quần như jeans, quần shorts, quần tây hoặc chân váy để tạo nên phong cách thời trang khác nhau. Khi kết hợp với quần jeans, áo thun nữ tạo nên vẻ năng động và trẻ trung. Khi kết hợp với quần tây hoặc chân váy, áo thun nữ sẽ tạo nên phong cách trang trọng và chuyên nghiệp.</div><div><br></div><div>Áo thun nữ cũng có rất nhiều màu sắc và hoạ tiết để lựa chọn, từ những màu sắc cơ bản như trắng, đen, xám cho đến những hoạ tiết sặc sỡ và đầy cá tính. Với tính đa năng và phù hợp với nhiều phong cách thời trang, áo thun nữ sẽ là sự lựa chọn hoàn hảo cho bất kỳ cô gái nào muốn có một trang phục đơn giản nhưng vẫn tạo được ấn tượng.</div>', 1, 9, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(29, 'Chân Váy Midi Vải Denim Jersey', 300000, 399000, '1683016876.png', '<div>Chân váy nữ là một trong những trang phục quen thuộc và được yêu thích trong thời trang nữ. Với nhiều kiểu dáng và chất liệu khác nhau, chân váy nữ có thể phù hợp với nhiều hoàn cảnh khác nhau.</div><div><br></div><div>Chân váy nữ được thiết kế với nhiều chiều dài khác nhau, từ mini, midi đến maxi. Với chiều dài mini, chân váy nữ mang lại sự trẻ trung, năng động và thu hút, trong khi chiều dài midi và maxi tạo nên vẻ sang trọng và quý phái hơn.</div><div><br></div><div>Các kiểu dáng của chân váy nữ cũng đa dạng, có thể là chân váy xòe, chân váy chữ A, chân váy bút chì, hoặc chân váy bèo, phù hợp với nhiều phong cách và sở thích khác nhau.</div><div><br></div><div>Chất liệu của chân váy nữ cũng rất đa dạng, từ cotton, lụa, denim cho đến chất liệu như da, len, và nhung, tạo nên những đặc tính khác nhau cho sản phẩm. Với những chất liệu cao cấp, chân váy nữ sẽ tạo nên cảm giác thoải mái và thoáng mát, đồng thời giữ được độ bền và độ đẹp của sản phẩm.</div>', 1, 12, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(30, 'Chân Váy Mini Xếp Ly', 400000, 499000, '1683017047.png', '<div>Chân váy nữ là một trong những trang phục quen thuộc và được yêu thích trong thời trang nữ. Với nhiều kiểu dáng và chất liệu khác nhau, chân váy nữ có thể phù hợp với nhiều hoàn cảnh khác nhau.</div><div><br></div><div>Chân váy nữ được thiết kế với nhiều chiều dài khác nhau, từ mini, midi đến maxi. Với chiều dài mini, chân váy nữ mang lại sự trẻ trung, năng động và thu hút, trong khi chiều dài midi và maxi tạo nên vẻ sang trọng và quý phái hơn.</div><div><br></div><div>Các kiểu dáng của chân váy nữ cũng đa dạng, có thể là chân váy xòe, chân váy chữ A, chân váy bút chì, hoặc chân váy bèo, phù hợp với nhiều phong cách và sở thích khác nhau.</div><div><br></div><div>Chất liệu của chân váy nữ cũng rất đa dạng, từ cotton, lụa, denim cho đến chất liệu như da, len, và nhung, tạo nên những đặc tính khác nhau cho sản phẩm. Với những chất liệu cao cấp, chân váy nữ sẽ tạo nên cảm giác thoải mái và thoáng mát, đồng thời giữ được độ bền và độ đẹp của sản phẩm.</div>', 1, 12, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(31, 'Quần Váy Vải Linen Pha', 200000, 299000, '1683017106.png', '<div>Chân váy nữ là một trong những trang phục quen thuộc và được yêu thích trong thời trang nữ. Với nhiều kiểu dáng và chất liệu khác nhau, chân váy nữ có thể phù hợp với nhiều hoàn cảnh khác nhau.</div><div><br></div><div>Chân váy nữ được thiết kế với nhiều chiều dài khác nhau, từ mini, midi đến maxi. Với chiều dài mini, chân váy nữ mang lại sự trẻ trung, năng động và thu hút, trong khi chiều dài midi và maxi tạo nên vẻ sang trọng và quý phái hơn.</div><div><br></div><div>Các kiểu dáng của chân váy nữ cũng đa dạng, có thể là chân váy xòe, chân váy chữ A, chân váy bút chì, hoặc chân váy bèo, phù hợp với nhiều phong cách và sở thích khác nhau.</div><div><br></div><div>Chất liệu của chân váy nữ cũng rất đa dạng, từ cotton, lụa, denim cho đến chất liệu như da, len, và nhung, tạo nên những đặc tính khác nhau cho sản phẩm. Với những chất liệu cao cấp, chân váy nữ sẽ tạo nên cảm giác thoải mái và thoáng mát, đồng thời giữ được độ bền và độ đẹp của sản phẩm.</div>', 1, 12, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(32, 'Đầm Xòe Hai Dây Một Hàng Khuy', 700000, 799000, '1683017508.png', '<div>Đầm váy là một trong những trang phục được yêu thích nhất trong thế giới thời trang nữ. Với nhiều kiểu dáng, chất liệu và màu sắc đa dạng, đầm váy có thể phù hợp với nhiều hoàn cảnh và phong cách khác nhau.</div><div><br></div><div>Các kiểu dáng của đầm váy cũng rất đa dạng, có thể là đầm váy xòe, đầm váy chữ A, đầm maxi, đầm liền, đầm ôm hay đầm bút chì. Mỗi kiểu dáng mang đến một cảm giác riêng biệt và tạo nên phong cách khác nhau cho người mặc.</div><div><br></div><div>Chất liệu của đầm váy cũng rất phong phú, từ cotton, lụa, len, nhung, đến ren, chiffon hay satin, tùy thuộc vào từng loại đầm và phong cách mà bạn muốn tạo ra. Với chất liệu cao cấp, đầm váy sẽ tạo nên cảm giác thoải mái và sang trọng, đồng thời giữ được độ bền và độ đẹp của sản phẩm.</div>', 1, 10, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(33, 'Đầm Xòe Ngắn Tay', 600000, 699000, '1723486692.jpg', '<div>Đầm váy là một trong những trang phục được yêu thích nhất trong thế giới thời trang nữ. Với nhiều kiểu dáng, chất liệu và màu sắc đa dạng, đầm váy có thể phù hợp với nhiều hoàn cảnh và phong cách khác nhau.</div><div><br></div><div>Các kiểu dáng của đầm váy cũng rất đa dạng, có thể là đầm váy xòe, đầm váy chữ A, đầm maxi, đầm liền, đầm ôm hay đầm bút chì. Mỗi kiểu dáng mang đến một cảm giác riêng biệt và tạo nên phong cách khác nhau cho người mặc.</div><div><br></div><div>Chất liệu của đầm váy cũng rất phong phú, từ cotton, lụa, len, nhung, đến ren, chiffon hay satin, tùy thuộc vào từng loại đầm và phong cách mà bạn muốn tạo ra. Với chất liệu cao cấp, đầm váy sẽ tạo nên cảm giác thoải mái và sang trọng, đồng thời giữ được độ bền và độ đẹp của sản phẩm.</div>', 1, 10, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(34, 'Jumpsuit Vải Linen Pha', 400000, 499000, '1723486663.jpg', '<div>Đầm váy là một trong những trang phục được yêu thích nhất trong thế giới thời trang nữ. Với nhiều kiểu dáng, chất liệu và màu sắc đa dạng, đầm váy có thể phù hợp với nhiều hoàn cảnh và phong cách khác nhau.</div><div><br></div><div>Các kiểu dáng của đầm váy cũng rất đa dạng, có thể là đầm váy xòe, đầm váy chữ A, đầm maxi, đầm liền, đầm ôm hay đầm bút chì. Mỗi kiểu dáng mang đến một cảm giác riêng biệt và tạo nên phong cách khác nhau cho người mặc.</div><div><br></div><div>Chất liệu của đầm váy cũng rất phong phú, từ cotton, lụa, len, nhung, đến ren, chiffon hay satin, tùy thuộc vào từng loại đầm và phong cách mà bạn muốn tạo ra. Với chất liệu cao cấp, đầm váy sẽ tạo nên cảm giác thoải mái và sang trọng, đồng thời giữ được độ bền và độ đẹp của sản phẩm.</div>', 1, 10, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(35, 'Set đồ thể thao kèm quần', 800000, 899000, '1723486631.jpg', '<div><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Váy Nữ - Set Jumpsuit Cộc Tay Cổ Tàu Cúc Đồng Đính Viền Ren Kèm Quần Short Phong Cách Châu Âu BUN222\r\n================================\r\n✅ Thông số sản phẩm\r\n💖 Sét món : Set đồ liền quần\r\n     Size: S &lt;54kg\r\n              M &lt; 58kg\r\n              L  &lt; 62kg</span><br></div>', 1, 11, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(36, 'Set đầm ren thắt nơ', 500000, 599000, '1723486580.jpg', '<div><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Váy Nữ - Set Jumpsuit Cộc Tay Cổ Tàu Cúc Đồng Đính Viền Ren Kèm Quần Short Phong Cách Châu Âu BUN222\r\n================================\r\n✅ Thông số sản phẩm\r\n💖 Sét món : Set đồ liền quần\r\n     Size: S &lt;54kg\r\n              M &lt; 58kg\r\n              L  &lt; 62kg</span><br></div>', 1, 10, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(37, 'Set váy', 700000, 799000, '1723486532.jpg', '<div><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Váy Nữ - Set Jumpsuit Cộc Tay Cổ Tàu Cúc Đồng Đính Viền Ren Kèm Quần Short Phong Cách Châu Âu BUN222\r\n================================\r\n✅ Thông số sản phẩm\r\n💖 Sét món : Set đồ liền quần\r\n     Size: S &lt;54kg\r\n              M &lt; 58kg\r\n              L  &lt; 62kg</span><br></div>', 1, 10, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(38, 'Set đầm năng động', 400000, 499000, '1723486430.jpg', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Tên sản phẩm: Váy polo form suông nữ UNTOUCHABLE LOVE</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Chất liệu: Cotton tự nhiên thoáng mát nhờ công nghệ dệt vải mắt to, kháng khuẩn, thấm hút mồ hôi</p>', 1, 10, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(39, 'Set váy công chúa', 200000, 299000, '1723486335.jpg', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">MẶC ĐƯỢC 2 KIỂU: CÓ DÂY HOẶC CÚP NGỰC</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Chất vải đũi gân hàn quốc, váy mềm mại thích hợp 4 mùa</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Sản phẩm 100% giống mô tả. Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Xuất xứ: được thiết kế và gia công bởi xixeoshop.</p><p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Chất đũi gân cao cấp, có lót</p>', 1, 10, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(40, 'AIRism Áo Polo Gài Nút', 300000, 399000, '1683106911.png', '<span style=\"color: rgb(67, 67, 67); font-family: Roboto, sans-serif; font-size: 14px;\">Áo polo nam là một trong những loại áo phổ biến và được ưa chuộng trên toàn thế giới. Với thiết kế đơn giản, thoải mái và thời trang, áo polo nam trở thành một lựa chọn tuyệt vời cho các hoạt động từ hàng ngày đến các sự kiện quan trọng.</span>', 1, 3, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(41, 'Áo Polo Rugger Kẻ Sọc Ngắn Tay', 600000, 699000, '1723486234.jpg', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 12px; line-height: 18px; font-family: Roboto, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(67, 67, 67);\"><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space-collapse: preserve;\">ỘT CHIẾC V&Aacute;Y - ĐỦ KIỂU MIX ĐỒ! SET V&Aacute;Y SƠ MI G&Acirc;N K&Egrave;M V&Aacute;Y HAI D&Acirc;Y! - Team sơ mi combo cả v&aacute;y lu&ocirc;n nha =&gt; Em v&aacute;y n&agrave;y t&iacute;ch hợp cả hai đ&oacute; c&aacute;c n&agrave;ng. - Đầm về đủ m&agrave;u t&ocirc;n da cho chị em chọn lựa. M&agrave;u n&agrave;o diện cũng sang. - Set gồm: v&aacute;y sơ mi + v&aacute;y hai d&acirc;y c&ugrave;ng m&agrave;u. - Chất v&aacute;y sơ mi đũi g&acirc;n, độ d&agrave;y vừa phải, c&oacute; độ mềm mại - D&aacute;ng tay ngắn, cổ c&agrave;i c&uacute;c thanh lịch. - Đầm d&aacute;ng su&ocirc;ng d&agrave;i mặc l&ecirc;n si&ecirc;u xinh, cổ đức vừa nh&atilde; nhặn m&agrave; vẫn điệu đ&agrave;. - Freesize, tối đa 60kg mặc uki. Bầu b&iacute; bon chen thoải m&aacute;i ạ. - Th&iacute;ch hợp đi l&agrave;m - đi học - đi chơi - đi tiệc - chụp ảnh. - CAM KẾT video, ảnh shop chụp thật, cận chất! C&oacute; full ảnh shop mặc thật. Số đo 1m57, 48kg cho chị em tham khảo nh&eacute;! - Th&ocirc;ng số tham khảo, 1m57 sẽ mặc như mẫu: SET ĐẦM SƠ MI TAY SU&Ocirc;NG: + Đầm sơ mi cổ đức: 115cm. D&agrave;i tay: 24cm + V&aacute;y hai d&acirc;y lụa: 92cm (c&oacute; tăng đơ điều chỉnh độ d&agrave;i). SET ĐẦM SƠ MI TAY SẮN GẤU: + Đầm sơ mi cổ đức: D&agrave;i v&aacute;y: 105cm. D&agrave;i tay: 24cm. + V&aacute;y hai d&acirc;y lụa: 90cm (c&oacute; tăng đơ điều chỉnh độ d&agrave;i).</span></p>\r\n<div><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">&nbsp;</span></div>', 1, 10, 5, '2024-08-10 13:25:03', '2024-08-26 19:21:38', NULL),
(42, 'Áo váy búp bê', 200000, 300000, '1723485988.jpg', '<p>M&Ocirc; TẢ SẢN PHẨM:&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \'Helvetica Neue\', Helvetica, Arial, 文泉驛正黑, \'WenQuanYi Zen Hei\', \'Hiragino Sans GB\', \'儷黑 Pro\', \'LiHei Pro\', \'Heiti TC\', 微軟正黑體, \'Microsoft JhengHei UI\', \'Microsoft JhengHei\', sans-serif; font-size: 14px; white-space-collapse: preserve;\">&Aacute;o thun TEEDY GẤU B&Ocirc;NG ph&ocirc;ng cotton unisex nam nữ form rộng cổ tr&ograve;n ulzzang - AT32(TẶNG K&Egrave;M GẤU) ️Chất liệu:cotton 2 chiều ️Bo cổ : 3 ph&acirc;n kh&ocirc;ng bị gi&atilde;n hay nh&atilde;o sau khi giặt ️H&igrave;nh in : cam kết kh&ocirc;ng b&ocirc;ng trốc , kh&ocirc;ng g&acirc;y hại dạ , d&iacute;nh m&agrave;u , an to&agrave;n sức khoẻ cho người sử dụng , ️Thiết kế nhiều phong c&aacute;ch đa dạng kh&aacute;c nhau : streetwear , dễ thương, c&aacute; t&iacute;nh , mạnh mẽ, ngầu , năng đ&ocirc;ng, hiện thời , thiết mới lu&ocirc;n theo xu hướng trend ️ M&agrave;u sắc c&oacute; m&agrave;u : KEM ️ &Aacute;o c&oacute; 5 SIZE : S M L XL XXL</span></p>', 1, 9, 2, '2024-08-10 13:25:03', '2024-09-21 15:43:52', NULL),
(43, 'TEST', 100000, 20000, '1695649890.png', 'TEST MÔ TẢ', 1, 3, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', '2024-07-07 05:18:28'),
(44, 'Aó ghi lê', 450000, 540000, '1726962457.jpg', '<p>Sản phẩm goomg 2 chi tiết bao gồm một &aacute;o ghi l&ecirc; với một &aacute;o sơ mi.</p>', 1, 11, 2, '2024-09-21 23:47:37', '2024-09-21 23:47:37', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_color`
--

CREATE TABLE `products_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_color`
--

INSERT INTO `products_color` (`id`, `img`, `color_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, '1726938867.jpg', 2, 2, '2024-08-10 13:25:03', '2024-09-21 17:14:27', NULL),
(3, '1682757835.png', 3, 2, '2024-08-10 13:25:03', '2024-09-21 17:14:34', '2024-09-21 17:14:34'),
(4, '1682757846.png', 6, 2, '2024-08-10 13:25:03', '2024-09-21 17:14:37', '2024-09-21 17:14:37'),
(5, '1726938888.jpg', 1, 2, '2024-08-10 13:25:03', '2024-09-21 17:14:48', NULL),
(6, '1683009385.png', 1, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(7, '1683009405.png', 6, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(8, '1683009413.png', 2, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(9, '1683009674.png', 1, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(10, '1683009697.png', 2, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(11, '1683009705.png', 3, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(12, '1683009718.png', 6, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(13, '1683010022.png', 4, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(14, '1683010040.png', 2, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(15, '1683010050.png', 1, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(16, '1683010058.png', 6, 5, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(17, '1683010740.png', 1, 6, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(18, '1683010891.png', 1, 7, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(19, '1683010905.png', 3, 7, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(20, '1683010915.png', 6, 7, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(21, '1683011098.png', 2, 8, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(22, '1683011106.png', 3, 8, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(23, '1683011117.png', 6, 8, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(24, '1683011409.png', 1, 9, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(25, '1683011418.png', 2, 9, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(26, '1683011428.png', 6, 9, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(27, '1683011725.png', 1, 10, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(28, '1683011733.png', 2, 10, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(29, '1683011741.png', 3, 10, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(30, '1683011750.png', 6, 10, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(31, '1683011905.png', 4, 11, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(32, '1683011914.png', 2, 11, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(33, '1683011927.png', 6, 11, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(34, '1683012156.png', 3, 12, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(35, '1683012164.png', 2, 12, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(36, '1683012172.png', 6, 12, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(37, '1683012479.png', 4, 13, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(38, '1683012487.png', 6, 13, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(39, '1683012494.png', 2, 13, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(40, '1683012682.png', 1, 14, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(41, '1683012688.png', 2, 14, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(42, '1683012695.png', 6, 14, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(43, '1683012702.png', 4, 14, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(44, '1683012711.png', 3, 14, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(45, '1683012878.png', 1, 15, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(46, '1683012886.png', 2, 15, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(47, '1683012894.png', 3, 15, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(48, '1683012902.png', 6, 15, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(49, '1683013097.png', 1, 16, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(50, '1683013105.png', 2, 16, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(51, '1683013113.png', 6, 16, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(52, '1683013385.png', 2, 17, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(53, '1683013393.png', 6, 17, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(54, '1683013493.png', 2, 18, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(55, '1683013500.png', 3, 18, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(56, '1683013646.png', 2, 19, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(57, '1683013654.png', 6, 19, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(58, '1683013793.png', 2, 20, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(59, '1683013804.png', 6, 20, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(60, '1683013823.png', 3, 20, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(61, '1683013964.png', 5, 21, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(62, '1683013976.png', 6, 21, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(63, '1683013984.png', 4, 21, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(64, '1683014109.png', 2, 22, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(65, '1683014118.png', 6, 22, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(66, '1683014125.png', 1, 22, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(67, '1683015138.png', 1, 23, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(68, '1683015171.png', 3, 23, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(69, '1683015178.png', 6, 23, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(70, '1683015404.png', 1, 24, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(71, '1683015411.png', 2, 24, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(72, '1683015424.png', 4, 24, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(73, '1683015432.png', 3, 24, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(74, '1683015441.png', 7, 24, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(75, '1683015634.png', 1, 25, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(76, '1683015644.png', 2, 25, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(77, '1683015651.png', 4, 25, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(78, '1683016076.png', 1, 26, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(79, '1683016083.png', 2, 26, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(80, '1683016091.png', 3, 26, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(81, '1683016099.png', 6, 26, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(82, '1683016107.png', 5, 26, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(83, '1683016263.png', 1, 27, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(84, '1683016272.png', 2, 27, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(85, '1683016282.png', 6, 27, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(86, '1683016305.png', 5, 27, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(87, '1683016312.png', 4, 27, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(88, '1683016536.png', 1, 28, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(89, '1683016545.png', 2, 28, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(90, '1683016554.png', 3, 28, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(91, '1683016561.png', 4, 28, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(92, '1683016568.png', 5, 28, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(93, '1683016576.png', 6, 28, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(94, '1683016885.png', 1, 29, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(95, '1683016895.png', 6, 29, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(96, '1683016902.png', 2, 29, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(97, '1683017054.png', 3, 30, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(98, '1683017061.png', 6, 30, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(99, '1683017114.png', 1, 31, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(100, '1683017122.png', 2, 31, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(101, '1683017136.png', 3, 31, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(102, '1683017145.png', 4, 31, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(103, '1683017520.png', 4, 32, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(104, '1683017533.png', 6, 32, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(105, '1683017539.png', 2, 32, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(106, '1683017665.png', 6, 33, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(107, '1683017679.png', 2, 33, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(108, '1683017928.png', 2, 34, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(109, '1683017939.png', 3, 34, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(110, '1683017955.png', 6, 34, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(111, '1683017977.png', 4, 34, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(112, '1726844822.jfif', 1, 35, '2024-08-10 13:25:03', '2024-09-20 15:07:02', NULL),
(113, '1726844860.jfif', 4, 35, '2024-08-10 13:25:03', '2024-09-20 15:07:52', NULL),
(114, '1726844812.jfif', 2, 35, '2024-08-10 13:25:03', '2024-09-20 15:06:52', NULL),
(115, '1683018313.png', 6, 35, '2024-08-10 13:25:03', '2024-09-20 15:08:04', '2024-09-20 15:08:04'),
(116, '1726329981.jpg', 1, 36, '2024-08-10 13:25:03', '2024-09-14 16:06:21', NULL),
(117, '1683018504.png', 6, 36, '2024-08-10 13:25:03', '2024-09-14 16:06:26', '2024-09-14 16:06:26'),
(118, '1683018635.png', 2, 37, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(119, '1683018653.png', 6, 37, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(120, '1683018663.png', 3, 37, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(121, '1683106381.png', 6, 38, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(122, '1683105180.png', 1, 38, '2024-08-10 13:25:03', '2024-08-10 13:25:03', '2023-05-03 09:30:00'),
(123, '1726843836.jpg', 1, 39, '2024-08-10 13:25:03', '2024-09-20 14:50:36', NULL),
(124, '1683106966.png', 1, 40, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(125, '1724700088.jpg', 11, 41, '2024-08-10 13:25:03', '2024-09-20 15:09:42', NULL),
(126, '1724700035.jpg', 2, 42, '2024-08-10 13:25:03', '2024-08-26 19:20:35', NULL),
(127, '1724700049.jpg', 1, 42, '2024-08-10 13:25:03', '2024-08-26 19:20:49', NULL),
(128, '1695649905.png', 2, 43, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(129, '1726962471.jpg', 12, 44, '2024-09-21 23:47:51', '2024-09-21 23:47:51', NULL),
(130, '1726962529.jpg', 3, 44, '2024-09-21 23:48:49', '2024-09-21 23:48:49', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_size`
--

CREATE TABLE `products_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_size`
--

INSERT INTO `products_size` (`id`, `product_color_id`, `size_id`, `created_at`, `updated_at`, `quantity`, `deleted_at`) VALUES
(2, 2, 1, '2024-08-10 13:25:03', '2024-09-21 17:03:37', 49, NULL),
(3, 2, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(4, 2, 3, '2024-08-10 13:25:03', '2024-09-21 17:14:58', 50, '2024-09-21 17:14:58'),
(5, 3, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(6, 3, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(7, 5, 2, '2024-08-10 13:25:03', '2024-09-21 17:15:03', 50, '2024-09-21 17:15:03'),
(8, 5, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(9, 6, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(10, 6, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 47, NULL),
(11, 6, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(12, 6, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(13, 7, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(14, 7, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(15, 7, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(16, 8, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(17, 8, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(18, 8, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(19, 8, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(20, 9, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 36, NULL),
(21, 9, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(22, 9, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(23, 9, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(24, 10, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(25, 10, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(26, 10, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(27, 10, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(28, 11, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(29, 11, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(30, 11, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(31, 12, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(32, 12, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(33, 12, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(34, 12, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(35, 13, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 46, NULL),
(36, 13, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(37, 13, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(38, 14, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(39, 14, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(40, 14, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(41, 14, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(42, 15, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(43, 15, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(44, 15, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(45, 15, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(46, 16, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(47, 16, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(48, 16, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(49, 17, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(50, 17, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(51, 17, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(52, 17, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(53, 18, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(54, 18, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(55, 18, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(56, 18, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(57, 19, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(58, 19, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(59, 19, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(60, 19, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(61, 20, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(62, 20, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(63, 20, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(64, 21, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(65, 21, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(66, 21, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(67, 21, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 8, NULL),
(68, 22, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(69, 22, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(70, 22, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(71, 22, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(72, 23, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(73, 23, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(74, 23, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(75, 24, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(76, 24, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(77, 24, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(78, 24, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(79, 25, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(80, 25, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(81, 25, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(82, 25, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(83, 26, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(84, 26, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(85, 26, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(86, 26, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(87, 27, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(88, 27, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(89, 27, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(90, 27, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(91, 28, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(92, 28, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(93, 28, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(94, 28, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(95, 29, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(96, 29, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(97, 29, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(98, 29, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(99, 30, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(100, 30, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(101, 30, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(102, 30, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(103, 31, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 40, NULL),
(104, 31, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(105, 31, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(106, 31, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(107, 32, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(108, 32, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(109, 32, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(110, 32, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(111, 33, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(112, 33, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(113, 33, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(114, 33, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(115, 34, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 27, NULL),
(116, 34, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(117, 34, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 45, NULL),
(118, 34, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(119, 35, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(120, 35, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 35, NULL),
(121, 35, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(122, 35, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(123, 36, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(124, 36, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(125, 36, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(126, 36, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(127, 37, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(128, 37, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 47, NULL),
(129, 37, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(130, 37, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(131, 38, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(132, 38, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(133, 38, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(134, 38, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(135, 39, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(136, 39, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(137, 39, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(138, 39, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(139, 40, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(140, 40, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(141, 40, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(142, 40, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(143, 41, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(144, 41, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(145, 41, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(146, 41, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(147, 43, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(148, 43, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(149, 44, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(150, 44, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(151, 44, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(152, 45, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(153, 45, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(154, 45, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 46, NULL),
(155, 45, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(156, 46, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(157, 46, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(158, 46, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(159, 46, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(160, 47, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(161, 47, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(162, 47, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(163, 48, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(164, 48, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(165, 48, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(166, 49, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(167, 49, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(168, 49, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(169, 49, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(170, 50, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(171, 50, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(172, 50, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(173, 50, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(174, 51, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(175, 51, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(176, 52, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(177, 52, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(178, 52, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(179, 53, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(180, 53, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(181, 53, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(182, 54, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(183, 54, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(184, 54, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(185, 54, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(186, 55, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(187, 55, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(188, 55, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(189, 56, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(190, 56, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(191, 56, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(192, 57, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(193, 57, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(194, 57, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(195, 57, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(196, 58, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(197, 58, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(198, 58, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(199, 58, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(200, 59, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(201, 59, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(202, 59, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(203, 60, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(204, 60, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(205, 60, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(206, 60, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(207, 61, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(208, 61, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(209, 61, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(210, 62, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(211, 61, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(212, 62, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(213, 62, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(214, 63, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(215, 63, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(216, 63, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(217, 63, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(218, 64, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 40, NULL),
(219, 64, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 40, NULL),
(220, 64, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 40, NULL),
(221, 65, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 37, NULL),
(222, 65, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 40, NULL),
(223, 65, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 40, NULL),
(224, 66, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 40, NULL),
(225, 66, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 40, NULL),
(226, 66, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 40, NULL),
(227, 66, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 5, NULL),
(228, 67, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(229, 67, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(230, 67, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(231, 68, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(232, 68, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(233, 68, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(234, 69, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(235, 69, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(236, 69, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(237, 70, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(238, 70, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(239, 70, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(240, 71, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(241, 71, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(242, 70, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 48, '2023-05-02 08:18:06'),
(243, 71, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(244, 72, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(245, 72, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(246, 72, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(247, 73, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(248, 73, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(249, 73, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(250, 74, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(251, 74, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(252, 74, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(253, 75, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(254, 75, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(255, 75, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(256, 76, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(257, 76, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(258, 76, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(259, 77, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(260, 77, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(261, 77, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(262, 77, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(263, 78, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(264, 78, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(265, 78, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(266, 79, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(267, 79, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(268, 79, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(269, 80, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(270, 80, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(271, 80, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(272, 81, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(273, 81, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(274, 81, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(275, 82, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(276, 82, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(277, 82, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(278, 83, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(279, 83, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(280, 83, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, '2023-05-02 08:32:19'),
(281, 83, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(282, 84, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(283, 84, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(284, 84, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(285, 85, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(286, 85, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(287, 85, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(288, 86, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(289, 86, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(290, 86, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(291, 87, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(292, 87, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(293, 87, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(294, 88, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 48, NULL),
(295, 88, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 48, NULL),
(296, 88, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(297, 89, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(298, 89, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(299, 89, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(300, 90, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(301, 90, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(302, 90, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(303, 91, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(304, 91, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(305, 91, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(306, 92, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(307, 92, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(308, 92, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(309, 93, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(310, 93, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(311, 93, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(312, 94, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(313, 94, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(314, 94, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(315, 95, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(316, 95, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(317, 95, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(318, 96, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(319, 96, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(320, 96, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(321, 99, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 48, NULL),
(322, 99, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(323, 99, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(324, 100, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(325, 100, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(326, 100, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(327, 100, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(328, 101, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(329, 101, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(330, 101, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(331, 102, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(332, 102, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(333, 102, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(334, 103, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 48, NULL),
(335, 103, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(336, 103, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(337, 104, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(338, 104, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(339, 104, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(340, 105, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(341, 105, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(342, 105, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(343, 106, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(344, 106, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(345, 106, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(346, 107, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(347, 107, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(348, 107, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(349, 108, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 47, NULL),
(350, 108, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(351, 108, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(352, 109, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(353, 109, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(354, 109, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(355, 110, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(356, 110, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(357, 110, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(358, 111, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(359, 111, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(360, 111, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(361, 111, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(362, 112, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 48, NULL),
(363, 112, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(364, 112, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(365, 112, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(366, 113, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(367, 113, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(368, 113, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(369, 114, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(370, 114, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(371, 114, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(372, 115, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(373, 115, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(374, 115, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(375, 115, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(376, 116, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 48, NULL),
(377, 116, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(378, 116, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(379, 116, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 29, NULL),
(380, 117, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(381, 117, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(382, 117, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(383, 117, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(384, 118, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 46, NULL),
(385, 118, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(386, 118, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(387, 119, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(388, 119, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(389, 119, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(390, 120, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(391, 120, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(392, 120, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(393, 119, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 30, NULL),
(394, 118, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(395, 120, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(396, 121, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 48, NULL),
(397, 121, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(398, 121, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(399, 122, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, '2023-05-03 09:13:55'),
(400, 122, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(401, 123, 1, '2024-08-10 13:25:03', '2024-09-20 15:49:58', 40, NULL),
(402, 123, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 49, NULL),
(403, 123, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(404, 123, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(405, 124, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 45, NULL),
(406, 124, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(407, 124, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(408, 124, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 5, NULL),
(409, 125, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 39, NULL),
(410, 125, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(411, 125, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(412, 125, 4, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 20, NULL),
(413, 97, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 50, NULL),
(414, 97, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 48, NULL),
(415, 126, 1, '2024-08-10 13:25:03', '2024-09-21 17:45:19', 45, NULL),
(416, 126, 3, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(417, 128, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 10, NULL),
(418, 128, 2, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 15, NULL),
(419, 127, 1, '2024-08-10 13:25:03', '2024-08-10 13:25:03', 99, NULL),
(420, 127, 5, NULL, '2024-09-21 17:45:11', 68, NULL),
(421, 5, 1, NULL, NULL, 29, NULL),
(422, 2, 5, NULL, NULL, 23, NULL),
(423, 129, 1, NULL, NULL, 120, NULL),
(424, 129, 2, NULL, NULL, 100, NULL),
(425, 129, 3, NULL, NULL, 30, NULL),
(426, 129, 4, NULL, NULL, 23, NULL),
(427, 130, 1, NULL, NULL, 78, NULL),
(428, 130, 2, NULL, NULL, 34, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rating`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(27, 19, 41, 5, 'Ngon bổ rẻ', '2024-09-21 15:50:19', '2024-09-21 15:50:19', NULL),
(28, 16, 34, 5, 'Đẹp lắm nha', '2024-09-21 16:27:34', '2024-09-21 16:27:34', NULL),
(29, 16, 35, 5, 'Đẹp', '2024-09-21 16:28:16', '2024-09-21 16:28:16', NULL),
(30, 18, 40, 5, 'Chất liệu mát, phù hợp với giá tiền', '2024-09-21 16:32:33', '2024-09-21 16:32:33', NULL),
(31, 18, 32, 5, 'ok!', '2024-09-21 16:33:05', '2024-09-21 16:33:05', NULL),
(32, 21, 42, 5, 'ok', '2024-09-21 16:35:06', '2024-09-21 16:35:06', NULL),
(33, 21, 39, 5, 'ok', '2024-09-21 16:35:34', '2024-09-21 16:35:34', NULL),
(34, 21, 40, 5, 'okla', '2024-09-21 16:41:46', '2024-09-21 16:41:46', NULL),
(35, 21, 31, 5, 'okla', '2024-09-21 16:42:13', '2024-09-21 16:42:13', NULL),
(36, 16, 14, 5, 'OKLa', '2024-09-21 17:02:54', '2024-09-21 17:02:54', NULL),
(37, 16, 3, 5, 'có mua test 25/08', '2024-09-21 17:06:54', '2024-09-21 17:06:54', NULL),
(38, 16, 2, 5, 'đjep', '2024-09-21 17:13:44', '2024-09-21 17:13:44', NULL),
(39, 23, 36, 5, 'ok đẹp nha', '2024-09-21 17:25:05', '2024-09-21 17:25:05', NULL),
(40, 23, 28, 5, 'ok ạ', '2024-09-21 17:26:16', '2024-09-21 17:26:16', NULL),
(41, 23, 37, 5, 'RẤT OK', '2024-09-21 17:28:53', '2024-09-21 17:28:53', NULL),
(42, 23, 33, 5, 'OKLA', '2024-09-21 17:30:35', '2024-09-21 17:30:35', NULL),
(43, 23, 4, 5, 'ĐẸP', '2024-09-21 17:32:04', '2024-09-21 17:32:04', NULL),
(44, 16, 11, 4, 'tạm ổn', '2024-09-21 17:48:42', '2024-09-21 17:48:42', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Quản trị viên'),
(2, 'Nhân Viên'),
(3, 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `name` char(100) NOT NULL,
  `email` char(100) NOT NULL,
  `address` char(255) NOT NULL,
  `phone_number` char(20) NOT NULL,
  `maintenance` int(11) NOT NULL,
  `notification` text NOT NULL,
  `introduction` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `logo`, `name`, `email`, `address`, `phone_number`, `maintenance`, `notification`, `introduction`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'WebBanQuanAo', 'truongthuyshop@gmail.com', 'Nga Bắc, Liêm Thuận, Thanh Liêm, Hà Nam', '0000000000', 2, '<p><strong>WEBSITE tạm thời bảo tr&igrave; để n&acirc;ng cấp xin quay lại sau</strong></p>', '<h3 style=\"text-align: center;\"><strong>GIỚI THIỆU VỀ TRƯỜNG TH&Uacute;Y SHOP</strong></h3>\r\n<h5>&nbsp;</h5>\r\n<h5>Ch&agrave;o mừng đến với website b&aacute;n thời trang của ch&uacute;ng t&ocirc;i! Ch&uacute;ng t&ocirc;i tự h&agrave;o l&agrave; một trong những cửa h&agrave;ng trực tuyến h&agrave;ng đầu về thời trang, cung cấp cho kh&aacute;ch h&agrave;ng những sản phẩm thời trang chất lượng cao v&agrave; đa dạng.</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>Đối với ch&uacute;ng t&ocirc;i, thời trang l&agrave; một niềm đam m&ecirc; v&agrave; một nghệ thuật. Ch&uacute;ng t&ocirc;i kh&ocirc;ng chỉ cung cấp cho kh&aacute;ch h&agrave;ng những sản phẩm thời trang đẹp v&agrave; chất lượng, m&agrave; c&ograve;n mang đến cho họ những trải nghiệm mua sắm tuyệt vời. Ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để đ&aacute;p ứng nhu cầu của kh&aacute;ch h&agrave;ng, từ việc cung cấp những sản phẩm mới nhất đến việc cải tiến dịch vụ kh&aacute;ch h&agrave;ng.</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>Ch&uacute;ng t&ocirc;i cam kết chỉ b&aacute;n những sản phẩm thời trang được l&agrave;m từ chất liệu tốt nhất, đảm bảo độ bền cao v&agrave; gi&aacute; trị sử dụng l&acirc;u d&agrave;i. Ch&uacute;ng t&ocirc;i lu&ocirc;n đảm bảo rằng mỗi sản phẩm đều được kiểm tra kỹ lưỡng trước khi đưa v&agrave;o b&aacute;n h&agrave;ng, để đảm bảo rằng ch&uacute;ng đ&aacute;p ứng c&aacute;c ti&ecirc;u chuẩn chất lượng m&agrave; ch&uacute;ng t&ocirc;i đặt ra.</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>Ch&uacute;ng t&ocirc;i lu&ocirc;n cập nhật c&aacute;c xu hướng thời trang mới nhất, đảm bảo rằng bạn sẽ lu&ocirc;n c&oacute; những sản phẩm đẹp v&agrave; ph&ugrave; hợp với phong c&aacute;ch của m&igrave;nh. Từ những bộ c&aacute;nh phong c&aacute;ch đường phố đến những thiết kế sang trọng cho c&aacute;c buổi tiệc, ch&uacute;ng t&ocirc;i c&oacute; tất cả những g&igrave; bạn cần để thể hiện phong c&aacute;ch c&aacute; nh&acirc;n của m&igrave;nh.</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>Ngo&agrave;i ra, ch&uacute;ng t&ocirc;i cũng cung cấp cho kh&aacute;ch h&agrave;ng c&aacute;c phụ kiện thời trang đa dạng, từ gi&agrave;y d&eacute;p, t&uacute;i x&aacute;ch, đồng hồ đến trang sức v&agrave; nhiều thứ kh&aacute;c, gi&uacute;p kh&aacute;ch h&agrave;ng ho&agrave;n thiện phong c&aacute;ch của m&igrave;nh một c&aacute;ch tuyệt vời.</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>Đội ngũ nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng hỗ trợ bạn trong qu&aacute; tr&igrave;nh mua sắm. Ch&uacute;ng t&ocirc;i cam kết đem đến cho kh&aacute;ch h&agrave;ng những trải nghiệm mua sắm tuyệt vời, từ việc t&igrave;m kiếm sản phẩm đến việc đặt h&agrave;ng v&agrave; nhận h&agrave;ng.</h5>\r\n<p>&nbsp;</p>\r\n<h5>Ch&uacute;ng t&ocirc;i tự h&agrave;o giới thiệu cho bạn những sản phẩm thời trang đa dạng v&agrave; phong ph&uacute;. Từ những bộ c&aacute;nh casual h&agrave;ng ng&agrave;y đến những thiết kế sang trọng cho c&aacute;c dịp đặc biệt, ch&uacute;ng t&ocirc;i c&oacute; tất cả những g&igrave; bạn cần để thể hiện phong c&aacute;ch c&aacute; nh&acirc;n của m&igrave;nh.</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>Với những thiết kế đa dạng, ch&uacute;ng t&ocirc;i cam kết đem đến cho kh&aacute;ch h&agrave;ng những trải nghiệm mua sắm tuyệt vời. Những sản phẩm của ch&uacute;ng t&ocirc;i được thiết kế v&agrave; sản xuất bởi những thương hiệu nổi tiếng tr&ecirc;n thế giới, đảm bảo về chất lượng v&agrave; độ bền.</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>Nếu bạn đang t&igrave;m kiếm những bộ c&aacute;nh năng động v&agrave; trẻ trung, h&atilde;y kh&aacute;m ph&aacute; c&aacute;c sản phẩm &aacute;o thun, quần jean, &aacute;o kho&aacute;c bomber, hoặc c&aacute;c thiết kế streetwear đầy phong c&aacute;ch. Nếu bạn cần một bộ c&aacute;nh lịch sự cho một buổi tiệc hoặc sự kiện quan trọng, ch&uacute;ng t&ocirc;i cũng c&oacute; c&aacute;c thiết kế sang trọng như v&aacute;y dạ hội, đầm maxi, &aacute;o sơ mi hay quần t&acirc;y.</h5>\r\n<h5>&nbsp;</h5>\r\n<h5>Ngo&agrave;i ra, ch&uacute;ng t&ocirc;i cũng cung cấp c&aacute;c sản phẩm thời trang thể thao, đ&aacute;p ứng nhu cầu của những kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch c&aacute;c hoạt động thể thao v&agrave; th&iacute;ch sự thoải m&aacute;i khi mặc. <br>H&atilde;y truy cập v&agrave;o website của ch&uacute;ng t&ocirc;i để kh&aacute;m ph&aacute; th&ecirc;m c&aacute;c sản phẩm thời trang đa dạng v&agrave; phong ph&uacute;. Ch&uacute;ng t&ocirc;i tin rằng, bạn sẽ t&igrave;m thấy những sản phẩm ưng &yacute; v&agrave; ph&ugrave; hợp với phong c&aacute;ch c&aacute; nh&acirc;n của m&igrave;nh.</h5>', NULL, '2024-09-20 16:53:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'S', NULL, NULL, NULL),
(2, 'M', NULL, NULL, NULL),
(3, 'L', NULL, NULL, NULL),
(4, 'XL', NULL, NULL, NULL),
(5, 'XS', '2024-09-20 14:48:02', '2024-09-20 14:48:02', NULL),
(6, 'XXL', '2024-09-21 17:17:34', '2024-09-21 17:17:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `disable_reason` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `email_verified_at`, `phone_number`, `role_id`, `active`, `disable_reason`, `created_by`, `updated_by`, `deleted_by`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-04-28 04:29:18', '0845111111', 1, 1, NULL, NULL, 1, NULL, NULL, '2024-08-10 13:25:03', '2024-09-21 17:40:12', NULL),
(2, 'Ho Anh Nguyen', 'han16052001@gmail.com', '$2y$10$Q8XcfyypiOp348/xjPVxLOVpuC00zJLgF4D5LXMLF68ymKCa.6Ho.', '2023-05-02 03:25:18', '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(3, 'Nguyễn Trần Gia Bảo 1', 'bao123@gmail.com', '$2y$10$hws5O4QZ5e82me3rMxX2sevI04rIkLucvwWhvfeY6TM/XuSy8etjy', '2023-05-18 10:11:58', '0845111111', 2, 1, NULL, 1, 1, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(9, 'Lê Hữu Phước', 'test123@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-05-04 01:10:50', '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(10, 'Lê Hữu Phước', 'test123@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-09-21 12:55:34', '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(11, 'Lê Hữu Phước', 'test@gmail.comaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaatest123@gmail.com', '$2y$10$AqRDBZgakr6/En4YhwG5AeILGcPnRyqMJ4ZMFqTTIpXjQktoTTfL2', NULL, '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(12, 'Lê Hữu Phước', 'test123@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2023-09-25 13:46:33', '0845111111', 3, 1, NULL, NULL, 12, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(13, 'lan nguyen', 'test123@gmail.com', '$2y$10$cNvExJCwMpAGHiq3gp9V3uwPqR5j5Zx71hwfsIJirj37ViP5btu..', NULL, '0845111111', 2, 1, NULL, 1, NULL, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(14, 'lan nguyen', 'test123@gmail.com', '$2y$10$LYrLPE2aaJ5qj0rZPoa1.eIeuWg8rhNqIKhaYuM5k8jlgdAcU3joC', NULL, '0845111111', 3, 1, NULL, 1, NULL, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(15, 'lan nguyen', 'test123@gmail.com', '$2y$10$TLhtxekTVlUGM8P8.uOsNe23aUF57BzrpGZZmxSYXN71j641pNmXi', NULL, '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(16, 'lan nguyen', 'test123@gmail.com', '$2y$10$Drq2TfxHgva8B0b2WBJwM..n0juYWbDlnT2nIpze4uu7dnO1KB6.2', '2024-08-13 00:00:21', '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(17, 'Lanh', 'test123@gmail.com', '$2y$10$0T2Za97.ySfhlNvmjviC4elYwYGnne2VlN192jIEc.Vpbrx/ihrXK', NULL, '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-08-10 13:25:03', '2024-08-10 13:25:03', NULL),
(18, 'lan nguyen', 'test123@gmail.com', '$2y$10$cdDC8oXaucBKuve9tDnDieir7w2QztIzmH/SFsaqOjPUfNEJ/MEuW', '2024-08-26 19:18:57', '0845111111', 3, 1, NULL, NULL, 18, NULL, NULL, '2024-08-26 19:18:27', '2024-09-20 14:32:55', NULL),
(19, 'Nguyen Lanh', 'test123@gmail.com', '$2y$10$MjSHBHYNF0uASa.oHt7s8OUwHqPfQ3CGpEnL5Jnn8fVvHXWvTHYnK', '2024-09-16 13:10:08', '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-09-16 13:09:02', '2024-09-16 13:10:08', NULL),
(20, 'Nguyen Lanh01', 'test123@gmail.com', '$2y$10$Q/GaTQNz922fNQpXIldZk.cwHoH0KLFdR/GHzTxs264SNPieAEnnK', '2024-09-17 15:16:10', '0845111111', 2, 1, NULL, 1, 20, NULL, NULL, '2024-09-17 15:13:10', '2024-09-20 15:55:07', NULL),
(21, 'Nguyen Chi', 'test123@gmail.com', '$2y$10$.JLcBiomObX6bWA03temKOrdXL91ONuXsfRF4GDyXUfHbPilBMygq', '2024-09-20 16:04:59', '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-09-20 16:04:22', '2024-09-20 16:04:59', NULL),
(22, 'Nguyen Lanh', 'test123@gmail.com', '$2y$10$Ul4Nbyf3wHCJIqv3krIWheN423/Q0ZSAH3Fdtpv4mrf1DqMr8a00i', NULL, '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-09-20 16:16:48', '2024-09-20 16:16:48', NULL),
(23, 'Nguễn xuân', 'test123@gmail.com', '$2y$10$5AdgfU.BZ41tPBXuxkg.FePSrHSHCCJruLN2AWxwlgqvnWCROX2DS', '2024-09-21 17:23:12', '0845111111', 3, 1, NULL, NULL, NULL, NULL, NULL, '2024-09-21 17:22:42', '2024-09-21 17:23:12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_verifies`
--

CREATE TABLE `user_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `email_verify` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_verifies`
--

INSERT INTO `user_verifies` (`id`, `user_id`, `token`, `expires_at`, `email_verify`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 22, 'IG1lBZB64n9b0phmDQqB9peyMMXuZQNCb9OwH4OdmmJIs4mLZt9rUkHUTGzvUR4L', '2024-09-20 17:16:48', NULL, '2024-09-20 16:16:48', '2024-09-20 16:16:48', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_size_id_foreign` (`product_size_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `products_color`
--
ALTER TABLE `products_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_color_color_id_foreign` (`color_id`),
  ADD KEY `products_color_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `products_size`
--
ALTER TABLE `products_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_size_product_color_id_foreign` (`product_color_id`),
  ADD KEY `products_size_size_id_foreign` (`size_id`);

--
-- Chỉ mục cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1726941348873;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `products_color`
--
ALTER TABLE `products_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `products_size`
--
ALTER TABLE `products_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `user_verifies`
--
ALTER TABLE `user_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_size_id_foreign` FOREIGN KEY (`product_size_id`) REFERENCES `products_size` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `products_color`
--
ALTER TABLE `products_color`
  ADD CONSTRAINT `products_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `products_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products_size`
--
ALTER TABLE `products_size`
  ADD CONSTRAINT `products_size_product_color_id_foreign` FOREIGN KEY (`product_color_id`) REFERENCES `products_color` (`id`),
  ADD CONSTRAINT `products_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Các ràng buộc cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
