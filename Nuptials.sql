-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 19, 2022 at 08:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Nuptials`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminLogin`
--

CREATE TABLE `adminLogin` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminLogin`
--

INSERT INTO `adminLogin` (`id`, `username`, `email`, `password`) VALUES
(1, 'mayurjogiya', 'mayurjogiya456@gmail.com', '12345'),
(3, 'Vishwa', 'vishwa@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `findmatch`
--

CREATE TABLE `findmatch` (
  `id` int(11) NOT NULL,
  `lookingfor` varchar(25) NOT NULL,
  `startage` int(11) NOT NULL,
  `endage` int(11) NOT NULL,
  `religion` varchar(25) NOT NULL,
  `mothertong` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `findmatch`
--

INSERT INTO `findmatch` (`id`, `lookingfor`, `startage`, `endage`, `religion`, `mothertong`) VALUES
(1, 'male', 10, 20, 'hindu', 'guj'),
(2, 'Female', 19, 19, 'Muslim', 'Hindi'),
(3, 'Male', 24, 29, 'Muslim', 'English'),
(4, 'Female', 21, 25, 'Muslim', 'Gujarati'),
(5, 'Male', 19, 24, 'Hindu', 'Hindi'),
(6, 'Female', 19, 22, 'Muslim', 'Urdu'),
(7, 'Female', 21, 27, 'Muslim', 'Urdu'),
(8, 'Male', 22, 26, 'Muslim', 'Bengali'),
(9, 'Male', 20, 23, 'Hindu', 'Urdu'),
(10, 'Male', 20, 28, 'Muslim', 'Bengali'),
(11, 'Female', 20, 24, 'Hindu', 'Gujarati'),
(12, 'Male', 20, 24, 'Hindu', 'Gujarati');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(95) NOT NULL,
  `email` varchar(95) NOT NULL,
  `password` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `email`, `password`) VALUES
(1, 'Tiger', 'mayur@gmail.com', '1234'),
(4, 'Yash', 'yash@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `firstn` varchar(25) NOT NULL,
  `lastn` varchar(25) NOT NULL,
  `profilefor` varchar(25) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `religion` varchar(25) NOT NULL,
  `mothertong` varchar(25) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `dob` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `request` varchar(25) NOT NULL DEFAULT 'Pending',
  `lastLogin` datetime DEFAULT NULL,
  `register` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `firstn`, `lastn`, `profilefor`, `gender`, `religion`, `mothertong`, `email`, `mobile`, `dob`, `city`, `request`, `lastLogin`, `register`) VALUES
(1, 'uh', 'kjn', 'MySelf', 'Male', 'Hindu', 'Hindi', 'masd@gmail.com', '92384', '2022-09-14', 'Rajkot', 'Pending', '0000-00-00 00:00:00', '0000-00-00'),
(2, 'Mayur', 'Jogiya', 'MySelf', 'Male', 'Hindu', 'Gujarati', 'mayurjogiya456@gmail.com', '9978560845', '2003-02-18', 'Rajkot', 'Approved', '0000-00-00 00:00:00', '0000-00-00'),
(4, 'yash', 'ladva', 'MySelf', 'Male', 'Hindu', 'Gujarati', 'yash@gmail.com', '92384923', '2004-06-29', 'Rajkot', 'Rejected', '0000-00-00 00:00:00', '0000-00-00'),
(5, 'Vishwa', 'trada', 'MySelf', 'Female', 'Hindu', 'Gujarati', 'vishwa@gmail.com', '23423', '2002-08-06', 'Rajkot', '', '0000-00-00 00:00:00', '0000-00-00'),
(12, 'Romil', 'Desai', 'MySelf', 'Male', 'Hindu', 'Gujarati', 'romil@gmail.com', '3447564', '2022-09-06', 'Ahmedabad', '', '0000-00-00 00:00:00', '0000-00-00'),
(13, 'hinali', 'dhameliya', 'MySelf', 'Female', 'Hindu', 'Gujarati', 'hinali@gmail.com', '34655', '2022-09-05', 'Rajkot', '', '0000-00-00 00:00:00', '0000-00-00'),
(17, 'deep', 'tank', 'MySelf', 'Male', 'Hindu', 'Gujarati', 'deep@rku.ac.in', '394345739', '2000-10-19', 'Tramba', 'Pending', NULL, '2022-9-19'),
(20, 'Jainam', 'Chauhan', 'MySelf', 'Male', 'Muslim', 'Urdu', 'jainam@rku.ac.in', '49857349', '2000-10-19', 'Tramba', 'Pending', '2022-09-19 20:42:33', '2022-9-19');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `email` varchar(35) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `livewith` varchar(20) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `children` varchar(20) NOT NULL,
  `diet` varchar(20) NOT NULL,
  `subcommunity` varchar(20) NOT NULL,
  `qualification` varchar(20) NOT NULL,
  `workin` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `income` varchar(11) NOT NULL,
  `about` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `email`, `mobile`, `livewith`, `maritalstatus`, `children`, `diet`, `subcommunity`, `qualification`, `workin`, `profession`, `income`, `about`) VALUES
(1, 'asdf', '2367', 'No', 'Divorced', 'Yes', 'Veg', 'Ahir', 'B.Tech(IT)', 'Government', 'Team Head', '654', 'sgsdf'),
(4, 'romil@gmail.com', '3447564', 'Yes', '', 'No', 'Veg', 'Patel', 'BCA', 'Private Company', 'HR Manager', '2343', 'asdf'),
(12, 'hinali@gmail.com', '34655', 'Yes', 'Never Married', 'No', 'Veg', 'Patel', 'BCA', 'Business', 'Team Head', '552', 'sdfa'),
(14, 'ukothari324@rku.ac.in', '123434232', 'Yes', 'Never Married', 'No', 'Eggetarian', 'Vaniya', 'BCA', 'Business', 'Team Head', '123432', 'im darshit'),
(15, 'mansi@rku.ac.in', '93447853459', 'Yes', 'Never Married', 'No', 'Veg', 'Ahir', 'BCA', 'Government', 'HR Manager', '23748374', 'im mansi'),
(16, 'deep@rku.ac.in', '394345739', 'Yes', 'Never Married', 'No', 'Veg', 'Vaniya', 'BCA', 'UnEmployeed', 'Junior Developer', '2343454', 'im deep'),
(19, 'jainam@rku.ac.in', '49857349', 'No', 'Divorced', 'No', 'Jain', 'Patel', 'BCA', 'Government', 'Senior Developer', '3487', 'im jainam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminLogin`
--
ALTER TABLE `adminLogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `findmatch`
--
ALTER TABLE `findmatch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminLogin`
--
ALTER TABLE `adminLogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `findmatch`
--
ALTER TABLE `findmatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
