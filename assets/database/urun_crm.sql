-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 02:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urun_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `tablename` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `user_agent` varchar(250) NOT NULL,
  `createdate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `name`, `username`, `tablename`, `action`, `description`, `ip_address`, `user_agent`, `createdate`) VALUES
(1, NULL, NULL, 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-16 23:43:14'),
(2, NULL, 'admin', 'user', 'Login', 'Login Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-16 23:43:49'),
(3, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-16 23:44:15'),
(4, NULL, 'admin', 'user', 'Login', 'Login Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-16 23:46:14'),
(5, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-16 23:46:19'),
(6, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 00:00:18'),
(7, NULL, NULL, 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 00:05:39'),
(8, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 00:20:00'),
(9, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 00:25:21'),
(10, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 00:34:11'),
(11, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 00:47:53'),
(12, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 00:48:58'),
(13, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 00:49:51'),
(14, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 00:51:46'),
(15, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 00:53:20'),
(16, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 23:00:42');

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
  `flag` tinyint(1) NOT NULL,
  `createby` varchar(50) NOT NULL,
  `createdate` datetime DEFAULT current_timestamp(),
  `updateby` varchar(50) NOT NULL,
  `updatedate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`id`, `name`, `description`, `flag`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES
(1, 'admin', 'This is Super Admin', 0, 'system', '2022-07-12 16:20:32', 'System', NULL),
(2, 'approval', 'User Approval', 0, 'admin', '2022-07-12 16:23:47', '', NULL),
(3, 'checker', 'User Checker', 0, 'admin', '2022-07-12 16:24:44', '', NULL),
(4, 'maker', 'User Maker', 0, 'admin', '2022-07-12 16:24:44', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(1) NOT NULL COMMENT 'D = Draft,\r\nS = Submitted,\r\nC = Checked,\r\nA = Approved,\r\nR = Rejected',
  `flag` tinyint(1) NOT NULL,
  `createby` varchar(50) NOT NULL,
  `createdate` datetime DEFAULT current_timestamp(),
  `updateby` varchar(50) NOT NULL,
  `updatedate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `description`, `status`, `flag`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES
(1, 'Pengajuan Pembelian Laptop', 'Untuk kantor', 'D', 1, 'admin', '2022-07-14 01:59:06', '', '2022-07-13 20:58:23'),
(2, 'Pengajuan Pembelian Alat Tulis Kantor', 'Diperuntukkan kepada tim HC', '', 1, 'iyan', '2022-07-17 23:59:18', '', NULL);

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
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `privilege` tinyint(3) NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `createby` varchar(50) NOT NULL,
  `createdate` datetime DEFAULT current_timestamp(),
  `updateby` varchar(50) NOT NULL,
  `updatedate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `phone`, `privilege`, `flag`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES
(1, 'Syahrur', 'Ramadhan', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'info@urun-ri.co.id', '085260905852', 1, 1, 'admin', '2022-07-14 00:21:27', '', NULL),
(2, 'Budiman', 'Indrajaya', 'budiman', '21232f297a57a5a743894a0e4a801fc3', 'budiman@urun-ri.co.id', '', 2, 1, 'budiman', '2022-07-14 01:17:14', '', NULL),
(3, 'Darmanto', '', 'darmanto', '21232f297a57a5a743894a0e4a801fc3', 'darmanto@urun-ri.co.id', '', 3, 1, 'darmanto', '2022-07-14 01:38:51', '', NULL),
(4, 'Iyan', '', 'iyan', '21232f297a57a5a743894a0e4a801fc3', 'iyan@urun-ri.co.id', '', 4, 1, 'iyan', '2022-07-14 01:51:19', '', NULL),
(5, 'Ahmad', 'Raafi', 'ahmad', '21232f297a57a5a743894a0e4a801fc3', 'ahmad.raafi@urun-ri.co.id', '', 2, 1, 'ahmad', '2022-07-17 23:26:42', '', NULL),
(6, 'Rusdi', 'Lutfi', 'rusdi', '21232f297a57a5a743894a0e4a801fc3', 'rusdi.lutfi@urun-ri.co.id', '', 3, 1, 'rusdi', '2022-07-17 23:31:28', '', NULL),
(7, 'Muhammad', 'Firosuddin', 'firosuddin', '21232f297a57a5a743894a0e4a801fc3', 'firosuddin@urun-ri.co.id', '', 4, 2, 'firosuddin', '2022-07-17 23:53:12', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `task`
--
ALTER TABLE `task`
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
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
