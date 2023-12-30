-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 09:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `identity_number` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ethnicity` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `suburb` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `guardian_name` varchar(255) NOT NULL,
  `guardian_surname` varchar(255) NOT NULL,
  `identityNumber` varchar(30) NOT NULL,
  `guardian_number` varchar(20) NOT NULL,
  `guardian_email` varchar(255) NOT NULL,
  `relationship` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviewed`
--

CREATE TABLE `reviewed` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `identity_number` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ethnicity` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `suburb` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `guardian_name` varchar(255) NOT NULL,
  `guardian_surname` varchar(255) NOT NULL,
  `identityNumber` varchar(30) NOT NULL,
  `guardian_number` varchar(20) NOT NULL,
  `guardian_email` varchar(255) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `decision` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviewed`
--

INSERT INTO `reviewed` (`id`, `name`, `surname`, `birthday`, `identity_number`, `gender`, `ethnicity`, `email`, `phone`, `grade`, `branch`, `street_name`, `suburb`, `city`, `province`, `guardian_name`, `guardian_surname`, `identityNumber`, `guardian_number`, `guardian_email`, `relationship`, `decision`) VALUES
(1, 'Ghost1', 'Ghost1', '2023-06-11', 123456, 'male', 'white', 'ghost1@ghost.com', '0626033471', 'grade9', '', 'white', 'White', 'White', 'ddgfhc', 'ghostparent', 'ghostparent', '1234567890', '12345', 'ghostparent1@gmail.com', 'father', 'Accepted'),
(2, 'Ghost', 'Ghost', '2023-06-03', 1234567890, 'male', 'black', 'ghost@gmail.com', '123456789', 'grade12', 'ghjbk', 'Ghost Street', 'Ghost Surburb', 'Ghost City', 'Ghost Province', 'Ghost Name', 'Ghost Surname', '123456789', 'Ghost Number', 'Ghost@gmail.com', 'mother', 'Accepted'),
(3, 'Ghost', 'Ghost', '2023-06-03', 1234567890, 'male', 'black', 'ghost@gmail.com', '123456789', 'grade12', '', 'Ghost Street', 'Ghost Surburb', 'Ghost City', 'Ghost Province', 'Ghost Name', 'Ghost Surname', '', 'Ghost Number', 'Ghost@gmail.com', 'mother', 'Declined'),
(4, 'Ghost', 'Ghost', '2023-06-23', 98765431, 'male', 'black', 'ghost@gmail.com', '0123456789', 'grade12', '', 'Ghost Street', 'Black', 'Black', 'Gauteng', 'Ghost', 'Ghost', '', '123456', 'ghost@gmail.com', 'relative', 'Declined'),
(5, 'Ghost', 'Ghost', '2023-06-03', 1234567890, 'male', 'black', 'ghost@gmail.com', '123456789', 'grade12', '', 'Ghost Street', 'Ghost Surburb', 'Ghost City', 'Ghost Province', 'Ghost Name', 'Ghost Surname', '', 'Ghost Number', 'Ghost@gmail.com', 'mother', 'Declined'),
(7, 'Test', 'Test', '2023-12-23', 1234567890, 'male', 'black', 'test@gmail.com', '1234567890', 'grade9', 'Ballito', '12 South Africa', 'South Africa', 'South Africa', 'South Africa', 'Test', 'Test', '1234567', '12345678', 'test@test.com', 'relative', 'Accepted'),
(8, 'GhostChild', 'GhostSurname', '2023-12-01', 1234567890, 'male', 'black', 'Ghost@ghost.co.za', '123456', 'grade11', 'Pretoria', '11 Ghost Street', 'Ghost', 'Ghost', 'Gauteng', 'GhostParent', 'GhostParent', '1234567890', '079123456', 'ghost@email.com', 'father', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `usertype`) VALUES
('ghost', 'ghost', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewed`
--
ALTER TABLE `reviewed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviewed`
--
ALTER TABLE `reviewed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
