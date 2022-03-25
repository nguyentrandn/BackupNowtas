-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 05:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_banxefinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
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
  `xacnhan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `name`, `gender`, `email`, `address`, `phone`, `total`, `ngaynhanxe`, `payment`, `quantity`, `unit_price`, `note`, `xacnhan`, `created_at`, `updated_at`) VALUES
(52, 79, '2022-02-24', 'nguyên', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 123, '2022-02-26', 'Tiền mặt', 1, 123, NULL, 'Chưa xác nhận', '2022-02-23 20:21:06', '2022-02-23 21:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
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
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `tenxe`, `unit_price`, `created_at`, `updated_at`) VALUES
(56, 52, 44, 1, 'nguyên', 123, '2022-02-23 20:21:06', '2022-02-23 20:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
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
-- Dumping data for table `customer`
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
(72, 'zzzzzzzzzzz', 'Nam', 'nguyentrandn11@gmail.com', '62 con dau 1', 123456789, 'zzzzzzzzzzzzz', '2022-02-20 02:32:57', '2022-02-20 02:32:57'),
(73, 'THANH NHẬT CAO', 'Nam', 'ctnhat1999@gmail.com', '113', 113, '113', '2022-02-22 02:26:57', '2022-02-22 02:26:57'),
(74, 'CAO THANH NHẬT', 'Nam', 'ctnhat1999@gmail.com', '68 Tôn Thất Thiệp', 965709878, 'không', '2022-02-22 02:31:46', '2022-02-22 02:31:46'),
(75, 'hhhhh', 'Nam', 'hoangfergus76@gmail.com', '11111', 123, '11111', '2022-02-23 08:11:40', '2022-02-23 08:11:40'),
(76, 'Bân Đức Trò', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, '123123123', '2022-02-23 19:35:52', '2022-02-23 19:35:52'),
(77, 'nguyên', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, 'không', '2022-02-23 19:37:04', '2022-02-23 19:37:04'),
(78, 'nguyên', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, NULL, '2022-02-23 19:40:39', '2022-02-23 19:40:39'),
(79, 'nguyên', 'Nam', 'hoangfergus76@gmail.com', '111222 Hai Bà Trưng', 359826011, NULL, '2022-02-23 20:21:06', '2022-02-23 20:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(50) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `phukien`
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
-- Dumping data for table `phukien`
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
-- Table structure for table `product_car`
--

CREATE TABLE `product_car` (
  `id` int(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên Xe',
  `id_type` int(50) NOT NULL COMMENT 'id bên bản Type',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mô tả',
  `unit_price` float NOT NULL COMMENT 'giá gốc',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new` tinyint(4) DEFAULT NULL,
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
-- Dumping data for table `product_car`
--

INSERT INTO `product_car` (`id`, `name`, `id_type`, `description`, `unit_price`, `image`, `new`, `khoiluongbanthan`, `dairongcao`, `dungtichbinhxang`, `loaidongco`, `congsuattoida`, `muctieuthunhienlieu`, `hethongkhoidong`, `created_at`, `updated_at`) VALUES
(2, 'CB500X 2021', 2, NULL, 50000000, 'cn500x.png', NULL, '197 kg', '2.155 mm x 825 mm x 1.445 mm', '17,5 lít', 'Động cơ xy-lanh đôi, 4 kỳ, DOHC, làm mát bằng chất lỏng', '35 kW / 8.600 vòng/phút', '3,59 lít/100 km', 'Điện', NULL, '2022-02-23 19:27:44'),
(3, 'Super Cub C125', 5, NULL, 20000000, 'supercup.png', NULL, '109kg', '1.910 x 718 x 1.002mm', '3,7 lít', 'PGM-FI, 4 kỳ, xy-lanh đơn, làm mát bằng không khí', '6,87kW/7.500 vòng/phút', '1,50l/100km', 'Điện', NULL, '2022-02-23 19:28:27'),
(4, 'Wave Alpha 110', 5, '', 19500000, 'waveA.png', 0, ' 97kg', ' 1.914mm x 688mm x 1.075mm', ' 3,7 lít', 'Xăng, 4 kỳ, 1 xi-lanh, làm mát bằng không khí', ' 6,12 kW / 7.500 vòng/phút', ' 1,90 lít', ' Điện/ Đạp chân', NULL, NULL),
(5, 'Wave RSX FI 110', 5, '', 20000000, 'waveFI.png', 0, '99kg ', '1.921 mm x 709 mm x 1.081 mm', ' 4 lít', 'Xăng, 4 kỳ, 1 xi-lanh, làm mát bằng không khí', '6,46 kW / 7.500 vòng/phút', '1,7l/100 km', 'Đạp chân/Điện', NULL, NULL),
(7, 'Wave Alpha 110cc', 5, '', 21500000, 'waveAI.png', 0, '97kg', ' 1.914mm x 688mm x 1.075mm', ' 3,7 lít', 'Xăng, 4 kỳ, 1 xi-lanh, làm mát bằng không khí', ' 6,12 kW / 7.500 vòng/phút', ' 1,90 lít', ' Điện/ Đạp chân', NULL, NULL),
(8, 'Sh Mode 125cc', 4, '', 35000000, 'shmode.png', 0, '116 kg', '1.950 mm x669 mm x1.100 mm', '5,6 lít', '4 kỳ, 4 van, làm mát bằng dung dịch', '8,2 kW/8500 vòng/phút', '2,16 lít/100km', 'Điện', NULL, NULL),
(11, 'SH350i', 4, '', 34200000, 'sh351.png', 0, '172 kg', ' 2.160 mm x 743 mm x 1.162 mm', ' 9,3 lít', ' SOHC, 4 kỳ, xy-lanh đơn 4 van, làm mát bằng chất lỏng; đáp ứng Euro 3', ' 21,5 kW/7.500 vòng/phút', '3,54l/100km', 'Điện', NULL, NULL),
(12, 'Air Blade 125/150', 4, '', 99590000, 'ab150.png', 0, '113kg', 'Air Blade 125cc: 1.870mm x 687mm x 1.091mm Air Blade 150cc: 1.870mm x 686mm x 1.112mm', '4,4 lít', ' Xăng, 4 kỳ, 1 xy lanh, làm mát bằng dung dịch', 'Air Blade 125cc: 8,4kW/8.500 vòng/phút Air Blade 150cc: 9,6kW/8.500 vòng/phút', 'Air Blade 125cc: 1,99 lít/100km Air Blade 150cc: 2,17 lít/100km', ' Điện', NULL, NULL),
(13, 'SH125i/150i', 4, '', 85790000, 'sh.png', 0, '133kg', '2.090mm x 739mm x 1.129mm', '7,8 lít', 'PGM-FI, xăng, 4 kỳ, 1 xy-lanh, làm mát bằng dung dịch', '9,6kW/8.250 vòng/phút (SH 125i)', 'SH125i: 2,46 lít/100km', 'Điện', NULL, NULL),
(14, 'Vision', 4, '', 28990000, 'vision.png', 0, '96kg', ' 1.871mm x 686mm x 1.101mm', ' 4,9 lít', 'Xăng, 4 kỳ, 1 xi-lanh, làm mát bằng không khí', '6,59kW/7.500 vòng/phút', '1,88 (L/100km)', 'Điện', NULL, NULL),
(16, 'Air Blade 125/150', 4, '', 50000000, 'ab125.png', 0, ' Air Blade 125cc: 111kg', 'Air Blade 125cc: 1.870mm x 687mm x 1.091mm', '4,4 lít', 'Xăng, 4 kỳ, 1 xy lanh, làm mát bằng dung dịch', 'Air Blade 125cc: 8,4kW/8.500 vòng/phút', 'Air Blade 125cc: 1,99 lít/100km', 'Điện', NULL, NULL),
(17, 'CBR150R', 3, '', 68890000, 'cbr.png', 0, '139kg', '1.983 x 700 x 1.090 mm', '12 lít', 'PGM-FI, 4 kỳ, DOHC, xy-lanh đơn, côn 6 số, làm mát bằng dung dịch', '12,6kW/9.000 vòng/phút', '2,91l/100km', 'Điện', NULL, NULL),
(18, 'Winner X', 3, '', 18990000, 'winnerX.png', 0, '122kg', '2.019 x 727 x 1.104 mm', '4,5 lít', 'PGM-FI, 4 kỳ, DOHC, xy-lanh đơn, côn 6 số, làm mát bằng dung dịch', '11,5kW/9.000 vòng/phút', '1,99l/100km', 'Điện', NULL, NULL),
(19, 'CB150R Exmotion', 3, '', 32190000, 'cb.png', 0, '125kg', '1.973mm x 822mm x 1.053mm', '8,5 lít', 'PGM-FI, DOHC, 4 kỳ, 1 xy lanh, làm mát bằng chất lỏng', '12kW/9.500 vòng/phút', '2,3 lít/100km', 'Điện', NULL, NULL),
(20, 'CBR650R Phiên Bản 2021', 2, '', 24990000, 'cbr650.png', 0, '208 kg', '2.130 mm x 750 mm x 1.150 mm', '15,4 lít', 'Động cơ 4 xy-lanh, 4 kỳ làm mát bằng chất lỏng, 16 van DOHC', '70,0 kW/ 12.000 vòng/ phút', '4,58 lít/100km', 'Điện', NULL, NULL),
(21, 'CB1000R 2021', 2, '', 43190000, 'cb1000r.png', 0, '213 kg', '2.120 x 789 x 1.090 mm', '16,2 lít', '4 kỳ, 4 xy lanh, làm mát bằng chất lỏng', '107 kW tại 10.500 vòng/phút', '5,95 lít/100km', 'Điện', NULL, NULL),
(22, 'CB650R Phiên Bản 2021', 2, '', 34090000, 'cb1000.png', 0, '203 kg', '2.130 mm x 780 mm x 1.075 mm', '15,4 lít', 'Động cơ 4 xy-lanh, 4 kỳ làm máy bằng chất lỏng, 16 van DOHC', ' 70,0 kW/ 12.000 vòng/ phút', '4,9 lít/100km', 'Điện', NULL, NULL),
(23, 'Gold Wing 2021', 2, '', 25600000, 'goldwing.png', 0, '390 kg', '2.615 mm x 905 mm x 1.555 mm', '21L', 'SOHC, 4 kỳ, 6 xi lanh, PGM-FI, làm mát bằng chất lỏng', '124,7 mã lực tại tua máy 5.500 vòng/phút', '5,6 lít / 100km', 'Điện', NULL, NULL),
(25, 'Rebel 500 2021', 2, '', 12020000, 'rebel.png', 0, ' 190 kg', '2.206 mm x 822 mm x 1.090 mm', '11,2 Lít', '4 kỳ, 2 xi-lanh, PGM-FI, làm mát bằng chất lỏng, DOHC', '33,5kW / 8500 vòng/phút', '3,42 lít/100km', '', NULL, NULL),
(37, 'a123', 1, 'ngon', 123, '167995794_969847737198907_1737099098759116150_n.jpg', 1, '123kg', '1x1x1', '123l', '132', '1', '1', '1', '2022-02-16 07:11:40', '2022-02-19 01:02:51'),
(41, 'vision 2023', 4, 'vision 2023', 11111100, '234902222_843213656384199_3112558482058297896_n.jpg', 1, '400 Kg', '2.615 x 905 x 1.555', '21 lít', '4 kỳ, 6 xi lanh, làm mát bằng chất lỏng', '93 kW tại 5.500 vòng/phút', '1,83 L/100km', 'Điện', '2022-02-20 01:34:55', '2022-02-20 01:39:08'),
(44, 'nguyên', 1, 'ngon', 123, 'cute.jpg', NULL, '123kg', '1x1x1', '123l', 'xxxxxxx', '23', '123', '123', '2022-02-23 19:29:33', '2022-02-23 19:29:33'),
(45, 'xe leo núi', 1, 'zzzzzzzz', 123, 'chupanhchua.JPG', NULL, '123kg', '1x1x1', 'xxxxxxx', '132', 'xxxxxxx', 'xxxxxx', 'xxxxxxx', '2022-02-23 20:13:59', '2022-02-23 20:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(50) NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
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
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Xe Địa Hình', '', '', NULL, NULL),
(2, 'Xe Mô Tô', '', 'cb1000r.png', NULL, NULL),
(3, 'Xe Côn Tay', '', 'cbr.png', NULL, NULL),
(4, 'Xe Tay Ga', '', 'vision.png', NULL, NULL),
(5, 'Xe Số', '', 'blade.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 798554624, '10 le thi man', 0),
(2, 'khach', 'khach@gmail.com', '123123', 125785421, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '123123', NULL, NULL, NULL),
(2, 'hoang', 'hoangfergus76@gmail.com', NULL, '$2y$10$.VZGB9eAbBVUjeiuqb2tR.HBiFp2gcdnzDWcwj2v5oYizMBXWufFC', 'tWCRYyjwO9Vc43pyZS9Ash1u0io1x4dUQ2NNFvJQIHCuxVW7qKiw5oSKePFo', '2022-02-22 02:28:18', '2022-02-23 08:44:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bill` (`id_bill`,`id_product`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
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
-- Indexes for table `phukien`
--
ALTER TABLE `phukien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_car`
--
ALTER TABLE `product_car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

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
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_car`
--
ALTER TABLE `product_car`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product_car` (`id`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_car`
--
ALTER TABLE `product_car`
  ADD CONSTRAINT `product_car_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
