-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 04:00 PM
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
-- Database: `gadget`
--

-- --------------------------------------------------------

--
-- Table structure for table `buys`
--

CREATE TABLE `buys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buys`
--

INSERT INTO `buys` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'pending', 'cash', 'pending', 'abc', NULL, NULL),
(2, 1, 1, 'pending', 'cash', 'pending', 'and', NULL, NULL),
(3, 1, 1, 'pending', 'cash', 'pending', 'and', NULL, NULL),
(4, 1, 2, 'pending', 'cash', 'pending', 'Dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 2, 1, '2023-04-05 13:43:19', '2023-04-05 13:43:19'),
(5, 1, 1, '2023-04-06 02:33:34', '2023-04-06 02:33:34'),
(6, 3, 1, '2023-04-06 02:35:27', '2023-04-06 02:35:27');

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
(1, '2022_08_18_134014_create_users_table', 1),
(2, '2022_08_18_142532_create_products_table', 1),
(3, '2022_08_18_174759_create_cart_table', 1),
(4, '2022_08_18_183304_create_buys_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Apple-iPhone-14-Pro-Max', '1200', 'SmartPhone', 'Size	6.7 inches\r\nResolution	1290 x 2796 pixels (460 ppi)\r\nTechnology	LTPO Super Retina XDR OLED Touchscreen\r\nProtection	✅ Scratch-resistant ceramic glass, oleophobic coating\r\nFeatures	120Hz, HDR10, Dolby Vision, 2000 nits (max.), Always-On display', '/img/iphone.jpg', '2023-04-05 20:00:28', '2023-04-05 20:00:28'),
(2, 'OnePlus-Nord-2T-5G', '450', 'SmartPhone', 'Size	6.43 inches\r\nResolution	Full HD+ 1080 x 2400 pixels (409 ppi)\r\nTechnology	AMOLED Touchscreen\r\nProtection	✅ Corning Gorilla Glass 5\r\nFeatures	HDR10+, 90Hz refresh rate', '/img/oneplus.jpg', '2023-04-05 20:00:28', '2023-04-05 20:00:28'),
(3, 'Realme-C55', '300', 'SmartPhone', 'Size	6.72 inches\r\nResolution	Full HD+ 1080 x 2400 pixels (392 ppi)\r\nTechnology	IPS LCD Touchscreen\r\nProtection	✖\r\nFeatures	90Hz refresh rate', '/img/realme.png', '2023-04-05 20:09:49', '2023-04-05 20:09:49'),
(4, 'Vivo-V27', '400', 'SmartPhone', 'Size	6.78 inches\r\nResolution	Full HD+ 1080 x 2400 pixels (388 ppi)\r\nTechnology	AMOLED Touchscreen\r\nProtection	✖\r\nFeatures	120Hz refresh rate, HDR10+', '/img/vivo.jpg', '2023-04-05 20:09:49', '2023-04-05 20:09:49'),
(5, 'Apple MacBook Pro 16-Inch M1 Pro Chip 16GB RAM 512GB SSD MK183ZP/A Space Gray 2021', '1700', 'Laptop', 'MPN: MK183ZP/A\r\nModel: MacBook Pro 16-Inch Space Gray 2021\r\nApple M1 Pro Chip (10-core CPU, 16-core GPU, 200GB/s)\r\n16.2\" (3456 x 2234) Liquid Retina XDR Display\r\n16GB RAM, 512GB SSD\r\n1080p FaceTime HD Camera', '/img/mac.jpg', '2023-04-05 20:17:12', '2023-04-05 20:17:12'),
(6, 'Lenovo IdeaPad D330 10IGL Intel CDC N4020 10.1\" HD Touch Laptop', '360', 'Laptop', 'MPN: 82H0001VIN\r\nModel: IdeaPad D330 10IGL\r\nProcessor: Intel Celeron N4020 (4M Cache,1.10 GHz up to 2.80 GHz)\r\nRAM: 4GB DDR4\r\nStorage: 128GB eMMC\r\nDisplay: 10.1\" (1280 x 800) HD Touchscreen', '/img/lenevo.jpg', '2023-04-05 20:22:26', '2023-04-05 20:22:26'),
(7, 'Asus VivoBook 15 E510MA Intel Celeron N4020 15.6\" FHD Laptop', '500', 'Laptop', 'MPN: EJ601T\r\nModel: VivoBook 15 E510MA\r\nIntel Celeron Dual Core N4020 (1.10 GHz up to 2.80 GHz, Cache 4MB)\r\n4GB DDR4 RAM\r\n512GB PCIe G3 SSD\r\n15.6\" FHD (1920X1080) LED Display', '/img/asus.jpg', '2023-04-05 20:22:26', '2023-04-05 20:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'abcd', 'abcd@gmail.com', '$2y$10$RjhhceSdfFXEurkV7ROYLu4DrqHXD7Lpl3NkBP9GJvjhpjqyq4mr.', '2023-04-02 17:09:13', '2023-04-02 17:09:13'),
(2, 'test', 'test@gmail.com', '$2y$10$Lo.eJA2Luq3gNmPB3Jj6GeyG5dbe42DyREME/TCEcVzyw1OzDz6dO', '2023-04-06 07:24:57', '2023-04-06 07:24:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buys`
--
ALTER TABLE `buys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `buys`
--
ALTER TABLE `buys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
