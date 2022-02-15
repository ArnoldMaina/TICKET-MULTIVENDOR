-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 08:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(5, 'Bruno', 'brunoadmin@gmail.com', '$2y$10$qZ0OoyX8bhAVxDFM/fx8leZSZwlyq15c1C/KTnaqDLSx6eCDJ0VpC', '0'),
(8, 'Harry Den', 'harryden@gmail.com', '$2y$10$YKSDtra7v2wH6ORYfry8Ue9t49pk1AvQvdJGuq4lDvFLEcx.kP6Mq', '0'),
(9, 'ARNOLD MAINA', 'anmaina@gmail.com', '$2y$10$4y5pqbPosH2NBhyCYXz2j.8TuF1kZH6QafeeVKbAK4S3vd3u/SCKq', '0'),
(10, 'ruth njeri', 'anmaina1@gmail.com', '$2y$10$ZoTyXbueXkQ3vnTkBKdobePm5TpW5ud4mkDsowXq.VKAFd.aH0QXy', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(11, 'Nairobi'),
(12, 'Mombasa'),
(16, 'Nakuru'),
(17, 'Thika'),
(18, 'Kisumu'),
(19, 'Eldoret');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(132, 164, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Concerts'),
(3, 'Sports'),
(4, 'Plays'),
(5, 'Art and Gallery'),
(6, 'Expo'),
(14, 'Classes'),
(15, 'Tours and Travel'),
(16, 'RUN/WALK/CYCLING');

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_active` enum('0','1') CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `product_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `VIP_qty` int(100) NOT NULL,
  `VIP_price` int(100) NOT NULL,
  `regular_qty` int(11) NOT NULL,
  `regular_price` int(100) NOT NULL,
  `children_qty` int(11) NOT NULL,
  `children_price` int(100) NOT NULL,
  `advance_qty` int(11) NOT NULL,
  `advance_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `admin_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `VIP_qty`, `VIP_price`, `regular_qty`, `regular_price`, `children_qty`, `children_price`, `advance_qty`, `advance_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(89, 8, 2, 11, 'Churchill', 1000, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'COMEDY SHOW', '1640972994_download.jpg', 'Garden city mall'),
(122, 10, 3, 12, 'UMOCUP', 2500, 5000, 0, 2599, 0, 0, 0, 0, 0, 0, 'SPORT TOURNEY', '1640974202_istockphoto-530810426-612x612.jpg', 'Pamoja grounds'),
(125, 10, 2, 11, 'Luo fest', 1000, 100, 29, 2500, 0, 0, 0, 0, 0, 0, 'cultural festival', '1641066964_mconcert.jpg', 'carnivore'),
(128, 8, 15, 12, 'tembea safaris', 2500, 10, 0, 0, 0, 0, 0, 0, 0, 0, 'travel to maasai mara', '1641239468_download.jpg', 'Maasai Mara'),
(141, 10, 5, 11, 'Utamaduni', 122, 4532, 5731, 77, 5634, 23, 456, 6733, 123, 2345, 'Come see our heritage', '1641288689_download.jpg', 'KICC'),
(164, 0, 16, 11, 'mater heart run', 5000, 5000, 4000, 4000, 3000, 3000, 0, 2000, 1000, 1000, 'Run to save a life', '1642248890_download.jpg', 'Mombasa road'),
(186, 0, 3, 11, 'chapa dimba', 1111, 1111, 2222, 2222, 3333, 3333, 0, 4444, 5555, 5555, 'football tourney', '1643920168_istockphoto-1219371111-612x612.jpg', 'busara ');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Christine', 'Randolph', 'randolphc@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '2133  Hill Haven Drive', 'Terra Stree'),
(2, 'Will', 'Willams', 'willainswill@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '4567  Orphan Road', 'WI'),
(3, 'Demo', 'Name', 'demo@gmail.com', 'password', '9876543210', 'demo ad1', 'ademo ad2'),
(5, 'Steeve', 'Rogers', 'steeve1@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '9876547770', '573  Pinewood Avenue', 'MN'),
(6, 'Melissa', 'Gilbert', 'gilbert@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '7845554582', '1711  McKinley Avenue', 'MA'),
(7, 'ARNOLD', 'MAINA', 'arnoldmaina97@gmail.com', '025bbd09882bb48502b1380251f4e8fc', '1171888308', '1222', '333'),
(8, 'ARNOLDe', 'MAINA', 'chrismatai@gmail.com', 'b55d6d36727f32f0a6f8c157c0224f57', '2718883082', '78741', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `semail` (`email`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`),
  ADD KEY `fk_admin_id` (`admin_id`) USING BTREE;

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
