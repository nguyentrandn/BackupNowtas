-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 21, 2022 lúc 09:10 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_banxe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(50) NOT NULL,
  `id_customer` int(50) NOT NULL COMMENT 'id khách hàng',
  `date_order` date NOT NULL COMMENT 'ngày oder',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(50) NOT NULL,
  `total` float NOT NULL COMMENT 'Tổng tiền',
  `ngaynhanxe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Hình thức thanh toán',
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `note` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `name`, `gender`, `email`, `address`, `phone`, `total`, `ngaynhanxe`, `payment`, `quantity`, `unit_price`, `note`, `created_at`, `updated_at`) VALUES
(24, 47, '2022-02-16', 'Bân Đức Trò', 'Nam', '19C0013@danavtc.edu.vn', '111222 Hai Bà Trưng', 359826011, 490, '2022-02-02', 'Tiền mặt', 2, 245, 'không', '2022-02-16 02:27:05', '2022-02-16 02:27:05'),
(25, 48, '2022-02-16', 'nguyên', 'Nam', 'phamviethoangmtp@gmail.com', '111222 Hai Bà Trưng', 359826011, 321900000, '2022-02-26', 'Ngân hàng', 1, 321900000, 'hihi', '2022-02-16 02:28:09', '2022-02-16 02:28:09'),
(26, 49, '2022-02-16', 'nguyênngu', 'Nam', 'phamviethoangmtp@gmail.com', '111222 Hai Bà Trưng', 359826011, 225, '2022-02-06', 'Tiền mặt', 1, 225, 'aaaaaaa', '2022-02-16 06:38:01', '2022-02-16 06:38:01'),
(27, 51, '2022-02-16', 'Hoàng Phạm', 'Nữ', 'hoangfergu@gmail.com', '111222 Hai Bà Trưng', 359826011, 1904, '2022-02-19', 'Ngân hàng', 1, 585, 'không', '2022-02-16 07:06:45', '2022-02-16 07:06:45'),
(28, 52, '2022-02-17', 'nguyên', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 585, '2022-02-04', 'Tiền mặt', 1, 585, 'aaaaa', '2022-02-17 09:01:47', '2022-02-17 09:01:47'),
(29, 53, '2022-02-17', 'nguyên', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 585, '2022-02-04', 'Tiền mặt', 1, 585, 'aaaaa', '2022-02-17 09:02:15', '2022-02-17 09:02:15'),
(30, 54, '2022-02-17', 'qqqqqqqq', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 585, '2022-02-04', 'Tiền mặt', 1, 585, 'aaaaa', '2022-02-17 09:36:46', '2022-02-17 09:36:46'),
(31, 55, '2022-02-17', 'vvvvvvvvvvvvvvvv', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 585, '2022-02-04', 'Tiền mặt', 1, 585, 'aaaaa', '2022-02-17 09:39:18', '2022-02-17 09:39:18'),
(32, 56, '2022-02-17', 'cccccccccccccccccc', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 585, '2022-02-04', 'Tiền mặt', 1, 585, 'aaaaa', '2022-02-17 09:40:03', '2022-02-17 09:40:03'),
(33, 57, '2022-02-18', 'nguyênnnnnnnnnnnnnnnnnnn', 'Nam', 'phamviethoangmtp@gmail.com', '111222 Hai Bà Trưng', 359826011, 1243, '2022-02-28', 'Tiền mặt', 2, 998, 'zzzzzzzz', '2022-02-18 08:15:49', '2022-02-18 08:15:49'),
(34, 58, '2022-02-19', 'hoangvietpham', 'Nam', 'hoangfergus76@gmail.com', 'zzzzzzzzz', 123456789, 471, '2022-02-24', 'Tiền mặt', 3, 225, 'zzzzzzzzzzzzzzzz', '2022-02-19 02:35:21', '2022-02-19 02:35:21'),
(35, 59, '2022-02-20', 'Hoang bede', 'Nam', 'hoangfergus76@gmail.com', '68 Tôn Thất Thiệp', 123456789, 4444570, '2022-02-20', 'Ngân hàng', 3, 2222220, 'aaaaaaaaa', '2022-02-20 01:42:14', '2022-02-20 01:42:14'),
(36, 61, '2022-02-20', 'ok la', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 585, '2022-02-20', 'Ngân hàng', 1, 585, 'aaaaaaaaaa', '2022-02-20 02:18:43', '2022-02-20 02:18:43'),
(37, 62, '2022-02-20', 'test anh', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 1583, '2022-02-25', 'Tiền mặt', 2, 998, 'xxxxxxxxxxxxxxxxx', '2022-02-20 02:20:46', '2022-02-20 02:20:46'),
(38, 65, '2022-02-20', 'qqqqqqqqqqq', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 227901000, '2022-02-20', 'Tiền mặt', 2, 227900000, 'axxxxxxxxxxxx', '2022-02-20 02:22:08', '2022-02-20 02:22:08'),
(39, 66, '2022-02-20', 'xxxxxxxxx', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 1243, '2022-02-25', 'Ngân hàng', 2, 998, 'xxxxxxxxxxxxxxxxx', '2022-02-20 02:24:02', '2022-02-20 02:24:02'),
(40, 67, '2022-02-20', 'xxxxxxxxx', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 585, '2022-02-23', 'Tiền mặt', 1, 585, 'xxxxxxxxxxxx', '2022-02-20 02:26:12', '2022-02-20 02:26:12'),
(41, 68, '2022-02-20', 'xxxxxxx', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 245, '2022-02-22', 'Tiền mặt', 1, 245, 'xxxxxxxxxxxxxxx', '2022-02-20 02:27:00', '2022-02-20 02:27:00'),
(42, 69, '2022-02-20', 'xxxxxxxxxxxx', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 245, '2022-02-22', 'Tiền mặt', 1, 245, 'xxxxxxxxxxxxxxx', '2022-02-20 02:29:04', '2022-02-20 02:29:04'),
(43, 70, '2022-02-20', 'xxxxxxxxx', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 585, '2022-02-23', 'Tiền mặt', 1, 585, 'xxxxxxxxxxx', '2022-02-20 02:30:13', '2022-02-20 02:30:13'),
(44, 71, '2022-02-20', 'qwwwwwwwww', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 225, '2022-02-24', 'Tiền mặt', 1, 225, 'wwwwwwwwww', '2022-02-20 02:31:13', '2022-02-20 02:31:13'),
(45, 72, '2022-02-20', 'zzzzzzzzzzz', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 585, '2022-02-22', 'Tiền mặt', 1, 585, 'zzzzzzzzzzzzz', '2022-02-20 02:32:57', '2022-02-20 02:32:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(50) NOT NULL COMMENT 'Id của Bill',
  `id_product` int(50) NOT NULL COMMENT 'id Sản Phẩm',
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `tenxe` varchar(50) NOT NULL,
  `unit_price` float NOT NULL COMMENT 'Giá',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `tenxe`, `unit_price`, `created_at`, `updated_at`) VALUES
(21, 24, 1, 2, '', 122.5, '2022-02-16 02:27:05', '2022-02-16 02:27:05'),
(22, 25, 19, 1, '', 321900000, '2022-02-16 02:28:09', '2022-02-16 02:28:09'),
(23, 26, 3, 1, '', 225, '2022-02-16 06:38:01', '2022-02-16 06:38:01'),
(24, 27, 2, 1, '', 585, '2022-02-16 07:06:45', '2022-02-16 07:06:45'),
(25, 28, 2, 1, '', 585, '2022-02-17 09:01:47', '2022-02-17 09:01:47'),
(26, 29, 2, 1, '', 585, '2022-02-17 09:02:15', '2022-02-17 09:02:15'),
(27, 30, 2, 1, '', 585, '2022-02-17 09:36:46', '2022-02-17 09:36:46'),
(28, 31, 2, 1, '', 585, '2022-02-17 09:39:18', '2022-02-17 09:39:18'),
(29, 32, 2, 1, '', 585, '2022-02-17 09:40:03', '2022-02-17 09:40:03'),
(30, 33, 1, 1, '', 245, '2022-02-18 08:15:49', '2022-02-18 08:15:49'),
(31, 33, 4, 1, '', 998, '2022-02-18 08:15:49', '2022-02-18 08:15:49'),
(32, 34, 37, 2, 'a123', 61.5, '2022-02-19 02:35:21', '2022-02-19 02:35:21'),
(33, 34, 3, 1, 'Super Cub C125', 225, '2022-02-19 02:35:21', '2022-02-19 02:35:21'),
(34, 35, 37, 1, 'a123', 123, '2022-02-20 01:42:14', '2022-02-20 01:42:14'),
(35, 35, 42, 2, 'xe vip', 1111110, '2022-02-20 01:42:14', '2022-02-20 01:42:14'),
(36, 36, 2, 1, 'CB500X 2021', 585, '2022-02-20 02:18:43', '2022-02-20 02:18:43'),
(37, 37, 2, 1, 'CB500X 2021', 585, '2022-02-20 02:20:47', '2022-02-20 02:20:47'),
(38, 37, 4, 1, 'Wave Alpha 110', 998, '2022-02-20 02:20:47', '2022-02-20 02:20:47'),
(39, 38, 2, 1, 'CB500X 2021', 585, '2022-02-20 02:22:08', '2022-02-20 02:22:08'),
(40, 38, 13, 1, 'SH125i/150i', 227900000, '2022-02-20 02:22:08', '2022-02-20 02:22:08'),
(41, 39, 1, 1, 'Future 125 FI', 245, '2022-02-20 02:24:02', '2022-02-20 02:24:02'),
(42, 39, 4, 1, 'Wave Alpha 110', 998, '2022-02-20 02:24:02', '2022-02-20 02:24:02'),
(43, 40, 2, 1, 'CB500X 2021', 585, '2022-02-20 02:26:12', '2022-02-20 02:26:12'),
(44, 41, 1, 1, 'Future 125 FI', 245, '2022-02-20 02:27:00', '2022-02-20 02:27:00'),
(45, 42, 1, 1, 'Future 125 FI', 245, '2022-02-20 02:29:04', '2022-02-20 02:29:04'),
(46, 43, 2, 1, 'CB500X 2021', 585, '2022-02-20 02:30:13', '2022-02-20 02:30:13'),
(47, 44, 3, 1, 'Super Cub C125', 225, '2022-02-20 02:31:13', '2022-02-20 02:31:13'),
(48, 45, 2, 1, 'CB500X 2021', 585, '2022-02-20 02:32:57', '2022-02-20 02:32:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(50) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone`, `note`, `created_at`, `updated_at`) VALUES
(47, 'Bân Đức Trò', 'Nam', '19C0013@danavtc.edu.vn', '111222 Hai Bà Trưng', 359826011, 'không', '2022-02-16 02:27:05', '2022-02-16 02:27:05'),
(48, 'nguyên', 'Nam', 'phamviethoangmtp@gmail.com', '111222 Hai Bà Trưng', 359826011, 'hihi', '2022-02-16 02:28:09', '2022-02-16 02:28:09'),
(49, 'nguyênngu', 'Nam', 'phamviethoangmtp@gmail.com', '111222 Hai Bà Trưng', 359826011, 'aaaaaaa', '2022-02-16 06:38:01', '2022-02-16 06:38:01'),
(50, 'nguyênngu', 'Nam', 'phamviethoangmtp@gmail.com', '111222 Hai Bà Trưng', 359826011, 'aaaaaaa', '2022-02-16 06:38:47', '2022-02-16 06:38:47'),
(51, 'Hoàng Phạm', 'Nữ', 'hoangfergu@gmail.com', '111222 Hai Bà Trưng', 359826011, 'không', '2022-02-16 07:06:45', '2022-02-16 07:06:45'),
(52, 'nguyên', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 'aaaaa', '2022-02-17 09:01:47', '2022-02-17 09:01:47'),
(53, 'nguyên', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 'aaaaa', '2022-02-17 09:02:15', '2022-02-17 09:02:15'),
(54, 'qqqqqqqq', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 'aaaaa', '2022-02-17 09:36:46', '2022-02-17 09:36:46'),
(55, 'vvvvvvvvvvvvvvvv', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 'aaaaa', '2022-02-17 09:39:18', '2022-02-17 09:39:18'),
(56, 'cccccccccccccccccc', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 'aaaaa', '2022-02-17 09:40:03', '2022-02-17 09:40:03'),
(57, 'nguyênnnnnnnnnnnnnnnnnnn', 'Nam', 'phamviethoangmtp@gmail.com', '111222 Hai Bà Trưng', 359826011, 'zzzzzzzz', '2022-02-18 08:15:49', '2022-02-18 08:15:49'),
(58, 'hoangvietpham', 'Nam', 'hoangfergus76@gmail.com', 'zzzzzzzzz', 123456789, 'zzzzzzzzzzzzzzzz', '2022-02-19 02:35:21', '2022-02-19 02:35:21'),
(59, 'Hoang bede', 'Nam', 'hoangfergus76@gmail.com', '68 Tôn Thất Thiệp', 123456789, 'aaaaaaaaa', '2022-02-20 01:42:14', '2022-02-20 01:42:14'),
(60, 'aaaaa', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'aaaaaa', '2022-02-20 01:45:14', '2022-02-20 01:45:14'),
(61, 'ok la', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'aaaaaaaaaa', '2022-02-20 02:18:43', '2022-02-20 02:18:43'),
(62, 'test anh', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'xxxxxxxxxxxxxxxxx', '2022-02-20 02:20:46', '2022-02-20 02:20:46'),
(63, 'test anh', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'xxxxxxxxxxxxxxxxx', '2022-02-20 02:20:50', '2022-02-20 02:20:50'),
(64, 'aaaaaaaaaaaaaaaaa', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'xxxxxxxxxxxxxxxxx', '2022-02-20 02:21:31', '2022-02-20 02:21:31'),
(65, 'qqqqqqqqqqq', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'axxxxxxxxxxxx', '2022-02-20 02:22:08', '2022-02-20 02:22:08'),
(66, 'xxxxxxxxx', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'xxxxxxxxxxxxxxxxx', '2022-02-20 02:24:02', '2022-02-20 02:24:02'),
(67, 'xxxxxxxxx', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'xxxxxxxxxxxx', '2022-02-20 02:26:12', '2022-02-20 02:26:12'),
(68, 'xxxxxxx', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'xxxxxxxxxxxxxxx', '2022-02-20 02:27:00', '2022-02-20 02:27:00'),
(69, 'xxxxxxxxxxxx', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'xxxxxxxxxxxxxxx', '2022-02-20 02:29:04', '2022-02-20 02:29:04'),
(70, 'xxxxxxxxx', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'xxxxxxxxxxx', '2022-02-20 02:30:13', '2022-02-20 02:30:13'),
(71, 'qwwwwwwwww', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'wwwwwwwwww', '2022-02-20 02:31:13', '2022-02-20 02:31:13'),
(72, 'zzzzzzzzzzz', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'zzzzzzzzzzzzz', '2022-02-20 02:32:57', '2022-02-20 02:32:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(50) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phukien`
--

CREATE TABLE `phukien` (
  `id` int(50) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên Xe',
  `id_type` int(50) NOT NULL COMMENT 'id bên bản Type',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mô tả',
  `unit_price` int(100) NOT NULL COMMENT 'giá gốc',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phukien`
--

INSERT INTO `phukien` (`id`, `name`, `id_type`, `description`, `unit_price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Phuộc YSS ', 5, 'Loại xe sử dụng: Phuộc YSS cho xe Honda Airblade, Honda SH Italy, Honda Dylan, Yamaha Nouvo, Honda PCX 125', 60000, 'phuoc1.jpg', NULL, NULL),
(2, 'Phuộc YSS G-SPORT', 2, 'Loại xe sử dụng: Exciter 150', 70000, 'phuocexite.jpg', NULL, NULL),
(3, 'Nhông Sên Dĩa DID HDS Honda MSX', 5, 'Loại xe sử dụng: Honda MSX 125', 150000, 'nhongxenrsx.jpg', NULL, NULL),
(4, 'Nhông Sên Dĩa DID AD3 Wave RS CN', 5, 'Loại xe sử dụng: Xe Wave', 170000, 'xxx.png', NULL, NULL),
(5, 'Vỏ Xe Michelin Sau Nouvo LX/Trước SH Mode 80/90-16 TL/TT Pilot Street', 5, 'Loại xe sử dụng: SH Mode', 100000, 'voxe.jpg', NULL, NULL),
(6, 'Bóng Đèn LED OSRAM HS1 Air Blade, Wave RS Tăng Sáng Trắng', 5, 'Loại xe sử dụng: Air Blade, Wave RSX', 65000, '7185CW.jpg.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_car`
--

CREATE TABLE `product_car` (
  `id` int(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên Xe',
  `id_type` int(50) NOT NULL COMMENT 'id bên bản Type',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Mô tả',
  `unit_price` int(100) NOT NULL COMMENT 'giá gốc',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new` tinyint(4) NOT NULL,
  `khoiluongbanthan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dairongcao` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dungtichbinhxang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaidongco` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `congsuattoida` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `muctieuthunhienlieu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hethongkhoidong` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_car`
--

INSERT INTO `product_car` (`id`, `name`, `id_type`, `description`, `unit_price`, `image`, `new`, `khoiluongbanthan`, `dairongcao`, `dungtichbinhxang`, `loaidongco`, `congsuattoida`, `muctieuthunhienlieu`, `hethongkhoidong`, `created_at`, `updated_at`) VALUES
(1, 'Future 125 FI', 5, '', 24000000, 'future.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(2, 'CB500X 2021', 2, '', 50000000, 'cn500x.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(3, 'Super Cub C125', 5, '', 20000000, 'supercup.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(4, 'Wave Alpha 110', 5, '', 19500000, 'waveA.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(5, 'Wave RSX FI 110', 5, '', 20000000, 'waveFI.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(7, 'Wave Alpha 110cc', 5, '', 21500000, 'waveAI.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(8, 'Sh Mode 125cc', 4, '', 35000000, 'shmode.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(11, 'SH350i', 4, '', 34200000, 'sh351.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(12, 'Air Blade 125/150', 4, '', 18590000, 'ab150.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(13, 'SH125i/150i', 4, '', 22790000, 'sh.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(14, 'Vision', 4, '', 28990000, 'vision.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(15, 'Vision (Phiên Bản Cá Tính)', 4, '', 41990000, 'vs.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(16, 'Air Blade 125/150', 4, '', 50000000, 'ab125.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(17, 'CBR150R', 3, '', 68890000, 'cbr.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(18, 'Winner X', 3, '', 18990000, 'winnerX.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(19, 'CB150R Exmotion', 3, '', 32190000, 'cb.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(20, 'CBR650R Phiên Bản 2021', 2, '', 24990000, 'cbr650.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(21, 'CB1000R 2021', 2, '', 43190000, 'cb1000r.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(22, 'CB650R Phiên Bản 2021', 2, '', 34090000, 'cb1000.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(23, 'Gold Wing 2021', 2, '', 25600000, 'goldwing.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(24, 'Africa Twin Adventure Sport 2021', 2, '', 60300000, 'africa.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(25, 'Rebel 500 2021', 2, '', 12020000, 'rebel.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(26, 'Africa Twin 2021', 2, '', 63600000, 'africatwin.png', 0, '', '', '', '', '', '', '', NULL, NULL),
(37, 'a123', 1, 'ngon', 123, '167995794_969847737198907_1737099098759116150_n.jpg', 1, '123kg', '1x1x1', '123l', '132', '1', '1', '1', '2022-02-16 07:11:40', '2022-02-19 01:02:51'),
(39, 'leo núi hihi hoho', 7, 'zzzzzzzzzzz', 111111, 'cute.jpg', 1, 'qqqqqqqq', 'qqqqqqqqqq', 'qqqqqqq', 'qqqqqqq', 'qqqqqq', 'qqqqqq', 'qqqqqqqqq', '2022-02-19 02:36:53', '2022-02-19 02:38:31'),
(40, 'ádsadasd', 6, 'zzzzzzzzzz', 123, '167995794_969847737198907_1737099098759116150_n.jpg', 1, 'xxxxxx', 'xxxxxxx', 'xxxxxxx', 'xxxxxxx', 'xxxxxxx', 'xxxxxx', 'xxxxxxx', '2022-02-20 01:24:49', '2022-02-20 01:24:49'),
(41, 'vision 2023', 4, 'vision 2023', 11111111, '234902222_843213656384199_3112558482058297896_n.jpg', 1, '400 Kg', '2.615 x 905 x 1.555', '21 lít', '4 kỳ, 6 xi lanh, làm mát bằng chất lỏng', '93 kW tại 5.500 vòng/phút', '1,83 L/100km', 'Điện', '2022-02-20 01:34:55', '2022-02-20 01:39:08'),
(42, 'xe vip', 1, 'bla bla', 2222222, '235714420_538703287401409_3764505598233424325_n.jpg', 1, '399 Kg', '2.615 x 905 x 1.555 mm', '21 lít', '4 kỳ, 6 xi lanh, làm mát bằng chất lỏng', '93 kW tại 5.500 vòng/phút', '1,83 L/100km', 'Điện', '2022-02-20 01:38:36', '2022-02-20 01:38:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(50) NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_product`
--

CREATE TABLE `type_product` (
  `id` int(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_product`
--

INSERT INTO `type_product` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Xe Địa Hình', '', '', NULL, NULL),
(2, 'Xe Mô Tô', '', '', NULL, NULL),
(3, 'Xe Côn Tay', '', '', NULL, NULL),
(4, 'Xe Tay Ga', '', '', NULL, NULL),
(5, 'Xe Số', '', '', NULL, NULL),
(6, 'Xe bê đê', '123', 'WIN_20210711_21_05_24_Pro.jpg', '2022-02-12 20:30:28', '2022-02-12 20:30:28'),
(7, 'xe leo núi', 'ngon', 'Meme-là-gì.jpg', '2022-02-16 07:12:17', '2022-02-16 07:12:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(50) NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 798554624, '10 le thi man', 0),
(2, 'khach', 'khach@gmail.com', '123123', 125785421, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '123123', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bill` (`id_bill`,`id_product`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phukien`
--
ALTER TABLE `phukien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_car`
--
ALTER TABLE `product_car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Chỉ mục cho bảng `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_car`
--
ALTER TABLE `product_car`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product_car` (`id`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`);

--
-- Các ràng buộc cho bảng `product_car`
--
ALTER TABLE `product_car`
  ADD CONSTRAINT `product_car_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
