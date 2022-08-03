-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 11:51 AM
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
(16, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '2022-07-17 23:00:42'),
(17, 'Syahrur Ramadhan', 'admin', 'user', 'Login', 'Login Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '2022-07-18 14:49:23'),
(18, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '2022-07-18 15:15:56'),
(19, 'Syahrur Ramadhan', 'admin', 'user', 'Login', 'Login Successful', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', '2022-07-18 15:16:41'),
(20, 'Syahrur Ramadhan', 'admin', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-18 15:20:55'),
(21, 'Syahrur Ramadhan', 'admin', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-18 17:06:44'),
(22, 'Syahrur Ramadhan', 'admin', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-18 17:12:07'),
(23, 'Syahrur Ramadhan', 'admin', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-18 17:27:36'),
(24, 'Syahrur Ramadhan', 'admin', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-18 21:27:10'),
(25, 'Syahrur Ramadhan', 'admin', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 11:06:37'),
(26, 'Syahrur Ramadhan', 'admin', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 11:39:45'),
(27, 'Syahrur Ramadhan', 'admin', 'user', 'Logout', 'Logout Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 14:27:56'),
(28, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 14:28:05'),
(29, 'Iyan ', 'iyan', 'user', 'Logout', 'Logout Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 15:24:55'),
(30, 'Darmanto ', 'darmanto', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 15:25:00'),
(31, 'Darmanto ', 'darmanto', 'user', 'Logout', 'Logout Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 15:57:47'),
(32, 'Budiman Indrajaya', 'budiman', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 15:57:55'),
(33, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 16:52:14'),
(34, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 17:02:13'),
(35, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 21:32:22'),
(36, 'Iyan ', 'iyan', 'user', 'Logout', 'Logout Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 22:18:37'),
(37, 'Darmanto ', 'darmanto', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-19 22:18:43'),
(38, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-20 09:43:53'),
(39, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-20 10:08:51'),
(40, 'Iyan ', 'iyan', 'user', 'Logout', 'Logout Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-20 11:10:56'),
(41, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-20 11:11:51'),
(42, 'Iyan ', 'iyan', 'user', 'Logout', 'Logout Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-20 13:55:35'),
(43, 'Budiman Indrajaya', 'budiman', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-20 13:55:42'),
(44, 'Budiman Indrajaya', 'budiman', 'user', 'Logout', 'Logout Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-20 14:26:17'),
(45, 'Darmanto ', 'darmanto', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-20 14:26:35'),
(46, 'Darmanto ', 'darmanto', 'user', 'Logout', 'Logout Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-20 17:59:18'),
(47, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-20 18:00:20'),
(48, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 08:41:48'),
(49, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-21 13:38:15'),
(50, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-22 08:11:45'),
(51, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-22 13:32:08'),
(52, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-22 17:26:11'),
(53, 'Iyan ', 'iyan', 'user', 'Logout', 'Logout Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-22 17:26:24'),
(54, 'Budiman Indrajaya', 'budiman', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-22 17:26:28'),
(55, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-24 17:15:42'),
(56, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-24 18:02:52'),
(57, 'Iyan ', 'iyan', 'user', 'Login', 'Login Successful', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-25 16:10:51');

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
  `read` tinyint(1) NOT NULL,
  `createby` varchar(50) NOT NULL,
  `createdate` datetime DEFAULT current_timestamp(),
  `updateby` varchar(50) NOT NULL,
  `updatedate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `description`, `status`, `flag`, `read`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES
(1, 'Pengajuan Pembelian Laptop', 'Untuk kantor', 'S', 1, 0, 'iyan', '2022-07-14 01:59:06', 'iyan', '2022-07-13 20:58:23'),
(2, 'Pengajuan Pembelian Alat Tulis Kantor', 'Diperuntukkan kepada tim HC & HRD', 'R', 1, 0, 'iyan', '2022-07-17 23:59:18', 'iyan', NULL),
(3, 'Pengajuan Pembelian Proyektor', 'Untuk kebutuhan meeting', 'S', 1, 0, 'firosuddin', '2022-07-18 17:03:46', 'iyan', NULL),
(4, 'Pengajuan Pembelajaran Ilmu Muamalah', 'Untuk kebutuhan karyawan', 'A', 1, 0, 'iyan', '2022-07-19 13:48:29', 'iyan', NULL),
(5, 'Pengajuan Pelatihan Programming', 'Untuk team web developer', 'C', 1, 0, 'iyan', '2022-07-19 14:33:50', 'iyan', NULL),
(6, 'Pengajuan Rekreasi Perusahaan', 'Kebutuhan healing semua karyawan', 'D', 1, 0, 'iyan', '2022-07-21 14:57:25', '', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
