-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 07:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(2) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `receiver` varchar(15) NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--
INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
('1', 'Ravi', 'Komal', '1000', '2021-08-05 17:47:43.000000'),
('2', 'Rita', 'Surabhi', '700', '2021-08-07 04:25:30.000000'),
('3', 'Komal', 'Gudiya', '50', '2021-08-07 16:25:30.000000'),
('4', 'Gopal', 'Vikash', '800', '2021-08-07 14:29:46.000000');
('5', 'Koushal', 'Rita', '100', '2021-08-07 05:00:23.000000');
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
('1', 'Komal ', 'komal8880kumari@gmail.com', '9600'),
('2',  'Ravi',  'rs133431@gmail.com',  '12000'),
('3', 'Rita', 'rita7781kumari@gmail.com', '5000'), 
('4', 'Surabhi', 'surabhi1998kumari@gmail.com', '8000'),
('5', 'Vaishali', 'vaishalisingh2018@gmail.com', '5500'), 
('6', 'Koushal', 'koushal777bhaiya@gmail.com', '6600'),
('7', 'Goutam', 'goutam777kumar@gmail.com', '9000'), 
('8', 'Gopal', 'gopal8880kumar@gmail.com', '13000'),
('9', 'Gudiya', 'lovelykomal1432@gmail.com', '8900'), 
('10', 'Vikash', 'vikash7788kumar@gmail.com', '4900');

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
  MODIFY `sno` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
