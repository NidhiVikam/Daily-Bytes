-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 05:12 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newspaper`
--

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `ID` int(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `timesofindia` varchar(255) NOT NULL,
  `hindustantimes` varchar(100) NOT NULL,
  `midday` varchar(100) NOT NULL,
  `dainikjagran` varchar(100) NOT NULL,
  `amarujawala` varchar(100) NOT NULL,
  `pudhari` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`ID`, `first_name`, `last_name`, `email`, `phone`, `address`, `username`, `password`, `timesofindia`, `hindustantimes`, `midday`, `dainikjagran`, `amarujawala`, `pudhari`) VALUES
(17, 'Johnny ', 'Bravo', 'johnnysbravo@yahoo.com', '9869234512', 'SCHEME NO-52,HANUMAN MANDIR PATRA SHED\r\nSASMIRA ,MARG', 'johnnyb', '12345', '', '', '', '', '', ''),
(18, 'Hrushikesh', 'Bhoir', 'karanvishwakrma@gmaill.com', '9080211063', '608/3B old MHB colony, Gorai road,\r\nBorivali West, Gorai rationing offi', 'karan1149', '123456789', '', '', '', '', '', ''),
(19, 'Hrushikesh', 'Bhoir', 'hrushikeshbhoir0@gmail.com', '7021138311', '608/3B old MHB colony, Gorai road,\r\nBorivali West, Gorai rationing offi', 'hrushio', '12345', '', '', '', '', '', ''),
(20, 'Hrushikesh', 'Bhoir', 'hrushikeshbhoir0@gmail.com', '7021138311', '608/3B old MHB colony, Gorai road,\r\nBorivali West, Gorai rationing offi', 'rhushioo', '12345', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD UNIQUE KEY `unique` (`ID`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
