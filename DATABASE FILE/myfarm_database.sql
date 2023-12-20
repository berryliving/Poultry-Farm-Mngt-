-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 01:48 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myfarm_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `poultry`
--

CREATE TABLE `poultry` (
  `p_id` int(222) NOT NULL,
  `farm_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poultry`
--

INSERT INTO `poultry` (`p_id`, `farm_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 5, 'Chicken Broilers', 'Chicken broilers are a type of domesticated poultry that are specifically bred and raised for their meat. They are typically a cross between different breeds of chickens that have been selectively bred for their ability to', '10000.00', '64777b6b857a7.png'),
(18, 6, 'Chicken and Duck Layers', 'Layers are a type of domesticated poultry that are specifically bred and raised for their eggs. They are typically breeds of chickens that are selected for their ability to produce a high number of eggs over an extended pe', '15000.00', '64777c2c95002.jpg'),
(19, 7, 'Exhibit Runner Ducks', 'Exhibition birds, such as Silkie chickens or Indian Runner ducks, are bred for their beauty and show qualities, while heritage breeds are raised for their unique characteristics and genetic diversity. Poultry is a popular ', '50000.00', '64777cde560fe.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(14, 14, 'in process', 'I am bringing them', '2023-05-31 17:18:21'),
(15, 14, 'closed', 'It is delivered', '2023-05-31 17:18:56'),
(16, 15, 'in process', 'on the way', '2023-05-31 17:20:00'),
(17, 15, 'closed', 'done', '2023-05-31 17:20:43'),
(18, 17, 'in process', 'on the way', '2023-06-01 10:41:54'),
(19, 17, 'closed', 'thank yiu', '2023-06-01 10:44:42'),
(20, 17, 'in process', 'bubu', '2023-06-01 10:45:22'),
(21, 18, 'rejected', 'out of stock', '2023-06-05 12:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `farm_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farm`
--

INSERT INTO `farm` (`farm_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 5, 'MKURANGA AGRI-POULTRY ', 'MkurangaPoultryFarm@gmail.com', '0692792090', 'MkurangaPoultryFarm@gmail.com', '7am', '4pm', 'mon-thu', '  P.O.BOX 2052 MKURANGA    ', '64777ba3aeea8.png', '2023-05-31 16:53:55'),
(6, 6, 'MASHATI AGRI-POULTRY', 'mashati@gmail.com', '0692792090', 'mashati@gmail.com', '6am', '6pm', '24hr-x7', 'P.O.BOX 2052 KILIMANJARO', '647779ff933a9.jpg', '2023-05-31 16:46:55'),
(7, 7, 'DAR AGRI-EXHIBIT FARM', 'daragriex@gmail.com', '0692792090', 'daragriex@gmail.com', '6am', '7pm', 'Mon-Fri', 'P.O.BOX 2052DAR ES SALAAM', '64777a675a64a.jpg', '2023-05-31 16:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `farm_category`
--

CREATE TABLE `farm_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farm_category`
--

INSERT INTO `farm_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'Broiler Farms', '2023-05-31 16:35:40'),
(6, 'Layers Farms', '2023-05-31 16:37:11'),
(7, 'Exhibition Type Farms', '2023-05-31 16:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(8, 'MMANDA', 'Emmanuel', 'Mmanda', 'luneya17@gmail.com', '0692792090', 'e10adc3949ba59abbe56e057f20f883e', 'P.O.BOX 2052 ZANZIBAR\r\nMJINI MAGHARIBI 71000', 1, '2023-05-31 16:02:49'),
(9, 'mosalum', 'mosalum', 'mohamed', 'mosalum24@gmail.com', '0678635302', 'fdcee02b310185d047bae7ea897bf678', 'tabata kimanga', 1, '2023-06-01 10:20:26'),
(10, 'anorld', 'anod', 'norasco', 'anod@gmail.com', '0686652411', 'e10adc3949ba59abbe56e057f20f883e', 'bonyokwa', 1, '2023-06-01 10:23:52'),
(11, 'ganga', 'ganga', 'rovan', 'ganga135@gmail.com', '0766778899', '3f767f568ac379661ccd599bd40b9859', 'kawe', 1, '2023-06-05 12:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(15, 8, 'Chicken and Duck Layers', 2, '15000.00', 'closed', '2023-05-31 17:20:43'),
(16, 8, 'Chicken and Duck Layers', 1, '15000.00', NULL, '2023-05-31 18:23:17'),
(17, 9, 'Chicken and Duck Layers', 1, '15000.00', 'in process', '2023-06-01 10:45:22'),
(18, 11, 'Chicken Broilers', 3, '10000.00', 'rejected', '2023-06-05 12:59:24'),
(19, 11, 'Exhibit Runner Ducks', 3, '50000.00', NULL, '2023-06-05 14:01:53'),
(20, 11, 'Chicken Broilers', 3, '10000.00', NULL, '2023-06-05 14:20:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `poultry`
--
ALTER TABLE `poultry`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farm`
--
ALTER TABLE `farm`
  ADD PRIMARY KEY (`farm_id`);

--
-- Indexes for table `farm_category`
--
ALTER TABLE `farm_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `poultry`
--
ALTER TABLE `poultry`
  MODIFY `p_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `farm`
--
ALTER TABLE `farm`
  MODIFY `farm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `farm_category`
--
ALTER TABLE `farm_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
