-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: bds_system
-- ------------------------------------------------------
-- Server version	5.7.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` text,
  `reset_password_token` text,
  `reset_password_token_expired_at` datetime DEFAULT NULL,
  `invitation_token` text,
  `invitation_token_expired_at` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `is_allow_login` tinyint(4) DEFAULT '0',
  `last_login_at` datetime DEFAULT NULL,
  `role` text,
  `氏名` text,
  `権限` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'2022-02-11 12:00:00','2022-02-13 11:10:20',NULL,'quyen@nowtas.com','$2y$10$WUhd2tj08Qu6pNx7fcPjA.mtylyHu7Z4aRChMCUS/zzsWpQ2B3NsK',NULL,'2022-02-14 11:05:48',NULL,NULL,NULL,1,NULL,'管理者','Quyen Nguyen',NULL),(17,'2022-02-13 03:10:20','2022-02-13 03:10:20',NULL,'ssss',NULL,NULL,NULL,'6d531e218cb0e20c2ac16052bb5d8f4b','2022-02-14 03:10:20',NULL,0,NULL,NULL,NULL,NULL),(19,'2022-02-13 03:40:47','2022-02-13 03:48:38',NULL,'quyen+3@nowtas.com',NULL,NULL,NULL,'2a780d06c4e13822c2ee82a7d0253df9','2022-02-14 03:40:47',NULL,0,NULL,'管理者','Quyen 2',NULL),(20,'2022-02-13 03:48:55','2022-02-13 03:49:13',NULL,'nghuuquyen@gmail.com',NULL,NULL,NULL,'29bde1b705673c6c845740c94c569af1','2022-02-14 03:48:55',NULL,0,NULL,'管理者','qqqq',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund`
--

DROP TABLE IF EXISTS `fund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fund` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `必須` text,
  `新規／継続` text,
  `予定分配率` int(11) DEFAULT NULL,
  `募集金額` int(11) DEFAULT NULL,
  `投資単位（1口）` text,
  `一人あたり_投資可能口数_以上` text,
  `一人あたり_投資可能口数_以下` text,
  `運用期間_from` text,
  `運用期間_to` text,
  `配当日` text,
  `募集期間（日時）_from` text,
  `募集期間（日時）_to` text,
  `募集種別` text,
  `物件名称` text,
  `所在地` text,
  `交通` text,
  `地目` text,
  `面積` text,
  `権利` text,
  `構造` text,
  `床面積` text,
  `用途地域` text,
  `建ぺい率` text,
  `容積率` text,
  `貸主` text,
  `借主` text,
  `契約形態` text,
  `現契約期間_from` text,
  `現契約期間_to` text,
  `賃料月額` text,
  `敷金` text,
  `契約更改の方法` text,
  `その他重要な事項` text,
  `物件価格` text,
  `維持管理費` text,
  `修繕積立金` text,
  `公租公課` text,
  `火災保険料` text,
  `PMフィー` text,
  `税理士報酬` text,
  `その他` text,
  `商号` text,
  `登録` text,
  `郵便番号` text,
  `都道府県` text,
  `住所` text,
  `建物名` text,
  `代表者` text,
  `電話番号` text,
  `主な事業` text,
  `資本金` text,
  `設立年月日` text,
  `サブ画像_1` text,
  `メイン画像` text,
  `チラシ画像` text,
  `ファンドステータス` text,
  `ファンド名` text,
  `continuation` text,
  `一人あたり投資可能口数_from` int(11) DEFAULT NULL,
  `一人あたり投資可能口数_to` int(11) DEFAULT NULL,
  `出資総額` decimal(10,2) GENERATED ALWAYS AS (`物件価格`) STORED,
  `劣後出資額` decimal(10,2) GENERATED ALWAYS AS ((`物件価格` - `募集金額`)) STORED,
  `合計` decimal(10,2) GENERATED ALWAYS AS (((((((`維持管理費` + `修繕積立金`) + `公租公課`) + `火災保険料`) + `PMフィー`) + `税理士報酬`) + `その他`)) STORED,
  `賃料収入` text,
  `分配原資` decimal(10,2) GENERATED ALWAYS AS ((`賃料収入` - `合計`)) STORED,
  `全体口数` decimal(10,2) GENERATED ALWAYS AS ((`募集金額` / `投資単位（1口）`)) STORED,
  `優先出資分配金` decimal(10,2) GENERATED ALWAYS AS (floor(((`募集金額` / `出資総額`) * `分配原資`))) STORED,
  `劣後出資分配金（営業者）` decimal(10,2) GENERATED ALWAYS AS ((`分配原資` - `優先出資分配金`)) STORED,
  `公開先` text,
  `添付ファイル` text,
  `築年月` text,
  `サブ画像_2` text,
  `サブ画像_3` text,
  `サブ画像_4` text,
  `サブ画像_5` text,
  `サブ画像` text,
  `数字を入力` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `1口あたり` decimal(10,2) GENERATED ALWAYS AS ((`優先出資分配金` / `全体口数`)) STORED,
  `運用期間_interval` int(11) GENERATED ALWAYS AS (timestampdiff(MONTH,`運用期間_from`,`運用期間_to`)) STORED,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund`
--

LOCK TABLES `fund` WRITE;
/*!40000 ALTER TABLE `fund` DISABLE KEYS */;
INSERT INTO `fund` (`id`, `updated_at`, `created_at`, `deleted_at`, `必須`, `新規／継続`, `予定分配率`, `募集金額`, `投資単位（1口）`, `一人あたり_投資可能口数_以上`, `一人あたり_投資可能口数_以下`, `運用期間_from`, `運用期間_to`, `配当日`, `募集期間（日時）_from`, `募集期間（日時）_to`, `募集種別`, `物件名称`, `所在地`, `交通`, `地目`, `面積`, `権利`, `構造`, `床面積`, `用途地域`, `建ぺい率`, `容積率`, `貸主`, `借主`, `契約形態`, `現契約期間_from`, `現契約期間_to`, `賃料月額`, `敷金`, `契約更改の方法`, `その他重要な事項`, `物件価格`, `維持管理費`, `修繕積立金`, `公租公課`, `火災保険料`, `PMフィー`, `税理士報酬`, `その他`, `商号`, `登録`, `郵便番号`, `都道府県`, `住所`, `建物名`, `代表者`, `電話番号`, `主な事業`, `資本金`, `設立年月日`, `サブ画像_1`, `メイン画像`, `チラシ画像`, `ファンドステータス`, `ファンド名`, `continuation`, `一人あたり投資可能口数_from`, `一人あたり投資可能口数_to`, `賃料収入`, `公開先`, `添付ファイル`, `築年月`, `サブ画像_2`, `サブ画像_3`, `サブ画像_4`, `サブ画像_5`, `サブ画像`, `数字を入力`, `published_at`, `failed_at`) VALUES (1,'2022-02-13 02:43:07','2022-01-27 04:58:26',NULL,'アルファアセットファンド学芸大学','継続',222,NULL,'444','3','7','2022-02-15','2022-02-26','2022-02-09','2022-02-10','2022-02-10','2','MICHI','SAITAMA -JAPAN','https://www.google.com/maps/contrib/104783362548593694201','宅地xxxx','2449.65㎡','2001年5月','鉄筋コンクリート造　陸屋根　地上3階建（1階部分）','床面積','第1種低層住居専用地域','50％','150%','穴吹興産株式会社','個人','建物賃貸借契約','2022/01/29','2022/04/15','100','200','期間満了2ヶ月前までに借主から貸主に対し書面による解約申し入れがない場合 は、同条件にて2年間更新するものとし、以降同様に扱う。','借主は契約期間内であっても、正当事由がある場合は貸主に対し2ヶ月の予告期間 をもって文章により本契約の解約を申し入れることができる。ただし、2ヶ月分の賃料 相当額を貸主に支払うことによって直ちに解約することができる。','28000000','123','40800','49534','1800','26400','88000','50000','穴吹興産株式会社','不動産特定共同事業許可：香川県知事第1号 宅地建物取引業免許：国土交通大臣免許（9）第3300号 特定建設業許可：香川県知事許可（特26）第5547号 一級建築士事務所登録：香川県知事登録第1847号 一般不動産投資顧問業登録：国土交通大臣登録　一般－第378号 第二種金融商品取引業登録：四国財務局長登録（金商）第12号','〒760-0028 香川県高松市鍛冶屋町7-12','青森県','saitama ken- saitamashi- minamiku','leopace','穴吹忠嗣','080-6683-0533','不動産開発・不動産ソリューション・注文住宅請負・建売分譲・不動産流通 ホテル＆テナントビル運営・公的施設受託運営・街づくりプロジェクト等','755百万円','1964年5月25日','http://localhost:3000/storage/fund/6200e7987c93d_kochi_specialpage.png','http://localhost:3000/storage/fund/6200e87b9242d_skillpark_LOGO.jpg','http://localhost:3000/storage/fund/6200ea34b8184_243490904_535600434226627_8541036115010868479_n.jpg','募集前','アルファアセットファンド新梅田123',NULL,3,7,'933780',NULL,NULL,'築年月','http://localhost:3000/storage/fund/6200e999c6e47_272080853_4813003855420938_8127392901528913663_n.jpg','http://localhost:3000/storage/fund/6200e999cdeb3_272080463_391528749397321_4670838395863420021_n.jpg','http://localhost:3000/storage/fund/6200e7987c93d_kochi_specialpage.png','http://localhost:3000/storage/fund/6200e999c6e47_272080853_4813003855420938_8127392901528913663_n.jpg',NULL,222,'2022-02-13 02:41:59','2022-02-13 12:43:07'),(33,'2022-02-07 10:12:15','2022-02-07 10:01:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://localhost:3000/storage/fund/6200f07ee2443_272545074_345587164091415_4227777341348419458_n.jpg','http://localhost:3000/storage/fund/6200f07ef0921_272080463_391528749397321_4670838395863420021_n.jpg',NULL,'作成中','xxxxx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'2022-02-08 10:15:36','2022-02-08 10:15:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'作成中','xxxxxx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'2022-02-10 11:34:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'不成立','tttt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'22222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21312323',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123123123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123123213',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17239872138]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123jk1l2j3lk213',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'l1j23lkj12lk3j2l13]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'l1j23l12jl3k12j3lk12j3lk12jl3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'2022-02-10 09:41:25','2022-02-08 12:01:26',NULL,NULL,NULL,NULL,NULL,'10000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://localhost:3000/storage/fund/62025b96d3a34_Attention-sign-icon.png','http://localhost:3000/storage/fund/62025b96eb261_1526444239-tt_avatar_small.jpeg','http://localhost:3000/storage/fund/62025b96ee92f_management1.jpeg','作成中','Test tajo moi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://localhost:3000/storage/fund/62025b96e52be_skillpark_LOGO.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'2022-02-13 05:19:33','2022-02-11 05:05:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'x','x','x','x','x','x','x',NULL,NULL,NULL,'作成中',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'2022-02-13 11:29:07','2022-02-13 11:29:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'作成中','xxxx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'2022-02-13 11:56:23','2022-02-13 11:56:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'作成中','xxxx (複写)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'2022-02-13 18:28:02','2022-02-13 11:56:47',NULL,'アルファアセットファンド学芸大学','継続',222,10000,'444','3','7','2022-02-15','2022-02-26','2022-02-09','2022-02-10','2022-02-25','匿名組合型','MICHI','SAITAMA -JAPAN','https://www.google.com/maps/contrib/104783362548593694201','宅地xxxx','2449.65㎡','2001年5月','鉄筋コンクリート造　陸屋根　地上3階建（1階部分）','床面積','第1種低層住居専用地域','50％','150%','穴吹興産株式会社','個人','建物賃貸借契約','2022/01/29','2022/04/15','100','200','期間満了2ヶ月前までに借主から貸主に対し書面による解約申し入れがない場合 は、同条件にて2年間更新するものとし、以降同様に扱う。','借主は契約期間内であっても、正当事由がある場合は貸主に対し2ヶ月の予告期間 をもって文章により本契約の解約を申し入れることができる。ただし、2ヶ月分の賃料 相当額を貸主に支払うことによって直ちに解約することができる。','28000000','123','40800','49534','1800','26400','88000','50000','穴吹興産株式会社','不動産特定共同事業許可：香川県知事第1号 宅地建物取引業免許：国土交通大臣免許（9）第3300号 特定建設業許可：香川県知事許可（特26）第5547号 一級建築士事務所登録：香川県知事登録第1847号 一般不動産投資顧問業登録：国土交通大臣登録　一般－第378号 第二種金融商品取引業登録：四国財務局長登録（金商）第12号','〒760-0028 香川県高松市鍛冶屋町7-12','青森県','saitama ken- saitamashi- minamiku','leopace','穴吹忠嗣','080-6683-0533','不動産開発・不動産ソリューション・注文住宅請負・建売分譲・不動産流通 ホテル＆テナントビル運営・公的施設受託運営・街づくりプロジェクト等','755百万円','1964年5月25日','http://localhost:3000/storage/fund/6200e7987c93d_kochi_specialpage.png','http://localhost:3000/storage/fund/6200e87b9242d_skillpark_LOGO.jpg','http://localhost:3000/storage/fund/6200ea34b8184_243490904_535600434226627_8541036115010868479_n.jpg','募集前','アルファアセットファンド新梅田123 (複写)',NULL,3,7,'933780',NULL,NULL,'築年月','http://localhost:3000/storage/fund/6200e999c6e47_272080853_4813003855420938_8127392901528913663_n.jpg','http://localhost:3000/storage/fund/6200e999cdeb3_272080463_391528749397321_4670838395863420021_n.jpg','http://localhost:3000/storage/fund/6200e7987c93d_kochi_specialpage.png','http://localhost:3000/storage/fund/6200e999c6e47_272080853_4813003855420938_8127392901528913663_n.jpg',NULL,222,'2022-02-13 18:27:31','2022-02-13 12:43:07'),(51,'2022-02-13 21:17:32','2022-02-13 12:12:06',NULL,'アルファアセットファンド学芸大学','継続',222,500000,'444','3','7','2022-02-15','2022-02-26','2022-02-09','2022-02-10 03:00','2022-02-26 04:00','匿名組合型','MICHI','SAITAMA -JAPAN','https://www.google.com/maps/contrib/104783362548593694201','宅地xxxx','2449.65㎡','2001年5月','鉄筋コンクリート造　陸屋根　地上3階建（1階部分）','床面積','第1種低層住居専用地域','50％','150%','穴吹興産株式会社','個人','建物賃貸借契約','2022/01/29','2022/04/15','100','200','期間満了2ヶ月前までに借主から貸主に対し書面による解約申し入れがない場合 は、同条件にて2年間更新するものとし、以降同様に扱う。','借主は契約期間内であっても、正当事由がある場合は貸主に対し2ヶ月の予告期間 をもって文章により本契約の解約を申し入れることができる。ただし、2ヶ月分の賃料 相当額を貸主に支払うことによって直ちに解約することができる。','28000000','123','40800','49534','1800','26400','88000','50000','穴吹興産株式会社','不動産特定共同事業許可：香川県知事第1号 宅地建物取引業免許：国土交通大臣免許（9）第3300号 特定建設業許可：香川県知事許可（特26）第5547号 一級建築士事務所登録：香川県知事登録第1847号 一般不動産投資顧問業登録：国土交通大臣登録　一般－第378号 第二種金融商品取引業登録：四国財務局長登録（金商）第12号','〒760-0028 香川県高松市鍛冶屋町7-12','青森県','saitama ken- saitamashi- minamiku',NULL,'穴吹忠嗣','080-6683-0533','不動産開発・不動産ソリューション・注文住宅請負・建売分譲・不動産流通 ホテル＆テナントビル運営・公的施設受託運営・街づくりプロジェクト等','755百万円','1964年5月25日','http://localhost:3000/storage/fund/6200e7987c93d_kochi_specialpage.png','http://localhost:3000/storage/fund/6200e87b9242d_skillpark_LOGO.jpg','http://localhost:3000/storage/fund/6200ea34b8184_243490904_535600434226627_8541036115010868479_n.jpg','募集前','アルファアセットファンド新梅田123 (複写) (複写)',NULL,3,7,'933780',NULL,NULL,'築年月','http://localhost:3000/storage/fund/6200e999c6e47_272080853_4813003855420938_8127392901528913663_n.jpg','http://localhost:3000/storage/fund/6200e999cdeb3_272080463_391528749397321_4670838395863420021_n.jpg','http://localhost:3000/storage/fund/6200e7987c93d_kochi_specialpage.png','http://localhost:3000/storage/fund/6200e999c6e47_272080853_4813003855420938_8127392901528913663_n.jpg',NULL,222,'2022-02-13 18:40:27',NULL),(52,'2022-03-03 12:25:32','2022-02-13 21:13:56',NULL,NULL,'継続',100,100000,'1000',NULL,NULL,'2022-02-15','2022-03-23','2022-02-16','2022-02-17 19:13','2022-02-25 19:13','匿名組合型','1000','1000','1000','1000','1000','1000','1000','1000','1000','1000','1000','1000','1000','1000','2022-02-07','2022-02-16','1000','1000','1000','1000','1000','1000','1000','1000','1000','1000','1000','1000','x','x','0000555','青森県','x','x','x','x','x','x','x',NULL,'http://localhost:3000/storage/file/6220352cd3561_99252729-a-traditional-japanese-style-house-with-a-small-beautiful-garden.webp',NULL,'募集前','xxxx test datetime',NULL,3,7,'1000',NULL,NULL,'1000',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-13 21:21:53',NULL),(53,'2022-03-02 18:26:11','2022-03-01 17:41:18',NULL,NULL,'継続',5,22,'1000',NULL,NULL,'2022-04-20','2022-05-25','2022-03-31','2022-03-01 15:40','2022-04-28 15:40','匿名組合型','x','x','x','x','x','x','x','x','x','x','x','x','x','x','2022-03-15','2022-03-31','300','300','xxx','xxx','500','5000','300','2322','23','100','250','150','xx','x\nád\ná\ndsdasd\na','xxx','青森県','xx','xxx','xx','xx','xxx','xxx','xx','http://localhost:3000/storage/file/621ddcc024749_blur.jpg','http://localhost:3000/storage/file/621ddcc039d34_redd-LP3PabHuyiE-unsplash.jpg','http://localhost:3000/storage/file/621ddcc03f0a5_redd-LP3PabHuyiE-unsplash.jpg','募集前','Quyen Fund Test',NULL,3,7,'50000',NULL,NULL,'x','http://localhost:3000/storage/file/621def405a30c_272080853_4813003855420938_8127392901528913663_n.jpg','http://localhost:3000/storage/file/621def406560a_241805451_374337954188924_7800150647331052734_n.png','http://localhost:3000/storage/file/621def4068c04_272545074_345587164091415_4227777341348419458_n.jpg','http://localhost:3000/storage/file/621def406ca20_AdobeStock_243794248.jpeg',NULL,NULL,'2022-03-01 17:44:17',NULL),(54,'2022-03-02 22:27:43','2022-03-02 22:27:34',NULL,NULL,'継続',5,22,'1000',NULL,NULL,'2022-04-20','2022-05-25','2022-03-31','2022-03-01 15:40','2022-04-28 15:40','匿名組合型','x','x','x','x','x','x','x','x','x','x','x','x','x','x','2022-03-15','2022-03-31','300','300','xxx','xxx','500','5000','300','2322','23','100','250','150','xx','x\nád\ná\ndsdasd\na','xxx','青森県','xx','xxx','xx','xx','xxx','xxx','xx','http://localhost:3000/storage/file/621ddcc024749_blur.jpg','http://localhost:3000/storage/file/621ddcc039d34_redd-LP3PabHuyiE-unsplash.jpg','http://localhost:3000/storage/file/621ddcc03f0a5_redd-LP3PabHuyiE-unsplash.jpg','募集前','Quyen Fund Test (複写)222',NULL,3,7,'50000',NULL,NULL,'x','http://localhost:3000/storage/file/621def405a30c_272080853_4813003855420938_8127392901528913663_n.jpg','http://localhost:3000/storage/file/621def406560a_241805451_374337954188924_7800150647331052734_n.png','http://localhost:3000/storage/file/621def4068c04_272545074_345587164091415_4227777341348419458_n.jpg','http://localhost:3000/storage/file/621def406ca20_AdobeStock_243794248.jpeg',NULL,NULL,'2022-03-02 22:27:43',NULL);
/*!40000 ALTER TABLE `fund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_application`
--

DROP TABLE IF EXISTS `fund_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fund_application` (
  `user_id` int(11) NOT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `申込日` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Application date',
  `申込口数` int(11) DEFAULT NULL COMMENT 'Number of applications',
  `キャンセル日` date DEFAULT NULL COMMENT 'Cancellation date',
  `抽選結果` text COMMENT 'Lottery result',
  `当選口数` int(11) DEFAULT NULL COMMENT 'Number of winning units',
  `入金期限日` date DEFAULT NULL COMMENT 'Payment deadline',
  `口数` text,
  `抽選日` date DEFAULT NULL,
  `入金期限` text,
  `出資金額` text,
  `agree` text,
  PRIMARY KEY (`user_id`,`fund_id`),
  KEY `fk_fund_application_fund1_idx` (`fund_id`),
  CONSTRAINT `fk_fund_application_fund1` FOREIGN KEY (`fund_id`) REFERENCES `fund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fund_application_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_application`
--

LOCK TABLES `fund_application` WRITE;
/*!40000 ALTER TABLE `fund_application` DISABLE KEYS */;
INSERT INTO `fund_application` VALUES (14,51,'2022-03-02 01:48:05','2022-03-03 07:41:13',NULL,'2022-03-01 16:48:05',6,NULL,'当選',5,NULL,NULL,'2022-03-03','2022-03-15','2,664',NULL),(14,53,'2022-03-03 21:41:59','2022-03-03 21:42:08',NULL,'2022-03-03 12:41:59',5,'2022-03-03','キャンセル',NULL,NULL,NULL,NULL,NULL,'5,000','on'),(14,54,'2022-03-02 22:43:57','2022-03-02 22:58:25',NULL,'2022-03-02 13:43:57',7,'2022-03-02','キャンセル',NULL,NULL,NULL,NULL,NULL,'7,000','on'),(15,53,'2022-03-02 19:59:40','2022-03-02 20:09:21',NULL,'2022-03-02 10:59:40',4,NULL,'当選',5,NULL,NULL,NULL,'2022-03-25','4,000','on'),(15,54,'2022-03-02 22:28:05','2022-03-02 22:36:39',NULL,'2022-03-02 13:28:05',7,'2022-03-02','キャンセル',10,NULL,NULL,'2022-03-02','2022-03-03','7,000','on');
/*!40000 ALTER TABLE `fund_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_message`
--

DROP TABLE IF EXISTS `fund_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fund_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fund_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `送信日時` datetime DEFAULT NULL,
  `タイトル` text,
  `本文` text,
  `メールでの通知` text,
  `添付ファイル` text,
  `宛先` text,
  PRIMARY KEY (`id`),
  KEY `fk_message_admin1_idx` (`admin_id`),
  KEY `fk_message_fund1` (`fund_id`),
  CONSTRAINT `fk_message_admin1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_message_fund1` FOREIGN KEY (`fund_id`) REFERENCES `fund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_message`
--

LOCK TABLES `fund_message` WRITE;
/*!40000 ALTER TABLE `fund_message` DISABLE KEYS */;
INSERT INTO `fund_message` VALUES (1,1,1,'2022-02-12 12:00:00','2022-02-12 12:54:58','2022-02-12 12:54:58','2022-02-12 12:00:00','Message titlexxxxx for fund','s\ns\ns\ns\ns\ns','メールでも通知する','[]',NULL),(2,1,1,'2022-02-12 12:56:28','2022-02-12 13:08:57','2022-02-12 13:08:57','2022-02-24 00:00:00','new messsage for fund','new messsage for fund\nnew messsage for fund\nnew messsage for fund','メールでも通知する','[{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/62072fec966d5_fund_application_2022-02-04.csv\",\"name\":\"fund_application_2022-02-04.csv\"},{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/62072fec9bd1e_1526444239-tt_avatar_small.jpeg\",\"name\":\"1526444239-tt_avatar_small.jpeg\"}]','投資家（入金済）のみ'),(3,1,1,'2022-02-12 13:28:03','2022-02-12 13:28:11',NULL,'2022-02-28 00:00:00','new message for fund','new message for fund\nnew message for fund\nnew message for fund','メールでも通知する','[{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/62073752e8920_fund_application_2022-02-04.csv\",\"name\":\"fund_application_2022-02-04.csv\"},{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/62073752ef63d_staging_category_data.csv\",\"name\":\"staging_category_data.csv\"}]','投資家（入金済）のみ'),(4,51,1,'2022-02-13 17:39:42','2022-02-13 20:57:31',NULL,'2022-02-15 03:00:00','TEst message','asd\nas\nda\nsd\nasd','メールでも通知する','[{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/6208c3ceca5f6_prod_notification_category.sql\",\"name\":\"prod_notification_category.sql\"},{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/6208c3ced5ba0_\\u7533\\u8fbc\\u4e00\\u89a7__2022-02-10 (1).csv\",\"name\":\"\\u7533\\u8fbc\\u4e00\\u89a7__2022-02-10 (1).csv\"}]','投資家（入金済）のみ');
/*!40000 ALTER TABLE `fund_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_public`
--

DROP TABLE IF EXISTS `fund_public`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fund_public` (
  `fund_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`fund_id`,`admin_id`),
  KEY `fk_fund_public_fund2_idx` (`fund_id`),
  KEY `fk_fund_public_admin2_idx` (`admin_id`),
  CONSTRAINT `fk_fund_public_admin2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fund_public_fund2` FOREIGN KEY (`fund_id`) REFERENCES `fund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_public`
--

LOCK TABLES `fund_public` WRITE;
/*!40000 ALTER TABLE `fund_public` DISABLE KEYS */;
INSERT INTO `fund_public` VALUES (1,1,'2022-02-13 02:41:59','2022-02-13 02:41:59',NULL),(50,1,'2022-02-13 18:27:31','2022-02-13 18:27:31',NULL),(51,1,'2022-02-13 18:40:27','2022-02-13 18:40:27',NULL),(52,1,'2022-02-13 21:21:53','2022-02-13 21:21:53',NULL),(53,1,'2022-03-01 17:44:17','2022-03-01 17:44:17',NULL),(54,1,'2022-03-02 22:27:43','2022-03-02 22:27:43',NULL);
/*!40000 ALTER TABLE `fund_public` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investor`
--

DROP TABLE IF EXISTS `investor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investor` (
  `user_id` int(11) NOT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `入金状況` text COMMENT 'Payment status',
  `入金日` date DEFAULT NULL COMMENT 'Payment day',
  `摘要` text COMMENT 'Description',
  `日付` date DEFAULT NULL COMMENT 'Date',
  `金額` int(11) DEFAULT NULL COMMENT 'Amount of money',
  `金額を入力` text,
  `出金登日` date DEFAULT NULL,
  PRIMARY KEY (`user_id`,`fund_id`),
  KEY `fk_lottery_fund2_idx` (`fund_id`),
  CONSTRAINT `fk_lottery_fund2` FOREIGN KEY (`fund_id`) REFERENCES `fund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lottery_user2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investor`
--

LOCK TABLES `investor` WRITE;
/*!40000 ALTER TABLE `investor` DISABLE KEYS */;
INSERT INTO `investor` VALUES (1,1,NULL,'2022-02-12 21:07:51',NULL,'未入金','2022-02-11','分配金＋投資金額','2022-02-11',100000,NULL,NULL),(1,46,NULL,'2022-02-10 09:49:54',NULL,'未入金','2022-02-15','分配金＋投資金額',NULL,5000,'5000',NULL),(14,51,NULL,NULL,NULL,'未入金',NULL,NULL,NULL,NULL,NULL,NULL),(14,53,NULL,'2022-03-03 07:59:52',NULL,'入金済','2022-03-03',NULL,NULL,NULL,NULL,NULL),(15,53,NULL,'2022-03-03 07:59:31',NULL,'入金済','2022-03-24','分配金＋投資金額',NULL,3000,NULL,'2022-03-23'),(15,54,NULL,'2022-03-03 09:48:58',NULL,'未入金',NULL,'投資金額',NULL,4000,NULL,'2022-03-17');
/*!40000 ALTER TABLE `investor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_template_master`
--

DROP TABLE IF EXISTS `mail_template_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_template_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` text,
  `function` text,
  `timing_jp` text,
  `timing_en` text,
  `address` text,
  `subject` text,
  `template` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_template_master`
--

LOCK TABLES `mail_template_master` WRITE;
/*!40000 ALTER TABLE `mail_template_master` DISABLE KEYS */;
INSERT INTO `mail_template_master` VALUES (1,'admin','アカウント管理\n（Adminユーザー新規作成）','アドミンアカウントを新規作成したとき','When you create a new admin account','登録されたアドレス','【彩-SAI-】管理権限登録のお知らせ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n○○ 様\n\n彩-SAI- 運営事務局より管理画面への招待が届いています。\n\n下記のリンクより新規登録をお願いいたします。\n\n▼新規登録はこちら\nhttps://〇〇〇〇\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n[署名]'),(2,'admin','ログイン機能','パスワードを忘れたとき','When you forget your password','申請した人','【彩-SAI-】パスワードをリセットしてください。','このメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n○○ 様\n\n〇〇運営事務局です。\n\n下記のリンクよりパスワード変更を行って下さい。\n※リンクは24時間で無効になります\n\n▼パスワード変更はこちら\nhttps://〇〇〇〇\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n{{$signature}}'),(3,'admin','ユーザー管理','Adminが「退会する」ボタンを押したとき','When Admin presses the \"Unsubscribe\" button','• ユーザ','【彩-SAI-】退会完了のお知らせ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n〇〇様\n\n〇〇運営事務局です。\n\n〇〇様の退会手続きが完了したことをお知らせいたします。\nご利用いただきまして、誠にありがとうございました。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n{{$signature}}'),(4,'admin','ファンド管理','Adminがユーザーの申込ステータスを「当選」にした時','When Admin sets the user\'s application status to \"winning','・ユーザ（メール）','【彩-SAI-】ファンド抽選結果のお知らせ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n〇〇様\n\n〇〇運営事務局です。\n\nこの度は 彩-SAI- 不動産クラウドファンディングが募集する ファンドにご応募いただき、誠にありがとうございました。\n\n厳正に抽選させていただいた結果、下記のファンドにお客様が当選されました。\n\n▼応募ファンド\n名称： ○○○○○\n詳細：\nhttps://〇〇〇〇\n\n------------------\n入金期限\n------------------ \n〇〇〇〇年 ○○月 ○○日\n\n\n入金期限を過ぎますと、当選が無効になりますのでお気をつけください。\n手続きの流れや注意事項は、マイページをご確認ください。\n\n▼マイページはこちら\nhttps://〇〇〇〇\n\n\n※こちらの内容にお心当たりの無い場合は、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n{{$signature}}'),(5,'admin','ファンド管理','Adminがユーザーの申込ステータスを「当選」にした時','When Admin sets the user\'s application status to \"winning','・ユーザ（マイページ）','【彩-SAI-】ファンド抽選結果のお知らせ','〇〇様\n\n〇〇運営事務局です。\n\nこの度は 彩-SAI- 不動産クラウドファンディングが募集するファンドにご応募いただき、誠にありがとうございました。\n厳正に抽選させていただいた結果、下記のファンドにお客様が当選されました。\n\n▼応募ファンド\n名称： ○○○○○\n詳細：\nhttps://〇〇〇〇\n\n------------------\n入金期限\n------------------ \n〇〇〇〇年 ○○月 ○○日\n\n\n------------------------------------------------\nご当選後の流れ\n------------------------------------------------\n当選後の流れをご説明いたします。\n下記をご一読のうえ、必ずご本人様がご対応くださいますよう宜しくお願いいたします。\n\n（１）ファンド公募 ご当選通知の確認\n・ご当選通知は 当メッセージになります。\n・ご応募いただいたファンドの名称、金額、入金期限をご確認ください。\n\n（２）指定口座へのご入金\n・所定の振込口座へ 指定金額をご入金ください。\n※入金期限を過ぎますと、当選が無効になりますのでご注意ください。\n\n（３）「入出金履歴一覧」の確認\n・ご入金を当社にて確認後、[入出金履歴一覧]に反映されます。\n「入金」表示に変わりましたら、ファンド申込手続きは完了となります。\n\n\n\n[\"お振込み口座・ご入金額\"セル内の文言を挿入してください]\n\n\n------------------------------------------------\n詳しい状況確認はこちらから\n------------------------------------------------\n▼入出金履歴一覧\nhttps://〇〇〇〇\n\n▼投資分配状況一覧\nhttps://〇〇〇〇\n\n▼投資履歴一覧\nhttps://〇〇〇〇\n\n▼抽選申込履歴一覧（抽選結果）\nhttps://〇〇〇〇\n\n▼よくある質問はこちら\nhttps://〇〇〇〇\n\n▼お問い合わせはこちら\nhttps://〇〇〇〇\n\n\n\n※掲載された内容を許可なく転載することを禁じます。\n\n\n{{$signature}}'),(6,'admin','ファンド管理','Adminがユーザーの申込ステータスを「落選」にした時','When Admin sets the user\'s application status to \"Failed','・ユーザ（メール）','【彩-SAI-】ファンド抽選結果のお知らせ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n〇〇様\n\n〇〇運営事務局です。\n\nこの度は 彩-SAI- 不動産クラウドファンディングが募集するファンドにご応募いただき、誠にありがとうございました。\n\n厳正に抽選させていただいた結果、誠に残念ですが落選となりました。\n\n▼応募ファンド\n名称： ○○○○○\n詳細：\nhttps://〇〇〇〇\n\n\n抽選結果は、[抽選申込履歴一覧] でご覧いただけます。\nまたのご参加をお待ちしております。\n\n▼抽選申込履歴一覧（抽選結果）\nhttps://〇〇〇〇\n\n\n------------------------------------------------\n補足\n------------------------------------------------\n当該ファンドに欠員が生じた場合は、再抽選を実施する場合があります。\n再抽選の結果は、当選した場合にのみ通知をお送りいたします。\n\n\n※こちらの内容にお心当たりの無い場合は、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n{{$signature}}'),(7,'admin','ファンド管理','Adminがユーザーの申込ステータスを「落選」にした時','When Admin sets the user\'s application status to \"Failed','・ユーザ（マイページ）','【彩-SAI-】ファンド抽選結果のお知らせ','〇〇様\n\n\n〇〇運営事務局です。\n\nこの度は 彩-SAI- 不動産クラウドファンディングが募集するファンドにご応募いただき、誠にありがとうございました。\n厳正に抽選させていただいた結果、誠に残念ですが落選となりました。\n\n▼応募ファンド\n名称： ○○○○○\n詳細：\nhttps://〇〇〇〇\n\n抽選結果は、[抽選申込履歴一覧] でご覧いただけます。\nまたのご参加をお待ちしております。\n\n\n------------------------------------------------\n補足\n------------------------------------------------\n当該ファンドに欠員が生じた場合は、再抽選を実施する場合があります。\n再抽選の結果は、当選した場合にのみ通知をお送りいたします。\n\n\n------------------------------------------------\n詳しい状況確認はこちらから\n------------------------------------------------\n▼抽選申込履歴一覧（抽選結果）\nhttps://〇〇〇〇\n\n▼よくある質問はこちら\nhttps://〇〇〇〇\n\n▼お問い合わせはこちら\nhttps://〇〇〇〇\n\n\n※掲載された内容を許可なく転載することを禁じます。\n\n{{$signature}}'),(8,'admin','ファンド管理','Adminがユーザーの申込ステータスを「再当選」にした時','When Admin sets the user\'s application status to \"rewin','・ユーザ（メール）','【彩-SAI-】ファンド抽選結果のお知らせ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n〇〇様\n\n〇〇運営事務局です。\n\nこのほどファンド参加予定者に欠員が生じたため、再抽選の運びとなりました。\n厳正に抽選させていただいた結果、下記のファンドにお客様が当選されました。\n\n▼応募ファンド\n名称： ○○○○○\n詳細：\nhttps://〇〇〇〇\n\n------------------\n入金期限\n------------------ \n〇〇〇〇年 ○○月 ○○日\n\n\n入金期限を過ぎますと、当選が無効になりますのでお気をつけください。\n手続きの流れや注意事項は、マイページをご確認ください。\n\n▼マイページはこちら\nhttps://〇〇〇〇\n\n\n※こちらの内容にお心当たりの無い場合は、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n{{$signature}}'),(9,'admin','ファンド管理','Adminがユーザーの申込ステータスを「再当選」にした時','When Admin sets the user\'s application status to \"rewin','・ユーザ（マイページ）','【彩-SAI-】ファンド抽選結果のお知らせ','〇〇様\n\n\n〇〇運営事務局です。\n\nこのほどファンド参加予定者に欠員が生じたため、再抽選の運びとなりました。\n厳正に抽選させていただいた結果、下記のファンドにお客様が当選されました。\n\n▼応募ファンド\n名称： ○○○○○\n詳細：\nhttps://〇〇〇〇\n\n------------------\n入金期限\n------------------ \n〇〇〇〇年 ○○月 ○○日\n\n\n------------------------------------------------\n再当選後の流れ\n------------------------------------------------\n当選後の流れをご説明いたします。\n下記をご一読のうえ、必ずご本人様がご対応くださいますよう宜しくお願いいたします。\n\n（１）ファンド公募 ご当選通知の確認\n・ご当選通知は 当メッセージになります。\n・ご応募いただいたファンドの名称、金額、入金期限をご確認ください。\n\n（２）指定口座へのご入金\n・所定の振込口座へ 指定金額をご入金ください。\n※入金期限を過ぎますと、当選が無効になりますのでご注意ください。\n\n（３）「入出金履歴一覧」の確認\n・ご入金を当社にて確認後、[入出金履歴一覧]に反映されます。\n「入金」表示に変わりましたら、ファンド申込手続きは完了となります。\n\n\n\n[\"\"お振込み口座・ご入金額\"\"セル内の文言を挿入してください]\n\n\n\n------------------------------------------------\n詳しい状況確認はこちらから\n------------------------------------------------\n▼入出金履歴一覧\nhttps://〇〇〇〇\n\n▼投資分配状況一覧\nhttps://〇〇〇〇\n\n▼投資履歴一覧\nhttps://〇〇〇〇\n\n▼抽選申込履歴一覧（抽選結果）\nhttps://〇〇〇〇\n\n▼よくある質問はこちら\nhttps://〇〇〇〇\n\n▼お問い合わせはこちら\nhttps://〇〇〇〇\n\n\n※掲載された内容を許可なく転載することを禁じます。\n\n\n[署名]'),(10,'admin','ファンド管理','Adminがユーザーの入金登録をした時','When Admin registers a user\'s deposit','・ユーザ','【彩-SAI-】入金を確認いたしました','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n〇〇様\n\n〇〇運営事務局です。\n\nファンドへのご入金を確認いたしました。\n入出金履歴については下記からご確認ください。\n\n▼応募ファンド\n名称： ○○○○○\n詳細：\nhttps://〇〇〇〇\n\n\n------------------\n入出金の状況\n------------------\n更新日：　○年○月○日\n概要：　入金\n\n▼入出金履歴一覧\nhttps://〇〇〇〇\n\n\n------------------------------------------------\nその他の確認はこちらから\n------------------------------------------------\n▼マイページはこちら\nhttps://〇〇〇〇\n\n▼よくある質問はこちら\nhttps://〇〇〇〇\n\n\n※こちらの内容にお心当たりの無い場合は、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n{{$signature}}'),(11,'admin','ファンド管理','Adminがユーザーの出金登録をした時','When Admin registers for withdrawal of the user','・ユーザ','【彩-SAI-】出金を確認いたしました','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n〇〇様\n\n〇〇運営事務局です。\n\nファンドへのご出金を確認いたしました。\n入出金履歴については下記からご確認ください。\n\n▼応募ファンド\n名称： ○○○○○\n詳細：\nhttps://〇〇〇〇\n\n\n------------------\n入出金の状況\n------------------\n更新日：　○年○月○日\n概要：　出金\n\n▼入出金履歴一覧\nhttps://〇〇〇〇\n\n\n------------------------------------------------\nその他の確認はこちらから\n------------------------------------------------\n▼マイページはこちら\nhttps://〇〇〇〇\n\n▼よくある質問はこちら\nhttps://〇〇〇〇\n\n\n※こちらの内容にお心当たりの無い場合は、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n{{$signature}}'),(12,'ユーザ','会員登録','ユーザーがメールアドレスを入力し仮登録したとき','When the user enters an email address and temporarily registers','• ユーザ','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n{{$mail_to}}様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\n<a href=\"{{$user_url}}/form/rg20?invitation_token={{$invitation_token}}\">{{$user_url}}/form/rg20?invitation_token={{$invitation_token}}</a>\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n{{$signature}}'),(13,'ユーザ','会員登録','ユーザーが本登録完了したとき','When the user completes the main registration','• ユーザ','【彩-SAI-】会員登録完了のお知らせ',''),(14,'ユーザ','ログイン機能','パスワードを忘れたとき','When you forget your password','• ユーザ','【彩-SAI-】パスワードを再設定してください','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n{{$username}}様\n\n彩-SAI- 運営事務局です。\n\nパスワードをお忘れですか？\nこちらをクリックしてパスワードをリセットしてください。\n\n▼パスワードをリセット\n<a href=\"{{$user_url}}/login/cp20?reset_password_token={{$reset_password_token}}\">{{$user_url}}/login/cp20?reset_password_token={{$reset_password_token}}</a>\n\n\n安全のため、リンクは24時間で無効になります。\n\nお困りですか？\nお気軽にお問い合わせください。\n\nアカウントの安全確保のため、このメールの転送はお控えください。\n第三者があなたのアカウントにアクセスできるようになってしまいます。 \n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n{{$signature}}'),(15,'ユーザ','メッセージ機能','ユーザがメッセージを受信した時','When the user receives a message','• 受信したユーザ','【彩-SAI-】運用事務局よりメッセージが届いています','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n〇〇様\n\n彩-SAI- 運営事務局です。\n\n〇〇様へメッセージが届きましたのでお知らせします。\n下記のリンクからメッセージをご確認ください。\n\n▼〇〇様のメッセージ\nhttps://〇〇〇〇\n\n\n▼よくある質問はこちら\nhttps://〇〇〇〇\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n[署名]'),(16,'ユーザ','ファンド申込完了メール','ユーザーがファンドを申込した時','When a user applies for a fund','・申込したユーザー','【彩-SAI-】ファンドの申込みが完了しました','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n〇〇様\n\n彩-SAI- 運営事務局です。\n\nファンドへのお申込みが完了しました。\nお申込結果や履歴は下記からご確認いただけます。\n\n▼抽選申込履歴一覧\nhttps://〇〇〇〇\n\n▼よくある質問はこちら\nhttps://〇〇〇〇\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n[署名]'),(17,'ユーザ','ファンド申込キャンセル完了メール','ユーザーがファンドを申込をキャンセルした時','When the user cancels the application for the fund','・申込をキャンセルしたユーザー','【彩-SAI-】ファンドの申込みをキャンセルしました','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n〇〇様\n\n彩-SAI- 運営事務局です。\n\nファンドへのお申込みをキャンセルしました。\n履歴は下記からご確認いただけます。\n\n▼抽選申込履歴一覧\nhttps://〇〇〇〇\n\n▼よくある質問はこちら\nhttps://〇〇〇〇\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n[署名]');
/*!40000 ALTER TABLE `mail_template_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_read`
--

DROP TABLE IF EXISTS `message_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_read` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_type` varchar(50) DEFAULT NULL,
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_read`
--

LOCK TABLES `message_read` WRITE;
/*!40000 ALTER TABLE `message_read` DISABLE KEYS */;
INSERT INTO `message_read` VALUES (3,15,'1','2022-03-03 15:28:05'),(3,0,'fund_message','2022-03-03 15:43:43'),(4,0,'fund_message','2022-03-03 15:44:07'),(1,0,'notice','2022-03-03 15:44:34'),(4,0,'notice','2022-03-03 16:27:13'),(4,0,NULL,'2022-03-03 16:32:29'),(4,0,NULL,'2022-03-03 16:33:48'),(4,0,NULL,'2022-03-03 16:35:10'),(4,0,NULL,'2022-03-03 16:35:18'),(4,0,NULL,'2022-03-03 16:35:26'),(4,0,NULL,'2022-03-03 16:36:59'),(3,0,'fund_message','2022-03-03 16:37:08'),(3,0,'fund_message','2022-03-03 16:37:09'),(3,0,'fund_message','2022-03-03 16:40:06'),(3,0,'fund_message','2022-03-03 16:40:20'),(3,0,'fund_message','2022-03-03 16:41:09'),(4,0,NULL,'2022-03-03 16:41:18'),(4,0,NULL,'2022-03-03 16:42:08'),(4,0,'notice','2022-03-03 16:42:22'),(4,0,NULL,'2022-03-03 16:43:49'),(4,0,NULL,'2022-03-03 16:43:56'),(4,0,NULL,'2022-03-03 16:44:13'),(4,0,NULL,'2022-03-03 16:44:54'),(3,0,'fund_message','2022-03-03 16:45:00'),(4,0,NULL,'2022-03-03 16:45:11');
/*!40000 ALTER TABLE `message_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_12_24_041829_create_sessions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `公開期間_from` date DEFAULT NULL,
  `公開期間_to` date DEFAULT NULL,
  `公開先` text,
  `タイトル` text,
  `添付ファイル` text,
  `本文` text,
  PRIMARY KEY (`id`),
  KEY `fk_notice_admin1_idx` (`admin_id`),
  CONSTRAINT `fk_notice_admin1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,1,'2022-02-10 12:00:00','2022-02-12 06:55:02',NULL,'2022-01-02','2022-05-02','会員マイページのみ','練馬区第一号の募集を開始しましたxxxx','[{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/notice\\/6206d91d7f535_staging_category_data.csv\",\"name\":\"staging_category_data.csv\"},{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/notice\\/6206db175bb29_prod_notification_category.sql\",\"name\":\"prod_notification_category.sql\"}]','お客様各位\n\n日頃より不動産投資型クラウドファンディングサイト「Jointo α」をご利用いただき厚く御礼申し上げます。\n以下期日より新規ファンドの抽選申込受付を開始いたしますのでお知らせします。\n\n----------------------------------------------------------------------\n第20号「アルファアセットファンド京都祇園第4回」\n　2022年1月17日（月）12：00（正午）抽選申込受付開始（2022年1月18日（火）17：59受付終了）\n\n第21号「アルファアセットファンド新梅田第2回」\n　2022年2月15日（火）12：00（正午）抽選申込受付開始（2022年2月16日（水）17：59受付終了）\n\n第22号「アルファアセットファンド学芸大学第2回」\n　2022年3月15日（火）12：00（正午）抽選申込受付開始（2022年3月16日（水）17：59受付終了）\n\n※「抽選方式」での受付となります。\n抽選方式については募集物件の「ファンド詳細」の「FAQ」にて記載させていただきました。\nお申込みを検討される場合は必ずご確認ください。\n----------------------------------------------------------------------\n\n本サイト上にて募集詳細等をよくご確認の上、申込手続きをお願い致します。\n\n◆-----------------------------------------◆'),(2,1,'2022-02-12 04:52:04','2022-02-12 04:56:15','2022-02-12 04:56:15','2022-02-07','2022-02-23','全員（マイページ＋TOPページ）','sssss',NULL,'sss\ns\ns\ns\ns\ns'),(3,1,'2022-02-12 05:05:03','2022-02-12 07:00:02',NULL,'2022-02-08','2022-02-24','会員マイページのみ','Test notice','[{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/notice\\/6206dc62a9406_staging_category_data.csv\",\"name\":\"staging_category_data.csv\"}]','お客様各位\n\n日頃より不動産投資型クラウドファンディングサイト「Jointo α」をご利用いただき厚く御礼申し上げます。\n以下期日より新規ファンドの抽選申込受付を開始いたしますのでお知らせします。\n\n----------------------------------------------------------------------\n第20号「アルファアセットファンド京都祇園第4回」\n　2022年1月17日（月）12：00（正午）抽選申込受付開始（2022年1月18日（火）17：59受付終了）\n\n第21号「アルファアセットファンド新梅田第2回」\n　2022年2月15日（火）12：00（正午）抽選申込受付開始（2022年2月16日（水）17：59受付終了）\n\n第22号「アルファアセットファンド学芸大学第2回」\n　2022年3月15日（火）12：00（正午）抽選申込受付開始（2022年3月16日（水）17：59受付終了）\n\n※「抽選方式」での受付となります。\n抽選方式については募集物件の「ファンド詳細」の「FAQ」にて記載させていただきました。\nお申込みを検討される場合は必ずご確認ください。\n----------------------------------------------------------------------\n\n＜第20号、第21号、第22号プロジェクトについて＞\n\nプロジェクトについては、それぞれ以下区分所有マンション1室の運用によって得られる賃料収入を原資として、投資家の皆様に分配を行います。\n\n＜各ファンド情報＞\n・第20号ファンド　対象物件名「プレサンス祇園宮川町」\n・第21号ファンド　対象物件名「モンテベルデ新梅田」\n・第22号ファンド　対象物件名「アールヴェール学芸大学」\n\n詳細については「ファンド一覧」-「ファンド詳細」にてご覧ください。\n\n※出資上限金額はお一人様100万円までとなります。\n※投資家の皆様へ利益を優先的に分配する仕組みを採用しているため、比較的安定した収益が見込める投資商品となっております。\n※抽選方式での申込受付となります、当選結果については募集終了日の翌日12：00までにメールにて通知いたします。\n※ファンド成立までに当選者からのキャンセルが出た場合は事務局にて再抽選を実施いたします。\n\n◆-----------------------------------------◆\n\n本サイト上にて募集詳細等をよくご確認の上、申込手続きをお願い致します。\n\n◆-----------------------------------------◆'),(4,1,'2022-02-12 07:11:04','2022-02-12 07:11:04',NULL,'2022-02-08','2022-02-17','全員（マイページ＋TOPページ）','xxxx','[{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/notice\\/6206def8410f5_staging_category_data.csv\",\"name\":\"staging_category_data.csv\"}]','xqsdasdasd\nas\ndasd');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('Ez6QzT02PkRtH89ICu8xFrp3I960hJ8qTjXGP8oF',16,'172.25.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.109 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUENhSFJEaDQ4VGpIVE9QY3JkT1FyME9NNXg5ZTJIelJ1bG9vRmcybCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6MzAwMC9teS1wYWdlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTE6ImxvZ2luX3VzZXJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNjtzOjE4OiJwYXNzd29yZF9oYXNoX3VzZXIiO3M6NjA6IiQyeSQxMCR3cG9BSjZLZkM0cEZqSU5yZTFHbWJ1YU9WNFZZaWRVN3Z5MGpNR1h4VW0wMFM3YmxXbUQvTyI7fQ==',1646329283);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporary_register`
--

DROP TABLE IF EXISTS `temporary_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporary_register` (
  `invitation_token` varchar(100) NOT NULL,
  `invitation_token_expired_at` datetime DEFAULT NULL,
  `個人・法人` text,
  `メールアドレス` text,
  `メールアドレス（確認用）` text,
  `password` text,
  `秘密の質問` text,
  `秘密の質問（答え）` text,
  `agree` text,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `お名前1` text,
  `お名前2` text,
  `フリガナ1` text,
  `フリガナ2` text,
  `生年月日_year` text,
  `生年月日_month` text,
  `生年月日_day` text,
  `郵便番号` text,
  `都道府県` text,
  `住所` text,
  `建物名` text,
  `固定電話` text,
  `携帯電話` text,
  `金融資産` text,
  `投資目的` text,
  `取引開始のきっかけ` text,
  `職業` text,
  `勤務先` text,
  `年収（年金所得も含む）` text,
  `余剰資金の運用である` text,
  `元本が毀損した場合、生活に支障が出るかどうか` text,
  `金融に係る業務の経験` text,
  `投資方針` text,
  `投資経験（年数）` text,
  `本人確認方法` text,
  `password_confirm` text,
  PRIMARY KEY (`invitation_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporary_register`
--

LOCK TABLES `temporary_register` WRITE;
/*!40000 ALTER TABLE `temporary_register` DISABLE KEYS */;
INSERT INTO `temporary_register` VALUES ('11e1185416058fac768c3ef41b22e4e9','2022-03-01 02:11:58','法人','nghuuquyen@gmail.com',NULL,'$2y$10$tq6j2VPeuz8MSEn1F8vE4eOJtRVyBk1WySSaV4bXfDdW5Cv49EXR.','出身中学校の名前は？','1111','on','2022-03-01 02:11:58','2022-03-01 02:10:55',NULL,'Quyen','Nguyen','フリガナ1','フリガナ2','1984','7','11','100-0004','東京都','千代田区大手町','建物名','090-444-222','090-2222-3333','1,000万円未満','ポートフォリオの分散','セミナー','公務員','勤務先（法人の方は会社名）','3000万円未満','いいえ','はい','いいえ','長期安定保有','10年以上','本人限定受取郵便','1234Qwer'),('56a78dc75cd5a6c51949b2298bb70f0e','2022-03-01 13:04:48','法人','nghuuquyen+3@gmail.com',NULL,'$2y$10$G12hDoIPugDVK50/d32sxuf6b/4ZrP2y9XAdnsGrt1gPhi41iXmEm','出身中学校の名前は？','1111','on','2022-03-01 13:04:48','2022-03-01 13:03:38',NULL,'Quyen 3','Nguyen','フリガナ1','フリガナ2','1996','11','5','100-0005','東京都','千代田区丸の内','建物名','090-222-333','090-4444-3333','5,000万円未満','将来のための資産形成','インターネット','会社員（未上場）','勤務先（法人の方は会社名）','1000万円未満','いいえ','はい','いいえ','長期安定保有',NULL,'本人限定受取郵便','1234Qwer'),('726dd73a56a7224179db95c3540c0efc','2022-03-04 02:40:57','個人','nghuuquyen+11@gmail.com',NULL,'$2y$10$wpoAJ6KfC4pFjINre1GmbuaOV4VYidU7vy0jMGXxUm00S7blWmD/O','選択してください','ちすにきち','on','2022-03-04 02:40:57','2022-03-04 02:38:38',NULL,'Quyen','Nguyen','タナン','タナンフ','1996','11','5','100-0004','東京都','千代田区大手町',NULL,'090-222-222',NULL,'1,000万円未満','ポートフォリオの分散','新聞・雑誌','官公庁職員',NULL,'1500万円未満','はい','いいえ','はい','長期安定保有','5年未満','本人限定受取郵便','1234Qwer'),('a3d4cf88332e458b0259b4a8635b1cb0','2022-03-04 17:35:01','個人','quyen+8@nowtas.com',NULL,'$2y$10$YJrp8oWxu/BVIuzQckWBTOns18.BwYTNMmPZM.JsYlr/FqyR/eYdK','出身中学校の名前は？','1111','on','2022-03-03 20:50:26','2022-03-03 17:35:01',NULL,'Quyen','Nguyen','タナン','タナン','2006','6','8','100-0005','東京都','千代田区丸の内','xxx','090-222-222','090-2222-2222','1,000万円未満','将来のための資産形成','新聞・雑誌','会社員（上場）','xxx','800万円未満','いいえ','はい','いいえ','長期安定保有','1年未満','面談（場所：弊社）','1234Qwer'),('c53b32e1a13efa7da15d4ace90037ee9','2022-03-02 19:18:42','法人','nghuuquyen+5@gmail.com',NULL,'$2y$10$GvMp.f5bL0Svy/HHB.nTcu1a6ormDHfHJbgQFceBeR5MoTcZ60SK6','出身中学校の名前は？','1111','on','2022-03-02 19:18:42','2022-03-02 19:17:29',NULL,'Quyen 5','Nguyen','フリガナ1','フリガナ2','1996','10','17','100-0005','東京都','千代田区丸の内','建物名','090-222-333','090-1111-2222','3,000万円未満','将来のための資産形成','セミナー','会社員（上場）','勤務先（法人の方は会社名）','1000万円未満','いいえ','はい','いいえ','長期安定保有','1年未満','本人限定受取郵便','1234Qwer'),('ccc0c52a2085f51f6f412960a4b19fe4','2022-03-04 20:53:50','個人','nghuuquyen+7@gmail.com',NULL,'$2y$10$VjsZV4IdaDhhptslSNH0f.RHq41FwVcQUNn75fD6yaAEHGZzT0Cz.','出身中学校の名前は？','222','on','2022-03-03 21:01:42','2022-03-03 20:53:50',NULL,'Quyen','Nguyrn','ノノノ','ノノノ','2006','6','9','100-0004','東京都','千代田区大手町','1111','090-222-222',NULL,'5,000万円未満','小口不動産への関心','新聞・雑誌','官公庁職員','xxx','1500万円未満','いいえ','はい','いいえ','長期安定保有','10年以上','面談（場所：弊社）','1234Qwer');
/*!40000 ALTER TABLE `temporary_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trigger_mail`
--

DROP TABLE IF EXISTS `trigger_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trigger_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `reaction_user_id` int(11) DEFAULT NULL,
  `matching_id` int(11) DEFAULT NULL,
  `nickname` text,
  `mail_to` varchar(100) DEFAULT NULL,
  `subject` text,
  `html_content` text,
  `text_content` text,
  `delivery_at` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `invitation_token` text,
  `nickname_user_reaction` varchar(200) DEFAULT NULL,
  `email_user_contact` varchar(100) DEFAULT NULL,
  `reset_password_token` text,
  `total_unread_message` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `username` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trigger_mail`
--

LOCK TABLES `trigger_mail` WRITE;
/*!40000 ALTER TABLE `trigger_mail` DISABLE KEYS */;
INSERT INTO `trigger_mail` VALUES (1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 08:46:08',NULL,12,'26746851bcaf6710f9e4612952a5c2c1',NULL,NULL,NULL,NULL,NULL,NULL),(2,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-28 08:47:31',NULL,12,'b2f385e5f8d8a03b0fdea4a2d874a414',NULL,NULL,NULL,NULL,NULL,NULL),(3,6,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\n{{username}}様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=fe15f577ab0440e9821bb0e293c5b4a9\">http://localhost:3000/form/rg20?invitation_token=fe15f577ab0440e9821bb0e293c5b4a9</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n{{username}}様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=fe15f577ab0440e9821bb0e293c5b4a9\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 17:53:05','2022-02-28 08:53:04',NULL,12,'fe15f577ab0440e9821bb0e293c5b4a9',NULL,NULL,NULL,NULL,NULL,NULL),(4,7,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\n{{username}}様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=25d1c88a85c2327f20d858c5c2ca852e\">http://localhost:3000/form/rg20?invitation_token=25d1c88a85c2327f20d858c5c2ca852e</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\n{{username}}様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=25d1c88a85c2327f20d858c5c2ca852e\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 17:59:17','2022-02-28 08:59:16',NULL,12,'25d1c88a85c2327f20d858c5c2ca852e',NULL,NULL,NULL,NULL,NULL,NULL),(5,8,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=c986845e69f0873118782941560e797c\">http://localhost:3000/form/rg20?invitation_token=c986845e69f0873118782941560e797c</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=c986845e69f0873118782941560e797c\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 18:03:54','2022-02-28 09:03:53',NULL,12,'c986845e69f0873118782941560e797c',NULL,NULL,NULL,NULL,NULL,NULL),(6,9,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=1e2530fd92de75004b5e5d458774003f\">http://localhost:3000/form/rg20?invitation_token=1e2530fd92de75004b5e5d458774003f</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=1e2530fd92de75004b5e5d458774003f\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 18:12:22','2022-02-28 09:12:20',NULL,12,'1e2530fd92de75004b5e5d458774003f',NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=0ba4ea576a5a754046019c35d79bd177\">http://localhost:3000/form/rg20?invitation_token=0ba4ea576a5a754046019c35d79bd177</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=0ba4ea576a5a754046019c35d79bd177\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 19:16:02','2022-02-28 10:16:00',NULL,12,'0ba4ea576a5a754046019c35d79bd177',NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=c31c162a75fc5ed15c9506d525247395\">http://localhost:3000/form/rg20?invitation_token=c31c162a75fc5ed15c9506d525247395</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=c31c162a75fc5ed15c9506d525247395\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 20:04:38','2022-02-28 11:04:37',NULL,12,'c31c162a75fc5ed15c9506d525247395',NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,'nghuuquyen222@gmail.com','nghuuquyen222@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen222@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=43800feaafc1819ee2859583e15282b2\">http://localhost:3000/form/rg20?invitation_token=43800feaafc1819ee2859583e15282b2</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen222@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=43800feaafc1819ee2859583e15282b2\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 20:06:02','2022-02-28 11:06:01',NULL,12,'43800feaafc1819ee2859583e15282b2',NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=337af8c603cf8dd4a240631cde3f9f44\">http://localhost:3000/form/rg20?invitation_token=337af8c603cf8dd4a240631cde3f9f44</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=337af8c603cf8dd4a240631cde3f9f44\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 20:07:27','2022-02-28 11:07:25',NULL,12,'337af8c603cf8dd4a240631cde3f9f44',NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=bf72e3fdf27ea5b8b47cb4b09562744c\">http://localhost:3000/form/rg20?invitation_token=bf72e3fdf27ea5b8b47cb4b09562744c</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=bf72e3fdf27ea5b8b47cb4b09562744c\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 20:50:05','2022-02-28 11:50:04',NULL,12,'bf72e3fdf27ea5b8b47cb4b09562744c',NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=8d6252798d88f67f49a717fcb2427d62\">http://localhost:3000/form/rg20?invitation_token=8d6252798d88f67f49a717fcb2427d62</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=8d6252798d88f67f49a717fcb2427d62\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 20:50:15','2022-02-28 11:50:14',NULL,12,'8d6252798d88f67f49a717fcb2427d62',NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=2673f3d5ce5668a6c52cfb99c37b5b90\">http://localhost:3000/form/rg20?invitation_token=2673f3d5ce5668a6c52cfb99c37b5b90</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=2673f3d5ce5668a6c52cfb99c37b5b90\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-02-28 20:53:24','2022-02-28 11:53:23',NULL,12,'2673f3d5ce5668a6c52cfb99c37b5b90',NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,'nghuuquyen+1@gmail.com','nghuuquyen+1@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen+1@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=2d0d913d6855513a4ee98be72d0102a2\">http://localhost:3000/form/rg20?invitation_token=2d0d913d6855513a4ee98be72d0102a2</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen+1@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=2d0d913d6855513a4ee98be72d0102a2\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-01 00:20:10','2022-02-28 15:20:09',NULL,12,'2d0d913d6855513a4ee98be72d0102a2',NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,'nghuuquyen+2@gmail.com','nghuuquyen+2@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen+2@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=831ec0981a55bf52cbe78f6d7c0a9442\">http://localhost:3000/form/rg20?invitation_token=831ec0981a55bf52cbe78f6d7c0a9442</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen+2@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=831ec0981a55bf52cbe78f6d7c0a9442\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-01 00:36:34','2022-02-28 15:36:32',NULL,12,'831ec0981a55bf52cbe78f6d7c0a9442',NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=105059e84fb338bb55d4c960bea01d30\">http://localhost:3000/form/rg20?invitation_token=105059e84fb338bb55d4c960bea01d30</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=105059e84fb338bb55d4c960bea01d30\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-01 02:01:27','2022-02-28 17:01:26',NULL,12,'105059e84fb338bb55d4c960bea01d30',NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','nghuuquyen@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=28fdd2118e3128f3397b01d504588ccc\">http://localhost:3000/form/rg20?invitation_token=28fdd2118e3128f3397b01d504588ccc</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=28fdd2118e3128f3397b01d504588ccc\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-01 02:10:57','2022-02-28 17:10:55',NULL,12,'28fdd2118e3128f3397b01d504588ccc',NULL,NULL,NULL,NULL,NULL,NULL),(18,13,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','【彩-SAI-】パスワードを再設定してください','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nQuyenNguyen様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\nパスワードをお忘れですか？<br />\nこちらをクリックしてパスワードをリセットしてください。<br />\n<br />\n▼パスワードをリセット<br />\n<a href=\"http://localhost:3000/login/cp20?reset_password_token=d1672b8ecf06d7a649801e389e1df3c8\">http://localhost:3000/login/cp20?reset_password_token=d1672b8ecf06d7a649801e389e1df3c8</a><br />\n<br />\n<br />\n安全のため、リンクは24時間で無効になります。<br />\n<br />\nお困りですか？<br />\nお気軽にお問い合わせください。<br />\n<br />\nアカウントの安全確保のため、このメールの転送はお控えください。<br />\n第三者があなたのアカウントにアクセスできるようになってしまいます。 <br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nQuyenNguyen様\n\n彩-SAI- 運営事務局です。\n\nパスワードをお忘れですか？\nこちらをクリックしてパスワードをリセットしてください。\n\n▼パスワードをリセット\nhttp://localhost:3000/login/cp20?reset_password_token=d1672b8ecf06d7a649801e389e1df3c8\n\n\n安全のため、リンクは24時間で無効になります。\n\nお困りですか？\nお気軽にお問い合わせください。\n\nアカウントの安全確保のため、このメールの転送はお控えください。\n第三者があなたのアカウントにアクセスできるようになってしまいます。 \n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-01 10:12:28','2022-03-01 01:12:27',NULL,14,NULL,NULL,NULL,'d1672b8ecf06d7a649801e389e1df3c8',NULL,NULL,NULL),(19,13,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','【彩-SAI-】パスワードを再設定してください','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nQuyenNguyen様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\nパスワードをお忘れですか？<br />\nこちらをクリックしてパスワードをリセットしてください。<br />\n<br />\n▼パスワードをリセット<br />\n<a href=\"http://localhost:3000/login/cp20?reset_password_token=d8c21f8bb775c34c7f5ede5d412bc589\">http://localhost:3000/login/cp20?reset_password_token=d8c21f8bb775c34c7f5ede5d412bc589</a><br />\n<br />\n<br />\n安全のため、リンクは24時間で無効になります。<br />\n<br />\nお困りですか？<br />\nお気軽にお問い合わせください。<br />\n<br />\nアカウントの安全確保のため、このメールの転送はお控えください。<br />\n第三者があなたのアカウントにアクセスできるようになってしまいます。 <br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nQuyenNguyen様\n\n彩-SAI- 運営事務局です。\n\nパスワードをお忘れですか？\nこちらをクリックしてパスワードをリセットしてください。\n\n▼パスワードをリセット\nhttp://localhost:3000/login/cp20?reset_password_token=d8c21f8bb775c34c7f5ede5d412bc589\n\n\n安全のため、リンクは24時間で無効になります。\n\nお困りですか？\nお気軽にお問い合わせください。\n\nアカウントの安全確保のため、このメールの転送はお控えください。\n第三者があなたのアカウントにアクセスできるようになってしまいます。 \n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-01 10:13:27','2022-03-01 01:13:26',NULL,14,NULL,NULL,NULL,'d8c21f8bb775c34c7f5ede5d412bc589',NULL,NULL,NULL),(20,13,NULL,NULL,NULL,NULL,'nghuuquyen@gmail.com','【彩-SAI-】パスワードを再設定してください','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nQuyenNguyen様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\nパスワードをお忘れですか？<br />\nこちらをクリックしてパスワードをリセットしてください。<br />\n<br />\n▼パスワードをリセット<br />\n<a href=\"http://localhost:3000/login/cp20?reset_password_token=350028a72fcdf8d8c9d269d5aab6d03d\">http://localhost:3000/login/cp20?reset_password_token=350028a72fcdf8d8c9d269d5aab6d03d</a><br />\n<br />\n<br />\n安全のため、リンクは24時間で無効になります。<br />\n<br />\nお困りですか？<br />\nお気軽にお問い合わせください。<br />\n<br />\nアカウントの安全確保のため、このメールの転送はお控えください。<br />\n第三者があなたのアカウントにアクセスできるようになってしまいます。 <br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nQuyenNguyen様\n\n彩-SAI- 運営事務局です。\n\nパスワードをお忘れですか？\nこちらをクリックしてパスワードをリセットしてください。\n\n▼パスワードをリセット\nhttp://localhost:3000/login/cp20?reset_password_token=350028a72fcdf8d8c9d269d5aab6d03d\n\n\n安全のため、リンクは24時間で無効になります。\n\nお困りですか？\nお気軽にお問い合わせください。\n\nアカウントの安全確保のため、このメールの転送はお控えください。\n第三者があなたのアカウントにアクセスできるようになってしまいます。 \n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-01 10:19:49','2022-03-01 01:19:48',NULL,14,NULL,NULL,NULL,'350028a72fcdf8d8c9d269d5aab6d03d',NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,'nghuuquyen+3@gmail.com','nghuuquyen+3@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen+3@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=4e9dc1ca4fd6922e29f35ae7f9a7ca16\">http://localhost:3000/form/rg20?invitation_token=4e9dc1ca4fd6922e29f35ae7f9a7ca16</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen+3@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=4e9dc1ca4fd6922e29f35ae7f9a7ca16\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-01 13:03:41','2022-03-01 04:03:38',NULL,12,'4e9dc1ca4fd6922e29f35ae7f9a7ca16',NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,'nghuuquyen+5@gmail.com','nghuuquyen+5@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen+5@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=9ceb4eb58f678fd4534ca44dfa15dedf\">http://localhost:3000/form/rg20?invitation_token=9ceb4eb58f678fd4534ca44dfa15dedf</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen+5@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=9ceb4eb58f678fd4534ca44dfa15dedf\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-02 19:17:32','2022-03-02 10:17:29',NULL,12,'9ceb4eb58f678fd4534ca44dfa15dedf',NULL,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL,'quyen+8@nowtas.com','quyen+8@nowtas.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nquyen+8@nowtas.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=b451c5cf6f63fade63bbd266b5c7617f\">http://localhost:3000/form/rg20?invitation_token=b451c5cf6f63fade63bbd266b5c7617f</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nquyen+8@nowtas.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=b451c5cf6f63fade63bbd266b5c7617f\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-03 17:35:03','2022-03-03 08:35:01',NULL,12,'b451c5cf6f63fade63bbd266b5c7617f',NULL,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL,'nghuuquyen+7@gmail.com','nghuuquyen+7@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen+7@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=cd6dc0036e50246feddc91f4e98b3803\">http://localhost:3000/form/rg20?invitation_token=cd6dc0036e50246feddc91f4e98b3803</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen+7@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=cd6dc0036e50246feddc91f4e98b3803\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-03 20:53:53','2022-03-03 11:53:50',NULL,12,'cd6dc0036e50246feddc91f4e98b3803',NULL,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL,'nghuuquyen+11@gmail.com','nghuuquyen+11@gmail.com','【彩-SAI-】会員登録のお知らせ','―――――――――――――――――――――――――――――――――――<br />\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。<br />\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。<br />\n―――――――――――――――――――――――――――――――――――<br />\n<br />\nnghuuquyen+11@gmail.com様<br />\n<br />\n彩-SAI- 運営事務局です。<br />\n<br />\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。<br />\n<br />\n下記のリンクより本登録のご登録をお願いいたします。<br />\n※リンクは24時間で無効になります<br />\n<br />\n<br />\n▼会員登録はこちら<br />\n<a href=\"http://localhost:3000/form/rg20?invitation_token=2510c80e2607f0eef41679b381d341bd\">http://localhost:3000/form/rg20?invitation_token=2510c80e2607f0eef41679b381d341bd</a><br />\n<br />\n<br />\n今後ともよろしくお願いいたします。<br />\n<br />\n<br />\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。<br />\n※掲載された内容を許可なく転載することを禁じます。<br />\n<br />\n<br />\n        ---------------------------------------------<br />\n        彩-SAI- 運営事務局<br />\n<br />\n        運営会社<br />\n        株式会社フジハウジング<br />\n        〒346-0016<br />\n        埼玉県久喜市久喜東 2丁目 4-1<br />\n        TEL：0480-26-4568<br />\n        お問い合わせはこちら<br />\n        ---------------------------------------------<br />\n        ','―――――――――――――――――――――――――――――――――――\nこのメッセージは彩-SAI- 運営事務局より自動送信されています。\nお心当たりのない場合は、誠にお手数ですが本メールへの返信にてご連絡ください。\n―――――――――――――――――――――――――――――――――――\n\nnghuuquyen+11@gmail.com様\n\n彩-SAI- 運営事務局です。\n\n彩-SAI- 不動産クラウドファンディングへ登録を申請していただき、誠にありがとう有り難うございます。\n\n下記のリンクより本登録のご登録をお願いいたします。\n※リンクは24時間で無効になります\n\n\n▼会員登録はこちら\nhttp://localhost:3000/form/rg20?invitation_token=2510c80e2607f0eef41679b381d341bd\n\n\n今後ともよろしくお願いいたします。\n\n\n※こちらの内容にお心当たりの無い場合やご不明な点がありましたら、お手数ですが 本メールの返信にてご連絡いただけます様お願いいたします。\n※掲載された内容を許可なく転載することを禁じます。\n\n\n        ---------------------------------------------\n        彩-SAI- 運営事務局\n\n        運営会社\n        株式会社フジハウジング\n        〒346-0016\n        埼玉県久喜市久喜東 2丁目 4-1\n        TEL：0480-26-4568\n        お問い合わせはこちら\n        ---------------------------------------------\n        ','2022-03-04 02:38:41','2022-03-03 17:38:39',NULL,12,'2510c80e2607f0eef41679b381d341bd',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `trigger_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `個人・法人` text,
  `メールアドレス` text,
  `マイナンバー` text,
  `お名前1` text,
  `お名前2` text,
  `フリガナ1` text,
  `フリガナ2` text,
  `生年月日_year` text,
  `生年月日_month` text,
  `生年月日_day` text,
  `郵便番号` int(11) DEFAULT NULL,
  `都道府県` text,
  `住所` text,
  `建物名` text,
  `固定電話` text,
  `携帯電話` text,
  `金融資産` text,
  `投資目的` text,
  `取引開始のきっかけ` text,
  `職業` text,
  `勤務先` text,
  `年収（年金所得も含む）` text,
  `余剰資金の運用である` text,
  `元本が毀損した場合、生活に支障が出るかどうか` text,
  `金融に係る業務の経験` text,
  `投資方針` text,
  `投資経験（年数）` text,
  `金融機関名` text,
  `支店名` text,
  `口座種別` text,
  `口座番号` int(11) DEFAULT NULL,
  `口座名義人` text,
  `本人確認方法` text,
  `メモ` text,
  `本人確認日` text,
  `本人確認コード入力日` datetime DEFAULT NULL,
  `メールアドレス（確認用）` text,
  `password` text,
  `秘密の質問` text,
  `秘密の質問（答え）` text,
  `last_login_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(100) DEFAULT NULL,
  `reset_password_token_expired_at` datetime DEFAULT NULL,
  `reset_password_at` datetime DEFAULT NULL,
  `identity_verification_flag` tinyint(4) DEFAULT '0',
  `allow_investment_flag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2022-02-04 18:04:55','2022-03-03 16:12:17',NULL,'個人','quyen@nowtas.com','90999222','Quyen','Nguyen','フリガナQuyen','フリガナ','1996','11','5',100,'東京都','千代田区千代田','１０００００００５２','abcfghssdd','09000202222','500万円未満','将来のための資産形成','インターネット','会社員（未上場）','Nowtas Viet Nam','800万円未満','はい','いいえ','はい','長期安定保有','10年未満','金融機関名','支店名','普通預金口座',1234567,'404040404','面談（場所：弊社）','1111111',NULL,NULL,NULL,'$2y$10$WUhd2tj08Qu6pNx7fcPjA.mtylyHu7Z4aRChMCUS/zzsWpQ2B3NsK',NULL,NULL,'2022-03-03 16:12:17',NULL,NULL,NULL,0,0),(2,'2022-02-04 18:04:55','2022-02-04 18:04:55',NULL,NULL,NULL,NULL,'Phong','Tran','Phong','Tran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$WUhd2tj08Qu6pNx7fcPjA.mtylyHu7Z4aRChMCUS/zzsWpQ2B3NsK',NULL,NULL,NULL,NULL,NULL,NULL,0,0),(13,'2022-02-28 17:10:55','2022-03-01 12:18:17',NULL,'法人','nghuuquyen@gmail.com',NULL,'Quyen','Nguyen','フリガナ1','フリガナ2','1984','7','11',100,'東京都','千代田区大手町','建物名','090-444-222','090-2222-3333','1,000万円未満','ポートフォリオの分散','セミナー','公務員','勤務先（法人の方は会社名）','3000万円未満','いいえ','はい','いいえ','長期安定保有','10年以上',NULL,NULL,NULL,NULL,NULL,'本人限定受取郵便',NULL,NULL,NULL,NULL,'$2y$10$T0NJEIqPVaFtRhPXeMdT2etbRxiFpOgZMbGmHtqodZW4fw6vKFvni','出身中学校の名前は？','1111','2022-03-01 12:18:17',NULL,NULL,'2022-03-01 10:34:02',0,0),(14,'2022-03-01 04:03:38','2022-03-03 21:41:34',NULL,'法人','nghuuquyen+3@gmail.com','123412341234','Quyen 3','Nguyen','フリガナ1','フリガナ2','1996','11','5',100,'東京都','千代田区丸の内','建物名',NULL,'090-1234-1234','500万円未満','将来のための資産形成','インターネット','会社員（未上場）','勤務先（法人の方は会社名）','1000万円未満','いいえ','はい','いいえ','長期安定保有','10年未満','金融機関名','xxxxxxx','普通預金口座',2147483647,'Quye.Nguyen','本人限定受取郵便','xxxx',NULL,'2022-03-03 21:41:13',NULL,'$2y$10$G12hDoIPugDVK50/d32sxuf6b/4ZrP2y9XAdnsGrt1gPhi41iXmEm','出身中学校の名前は？','1111','2022-03-03 19:30:11',NULL,NULL,NULL,1,1),(15,'2022-03-02 10:17:29','2022-03-04 02:18:34',NULL,'法人','nghuuquyen+5@gmail.com','2147483647','Quyen 5','Nguyen','フリガナ1','フリガナ2','1996','10','17',100,'東京都','千代田区丸の内','建物名','090-222-333','090-1111-2222','5,000万円未満','将来のための資産形成','セミナー','会社員（上場）','勤務先（法人の方は会社名）','1000万円未満','いいえ','はい','いいえ','長期安定保有','10年以上','金融機関名','支店名','普通預金口座',2147483647,'Quyen Nguyen','本人限定受取郵便',NULL,NULL,'2022-03-02 19:27:47',NULL,'$2y$10$GvMp.f5bL0Svy/HHB.nTcu1a6ormDHfHJbgQFceBeR5MoTcZ60SK6','出身中学校の名前は？','1111','2022-03-04 02:18:34',NULL,NULL,NULL,1,1),(16,'2022-03-03 17:38:38','2022-03-04 02:41:22',NULL,'個人','nghuuquyen+11@gmail.com',NULL,'Quyen','Nguyen','タナン','タナンフ','1996','11','5',100,'東京都','千代田区大手町',NULL,'090-222-222',NULL,'1,000万円未満','ポートフォリオの分散','新聞・雑誌','官公庁職員',NULL,'1500万円未満','はい','いいえ','はい','長期安定保有','5年未満',NULL,NULL,NULL,NULL,NULL,'本人限定受取郵便',NULL,NULL,NULL,NULL,'$2y$10$wpoAJ6KfC4pFjINre1GmbuaOV4VYidU7vy0jMGXxUm00S7blWmD/O','選択してください','ちすにきち','2022-03-04 02:41:22',NULL,NULL,NULL,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contact`
--

DROP TABLE IF EXISTS `user_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `お名前1` text,
  `お名前2` text,
  `フリガナ1` text,
  `フリガナ2` text,
  `メールアドレス` text,
  `お問い合わせカテゴリ` text,
  `お問い合わせ内容` text,
  `agree` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contact`
--

LOCK TABLES `user_contact` WRITE;
/*!40000 ALTER TABLE `user_contact` DISABLE KEYS */;
INSERT INTO `user_contact` VALUES (1,'2022-03-03 12:54:45','2022-03-03 12:54:45',NULL,'Quyen','Nguyen','フリガナ1','フリガナ2','nghuuquyen@gmail.com','会員情報／出金先口座の変更に関するお問い合わせ','xxx','on'),(2,'2022-03-03 12:56:26','2022-03-03 12:56:26',NULL,'Quyen 2','Nguyen','フリガナ22','フリガナ33','nghuuquyen@gmail.com','ファンドに関するお問い合わせ','wwww','on');
/*!40000 ALTER TABLE `user_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_message`
--

DROP TABLE IF EXISTS `user_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `タイトル` text,
  `本文` text,
  `メールでの通知` text,
  `添付ファイル` text,
  `送信日時` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_message_user1_idx` (`user_id`),
  KEY `fk_user_message_admin1_idx` (`admin_id`),
  CONSTRAINT `fk_user_message_admin1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_message_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_message`
--

LOCK TABLES `user_message` WRITE;
/*!40000 ALTER TABLE `user_message` DISABLE KEYS */;
INSERT INTO `user_message` VALUES (1,1,1,'2022-02-12 12:00:00','2022-02-12 12:12:54','2022-02-12 12:12:54','User message titlexxxxx','x\nx\nx\nx\nx','会員マイページのみ','[{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/620723e21fdf5_fund_application_2022-02-04.csv\",\"name\":\"fund_application_2022-02-04.csv\"},{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/620723e229ba9_272080463_391528749397321_4670838395863420021_n.jpg\",\"name\":\"272080463_391528749397321_4670838395863420021_n.jpg\"}]',NULL),(3,1,1,'2022-02-12 12:15:32','2022-02-13 20:53:37',NULL,'new message','x\nx\nx\nx\nx','メールでも通知する','[{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/620726541e1ac_fund_application_2022-02-04.numbers\",\"name\":\"fund_application_2022-02-04.numbers\"},{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/6207265423110_\\u7533\\u8fbc\\u4e00\\u89a7__2022-02-10 (1).csv\",\"name\":\"\\u7533\\u8fbc\\u4e00\\u89a7__2022-02-10 (1).csv\"}]','2022-02-14 07:00:00'),(4,1,1,'2022-02-12 12:16:06','2022-02-12 12:16:14','2022-02-12 12:16:14','new message 2222','s\ns\ns\ns\ns\ns','会員マイページのみ','[{\"url\":\"http:\\/\\/localhost:3000\\/storage\\/file\\/620726764cdd6_fund_application_2022-02-04.numbers\",\"name\":\"fund_application_2022-02-04.numbers\"}]',NULL);
/*!40000 ALTER TABLE `user_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_verification_code`
--

DROP TABLE IF EXISTS `user_verification_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_verification_code` (
  `user_id` int(11) NOT NULL,
  `code` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`code`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_verification_code`
--

LOCK TABLES `user_verification_code` WRITE;
/*!40000 ALTER TABLE `user_verification_code` DISABLE KEYS */;
INSERT INTO `user_verification_code` VALUES (14,'Zz2AefMEbumx','2022-03-01 13:04:48','2022-03-01 13:04:48',NULL),(15,'fTD8OJKmLXc3','2022-03-02 19:18:42','2022-03-02 19:18:42',NULL),(16,'kmsnQjq0bErS','2022-03-04 02:40:57','2022-03-04 02:40:57',NULL);
/*!40000 ALTER TABLE `user_verification_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_admin_list`
--

