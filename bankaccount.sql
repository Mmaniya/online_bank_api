-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2020 at 02:59 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

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
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(30) NOT NULL,
  `cust_ac` varchar(30) NOT NULL,
  `block_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `block_ip` varchar(20) NOT NULL,
  `cust_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `cus_contactno` varchar(50) NOT NULL,
  `cus_accountno` varchar(50) NOT NULL,
  `cus_pincode` int(20) NOT NULL,
  `cus_amount` int(20) DEFAULT NULL,
  `cus_ip` varchar(50) DEFAULT NULL,
  `cus_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_info`
--

INSERT INTO `cust_info` (`id`, `cust_id`, `cus_name`, `cus_address`, `cus_gender`, `cus_dob`, `cus_contactno`, `cus_accountno`, `cus_pincode`, `cus_amount`, `cus_ip`, `cus_status`) VALUES
(1, '', '', '', '', NULL, '', '', 0, 0, '', '1'),
(2, 'cust_001', 'manikandan', 'fddf', 'female', '2020-02-12T18:30:00.000Z', '3232232', '4334', 4344, 3434, '157.46.99.47', '1'),
(3, '123456', 'aj', '', '', NULL, '', '', 0, 0, '157.46.99.47', '1'),
(4, 'cus1', 'maniya', 'sddd', 'male', '2020-02-13T18:30:00.000Z', '333445', '4555656', 2332, 3677, '157.46.99.47', '1');

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
(4, 'cus1', 'maniya', '07cd55c7b42715ec44c133a6a165e8d2', '07cd55c7b42715ec44c133a6a165e8d2', '1');

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
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cust_info`
--
ALTER TABLE `cust_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cust_reg`
--
ALTER TABLE `cust_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cust_trans`
--
ALTER TABLE `cust_trans`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
