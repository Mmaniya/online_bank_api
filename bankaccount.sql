-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2020 at 01:37 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankaccount`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_block`
--

CREATE TABLE `cust_block` (
  `block_id` int(11) NOT NULL,
  `cust_id` varchar(30) NOT NULL,
  `cust_name` varchar(30) NOT NULL,
  `cust_ac` varchar(30) NOT NULL,
  `block_ip` varchar(20) NOT NULL,
  `cust_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_block`
--

INSERT INTO `cust_block` (`block_id`, `cust_id`, `cust_name`, `cust_ac`, `block_ip`, `cust_status`) VALUES
(1, '', '', '', '27.42.201.143', ''),
(2, 'mani123', 'manikandan', '9789452839', '183.231.238.214', ''),
(3, '', '', '', '106.17.144.160', ''),
(4, 'mani123', 'manikandan', '23233333454', '116.211.8.157', '1'),
(5, '', '', '', '13.64.31.133', ''),
(6, 'mani123', 'manikandan', '23233333454', '143.44.36.234', '1'),
(7, '', '', '', '220.5.84.163', ''),
(8, 'mani123', 'manikandan', '23233333454', '207.1.164.110', '1'),
(9, 'mani123', 'manikandan', '23233333454', '71.0.235.177', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cust_info`
--

CREATE TABLE `cust_info` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(30) NOT NULL,
  `cus_name` varchar(50) NOT NULL,
  `cus_address` varchar(50) NOT NULL,
  `cus_gender` varchar(50) NOT NULL,
  `cus_dob` varchar(50) DEFAULT NULL,
  `cus_email` varchar(50) NOT NULL,
  `cus_contactno` varchar(50) NOT NULL,
  `cus_bank` varchar(30) NOT NULL,
  `cus_accountno` varchar(50) NOT NULL,
  `cus_pincode` int(20) NOT NULL,
  `cus_amount` int(20) DEFAULT NULL,
  `cus_ip` varchar(50) DEFAULT NULL,
  `cus_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_info`
--

INSERT INTO `cust_info` (`id`, `cust_id`, `cus_name`, `cus_address`, `cus_gender`, `cus_dob`, `cus_email`, `cus_contactno`, `cus_bank`, `cus_accountno`, `cus_pincode`, `cus_amount`, `cus_ip`, `cus_status`) VALUES
(1, 'mani123', 'manikandan', 'kkdi', 'female', '2020-03-24T18:30:00.000Z', 'ho@admin.com', '9789452839', 'axis', '9876543210', 641022, 1500, '157.51.242.194', '1'),
(2, 'mani123', 'manikandan', 'mdu', 'male', '2020-03-24T18:30:00.000Z', 'hide@admin.com', '23233333454', 'cub', '234544554', 23456, 3400, '157.51.242.194', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cust_reg`
--

CREATE TABLE `cust_reg` (
  `id` int(11) NOT NULL,
  `cus_id` varchar(20) NOT NULL,
  `cus_name` varchar(30) NOT NULL,
  `cus_pass` varchar(50) NOT NULL,
  `cus_cpass` varchar(50) NOT NULL,
  `cus_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_reg`
--

INSERT INTO `cust_reg` (`id`, `cus_id`, `cus_name`, `cus_pass`, `cus_cpass`, `cus_status`) VALUES
(1, '', '', 'd41d8cd98f00b204e9800998ecf8427e', 'd41d8cd98f00b204e9800998ecf8427e', '1'),
(2, 'cust_001', 'manikandan', '07cd55c7b42715ec44c133a6a165e8d2', '07cd55c7b42715ec44c133a6a165e8d2', '1'),
(3, '123456', 'aj', '3b6f421e7550395e28e091c5565ac80a', '3b6f421e7550395e28e091c5565ac80a', '1'),
(4, 'cus1', 'maniya', '07cd55c7b42715ec44c133a6a165e8d2', '07cd55c7b42715ec44c133a6a165e8d2', '1'),
(5, 'mani123', 'manikandan', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cust_trans`
--

CREATE TABLE `cust_trans` (
  `trans_id` int(11) NOT NULL,
  `cus_name` varchar(30) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `cust_acno` varchar(40) NOT NULL,
  `cust_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `cust_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust_block`
--
ALTER TABLE `cust_block`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `cust_info`
--
ALTER TABLE `cust_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cust_reg`
--
ALTER TABLE `cust_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cust_trans`
--
ALTER TABLE `cust_trans`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust_block`
--
ALTER TABLE `cust_block`
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cust_info`
--
ALTER TABLE `cust_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cust_reg`
--
ALTER TABLE `cust_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cust_trans`
--
ALTER TABLE `cust_trans`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
