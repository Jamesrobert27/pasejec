-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 22, 2021 at 08:51 AM
-- Server version: 10.3.31-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klegpppj_classified`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads_type`
--

CREATE TABLE `ads_type` (
  `type_id` int(11) NOT NULL,
  `ads_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads_type`
--

INSERT INTO `ads_type` (`type_id`, `ads_type`) VALUES
(1, 'Sale'),
(2, 'Rent'),
(3, 'Booking');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_level` int(11) NOT NULL DEFAULT 0,
  `commision_rate` double(8,2) NOT NULL DEFAULT 0.00,
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `top` int(1) NOT NULL DEFAULT 0,
  `digital` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `level`, `name`, `order_level`, `commision_rate`, `banner`, `icon`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'Fashion & Style', 0, 0.00, '12', 'fashion.png', 1, 1, 0, 'fashion-style', 'Fashion & Style', NULL, '2021-09-18 11:08:24', '2021-05-02 21:43:05'),
(2, 0, 0, 'Food & Markets', 0, 0.00, 'uploads/categories/banner/category-banner.jpg', 'food.png', 1, 0, 0, 'food-and-markets', 'Food and Markets', NULL, '2021-09-18 11:08:18', '2021-05-02 21:45:06'),
(3, 0, 0, 'Real Estate', 0, 0.00, 'uploads/categories/banner/category-banner.jpg', 'properties.png', 1, 1, 0, 'real-estate', 'Real Estate', NULL, '2021-09-18 11:08:53', '2021-05-03 11:26:37'),
(4, 0, 0, 'Health', 0, 0.00, NULL, 'hospitality.png', 1, 0, 0, 'Health-lrB88', 'Health', NULL, '2021-09-18 11:09:30', '2021-05-03 11:30:02'),
(5, 0, 0, 'Home and Furniture', 0, 0.00, NULL, 'furniture.png', 0, 0, 0, 'home-and-furniture-odapt', 'Home and Furniture', NULL, '2021-09-18 11:10:05', '2021-05-03 11:27:14'),
(6, 0, 0, 'Electronics', 0, 0.00, NULL, 'electronics.png', 0, 0, 0, 'Electronics-veeuB', 'Electronics', NULL, '2021-09-18 11:10:26', '2021-05-02 21:37:56'),
(7, 0, 0, 'Employment', 0, 0.00, NULL, 'bussiness.png', 0, 0, 0, 'Employment-j2s57', NULL, 'Employment', '2021-09-18 11:12:57', '2021-05-02 21:38:30'),
(8, 0, 0, 'Automobiles', 0, 0.00, '24', 'automobile.png', 1, 0, 0, 'automobiles-arqcc', 'Automobiles', 'Automobiles', '2021-09-18 11:10:55', '2021-05-03 11:43:51'),
(10, 0, 0, 'Legal Firm', 0, 0.00, NULL, 'services.png', 0, 0, 0, 'Legal-Firm-4tjJZ', 'Legal Firm', NULL, '2021-09-18 11:11:26', '2021-05-02 21:47:00'),
(11, 0, 0, 'Books and Library', 0, 0.00, NULL, 'education.png', 0, 0, 0, 'Books-and-Library-k5hpW', 'books and library', NULL, '2021-09-18 11:11:37', '2021-05-02 21:49:30'),
(12, 0, 0, 'Phone and Accessories', 0, 0.00, NULL, 'gadgets.png', 0, 0, 0, 'Phone-and-Accessories-Th8KQ', 'Phone and Accessories', NULL, '2021-09-18 11:11:54', '2021-05-02 21:50:05'),
(13, 0, 0, 'Software', 0, 0.00, NULL, 'software.png', 0, 0, 1, 'Software-zQln8', NULL, NULL, '2021-09-18 11:12:05', '2021-05-25 18:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `itemid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `categories` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `price` float(10,2) NOT NULL DEFAULT 0.00,
  `price_type` int(11) DEFAULT NULL,
  `ads_type` int(11) DEFAULT NULL,
  `item_cond` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_status` int(11) DEFAULT 0,
  `tag` varchar(255) DEFAULT NULL,
  `views` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `itemid`, `title`, `description`, `categories`, `avatar`, `price`, `price_type`, `ads_type`, `item_cond`, `tags`, `date_added`, `user_id`, `item_status`, `tag`, `views`) VALUES
(1, '653251277294', 'Farmer', 'this is a short description', 3, '', 56000.00, 1, 2, 1, NULL, '2021-09-16 11:51:05', 163, 1, 'tag, here', 0),
(2, '633454063002', 'Farmer', 'this is a short description', 2, 'assets/images/items/330607197960999', 56000.00, 2, 1, 2, NULL, '2021-09-16 11:57:06', 163, 1, 'tag, here', 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_status`
--

CREATE TABLE `item_status` (
  `item_cond_id` int(11) NOT NULL,
  `item_cond` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_status`
--

INSERT INTO `item_status` (`item_cond_id`, `item_cond`) VALUES
(1, 'Used'),
(2, 'New'),
(3, 'Fairly Used');

-- --------------------------------------------------------

--
-- Table structure for table `price_type`
--

CREATE TABLE `price_type` (
  `price_id` int(11) NOT NULL,
  `price_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_type`
--

INSERT INTO `price_type` (`price_id`, `price_type`) VALUES
(1, 'Fixed'),
(2, 'Negotiable');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'default_language', 'english'),
(2, 'app_name', 'Pasejec'),
(4, 'super_email', 'support@pasejec.com'),
(5, 'address', 'LAGOS, Nigeria'),
(6, 'phone', '07031228259'),
(7, 'welcome_msg', 'Classified'),
(8, 'about', '<p><strong>Cheap</strong> <strong>Databundles</strong>, <strong>amazing</strong> <strong><em>airtime</em></strong> <strong><em>discounts</em></strong> <strong>of</strong> <strong>all</strong> <strong>networks</strong>, <strong>Cable</strong> <strong>TV topup, BulkSMS, etc. Join more than 5,000 users on our platform.</strong></p>\r\n'),
(9, 'site_preloader', '0'),
(15, 'currency_code', 'NGN'),
(21, 'google_adsense', '&lt;script data-ad-client=&quot;ca-pub-7446034448857375&quot; async\r\nsrc=&quot;https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js&quot;&gt;&lt;/script&gt;'),
(22, 'home_banner', '649582.jpg'),
(33, 'site_logo', 'logo.png'),
(34, 'site_url', NULL),
(37, 'terms', '*The core value of this company are integrity and excellent service therefore we will play our part to secure your \r\ninformation and wallet on our site and give you instant delivery \r\n\r\n*There will be need to exercise patience when network is not good. There is  no promise of no bug if its from service providers but working on customer satisfaction from our ends and ensuring instant delivery\r\n\r\n*The Company will play our part by securing our  site but not liable to any loss due to exposure of personal details to third party or scammer.\r\n\r\n'),
(38, 'policy', 'There will be  refund for failed delivery confirmed to be true'),
(41, 'visibility', 'Everybody'),
(42, 'announcement', 'Welcome To Recharge Cheap\r\nBuy Your Data, Airtime, Cable Subscriptions and Electricity subscriptions and so on at amazing discounted prices.\r\nUse our auto-payment system to fund your wallet instantly.'),
(43, 'mtn_awuf', '0'),
(44, 'monify_contract', ''),
(45, 'monify_api', 'MK_PROD_CRKTPXRGD8'),
(46, 'monify_secret', 'Q8NHVK2W98QKFWLFBR5GP9JBLFFKAL2J'),
(47, 'smtp_user', 'info@pasejec.klegnews.com'),
(48, 'smtp_host', 'pasejec.klegnews.com'),
(49, 'smtp_port', '465'),
(50, 'smtp_pass', 'W1n*j;#cDEjO'),
(51, 'notification_button_text', 'Fund Wallet'),
(52, 'notification_button_link', 'https://rechargecheap.com/fundwallet'),
(56, 'google_recaptcha_site_key', '6LetGngaAAAAAL2eKC0mMR6tsc5GETtg4b7Qj9W6'),
(57, 'google_recaptcha_secrete_key', '6LetGngaAAAAAO6yIMtI-ll_gi5f9ctH9GSv5ahb'),
(58, 'simhost_pin', '5262'),
(59, 'site_favicon', '803624.jpg'),
(60, 'activation_fee', '500'),
(61, 'google_recaptcha_site_key', NULL),
(62, 'google_recaptcha_secrete_key', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(400) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `picture` varchar(400) NOT NULL,
  `login_state` int(11) DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `logout_date` datetime DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  `activation_status` int(11) NOT NULL DEFAULT 0,
  `bio` longtext DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `reference_code` varchar(255) NOT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `active_sub` int(11) NOT NULL DEFAULT 0,
  `next_sub_date` date DEFAULT NULL,
  `residence_country` varchar(255) DEFAULT NULL,
  `coupon` float(10,2) NOT NULL DEFAULT 0.00,
  `occupation` varchar(255) DEFAULT NULL,
  `invite_link` varchar(255) DEFAULT NULL,
  `referral_code` varchar(200) DEFAULT NULL,
  `total_earnings` float(10,2) NOT NULL DEFAULT 0.00,
  `account_type` int(11) NOT NULL DEFAULT 0,
  `suspend` int(11) NOT NULL DEFAULT 0,
  `sponsor_id` int(11) DEFAULT NULL,
  `dollar_earnings` float(10,2) NOT NULL DEFAULT 0.00,
  `hash_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `role_id`, `firstname`, `lastname`, `name`, `username`, `password`, `email`, `phone`, `picture`, `login_state`, `login_date`, `logout_date`, `status`, `created_at`, `updated_at`, `activation_status`, `bio`, `dob`, `address`, `reference_code`, `login_ip`, `active_sub`, `next_sub_date`, `residence_country`, `coupon`, `occupation`, `invite_link`, `referral_code`, `total_earnings`, `account_type`, `suspend`, `sponsor_id`, `dollar_earnings`, `hash_token`) VALUES
(163, 0, NULL, NULL, 'Olayemi Olawale', 'Topupk', '$2y$10$VL5eh3RmPaPd57QL301HG.Ba09WgXQvypI/Mmd8crcKaK.mc9NrZ2', 'topupkonnect@gmail.com', '', 'https://lh3.googleusercontent.com/a/AATXAJzYYKL1VoeWvmfJx6AvKBeprZlWUIhPe0eupIwX=s96-c', 1, '2021-09-21 11:27:31', NULL, 0, '2021-09-14 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, NULL, '183229845075488', '105.112.178.57', 0, NULL, NULL, 0.00, NULL, NULL, NULL, 0.00, 0, 0, NULL, 0.00, ''),
(164, 0, NULL, NULL, 'Ogundiran Robert', 'Jidex', '$2y$10$p9rV6PBB1y5dS.O4lsPbEuI496HIOcnWxbc1/chf0t3cMuuVqnPbm', 'niyijameson21@gmail.com', '', 'avatar.jpg', 1, '2021-09-15 14:05:58', NULL, 0, '2021-09-15 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, NULL, '189113472618311', '105.112.29.84', 0, NULL, NULL, 0.00, NULL, NULL, NULL, 0.00, 0, 0, NULL, 0.00, NULL),
(165, 0, NULL, NULL, 'robert ogundiran', 'Babajide', '$2y$10$J6jpXC9Soyt7DqLwxxFHa.k8feXf5joHGbhhwBYKPTQP5bfO1JAKK', 'smartrobtech@gmail.com', '', 'avatar.jpg', NULL, NULL, NULL, 0, '2021-09-18 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, NULL, '572140865708678', NULL, 0, NULL, NULL, 0.00, NULL, NULL, NULL, 0.00, 0, 0, NULL, 0.00, NULL),
(166, 0, NULL, NULL, 'Patrick Bwalankay Enangane', 'Pbwalankay', '$2y$10$0210NrQz8OBrBJ8eyrUWoemoBskI0DZG1S62rkUxzXrRHzQdJruVC', 'pbwalankay@gmail.com', '', 'avatar.jpg', 1, '2021-09-21 05:40:10', NULL, 0, '2021-09-18 00:00:00', '0000-00-00 00:00:00', 1, NULL, NULL, NULL, '862610753058530', '169.159.215.26', 0, NULL, NULL, 0.00, NULL, NULL, NULL, 0.00, 0, 0, NULL, 0.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `view_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(255) NOT NULL,
  `date_viewed` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads_type`
--
ALTER TABLE `ads_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_status`
--
ALTER TABLE `item_status`
  ADD PRIMARY KEY (`item_cond_id`);

--
-- Indexes for table `price_type`
--
ALTER TABLE `price_type`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_role_id` (`role_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`view_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads_type`
--
ALTER TABLE `ads_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_status`
--
ALTER TABLE `item_status`
  MODIFY `item_cond_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `price_type`
--
ALTER TABLE `price_type`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
