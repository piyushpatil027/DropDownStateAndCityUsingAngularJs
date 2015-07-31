-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2015 at 08:24 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_angularjs_selectbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state_id` int(10) unsigned NOT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `state_name` (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `state_id`, `city`, `created_at`) VALUES
(18, 14, 'Agra ', '2015-07-31 06:13:57'),
(19, 14, 'Kanpur', '2015-07-31 06:13:57'),
(20, 14, 'Mathura ', '2015-07-31 06:13:57'),
(21, 5, 'Alur ', '2015-07-31 06:13:57'),
(22, 5, 'Nellore', '2015-07-31 06:13:57'),
(23, 5, 'Piler', '2015-07-31 06:13:57'),
(24, 6, 'Bokajan', '2015-07-31 06:13:57'),
(25, 7, 'Birpur', '2015-07-31 06:13:57'),
(26, 7, 'Gaya', '2015-07-31 06:13:57'),
(27, 8, 'Bastar', '2015-07-31 06:13:57'),
(28, 9, 'Barwala', '2015-07-31 06:18:48'),
(29, 9, 'Godhra', '2015-07-31 06:18:48'),
(30, 9, 'Kalawad', '2015-07-31 06:18:48'),
(31, 11, 'Aland', '2015-07-31 06:18:48'),
(32, 11, 'Bidar', '2015-07-31 06:18:48'),
(33, 10, 'Chhachrauli', '2015-07-31 06:18:48'),
(34, 13, 'Akola', '2015-07-31 06:18:48'),
(35, 13, 'Beed', '2015-07-31 06:18:48'),
(36, 13, 'Nagpur', '2015-07-31 06:18:48'),
(37, 13, 'Mumbai', '2015-07-31 06:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE IF NOT EXISTS `tbl_state` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `state`, `created_at`) VALUES
(5, 'AndhraPradesh ', '2015-07-31 06:09:21'),
(6, 'Assam', '2015-07-31 06:09:21'),
(7, 'Bihar', '2015-07-31 06:09:21'),
(8, 'Chhattisgarh', '2015-07-31 06:09:21'),
(9, 'Gujarat', '2015-07-31 06:09:21'),
(10, 'Haryana', '2015-07-31 06:09:21'),
(11, 'Karnataka', '2015-07-31 06:09:21'),
(12, 'Kerala', '2015-07-31 06:09:21'),
(13, 'Maharashtra', '2015-07-31 06:09:21'),
(14, 'UttarPradesh', '2015-07-31 06:09:21');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD CONSTRAINT `tbl_city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `tbl_state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
