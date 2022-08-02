-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Ağu 2022, 15:55:56
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
(1, 1, 'Turkey', 'Istanbul', '3400', 'Turkey lorem ipsum lorem ipsum avcılar', 0, 'nqf32xRcXG', NULL, NULL),
(2, 6, 'Rogahnburgh', 'Sauerville', '5', '4706 Gaylord Glen Apt. 396\nPort Gaylefort, CO 64194', 1, 'y8MXUXXh0x', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(3, 1, 'West Danview', 'Chazborough', '5', '5270 Dicki Course\nPort Reginaldside, AK 97997-4155', 0, 'uC1zGK9TnX', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(4, 1, 'Spinkaview', 'South Miguelport', '2', '78975 Damon Point Apt. 642\nWolffton, WY 32231', 1, 'dsNIAf3erG', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(5, 1, 'Braunmouth', 'Leofort', '9', '77616 Frederique Radial\nGenesisshire, DE 44259-8970', 0, 'iFbKAd51d6', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(6, 3, 'Jenkinsmouth', 'Schulistville', '5', '674 Wisozk Corners Suite 537\nRosieberg, UT 92559-9880', 1, '8czOuoPkue', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(7, 9, 'Haagside', 'Lake Alainastad', '4', '1743 Isom Streets\nVeumbury, NY 00739-2133', 1, '5qNVvpq08l', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(8, 9, 'Santinatown', 'New Adriana', '9', '23632 Pfeffer Fort Suite 433\nHettingerburgh, IA 98380', 0, 'EKObX3yOCM', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(9, 1, 'Rosalindaport', 'Port Tatyanahaven', '7', '4130 Addison Valley\nWest Leonie, MI 31200-5934', 1, 'cWu7DX94iN', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(10, 10, 'Lake Franco', 'South Dino', '9', '4314 Conroy Pine\nFerrymouth, UT 97965', 1, 'DKPn9PTfFk', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(11, 5, 'Kovacekside', 'Fridaburgh', '6', '9415 Amparo Estate Apt. 797\nKrysteltown, NE 20639', 0, 'CY4RTfDoN4', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(12, 5, 'Williamland', 'Prosaccotown', '2', '5381 Grady Run Suite 550\nLake Kristian, MD 27016-4437', 1, 'rzJONSqRD7', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(13, 4, 'Port Karleytown', 'New Hiramview', '6', '3195 Connelly Courts Suite 786\nNorth Aishashire, KS 86703-9832', 0, 'WCOxT5YJL3', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(14, 10, 'East Kayleyside', 'Lourdesberg', '6', '799 Vernie Drive Apt. 287\nSouth Adolfo, OK 21115', 1, 'wHGyOTxFVD', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(15, 10, 'Jastside', 'Hollisberg', '7', '516 Hermann Harbor Suite 897\nNew Lora, MD 55341-0400', 1, '5n8vMflvKW', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(16, 4, 'New Russell', 'Carolchester', '4', '9244 Lonnie Ranch\nPort Assuntaborough, NH 25747-0672', 0, 'yhDaoEXXBK', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(17, 6, 'North King', 'Creminmouth', '1', '9346 Trantow Court Suite 881\nWest Louisamouth, AK 76972', 0, 'T1OiZkRO8F', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(18, 1, 'North Alyciamouth', 'New Ari', '9', '370 Randall Shore\nLake Kyliefort, NH 68534-1730', 0, '0ZQJeYYSTX', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(19, 10, 'Lake Ottoville', 'Elishastad', '7', '439 Juliana Extensions\nRogersburgh, RI 43455', 1, 'p1V0PSNena', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(20, 4, 'Metzmouth', 'East Hannahbury', '2', '293 Ofelia Mountain\nMonahanfurt, MA 23009', 1, 'XGitZkNCEF', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(21, 7, 'New Scarlettchester', 'Port Ezra', '4', '371 Nikolaus Causeway\nPort Nelliefort, PA 21794', 0, '0cRsoCbcuX', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(22, 1, 'Svenview', 'New Betteside', '2', '928 Hoyt Summit\nEast Ora, NC 65633-1660', 0, 'veiJULd48y', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(23, 8, 'East Rosetta', 'North Jeromy', '6', '545 Bayer Shore Apt. 035\nLake Jadonhaven, KS 15524', 0, 'NeUUYkV32X', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(24, 1, 'Tremblayborough', 'Labadiechester', '7', '95065 Bruen Springs Suite 750\nLake Trystan, KY 16139', 1, 'gqhItyIuw5', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(25, 8, 'East Lavinia', 'Dejonchester', '4', '266 Sporer Garden Suite 958\nLaurelmouth, TX 29705', 0, 'EAa8gITfin', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(26, 10, 'Gustport', 'New Brennafort', '7', '1760 Jon Locks Suite 226\nLake Maiafort, WI 57498-8804', 1, 'SAFiBGULxo', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(27, 10, 'Averyberg', 'Port Flavie', '4', '809 Reilly Prairie Suite 082\nOberbrunnerville, RI 63328-7199', 0, 'WlIBO2PxRJ', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(28, 10, 'South Elijahburgh', 'Blickfurt', '7', '4703 Damaris Roads\nJaymeberg, MO 72717', 0, 'KKRN6zuIT6', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(29, 8, 'East Lizaland', 'Leannemouth', '9', '503 Laverne Forge\nEast Kyletown, SC 22464', 1, 'FBkuK2mmWX', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(30, 6, 'Timothyfort', 'Maybellmouth', '9', '83627 Odie River Apt. 083\nMaudton, MS 06837', 1, 'yBlG2CLcYr', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(31, 4, 'North Kailey', 'Yesseniaton', '7', '14987 Pfeffer Mission\nBrockborough, IL 34924-0326', 0, '5e9jmBKF27', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(32, 7, 'Calebview', 'Port Mona', '4', '542 Kiarra Neck\nSouth Karianeborough, MO 16392', 0, 'Y8Mk7FIoEy', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(33, 5, 'West Morrisville', 'Mayertshire', '2', '97003 Moore Walks\nElisafort, CO 07076', 0, '1iDCLRrTr9', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(34, 2, 'Geovanniburgh', 'South Shadmouth', '7', '75536 Esther Forest Apt. 318\nSouth Kaci, NH 26963-7460', 1, 'prnkGdIj8x', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(35, 3, 'Wuckertville', 'Amyfort', '6', '51878 Rick Falls\nElzamouth, NC 56903-0970', 1, 'JJ3Ahz7PbB', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(36, 4, 'West Elissatown', 'Kuhlmanton', '1', '861 Gideon Mall Apt. 063\nColebury, LA 90276-7789', 1, 'Yh7bxq3Szi', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(37, 9, 'South Julianne', 'North Alphonsoberg', '1', '6120 Turner Terrace\nLake Norris, AR 76621', 0, 'JvNcCTwPZM', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(38, 10, 'South Margaret', 'South Nedport', '6', '1937 Dayton Valleys Apt. 093\nClaudieshire, OH 35258-4218', 0, '2e1OJOXRSW', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(39, 7, 'South Philipberg', 'West Brennon', '7', '54885 Runolfsson Summit\nCorkeryside, WV 05829-0635', 0, '9tNMhCldAM', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(40, 5, 'Cartwrightborough', 'West Thaliastad', '5', '24424 Wolff Circles\nMalachiside, ID 69031', 0, '0a15Q0qz7I', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(41, 10, 'Samarafurt', 'Port Letha', '5', '1162 Bart Cliffs Suite 461\nLake Jailynstad, AZ 50542', 0, 'xyd5wi2VDc', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(42, 10, 'East Matteoberg', 'Lake Jerodport', '3', '3899 Tremblay Mission Apt. 612\nSouth Floridahaven, OR 71501-9582', 1, '7NoqSHH7J2', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(43, 8, 'New Myra', 'New Carolyn', '3', '688 Stiedemann Centers\nPort Ahmad, UT 55533-4557', 1, 'ldF2GOiFXh', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(44, 8, 'West Felipastad', 'Port Wernershire', '4', '1401 Unique Summit\nKaseyville, WA 99310', 1, 'Bx9KYnQLHW', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(45, 6, 'Jamarcushaven', 'New Miracle', '8', '51557 Desiree Trail Apt. 737\nSporerchester, MA 38288-8318', 1, 'RooRfl2yCR', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(46, 9, 'Aniyahshire', 'West Genesis', '6', '51082 Claude Cliff\nLake Dewittshire, DE 91143-2839', 0, 'IldZAE4Ii9', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(47, 3, 'North Luismouth', 'North Emilietown', '2', '81708 Williamson Neck Suite 424\nBashirianmouth, NC 68071', 1, 'tgI2JPJWum', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(48, 10, 'Abagailville', 'West Marcelle', '4', '7318 Edd Dale\nDietrichborough, DE 27684-3223', 0, 'kjVy5nzDad', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(49, 9, 'Lake Halport', 'Hellertown', '3', '25909 Ellsworth Springs\nNorth Nathaniel, SC 96603', 0, '4ghhqlLaZW', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(50, 6, 'Hyattland', 'North Giovanna', '4', '188 Gleason Gateway\nEast Terryland, UT 74929-2173', 1, 'mklnMTe5Yk', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(51, 2, 'Schadenchester', 'Port Darenside', '2', '5124 Ryley Road\nCharlesside, MI 02247-9185', 1, 'Paq2oSmSBO', '2022-08-01 10:53:27', '2022-08-01 10:53:27');

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
(4, 'Aut esse reiciendis maxime.', 'aut-esse-reiciendis-maxime', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(5, 'Quos soluta perspiciatis ut.', 'quos-soluta-perspiciatis-ut', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(6, 'Dignissimos veritatis cupiditate enim.', 'dignissimos-veritatis-cupiditate-enim', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(7, 'Consectetur dolores velit voluptates vel necessitatibus.', 'consectetur-dolores-velit-voluptates-vel-necessitatibus', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(8, 'At voluptatem occaecati incidunt natus nemo.', 'at-voluptatem-occaecati-incidunt-natus-nemo', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(9, 'Repudiandae sunt.', 'repudiandae-sunt', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(10, 'Ex doloribus officiis rerum.', 'ex-doloribus-officiis-rerum', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27');

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
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 6, 'Itaque omnis.', 5.00, 672.00, 'Dolorem labore non maiores odit voluptatem excepturi earum. Animi repellat reprehenderit excepturi. Cupiditate voluptate aut et sunt et dignissimos tempora.', 'Exercitationem dolore repellat est sunt aut minus rerum quo. Nisi consequatur non odio dolore sint quam. Qui ex nesciunt qui sit.', 'itaque-omnis', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(3, 6, 'Quos quo.', 977.00, 890.00, 'Rem doloremque iste repellendus. Deserunt sint et voluptatem consequatur in officiis quaerat eum. Iure commodi in at aut. Quis ducimus aliquam ab et sed libero.', 'Quae dignissimos sit autem earum debitis. Et voluptas deleniti quia. Voluptas fugit corporis nemo consectetur.', 'quos-quo', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(4, 9, 'Iste consequatur.', 460.00, 586.00, 'Quo nam minima ex placeat. Corporis ratione eos excepturi magnam. Magni consequuntur fuga minima velit quos ipsam facere.', 'Fugiat quia culpa quo dolor consequatur delectus. Id labore ea nobis vel ullam. Sit dolorum non ipsam qui expedita in.', 'iste-consequatur', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(5, 4, 'Consequatur reiciendis.', 831.00, 90.00, 'Dolor iusto nostrum possimus quis assumenda numquam quos fugiat. Ab quam et animi quia deleniti quasi consectetur sequi. Voluptatum qui consequatur soluta.', 'Nisi suscipit id qui sapiente iusto placeat. Soluta occaecati molestiae soluta eaque pariatur eum voluptates rerum. Sint qui quod qui ipsum doloremque.', 'consequatur-reiciendis', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(6, 4, 'Quae culpa.', 142.00, 159.00, 'Blanditiis tempore quas dolore non. Voluptas eum quo neque a beatae nemo mollitia. Quia consequatur esse voluptatem cupiditate et laboriosam delectus. Sint et consequatur maiores ut officia neque at.', 'Voluptatem rerum excepturi id placeat non molestias. Mollitia enim in tempora voluptates inventore aut quasi consequuntur. Et adipisci velit quia aut beatae voluptates.', 'quae-culpa', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(7, 5, 'Autem iste.', 533.00, 815.00, 'Odit et aliquam commodi incidunt. Dolores officiis et quod sit possimus. Ipsum aut enim numquam omnis et dolor dolorem.', 'Temporibus voluptas totam alias cumque cum aliquid. Molestias quibusdam maiores eaque. Consequuntur numquam eaque maxime.', 'autem-iste', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(8, 3, 'Ut.', 841.00, 905.00, 'Repellat in eum ut dicta nihil. Cum sint voluptatum qui. Ratione et consequatur illo et saepe dolore inventore. Nisi deserunt ipsum consequuntur in voluptas placeat.', 'Iusto veniam quia vel iusto. Sint dignissimos quia id qui laudantium accusantium mollitia. Dolorum laborum quidem rerum vitae excepturi quisquam molestias.', 'ut', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(9, 10, 'Laudantium eum.', 617.00, 27.00, 'Quod est maxime voluptatem id adipisci provident aperiam. Accusantium aut nesciunt consectetur unde dolorem. Voluptate sequi et nulla laborum vel.', 'Ad doloribus repellat quos. Sed impedit alias accusantium blanditiis. Aperiam ut soluta quo facilis ipsum explicabo. Quia recusandae occaecati ut sit dolores dignissimos est ut.', 'laudantium-eum', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(10, 1, 'Qui voluptatem.', 612.00, 504.00, 'Vel suscipit perferendis sed sequi vel quas incidunt maiores. Illum ipsum quo veniam quia impedit. In fuga exercitationem excepturi. Aut atque eveniet ipsum ut.', 'Veniam neque quis culpa consequatur est ratione sapiente. Natus recusandae ex ut ut commodi asperiores exercitationem. Sunt quae similique et consequuntur ea non veritatis.', 'qui-voluptatem', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(11, 9, 'Ut accusamus.', 6.00, 329.00, 'Minima exercitationem saepe alias occaecati. Fugiat saepe et reiciendis saepe officiis id et. Deleniti dolorum quos laudantium magnam alias voluptatum error libero.', 'Laborum aliquid laborum est quas eum. Architecto nulla est et maiores sint quis a.', 'ut-accusamus', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(12, 8, 'Fugit.', 57.00, 159.00, 'Rerum qui commodi excepturi repellendus odit dolores. Et provident voluptate molestias consequatur sit qui. Qui similique quasi voluptas. Provident rerum alias tempore quibusdam rem quis.', 'Eos sed sed praesentium qui nobis. At nemo quod nemo ipsum eos unde. Incidunt officia eveniet id incidunt magnam veritatis qui qui.', 'fugit', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(13, 2, 'Deserunt accusantium.', 407.00, 363.00, 'Qui ut voluptatem quaerat aspernatur odio. Laborum at modi est odio asperiores ipsam illum. Est et enim aut ex voluptate minus sapiente.', 'Eius aut minus maiores. Dolore quo culpa non consequuntur cupiditate. Harum et ea magni culpa sapiente.', 'deserunt-accusantium', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(14, 10, 'Voluptatem quibusdam.', 999.00, 473.00, 'Ea sequi modi nulla et perferendis libero. Sequi deserunt eveniet ad magnam et molestiae dolorem. Culpa ut sint ea. Quo et eum molestiae magnam rerum tempora itaque voluptatem.', 'Est vel perspiciatis ut et. Omnis voluptas et sint velit dolorum molestiae quod. Ducimus exercitationem similique iure et. Magnam doloremque delectus asperiores necessitatibus quia accusamus tenetur.', 'voluptatem-quibusdam', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(15, 5, 'Quidem molestias.', 41.00, 899.00, 'Sed omnis et voluptas tenetur mollitia molestias ut fugit. Dolor reiciendis necessitatibus modi provident quidem voluptatem ut ullam. Libero omnis qui autem esse voluptatem molestias.', 'Nihil tempore aut animi odit blanditiis. Illo autem ipsa officiis voluptas officiis. Est illo qui ad quia nobis quia tempora sunt.', 'quidem-molestias', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(16, 2, 'Numquam sint.', 668.00, 327.00, 'Atque laudantium et consequatur sit quia. Necessitatibus officia alias molestiae adipisci beatae facilis dicta. Reiciendis atque ea omnis dolorum voluptas voluptatem rerum.', 'Autem omnis magni explicabo quibusdam deserunt sunt. Qui quae sint non odit animi ut atque. Maiores harum placeat adipisci aperiam sit. Magni fugit consectetur in omnis qui corrupti.', 'numquam-sint', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(17, 7, 'Excepturi.', 307.00, 457.00, 'Quis quae atque quis. Veritatis quo sequi quisquam cum occaecati est omnis ut. Rem dolorem rerum architecto possimus. Ipsam nemo assumenda perferendis deleniti molestiae qui.', 'Veniam quam quasi quibusdam rerum et. Impedit aliquid cumque ea et. Esse et voluptas consequatur porro atque ea. Sed magnam animi facilis nesciunt.', 'excepturi', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(18, 10, 'Id et.', 217.00, 938.00, 'Veniam iure qui libero itaque ratione sit. Aliquam error fuga consequatur incidunt illum ex. Natus sed voluptatum nisi placeat eum. A est debitis laborum numquam soluta.', 'Alias enim aut natus aut nam rerum nesciunt. Quas esse commodi quis. Dignissimos consequatur aliquid eius.', 'id-et', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(19, 10, 'Consequatur est.', 719.00, 445.00, 'Atque laboriosam aut laborum recusandae. Quia et deleniti sit ipsa aspernatur suscipit mollitia. Neque voluptatem quaerat aut nesciunt in atque quas.', 'Cum ut tempore eaque rerum odit consectetur qui. Quibusdam provident placeat unde non. Animi maxime deleniti consequatur provident. Quaerat delectus temporibus quis corporis.', 'consequatur-est', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(20, 3, 'Id.', 463.00, 941.00, 'Culpa ratione sunt facilis. Esse rerum molestias facere quia provident sequi et architecto. Sequi omnis quasi sint alias doloremque. Et esse nulla nihil laboriosam. Ipsa eum ratione sed culpa.', 'Dolore totam iste reiciendis optio qui. Voluptas minima eos non harum minima. Et eos sunt est incidunt eligendi non.', 'id', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(21, 9, 'Assumenda adipisci ex.', 672.00, 185.00, 'Tenetur saepe vitae eaque aut. Sit deleniti quisquam quaerat odit sed et facere. Qui molestiae inventore est. Et ipsa distinctio aut maxime dolor. Ullam et aut sint repudiandae.', 'Maiores maxime exercitationem sed id quidem velit. Eaque enim natus maxime. Non qui quibusdam est a. Qui ipsum delectus officiis dicta provident necessitatibus.', 'assumenda-adipisci-ex', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(22, 9, 'Accusantium asperiores maiores.', 522.00, 196.00, 'Et officiis qui similique maxime unde enim quia. Est qui iure eum aut fugit sapiente recusandae. Perspiciatis pariatur perspiciatis eos. Dolores quia quos sequi error voluptate.', 'Nulla dolorem sunt nemo nam in nisi. Quam qui et dolorem magnam explicabo animi enim et. Incidunt eligendi incidunt vel et aut aspernatur ratione facilis. Laboriosam pariatur odio adipisci officia.', 'accusantium-asperiores-maiores', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(23, 8, 'Saepe laudantium.', 170.00, 726.00, 'Sit id id nihil ut explicabo enim. Error laborum aperiam tempora. Doloribus soluta dolores iure natus a aspernatur. Quaerat et voluptate autem amet reprehenderit autem. Ex aut porro sequi adipisci.', 'Accusamus laboriosam corporis eaque qui alias et deleniti. Et officiis fuga amet id. Accusantium harum mollitia qui adipisci nobis adipisci. Alias quae impedit itaque quia omnis corrupti quo.', 'saepe-laudantium', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(24, 3, 'Rerum.', 386.00, 233.00, 'Adipisci hic ut amet earum iste. Tempore aut asperiores sequi unde et dicta. Reiciendis labore ut reprehenderit. Deserunt ullam et non et eum rerum aspernatur aliquid.', 'Pariatur similique occaecati quia possimus vel. Quidem distinctio aut praesentium modi repellat laborum. Aut sunt et nemo voluptatum et in voluptatem vitae.', 'rerum', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(25, 6, 'Libero dolor.', 216.00, 102.00, 'Autem doloremque eos et quo. Blanditiis inventore ducimus hic et odit maiores. Et veniam et reiciendis.', 'Officia eligendi omnis sapiente repudiandae officia. Aut quis minus labore praesentium soluta. Quia nemo sint error cumque dicta. Omnis rem et laboriosam quis.', 'libero-dolor', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(26, 3, 'Qui accusamus.', 470.00, 745.00, 'Enim nostrum laudantium voluptate voluptas. Sunt architecto voluptas aut aut dolorem. Exercitationem placeat sit voluptatem dicta pariatur necessitatibus molestias ut.', 'Nihil incidunt aliquid quam reiciendis voluptatem vero. Ut sunt qui sit aut.', 'qui-accusamus', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(27, 4, 'Reiciendis doloremque.', 10.00, 461.00, 'Libero sed atque id quae dolores vero. Et architecto officia non aut tempore amet. Similique molestiae nobis tenetur.', 'Expedita alias eos ducimus accusantium. Quia voluptates ab quas laboriosam vel fugit facere. Porro est fuga sunt sunt voluptatem dolores corrupti. Delectus libero quia quia sequi.', 'reiciendis-doloremque', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(28, 1, 'Beatae est.', 344.00, 370.00, 'Rerum dignissimos enim qui et est. Consequatur esse iure et eius totam omnis. Qui eum illo ea cum minima quam.', 'Aliquam optio dolores natus beatae sint similique. In sequi sed modi culpa. Aut repellendus officia cum quis officia sint. Amet eius iste ratione asperiores quia.', 'beatae-est', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(29, 1, 'Deleniti aut.', 214.00, 728.00, 'Praesentium necessitatibus cum expedita molestiae. Beatae qui voluptatem unde et voluptate consectetur. Quod eaque repellat voluptates sunt.', 'Cumque aspernatur doloribus molestiae voluptatum eum aut. Atque sapiente qui sed quas inventore corrupti beatae. Ab amet et est omnis.', 'deleniti-aut', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(30, 7, 'Qui ut consequatur.', 301.00, 877.00, 'Doloremque qui id cum blanditiis. Necessitatibus non et est qui. Hic soluta sed ullam nostrum est quia. Sit sint facilis dolor ut et quia. Unde aut numquam sunt odio alias ut.', 'Iusto ut harum enim facilis. Et odit praesentium ad tempora qui maiores. Qui quia repudiandae quaerat perferendis.', 'qui-ut-consequatur', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(31, 10, 'Sed qui.', 571.00, 957.00, 'Deserunt quia eum explicabo et adipisci eligendi voluptate. Debitis dolorem minima soluta quia nostrum. Consequuntur facilis molestiae et aut officiis iusto.', 'Et modi et iusto nihil aspernatur laboriosam. Eum voluptate pariatur in quo natus. Asperiores quo maxime quo omnis delectus libero.', 'sed-qui', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(32, 1, 'Voluptatum quas.', 884.00, 250.00, 'Unde et dignissimos nobis. Est consequatur sit dolorum molestiae voluptatem at. Rem modi assumenda quis maxime id. Impedit odit veritatis incidunt veritatis ullam quam sed.', 'Qui assumenda velit aliquam molestiae quibusdam. Est ut officia laudantium. Est quaerat autem voluptatem non animi ratione. Non similique fugit delectus aspernatur delectus.', 'voluptatum-quas', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(33, 6, 'Dolor officia.', 593.00, 351.00, 'Natus quod molestiae deserunt laborum dolores. Qui iure est qui quia id officiis maiores et. Ad repudiandae qui hic voluptatem.', 'Voluptatem earum ea atque non quo sunt alias. Quibusdam sequi nihil cum ut repudiandae. Accusamus recusandae velit quia eveniet quia.', 'dolor-officia', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(34, 9, 'Non quae.', 457.00, 203.00, 'Quae reiciendis aspernatur esse et consequuntur. Aut commodi et perspiciatis nihil nihil. Nostrum voluptates porro sed blanditiis quidem maiores. Beatae qui quia et. Ut et nam repellendus alias.', 'Itaque quis eum aut culpa. Officia dicta aut sit molestiae. Nobis et distinctio blanditiis et non perferendis delectus ut. Itaque et officia iure sunt.', 'non-quae', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(35, 1, 'Ex.', 126.00, 676.00, 'Velit sint totam qui ut esse qui non. Magni voluptas neque itaque consequuntur. Dicta aut ducimus tempore nam architecto nisi. Et aut aperiam distinctio blanditiis molestiae numquam.', 'Eveniet natus perspiciatis et incidunt excepturi. Porro non earum consequatur consectetur. Eum numquam reiciendis atque quia. Autem modi vel explicabo assumenda at fuga explicabo.', 'ex', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(36, 5, 'Et nobis alias.', 788.00, 668.00, 'Beatae hic fugiat nemo culpa. Id molestias et veritatis eius. Voluptas est nesciunt et. Veritatis similique tenetur omnis qui ipsa quo.', 'Nobis sunt totam eveniet est id officia. Maxime voluptatem voluptatem nihil. Dolore maiores voluptate veritatis ad est enim.', 'et-nobis-alias', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(37, 5, 'Numquam quia.', 890.00, 269.00, 'Explicabo est eos perspiciatis sint. Rerum rerum hic ipsum accusamus iusto aut fugit est. Id dicta et est sed recusandae voluptatibus.', 'Corrupti facilis occaecati eos debitis. Explicabo cumque adipisci itaque nobis voluptas repellat. Eum voluptatum eum sint non facilis similique. Cumque et vero eligendi modi iusto quod in in.', 'numquam-quia', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(38, 8, 'Eos eligendi.', 326.00, 714.00, 'Qui et temporibus commodi molestiae eaque libero omnis. Perferendis aliquid corporis exercitationem nobis ex. Sunt tenetur quia ut necessitatibus maxime dolorem.', 'Non ut voluptate qui repellendus laboriosam. Et aperiam incidunt assumenda vel. Et quod minima eos.', 'eos-eligendi', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(39, 3, 'Iste accusamus distinctio.', 143.00, 17.00, 'Nihil ipsa accusantium et repudiandae sit. Quam maxime ab quo iste eaque nemo voluptatem. Ut odio qui voluptates sapiente. Ut incidunt modi aut nam vitae quae aut.', 'Quasi nobis et qui nulla. Aut eius sit nemo doloribus tempora consequuntur dolores. Quisquam fugiat nostrum aut doloremque aut laborum. Suscipit doloremque autem reiciendis neque sed.', 'iste-accusamus-distinctio', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(40, 10, 'Sed.', 810.00, 585.00, 'Dolorem molestiae est molestias hic doloremque magni aliquam. Nihil omnis provident molestiae reiciendis assumenda inventore quo. Doloremque natus nisi nihil perspiciatis dolorem blanditiis.', 'Non ut earum delectus perferendis qui doloribus perferendis sequi. Ea nihil architecto ipsa. Ex quas eos minus.', 'sed', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(41, 3, 'Similique et saepe.', 379.00, 117.00, 'Debitis illo dolor sunt aut fugiat voluptates earum. Et expedita odit vero sint possimus est. Maiores voluptatem qui nostrum nihil libero omnis molestiae.', 'Quod magni qui et hic dolorem odit vitae occaecati. Ex voluptas reprehenderit tempora. Eius eos quo nihil occaecati temporibus. Facere quo minus eveniet dolorem exercitationem.', 'similique-et-saepe', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(42, 5, 'Eaque quae.', 606.00, 935.00, 'Ut maxime nostrum nisi nemo id laudantium. Est aut culpa ex quis commodi et. Qui vel consectetur in esse ipsum. Et optio non perferendis consectetur. Et reiciendis et est.', 'Nobis ducimus quam illum odio vero nesciunt. Ut asperiores sit est eos voluptas qui. Explicabo consequuntur error consectetur iste non omnis. Corporis est et aut cumque commodi suscipit magni ipsam.', 'eaque-quae', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(43, 1, 'Eum quam.', 900.00, 632.00, 'Soluta maiores consequatur occaecati est quaerat eum sit. Quidem beatae autem reprehenderit excepturi. Impedit mollitia omnis accusamus qui accusantium quia nisi.', 'Quia quia sunt non et tenetur nihil ipsam delectus. Veritatis minima sed magni et deserunt qui non natus. Minus ea et dolor repellat. Vero officia ullam tempore nobis.', 'eum-quam', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(44, 3, 'Nisi officiis et.', 251.00, 949.00, 'Et molestiae atque voluptatem qui quos harum. Nihil odit nisi hic molestias eum ipsa.', 'Placeat eum tempore eos. Quaerat expedita ipsam porro vero aspernatur.', 'nisi-officiis-et', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(45, 8, 'Suscipit modi repellendus.', 741.00, 850.00, 'Aspernatur laboriosam repellat quo aut sed optio veniam. Molestias itaque illum nemo qui consequatur ea. Esse enim ex blanditiis cupiditate. Consequatur facere id nobis cum quo.', 'Incidunt aut impedit ipsa enim. Dignissimos excepturi minus pariatur. Illum vero impedit quo inventore harum ea.', 'suscipit-modi-repellendus', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(46, 10, 'Iure omnis.', 535.00, 434.00, 'In quo amet aperiam quod. Consequatur qui voluptates et quis qui voluptatem voluptatem. Et eaque voluptatem minus provident.', 'Corrupti alias earum vel dolorem animi. A maxime ducimus cum qui magni labore. Ad at consequuntur architecto iste corrupti ullam a.', 'iure-omnis', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(47, 6, 'Harum minima magnam.', 186.00, 832.00, 'Qui cupiditate sequi dolor voluptatem. Harum ratione quasi nobis est numquam quia. Enim enim aliquam quo vitae.', 'Voluptas repellat dignissimos qui necessitatibus. Non qui eos a consequatur. Modi et voluptas voluptas vel error veritatis. Mollitia ex ab porro sint harum eos facilis dolores.', 'harum-minima-magnam', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(48, 4, 'Et recusandae.', 23.00, 952.00, 'Molestias pariatur sapiente ut sunt. Minus fuga illum aut itaque voluptatibus quis. Veniam maxime commodi sed ut perferendis eum.', 'Accusantium voluptas beatae sit autem tenetur. Quaerat recusandae alias neque fuga. Facere tempore sit mollitia voluptatem earum vel ea tempore. Quo consectetur facere quisquam vero dolor minus.', 'et-recusandae', 1, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(49, 10, 'Necessitatibus rerum.', 548.00, 737.00, 'Sit est soluta id voluptate et excepturi voluptas. Repellendus unde dolores debitis libero. Aut illum labore quis velit ullam minima aut. Et aperiam et et molestias dolores cupiditate voluptas.', 'Quia neque non voluptates non aut. Et est earum laboriosam. Nobis velit facilis sit aut.', 'necessitatibus-rerum', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(50, 8, 'Iure voluptas.', 333.00, 304.00, 'Est in et aspernatur reprehenderit non non. Blanditiis ipsum sit ad eos debitis dolorem voluptatem dolor. Omnis ducimus rerum mollitia ipsam. Dicta molestiae soluta iste illum sed.', 'Quia ad cumque vitae voluptates in deserunt. Aut aut dicta recusandae sunt tempore ut et. Deserunt quas omnis est aut ipsam id. Quia consectetur nesciunt animi porro. Totam unde voluptas et culpa.', 'iure-voluptas', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(51, 4, 'Est magnam.', 218.00, 970.00, 'Minima ut consequatur explicabo temporibus in. Et rem a fugiat quia harum impedit repellendus iste.', 'Est vitae amet eum. Quam earum ducimus et et praesentium eos. Sunt officia optio similique quos numquam non distinctio autem.', 'est-magnam', 0, NULL, '2022-08-01 10:53:27', '2022-08-01 10:53:27');

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
(2, 22, 'https://via.placeholder.com/800x600.png/0000ff?text=molestiae', 'Annamarie Hegmann', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(3, 45, 'https://via.placeholder.com/800x600.png/008866?text=impedit', 'Marion Nitzsche', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(4, 40, 'https://via.placeholder.com/800x600.png/00ff55?text=inventore', 'Ansley Herzog Sr.', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(5, 39, 'https://via.placeholder.com/800x600.png/006688?text=sunt', 'Dr. Clementine Barrows II', '2', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(6, 12, 'https://via.placeholder.com/800x600.png/006644?text=cumque', 'Miss Dawn Balistreri', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(7, 40, 'https://via.placeholder.com/800x600.png/006699?text=atque', 'Sasha Rath', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(8, 16, 'https://via.placeholder.com/800x600.png/009900?text=sed', 'Simone Cummings', '3', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(9, 21, 'https://via.placeholder.com/800x600.png/00bb44?text=tenetur', 'Mr. Kamron Gibson', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(10, 10, 'https://via.placeholder.com/800x600.png/0044dd?text=totam', 'Prof. Marquis Vandervort Jr.', '3', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(11, 26, 'https://via.placeholder.com/800x600.png/006666?text=qui', 'Ms. Loraine McCullough', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(12, 10, 'https://via.placeholder.com/800x600.png/006677?text=placeat', 'Bertrand Bahringer', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(13, 21, 'https://via.placeholder.com/800x600.png/00eeee?text=vel', 'Prof. Abagail Kshlerin', '2', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(14, 35, 'https://via.placeholder.com/800x600.png/00ee22?text=dolores', 'Mikel VonRueden', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(15, 16, 'https://via.placeholder.com/800x600.png/009966?text=eos', 'Tina Monahan', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(16, 2, 'https://via.placeholder.com/800x600.png/00dd00?text=maxime', 'Mario Mann', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(17, 5, 'https://via.placeholder.com/800x600.png/0077dd?text=placeat', 'Ms. Janie Haag', '2', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(18, 30, 'https://via.placeholder.com/800x600.png/005544?text=sed', 'Dr. Sierra Hahn IV', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(19, 31, 'https://via.placeholder.com/800x600.png/0022ee?text=voluptates', 'Elias Beer', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(20, 27, 'https://via.placeholder.com/800x600.png/0055ff?text=sint', 'Avery Torp', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(21, 19, 'https://via.placeholder.com/800x600.png/007733?text=velit', 'Prof. Lonny Rice MD', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(22, 20, 'https://via.placeholder.com/800x600.png/00aacc?text=sit', 'Prof. Jalon Powlowski III', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(23, 28, 'https://via.placeholder.com/800x600.png/00ff88?text=commodi', 'Kasey Legros', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(24, 17, 'https://via.placeholder.com/800x600.png/0077bb?text=recusandae', 'Candace Reilly', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(25, 14, 'https://via.placeholder.com/800x600.png/00ff99?text=officiis', 'Dr. Sherwood DuBuque', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(26, 44, 'https://via.placeholder.com/800x600.png/002222?text=nostrum', 'Miss Larissa Schimmel', '2', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(27, 34, 'https://via.placeholder.com/800x600.png/0011ee?text=aut', 'Hortense Lynch', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(28, 10, 'https://via.placeholder.com/800x600.png/009922?text=officiis', 'Filomena Skiles', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(29, 7, 'https://via.placeholder.com/800x600.png/007733?text=repudiandae', 'Shawna O\'Connell I', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(30, 25, 'https://via.placeholder.com/800x600.png/00ff11?text=nobis', 'Cleveland Dooley Sr.', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(31, 41, 'https://via.placeholder.com/800x600.png/002255?text=iste', 'Uriah Ankunding Jr.', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(32, 23, 'https://via.placeholder.com/800x600.png/00ffaa?text=aliquid', 'Joey Jakubowski', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(33, 24, 'https://via.placeholder.com/800x600.png/005588?text=rem', 'Prof. Napoleon Jakubowski', '2', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(34, 28, 'https://via.placeholder.com/800x600.png/00ffcc?text=eos', 'Tiara Doyle', '3', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(35, 13, 'https://via.placeholder.com/800x600.png/005500?text=officia', 'Miss Alvena Ortiz DVM', '3', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(36, 11, 'https://via.placeholder.com/800x600.png/0033aa?text=optio', 'Roel Kshlerin DDS', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(37, 39, 'https://via.placeholder.com/800x600.png/00dd66?text=consequatur', 'Carole O\'Connell', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(38, 17, 'https://via.placeholder.com/800x600.png/001100?text=autem', 'Dan Ruecker', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(39, 46, 'https://via.placeholder.com/800x600.png/00ffaa?text=non', 'Marlen Walsh DDS', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(40, 20, 'https://via.placeholder.com/800x600.png/00cc88?text=dicta', 'Prof. Lambert Goyette II', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(41, 11, 'https://via.placeholder.com/800x600.png/000000?text=rem', 'Howell Dickinson III', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(42, 39, 'https://via.placeholder.com/800x600.png/00ddaa?text=ea', 'Royce Rogahn', '2', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(43, 13, 'https://via.placeholder.com/800x600.png/00ccee?text=reprehenderit', 'Theresa Tromp', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(44, 44, 'https://via.placeholder.com/800x600.png/005511?text=officiis', 'Henri Hauck', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(45, 18, 'https://via.placeholder.com/800x600.png/002244?text=sed', 'Lilly Zulauf', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(46, 36, 'https://via.placeholder.com/800x600.png/009977?text=dolorem', 'Blaise Batz Jr.', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(47, 1, 'https://via.placeholder.com/800x600.png/005544?text=iste', 'Vern Crona', '3', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(48, 23, 'https://via.placeholder.com/800x600.png/00dd33?text=magni', 'Prof. Joey Marquardt II', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(49, 29, 'https://via.placeholder.com/800x600.png/007777?text=saepe', 'Miss Zita Crooks Jr.', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(50, 22, 'https://via.placeholder.com/800x600.png/0033ee?text=exercitationem', 'Ivah Fay', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(51, 25, 'https://via.placeholder.com/800x600.png/00cccc?text=incidunt', 'Ms. Evie Deckow III', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(52, 31, 'https://via.placeholder.com/800x600.png/007744?text=consequatur', 'Walton Carroll', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(53, 26, 'https://via.placeholder.com/800x600.png/008811?text=consequatur', 'Gail Veum I', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(54, 34, 'https://via.placeholder.com/800x600.png/006677?text=harum', 'Dr. Juwan Heaney', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(55, 6, 'https://via.placeholder.com/800x600.png/0066cc?text=dicta', 'Hilario Crooks', '3', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(56, 15, 'https://via.placeholder.com/800x600.png/002211?text=possimus', 'Yadira Tromp', '2', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(57, 46, 'https://via.placeholder.com/800x600.png/000033?text=ducimus', 'Evan Goodwin', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(58, 30, 'https://via.placeholder.com/800x600.png/0011dd?text=vel', 'Jedidiah Bosco III', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(59, 27, 'https://via.placeholder.com/800x600.png/00ee99?text=optio', 'Virgie Stracke', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(60, 38, 'https://via.placeholder.com/800x600.png/00cc99?text=quia', 'Maximus Hayes', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(61, 31, 'https://via.placeholder.com/800x600.png/0055aa?text=aut', 'Maryam Weber', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(62, 14, 'https://via.placeholder.com/800x600.png/00eebb?text=temporibus', 'Ora Brown V', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(63, 37, 'https://via.placeholder.com/800x600.png/005566?text=cumque', 'Dena Hammes', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(64, 14, 'https://via.placeholder.com/800x600.png/0022ee?text=et', 'Fannie Cruickshank V', '2', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(65, 34, 'https://via.placeholder.com/800x600.png/0099bb?text=enim', 'Ronaldo Wunsch', '3', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(66, 23, 'https://via.placeholder.com/800x600.png/00ddaa?text=iusto', 'Kara Heaney', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(67, 29, 'https://via.placeholder.com/800x600.png/0088ee?text=et', 'Sterling Rogahn', '3', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(68, 13, 'https://via.placeholder.com/800x600.png/0044bb?text=non', 'Prof. Jeromy Koss', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(69, 40, 'https://via.placeholder.com/800x600.png/0044cc?text=rerum', 'Prof. Camryn Padberg DVM', '3', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(70, 4, 'https://via.placeholder.com/800x600.png/005566?text=laborum', 'Casey Fisher', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(71, 4, 'https://via.placeholder.com/800x600.png/006688?text=quidem', 'Otis Denesik', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(72, 2, 'https://via.placeholder.com/800x600.png/003300?text=adipisci', 'Rosie Reynolds', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(73, 26, 'https://via.placeholder.com/800x600.png/007711?text=id', 'Vada Smith', '2', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(74, 40, 'https://via.placeholder.com/800x600.png/008899?text=adipisci', 'Javonte O\'Keefe', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(75, 31, 'https://via.placeholder.com/800x600.png/00cccc?text=et', 'Amiya Fadel', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(76, 33, 'https://via.placeholder.com/800x600.png/0033cc?text=nam', 'Dayne Parker', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(77, 29, 'https://via.placeholder.com/800x600.png/0088bb?text=quia', 'Derrick Jones', '3', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(78, 10, 'https://via.placeholder.com/800x600.png/001199?text=eum', 'Merritt Schmidt', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(79, 10, 'https://via.placeholder.com/800x600.png/009999?text=veniam', 'Leatha Kunze I', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(80, 32, 'https://via.placeholder.com/800x600.png/00aadd?text=dolore', 'Prof. Major Feeney', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(81, 15, 'https://via.placeholder.com/800x600.png/005599?text=qui', 'Ms. Isobel Leffler', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(82, 16, 'https://via.placeholder.com/800x600.png/0099aa?text=et', 'Miss Brenda Bernier I', '4', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(83, 1, 'https://via.placeholder.com/800x600.png/0011dd?text=repellendus', 'Willy Zemlak', '3', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(84, 11, 'https://via.placeholder.com/800x600.png/005522?text=tenetur', 'Mr. Rick Ryan I', '3', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(85, 43, 'https://via.placeholder.com/800x600.png/009911?text=eaque', 'Myron Haley Sr.', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(86, 6, 'https://via.placeholder.com/800x600.png/00dd88?text=quia', 'Roscoe McGlynn', '1', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(87, 10, 'https://via.placeholder.com/800x600.png/0077dd?text=fuga', 'Kristy Pollich', '4', 0, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(88, 20, 'https://via.placeholder.com/800x600.png/005566?text=quis', 'Sierra Wyman', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(89, 42, 'https://via.placeholder.com/800x600.png/004444?text=quia', 'Dr. Una Hilpert', '1', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(90, 3, 'https://via.placeholder.com/800x600.png/005555?text=qui', 'Autumn Ortiz', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48'),
(91, 37, 'https://via.placeholder.com/800x600.png/00ff11?text=ut', 'Leland Mayer', '2', 1, '2022-08-01 10:53:48', '2022-08-01 10:53:48');

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
(1, 'Muhammet ali Kayacan', 'muhammetluna@gmail.com', '2022-08-01 10:53:27', '$2y$10$S3o7zTr08g5sL1UgetEmmurWQmzCH8tG/qPllLigsR35I4Hv3Jmlq', 1, 1, 'U8qxjMZluC', NULL, NULL),
(2, 'Mortimer Veum', 'johnson.ebony@example.net', '2022-08-01 10:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'aUUibVEUox', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(3, 'Kory White', 'aoreilly@example.com', '2022-08-01 10:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 0, '2KoK4QxMYU', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(4, 'Cesar Gutkowski', 'mohr.katrine@example.org', '2022-08-01 10:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, 'Kctl9mthc8', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(5, 'Mr. Rollin Reilly DDS', 'nelda57@example.com', '2022-08-01 10:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 1, 'jibCLRqkvE', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(6, 'Prof. Lesly Rippin I', 'wyman.vandervort@example.net', '2022-08-01 10:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 1, '8CzVxZD3OV', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(7, 'Mrs. Magnolia Kohler', 'ivah.thompson@example.net', '2022-08-01 10:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 1, 'f0cHtk4sn3', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(8, 'Stephan Reynolds', 'gwendolyn71@example.net', '2022-08-01 10:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, '28NwrECrxs', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(9, 'Alverta Goodwin IV', 'kreinger@example.org', '2022-08-01 10:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, '0zstqeRvxJ', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(10, 'Dr. Ricky Dicki V', 'rafael37@example.com', '2022-08-01 10:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, '2J31KcSgfe', '2022-08-01 10:53:27', '2022-08-01 10:53:27'),
(11, 'Shyanne Schoen MD', 'jairo09@example.com', '2022-08-01 10:53:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 0, 'FSDDy5whcW', '2022-08-01 10:53:27', '2022-08-01 10:53:27');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
