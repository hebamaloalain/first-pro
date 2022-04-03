-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2022 at 12:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'hassan.abunaser10@gmail.com', '1234'),
(3, 'anas@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'shirts', '2021-11-25 21:55:54', '2021-11-25 21:55:54'),
(2, 'coats', '2021-12-04 13:55:27', '2021-12-04 13:55:27'),
(3, 'others', '2022-01-11 15:33:56', '2022-01-11 15:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'hassan.abunaser10@gmail.com', 'is it visible in DATABASE?', '2021-11-25 13:50:28', '2021-11-25 13:50:28'),
(2, 'hassan.abunaser10@gmail.com', 'is it visible in DATABASE? 2', '2021-11-25 13:51:07', '2021-11-25 13:51:07'),
(3, 'hassan.abunaser10@gmail.com', 'welcome', '2021-11-25 17:17:02', '2021-11-25 17:17:02'),
(4, 'hassan.abunaser10@gmail.com', 'hello', '2021-11-25 17:17:55', '2021-11-25 17:17:55'),
(5, 'hassan.abunaser10@gmail.com', '', '2021-11-25 21:28:35', '2021-11-25 21:28:35'),
(8, 'customer10@gmail.com', 'jhjhhjhjjh', '2022-01-12 00:07:04', '2022-01-12 00:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'customer1@gmail.com', '111', '2021-12-30 17:39:06', '2021-12-30 17:39:06'),
(3, 'customer2@gmail.com', '222', '2021-12-30 17:40:45', '2021-12-30 17:40:45'),
(4, 'customer3@gmail.com', '333', '2021-12-30 17:42:35', '2021-12-30 17:42:35'),
(5, 'customer4@gmail.com', '444', '2021-12-30 17:43:57', '2021-12-30 17:43:57'),
(6, 'customer5@gmail.com', '555', '2021-12-30 17:44:42', '2021-12-30 17:44:42'),
(7, 'customer6@gmail.com', '666', '2021-12-30 17:45:56', '2021-12-30 17:45:56'),
(8, 'customer8@gmail.com', '888', '2021-12-30 17:46:26', '2021-12-30 17:46:26'),
(9, 'customer9@gmail.com', '999', '2021-12-30 17:46:46', '2021-12-30 17:46:46'),
(10, 'customer10@gmail.com', '101010', '2021-12-30 17:54:58', '2021-12-30 17:54:58'),
(12, 'qqq@gmail.com', '111', '2022-01-12 09:32:06', '2022-01-12 09:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `total` int(20) NOT NULL,
  `pay_method` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `phone`, `total`, `pay_method`, `created_at`, `updated_at`) VALUES
(1, 0, 'qqq', '962770128765', 300, '', '2021-12-31 13:12:35', '2021-12-31 13:12:35'),
(2, 3, 'www', '+962788591660', 300, '', '2021-12-31 13:17:29', '2021-12-31 13:17:29'),
(3, 3, 'rrr', '+962788591660', 300, '', '2021-12-31 13:27:21', '2021-12-31 13:27:21'),
(4, 3, 'rrr', '+962788591660', 300, '', '2021-12-31 13:28:27', '2021-12-31 13:28:27'),
(5, 3, 'rrr', '+962788591660', 300, '', '2021-12-31 13:29:24', '2021-12-31 13:29:24'),
(6, 3, 'ttt', '53343', 300, '', '2021-12-31 13:29:58', '2021-12-31 13:29:58'),
(7, 3, 'yyy', '333333', 300, '', '2021-12-31 13:36:41', '2021-12-31 13:36:41'),
(8, 3, 'ppp', '4343', 400, '', '2021-12-31 14:06:28', '2021-12-31 14:06:28'),
(9, 1, '', '', 600, 'cash', '2022-01-07 17:59:31', '2022-01-07 17:59:31'),
(10, 1, '', '', 500, 'cash', '2022-01-11 14:21:21', '2022-01-11 14:21:21'),
(11, 1, '', '', 300, 'paypal', '2022-01-11 14:22:04', '2022-01-11 14:22:04'),
(12, 1, '', '', 200, 'paypal', '2022-01-11 14:29:49', '2022-01-11 14:29:49'),
(13, 1, '2a01:9700::132', '962770128765', 600, 'paypal', '2022-01-11 14:32:53', '2022-01-11 14:32:53'),
(14, 1, '', '', 600, 'paypal', '2022-01-11 14:37:21', '2022-01-11 14:37:21'),
(15, 1, 'qqq', '962770128765', 600, 'paypal', '2022-01-11 14:40:36', '2022-01-11 14:40:36'),
(16, 1, '', '', 140, 'paypal', '2022-01-11 17:48:41', '2022-01-11 17:48:41'),
(17, 10, '', '', 50, 'cash', '2022-01-11 21:02:04', '2022-01-11 21:02:04'),
(18, 0, '', '', 0, 'cash', '2022-01-12 00:08:13', '2022-01-12 00:08:13'),
(19, 12, 'qqq', '77777', 50, 'paypal', '2022-01-12 09:41:27', '2022-01-12 09:41:27'),
(20, 1, '', '', 40, 'paypal', '2022-02-03 03:20:26', '2022-02-03 03:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 28, 1, '2021-12-31 13:29:24', '2021-12-31 13:29:24'),
(2, 6, 28, 1, '2021-12-31 13:29:58', '2021-12-31 13:29:58'),
(3, 7, 28, 1, '2021-12-31 13:36:41', '2021-12-31 13:36:41'),
(4, 8, 28, 1, '2021-12-31 14:06:28', '2021-12-31 14:06:28'),
(5, 8, 26, 1, '2021-12-31 14:06:28', '2021-12-31 14:06:28'),
(6, 9, 30, 1, '2022-01-07 17:59:32', '2022-01-07 17:59:32'),
(7, 9, 26, 1, '2022-01-07 17:59:32', '2022-01-07 17:59:32'),
(8, 10, 27, 1, '2022-01-11 14:21:21', '2022-01-11 14:21:21'),
(9, 10, 28, 1, '2022-01-11 14:21:21', '2022-01-11 14:21:21'),
(10, 11, 28, 1, '2022-01-11 14:22:04', '2022-01-11 14:22:04'),
(11, 12, 27, 1, '2022-01-11 14:29:49', '2022-01-11 14:29:49'),
(12, 13, 31, 1, '2022-01-11 14:32:53', '2022-01-11 14:32:53'),
(13, 14, 27, 3, '2022-01-11 14:37:21', '2022-01-11 14:37:21'),
(14, 15, 31, 1, '2022-01-11 14:40:36', '2022-01-11 14:40:36'),
(15, 16, 51, 2, '2022-01-11 17:48:41', '2022-01-11 17:48:41'),
(16, 17, 46, 2, '2022-01-11 21:02:04', '2022-01-11 21:02:04'),
(17, 19, 46, 2, '2022-01-12 09:41:27', '2022-01-12 09:41:27'),
(18, 20, 45, 2, '2022-02-03 03:20:26', '2022-02-03 03:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(44, ' Shirt-1 ', 15, ' uploads/shirt1.jfif ', '  ', 1, '2022-01-11 17:39:07', '2022-01-11 17:39:07'),
(45, 'shirt-2', 20, 'uploads/shirts2.jpeg', '', 1, '2022-01-11 17:39:37', '2022-01-11 17:39:37'),
(46, 'Coat-1', 25, 'uploads/coat1.jpg', '', 2, '2022-01-11 17:40:18', '2022-01-11 17:40:18'),
(47, 'Coat-2', 30, 'uploads/coat2.jpg', '', 2, '2022-01-11 17:41:19', '2022-01-11 17:41:19'),
(48, 'Ring-1', 40, 'uploads/acc1.jpeg', '', 3, '2022-01-11 17:42:11', '2022-01-11 17:42:11'),
(49, 'Ring-2', 30, 'uploads/acc2.jfif', '', 3, '2022-01-11 17:42:30', '2022-01-11 17:42:30'),
(50, 'Watch-1', 60, 'uploads/acc3.jpg', '', 3, '2022-01-11 17:44:01', '2022-01-11 17:44:01'),
(51, 'Watch-2', 70, 'uploads/acc4.jfif', '', 3, '2022-01-11 17:44:26', '2022-01-11 17:44:26'),
(55, 'coat', 17, 'uploads/coat3.jpg', 'adaghhhhgjjdfd', 2, '2022-01-12 09:42:36', '2022-01-12 09:42:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
