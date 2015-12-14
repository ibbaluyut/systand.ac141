-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2015 at 04:13 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ac141_nurse_station`
--

-- --------------------------------------------------------

--
-- Table structure for table `medication preparation`
--

CREATE TABLE `medication preparation` (
  `id` int(11) NOT NULL,
  `Measuring the dose of medicine` int(11) NOT NULL,
  `Giving the right medicine` int(11) NOT NULL,
  `Organizing the medicines` int(11) NOT NULL,
  `Checking which patient to give the right medicine` int(11) NOT NULL,
  `Buying medicines` int(11) NOT NULL,
  `Knowing how many medicines needed` int(11) NOT NULL,
  `Buying medical tools` int(11) NOT NULL,
  `Time to give the medicine` int(11) NOT NULL,
  `Checking if there are medicine supplies` int(11) NOT NULL,
  `Cleaning medical tools` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monitoring of patients`
--

CREATE TABLE `monitoring of patients` (
  `id` int(11) NOT NULL,
  `Blood type` int(11) NOT NULL,
  `Check of pulse rates` int(11) NOT NULL,
  `Check of breathing` int(11) NOT NULL,
  `Temperature` int(11) NOT NULL,
  `Time of eating` int(11) NOT NULL,
  `Time to take their medicine` int(11) NOT NULL,
  `Check of blood pressure` int(11) NOT NULL,
  `Check of heart rate` int(11) NOT NULL,
  `Check of eyesight` int(11) NOT NULL,
  `Check of hearing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `secretarial work`
--

CREATE TABLE `secretarial work` (
  `id` int(11) NOT NULL,
  `Recording` int(11) NOT NULL,
  `Planning` int(11) NOT NULL,
  `Reminding` int(11) NOT NULL,
  `Advising` int(11) NOT NULL,
  `Organizing` int(11) NOT NULL,
  `Helping in personal task` int(11) NOT NULL,
  `Presenting` int(11) NOT NULL,
  `Analyzing` int(11) NOT NULL,
  `Scheduling` int(11) NOT NULL,
  `Going to meetings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medication preparation`
--
ALTER TABLE `medication preparation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoring of patients`
--
ALTER TABLE `monitoring of patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secretarial work`
--
ALTER TABLE `secretarial work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medication preparation`
--
ALTER TABLE `medication preparation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `monitoring of patients`
--
ALTER TABLE `monitoring of patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `secretarial work`
--
ALTER TABLE `secretarial work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `medication preparation`
--
ALTER TABLE `medication preparation`
  ADD CONSTRAINT `medication preparation_ibfk_1` FOREIGN KEY (`id`) REFERENCES `monitoring of patients` (`id`);

--
-- Constraints for table `secretarial work`
--
ALTER TABLE `secretarial work`
  ADD CONSTRAINT `secretarial work_ibfk_1` FOREIGN KEY (`id`) REFERENCES `medication preparation` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
