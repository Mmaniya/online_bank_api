-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2020 at 08:57 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gstcheck`
--

-- --------------------------------------------------------

--
-- Table structure for table `gstimageupload`
--

CREATE TABLE `gstimageupload` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `tokenid` varchar(20) NOT NULL,
  `img1` varchar(50) NOT NULL,
  `img2` varchar(50) NOT NULL,
  `img3` varchar(50) NOT NULL,
  `img4` varchar(50) NOT NULL,
  `img5` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL,
  `uploadtime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gstimageupload`
--

INSERT INTO `gstimageupload` (`id`, `userid`, `content`, `tokenid`, `img1`, `img2`, `img3`, `img4`, `img5`, `status`, `uploadtime`) VALUES
(1, '', '', '', '1579013781076.jpg', '1579013744897.jpg', '', '', '', '', '2020-01-19 13:04:15'),
(2, '', 'dffddffd', '4A2SUHTXS1', '1579013744897.jpg', '1579013781076.jpg', '1579013744897.jpg', '1579013781076.jpg', '1579013744897.jpg', 'pending', '2020-01-19 13:13:36'),
(3, '', '', '', '', '', '', '', '', '', '2020-01-17 13:55:11'),
(4, '', 'sddsdfgfgdhgj', '8FN6FXDKWJ', '', '', '', '', '', '', '2020-01-17 13:55:12'),
(5, '', '', '', '', '', '', '', '', '', '2020-01-17 14:00:38'),
(6, '', 'sdsdsdsdsd', '37RGR5QR2F', '', '', '', '', '', '', '2020-01-17 14:00:38'),
(7, '', '', '', '', '', '', '', '', '', '2020-01-17 14:06:05'),
(8, '', 'sdsdsd', 'TP9446G2PA', '', '', '', '', '', '', '2020-01-17 14:06:05'),
(9, '', '', '', '', '', '', '', '', '', '2020-01-17 14:06:28'),
(10, '', 'dfsdfsfdj', 'LA9UFBUR3B', '', '', '', '', '', '', '2020-01-17 14:06:29'),
(11, '', '', '', '', '', '', '', '', '', '2020-01-17 15:11:41'),
(12, '', 'dfdfdf', 'R7I1HEDJSE', '', '', '', '', '', '', '2020-01-17 15:11:42'),
(13, '', '', '', '', '', '', '', '', '', '2020-01-17 15:13:02'),
(14, '', 'ffgfgfg', '5OC4XNTEIQ', '', '', '', '', '', '', '2020-01-17 15:13:02'),
(15, '', '', '', '', '', '', '', '', '', '2020-01-17 15:16:42'),
(16, 'kavi@gmail.com', 'dfdff', '4FMTW8WSAF', '', '', '', '', '', '', '2020-01-17 15:16:43'),
(17, '', '', '', '', '', '', '', '', 'pending', '2020-01-17 15:56:13'),
(18, 'kavi@gmail.com', 'xdfdfffdfsdffd', '4LO2AKTP2C', '', '', '', '', '', 'pending', '2020-01-17 15:56:14'),
(19, '', '', '', '', '', '', '', '', 'pending', '2020-01-19 11:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `username`, `password`, `created`) VALUES
(1, 'ramu', '987654321', 'ramu@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '2020-01-03 13:07:58'),
(2, 'maniya', '987654321', 'mani@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-12-24 08:04:33'),
(3, 'gokul', '897654321', 'gokul@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-12-24 08:05:16'),
(4, 'aravind', '786543219', 'aravind@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-12-24 08:05:57'),
(5, 'praveen', '987654321', 'praveen@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2020-01-03 10:27:34'),
(7, '12321323', '534535435', '1232321@ewrwr.rtghh', '937828ccc429a683b2aa1d4e03c39587', '2020-01-03 15:55:42'),
(9, 'Gowtham', '919003648956', 'gowtham@mail.com', '4297f44b13955235245b2497399d7a93', '2020-01-09 12:45:54'),
(10, 'maek', '98563214702', 'mark@f.com', '59b67f0c41e586e4c18826381f56e767', '2020-01-10 04:44:22'),
(11, 'kavi', '9876543210', 'kavi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2020-01-17 06:15:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gstimageupload`
--
ALTER TABLE `gstimageupload`
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
-- AUTO_INCREMENT for table `gstimageupload`
--
ALTER TABLE `gstimageupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
