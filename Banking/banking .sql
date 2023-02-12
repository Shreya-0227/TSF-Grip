-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 03:56 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Shreya', 'Akshata', 2000, '2023-01-01 06:58:27'),
(2, 'Sayali', 'Mamata', 300, '2023-02-06 04:00:31'),
(3, 'Sayali', 'Akshata', 5000, '2023-02-07 19:01:32'),
(4, 'Sandesh', 'Shreya', 5000, '2023-02-10 05:06:15'),
(5, 'Ajay', 'Sandesh', 500, '2023-02-15 20:28:24'),
(6, 'Mamata', 'Sayali', 500, '2023-02-22 09:30:31'),
(7, 'Akshata', 'Shreya', 700, '2023-02-28 19:31:22'),
(8, 'Akshata', 'Mamata', 1000, '2023-02-01 07:39:58'),
(9, 'Tanvi', 'Ajay', 500, '2023-02-03 10:37:08'),
(10, 'Sandesh', 'Tanvi', 100, '2023-02-08 01:58:18'),
(11, 'Sayali', 'Sandesh', 12, '2023-02-11 15:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(798, 'Sayali', 'sayali@gmail.com', 650000),
(1000, 'Shreya', 'shreya@gmail.com', 800000),
(1002, 'Tanvi', 'tanvi@gmail.com', 450000),
(1452, 'Ajay', 'ajay@gmail.com', 520000),
(1500, 'Akshata', 'akshata@gmail.com', 590125),
(1600, 'Mamata', 'mamata@gmail.com', 458265),
(1624, 'Sandesh', 'sandesh@gmail.com', 584710);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1625;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
