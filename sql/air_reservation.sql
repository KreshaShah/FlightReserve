-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2021 at 01:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `air reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flightId` int(11) NOT NULL,
  `flightTerm` varchar(45) NOT NULL,
  `flightTicket` int(5) NOT NULL,
  `numFlights` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flightId`, `flightTerm`, `flightTicket`, `numFlights`) VALUES
(1121, 'A-8', 121, 1),
(1212, 'A-8', 2222, 1),
(1223, 'B-1', 132, 2),
(1244, 'C-1', 154, 1),
(1433, 'B-8', 222, 1),
(1554, 'D-1', 187, 1);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `name` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `passNum` bigint(20) NOT NULL,
  `passId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`name`, `dob`, `passNum`, `passId`) VALUES
('a', '1990-08-08', 2992002900, 1155),
('adsdsdsd', '1990-09-09', 122121212, 121212),
('Lebron james', '1993-02-20', 3015547339, 1332),
('Nicholas ojea', '1990-08-08', 2992002900, 1155),
('Nicholas Orji', '1997-05-25', 30145514776, 1233),
('Usain bolt', '1994-07-03', 3017882883, 1277);

-- --------------------------------------------------------

--
-- Table structure for table `plane`
--

CREATE TABLE `plane` (
  `arrival` time(5) NOT NULL,
  `departure` time(5) DEFAULT NULL,
  `planeNum` int(9) DEFAULT NULL,
  `seatsNum` int(9) DEFAULT NULL,
  `planeSize` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plane`
--

INSERT INTO `plane` (`arrival`, `departure`, `planeNum`, `seatsNum`, `planeSize`) VALUES
('00:11:22.00000', '00:11:22.00000', 377773737, 388883938, 'Big'),
('10:30:00.00000', '02:30:00.00000', 1557, 788, 'Big'),
('11:00:00.00000', '12:00:00.00000', 12221, 21, 'Big'),
('11:45:00.00000', '01:35:00.00000', 1898, 558, 'Small'),
('16:00:00.00000', '18:00:00.00000', 1479, 134, 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticketNum` int(11) NOT NULL,
  `seatNum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticketNum`, `seatNum`) VALUES
(11112, 163),
(11222, 273),
(12221, 283),
(12332, 299),
(122299, 222);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flightId`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `plane`
--
ALTER TABLE `plane`
  ADD PRIMARY KEY (`arrival`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketNum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
