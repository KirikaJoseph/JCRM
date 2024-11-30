-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2024 at 09:46 PM
-- Server version: 5.7.43-log
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jcrm_church`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_request`
--

DROP TABLE IF EXISTS `book_request`;
CREATE TABLE IF NOT EXISTS `book_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `book_title` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
CREATE TABLE IF NOT EXISTS `donations` (
  `donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `donation_date` date DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`donation_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_joined` date DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `men_booking`
--

DROP TABLE IF EXISTS `men_booking`;
CREATE TABLE IF NOT EXISTS `men_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `brief_message` text,
  PRIMARY KEY (`booking_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `missions_booking`
--

DROP TABLE IF EXISTS `missions_booking`;
CREATE TABLE IF NOT EXISTS `missions_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `mission_location` varchar(255) DEFAULT NULL,
  `mission_date` date DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `brief_message` text,
  PRIMARY KEY (`booking_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_signups`
--

DROP TABLE IF EXISTS `newsletter_signups`;
CREATE TABLE IF NOT EXISTS `newsletter_signups` (
  `signup_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`signup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `other_booking`
--

DROP TABLE IF EXISTS `other_booking`;
CREATE TABLE IF NOT EXISTS `other_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `brief_message` text,
  PRIMARY KEY (`booking_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `women_booking`
--

DROP TABLE IF EXISTS `women_booking`;
CREATE TABLE IF NOT EXISTS `women_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `brief_message` text,
  PRIMARY KEY (`booking_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workshop_booking`
--

DROP TABLE IF EXISTS `workshop_booking`;
CREATE TABLE IF NOT EXISTS `workshop_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `workshop_name` varchar(100) DEFAULT NULL,
  `workshop_date` date DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `brief_message` text,
  PRIMARY KEY (`booking_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `youths_booking`
--

DROP TABLE IF EXISTS `youths_booking`;
CREATE TABLE IF NOT EXISTS `youths_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `brief_message` text,
  PRIMARY KEY (`booking_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- Constraints for table `men_booking`
--
ALTER TABLE `men_booking`
  ADD CONSTRAINT `men_booking_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- Constraints for table `missions_booking`
--
ALTER TABLE `missions_booking`
  ADD CONSTRAINT `missions_booking_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- Constraints for table `other_booking`
--
ALTER TABLE `other_booking`
  ADD CONSTRAINT `other_booking_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- Constraints for table `women_booking`
--
ALTER TABLE `women_booking`
  ADD CONSTRAINT `women_booking_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- Constraints for table `workshop_booking`
--
ALTER TABLE `workshop_booking`
  ADD CONSTRAINT `workshop_booking_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);

--
-- Constraints for table `youths_booking`
--
ALTER TABLE `youths_booking`
  ADD CONSTRAINT `youths_booking_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
