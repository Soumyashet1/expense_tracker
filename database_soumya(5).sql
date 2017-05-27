-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 27, 2017 at 01:12 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_soumya`
--

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `exid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `exname` varchar(100) NOT NULL,
  `exdate` varchar(20) NOT NULL,
  `exprice` int(11) NOT NULL,
  `exattach` varchar(200) NOT NULL,
  `exstatus` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`exid`, `uid`, `tid`, `exname`, `exdate`, `exprice`, `exattach`, `exstatus`) VALUES
(1, 2, 1, '', '', 0, '', 'pending'),
(2, 3, 2, '', '', 0, '', 'pending'),
(3, 4, 3, '', '', 0, '', 'pending'),
(4, 2, 4, '', '', 0, '', 'pending'),
(5, 2, 5, '', '', 0, '', 'pending'),
(6, 3, 6, '', '', 0, '', 'pending'),
(7, 3, 6, 'bus ticket', '27-06-2017', 500, 'vgdfvedfc', 'rejected'),
(8, 3, 6, 'lunch', '27-06-2017', 150, 'asdfvadfvdvdfv', 'pending'),
(9, 3, 6, 'auto ', '27-06-2017', 60, 'sdfdgdfbhth', 'accepted'),
(10, 3, 2, 'bus ticket', '25-05-2017', 600, 'wfarg', 'pending'),
(11, 2, 5, 'bus ticket', '27-05-2017', 800, 'ewdfwefewfgvtjuy', 'pending'),
(12, 2, 5, 'dinner', '27-05-2017', 200, 'ascsdcfsdvd', 'pending'),
(13, 2, 1, 'flight ticket', '27-05-2017', 2000, 'fcsdvdfvfv', 'accepted'),
(14, 3, 7, '', '', 0, '', 'pending'),
(15, 7, 8, '', '', 0, '', 'pending'),
(16, 4, 9, '', '', 0, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `tdesc` varchar(1000) NOT NULL,
  `tstartd` varchar(30) NOT NULL,
  `tendd` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'ongoing'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`tid`, `uid`, `tname`, `tdesc`, `tstartd`, `tendd`, `status`) VALUES
(1, 2, 'Recruitment drive', 'RD banglore...', '27-05-2017', '29-05-2017', 'ongoing'),
(2, 3, 'AWS training', 'AWS training in banglore', '25-05-2017', '30-05-2017', 'ongoing'),
(3, 4, 'Recruitment Drive', 'Recruitment Drive in Manglore', '27-05-2017', '29-05-2017', 'ongoing'),
(4, 2, 'Bussiness development', 'BD meeting Mumbai ', '20-05-2017', '01-06-2017', 'ongoing'),
(5, 2, 'Client meeting', 'Client meeting in Banglore', '27-06-2017', '28-06-2017', 'ongoing'),
(6, 3, 'client meeting', 'client meeting in Belgaum', '27-06-2017', '29-06-2017', 'ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `ufname` varchar(30) NOT NULL,
  `ulname` varchar(30) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `upassword` varchar(10) NOT NULL,
  `urole` varchar(20) NOT NULL,
  `udept` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `ufname`, `ulname`, `uemail`, `upassword`, `urole`, `udept`) VALUES
(1, 'soumya', 'shet', 'testmgr@test.com', 'testmgr123', 'manager', 'finance'),
(2, 'Deepa', 'MG', 'deepa@gmail.com', 'deepa123', 'employee', 'finance'),
(3, 'Renu', 'shree', 'renu@gmail.com', 'renu123', 'employee', 'finance'),
(4, 'Kanchan', 'K', 'kanchan@gmail.com', 'kanchan123', 'employee', 'finance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `exid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
