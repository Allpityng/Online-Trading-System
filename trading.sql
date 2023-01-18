-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 01:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trading`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'assets/images/avatars/avatar.png',
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `firstname`, `lastname`, `avatar`, `password`) VALUES
(1, 'admin', 'admin@trading.com', 'Shuaibu', 'Yahaya', 'assets/images/avatars/avatar.png', '$2y$10$.PqcYE8sXVY2IAdbXKzihez/tNfHmJ1h.Cbj0FQ1lw.Z94OZ/IE3y');

-- --------------------------------------------------------

--
-- Table structure for table `advert`
--

CREATE TABLE `advert` (
  `id` int(10) NOT NULL,
  `ad_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `banner` mediumtext NOT NULL,
  `advert_price` int(11) NOT NULL,
  `clicks` int(10) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'In Review',
  `owner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advert`
--

INSERT INTO `advert` (`id`, `ad_id`, `product_id`, `banner`, `advert_price`, `clicks`, `status`, `owner`) VALUES
(1, '8b3bac12926cc1d9fb5d68783376971d', '289dff07669d7a23de0ef88d2f7129e7', '8b3bac12926cc1d9fb5d68783376971d.jpg', 200, 2, 'In Review', 'ibrahim@gmail.com'),
(2, '8722c8f495dcee23f39d5519735e1f71', '289dff07669d7a23de0ef88d2f7129e7', '8722c8f495dcee23f39d5519735e1f71.jpg', 500, 0, 'In Review', 'ibrahim@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` varchar(50) NOT NULL DEFAULT '1',
  `buyer_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Food'),
(2, 'Beverage'),
(3, 'Cement'),
(4, 'Drinks'),
(5, 'Decorations'),
(6, 'Tech');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `seller_id` varchar(50) NOT NULL,
  `buyer_id` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `quantity` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `product_price` int(10) NOT NULL,
  `category_id` varchar(20) NOT NULL,
  `owner` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_id`, `title`, `description`, `product_price`, `category_id`, `owner`) VALUES
(1, '289dff07669d7a23de0ef88d2f7129e7', 'Pizza', 'flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingred', 3000, '1', 'ibrahim@gmail.com'),
(2, '0b8aff0438617c055eb55f0ba5d226fa', 'Iphone 13', 'iPhone 13 mini. Super Retina XDR display; 5.4‑inch (diagonal) all‑screen OLED display; 2340‑by‑1080-', 650000, '6', 'ibrahim@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'assets/images/avatars/avatar.png',
  `delivery_address` varchar(255) NOT NULL DEFAULT 'Customer did not provide address',
  `password` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `phone`, `avatar`, `delivery_address`, `password`) VALUES
(1, 'ibrahim@gmail.com', 'Ibrahim', 'Suleiman', '08166644083', 'assets/images/avatars/ibrahim@gmail.com.png', 'Customer did not provide address', '$2y$10$zcO9y4YGETK/7PeBK2C.FOUtAAwZEsOCse3XSbxvj/A0GKG2sMiPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
