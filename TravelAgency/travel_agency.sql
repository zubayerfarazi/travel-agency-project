-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 11:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `tid` int(100) NOT NULL,
  `cid` int(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `cphone` varchar(12) NOT NULL,
  `sourc` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `journeydate` date NOT NULL,
  `endingdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`tid`, `cid`, `cname`, `cphone`, `sourc`, `destination`, `journeydate`, `endingdate`) VALUES
(102, 2, 'Rimon', '12345678', 'Dhaka', 'Cox\'s Bazar', '2024-04-08', '2024-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(100) NOT NULL,
  `ename` varchar(100) NOT NULL,
  `ephone` varchar(12) NOT NULL,
  `eaddress` varchar(20) NOT NULL,
  `ejdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `ename`, `ephone`, `eaddress`, `ejdate`) VALUES
(1, 'Kamal', '12345', 'Narsingdi', '2024-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `Confirm_Pass` int(20) NOT NULL,
  `caddress` varchar(20) NOT NULL,
  `cphone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `First_Name`, `Last_Name`, `user_name`, `Confirm_Pass`, `caddress`, `cphone`) VALUES
(1, 'Zubayer', 'Farazi', 'zrf', 123, 'Karimpur', '1646745401'),
(2, 'Rimon', 'Hasan', 'rimonhasan', 345, 'Dhaka', '2345678'),
(3, 'Rifat ', 'Farazi', 'rifat', 234, 'Narsingdi', '198765432'),
(4, 'ZRF', 'Farazi', 'zrfarazi', 123, 'Dhaka', '987654');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vid` int(100) NOT NULL,
  `vname` varchar(100) NOT NULL,
  `capacity` int(100) NOT NULL,
  `vtype` varchar(100) NOT NULL,
  `regNumber` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vid`, `vname`, `capacity`, `vtype`, `regNumber`) VALUES
(2, 'Shamoly', 30, 'Classic', 876543),
(3, 'Shamoly', 40, 'Classic', 876543);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
