-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 11:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `detsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Test', 'admin', 7894561238, 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-08-28 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(180) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `categoryName`, `postingDate`) VALUES
(3, 'Other', '2021-09-22 05:11:47'),
(5, 'where', '2023-05-20 10:32:01'),
(6, 'where', '2023-06-04 07:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbldonation`
--

CREATE TABLE `tbldonation` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `Name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Amount` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Description` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `NoteDate` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldonation`
--

INSERT INTO `tbldonation` (`ID`, `UserId`, `Name`, `Amount`, `Description`, `NoteDate`) VALUES
(3, 2, 'arya', '200', 'na', '0000-00-00'),
(4, 2, 'balaji', '200', 'na', '0000-00-00'),
(6, 2, 'abhi', '500', 'na', '2023-06-13'),
(7, 2, 'abhi', '500', 'na', '2023-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `tblexpense`
--

CREATE TABLE `tblexpense` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `NoteDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblexpense`
--

INSERT INTO `tblexpense` (`ID`, `UserId`, `ExpenseDate`, `CategoryName`, `ExpenseItem`, `ExpenseCost`, `NoteDate`) VALUES
(2, 1, '2021-09-19', 'Electronics', 'Mobile', '10000', '2021-09-22 16:28:39'),
(3, 1, '2021-09-20', 'Other', 'Test Product', '100', '2021-09-22 16:31:10'),
(4, 1, '2021-09-22', 'Grocery', 'Milk', '25', '2021-09-22 17:34:11'),
(8, 2, '2023-05-13', 'Electronics', 'plug', '99', '2023-05-30 17:00:16'),
(9, 2, '2023-05-28', 'Other', 'laptop', '50000', '2023-05-30 17:01:10'),
(10, 2, '2023-05-12', 'Electronics', 'printer', '25000', '2023-05-30 17:01:39'),
(11, 2, '2023-05-14', 'Electronics', 'fan', '8000', '2023-05-30 17:02:09'),
(12, 2, '2023-05-17', 'where', 'clock', '400', '2023-05-30 17:03:04'),
(14, 2, '2023-05-28', 'Other', 'pendrive', '800', '2023-05-30 17:04:18'),
(15, 2, '2023-06-02', 'where', 'plug', '99', '2023-06-02 16:59:53'),
(16, 2, '2023-06-04', 'where', 'laptop', '200', '2023-06-04 05:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Test', 'anujk30@gmail.com', 9632587410, 'f925916e2754e5e03f75dd58a5733251', '2021-09-22 16:27:29'),
(2, 'Babaso', 'jondeo@test.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '2021-09-24 01:26:32'),
(3, 'Babaso', 'hanjeakshay@gmail.com', 7588920673, 'd9d331a8cc70fc0f1305e4727d3ae5a4', '2023-05-20 10:15:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryName` (`categoryName`);

--
-- Indexes for table `tbldonation`
--
ALTER TABLE `tbldonation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblexpense`
--
ALTER TABLE `tblexpense`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbldonation`
--
ALTER TABLE `tbldonation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblexpense`
--
ALTER TABLE `tblexpense`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
