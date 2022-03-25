-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 02, 2022 lúc 10:36 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bds_system`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fund`
--

CREATE TABLE `fund` (
  `id` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `必須` text DEFAULT NULL,
  `新規／継続` text DEFAULT NULL,
  `予定分配率` int(11) DEFAULT NULL,
  `募集金額` int(11) DEFAULT NULL,
  `投資単位（1口）` text DEFAULT NULL,
  `一人あたり_投資可能口数_以上` text DEFAULT NULL,
  `一人あたり_投資可能口数_以下` text DEFAULT NULL,
  `運用期間_from` text DEFAULT NULL,
  `運用期間_to` text DEFAULT NULL,
  `配当日` text DEFAULT NULL,
  `募集期間（日時）_from` text DEFAULT NULL,
  `募集期間（日時）_to` text DEFAULT NULL,
  `募集種別` text DEFAULT NULL,
  `物件名称` text DEFAULT NULL,
  `所在地` text DEFAULT NULL,
  `交通` text DEFAULT NULL,
  `地目` text DEFAULT NULL,
  `面積` text DEFAULT NULL,
  `権利` text DEFAULT NULL,
  `構造` text DEFAULT NULL,
  `床面積` text DEFAULT NULL,
  `用途地域` text DEFAULT NULL,
  `建ぺい率` text DEFAULT NULL,
  `容積率` text DEFAULT NULL,
  `貸主` text DEFAULT NULL,
  `借主` text DEFAULT NULL,
  `契約形態` text DEFAULT NULL,
  `現契約期間_from` text DEFAULT NULL,
  `現契約期間_to` text DEFAULT NULL,
  `賃料月額` text DEFAULT NULL,
  `敷金` text DEFAULT NULL,
  `契約更改の方法` text DEFAULT NULL,
  `その他重要な事項` text DEFAULT NULL,
  `物件価格` text DEFAULT NULL,
  `維持管理費` text DEFAULT NULL,
  `修繕積立金` text DEFAULT NULL,
  `公租公課` text DEFAULT NULL,
  `火災保険料` text DEFAULT NULL,
  `PMフィー` text DEFAULT NULL,
  `税理士報酬` text DEFAULT NULL,
  `その他` text DEFAULT NULL,
  `商号` text DEFAULT NULL,
  `登録` text DEFAULT NULL,
  `郵便番号` text DEFAULT NULL,
  `都道府県` text DEFAULT NULL,
  `住所` text DEFAULT NULL,
  `建物名` text DEFAULT NULL,
  `代表者` text DEFAULT NULL,
  `電話番号` text DEFAULT NULL,
  `主な事業` text DEFAULT NULL,
  `資本金` text DEFAULT NULL,
  `設立年月日` text DEFAULT NULL,
  `サブ画像_1` text DEFAULT NULL,
  `メイン画像` text DEFAULT NULL,
  `チラシ画像` text DEFAULT NULL,
  `ファンドステータス` text DEFAULT NULL,
  `ファンド名` text DEFAULT NULL,
  `continuation` text DEFAULT NULL,
  `一人あたり投資可能口数_from` int(11) DEFAULT NULL,
  `一人あたり投資可能口数_to` int(11) DEFAULT NULL,
  `出資総額` decimal(10,2) GENERATED ALWAYS AS (`物件価格`) STORED,
  `劣後出資額` decimal(10,2) GENERATED ALWAYS AS (`物件価格` - `募集金額`) STORED,
  `合計` decimal(10,2) GENERATED ALWAYS AS (`維持管理費` + `修繕積立金` + `公租公課` + `火災保険料` + `PMフィー` + `税理士報酬` + `その他`) STORED,
  `賃料収入` text DEFAULT NULL,
  `分配原資` decimal(10,2) GENERATED ALWAYS AS (`賃料収入` - `合計`) STORED,
  `1口あたり` text DEFAULT NULL,
  `全体口数` decimal(10,2) GENERATED ALWAYS AS (`募集金額` / `投資単位（1口）`) STORED,
  `優先出資分配金` decimal(10,2) GENERATED ALWAYS AS (`募集金額` / `出資総額` * `分配原資`) STORED,
  `劣後出資分配金（営業者）` decimal(10,2) GENERATED ALWAYS AS (`分配原資` - `優先出資分配金`) STORED,
  `公開先` text DEFAULT NULL,
  `添付ファイル` text DEFAULT NULL,
  `築年月` text DEFAULT NULL,
  `サブ画像_2` text DEFAULT NULL,
  `サブ画像_3` text DEFAULT NULL,
  `サブ画像_4` text DEFAULT NULL,
  `サブ画像_5` text DEFAULT NULL,
  `サブ画像` text DEFAULT NULL,
  `連絡可能時間` text DEFAULT NULL,
  `連絡先` text DEFAULT NULL,
  `ギルド名` text DEFAULT NULL,
  `URL` text DEFAULT NULL,
  `受付担当` text DEFAULT NULL,
  `ギルド勲章` text DEFAULT NULL,
  `会社名／団体名` text DEFAULT NULL,
  `市区町村` text DEFAULT NULL,
  `番地` text DEFAULT NULL,
  `募集背景` text DEFAULT NULL,
  `ギルド` text DEFAULT NULL,
  `クエスト名` text DEFAULT NULL,
  `依頼主` text DEFAULT NULL,
  `開催日時（補足）` text DEFAULT NULL,
  `開催場所（都道府県）` text DEFAULT NULL,
  `開催場所（住所）` text DEFAULT NULL,
  `主に対象となる方` text DEFAULT NULL,
  `お礼` text DEFAULT NULL,
  `備考・メッセージ` text DEFAULT NULL,
  `クエストカテゴリ` text DEFAULT NULL,
  `お礼カテゴリ` text DEFAULT NULL,
  `タグ（10個まで）` text DEFAULT NULL,
  `start` text DEFAULT NULL,
  `end` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `fund`
--

INSERT INTO `fund` (`id`, `updated_at`, `created_at`, `deleted_at`, `必須`, `新規／継続`, `予定分配率`, `募集金額`, `投資単位（1口）`, `一人あたり_投資可能口数_以上`, `一人あたり_投資可能口数_以下`, `運用期間_from`, `運用期間_to`, `配当日`, `募集期間（日時）_from`, `募集期間（日時）_to`, `募集種別`, `物件名称`, `所在地`, `交通`, `地目`, `面積`, `権利`, `構造`, `床面積`, `用途地域`, `建ぺい率`, `容積率`, `貸主`, `借主`, `契約形態`, `現契約期間_from`, `現契約期間_to`, `賃料月額`, `敷金`, `契約更改の方法`, `その他重要な事項`, `物件価格`, `維持管理費`, `修繕積立金`, `公租公課`, `火災保険料`, `PMフィー`, `税理士報酬`, `その他`, `商号`, `登録`, `郵便番号`, `都道府県`, `住所`, `建物名`, `代表者`, `電話番号`, `主な事業`, `資本金`, `設立年月日`, `サブ画像_1`, `メイン画像`, `チラシ画像`, `ファンドステータス`, `ファンド名`, `continuation`, `一人あたり投資可能口数_from`, `一人あたり投資可能口数_to`, `賃料収入`, `1口あたり`, `公開先`, `添付ファイル`, `築年月`, `サブ画像_2`, `サブ画像_3`, `サブ画像_4`, `サブ画像_5`, `サブ画像`, `連絡可能時間`, `連絡先`, `ギルド名`, `URL`, `受付担当`, `ギルド勲章`, `会社名／団体名`, `市区町村`, `番地`, `募集背景`, `ギルド`, `クエスト名`, `依頼主`, `開催日時（補足）`, `開催場所（都道府県）`, `開催場所（住所）`, `主に対象となる方`, `お礼`, `備考・メッセージ`, `クエストカテゴリ`, `お礼カテゴリ`, `タグ（10個まで）`, `start`, `end`) VALUES
(1, '2022-02-07 09:45:24', '2022-01-27 04:58:26', NULL, 'アルファアセットファンド学芸大学', '継続', 30, 19600000, '1000000', '3', '7', '2022/01/28', '2022/03/31', '2022/02/01', '2022/01/31', '2022/03/23', '2', 'MICHI', 'SAITAMA -JAPAN', 'https://www.google.com/maps/contrib/104783362548593694201', '宅地', '2449.65㎡', '2001年5月', '鉄筋コンクリート造　陸屋根　地上3階建（1階部分）', '74.08㎡', '第1種低層住居専用地域', '50％', '150%', '穴吹興産株式会社', '個人', '建物賃貸借契約', '2022/01/29', '2022/04/15', NULL, NULL, '期間満了2ヶ月前までに借主から貸主に対し書面による解約申し入れがない場合 は、同条件にて2年間更新するものとし、以降同様に扱う。', '借主は契約期間内であっても、正当事由がある場合は貸主に対し2ヶ月の予告期間 をもって文章により本契約の解約を申し入れることができる。ただし、2ヶ月分の賃料 相当額を貸主に支払うことによって直ちに解約することができる。', '28000000', '76800', '40800', '49534', '1800', '26400', '88000', '50000', '穴吹興産株式会社', '不動産特定共同事業許可：香川県知事第1号 宅地建物取引業免許：国土交通大臣免許（9）第3300号 特定建設業許可：香川県知事許可（特26）第5547号 一級建築士事務所登録：香川県知事登録第1847号 一般不動産投資顧問業登録：国土交通大臣登録　一般－第378号 第二種金融商品取引業登録：四国財務局長登録（金商）第12号', '〒760-0028 香川県高松市鍛冶屋町7-12', NULL, 'saitama ken- saitamashi- minamiku', 'leopace', '穴吹忠嗣', '080-6683-0533', '不動産開発・不動産ソリューション・注文住宅請負・建売分譲・不動産流通 ホテル＆テナントビル運営・公的施設受託運営・街づくりプロジェクト等', '755百万円', '1964年5月25日', 'http://localhost:3000/storage/fund/6200e7987c93d_kochi_specialpage.png', 'http://localhost:3000/storage/fund/6200e87b9242d_skillpark_LOGO.jpg', 'http://localhost:3000/storage/fund/6200ea34b8184_243490904_535600434226627_8541036115010868479_n.jpg', NULL, 'アルファアセットファンド新梅田', NULL, 3, 7, '933780', '100000', NULL, NULL, NULL, 'http://localhost:3000/storage/fund/6200e7988743e_image.png', 'http://localhost:3000/storage/fund/6200e999c6e47_272080853_4813003855420938_8127392901528913663_n.jpg', 'http://localhost:3000/storage/fund/6200e999cdeb3_272080463_391528749397321_4670838395863420021_n.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2022-02-07 10:12:15', '2022-02-07 10:01:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:3000/storage/fund/6200f07ee2443_272545074_345587164091415_4227777341348419458_n.jpg', 'http://localhost:3000/storage/fund/6200f07ef0921_272080463_391528749397321_4670838395863420021_n.jpg', NULL, NULL, 'xxxxx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fund_application`
--

CREATE TABLE `fund_application` (
  `fund_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `ユーザーID` text DEFAULT NULL,
  `抽選結果` text DEFAULT NULL,
  `口数` text DEFAULT NULL,
  `入金期限日` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `fund_application`
--

INSERT INTO `fund_application` (`fund_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `ユーザーID`, `抽選結果`, `口数`, `入金期限日`) VALUES
(31, 1, '2022-02-04 10:21:51', '2022-02-04 10:37:50', NULL, NULL, '申込', '5', '2022-01-20'),
(31, 2, '2022-02-04 10:21:51', '2022-02-04 10:37:50', NULL, NULL, '申込', '5', '2022-01-20'),
(31, 3, '2022-02-04 10:21:51', '2022-02-04 10:37:50', NULL, NULL, '申込', '2', '2022-01-20');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_24_041829_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2hZ5v6M2a3J04CvWgDeQEew97G7AS9MdpTgrvnqX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.56', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTFrSzZOVUg1eUsxd1ExN1hWdlpKS2JuN05YSk4ydXA1SGVZQlc2byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9mb3Jnb3QtcGFzc3dvcmQtNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1645612457),
('K3db9ObOJobXA2haDhmqPYTVf0rkactBTJkk2WMk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.56', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2lEdTBQNExJQUt3MWRCdWxvcHA0c1ZNcGxWYWpiVjkxOVAwdUxKRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zcGVjaWFsLWd1aWxkLXByb2ZpbGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1645678260),
('UsnWk5ALnjsbEMN2Rco5bpjxu8JFv7NdZ9bAzTdq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmRoMVFUYmMxak1zSmFtdkdNT2FwbnJrdnBXWTlLUFRPbWtadkRBVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1646213684),
('vN5ExOJTrLJy8JQDbzJ477LD2xaTnZGXw2fQF2T1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0k5Rk03NUpMUU45aVJFZnRFb0cybnBvNmgxM0RWdUF3NWJ1MlliaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9NRzEwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1646019412);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `個人・法人` text DEFAULT NULL,
  `メールアドレス` text DEFAULT NULL,
  `マイナンバー` int(11) DEFAULT NULL,
  `お名前1` text DEFAULT NULL,
  `お名前2` text DEFAULT NULL,
  `フリガナ1` text DEFAULT NULL,
  `フリガナ2` text DEFAULT NULL,
  `生年月日_year` text DEFAULT NULL,
  `生年月日_month` text DEFAULT NULL,
  `生年月日_day` text DEFAULT NULL,
  `郵便番号` int(11) DEFAULT NULL,
  `都道府県` text DEFAULT NULL,
  `住所` text DEFAULT NULL,
  `建物名` text DEFAULT NULL,
  `固定電話` int(11) DEFAULT NULL,
  `携帯電話` int(11) DEFAULT NULL,
  `金融資産` text DEFAULT NULL,
  `投資目的` text DEFAULT NULL,
  `取引開始のきっかけ` text DEFAULT NULL,
  `職業` text DEFAULT NULL,
  `勤務先` text DEFAULT NULL,
  `年収（年金所得も含む）` text DEFAULT NULL,
  `余剰資金の運用である` text DEFAULT NULL,
  `元本が毀損した場合、生活に支障が出るかどうか` text DEFAULT NULL,
  `金融に係る業務の経験` text DEFAULT NULL,
  `投資方針` text DEFAULT NULL,
  `投資経験（年数）` text DEFAULT NULL,
  `金融機関名` text DEFAULT NULL,
  `支店名` text DEFAULT NULL,
  `口座種別` text DEFAULT NULL,
  `口座番号` int(11) DEFAULT NULL,
  `口座名義人` text DEFAULT NULL,
  `本人確認方法` text DEFAULT NULL,
  `メモ` text DEFAULT NULL,
  `本人確認日` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `created_at`, `updated_at`, `deleted_at`, `個人・法人`, `メールアドレス`, `マイナンバー`, `お名前1`, `お名前2`, `フリガナ1`, `フリガナ2`, `生年月日_year`, `生年月日_month`, `生年月日_day`, `郵便番号`, `都道府県`, `住所`, `建物名`, `固定電話`, `携帯電話`, `金融資産`, `投資目的`, `取引開始のきっかけ`, `職業`, `勤務先`, `年収（年金所得も含む）`, `余剰資金の運用である`, `元本が毀損した場合、生活に支障が出るかどうか`, `金融に係る業務の経験`, `投資方針`, `投資経験（年数）`, `金融機関名`, `支店名`, `口座種別`, `口座番号`, `口座名義人`, `本人確認方法`, `メモ`, `本人確認日`) VALUES
(1, '2022-02-04 18:04:55', '2022-02-06 18:54:27', NULL, '個人', 'quyen@nowtas.com', 90999222, 'Quyen', 'Nguyen', 'Quyen', 'Nguyen', '1996', '11', '5', 1000000, '秋田県', 'Da Nang, Viet Nam', '1-1-1', 1910910, 2147483647, '500万円未満', '将来のための資産形成', 'インターネット', '会社員（未上場）', 'Nowtas Viet Nam', '800万円未満', 'はい', 'いいえ', 'はい', '長期安定保有', '10年未満', '金融機関名', '支店名', '普通預金口座', 1000000, '404040404', '面談（場所：弊社）', '1111111', NULL),
(2, '2022-02-04 18:04:55', '2022-02-04 18:04:55', NULL, NULL, NULL, NULL, 'Phong', 'Tran', 'Phong', 'Tran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2022-02-04 18:04:55', '2022-02-04 18:04:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_user_list`
-- (See below for the actual view)
--
CREATE TABLE `v_user_list` (
`id` int(11)
,`お名前` mediumtext
,`固定電話番号` int(11)
,`携帯電話番号` int(11)
,`本人確認日` text
,`登録日` date
,`申込数合計` int(1)
,`投資数合計` int(1)
,`updated_at` datetime
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_user_list`
--
DROP TABLE IF EXISTS `v_user_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_user_list`  AS SELECT `user`.`id` AS `id`, concat(`user`.`お名前1`,`user`.`お名前2`) AS `お名前`, `user`.`固定電話` AS `固定電話番号`, `user`.`携帯電話` AS `携帯電話番号`, `user`.`本人確認日` AS `本人確認日`, cast(`user`.`created_at` as date) AS `登録日`, 0 AS `申込数合計`, 0 AS `投資数合計`, `user`.`updated_at` AS `updated_at` FROM `user` ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `fund`
--
ALTER TABLE `fund`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fund_application`
--
ALTER TABLE `fund_application`
  ADD PRIMARY KEY (`fund_id`,`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `fund`
--
ALTER TABLE `fund`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
