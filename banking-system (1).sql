-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 06:20 PM
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
-- Database: `banking-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `current-balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `current-balance`) VALUES
(1, 'jimmy louis', 'jimmy louis03@gmail.com', 3500),
(2, 'Harry brick', 'harrybric@gmail.com', 5000),
(3, 'priya patel', 'priyapatel12@gmail.com', 8000),
(4, 'sakshi Arora', 'sakshi Arora90@gmail.com', 2800),
(5, 'Rohan Mehra', 'rohan mehra82@gmail.com', 7800),
(6, 'harini mane', 'harini23@gmail.com', 8000),
(7, 'darsh mehra', 'darsh mehra45@gmail.com', 1500),
(8, 'sameera', 'sameera77@gmail.com', 3900);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--
	
INSERT INTO `transaction` (`sender`, `receiver`, `amount`) VALUES
('jimmy louis', 'priya patel', 200),
('harini mane', 'Rohan Mehra', 700),
('sakshi Arora', 'jimmy louis', 200),
('darsh mehra', 'Rohan Mehra', 500),
('sameera', 'Rohan Mehra', 100),


--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
