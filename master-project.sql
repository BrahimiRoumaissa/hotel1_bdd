-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2020 at 12:26 AM
-- Server version: 5.1.54
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `master-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `password`, `id`) VALUES
('admin', '601f1889667efaebb33b8c12572835da3f027f78', 1);

-- --------------------------------------------------------

--
-- Table structure for table `list_of_rooms`
--

CREATE TABLE IF NOT EXISTS `list_of_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setuation` varchar(250) NOT NULL,
  `nomber` int(2) NOT NULL,
  `groupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `list_of_rooms`
--

INSERT INTO `list_of_rooms` (`id`, `setuation`, `nomber`, `groupID`) VALUES
(1, 'family', 1, 0),
(2, 'family', 2, 0),
(3, 'family', 3, 0),
(4, 'family', 4, 0),
(5, 'family', 5, 0),
(6, 'family', 6, 0),
(7, 'family', 7, 0),
(8, 'family', 8, 0),
(9, 'family', 9, 0),
(10, 'family', 10, 0),
(11, 'individual', 1, 0),
(12, 'individual', 2, 0),
(13, 'individual', 3, 0),
(14, 'individual', 4, 0),
(15, 'individual', 5, 0),
(16, 'individual', 6, 0),
(17, 'individual', 7, 0),
(18, 'individual', 8, 0),
(19, 'individual', 9, 0),
(20, 'individual', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`email`, `full_name`, `phone`, `message`, `id`) VALUES
('cc@jhv.xxc', 'bvcxxcc', '111111111111111111', '                fghjklm', 8);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `f_name` varchar(250) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `company` varchar(250) NOT NULL,
  `enter_date` date NOT NULL,
  `out_date` date NOT NULL,
  `setuation` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `email`, `f_name`, `l_name`, `company`, `enter_date`, `out_date`, `setuation`) VALUES
(21, 'brahimi@gamil.com', 'ggg', '', 'without', '2020-02-10', '2020-02-12', 'Induvidal'),
(18, 'hh@kk.com', 'ghgjj', '', '', '2020-02-02', '2020-02-05', 'Induvidal'),
(22, 'kjjffj@kcl.nnc', 'knblmj', 'kbjlkj', '', '2020-06-30', '2020-07-01', 'standard');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_conferonce`
--

CREATE TABLE IF NOT EXISTS `reservation_conferonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `enter_hour` time NOT NULL,
  `out_hour` time NOT NULL,
  `setuation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `reservation_conferonce`
--

INSERT INTO `reservation_conferonce` (`id`, `email`, `f_name`, `enter_hour`, `out_hour`, `setuation`) VALUES
(2, 'souda@gmail.com', 'souda', '00:00:00', '14:00:00', 'big');
