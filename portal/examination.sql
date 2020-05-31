-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2020 at 07:49 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examination`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(20) NOT NULL,
  `departname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `departname`) VALUES
(1, 'Computer Science & Enginerring'),
(2, 'Electrical&Electronic Engineering'),
(3, 'Mechanical Engineering'),
(4, 'Civil Engineering'),
(5, 'Information&Technology');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(20) NOT NULL,
  `rollno` int(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `totalmark` int(50) DEFAULT '100',
  `markobtain` int(100) DEFAULT NULL,
  `Result` tinyint(1) DEFAULT NULL,
  `Grade` varchar(100) DEFAULT NULL,
  `deptId` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `rollno`, `subject`, `totalmark`, `markobtain`, `Result`, `Grade`, `deptId`) VALUES
(1, 2121, '1', 100, 98, 0, 'E', 1),
(2, 2121, '2', 100, 67, 1, 'S', 1),
(3, 2121, '4', 100, 41, 1, 'C', 1),
(4, 2121, '5', 100, 65, 1, 'B', 1),
(5, 2121, '6', 100, 87, 1, 'A+', 1),
(6, 7485, '12', 100, 74, 1, 'A', 3),
(7, 7485, '11', 100, 85, 1, 'A+', 3),
(8, 7485, '15', 100, 64, 1, 'B', 3),
(9, 7485, '13', 100, 71, 1, 'A', 3),
(10, 7485, '14', 100, 92, 1, 'S', 3),
(11, 2124, '11', 100, 85, 1, 'A+', 4),
(12, 2124, '17', 100, 47, 0, 'E', 4),
(13, 2124, '14', 100, 74, 1, 'A', 4);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(50) NOT NULL,
  `rollno` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `dept` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `rollno`, `name`, `email`, `mobile`, `dept`) VALUES
(1, 1234, 'jeevitha', 'jeevitha@gmail.com', '7485964152', '2'),
(2, 2121, 'suganthi', 'suganthi@gmail.com', '85749614', '1'),
(3, 7485, 'thangavel', 'thangavel@gmail.com', '74854152', '3'),
(4, 2124, 'aravind', 'aravind@gmail.com', '7458451241', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 1, 6, 1, '2017-06-07 11:16:56', '2017-06-07 11:16:56'),
(4, 1, 1, 1, '2017-06-12 06:46:32', '2017-06-12 06:46:32'),
(5, 1, 2, 1, '2017-06-12 06:46:35', '2017-06-12 06:46:35'),
(6, 1, 5, 1, '2017-06-12 06:46:40', '2017-06-12 06:46:40'),
(8, 1, 4, 1, '2017-08-26 03:21:27', '2017-08-26 03:21:27'),
(10, 2, 6, 1, '2017-08-26 03:22:05', '2017-08-26 03:22:05'),
(12, 2, 7, 1, '2017-08-26 03:22:15', '2017-08-26 03:22:15'),
(13, 2, 8, 1, '2017-08-26 03:22:20', '2017-08-26 03:22:20'),
(14, 2, 9, 1, '2017-08-28 18:44:06', '2017-08-28 18:44:06'),
(15, 2, 10, 1, '2017-08-28 18:44:12', '2017-08-28 18:44:12'),
(16, 3, 11, 1, '2017-08-28 18:44:18', '2017-08-28 18:44:18'),
(17, 3, 12, 1, '2017-08-28 18:44:23', '2017-08-28 18:44:23'),
(18, 3, 13, 1, '2017-08-28 18:53:12', '2017-08-28 18:53:12'),
(19, 3, 14, 1, '2017-08-28 18:53:19', '2017-08-28 18:53:19'),
(20, 3, 15, 1, '2017-08-28 18:53:38', '2017-08-28 18:53:38'),
(21, 4, 11, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(22, 4, 14, 0, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(23, 4, 16, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),
(24, 4, 17, 1, '2017-08-28 19:22:31', '2017-08-28 19:22:31'),
(25, 5, 11, 1, '2017-08-28 19:22:36', '2017-08-28 19:22:36'),
(26, 5, 4, 1, '2017-08-28 19:22:42', '2017-08-28 19:22:42'),
(27, 5, 2, 0, '2017-08-28 19:22:47', '2017-08-28 19:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'DataStructure', 'MTH01', '2017-06-07 09:23:57', '2020-05-29 07:27:59'),
(2, 'Design&Analysis', 'ENG11', '2017-06-07 09:24:25', '2020-05-29 07:28:18'),
(4, 'Digital Electronica', 'SC1', '2017-06-07 09:36:15', '2020-05-29 07:28:31'),
(5, 'Object Oriented programming', 'CS', '2017-06-07 09:36:23', '2020-05-29 07:28:43'),
(6, 'Operating Sytem', 'SS08', '2017-08-28 18:43:29', '2020-05-29 07:28:56'),
(7, 'Engineering Mathematics', 'PH03', '2017-08-28 18:52:41', '2020-05-29 07:31:44'),
(8, 'Power Electronics', 'CH65', '2017-08-28 19:21:46', '2020-05-29 07:31:58'),
(9, 'Industrial Engineering & management', '', '2020-05-29 07:34:20', '2020-05-29 07:34:20'),
(10, 'Microprocessors & Applications', '', '2020-05-29 07:34:42', '2020-05-29 07:34:42'),
(11, 'Engineering Mathematics', '', '2020-05-29 07:39:30', '2020-05-28 18:30:00'),
(12, 'Applied Thermodynamics', '', '2020-05-29 07:39:30', '2020-05-28 18:30:00'),
(13, 'Kinematics of Machines', '', '2020-05-29 07:39:57', '2020-05-28 18:30:00'),
(14, 'Manufacturing Process', '', '2020-05-29 07:39:57', '2020-05-28 18:30:00'),
(15, 'Foundry & Forging lab / Machine Shop\r\n\r\n', '', '2020-05-29 07:40:14', '2020-05-28 18:30:00'),
(16, 'Theory of Elasticity', '', '2020-05-29 07:43:36', '2020-05-28 18:30:00'),
(17, 'Ground Improvement Techniques', '', '2020-05-29 07:43:36', '2020-05-28 18:30:00'),
(18, 'Graph Theory and Combinatorics', '', '2020-05-29 07:45:43', '2020-05-28 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
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
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
