-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: פברואר 28, 2019 בזמן 01:46 PM
-- גרסת שרת: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejs`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `files`
--

CREATE TABLE `files` (
  `id` int(250) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `error` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- הוצאת מידע עבור טבלה `files`
--

INSERT INTO `files` (`id`, `domain`, `error`) VALUES
(47, 'line', 'insert'),
(48, 'line', 'insert'),
(49, 'line', 'insert'),
(51, 'line', 'insert'),
(50, 'line', 'insert'),
(52, 'line', 'insert'),
(53, 'line', 'insert'),
(54, 'line', 'insert'),
(55, 'line', 'insert'),
(56, 'line', 'insert'),
(57, 'line', 'insert'),
(58, 'line', 'insert'),
(59, 'line', 'insert'),
(60, 'line', 'insert'),
(61, 'line', 'insert'),
(62, 'line', 'insert'),
(63, 'line', 'insert'),
(64, 'line', 'insert'),
(65, 'line', 'insert'),
(66, 'line', 'insert'),
(67, 'line', 'insert'),
(68, 'line', 'insert'),
(69, 'line', 'insert'),
(70, 'line', 'insert'),
(71, 'line', 'insert'),
(72, 'line', 'insert'),
(73, 'line', 'insert'),
(74, 'line', 'insert'),
(75, 'line', 'insert'),
(76, 'line', 'insert'),
(77, 'line', 'insert'),
(78, 'line', 'insert'),
(79, 'line', 'insert'),
(80, 'line', 'insert'),
(81, 'line', 'insert'),
(82, 'line', 'insert');

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `files`
--
ALTER TABLE `files`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
