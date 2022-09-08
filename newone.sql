-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 02:54 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registers`
--

-- --------------------------------------------------------

--
-- Table structure for table `entering`
--

CREATE TABLE `entering` (
  `id` int(11) NOT NULL,
  `emailid` varchar(250) NOT NULL,
  `enterpassword` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entering`
--

INSERT INTO `entering` (`id`, `emailid`, `enterpassword`) VALUES
(7, 'deepakdgowda3228@gmail.com', 1234),
(8, 'deepakdgowda3228@gmail.com', 2147483647),
(9, 'akdsfg@gnail.com', 0),
(10, 'akdsfg@gnail.com', 0),
(11, 'akdsfg@gnail.com', 0),
(12, 'akdsfg@gnail.com', 0),
(13, 'agsgfgaf@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paymentdetails`
--

CREATE TABLE `paymentdetails` (
  `id` int(11) NOT NULL,
  `card_num` int(16) NOT NULL,
  `nameon_card` varchar(200) NOT NULL,
  `card_enquiry` date NOT NULL,
  `cvv_num` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymentdetails`
--

INSERT INTO `paymentdetails` (`id`, `card_num`, `nameon_card`, `card_enquiry`, `cvv_num`) VALUES
(1, 2147483647, 'zbfdbdb', '0000-00-00', 111),
(2, 2147483647, 'zbfdbdb', '0000-00-00', 111),
(3, 32784, 'agaVS', '0000-00-00', 127),
(4, 0, 'bdkabvkab', '0000-00-00', 127);

-- --------------------------------------------------------

--
-- Table structure for table `pdetails`
--

CREATE TABLE `pdetails` (
  `sl.no` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` varchar(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `place` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pdetails`
--

INSERT INTO `pdetails` (`sl.no`, `name`, `age`, `gender`, `place`) VALUES
(1, 'sf', '21', 'male', 'comprtment no 1'),
(2, 'aifhdskfja', '19', 'female', 'comprtment no 2'),
(3, 'aifhdskfja', '19', 'female', 'comprtment no 2'),
(4, 'aifhdskfja', '19', 'female', 'comprtment no 2'),
(5, '', '', '', ''),
(6, 'agfagfsahggfa', '', '', ''),
(7, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `num` int(200) NOT NULL,
  `time` varchar(10) NOT NULL,
  `type` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`id`, `name`, `num`, `time`, `type`) VALUES
(1, 'BIDADI EXPRESS', 322801, '1:15', 'EXPRESS'),
(2, 'BIDADI EXPRESS', 322801, '1:15', 'GENERAL'),
(3, 'BIDADI EXPRESS', 322801, '1:15', 'GENERAL'),
(4, 'deepak d gowda', 330090, '4:40', 'GENERAL');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(500) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `confirm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `mobile`, `gender`, `email`, `pass`, `confirm`) VALUES
(1, 'asidfuoaisu', 19, 9148696058, 'male', 'deepakdgowda3228@gmail.com', '1234', ''),
(2, 'deepak d gowda', 19, 9148696058, 'male', 'deepakdgowda3228@gmail.com', '1234', ''),
(3, 'deepak d gowda', 21, 9148696058, 'male', 'deepakdgowda3228@gmail.com', '1234', ''),
(4, 'deepak d gowda', 21, 9148696058, 'male', 'deepakdgowda3228@gmail.com', '5678', ''),
(5, 'deepak d gowda', 21, 9148696058, 'male', 'deepakdgowda3228@gmail.com', '1234', ''),
(6, 'deepak d gowda', 21, 9148696058, 'male', 'deepakdgowda3228@gmail.com', '1234', ''),
(18, 'xzVHJK', 27, 3464196417, 'male', 'deepakdgowda3228@gmail.com', 'asgfuya', ''),
(19, 'asgsg', 0, 0, 'as', 'sag@gmail.com', 'asg', ''),
(20, 'rohith', 20, 3149871958, 'male', 'safhLAJFH@gmail.com', 'ahbAK', ''),
(21, 'deepak d gowda', 21, 9148696058, 'male', 'deepakdgowda3228@gmail.com', 'Deepak', ''),
(22, 'harshal', 57, 6872168768, 'male', 'hjgsdjh@gmail.com', 'rered', 'rered'),
(23, 'deepak d gowda', 32, 1863487694, 'male', 'gqdfhgajh@gmail.com', 'deepak', 'deepak'),
(24, 'deepak d gowda', 32, 1863487694, 'male', 'gqdfhgajh@gmail.com', 'gasdjfD', 'GASGaj'),
(25, 'DGBhwlfhabad', 126, 9148696058, 'male', 'deepakdgowda3228@gmail.com', 'LET', 'LET');

-- --------------------------------------------------------

--
-- Table structure for table `validi`
--

CREATE TABLE `validi` (
  `id` int(11) NOT NULL,
  `here` varchar(20) NOT NULL,
  `there` varchar(20) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `validi`
--

INSERT INTO `validi` (`id`, `here`, `there`, `date`) VALUES
(1, 'RAMANAGARA', 'MANDYA', '2021-12-17'),
(2, 'RAMANAGARA', 'MANDYA', '2021-12-18'),
(3, 'BIDADI', 'MANDYA', '2021-12-18'),
(4, 'BIDADI', 'MANDYA', '2021-12-18'),
(8, 'RAMANAGARA', 'MANDYA', '2021-12-16'),
(10, 'RAMANAGARA', 'MANDYA', '2022-01-04'),
(12, 'RAMANAGARA', 'MYSORE', '2022-01-04'),
(13, 'BIDADI', 'MYSORE', '2022-01-06'),
(14, 'RAMANAGARA', 'MYSORE', '2022-01-06'),
(15, 'RAMANAGARA', 'MYSORE', '2022-01-06'),
(16, 'RAMANAGARA', 'MYSORE', '2022-01-06'),
(17, 'RAMANAGARA', 'MANDYA', '2022-01-13'),
(18, 'RAMANAGARA', 'MANDYA', '2022-01-13'),
(19, 'RAMANAGARA', 'MANDYA', '2022-01-13'),
(20, 'RAMANAGARA', 'MANDYA', '2022-01-06'),
(21, 'RAMANAGARA', 'MANDYA', '2022-01-14'),
(22, 'RAMANAGARA', 'MANDYA', '2022-01-12'),
(24, 'RAMANAGARA', 'MANDYA', '2022-01-26'),
(25, 'BIDADI', 'MYSORE', '2022-01-28'),
(26, 'BIDADI', 'MYSORE', '2022-01-28'),
(27, 'RAMANAGARA', 'MANDYA', '2022-01-06'),
(28, 'RAMANAGARA', 'MANDYA', '2022-01-06'),
(29, 'BANGLORE', 'MYSORE', '2022-01-05'),
(30, 'BANGLORE', 'HASSAN', '2022-01-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entering`
--
ALTER TABLE `entering`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdetails`
--
ALTER TABLE `pdetails`
  ADD PRIMARY KEY (`sl.no`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `validi`
--
ALTER TABLE `validi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entering`
--
ALTER TABLE `entering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pdetails`
--
ALTER TABLE `pdetails`
  MODIFY `sl.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `validi`
--
ALTER TABLE `validi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
