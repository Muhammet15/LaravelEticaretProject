-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Ağu 2022, 15:06:40
-- Sunucu sürümü: 10.4.21-MariaDB-log
-- PHP Sürümü: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `laraveleticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `addresses`
--

CREATE TABLE `addresses` (
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `addresses`
--

INSERT INTO `addresses` (`address_id`, `user_id`, `city`, `district`, `zipcode`, `address`, `is_default`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Turkey', 'Istanbul', '3400', 'Turkey lorem ipsum lorem ipsum avcılar', 0, 'brxsCwV5bx', NULL, NULL),
(2, 4, 'McClureview', 'South Kaela', '9', '3363 August Port\nVanessafort, DE 00208', 1, 'ziwbdptubr', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(3, 4, 'Port Elmer', 'Toybury', '5', '721 Nolan Lodge\nBorerland, CA 68514-4295', 1, 'DgBAGXBnji', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(4, 6, 'North Scarlett', 'Tessieburgh', '7', '48680 Cole Locks Suite 246\nNorth Cortezmouth, GA 91844', 1, 'X5FrOXCBYM', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(5, 2, 'Lake Damonview', 'Francismouth', '1', '283 Murazik Via\nProhaskafort, WA 32119-4557', 1, 'NJEOxXh5c2', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(6, 7, 'North Marcel', 'Rodgerfort', '9', '54108 Sawayn Junction Apt. 178\nCheyannemouth, RI 23720-7547', 1, 't7qQHokO3g', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(7, 4, 'South Nelleview', 'Port Theomouth', '2', '6420 Turcotte Overpass Apt. 185\nCristtown, IL 71152-5448', 0, 'cerUQzIK8L', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(8, 1, 'Lake Antonio', 'Coryside', '4', '10433 Schinner Circles Suite 453\nWest Joshua, ME 72584-0066', 0, '5YRtwd2JZd', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(9, 5, 'West Benny', 'Eudoraville', '8', '606 Roxane Parkways\nDouglasbury, ND 72633', 0, 'Ht8uKrS74J', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(10, 6, 'Vidafurt', 'Port Austyn', '2', '213 Carmela Camp\nNorth Fredaville, LA 65443-7687', 1, 'xKDzxZLHig', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(11, 9, 'Gardnerstad', 'Jonatanbury', '3', '181 Hilma Glen Apt. 316\nBartolettichester, AR 51631', 0, 'FMnHLTCjXK', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(12, 8, 'Moenmouth', 'Port Toreymouth', '9', '5342 Twila Squares\nKiehnstad, TN 04593-7850', 0, 'llc2VCpriS', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(13, 10, 'West Orie', 'East Donavonshire', '4', '922 Breitenberg Harbor\nMcKenzieshire, MA 48108-0188', 0, 'J05wVIFUEZ', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(14, 9, 'New Zachariah', 'Glovertown', '4', '110 Wintheiser Parks\nGarryside, MS 27554-3464', 0, 'Ct6nl6yBje', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(15, 5, 'Okunevaburgh', 'Port Darryl', '5', '8703 Bogan Avenue\nMillstown, WV 67571', 1, 'gUrhoucDo1', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(16, 10, 'Gaylordton', 'Sallyberg', '9', '46610 Toby Hill\nNorth Ernesto, MS 07301', 1, 'RDixxxXLh5', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(17, 4, 'Kadeberg', 'New Alessandraport', '8', '24261 Zechariah Vista Suite 640\nO\'Keefestad, MD 43322', 1, 'ZGTnufDYW2', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(18, 6, 'Port Elbert', 'South Guido', '4', '1422 Runolfsdottir Springs\nRiceberg, ME 01975-8411', 0, 'cM4PGNMenD', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(19, 1, 'Kennaland', 'South Joanny', '8', '45159 Jacobs Squares\nSylviabury, UT 13048-3450', 1, '7fV2ZEIw5j', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(20, 2, 'East Henriberg', 'Wildermanside', '8', '684 Catherine Plains Suite 901\nWalterfort, WV 23353', 1, 'V8e5p5Gxhx', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(21, 8, 'Alyciaside', 'Boehmchester', '3', '824 Moore Port Apt. 877\nDesmondchester, MD 97857-2170', 1, 'g33r6BqBmf', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(22, 9, 'Lake Wilfred', 'Lake Isadore', '5', '638 Osinski Burg\nLake Loycechester, OK 30158-0367', 0, 'UPHAEPlSee', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(23, 10, 'Reillyview', 'South Philipmouth', '8', '42939 Waters Fall Suite 755\nMayerbury, AR 89247-0088', 0, '9dHY9C180Q', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(24, 2, 'Biankastad', 'Thorafort', '5', '618 Bobby Valley Suite 636\nSigmundborough, WI 36795-3651', 1, 'uYtleAom5n', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(25, 9, 'Gastonbury', 'North Kaseymouth', '5', '26815 Collins Run Suite 243\nFelicityfort, VT 42697-7840', 0, 'VLX3VNnM9C', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(26, 10, 'South Merleton', 'Leopoldmouth', '6', '740 Arjun Land\nLake Virginia, MS 72861-3373', 1, '22XOsPOGvM', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(27, 3, 'East Clint', 'East Haley', '4', '5088 Pollich Isle Suite 884\nFionastad, CA 45037', 1, 'NkrSVLNj2y', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(28, 2, 'New Alexiemouth', 'West Sandraport', '3', '22476 Vidal Stravenue\nWendyview, IA 76710', 1, 'lbd9PmZqp1', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(29, 3, 'West Jeremyburgh', 'Rolfsonhaven', '9', '9419 Lindsey Walks Suite 706\nNew Alainatown, UT 64722-7872', 1, 'gxzF9pC8Zs', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(30, 7, 'Adalinechester', 'Maritzashire', '7', '32343 Cassidy Gardens\nHerbertfort, ND 92959-0163', 0, 'raNnoRttIh', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(31, 5, 'Pfannerstillmouth', 'Ahmadbury', '6', '76158 Colt Hill Suite 680\nWest Vernbury, MS 00977-4346', 0, '37O85wLpz2', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(32, 10, 'Faheyburgh', 'South Deron', '3', '597 Larkin Rapid Apt. 157\nPort Antoniaton, SC 76471', 1, 'ajAHH30584', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(33, 6, 'East Damian', 'New Vedafort', '5', '20700 Ortiz Dam\nTyrellburgh, MA 67725-7170', 1, 'ZU7mCP3K5l', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(34, 1, 'New Citlalliborough', 'Waelchiside', '7', '242 Kuhic Path Suite 382\nCummerataville, GA 03283', 1, '7YjTNTPugh', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(35, 10, 'Albertahaven', 'Leschmouth', '7', '442 Dayne Knoll Apt. 045\nEast Westley, NM 47706-5423', 1, 'RmZUJa48v9', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(36, 9, 'Johnsshire', 'Jameyside', '3', '4414 Graham Lights Suite 430\nWalshfurt, TX 19929', 1, 'y9rlrfmmI8', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(37, 9, 'East Ilianatown', 'Purdymouth', '5', '3656 Abbott Estates Apt. 105\nWest Shanelstad, NY 63396-0091', 1, 'myQAzZZkg1', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(38, 9, 'East Beau', 'North Louveniamouth', '9', '84874 Jayme Circle\nSouth Sabrina, MT 48766', 1, 'kHp1JXYg00', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(39, 9, 'Aniyaview', 'Gaylordhaven', '1', '6829 Gerda Corner Apt. 350\nPort Dockchester, CO 19736-4854', 0, 'tXyth5CUXd', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(40, 3, 'New Medamouth', 'Bentonview', '8', '147 Judd Village Apt. 913\nPort Melvinville, MA 19571-8518', 1, '45MrzH3qZz', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(41, 1, 'New Brendonville', 'O\'Konbury', '1', '688 Vladimir Mews Apt. 382\nNorth Vilma, NM 33616', 1, 'bZwYM5RJgs', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(42, 1, 'New Samport', 'Osborneburgh', '7', '25414 Rowena Motorway\nPort Daphne, CO 05476-2784', 1, 'WHVLXX8KxV', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(43, 2, 'Burdettemouth', 'North Jessie', '5', '6233 Volkman Bypass Suite 451\nAltenwerthshire, IN 72325', 0, 'q9jAHIX8Fp', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(44, 9, 'Port Maymieberg', 'Port Kraigfurt', '7', '90051 Laurine Rue\nWest Shermanburgh, LA 93857', 0, 'g7eh7xIIvP', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(45, 1, 'East Scotty', 'Maggiostad', '1', '170 Orn Bridge Apt. 362\nMaxwelltown, IL 21442', 0, 'lwdgOXhcCL', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(46, 7, 'Daxbury', 'East Natalie', '4', '1567 Kozey Port\nNew Cleoshire, RI 77435', 0, 'nQUOsJ4akS', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(47, 9, 'Ryanport', 'Funkburgh', '7', '4603 Windler Junction\nNorth Dulce, NH 34966', 0, 'ENcGh2XGPS', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(48, 5, 'Port Donatohaven', 'New Ora', '6', '19267 Laverna Centers\nFredymouth, LA 36159-2252', 0, 'i8ERMHIviw', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(49, 9, 'Turnermouth', 'East Jaylen', '8', '5544 Cecil Prairie\nFrancesville, VT 81485-8479', 0, 'N7d3TZAeIO', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(50, 8, 'New Dollyton', 'Daltonbury', '9', '75322 Oberbrunner Lakes Apt. 206\nAliyahville, KY 03186', 1, '3JNcVgUG7A', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(51, 2, 'Blandaburgh', 'New Kylee', '6', '381 Morissette Station Suite 243\nEdythtown, MI 84326', 0, 'HJizjEDjLs', '2022-08-24 10:02:47', '2022-08-24 10:02:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `carts`
--

CREATE TABLE `carts` (
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_detail_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `slug`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Giyim', 'giyim', 1, NULL, NULL, NULL),
(2, 'Teknoloji', 'teknoloji', 1, NULL, NULL, NULL),
(3, 'Okul', 'okul', 1, NULL, NULL, NULL),
(4, 'Rerum consequatur amet dolor rerum quia.', 'rerum-consequatur-amet-dolor-rerum-quia', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(5, 'Fugiat eos adipisci ut eos.', 'fugiat-eos-adipisci-ut-eos', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(6, 'Fugit quaerat quo.', 'fugit-quaerat-quo', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(7, 'Repudiandae impedit facilis.', 'repudiandae-impedit-facilis', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(8, 'Voluptatibus aspernatur illum earum.', 'voluptatibus-aspernatur-illum-earum', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(9, 'Qui iure ipsum accusamus laudantium enim ut.', 'qui-iure-ipsum-accusamus-laudantium-enim-ut', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(10, 'Ut natus ab cum placeat iste.', 'ut-natus-ab-cum-placeat-iste', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `invoice_details`
--

CREATE TABLE `invoice_details` (
  `invoice_details_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_22_122158_create_addresses_table', 1),
(6, '2022_07_27_080216_create_categories_table', 1),
(7, '2022_07_27_111021_create_products_table', 1),
(8, '2022_07_28_121536_create_product_images', 1),
(9, '2022_08_01_131055_create_carts_table', 1),
(10, '2022_08_01_131519_create_cart_details_table', 1),
(11, '2022_08_01_131906_create_orders_table', 1),
(12, '2022_08_01_132123_create_order_details_table', 1),
(13, '2022_08_01_133349_create_invoices_table', 1),
(14, '2022_08_01_133749_create_invoice_details_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `expires_at`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'ecommerce', 'c3ecd0e7f229751067593a428068a673a16785b56253ea565643182fb4592777', '[\"*\"]', NULL, NULL, '2022-08-24 10:03:45', '2022-08-24 10:03:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `old_price` double(8,2) DEFAULT NULL,
  `lead` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`products_id`, `category_id`, `name`, `price`, `old_price`, `lead`, `description`, `slug`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'bluz', 55.00, 62.00, 'sss lorem ipsum lorem ipsum ss', 'sss lorem ipsum lorem ipsum ss', 'giyim-bluz', 1, NULL, NULL, NULL),
(2, 2, 'Mollitia et.', 987.00, 476.00, 'Culpa atque laudantium consectetur ut quae amet provident numquam. Cupiditate sit porro repellendus eos labore nulla rem labore. Praesentium quas quisquam quasi molestiae officia corporis.', 'Quo consequatur sit pariatur facere porro. Ut ipsam fugit assumenda culpa qui a alias eos.', 'mollitia-et', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(3, 6, 'Minus quas.', 986.00, 36.00, 'Dolor occaecati dolorem rem laborum molestiae. Dolorem in voluptates qui tenetur eaque et. Beatae quo neque temporibus repudiandae alias.', 'Sequi ratione minus ut quisquam voluptate aut repellat. Ipsa sunt nulla non eum. Laborum nemo occaecati voluptatem quis.', 'minus-quas', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(4, 8, 'Modi voluptatem deleniti.', 798.00, 334.00, 'Autem veritatis similique est commodi. Ratione aut enim minima voluptatem iste omnis. Nesciunt laudantium ut perspiciatis quidem. Omnis est neque voluptas nobis iste fuga.', 'Consequuntur facere omnis aut dolores perspiciatis illo libero non. Nam nihil beatae ducimus sequi. Dolor quaerat voluptatum veniam exercitationem est.', 'modi-voluptatem-deleniti', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(5, 2, 'Consequuntur molestias.', 819.00, 757.00, 'Deserunt rerum et eveniet facere dolore ut. Nulla consequuntur pariatur dolorem reprehenderit tempora illum. Sapiente esse et consequatur saepe facilis ullam quia. Blanditiis vel iusto nobis aut ut.', 'Quia incidunt natus voluptas. In omnis molestiae quaerat ea odio. Porro sapiente repellendus nihil sint quae magni eos quis.', 'consequuntur-molestias', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(6, 6, 'Quaerat fuga.', 826.00, 297.00, 'Deserunt quas aspernatur quia eos nisi iusto. Soluta dignissimos ab et rerum omnis voluptates.', 'Sit dignissimos placeat fuga architecto voluptatem et quia. Qui eius debitis nihil ad alias porro numquam alias. Perferendis rerum natus et aut ipsum itaque minus laboriosam.', 'quaerat-fuga', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(7, 4, 'Enim qui.', 15.00, 862.00, 'Esse voluptatem sed voluptas eum. Aut blanditiis maiores quaerat velit ut aut. Harum eligendi labore magnam earum nihil excepturi sed.', 'Id ex in quas. Ullam ut veniam neque doloremque laboriosam. Velit sunt officia saepe dolorem voluptatibus enim. Et doloremque quis ducimus. Ab ea ipsa quibusdam est rerum.', 'enim-qui', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(8, 5, 'Vel.', 405.00, 704.00, 'Recusandae dolor vel facilis autem nemo corporis. Et rerum provident commodi blanditiis qui eius. Error sapiente dolorem laborum non. Expedita voluptatum enim facilis consequatur nobis est.', 'Quia minus aliquid totam et vitae dolorum quidem laborum. Minima magnam explicabo tenetur explicabo perferendis est dolore. Velit et sed ut perferendis rem officia sit explicabo.', 'vel', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(9, 2, 'Enim aliquid consequuntur.', 523.00, 999.00, 'Rem praesentium doloremque eos qui eos sunt. Repellat beatae voluptatem dolor pariatur quam eum libero. Sunt ut iusto quidem natus asperiores fugiat voluptas.', 'Nobis et ut quo nostrum sit aut officia asperiores. Nostrum molestias repudiandae voluptatem ut. At sapiente qui quibusdam at aut labore perspiciatis. Repudiandae quo est id hic.', 'enim-aliquid-consequuntur', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(10, 5, 'Nihil ut.', 224.00, 66.00, 'Beatae inventore ullam autem iste. Architecto voluptatibus doloribus repellendus illum nemo qui in. Et consequatur laborum omnis enim sapiente maiores quis.', 'Et sed voluptas est ut autem. Velit quaerat et natus vel quaerat vitae. Rerum sunt corrupti quis omnis possimus. Aperiam enim dolorum provident perspiciatis.', 'nihil-ut', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(11, 2, 'Est.', 169.00, 527.00, 'Totam totam qui accusantium dolores tenetur. Sit soluta debitis omnis eligendi suscipit quod. Vitae totam quaerat ratione non vero omnis dicta.', 'Sint nisi repellat assumenda in aliquid assumenda aut. Cum autem et assumenda et.', 'est', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(12, 6, 'Ut consequatur est.', 386.00, 948.00, 'Inventore iusto iure quo. Laudantium quae veritatis sed expedita.', 'Ut suscipit voluptas sit soluta ratione omnis voluptas animi. Iste omnis amet eos rerum corrupti. Veniam vitae et dolores laudantium ea quas quo. Eos beatae atque sint sit officia sed.', 'ut-consequatur-est', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(13, 7, 'Blanditiis est omnis.', 98.00, 50.00, 'Ut blanditiis veritatis aut quibusdam nemo sed. Iusto accusamus et voluptas voluptatum dolores exercitationem. Reprehenderit veritatis ratione suscipit rerum a sed impedit.', 'Fuga voluptatibus voluptates aut itaque ea molestiae. Fugit qui aut tempora dicta nihil explicabo omnis. Earum esse eos laboriosam expedita animi.', 'blanditiis-est-omnis', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(14, 7, 'Et et.', 775.00, 868.00, 'Deserunt tempora magni illo aut iste. Eos fugit tenetur quas nostrum unde et. Recusandae veniam non sapiente. Fugit enim quisquam officiis error sint.', 'Aliquam cumque illum voluptatum a repellat debitis illum. Minus blanditiis rerum ex. Repellat reiciendis sed aspernatur vero quibusdam quo.', 'et-et', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(15, 10, 'Explicabo officia.', 985.00, 621.00, 'Temporibus ipsum odio rerum quas. Asperiores vel tempora consequuntur sequi deleniti error cumque. Et reprehenderit laboriosam voluptatem excepturi.', 'Illum recusandae vero ab explicabo. Molestiae omnis alias expedita beatae recusandae cum. Sequi iusto eius adipisci voluptates quidem minima dolor. Et itaque aut distinctio natus.', 'explicabo-officia', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(16, 6, 'Tempora totam.', 800.00, 223.00, 'Occaecati excepturi et veniam molestias dolor quia. Est et soluta vel molestias error iusto ipsum sed. Fugit et aut autem ut enim tempore aut. Sed delectus soluta qui sit.', 'Et voluptatem minima sunt nihil. Nobis sunt omnis in. Expedita voluptatem fugiat ducimus ea ducimus officiis.', 'tempora-totam', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(17, 4, 'Nesciunt.', 823.00, 957.00, 'Quod cumque excepturi harum rerum commodi nesciunt vel. Sapiente magnam est fugit eos ab suscipit earum. Deleniti ut dicta id.', 'Quam distinctio et mollitia cumque commodi sed. Dolores temporibus cupiditate reiciendis totam. Rerum sed quia et eos. Corporis sed et dolorem.', 'nesciunt', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(18, 8, 'Similique dicta.', 173.00, 501.00, 'Velit voluptatem illo sed cum voluptatibus labore. Animi perspiciatis omnis nulla amet.', 'In vero rerum tempore. Ea quod eius aspernatur labore quo labore facilis iure. Dolores temporibus velit facere maiores inventore.', 'similique-dicta', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(19, 7, 'Enim ut.', 986.00, 194.00, 'Non possimus earum amet voluptate rem. Voluptatum natus aspernatur velit distinctio fugit autem nostrum. Ratione dicta vero dolorum eos quam.', 'In eligendi ea quasi. Natus qui quia et laborum consequuntur officiis. Vel dignissimos vero possimus aliquam. Velit harum sit voluptatem beatae fugiat ea ut.', 'enim-ut', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(20, 6, 'Autem sed.', 232.00, 93.00, 'Praesentium rem fugit recusandae illum ipsum aut rerum. A aut illo sequi animi rerum totam. Ipsum voluptatem provident laudantium ullam. Autem deleniti iure magnam repellendus.', 'Tempore modi a dignissimos repellendus facilis. Cupiditate iste omnis ea et dolorem. Voluptas id facere recusandae adipisci dolorum omnis dignissimos aspernatur. Non dolor et omnis cumque qui.', 'autem-sed', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(21, 3, 'Vel sed.', 414.00, 725.00, 'Non facilis aut ratione facere cupiditate velit. Aliquid eos necessitatibus vitae rerum. Sit nam dolorum consequatur excepturi dolorum. Sed dolor nihil sit fugit. Omnis laudantium autem ut.', 'Vel placeat fuga unde dolor expedita ad. Veritatis et dolorem aut. Explicabo omnis ut iusto quia voluptatibus id aut.', 'vel-sed', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(22, 5, 'Et sit doloribus.', 583.00, 759.00, 'Eveniet perferendis deserunt reiciendis nesciunt aut. Illum facilis totam ut et nihil non deserunt. Nemo perferendis porro autem accusamus nostrum ut.', 'Velit blanditiis qui fugiat molestias eos. Voluptatibus voluptatum esse voluptatibus ea. Reiciendis reiciendis vel omnis. Enim qui tempora est labore.', 'et-sit-doloribus', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(23, 1, 'Et sunt provident.', 866.00, 164.00, 'Quia nesciunt sed non tenetur commodi. Error doloribus ut quia aut asperiores. Labore itaque maiores non atque facere. Sed error facere fugiat quis ratione labore ducimus deleniti.', 'Dolor ad consequatur ut sunt aperiam fugiat doloremque. Iure illo in quia non. Nam architecto cumque aut.', 'et-sunt-provident', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(24, 1, 'Et et neque.', 490.00, 417.00, 'Aut deleniti officia nisi est itaque. Tempora similique at veritatis necessitatibus.', 'Nihil reiciendis quas ducimus. Necessitatibus iusto et nulla molestias quia est sit. Et quidem in est earum beatae praesentium dolor.', 'et-et-neque', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(25, 2, 'Non.', 400.00, 708.00, 'Et fuga dolore tempora ab qui in nemo. Sequi facere tempore mollitia saepe excepturi consectetur aliquam. Aliquid corrupti et quo dolorem amet qui quam ea.', 'Sit sed repellat atque harum est aliquid cupiditate. Ut qui est tenetur aut. Molestiae autem libero voluptas necessitatibus. Quibusdam hic et sed.', 'non', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(26, 2, 'Possimus pariatur.', 307.00, 725.00, 'Reprehenderit quis consequatur quis numquam magni est asperiores. Suscipit facilis pariatur pariatur.', 'Amet omnis itaque et laboriosam ducimus tenetur necessitatibus itaque. Expedita ex animi qui sed nobis voluptatibus.', 'possimus-pariatur', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(27, 7, 'Nihil.', 191.00, 394.00, 'Consequatur dignissimos dolorem ducimus aut quia. Sapiente dolor possimus fuga ad nisi voluptas. Optio ex omnis iure odit odit est. Ex itaque aliquid iste velit facilis doloremque quo.', 'Odit ut a ducimus quibusdam. Molestiae ex recusandae sint minus eligendi mollitia fugit necessitatibus. Pariatur est eveniet et.', 'nihil', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(28, 7, 'Sit enim.', 997.00, 756.00, 'Ex aut blanditiis fugit facilis aliquid ipsam rerum. Unde dolore qui dignissimos dolores eligendi dolorum. Voluptate ea sunt sit deleniti suscipit est illo.', 'Aspernatur consequatur illum perferendis saepe. Consequatur nostrum fuga soluta non est. Itaque cumque repellendus aut voluptatum aspernatur numquam. Est veniam facilis porro sed rerum.', 'sit-enim', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(29, 2, 'Qui saepe pariatur.', 620.00, 294.00, 'Mollitia est in natus et. Rem accusamus rerum est soluta. Sed hic dolores dicta. Enim dolores aut laborum quo corrupti.', 'Quisquam dolore qui voluptas odio dolorum. Assumenda aut dolorum repellat natus. Asperiores quis labore sint aperiam.', 'qui-saepe-pariatur', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(30, 8, 'Ducimus eum.', 176.00, 539.00, 'Ipsa sed adipisci nisi sit sint nihil cumque. Sit magnam eum rerum quo quia rerum repellat ratione. Quos omnis ut delectus quia laudantium repellendus est ducimus.', 'Et et quo asperiores atque maiores. Sit qui in totam culpa quasi impedit praesentium. Ut est minus et dolor. Aut odit nobis quo error necessitatibus.', 'ducimus-eum', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(31, 10, 'Ab sit magni.', 897.00, 270.00, 'Rerum et perspiciatis est laborum ipsam enim. Voluptates vitae et doloribus nobis quia animi quaerat et. Et quam quos perspiciatis temporibus. Sed facere cum enim et.', 'Aperiam culpa distinctio modi iure. Quaerat vitae assumenda minima similique doloremque. Vel et cumque nostrum et numquam qui neque.', 'ab-sit-magni', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(32, 5, 'Et voluptatibus.', 286.00, 576.00, 'Quaerat placeat sint eos sequi voluptate est aut. In omnis doloremque sint vitae officia magni nesciunt fugiat. Nostrum aut qui consequatur deleniti. Harum praesentium natus nobis molestias.', 'Labore recusandae minus laudantium at quas mollitia voluptates. Id quasi vitae occaecati sint et in. Dolores est cupiditate omnis id eius esse consequatur sed.', 'et-voluptatibus', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(33, 1, 'Vel voluptatum.', 174.00, 693.00, 'Voluptatibus quisquam quos sed deleniti. Voluptates autem quisquam temporibus illum consequatur. Voluptates est placeat sed ut ducimus.', 'Esse vitae magnam et nam ipsa. Reiciendis quia dolor deserunt soluta quo laudantium. Aut dolor tempore ut est. Nesciunt quos consectetur provident esse excepturi velit qui autem.', 'vel-voluptatum', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(34, 4, 'Provident.', 125.00, 374.00, 'Et sed in porro neque optio illo cupiditate consequatur. Dolores est aut laudantium laboriosam vero consequatur sit. Omnis et et eligendi rerum aut ullam. Aperiam voluptas nam et.', 'Animi eos accusantium similique repellendus accusantium et officia et. Nobis eligendi saepe voluptas nostrum ut. Voluptatibus error minima occaecati sint hic at.', 'provident', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(35, 5, 'Consequatur dolores.', 618.00, 649.00, 'Quia dolores placeat est vitae atque id ducimus dolor. Debitis dolor et quaerat quia vitae. Distinctio tenetur officiis nam tempora nihil et eos.', 'Iure non non reprehenderit quia rerum est deleniti. Nesciunt dignissimos et eos sint maxime. Assumenda ullam cum ratione expedita eaque tenetur. Porro assumenda et rerum quae aut.', 'consequatur-dolores', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(36, 8, 'Eos omnis.', 294.00, 888.00, 'Aut iusto eum culpa incidunt. Debitis natus in unde ea nemo neque eveniet quia. Porro molestiae praesentium facere et.', 'Eligendi et esse possimus necessitatibus delectus rerum. Saepe voluptas voluptatem dolore corporis et. Sapiente quia vel dolor aspernatur.', 'eos-omnis', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(37, 4, 'Omnis adipisci.', 183.00, 323.00, 'Iusto voluptatem quia accusamus voluptate. Consequuntur commodi enim possimus eligendi eaque et in. Quod saepe omnis ipsam doloribus. Porro repellat consequatur iusto similique ea et placeat.', 'Aspernatur repudiandae ut et quaerat voluptas est non nobis. Vel optio aliquam sint et autem.', 'omnis-adipisci', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(38, 7, 'Voluptatum aut.', 740.00, 161.00, 'Ipsa hic non dolore rerum doloribus. Voluptate assumenda accusantium quo cumque quo.', 'Dolore commodi adipisci facilis voluptatem ipsam. Illum similique aliquam ipsum non repudiandae sint.', 'voluptatum-aut', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(39, 4, 'Eos labore quisquam.', 542.00, 570.00, 'Autem quis quia sequi ut. Magnam est nemo in. Facilis aut vel molestias sunt quia omnis earum. Voluptas dolor asperiores minima nesciunt sed voluptas dolor.', 'Quasi eos sed minus consequatur. Atque ipsum sit magni a aut. Sed autem ut sapiente cupiditate hic voluptatum ut id. Ad deleniti voluptas harum.', 'eos-labore-quisquam', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(40, 2, 'Illum dolore delectus.', 799.00, 58.00, 'Est similique cumque assumenda nemo. Ut dolorem nihil fugiat. Amet voluptas quo nemo iure atque blanditiis non temporibus.', 'Qui repudiandae facilis voluptatibus quibusdam. Non incidunt numquam qui nisi. Consequuntur eaque aut ut laboriosam aliquid iure et.', 'illum-dolore-delectus', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(41, 9, 'Sed aut.', 802.00, 7.00, 'Sapiente nostrum velit et aut a. Exercitationem enim ea ducimus aut. Amet qui sit quo porro.', 'Provident aliquam quia quis laborum aut. Consequatur cum explicabo ea fuga aut aliquam debitis. Dicta dolores consectetur corrupti molestiae facere deleniti qui.', 'sed-aut', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(42, 7, 'Culpa aliquam voluptatum.', 551.00, 774.00, 'Quia cum impedit quis ducimus ut commodi. Tempora porro ducimus eveniet itaque autem ipsum culpa.', 'Voluptas cumque aut sed facilis. Vel optio eos sunt omnis optio earum. Et dolor et error odio.', 'culpa-aliquam-voluptatum', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(43, 9, 'Adipisci facilis.', 426.00, 344.00, 'Nam quisquam ut temporibus temporibus et voluptate. Quod at nam delectus necessitatibus et minima. Eligendi quo neque asperiores sit voluptatem.', 'Distinctio temporibus sapiente neque itaque cum eum et. Magnam iure reprehenderit dolores. Officia tenetur veniam et et error. Sed qui laboriosam omnis ipsum voluptatum ut officia inventore.', 'adipisci-facilis', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(44, 9, 'Non.', 624.00, 239.00, 'Quos quia rerum asperiores totam mollitia et. Soluta nemo voluptatem sapiente et. Alias quas unde sed qui perferendis sint aliquam est. Quisquam optio aspernatur eos sint dolorem quas.', 'Voluptatem quia atque quasi qui numquam porro et dolorem. Ut eum ab earum saepe. Ipsum iure est animi veritatis. Rerum quis reiciendis voluptatem quis deserunt.', 'non', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(45, 1, 'Placeat.', 182.00, 782.00, 'Minus enim nostrum dicta distinctio est porro ab. Nam non sint laboriosam et nostrum praesentium. Provident ratione sint mollitia praesentium. Excepturi nulla eius fugit dolores excepturi.', 'Quaerat assumenda tempore harum rerum totam omnis. Voluptatem laboriosam maiores explicabo et quos dignissimos. Sunt et corporis ea atque et itaque. A nostrum voluptatem est et.', 'placeat', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(46, 2, 'Fuga rerum.', 298.00, 477.00, 'Doloribus in perferendis commodi quam. At reprehenderit nulla nihil. Adipisci quo ut fugiat consequatur blanditiis id.', 'Unde qui ut corrupti qui. Molestias quas quas est qui. Voluptates iste at non velit asperiores repellat cumque. Aut eveniet nostrum doloribus eligendi ea voluptatem. Beatae est nulla doloribus.', 'fuga-rerum', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(47, 6, 'Sapiente aperiam fugit.', 995.00, 845.00, 'Odio ex et commodi inventore magni. Qui iste nihil laborum quas. Commodi neque quas nihil temporibus unde et. Enim illo excepturi voluptatum quia.', 'Inventore sit magni dolores sit similique. Voluptate blanditiis dicta cumque vel cum. Est sunt ut in minus consectetur.', 'sapiente-aperiam-fugit', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(48, 7, 'Voluptatibus molestias.', 643.00, 388.00, 'Ipsam dignissimos voluptas facere et debitis. Praesentium qui sint odio maxime saepe minima. Consequatur laboriosam libero aut iste odit asperiores suscipit.', 'Nulla magni qui porro nihil quia veniam tempore totam. Voluptatem est deserunt provident tempore. Alias pariatur qui pariatur quaerat.', 'voluptatibus-molestias', 0, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(49, 3, 'Ipsum amet eos.', 402.00, 209.00, 'Eaque ipsum earum dolor et rerum. Optio dolor aperiam dolorem pariatur eveniet commodi. Laudantium eos id perferendis. Pariatur eum recusandae molestiae. Amet quos libero et aut rerum qui itaque.', 'Molestiae eius porro itaque iusto deserunt possimus. Et non tempore voluptatibus repellat rerum adipisci aut. Similique quam et fugit quasi sunt. Commodi neque fuga qui quasi totam qui.', 'ipsum-amet-eos', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(50, 10, 'Repudiandae.', 529.00, 742.00, 'Porro praesentium sed explicabo vel. Minus molestias quaerat qui ea accusantium aperiam tempora. Ab dolorem exercitationem ad recusandae recusandae neque distinctio. Unde debitis rem molestiae.', 'Non occaecati eos rem harum consequatur et harum. Labore ut qui mollitia consectetur quisquam enim. Id quia aut voluptate aspernatur necessitatibus.', 'repudiandae', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(51, 3, 'Ad magnam.', 75.00, 359.00, 'Delectus autem at voluptate expedita possimus nisi veritatis adipisci. Maiores delectus aut impedit ut. Quo accusantium vel quia dolorum qui voluptas ea.', 'Molestias impedit qui voluptatem possimus. Officiis quis et consequuntur et molestiae. Eos et vel quisquam excepturi deserunt. Aspernatur labore at libero optio deserunt vitae.', 'ad-magnam', 1, NULL, '2022-08-24 10:02:47', '2022-08-24 10:02:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_images`
--

CREATE TABLE `product_images` (
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seq` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_images`
--

INSERT INTO `product_images` (`image_id`, `products_id`, `image_url`, `alt`, `seq`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://via.placeholder.com/800x600.png/0044ff?text=et', 'First foto for giyim', '1', 1, NULL, NULL),
(2, 25, 'https://via.placeholder.com/800x600.png/0088dd?text=aut', 'Carlee Grady', '4', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(3, 38, 'https://via.placeholder.com/800x600.png/0011bb?text=commodi', 'Emmanuelle Kuvalis', '3', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(4, 11, 'https://via.placeholder.com/800x600.png/0099ee?text=enim', 'Natalie Heller', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(5, 37, 'https://via.placeholder.com/800x600.png/00ddee?text=molestiae', 'Miss Sophia Stokes', '3', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(6, 19, 'https://via.placeholder.com/800x600.png/0022aa?text=consequatur', 'Mr. Jimmy McDermott', '1', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(7, 22, 'https://via.placeholder.com/800x600.png/006644?text=eligendi', 'Dr. Arthur Miller', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(8, 3, 'https://via.placeholder.com/800x600.png/00dd44?text=voluptatem', 'Alexa Wiegand III', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(9, 8, 'https://via.placeholder.com/800x600.png/00eebb?text=architecto', 'Hailey O\'Conner', '4', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(10, 20, 'https://via.placeholder.com/800x600.png/00ddbb?text=culpa', 'Luis Lindgren', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(11, 10, 'https://via.placeholder.com/800x600.png/007766?text=itaque', 'Sabrina Prohaska', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(12, 12, 'https://via.placeholder.com/800x600.png/004477?text=ullam', 'Prof. Dorcas Cole I', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(13, 33, 'https://via.placeholder.com/800x600.png/0033cc?text=natus', 'Dr. Grayce Aufderhar', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(14, 41, 'https://via.placeholder.com/800x600.png/008800?text=enim', 'Nick Bechtelar', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(15, 21, 'https://via.placeholder.com/800x600.png/0033dd?text=autem', 'Bridie Brakus', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(16, 17, 'https://via.placeholder.com/800x600.png/00ddaa?text=tempore', 'Domenica Emard', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(17, 6, 'https://via.placeholder.com/800x600.png/0044aa?text=quia', 'Prof. Isabelle Swaniawski DDS', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(18, 46, 'https://via.placeholder.com/800x600.png/0000ee?text=quod', 'Hudson Mueller', '1', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(19, 8, 'https://via.placeholder.com/800x600.png/000011?text=aliquid', 'Antwan Barton', '3', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(20, 9, 'https://via.placeholder.com/800x600.png/008888?text=alias', 'Kacey Homenick DDS', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(21, 39, 'https://via.placeholder.com/800x600.png/0033ee?text=amet', 'Mr. Thurman Dach II', '1', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(22, 2, 'https://via.placeholder.com/800x600.png/005522?text=necessitatibus', 'Darby VonRueden', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(23, 47, 'https://via.placeholder.com/800x600.png/00aabb?text=voluptas', 'Emerald Waelchi', '3', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(24, 19, 'https://via.placeholder.com/800x600.png/004499?text=delectus', 'Lilly Haley', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(25, 45, 'https://via.placeholder.com/800x600.png/001199?text=animi', 'Nelson Smith', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(26, 37, 'https://via.placeholder.com/800x600.png/0066cc?text=qui', 'Miss Velma Konopelski', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(27, 14, 'https://via.placeholder.com/800x600.png/00bbff?text=eos', 'Mac Cartwright', '1', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(28, 13, 'https://via.placeholder.com/800x600.png/003344?text=voluptas', 'Julio Crooks Jr.', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(29, 3, 'https://via.placeholder.com/800x600.png/00dd55?text=eos', 'Liana Rutherford', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(30, 26, 'https://via.placeholder.com/800x600.png/0022cc?text=quisquam', 'Hilton Macejkovic', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(31, 7, 'https://via.placeholder.com/800x600.png/007722?text=nemo', 'Selena Wunsch', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(32, 34, 'https://via.placeholder.com/800x600.png/00cc99?text=delectus', 'Daron Medhurst', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(33, 44, 'https://via.placeholder.com/800x600.png/00aaee?text=perspiciatis', 'Mr. Martin Reichert', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(34, 47, 'https://via.placeholder.com/800x600.png/007777?text=ducimus', 'Rachelle Kozey', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(35, 45, 'https://via.placeholder.com/800x600.png/00ccff?text=fuga', 'Oren Crona', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(36, 30, 'https://via.placeholder.com/800x600.png/0066ff?text=qui', 'Stephania Dach', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(37, 38, 'https://via.placeholder.com/800x600.png/0044bb?text=repudiandae', 'Alaina Reichel PhD', '3', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(38, 21, 'https://via.placeholder.com/800x600.png/002277?text=ut', 'Darby Mann', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(39, 41, 'https://via.placeholder.com/800x600.png/00aa55?text=libero', 'Prof. Ciara Franecki III', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(40, 20, 'https://via.placeholder.com/800x600.png/00bb88?text=incidunt', 'Dr. Marlon Parker III', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(41, 19, 'https://via.placeholder.com/800x600.png/002288?text=dolorem', 'Nicklaus Langosh', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(42, 14, 'https://via.placeholder.com/800x600.png/0000aa?text=est', 'Dakota Batz MD', '1', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(43, 26, 'https://via.placeholder.com/800x600.png/00cc11?text=sed', 'Ms. Kamille Thompson Sr.', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(44, 15, 'https://via.placeholder.com/800x600.png/00ee33?text=delectus', 'Pablo Stroman', '3', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(45, 6, 'https://via.placeholder.com/800x600.png/00cc66?text=voluptatem', 'Dana Hintz', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(46, 11, 'https://via.placeholder.com/800x600.png/004444?text=qui', 'Alysa Keebler I', '3', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(47, 21, 'https://via.placeholder.com/800x600.png/00dddd?text=nemo', 'Mable Wuckert MD', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(48, 14, 'https://via.placeholder.com/800x600.png/00ccff?text=perferendis', 'Annabel Marks', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(49, 13, 'https://via.placeholder.com/800x600.png/00eeee?text=est', 'Kolby Bergnaum', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(50, 2, 'https://via.placeholder.com/800x600.png/009911?text=nobis', 'Mr. Lyric Windler', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(51, 47, 'https://via.placeholder.com/800x600.png/003344?text=quis', 'Neva VonRueden', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(52, 7, 'https://via.placeholder.com/800x600.png/00ddff?text=et', 'Raymond Ankunding', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(53, 34, 'https://via.placeholder.com/800x600.png/00aa77?text=iusto', 'Myra Maggio', '3', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(54, 36, 'https://via.placeholder.com/800x600.png/00ccbb?text=blanditiis', 'Ms. Nya Hermiston', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(55, 6, 'https://via.placeholder.com/800x600.png/008833?text=ut', 'Dortha Effertz', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(56, 28, 'https://via.placeholder.com/800x600.png/0088cc?text=hic', 'Meaghan Kunde', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(57, 10, 'https://via.placeholder.com/800x600.png/00bb88?text=voluptatem', 'Rowland Klein', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(58, 28, 'https://via.placeholder.com/800x600.png/001144?text=sint', 'Jennie Beatty', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(59, 28, 'https://via.placeholder.com/800x600.png/000033?text=incidunt', 'Mr. Nico Hermann II', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(60, 44, 'https://via.placeholder.com/800x600.png/00cc99?text=et', 'Prof. Bernadette Kihn Sr.', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(61, 11, 'https://via.placeholder.com/800x600.png/0000ee?text=perferendis', 'Amalia Miller Sr.', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(62, 24, 'https://via.placeholder.com/800x600.png/00cc33?text=enim', 'Mariela Ziemann', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(63, 34, 'https://via.placeholder.com/800x600.png/009977?text=et', 'Manuel Muller', '3', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(64, 10, 'https://via.placeholder.com/800x600.png/0077bb?text=nostrum', 'Quinn Kshlerin', '3', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(65, 31, 'https://via.placeholder.com/800x600.png/000055?text=cumque', 'Myra Larkin', '1', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(66, 26, 'https://via.placeholder.com/800x600.png/006611?text=eos', 'Toy Kub III', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(67, 1, 'https://via.placeholder.com/800x600.png/00cc88?text=est', 'Mr. Sammie Keeling', '3', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(68, 23, 'https://via.placeholder.com/800x600.png/0000ff?text=repudiandae', 'Laurie Abernathy', '4', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(69, 21, 'https://via.placeholder.com/800x600.png/00ee77?text=voluptatem', 'Prof. Reuben Stark', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(70, 34, 'https://via.placeholder.com/800x600.png/009933?text=quisquam', 'Jaydon Grant', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(71, 6, 'https://via.placeholder.com/800x600.png/003355?text=voluptate', 'Laverna Donnelly I', '1', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(72, 32, 'https://via.placeholder.com/800x600.png/007744?text=hic', 'Nathanial Kutch MD', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(73, 7, 'https://via.placeholder.com/800x600.png/00bbdd?text=suscipit', 'Dr. Moses Lesch Jr.', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(74, 30, 'https://via.placeholder.com/800x600.png/0066dd?text=accusamus', 'Prof. Magdalena Dibbert', '1', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(75, 2, 'https://via.placeholder.com/800x600.png/001144?text=a', 'Blanche Torphy', '4', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(76, 38, 'https://via.placeholder.com/800x600.png/0022aa?text=eos', 'Sandra Gusikowski PhD', '3', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(77, 47, 'https://via.placeholder.com/800x600.png/0044dd?text=voluptatem', 'Rubie Morissette V', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(78, 11, 'https://via.placeholder.com/800x600.png/0055bb?text=fugit', 'Dr. Wilford Casper', '2', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(79, 47, 'https://via.placeholder.com/800x600.png/001166?text=quidem', 'Rocky Beatty Sr.', '3', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(80, 40, 'https://via.placeholder.com/800x600.png/001166?text=quae', 'Mozell Bashirian', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(81, 31, 'https://via.placeholder.com/800x600.png/0011aa?text=blanditiis', 'Dylan Jaskolski', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(82, 19, 'https://via.placeholder.com/800x600.png/006699?text=nobis', 'Brown Cummings', '4', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(83, 11, 'https://via.placeholder.com/800x600.png/0033ee?text=quia', 'Daron Boehm', '3', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(84, 30, 'https://via.placeholder.com/800x600.png/0066bb?text=voluptas', 'Lillian Gaylord', '4', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(85, 6, 'https://via.placeholder.com/800x600.png/00bbff?text=inventore', 'Ken Schowalter DVM', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(86, 33, 'https://via.placeholder.com/800x600.png/001122?text=autem', 'Luisa Jerde MD', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(87, 42, 'https://via.placeholder.com/800x600.png/00eecc?text=est', 'Marcos Romaguera', '4', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(88, 35, 'https://via.placeholder.com/800x600.png/00ee99?text=dolorem', 'Mr. Brando Rosenbaum', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(89, 15, 'https://via.placeholder.com/800x600.png/00ee00?text=in', 'Tommie Carter', '4', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(90, 25, 'https://via.placeholder.com/800x600.png/00ccbb?text=animi', 'Cade Kuvalis', '2', 0, '2022-08-24 10:03:07', '2022-08-24 10:03:07'),
(91, 35, 'https://via.placeholder.com/800x600.png/0044bb?text=itaque', 'Audra Huels MD', '1', 1, '2022-08-24 10:03:07', '2022-08-24 10:03:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammet ali Kayacan', 'muhammetluna@gmail.com', '2022-08-24 10:02:47', '$2y$10$S3o7zTr08g5sL1UgetEmmurWQmzCH8tG/qPllLigsR35I4Hv3Jmlq', 1, 1, 'LaP4nsZQTt', NULL, NULL),
(2, 'Prof. Ozella Robel', 'zpollich@example.net', '2022-08-24 10:02:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 1, 'FlFJOeCJKV', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(3, 'Augustine Stoltenberg', 'anya79@example.com', '2022-08-24 10:02:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'fe8XlynZx9', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(4, 'Flo Mills', 'miller.coleman@example.net', '2022-08-24 10:02:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, 'VXHYePJamT', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(5, 'Eleonore Littel', 'mireille.williamson@example.org', '2022-08-24 10:02:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, 'hKtfFKhKBa', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(6, 'Macey Denesik', 'pemard@example.org', '2022-08-24 10:02:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'iHkUhEsL6N', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(7, 'Virgil Schaden', 'xolson@example.net', '2022-08-24 10:02:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, 'hXyRNISPnT', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(8, 'Nyasia Heaney', 'slakin@example.net', '2022-08-24 10:02:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 1, 'VNDZ7nZ9aG', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(9, 'Thalia Blanda', 'lorine.schulist@example.net', '2022-08-24 10:02:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, 'PHAYw2GfVG', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(10, 'Prof. Celestine Gerhold', 'alanna72@example.org', '2022-08-24 10:02:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, 'tpt4O3Ezf7', '2022-08-24 10:02:47', '2022-08-24 10:02:47'),
(11, 'Mr. Monty Rowe', 'goldner.verla@example.org', '2022-08-24 10:02:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'GPETudYIw0', '2022-08-24 10:02:47', '2022-08-24 10:02:47');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`cart_detail_id`),
  ADD KEY `cart_details_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_details_products_id_foreign` (`products_id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `invoices_order_id_foreign` (`order_id`);

--
-- Tablo için indeksler `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`invoice_details_id`),
  ADD KEY `invoice_details_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_details_products_id_foreign` (`products_id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_cart_id_foreign` (`cart_id`);

--
-- Tablo için indeksler `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_products_id_foreign` (`products_id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Tablo için indeksler `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_images_products_id_foreign` (`products_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Tablo için AUTO_INCREMENT değeri `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `invoice_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `products_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Tablo için AUTO_INCREMENT değeri `product_images`
--
ALTER TABLE `product_images`
  MODIFY `image_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_details_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`invoice_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_details_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
