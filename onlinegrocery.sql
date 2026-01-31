-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2025 at 10:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinegrocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `confirmpassword` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountid`, `username`, `password`, `confirmpassword`) VALUES
(1, 'admin2', 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageid` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` varchar(25) NOT NULL,
  `quantity` varchar(25) NOT NULL,
  `sub_total` varchar(25) NOT NULL,
  `payment` varchar(25) NOT NULL,
  `created_at` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `fullname`, `address`, `phone`, `email`, `item_name`, `price`, `quantity`, `sub_total`, `payment`, `created_at`) VALUES
(2, 'awe', 'awe', 'awe', 'awe@gmail.com', 'Fresh Farm Eggs', '90.00', '1', '90.00', '', '2025-05-20 15:00:18'),
(3, 'awe', 'awe', 'awe', 'awe@gmail.com', 'Fresh Pandesal', '3.00', '1', '3.00', '', '2025-05-20 15:00:18'),
(7, 'banan', 'milk', 'onion', 'onion@gmail.com', 'Whole Milk', '70.00', '1', '70.00', '', '2025-05-20 15:07:22'),
(8, 'banan', 'milk', 'onion', 'onion@gmail.com', 'Organic Bananas', '69.00', '1', '69.00', '', '2025-05-20 15:07:22'),
(9, 'banan', 'milk', 'onion', 'onion@gmail.com', 'Red Onions', '60.00', '1', '60.00', '', '2025-05-20 15:07:22'),
(10, 'pandesal', 'pandesal', 'pandesal', 'pandesal@gmail.com', 'Fresh Pandesal', '3.00', '1', '3.00', '', '2025-05-20 15:09:00'),
(12, 'order', 'order', 'order', 'oder@gmail.com', 'Fresh Shrimp', '480.00', '1', '480.00', '', '2025-05-20 15:11:50'),
(13, 'order', 'order', 'order', 'oder@gmail.com', 'Sardines', '20.00', '1', '20.00', '', '2025-05-20 15:11:50'),
(14, 'order', 'order', 'order', 'oder@gmail.com', 'Soy Sauce', '18.00', '1', '18.00', '', '2025-05-20 15:11:50'),
(15, 'try', 'try', 'try', 'try@gmail.com', 'Fresh Shrimp', '480.00', '1', '480.00', '', '2025-05-20 15:12:30'),
(16, 'try', 'try', 'try', 'try@gmail.com', 'Corned Beef', '35.00', '1', '35.00', '', '2025-05-20 15:12:30'),
(17, 'try', 'try', 'try', 'try@gmail.com', 'Pork Chops', '260.00', '1', '260.00', '', '2025-05-20 15:12:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
