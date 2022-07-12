-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 02:42 PM
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
-- Database: `crm.urun`
--

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `firstName`, `lastName`, `gender`, `address`, `dob`) VALUES
(1, 'Airi', 'Satou', 'female', 'Tokyo', '1964-03-04'),
(2, 'Garrett', 'Winters', 'male', 'Tokyo', '1988-09-02'),
(3, 'Johna', 'Doe', 'male', 'Kansas', '1972-11-02'),
(4, 'Tatyana', 'Fitzpatrick', 'male', 'London', '1989-01-01'),
(5, 'Quin', 'Flynn', 'male', 'Edinburgh', '1977-03-24'),
(7, 'Syahrur', 'Ramadhan', 'male', 'Villa Mutiara Cinere', '1994-02-13'),
(8, 'Abu', 'Darda', 'male', 'Krukut', '1994-02-14'),
(9, 'Irwan', 'Riadi', 'male', 'Limo', '1994-02-15'),
(10, 'Warih', 'Priantoro', 'male', 'Grogol', '1994-02-16'),
(11, 'Ummu', 'Zakaria', 'female', 'Blok R', '1994-02-17'),
(12, 'Ummu', 'Yasmin', 'female', 'Blok D', '1994-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createby` varchar(50) NOT NULL,
  `createdate` datetime DEFAULT current_timestamp(),
  `updateby` varchar(50) NOT NULL,
  `updatedate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`id`, `name`, `description`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES
(1, 'admin', 'This is Super Admin', 'system', '2022-07-12 16:20:32', 'System', NULL),
(2, 'approval', 'User Approval', 'admin', '2022-07-12 16:23:47', '', NULL),
(3, 'checker', 'User Checker', 'admin', '2022-07-12 16:24:44', '', NULL),
(4, 'maker', 'User Maker', 'admin', '2022-07-12 16:24:44', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `privilege` tinyint(3) NOT NULL,
  `createby` varchar(50) NOT NULL,
  `createdate` datetime DEFAULT current_timestamp(),
  `updateby` varchar(50) NOT NULL,
  `updatedate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
