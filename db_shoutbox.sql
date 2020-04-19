-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2020 at 12:18 PM
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
-- Database: `db_shoutbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_box`
--

CREATE TABLE `tbl_box` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_box`
--

INSERT INTO `tbl_box` (`id`, `name`, `body`, `time`) VALUES
(1, 'Himal', 'How r u ?', '06:30:00'),
(2, 'Faisal', 'I am going Campus.', '06:32:00'),
(3, 'Kaosar', 'I am online', '07:15:00'),
(4, 'Akbor', '8:30', '08:30:00'),
(5, 'Jahan', 'Sarwar jahan', '04:40:51'),
(6, 'Sahariar', 'Sarwar jahan', '04:40:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_box`
--
ALTER TABLE `tbl_box`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_box`
--
ALTER TABLE `tbl_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
