-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Ağu 2022, 15:29:13
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
(1, 1, 'Turkey', 'Istanbul', '3400', 'Turkey lorem ipsum lorem ipsum avcılar', 0, 'xphItWQ7j4', NULL, NULL),
(2, 8, 'Lake Albert', 'Labadieport', '8', '806 Willow Port Suite 211\nKihntown, NJ 71591-7236', 1, 'ujlQwJsL21', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(3, 3, 'West Nannie', 'East Tressie', '2', '876 Mitchell Cliffs\nNew Christophe, MT 05664-1720', 0, 'GCz1Jr4rZO', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(4, 8, 'West Makennafort', 'Melodyberg', '8', '7493 Mozell Vista\nPurdymouth, TN 40768-6017', 0, 'lmOsKrJlak', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(5, 8, 'South Fannyfort', 'Willmsburgh', '1', '613 Christopher Circles Suite 576\nEast Garrett, CO 45133-8435', 0, '3T1knWdfVU', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(6, 3, 'West Dockfort', 'Bartonfort', '9', '20464 Gay Extensions\nPort Helen, MI 60261-6856', 1, 'HdEnANmx3q', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(7, 4, 'Port Glennie', 'Ebertside', '2', '748 Adams Roads Apt. 037\nElizaview, UT 08602-5600', 1, 'aEy7KlURGk', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(8, 4, 'West Faefurt', 'Lake Electa', '7', '291 Leffler Underpass Apt. 462\nNew Adriana, TX 37269-8925', 1, 'LXxv0eM0p9', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(9, 4, 'Wilfredomouth', 'Hamilltown', '3', '84632 Labadie Hill Apt. 605\nBorerberg, ME 73154', 0, 'b6XguNpLoV', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(10, 7, 'Marleeview', 'North Celestino', '2', '25210 Candace Parkways\nNorth Emelia, KS 31828', 1, 'YfLAAcMdSx', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(11, 1, 'South Dillonport', 'West Tracey', '6', '13855 Corine Turnpike Apt. 661\nDuBuquemouth, MD 62473-7250', 0, '7kRANGrTvc', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(12, 6, 'East Clotilde', 'Lazaroport', '8', '4956 Johns Parkway\nNew Jacinthe, NJ 21423-1496', 0, 'agaQkQiPUB', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(13, 1, 'Wisokyside', 'Brakusmouth', '7', '70243 Monte Port Apt. 009\nRobelhaven, NE 42594', 0, 'aKiiZN36TC', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(14, 8, 'North Libby', 'East Maybelleshire', '7', '100 Mario Meadow Suite 389\nFlavieborough, IL 64112', 0, 'h85IelHnHP', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(15, 3, 'West Gailmouth', 'Weissnatmouth', '7', '74379 Earnest Dam Apt. 650\nAnnabelland, TX 27925', 0, 'm8fmG3PWEL', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(16, 4, 'Kshlerinhaven', 'Wisokyfurt', '1', '639 Keeling Springs Suite 291\nAlicefort, VT 38117-7878', 1, '8i6i5q7GqB', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(17, 7, 'South Isac', 'New Odellberg', '8', '5969 Mills Causeway\nEthelynport, MO 43153-4027', 1, 'UJZZrszhvm', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(18, 6, 'East Clarkmouth', 'South Shanie', '8', '301 Kertzmann Well\nProsaccoborough, TN 04917', 1, 'Eu6Cqy72N3', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(19, 4, 'Corineview', 'New Bessie', '3', '3892 Gerry Green\nSouth Alenefurt, FL 20150-8051', 1, 'OVRDqYAsEi', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(20, 6, 'Koreyhaven', 'West Crystel', '1', '973 Jacobs Fords Suite 421\nNorth Josephinemouth, DC 12290-3823', 1, 'QmKz6UceaJ', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(21, 6, 'Mauricioberg', 'North Ross', '7', '993 Jordane Circles\nNorth Christellestad, ID 19206', 1, 'nO4Wyju7KX', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(22, 5, 'Baumbachview', 'Wildermanberg', '2', '854 Stiedemann Road\nJerdeview, WY 03354', 1, '8S3zBDOnJ6', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(23, 7, 'New Julianafort', 'South Anthonyton', '7', '85034 Theresia Prairie Suite 097\nEast Jaydonland, CA 54553', 0, 'QwNuVeZWh9', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(24, 6, 'Sipeshaven', 'Rutherfordmouth', '5', '8488 Jordane Wells Suite 081\nNorth Scarlettstad, FL 66041', 1, 'NwaBrCQmTY', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(25, 10, 'West Arifort', 'O\'Konport', '6', '83107 Upton Spur\nEast Brantmouth, IA 31176', 1, 'jhU7mvcV9M', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(26, 2, 'West Eula', 'East Demetrisshire', '9', '96157 Jasen Rapids\nKearashire, WV 78548', 1, 'qMKVUclhrY', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(27, 9, 'North Elvieside', 'Kertzmannfort', '2', '1550 Rylee Estate\nZacharyberg, IA 13278-4920', 1, 'CuA9EmLBBw', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(28, 3, 'Reichertmouth', 'McLaughlinport', '4', '27796 Linda Mews\nPfefferburgh, WV 61254-1295', 1, 'nqRivEBPfL', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(29, 4, 'Bartolettifurt', 'New Efren', '7', '7027 Balistreri Junction Suite 621\nMaggiomouth, NC 88979', 1, 'EB0cQgDXH6', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(30, 1, 'Leathabury', 'South Reuben', '2', '98258 Merle Canyon\nAlvertaton, AL 89136', 1, 'LIgV8EMnwy', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(31, 6, 'East Katrinaport', 'South Remington', '9', '63209 Vida Greens\nConnerchester, RI 41919', 1, 'YU7aXfQt7y', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(32, 3, 'Hyatthaven', 'Schmelerfort', '9', '828 Herman Camp Suite 420\nFaybury, ME 03853', 1, '5dLol8SpJq', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(33, 8, 'Zboncaktown', 'Zoeberg', '7', '756 Reichel Manors Suite 603\nRobertsborough, AR 07046', 1, 'bid4YGxxrn', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(34, 3, 'Heidenreichchester', 'Clementinaburgh', '3', '33141 Merle Mountains Apt. 175\nJonestown, CT 27615', 0, 'GC8B21Mzbq', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(35, 7, 'North Yvettestad', 'Lake Vesta', '9', '567 Lesley Row Suite 593\nDimitrichester, CA 26349', 0, '6YnpONmDRX', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(36, 8, 'West Carmellaville', 'Lake Cadenshire', '6', '191 Fermin Brook\nD\'Amorechester, NH 72375', 1, 'OOtXrhrsSA', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(37, 6, 'Lake Nikko', 'Burdettemouth', '4', '808 Tabitha Mall\nNew Charlestown, NV 06675-7960', 1, '97EJEspRo2', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(38, 3, 'Port Bradford', 'Talonmouth', '6', '1197 Considine Ridge Apt. 833\nWest Tatyana, WI 99491', 1, 'M7sX8a57DB', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(39, 10, 'West Damianfurt', 'East Quincyberg', '2', '110 Shields Rest Suite 631\nWest Nella, VT 85705', 0, 'nd23rjpMxa', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(40, 1, 'Chasityport', 'South Polly', '2', '26712 Nelson Mountain\nWest Violetburgh, WI 97151', 1, 'zRdcCkEbBz', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(41, 7, 'West Stephen', 'Dewayneburgh', '6', '35420 Graciela Mill Suite 310\nVincenzaburgh, NV 47157', 0, 'elVR2R1rA1', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(42, 3, 'West Lawsonhaven', 'North Maribel', '7', '528 Gregoria Mews\nMohammadville, MO 21714', 1, 'ViwJpVz5wx', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(43, 8, 'Trevahaven', 'Enochtown', '1', '31170 Purdy Turnpike\nNorth Karson, TX 65182-8271', 0, 'uXaF1MCcOy', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(44, 3, 'Irvingview', 'Kobyshire', '6', '69746 Sipes Run\nWest Maudfurt, VT 37381', 1, 'U1HvTovbAY', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(45, 5, 'East Brad', 'Hintzland', '1', '23767 Hirthe Green\nPort Fayborough, AR 91088', 0, 'RTBUuYX9uh', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(46, 9, 'Lake Treverview', 'New Justus', '3', '534 Gunner Fork Apt. 817\nMcGlynnville, MD 24944', 1, '6o9F5M2P6y', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(47, 1, 'South Guadalupe', 'West Cassandrehaven', '9', '5936 Walker Ramp Apt. 170\nSouth Jensenshire, CT 17575', 0, '042JgHaEG0', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(48, 7, 'Port Mattiehaven', 'Giovannaville', '3', '5175 Paula Motorway Apt. 750\nNorth Carrollstad, DE 63015-9711', 0, 'wBxHob8Z9J', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(49, 8, 'O\'Keefeburgh', 'Jeffreyberg', '2', '805 Maya Stravenue\nNew Isabella, SD 19748', 0, 'fe2420ohCA', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(50, 8, 'O\'Haraview', 'Hansenborough', '2', '92972 Erika Port Apt. 061\nAltheahaven, AZ 94762-2188', 1, 'MH8JTXymYI', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(51, 4, 'Lake Moriah', 'Shaniyahaven', '1', '5665 Barrows Courts Apt. 000\nHirammouth, ME 70747', 1, 'lOYzkXJoI6', '2022-07-29 11:31:17', '2022-07-29 11:31:17');

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
(4, 'Sit nihil sit quod.', 'sit-nihil-sit-quod', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(5, 'Nihil assumenda et.', 'nihil-assumenda-et', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(6, 'Deserunt voluptas dolorem id.', 'deserunt-voluptas-dolorem-id', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(7, 'Quasi qui provident dolores veniam est fugit.', 'quasi-qui-provident-dolores-veniam-est-fugit', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(8, 'Dolores perferendis inventore pariatur.', 'dolores-perferendis-inventore-pariatur', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(9, 'Ipsum unde molestiae est recusandae.', 'ipsum-unde-molestiae-est-recusandae', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(10, 'Aspernatur quia harum.', 'aspernatur-quia-harum', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(11, 'Tempora nesciunt adipisci.', 'tempora-nesciunt-adipisci', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17');

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
(9, '2022_08_01_131055_create_carts_table', 2),
(10, '2022_08_01_131519_create_cart_details_table', 3),
(11, '2022_08_01_131906_create_orders_table', 3),
(12, '2022_08_01_132123_create_order_details_table', 4);

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
(2, 8, 'Ipsa.', 823.00, 714.00, 'Iure distinctio qui ea pariatur sunt nesciunt quia. Officiis eos veritatis est. Illo suscipit est nesciunt eum.', 'Voluptatem eum unde dolore laudantium. Labore alias qui est unde. Minus similique quia fuga culpa nulla assumenda quia.', 'ipsa', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(3, 9, 'Fugiat.', 147.00, 186.00, 'Doloribus ducimus quasi perferendis. At incidunt iste nesciunt optio ut molestias. Asperiores blanditiis quibusdam eligendi omnis voluptatem hic.', 'Quo assumenda nam et suscipit molestiae officia. Tempore odio aut corporis. Omnis similique ratione omnis assumenda voluptatem sit ut.', 'fugiat', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(4, 2, 'Iure.', 997.00, 238.00, 'Animi est aut recusandae sed nesciunt. Perferendis aut exercitationem ut sed expedita eos voluptate.', 'Laudantium asperiores ipsum qui. Aut maxime perspiciatis exercitationem. Minus aut et aut. Non minus ut temporibus quis quia expedita perspiciatis. Cumque est qui dolorem dolore quia deserunt.', 'iure', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(5, 1, 'Quas nobis ratione.', 622.00, 618.00, 'Accusantium laboriosam incidunt aut et vel et. Autem suscipit blanditiis nobis quis. Nesciunt omnis in qui tempora.', 'Dolores dolorem labore repellat dicta deserunt vitae. Eum mollitia est ut enim vero distinctio ipsa. Quidem tempora et et nam. Est aliquam nemo ducimus praesentium nihil.', 'quas-nobis-ratione', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(6, 6, 'Rerum accusamus rem cumque.', 399.00, 817.00, 'Dolore voluptatem voluptatem hic facere voluptatibus voluptatem sed. Aut totam similique quo ratione accusamus aliquid. Nihil enim excepturi ducimus suscipit minus quasi.', 'Animi nobis id tenetur et vero dolor. Ut deleniti iure ullam at. Quia quia quis dolor dolores molestias sit est.', 'rerum-accusamus-rem-cumque', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(7, 6, 'Quae placeat et.', 110.00, 831.00, 'Deleniti placeat est officia veritatis atque. Voluptatem vero iste accusamus.', 'Quo cumque occaecati quibusdam cupiditate quia culpa numquam. Quia dolorem provident magnam dolor. Ex aut est laudantium molestiae.', 'quae-placeat-et', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(8, 10, 'Soluta.', 886.00, 269.00, 'At ut dolore reiciendis qui aut quas quaerat. Aut doloribus rerum autem veniam possimus. Amet est repellendus et. Tenetur voluptas et modi perspiciatis quis. Voluptatem tenetur quo enim id.', 'Doloremque et repellendus officiis veritatis ipsa sapiente. Quisquam nemo omnis eos unde. Placeat dolores cum unde maiores eligendi optio. Adipisci eum odit corrupti.', 'soluta', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(9, 5, 'Neque voluptatum numquam.', 380.00, 273.00, 'Et et officia doloremque quibusdam tempora. Aut et aperiam nihil qui beatae. Quia aliquam consequatur iure natus provident qui a facere. Rem et atque neque.', 'Sit praesentium qui delectus eos ducimus. Quis explicabo aut rerum hic. Temporibus dolores facere est in quas sit non voluptatem. Officia quo et eveniet minima labore voluptas dolores.', 'neque-voluptatum-numquam', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(10, 1, 'Aut.', 908.00, 571.00, 'Veniam unde quae est in optio ducimus. Qui quod dolor occaecati deleniti. Dolore reiciendis porro fuga sunt dolores atque in. Numquam minima dolorem sit vel eius et eos sint.', 'Earum officia harum eos voluptates enim voluptatem veniam. Atque consequuntur fugit et.', 'aut', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(11, 3, 'Est pariatur.', 742.00, 750.00, 'Et alias culpa quasi et ea. Molestiae eos excepturi eaque maxime error. Voluptatem et quia explicabo assumenda incidunt similique quod. Minus quae at similique et magnam.', 'Illo ut omnis velit maiores occaecati et. Dicta et dicta ut voluptates culpa nihil repellendus. Velit est maiores exercitationem laudantium possimus.', 'est-pariatur', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(12, 10, 'Voluptatem optio.', 566.00, 755.00, 'Explicabo possimus eaque porro velit tempora. Saepe non qui ut fuga. Quae voluptas reprehenderit nobis velit ut debitis ipsum. Error magni voluptatibus nihil quia ut ducimus aut.', 'Dolorum ipsum ab vel ex ea excepturi. Rerum similique voluptatum et ullam inventore. Eligendi quia et quia totam totam veniam sunt quisquam.', 'voluptatem-optio', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(13, 7, 'Temporibus nihil.', 248.00, 460.00, 'Omnis ipsum rerum sit asperiores non maiores. Rerum molestias nihil assumenda occaecati sed. Aut qui eos necessitatibus fugit. Est tenetur et numquam quam sint nulla.', 'Unde est expedita nemo et optio quaerat. Asperiores voluptatem ut asperiores ea quae. Quo aut qui perspiciatis repellendus.', 'temporibus-nihil', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(14, 5, 'Assumenda quas.', 18.00, 575.00, 'Et eius aliquam minus quia autem vel. Cumque iusto nam saepe. Molestiae sed eos nihil sequi possimus. Sed sunt est veniam omnis magni reiciendis iure. Tempore corrupti rerum unde in.', 'Error qui et quibusdam id in. Nisi quo excepturi soluta est. Exercitationem quis deleniti voluptas quisquam quaerat sunt dolores.', 'assumenda-quas', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(15, 10, 'Minima.', 217.00, 7.00, 'Libero labore vel laudantium animi. Quisquam sint qui nesciunt aut libero optio et. Dolores perspiciatis nobis molestias a. Velit sunt atque omnis tempora et.', 'Dolor qui sequi sapiente qui. Quidem tenetur laborum quasi qui facere sed laboriosam. Aut dolores quos dolorum non. Blanditiis repellat illo incidunt veritatis delectus deserunt.', 'minima', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(16, 6, 'Voluptatum aut optio accusamus dolores.', 132.00, 617.00, 'Labore voluptas sint similique perspiciatis non sunt rerum. Dolorum tempore est quisquam architecto accusantium. Consequatur perferendis voluptatibus ullam tempore saepe et.', 'Vel dolorum quo illo. Quidem molestiae delectus qui autem sed odit voluptatem. Debitis debitis earum quod eaque nobis aliquam.', 'voluptatum-aut-optio-accusamus-dolores', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(17, 3, 'Quis aliquid.', 446.00, 373.00, 'Porro neque mollitia sunt qui. Temporibus quo eaque autem voluptas accusamus qui nemo alias. Sit et cumque repellendus distinctio.', 'Qui quos recusandae pariatur occaecati. Suscipit itaque ullam fugit quibusdam. Nihil architecto non eos expedita. Et illum voluptatem distinctio sed.', 'quis-aliquid', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(18, 4, 'Culpa illo natus.', 934.00, 248.00, 'Tempora voluptatem voluptas est ut commodi et sint. Aut delectus dignissimos ut delectus aut unde cumque. Enim id a perspiciatis accusamus doloremque et amet.', 'Quaerat est nemo voluptatem aliquam. Doloremque dolorum sint dicta veritatis. Magni illo inventore ut suscipit quidem. Reprehenderit rerum optio consequatur sunt corporis distinctio.', 'culpa-illo-natus', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(19, 3, 'Quo in.', 968.00, 116.00, 'Possimus quis dolor hic reiciendis accusamus ipsam non. Nemo harum voluptas laborum voluptate.', 'Ut maiores doloribus amet rerum magni possimus aliquid. Sed aut repellendus eos. Et repellendus corporis assumenda reiciendis sit repudiandae. Totam asperiores quia nihil est natus laborum eligendi.', 'quo-in', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(20, 4, 'Quia aut.', 673.00, 52.00, 'Et animi saepe deleniti. Eum fuga et et ut. Autem deserunt et ut iste ratione dignissimos. Enim quod minima magni mollitia. Voluptas sed ab deleniti voluptas magnam nam suscipit debitis.', 'Eaque delectus quo ratione. Similique neque consequatur distinctio voluptatum consequatur. Et facilis magni at est.', 'quia-aut', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(21, 1, 'Quam aut.', 710.00, 641.00, 'Et aut id dicta amet eligendi accusamus. Praesentium ad est ipsam aut. Autem sed voluptatem totam ut hic tempora sit.', 'Qui fuga et odio. Magni enim maxime laborum blanditiis id deleniti.', 'quam-aut', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(22, 10, 'Omnis debitis et voluptate.', 382.00, 785.00, 'Ducimus rerum animi sequi autem et autem natus rerum. Sint velit nobis fugiat beatae provident illum. Velit quis aut eos aperiam esse quis voluptas sed.', 'Iste natus est libero nemo qui. Sed necessitatibus libero exercitationem quos mollitia odio culpa. Nostrum consequatur ab praesentium ipsa et commodi maiores cumque. Harum veniam aut dolor.', 'omnis-debitis-et-voluptate', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(23, 10, 'Occaecati et.', 790.00, 998.00, 'Accusantium et deserunt veritatis nobis. Illo reiciendis necessitatibus est blanditiis cum fugiat.', 'Et laboriosam quia dolores dicta voluptatum ut. Deserunt et consectetur dolor ex nisi.', 'occaecati-et', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(24, 7, 'Itaque sed aut.', 196.00, 180.00, 'Qui sequi et quia veritatis omnis dolorum. Labore deserunt quia et rerum qui. Et consequatur nesciunt sapiente aut ut. In voluptas asperiores veniam.', 'Sed laboriosam nam ex ab nisi iusto. Vel ut ut et hic est dolore sed. Velit optio hic aut. Cumque corporis quidem sint autem facilis.', 'itaque-sed-aut', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(25, 1, 'Quod unde.', 509.00, 737.00, 'Accusamus impedit quam et perferendis nam deserunt exercitationem laudantium. Qui sed veniam qui quae reprehenderit labore aut et. Animi dolor qui ea dolores.', 'Expedita voluptatem vel ea. Esse et explicabo id et omnis nesciunt. Blanditiis quis quod est cum eos. Sit voluptatum voluptatem amet sunt accusamus blanditiis suscipit.', 'quod-unde', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(26, 10, 'Autem iste asperiores.', 529.00, 166.00, 'Non dolores ut delectus ut. Ut qui quisquam optio sed nihil repellendus nihil. Quo asperiores neque ipsam itaque nobis amet ut rem. Suscipit et voluptate voluptatibus reprehenderit.', 'Ex doloribus blanditiis provident error accusantium qui consequatur. Blanditiis sed quae voluptas odio quae illum ex. Molestiae ea harum magnam et incidunt.', 'autem-iste-asperiores', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(27, 10, 'Sit eum officia.', 865.00, 574.00, 'Est provident voluptatem sint quia minus. Rerum ea commodi vel ipsum numquam quos et. Quos similique voluptatum vel asperiores et. In voluptates qui laudantium expedita.', 'Molestias modi doloremque nobis reprehenderit est occaecati. Expedita qui soluta sunt quidem. Enim fugit molestiae ad laudantium nulla.', 'sit-eum-officia', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(28, 5, 'Sit nesciunt.', 541.00, 131.00, 'Aut harum minus necessitatibus minus fuga. Quia eum quia est unde aut et autem. Nostrum vitae autem assumenda reprehenderit nesciunt distinctio. Harum excepturi ut voluptas repellendus amet.', 'Quia placeat quia aut. Commodi iure dolorum quod vitae quo non asperiores. Sed sit qui ex hic praesentium. Ea alias ut qui est temporibus ab id ut.', 'sit-nesciunt', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(29, 3, 'Reprehenderit soluta quasi.', 762.00, 305.00, 'Magnam necessitatibus et velit aliquid doloremque natus. Qui totam voluptates dolores omnis aperiam. Est labore ut repellendus. Quis doloribus modi et at ullam.', 'Qui iste excepturi tenetur asperiores et. Accusantium est sit eos voluptatem occaecati et neque.', 'reprehenderit-soluta-quasi', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(30, 1, 'Est ut.', 875.00, 365.00, 'Dolores id nihil sit labore aut ab quod. Repellat similique aliquam et numquam ea exercitationem omnis. Odit ut dolorum eum nemo. Impedit laudantium qui hic.', 'Qui quasi quo ducimus non itaque dolor. Ad non qui aut voluptatem deserunt et blanditiis. Consequatur quia quod aut corrupti aut debitis.', 'est-ut', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(31, 5, 'Voluptate delectus velit.', 403.00, 712.00, 'Ipsam quo perspiciatis perspiciatis voluptate a. Porro aut possimus non deserunt. Reprehenderit hic vel aut incidunt minus ullam et.', 'Consequuntur quae et et repudiandae. In omnis expedita at non laboriosam ea. Tenetur ut asperiores qui officia.', 'voluptate-delectus-velit', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(32, 6, 'Distinctio consequatur consequatur qui molestias.', 441.00, 313.00, 'Mollitia ex libero minus eveniet eligendi quasi ut. Deleniti non possimus nihil sapiente.', 'Optio sapiente quia omnis. Quas vero laborum quo est non. Dolor et quia reiciendis labore voluptas accusantium. Praesentium doloremque animi nihil alias enim.', 'distinctio-consequatur-consequatur-qui-molestias', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(33, 6, 'Suscipit blanditiis.', 172.00, 666.00, 'Ea esse quisquam mollitia illum maiores. Id dolores tenetur aut asperiores dolore. Doloribus laboriosam pariatur alias consequatur. Excepturi quis deleniti ut impedit quia et.', 'Molestiae hic debitis quidem. Totam sed laudantium magnam rerum. Accusamus neque inventore aut. Alias sunt ducimus asperiores in omnis.', 'suscipit-blanditiis', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(34, 2, 'Minima pariatur.', 259.00, 669.00, 'Quas similique est minus et. Corrupti vel vero fugiat totam neque. Quae autem et tempora qui odio asperiores. Veritatis a et delectus autem. Molestiae ullam velit nisi doloribus harum facilis.', 'Ad id incidunt aperiam consequuntur ex et. Labore sit hic omnis doloribus et id adipisci.', 'minima-pariatur', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(35, 6, 'Illo eveniet assumenda id.', 103.00, 626.00, 'Qui sint voluptatum iste aut neque et. Dolor reiciendis aut dolores molestiae.', 'Consectetur et dolore amet quaerat omnis modi. Consequatur qui harum provident sit. Cupiditate at modi non consequatur explicabo non reprehenderit cum. Quod nihil ab quisquam et soluta eveniet.', 'illo-eveniet-assumenda-id', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(36, 2, 'A praesentium.', 237.00, 100.00, 'Aut voluptatum id error optio excepturi. Labore corporis ullam minus fugit earum dignissimos quia. Blanditiis laboriosam cumque ex sint quidem. Debitis quas voluptate alias expedita vitae.', 'Tempore ducimus a rerum cum ipsam. Quia qui dignissimos ab quidem. Suscipit saepe ut alias est.', 'a-praesentium', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(37, 6, 'Ea et tenetur.', 452.00, 111.00, 'Itaque qui iusto et esse rerum quia magnam. Distinctio est laborum ratione qui perferendis qui dolores. Ut optio est est quidem voluptatibus laudantium voluptatibus. Dolorem fuga ut id ut.', 'Omnis a autem earum rerum. Nihil reprehenderit et est esse facilis illum in totam. Illo iste quia excepturi quas facilis est. Consectetur quos consectetur odio et expedita.', 'ea-et-tenetur', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(38, 7, 'Provident hic officia.', 411.00, 34.00, 'Delectus harum dolores et similique sapiente non. Quae ut vitae praesentium nemo deleniti. Corrupti repellat consequuntur consequuntur cumque porro. Sit dolore est corporis laboriosam quae officiis.', 'Adipisci quis debitis illo adipisci. Officiis aut dolores excepturi saepe porro ab error nostrum. Et unde voluptatem sunt beatae voluptatem.', 'provident-hic-officia', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(39, 9, 'Eveniet ab.', 286.00, 778.00, 'Repellendus consequatur cum in neque. Autem rerum nobis non delectus porro velit. Facilis ut reiciendis cum eveniet rem pariatur. Adipisci autem pariatur non dolores temporibus est sit consequatur.', 'Et enim nostrum sed suscipit temporibus. Libero aut unde et autem qui inventore quibusdam. Culpa veritatis sapiente suscipit nemo accusamus.', 'eveniet-ab', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(40, 3, 'Ut ea odio.', 147.00, 367.00, 'Sint ut quis itaque consequatur. Et ut eaque consectetur rem est at et. Delectus molestiae aut sed voluptates. Libero laudantium non ipsam accusantium omnis.', 'Aut delectus sed eligendi exercitationem ut dignissimos nam earum. Ipsum perspiciatis dolorem et et beatae nesciunt velit. Sed et quis sint qui totam. Id esse iste voluptas temporibus quae.', 'ut-ea-odio', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(41, 10, 'Facere voluptas.', 291.00, 401.00, 'Id voluptas consequatur in inventore perspiciatis. Quaerat est quia et. Facilis qui ut eligendi vel nemo culpa et. Expedita aspernatur nemo excepturi inventore.', 'Reiciendis hic velit sequi et amet eum aut. Modi ipsam optio et occaecati. Porro tenetur eos totam itaque id quam.', 'facere-voluptas', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(42, 9, 'Non excepturi.', 524.00, 436.00, 'Rerum sunt tempore dolorum hic. Quia quia libero quae praesentium dolor. Inventore rerum et sunt iste minus id eligendi.', 'Dolor alias qui aut quidem voluptatem. Reiciendis aperiam tempora et non dolor. Accusantium sit laborum sed consequatur id voluptate officiis.', 'non-excepturi', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(43, 2, 'Tempora explicabo.', 350.00, 430.00, 'Sit voluptate sapiente sunt debitis voluptas odio. Possimus saepe illo aut. Sed aliquam sunt maxime ullam. Aut cumque rerum dignissimos suscipit vel. Voluptas quibusdam veniam hic animi et.', 'Ea recusandae non perspiciatis. Sint voluptatem earum molestiae occaecati at. Soluta et dolorum in minus exercitationem unde. Unde error ipsa et labore omnis.', 'tempora-explicabo', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(44, 8, 'Soluta.', 462.00, 205.00, 'Beatae corrupti veritatis culpa eligendi. Quia rerum qui et eveniet. Facilis tempora dolor voluptatem qui enim. Reprehenderit ut aliquam ut sit.', 'Voluptates quas nesciunt saepe. Corporis amet aut quia esse laudantium aliquid. Voluptatem odit aspernatur numquam doloribus odio enim facilis. Modi est sint perspiciatis totam.', 'soluta', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(45, 5, 'Est animi.', 671.00, 674.00, 'Et dignissimos corporis tenetur neque corporis aut. Quo eum et dicta. Qui nesciunt vero neque dicta dolores unde. Expedita tenetur in dignissimos minus sapiente.', 'Sapiente expedita fuga deserunt unde inventore rerum recusandae earum. In nihil delectus velit aliquid facilis. Assumenda aut totam qui architecto aut vero. Necessitatibus consectetur illo placeat.', 'est-animi', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(46, 2, 'Dolorem tempora placeat.', 841.00, 331.00, 'Esse in ut minus qui ex fugit nam. Et tenetur sunt reprehenderit id. Eos ad excepturi et.', 'Ut repudiandae nulla nihil labore. Architecto porro voluptas delectus. Sit expedita architecto assumenda sit praesentium fugiat.', 'dolorem-tempora-placeat', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(47, 6, 'Unde vel.', 750.00, 717.00, 'Eos in sunt ratione recusandae eligendi aut est. Sit doloribus aut totam vel. Consequatur suscipit ipsum quo neque eius. Sint non ea error non voluptatem quaerat.', 'Et qui ea minima blanditiis. Non vel omnis unde dolor. Ratione incidunt et et culpa aut.', 'unde-vel', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(48, 10, 'Et ex.', 771.00, 677.00, 'Consequuntur repellendus quis eius et. Provident aut ut aut repellat eveniet dolorum est quia.', 'Fugiat fuga autem consequatur non eveniet quasi et. Quidem et quia officiis debitis nemo repellat doloribus. Vel omnis ut ut voluptatem eveniet fuga magni sed. Rem commodi dolor magnam mollitia.', 'et-ex', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(49, 4, 'Fuga ipsum sed aut.', 367.00, 21.00, 'Excepturi earum quis dolor quia enim quia et. Impedit qui incidunt dolorem harum. Rerum facilis possimus nisi tenetur magnam voluptatem assumenda.', 'Rerum qui quas earum quo et omnis est. Facere dolor inventore fugit fuga consectetur quo cumque. Voluptatem architecto non rerum sint laudantium et ut.', 'fuga-ipsum-sed-aut', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(50, 7, 'Aspernatur vel.', 827.00, 677.00, 'Ut amet quia sed sequi voluptatum nesciunt est labore. Qui saepe delectus adipisci sunt omnis. Aliquid sint quos veritatis ab nam. Eos dolorem odit temporibus.', 'Rerum et aut et culpa ipsam quae. Animi nostrum non assumenda ipsum dicta corporis. Dignissimos in quia et laboriosam aliquam illum modi. Aut quaerat sint et.', 'aspernatur-vel', 0, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(51, 6, 'Ipsa in.', 155.00, 948.00, 'Aliquam et nostrum odit nostrum vitae cupiditate dolorem at. Exercitationem rem corporis aut. Sunt repellendus voluptatum dolorum dicta voluptas doloremque praesentium.', 'Est officiis et consectetur beatae sunt sed eos voluptatem. Et ut doloremque quasi odio. Voluptate itaque quia exercitationem est aut cumque perspiciatis. Eos inventore quos occaecati ut eius.', 'ipsa-in', 1, NULL, '2022-07-29 11:31:17', '2022-07-29 11:31:17');

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
(2, 38, 'https://via.placeholder.com/800x600.png/0066ee?text=rerum', 'Mr. Davion Olson', '4', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(3, 18, 'uploads/ddss.jpg', 'ddss', '3', 1, '2022-07-29 11:31:26', '2022-08-01 09:59:28'),
(4, 1, 'https://via.placeholder.com/800x600.png/00dd33?text=minus', 'Friedrich Lindgren II', '3', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(5, 47, 'https://via.placeholder.com/800x600.png/0044dd?text=molestiae', 'Orpha Steuber', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(6, 23, 'https://via.placeholder.com/800x600.png/00ee00?text=magni', 'Tina Kozey', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(7, 8, 'https://via.placeholder.com/800x600.png/0066dd?text=temporibus', 'Melvina Lesch', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(8, 4, 'https://via.placeholder.com/800x600.png/00cc77?text=architecto', 'Baby Hammes', '1', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(9, 31, 'https://via.placeholder.com/800x600.png/00eeaa?text=accusantium', 'Dr. D\'angelo Lebsack', '3', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(10, 2, 'https://via.placeholder.com/800x600.png/003355?text=fugit', 'Dr. Marilie Doyle', '1', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(11, 13, 'https://via.placeholder.com/800x600.png/0066ff?text=voluptas', 'Maggie Littel', '1', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(12, 16, 'https://via.placeholder.com/800x600.png/000000?text=quia', 'Velma Bartell', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(13, 18, 'https://via.placeholder.com/800x600.png/004422?text=ea', 'Lindsay Franecki DVM', '3', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(14, 42, 'https://via.placeholder.com/800x600.png/0033bb?text=pariatur', 'Mike McClure', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(15, 44, 'https://via.placeholder.com/800x600.png/001166?text=dolorum', 'Twila Sauer', '3', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(16, 19, 'https://via.placeholder.com/800x600.png/00dd44?text=et', 'Prof. Macey Willms PhD', '4', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(17, 22, 'https://via.placeholder.com/800x600.png/007722?text=et', 'Patrick Jenkins', '4', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(18, 24, 'https://via.placeholder.com/800x600.png/002277?text=aut', 'Damien Hartmann', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(19, 2, 'https://via.placeholder.com/800x600.png/006666?text=enim', 'Trenton Bogisich', '1', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(20, 20, 'https://via.placeholder.com/800x600.png/007766?text=est', 'Violet Macejkovic', '1', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(21, 22, 'https://via.placeholder.com/800x600.png/0055ee?text=laborum', 'Eliane Monahan DVM', '4', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(22, 14, 'https://via.placeholder.com/800x600.png/0000bb?text=debitis', 'Sydney Hand', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(23, 42, 'https://via.placeholder.com/800x600.png/005577?text=sed', 'Terrance Murphy', '3', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(24, 9, 'https://via.placeholder.com/800x600.png/002288?text=accusamus', 'Colten Schamberger', '1', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(25, 1, 'https://via.placeholder.com/800x600.png/0066ff?text=dolorum', 'Mr. Cleve Hills DDS', '3', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(26, 15, 'https://via.placeholder.com/800x600.png/00ffcc?text=officiis', 'Lura Pouros', '3', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(27, 37, 'https://via.placeholder.com/800x600.png/00dd77?text=exercitationem', 'Prof. Brittany Jerde', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(28, 33, 'https://via.placeholder.com/800x600.png/0033ee?text=harum', 'Clara Lowe II', '2', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(29, 32, 'https://via.placeholder.com/800x600.png/00ff11?text=maxime', 'Sierra Bartell', '4', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(30, 36, 'https://via.placeholder.com/800x600.png/000011?text=ea', 'Reta Braun', '4', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(31, 20, 'https://via.placeholder.com/800x600.png/00ffff?text=veniam', 'Una Mueller', '1', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(32, 46, 'https://via.placeholder.com/800x600.png/0000ff?text=sequi', 'Emma Kovacek', '1', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(33, 46, 'https://via.placeholder.com/800x600.png/0066bb?text=vitae', 'Mr. Jaime Runolfsson III', '4', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(34, 8, 'https://via.placeholder.com/800x600.png/005588?text=dolores', 'Helga Jacobi', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(35, 39, 'https://via.placeholder.com/800x600.png/007744?text=in', 'Asia Terry', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(37, 26, 'https://via.placeholder.com/800x600.png/0011cc?text=necessitatibus', 'Alize Borer', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(38, 34, 'https://via.placeholder.com/800x600.png/00cc00?text=temporibus', 'Rory Lakin', '4', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(39, 23, 'https://via.placeholder.com/800x600.png/006622?text=quas', 'Mr. Foster Walter', '2', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(40, 34, 'https://via.placeholder.com/800x600.png/008855?text=repudiandae', 'Mara Marks', '4', 0, '2022-07-29 11:31:26', '2022-07-29 11:31:26'),
(41, 2, 'https://via.placeholder.com/800x600.png/003344?text=hic', 'Mr. Rolando Haley', '1', 1, '2022-07-29 11:31:26', '2022-07-29 11:31:26');

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
(1, 'Muhammet ali Kayacan', 'muhammetluna@gmail.com', '2022-07-29 11:31:17', '$2y$10$S3o7zTr08g5sL1UgetEmmurWQmzCH8tG/qPllLigsR35I4Hv3Jmlq', 1, 1, 'GaE95wh9hi', NULL, NULL),
(2, 'Rachael Baumbach', 'houston86@example.org', '2022-07-29 11:31:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, 'BET7T4BX40', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(3, 'Nicholaus Wolff', 'krystal65@example.net', '2022-07-29 11:31:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 1, 'yg7cxMYr5w', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(4, 'Dr. Brycen Hermann', 'tianna88@example.com', '2022-07-29 11:31:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 0, '8Led1U2NPl', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(5, 'Geo Greenfelder', 'yshields@example.com', '2022-07-29 11:31:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, 'BpF9I6n9a5', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(6, 'Arnulfo Predovic Jr.', 'pdickinson@example.org', '2022-07-29 11:31:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 0, 'H25JoHvPE4', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(7, 'Claudine Bergstrom', 'anissa.mcdermott@example.net', '2022-07-29 11:31:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 1, 'KgepmjMRrv', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(8, 'Mr. Shad Kshlerin', 'dibbert.bobby@example.com', '2022-07-29 11:31:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 0, 'Eln7Rf2anj', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(9, 'Geoffrey Hudson', 'bryce76@example.org', '2022-07-29 11:31:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 0, 'Uq3eMK9g6z', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(10, 'Ara Collins V', 'terence96@example.org', '2022-07-29 11:31:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 1, '3tVKYDTeVe', '2022-07-29 11:31:17', '2022-07-29 11:31:17'),
(11, 'Ms. Maryse Collins PhD', 'missouri99@example.net', '2022-07-29 11:31:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 0, 'B22qclJQFX', '2022-07-29 11:31:17', '2022-07-29 11:31:17');

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
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `image_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
