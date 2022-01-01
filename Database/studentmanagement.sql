-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 01, 2022 at 12:38 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `classtimetable`
--

DROP TABLE IF EXISTS `classtimetable`;
CREATE TABLE IF NOT EXISTS `classtimetable` (
  `class` varchar(12) NOT NULL,
  `science` varchar(255) NOT NULL,
  `english` varchar(255) NOT NULL,
  `socialstudies` varchar(255) NOT NULL,
  `mathematics` varchar(255) NOT NULL,
  PRIMARY KEY (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `classtimetable`
--

INSERT INTO `classtimetable` (`class`, `science`, `english`, `socialstudies`, `mathematics`) VALUES
('P6', '8:00am - 10:00am', '10:00am - 12:00pm', '2:00pm - 3:00pm', '3:00pm - 5:00pm'),
('P7', '3:00pm - 5:00pm', '2:00pm - 3:00pm', '10:00am - 12:00pm', '8:00am - 10:00am'),
('P5', '10:00am - 12:00pm', '8:00am - 10:00am', '3:00pm - 5:00pm', '2:00pm - 3:00pm'),
('P4', '2:00pm - 3:00pm', '3:00pm - 5:00pm', '8:00am - 10:00am', '10:00am - 12:00pm');

-- --------------------------------------------------------

--
-- Table structure for table `studentcredentials`
--

DROP TABLE IF EXISTS `studentcredentials`;
CREATE TABLE IF NOT EXISTS `studentcredentials` (
  `id` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `studentcredentials`
--

INSERT INTO `studentcredentials` (`id`, `password`) VALUES
('stud-1', 'stud123pass');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `studentid` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `sex` varchar(15) NOT NULL,
  `age` int NOT NULL,
  `class` varchar(100) NOT NULL,
  PRIMARY KEY (`studentid`),
  KEY `class` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentid`, `firstname`, `surname`, `sex`, `age`, `class`) VALUES
('stud-1', 'Muwanguzi', 'Joseph', 'Male', 17, 'P6');

-- --------------------------------------------------------

--
-- Table structure for table `studentsresults`
--

DROP TABLE IF EXISTS `studentsresults`;
CREATE TABLE IF NOT EXISTS `studentsresults` (
  `studentid` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `science` int NOT NULL,
  `english` int NOT NULL,
  `socialstudies` int NOT NULL,
  `mathematics` int NOT NULL,
  `exam` varchar(100) NOT NULL,
  KEY `studentid` (`studentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `studentsresults`
--

INSERT INTO `studentsresults` (`studentid`, `science`, `english`, `socialstudies`, `mathematics`, `exam`) VALUES
('stud-1', 89, 75, 87, 94, 'Beginning of Term 1');

-- --------------------------------------------------------

--
-- Table structure for table `teachercredentials`
--

DROP TABLE IF EXISTS `teachercredentials`;
CREATE TABLE IF NOT EXISTS `teachercredentials` (
  `id` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teachercredentials`
--

INSERT INTO `teachercredentials` (`id`, `name`, `password`) VALUES
('teach-1', 'Kwagala Mary', 'teacher123pass');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
