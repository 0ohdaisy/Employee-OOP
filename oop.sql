-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 04:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartCode` int(4) NOT NULL,
  `DepartName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartCode`, `DepartName`) VALUES
(1000, 'Finance'),
(1001, 'Human-Resource');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(4) NOT NULL,
  `EmployeeName` varchar(25) NOT NULL,
  `EmployeeDepartCode` int(4) NOT NULL,
  `EmployeeLocation` varchar(5) NOT NULL,
  `EmployeeTelNum` int(7) NOT NULL,
  `EmployeeDesignation` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `EmployeeName`, `EmployeeDepartCode`, `EmployeeLocation`, `EmployeeTelNum`, `EmployeeDesignation`) VALUES
(1111, 'Adlina', 1000, 'SBS-1', 1234001, 'O'),
(1112, 'Fareez', 1001, 'SB-1', 0, 'C'),
(1113, 'Ira Natasha', 1001, 'PA-90', 0, 'C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartCode`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD KEY `EmployeeDepartCode` (`EmployeeDepartCode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `EmployeeDepartCode` FOREIGN KEY (`EmployeeDepartCode`) REFERENCES `department` (`DepartCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
