-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 12:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymman`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctorapp`
--

CREATE TABLE `doctorapp` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `docapp` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorapp`
--

INSERT INTO `doctorapp` (`fname`, `lname`, `email`, `contact`, `docapp`) VALUES
('Harshit', 'Kamath', 'harshit@gmail.com', '1001', '104'),
('Akshat', 'Kumar', 'akshat@gmail.com', '1002', '103'),
('Ranjith', 'B K', 'ranjith@gmail.com', '1003', '101'),
('Ashwiz', 'S', 'ashwiz@gmail.com', '1004', '102'),
('Karthk', 'A', 'karthik@gmail.com', '1005', '101'),
('Raul', 'Pabhu', 'rahul@gmail.com', '1006', '103'),
('Vikas', 'Bhat', 'vikas@gmail.com', '1007', '103'),
('Varun', 'Kumar', 'varun@gmail.com', '1008', '102'),
('Rohan', 'Verma', 'rohan@gmail.com', '1009', '103');

-- --------------------------------------------------------

--
-- Table structure for table `logintb`
--

CREATE TABLE `logintb` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintb`
--

INSERT INTO `logintb` (`username`, `password`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `Package_id` varchar(40) NOT NULL,
  `Package_name` varchar(40) NOT NULL,
  `Amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`Package_id`, `Package_name`, `Amount`) VALUES
('121', 'Preliminary', 800),
('122', 'Weight Gain', 1500),
('123', 'Weight Loss', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_id` int(10) NOT NULL,
  `Amount` int(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `customer_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_id`, `Amount`, `customer_id`, `payment_type`, `customer_name`) VALUES
(1, 2000, '1001', 'Card', 'Harshit'),
(2, 1500, '1002', 'Cash', 'Akshat'),
(3, 800, '1003', 'Card', 'Ranjith'),
(4, 1000, '1004', 'Cheque', 'Ashwiz'),
(5, 1500, '1005', 'Cash', 'Karthik');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `Trainer_id` int(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `phone` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`Trainer_id`, `Name`, `phone`) VALUES
(101, 'Virat Kohli', 876543210),
(102, 'Roht Sharma', 789654213),
(103, 'MS Dhoni', 567890321),
(104, 'KL Rahul', 889976543),
(105, 'Jasprit Bumrah', 879654123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctorapp`
--
ALTER TABLE `doctorapp`
  ADD PRIMARY KEY (`contact`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`Package_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`Trainer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
