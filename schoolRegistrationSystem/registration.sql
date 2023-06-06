-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 07:07 PM
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
  `street_name` varchar(255) NOT NULL,
  `suburb` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `guardian_name` varchar(255) NOT NULL,
  `guardian_surname` varchar(255) NOT NULL,
  `guardian_number` varchar(20) NOT NULL,
  `guardian_email` varchar(255) NOT NULL,
  `relationship` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `surname`, `birthday`, `identity_number`, `gender`, `ethnicity`, `email`, `phone`, `grade`, `street_name`, `suburb`, `city`, `province`, `guardian_name`, `guardian_surname`, `guardian_number`, `guardian_email`, `relationship`) VALUES
(2, 'Ghost', 'Ghost', '2023-06-03', 1234567890, 'male', 'black', 'ghost@gmail.com', '123456789', 'grade12', 'Ghost Street', 'Ghost Surburb', 'Ghost City', 'Ghost Province', 'Ghost Name', 'Ghost Surname', 'Ghost Number', 'Ghost@gmail.com', 'mother'),
(3, 'Ghost', 'Ghost', '2023-06-23', 98765431, 'male', 'black', 'ghost@gmail.com', '0123456789', 'grade12', 'Ghost Street', 'Black', 'Black', 'Gauteng', 'Ghost', 'Ghost', '123456', 'ghost@gmail.com', 'relative');

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
  `street_name` varchar(255) NOT NULL,
  `suburb` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `guardian_name` varchar(255) NOT NULL,
  `guardian_surname` varchar(255) NOT NULL,
  `guardian_number` varchar(20) NOT NULL,
  `guardian_email` varchar(255) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `decision` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviewed`
--

INSERT INTO `reviewed` (`id`, `name`, `surname`, `birthday`, `identity_number`, `gender`, `ethnicity`, `email`, `phone`, `grade`, `street_name`, `suburb`, `city`, `province`, `guardian_name`, `guardian_surname`, `guardian_number`, `guardian_email`, `relationship`, `decision`) VALUES
(1, 'khwezi', 'Maphalala', '2023-06-11', 123456, 'male', 'white', 'khwezimaphalala4@gmail.com', '0626033471', 'grade9', 'dggdfdsgds', 'White', 'White', 'ddgfhc', 'khwezi', 'Maphalala', '12345', 'khwezimaphalala4@gmail.com', 'father', 'Accepted'),
(2, 'Ghost', 'Ghost', '2023-06-03', 1234567890, 'male', 'black', 'ghost@gmail.com', '123456789', 'grade12', 'Ghost Street', 'Ghost Surburb', 'Ghost City', 'Ghost Province', 'Ghost Name', 'Ghost Surname', 'Ghost Number', 'Ghost@gmail.com', 'mother', 'Accepted'),
(3, 'Ghost', 'Ghost', '2023-06-03', 1234567890, 'male', 'black', 'ghost@gmail.com', '123456789', 'grade12', 'Ghost Street', 'Ghost Surburb', 'Ghost City', 'Ghost Province', 'Ghost Name', 'Ghost Surname', 'Ghost Number', 'Ghost@gmail.com', 'mother', 'Declined'),
(4, 'Ghost', 'Ghost', '2023-06-23', 98765431, 'male', 'black', 'ghost@gmail.com', '0123456789', 'grade12', 'Ghost Street', 'Black', 'Black', 'Gauteng', 'Ghost', 'Ghost', '123456', 'ghost@gmail.com', 'relative', 'Declined');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('ghost', 'ghost');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviewed`
--
ALTER TABLE `reviewed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
