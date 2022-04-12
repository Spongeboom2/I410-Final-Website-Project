-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 09:23 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronics`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `BrandID` int(11) NOT NULL,
  `BrandName` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`BrandID`, `BrandName`, `created_at`, `updated_at`) VALUES
(1, 'Apple', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Samsung', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Dell', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Lenovo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Alienware', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Test', '2021-12-07 23:03:31', '2021-12-07 23:03:31'),
(11, 'Test2\n', '2021-12-13 15:19:04', '2021-12-13 15:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `desktops`
--

CREATE TABLE `desktops` (
  `DesktopID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `Price` float NOT NULL,
  `model` text NOT NULL,
  `warranty` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desktops`
--

INSERT INTO `desktops` (`DesktopID`, `BrandID`, `Price`, `model`, `warranty`) VALUES
(1, 3, 199.99, 'Dell Desktop Pro ', 1),
(2, 5, 1649.99, 'Alienware Aurora Ryzen', 1),
(3, 1, 600, 'iMac with Intel Core Processor ', 0),
(4, 4, 300, 'Lenovo Flex 5G', 1),
(5, 2, 1199.99, 'Samsun DM530 All-in-one Desktop', 1);

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

CREATE TABLE `laptops` (
  `LaptopID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Warranty` tinyint(4) NOT NULL,
  `Model` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`LaptopID`, `BrandID`, `Price`, `Warranty`, `Model`) VALUES
(1, 4, 199.99, 0, 'Lenovo Laptop Pro'),
(2, 2, 249.99, 1, 'Samsung Chromebook 4'),
(3, 5, 1800, 1, 'Alienware M15 Gaming Laptop'),
(4, 1, 600, 0, 'MacBook Air 13-inch'),
(5, 3, 479.99, 0, 'Dell Inspiron Touch Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_devices`
--

CREATE TABLE `mobile_devices` (
  `MobileID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `Version` varchar(35) NOT NULL,
  `Warranty` tinyint(4) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobile_devices`
--

INSERT INTO `mobile_devices` (`MobileID`, `BrandID`, `Version`, `Warranty`, `Price`) VALUES
(1, 2, 'S21', 1, 199.99),
(2, 1, 'iPhone 11', 1, 499.99),
(3, 3, 'Venue Pro 7', 1, 650),
(4, 2, 'Galaxy 10', 0, 299.99),
(5, 1, 'iPhone 13 pro', 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `smart_watches`
--

CREATE TABLE `smart_watches` (
  `WatchID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `Version` varchar(35) NOT NULL,
  `Warranty` tinyint(4) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smart_watches`
--

INSERT INTO `smart_watches` (`WatchID`, `BrandID`, `Version`, `Warranty`, `Price`) VALUES
(1, 1, 'Apple Watch 2', 0, 500),
(2, 1, 'Apple Watch 7', 1, 199.99),
(3, 2, 'Samsung Galaxy Watch 4', 0, 150),
(4, 1, 'Apple Watch Nike ', 1, 249.99),
(5, 2, 'Samsung Galaxy Active', 0, 109.99);

-- --------------------------------------------------------

--
-- Table structure for table `tablets`
--

CREATE TABLE `tablets` (
  `TabletID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `Version` varchar(35) NOT NULL,
  `Warranty` tinyint(4) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tablets`
--

INSERT INTO `tablets` (`TabletID`, `BrandID`, `Version`, `Warranty`, `Price`) VALUES
(1, 1, 'Apple iPad Pro 1', 0, 700),
(2, 1, 'Apple iPad Air 4', 0, 500),
(3, 2, 'Samsung Galaxy Tab S7', 1, 530),
(4, 3, 'Dell Latitude Business Tablet', 1, 2020),
(5, 4, 'Lenovo Tab M10', 1, 150);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profile_icon` varchar(255) NOT NULL,
  `apikey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `profile_icon`, `apikey`) VALUES
(1, 'peter', '$2y$10$dOVjIe5.uE6I5zln1KphMOF0jsHv20lFOivAPhy7NkA3HQRqgM5cy', 'peter@example.com', 'peter.jpg', 'd0763edaa9d9bd2a9516280e9044d885'),
(2, 'marcia', '$2y$10$sjAyH9aprZnLZRxEjSb7cuq.YY6dbGqStC/uOaxicI71te9LU3Tx.', 'marcia@example.com', 'marcia.jpg', 'd0763edaa9d9bd2a9516280e9044d885'),
(3, 'cindy', '81ba24935dd9a720826155382938610f1b74ba226e85a7b4ca2ad58cf06664fa', 'cindy@example.com', 'cindy.jpg', 'd0763edaa9d9bd2a9516280e9044d885'),
(4, 'mike', '$2y$10$6uAkx9LrPZCoQyRXIq1vQudrafzOA392HsGsPY9hbr8Uvw2DHlMDi', 'mike@example.com', 'mike.jpg', 'd0763edaa9d9bd2a9516280e9044d885');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`BrandID`),
  ADD KEY `BrandID` (`BrandID`);

--
-- Indexes for table `desktops`
--
ALTER TABLE `desktops`
  ADD PRIMARY KEY (`DesktopID`),
  ADD KEY `BrandID` (`BrandID`),
  ADD KEY `DesktopID` (`DesktopID`);

--
-- Indexes for table `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`LaptopID`),
  ADD KEY `BrandID` (`BrandID`);

--
-- Indexes for table `mobile_devices`
--
ALTER TABLE `mobile_devices`
  ADD PRIMARY KEY (`MobileID`),
  ADD KEY `BrandID` (`BrandID`);

--
-- Indexes for table `smart_watches`
--
ALTER TABLE `smart_watches`
  ADD PRIMARY KEY (`WatchID`),
  ADD KEY `BrandID` (`BrandID`);

--
-- Indexes for table `tablets`
--
ALTER TABLE `tablets`
  ADD PRIMARY KEY (`TabletID`),
  ADD KEY `BrandID` (`BrandID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `desktops`
--
ALTER TABLE `desktops`
  ADD CONSTRAINT `desktops_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `brands` (`BrandID`);

--
-- Constraints for table `laptops`
--
ALTER TABLE `laptops`
  ADD CONSTRAINT `laptops_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `brands` (`BrandID`);

--
-- Constraints for table `mobile_devices`
--
ALTER TABLE `mobile_devices`
  ADD CONSTRAINT `mobile_devices_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `brands` (`BrandID`);

--
-- Constraints for table `smart_watches`
--
ALTER TABLE `smart_watches`
  ADD CONSTRAINT `smart_watches_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `brands` (`BrandID`);

--
-- Constraints for table `tablets`
--
ALTER TABLE `tablets`
  ADD CONSTRAINT `tablets_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `brands` (`BrandID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
