-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2018 at 03:01 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school-rvn`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `id` int(11) NOT NULL,
  `balnce` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `balnce`) VALUES
(1, 9000),
(2, 14000),
(3, 14000),
(4, 14000),
(5, 14000),
(6, 14000),
(7, 14000),
(8, 14000),
(9, 14000),
(10, 14000),
(11, 14000),
(12, 14000),
(13, 14000),
(14, 14000),
(15, 14000),
(16, 14000),
(17, 14000),
(18, 14000),
(19, 12000),
(20, 12000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `leftjoined`
-- (See below for the actual view)
--
CREATE TABLE `leftjoined` (
`id` int(11)
,`firstname` varchar(32)
,`midlename` varchar(32)
,`lastname` varchar(32)
,`address` text
,`dob` date
,`balnce` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `midlename` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `midlename`, `lastname`, `age`, `dob`, `address`) VALUES
(1, 'Cardo', 'Martin', 'Dalisay', 40, '1978-05-23', 'province'),
(2, 'Mickey', 'Waltz', 'Mouse', 32, '1968-06-13', 'Walt Disney World Resort, Orlando, FL 32830, USA'),
(3, 'Minni', 'Waltz', 'Mouse', 6, '2012-01-29', 'Walt Disney World Resort, Orlando, FL 32830, USA'),
(4, 'Izuku', 'Deku', 'Midoriya', 14, '2004-03-12', 'Musutafu, Japan.'),
(5, 'Joke', 'Broklyn', 'Peralta', 36, '1981-05-30', 'Parma Heights\r\nOhio 44130, USA'),
(6, 'Sophia', 'Lopez', 'Perez', 31, '1988-10-17', 'Parma Heights\r\nOhio 44130, USA'),
(7, 'Raymond', 'Nine', 'Hlot', 45, '1957-01-08', 'Parma Heights\r\nOhio 44130, USA'),
(8, 'Cameron', 'Jean', 'Black', 29, '1976-06-11', 'Onondaga\r\nNew York\r\nUSA'),
(9, 'Jonathan', 'Jean', 'Black', 27, '1986-11-24', 'Onondaga\r\nNew York\r\nUSA'),
(10, 'Earnest', 'Glover', 'Marks', 32, '1984-01-13', 'Midtown\r\nAtlanta, GA, USA'),
(11, 'marc', 'chua', 'yim', 28, '1990-01-01', 'potrero,malabon'),
(12, 'sarada', 'miyuga', 'uchija', 9, '2008-07-18', 'Konoha'),
(13, 'yuno', 'Ty', 'astra', 9, '2009-03-16', 'Clover Kingdom'),
(14, 'don', 'Juan', 'pepot', 45, '1972-12-24', 'Pitong gatang, Manila'),
(15, 'Juana', 'ramirez', 'Seniora', 62, '1956-01-03', 'Manila'),
(16, 'Princess', 'Mabangis', 'Thea', 19, '1998-11-17', 'Malabon'),
(17, 'marc', 'D', 'Luffy', 32, '1999-03-21', 'Malabon'),
(18, 'Girly', 'D', 'Luffy', 81, '1921-03-21', 'Malabon'),
(19, 'Tommy', 'D', 'Luffy', 19, '1999-03-21', 'Manila'),
(20, 'Wells', 'D', 'Luffy', 97, '1921-03-21', 'Manila');

-- --------------------------------------------------------

--
-- Structure for view `leftjoined`
--
DROP TABLE IF EXISTS `leftjoined`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `leftjoined`  AS  select `students`.`id` AS `id`,`students`.`firstname` AS `firstname`,`students`.`midlename` AS `midlename`,`students`.`lastname` AS `lastname`,`students`.`address` AS `address`,`students`.`dob` AS `dob`,`balance`.`balnce` AS `balnce` from (`students` left join `balance` on((`students`.`id` = `balance`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
