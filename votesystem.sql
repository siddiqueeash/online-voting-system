-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 12:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'tushar', '$2y$10$g4m/PfziRBxoM9fvwqiS9OgxAV29w0y8..XHruyEplYPxYnhZJ6bC', 'Firuj', 'Siddiquee', 'avatar.png', '2020-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 9, 'Firuj', 'Siddiquee', 'avatar.png', ''),
(19, 9, 'Israt Jahan', 'Chowdhury', 'female3.jpg', ''),
(20, 9, 'Mahmudur Rahman ', 'Bhuiyan', 'male.png', ''),
(21, 9, 'Ihtheram ', 'Chowdhury', '7qMiwNx.jpg', ''),
(23, 9, 'Mustafijur ', 'Rahman', 'How-to-Make-Cartoon-Face2FAvatar-of-Yourself-for-FREE.jpg', ''),
(24, 9, 'Ahmed', 'Raji', 'male2.png', ''),
(27, 10, 'Aiman', 'Chowdhury', 'dealer-logo.jpg', ''),
(28, 10, 'Pranto', 'Dey', '7qMiwNx.jpg', ''),
(29, 10, 'Koushik', 'Dey', 'profile.jpg', ''),
(30, 10, 'Masum', 'Ahmed', 'doctor_strange_by_scarlettcindy-daon0ly.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(9, 'CR', 1, 1),
(10, 'ACR', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(5, 'pSMQYCjWk5dnmaD', '$2y$10$DOad8QCQJT4egCpxe3l6oO7jJDxhNKXuELoHUEbUonRPsO4ShUrbK', 'Nayeem', 'Islam', 'dealer-logo.jpg'),
(6, 'Is92CPnGcvOy4ue', '$2y$10$Unz2rR7RudY7T6/UtuCTbeiIoc0atcy/BOwdLmp5LfJJoivnRp/pa', 'Avishek', 'Roy', 'favicon.png'),
(7, 'gwvIniKqT5xsWJc', '$2y$10$Xh68uLVbjRq0PCdkqxREyO2qDU1i2KqXSUgs2z/gUYOijIolKsMYS', 'Saleh', 'Ahmed', 'avatar.png'),
(8, 'IpqGblR7m6tQFhz', '$2y$10$qO4Yz56X31u5KQRf37DuQup7VGZYrIX552JuEm70Uc4g27hWUutr6', 'Jiku', 'Roy', 'e360bc98dbb4441f73d253f90723d9a4.jpg'),
(9, 'fxdNBZ5hoi87rqI', '$2y$10$qRIb8vgVkvQBlHn1yCZwhujpiZPoLn1e6svdrjedzFVcduBcSScz.', 'Juned', 'Ahmed', 'male2.png'),
(10, 'fpivPIEFjTL3qZ5', '$2y$10$5QvGLc6LBZ01nrkr2a5CC.lGzV6hchtkLlhbNlVM29H7iR6FeBGV2', 'Abdullah', 'Al Foysal', 'avatar.png'),
(11, 'KkMWRcTZPf7xNgU', '$2y$10$JPalmpQ5YeCSEgnZkg8T8ubvCJ/icv.KxV6Cq0qtAbBjZIcfm6QWG', 'Ak', 'Anik', 'male.png'),
(12, 'syG6zQqTNDChdZ1', '$2y$10$jf1d4.2/SckbOrvQ6ibhQONkPd4Z9pFjHvMJT2ew.V/oshBRjrmtK', 'Mridul', 'Kanti', 'avatar.png'),
(13, 'KPCDpH5TltFIkAB', '$2y$10$zWdgAMRlFSxuuU1s178ZfOu6NZmS7UiCIvLHvxNRUggPenNc5RINy', 'Abul', 'Kashem', 'female.jpg'),
(14, 'pCPEeQjhu4KD6MO', '$2y$10$7kUrF.nydR2FZqxaTi1Qze.H.Ef7mSaWbJrH3VZ1FJoCqhKPEv7ZS', 'Ayman ', 'Ahmed', 'mask.jpg'),
(15, 'lAk28ZYIDhc1Knx', '$2y$10$l6knyi7mkqLXN9k5eQ5RXey1UcOdezLyvXzswHPRQYRwOnnn/UOnC', 'Rafid', 'Rahman', 'profile.jpg'),
(16, 'lqyvXeC1ZIkbJHN', '$2y$10$qKNzQCSU5gHBP2.H55BZiOtyiraxhgTF8MWXxtEJC17tTIXm2fq1m', 'Tayef', 'Chowdhury', 'profile.jpg'),
(17, '8MGHvWJAI2CfeuU', '$2y$10$FJB8x5VALbMJSJqrUy/cwu7Zrd7JI/qNgIGMos/VwxPo8khpvgFFW', 'Nahid', 'Islam', 'profile.jpg'),
(18, 'O62dSkwntzbPYyQ', '$2y$10$GVceDcQmbFcwDTnSp2XePe3RvOTybv5uaylBoVYjbtlcl889ClYxq', 'firuj', 'siddiquee', ''),
(19, 'Wv9lyYtdaibhQ74', '$2y$10$KgSrMCNxvXSgfkAAHrwC5ur1dTVgjQVDNB1UIzBEq6NuDaINPcxy.', 'Hasan', 'Ahmed', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(132, 16, 18, 9),
(133, 16, 27, 10),
(134, 15, 19, 9),
(135, 15, 28, 10),
(136, 19, 18, 9),
(137, 19, 27, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
