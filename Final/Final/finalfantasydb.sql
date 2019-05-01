-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 07:31 PM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalfantasydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `masterid` int(11) NOT NULL,
  `dateadded` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `masterid`, `dateadded`, `datemodified`, `address`, `city`, `state`, `zipcode`, `type`) VALUES
(31, 31, '2019-04-29 08:25:34', '2019-04-29 08:25:34', '5970 Avalon Dr, Apt 111', 'Muskegon', 'MI', '49444', 'home'),
(23, 23, '2019-04-28 22:11:48', '2019-04-28 22:11:48', '1884 COLLEGE DR, APT C', 'TRAVERSE CITY', 'MI', '49686', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `authusers`
--

CREATE TABLE `authusers` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(41) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authusers`
--

INSERT INTO `authusers` (`id`, `fname`, `lname`, `email`, `username`, `password`) VALUES
(0, 'Bruce', 'Abshire', 'Pipboy2077@gmail.com', 'Ultra', 'asdf8520');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `masterid` int(11) NOT NULL,
  `dateadded` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `masterid`, `dateadded`, `datemodified`, `email`, `type`) VALUES
(31, 31, '2019-04-29 08:25:34', '2019-04-29 08:25:34', 'pipboy2077@gmail.com', 'home'),
(23, 23, '2019-04-28 22:11:48', '2019-04-28 22:11:48', 'pipboy2077@gmail.com', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `fax`
--

CREATE TABLE `fax` (
  `id` int(11) NOT NULL,
  `masterid` int(11) NOT NULL,
  `dateadded` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `faxnumber` varchar(25) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fax`
--

INSERT INTO `fax` (`id`, `masterid`, `dateadded`, `datemodified`, `faxnumber`, `type`) VALUES
(2, 20, '2019-04-28 21:35:50', '2019-04-28 21:35:50', '2316331602', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `mastername`
--

CREATE TABLE `mastername` (
  `id` int(11) NOT NULL,
  `dateadded` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `fname` varchar(75) DEFAULT NULL,
  `lname` varchar(75) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mastername`
--

INSERT INTO `mastername` (`id`, `dateadded`, `datemodified`, `fname`, `lname`) VALUES
(23, '2019-04-28 22:11:48', '2019-04-28 22:11:48', 'Bruce', 'Abshire'),
(31, '2019-04-29 08:25:34', '2019-04-29 08:25:34', 'Bruce', 'Abshire');

-- --------------------------------------------------------

--
-- Table structure for table `personalnotes`
--

CREATE TABLE `personalnotes` (
  `id` int(11) NOT NULL,
  `masterid` int(11) NOT NULL,
  `dateadded` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `note` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `topic` int(11) NOT NULL,
  `original_poster` varchar(150) DEFAULT NULL,
  `txt` varchar(400) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `topic`, `original_poster`, `txt`, `time_stamp`) VALUES
(13, 8, 'dkdkd', 'desfg', '2019-04-27 16:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telephone`
--

CREATE TABLE `telephone` (
  `id` int(11) NOT NULL,
  `masterid` int(11) NOT NULL,
  `dateadded` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `telnumber` varchar(25) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telephone`
--

INSERT INTO `telephone` (`id`, `masterid`, `dateadded`, `datemodified`, `telnumber`, `type`) VALUES
(31, 31, '2019-04-29 08:25:34', '2019-04-29 08:25:34', '2318845800', 'home'),
(23, 23, '2019-04-28 22:11:48', '2019-04-28 22:11:48', '2316331602', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `original_poster` varchar(150) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `original_poster`, `time_stamp`) VALUES
(8, 'How are games now?', 'Ultra', '2019-04-27 16:34:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authusers`
--
ALTER TABLE `authusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fax`
--
ALTER TABLE `fax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mastername`
--
ALTER TABLE `mastername`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personalnotes`
--
ALTER TABLE `personalnotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `telephone`
--
ALTER TABLE `telephone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `fax`
--
ALTER TABLE `fax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mastername`
--
ALTER TABLE `mastername`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `personalnotes`
--
ALTER TABLE `personalnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `telephone`
--
ALTER TABLE `telephone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
