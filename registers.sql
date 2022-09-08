-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 03:12 PM
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
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `p_id` int(11) NOT NULL,
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `d_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`p_id`, `source`, `destination`, `d_date`) VALUES
(1, 'RAMANAGARA', 'HASSAN', '2022-02-11'),
(2, 'RAMANAGARA', 'MADDUR', '2022-02-08'),
(3, 'RAMANAGARA', 'MADDUR', '2022-02-05'),
(4, 'RAMANAGARA', 'MYSORE', '2022-02-12'),
(5, 'RAMANAGARA', 'MYSORE', '2022-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `p_id` int(11) NOT NULL,
  `card_num` bigint(17) NOT NULL,
  `card_holder` varchar(60) NOT NULL,
  `card_enquiry` varchar(80) NOT NULL,
  `cvv_num` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`p_id`, `card_num`, `card_holder`, `card_enquiry`, `cvv_num`) VALUES
(1, 5675647645646545, 'Deepak D Gowda', '2022-07', 786),
(2, 8924395894365976, 'Deepak D Gowda', '2022-07', 687),
(3, 8673527457354656, 'DEEPU', '2022-07', 876),
(4, 5786888979888888, 'Deepak D Gowda', '2022-03', 667),
(5, 4536564645645645, 'Deepak D Gowda', '2022-07', 799);

-- --------------------------------------------------------

--
-- Table structure for table `pdetails`
--

CREATE TABLE `pdetails` (
  `p_id` int(11) NOT NULL,
  `p_name1` varchar(50) NOT NULL,
  `p_age1` int(199) NOT NULL,
  `p_gender1` varchar(50) NOT NULL,
  `p_address1` varchar(250) NOT NULL,
  `p_name2` varchar(50) NOT NULL,
  `p_gender2` varchar(30) NOT NULL,
  `p_age2` int(150) NOT NULL,
  `p_address2` varchar(250) NOT NULL,
  `p_name3` varchar(50) NOT NULL,
  `p_gender3` varchar(30) NOT NULL,
  `p_age3` int(150) NOT NULL,
  `p_address3` varchar(250) NOT NULL,
  `p_name4` varchar(50) NOT NULL,
  `p_gender4` varchar(30) NOT NULL,
  `p_age4` int(150) NOT NULL,
  `p_address4` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pdetails`
--

INSERT INTO `pdetails` (`p_id`, `p_name1`, `p_age1`, `p_gender1`, `p_address1`, `p_name2`, `p_gender2`, `p_age2`, `p_address2`, `p_name3`, `p_gender3`, `p_age3`, `p_address3`, `p_name4`, `p_gender4`, `p_age4`, `p_address4`) VALUES
(1, 'Deepak', 21, 'male', 'Ramanagara', 'Neha', 'female', 20, 'Ramanagara', 'Sichana', 'female', 21, 'Ramanagara', 'Yashu', 'female', 28, 'Ramanagara'),
(2, 'Deepak', 21, 'male', 'Ramanagara', 'bappree', 'male', 22, 'Ramanagara', 'rohith', 'male', 21, 'Ramanagara', 'deepu', 'male', 21, 'Ramanagara'),
(3, 'Deepak', 21, 'male', 'Ramanagara', 'Neha', 'female', 20, 'Ramanagara', 'Sinchana', 'female', 21, 'Ramanagara', 'Yashu', 'female', 28, 'Ramanagara'),
(4, 'deepak', 21, 'male', 'Ramanagara', 'Neha', 'male', 21, 'Ramanagara', 'Tanu', 'female', 21, 'Ramanagara', 'Yashu', 'male', 21, 'Ramanagara'),
(5, 'Deepak', 21, 'male', 'Ramanagara', '', '', 0, '', '', '', 0, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(200) NOT NULL,
  `t_number` int(20) NOT NULL,
  `t_time` varchar(30) NOT NULL,
  `t_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`t_id`, `t_name`, `t_number`, `t_time`, `t_type`) VALUES
(1, 'RAMANAGARA EXPRESS', 350891, '2:40PM', 'EXPRESS - 150/-'),
(2, 'VISHVAMANAVA', 786501, '5:15AM', 'EXPRESS - 150/-'),
(3, 'VISHVAMANAVA', 965430, '9:00AM', 'SLEEPER - 180/-'),
(4, 'RAMANAGARA EXPRESS', 348760, '5:15AM', 'EXPRESS - 150/-'),
(5, 'RAMANAGARA EXPRESS', 348760, '5:15AM', 'EXPRESS - 150/-');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `user_id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `p_id` int(200) NOT NULL,
  `p_name` varchar(250) NOT NULL,
  `p_age` tinyint(2) NOT NULL,
  `p_mobile` bigint(10) NOT NULL,
  `p_gender` varchar(20) NOT NULL,
  `p_email` varchar(500) NOT NULL,
  `p_password` varchar(20) NOT NULL,
  `confirm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`p_id`, `p_name`, `p_age`, `p_mobile`, `p_gender`, `p_email`, `p_password`, `confirm`) VALUES
(1, 'Deepak D Gowda', 21, 9148696058, 'male', 'deepakdgowda3228@gmail.com', '12345678', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `pdetails`
--
ALTER TABLE `pdetails`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pdetails`
--
ALTER TABLE `pdetails`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `p_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
