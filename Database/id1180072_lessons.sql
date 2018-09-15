-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2018 at 12:33 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1180072_lessons`
--

-- --------------------------------------------------------

--
-- Table structure for table `Lessons`
--

CREATE TABLE `Lessons` (
  `ID` int(11) NOT NULL,
  `Nume` text COLLATE utf8_unicode_ci,
  `Capitol` text COLLATE utf8_unicode_ci,
  `Nr` text COLLATE utf8_unicode_ci,
  `URL` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Lessons`
--

INSERT INTO `Lessons` (`ID`, `Nume`, `Capitol`, `Nr`, `URL`) VALUES
(2, 'Variabile', '1', '1', 'https://proiectexemplu.000webhostapp.com/Lessons/PDFs/inspiron-17-5767-laptop_setup guide_en-us.pdf'),
(3, 'CV', '1', '2', 'https://proiectexemplu.000webhostapp.com/Lessons/PDFs/Hang Alexandru CV  (1).pdf'),
(5, 'Variabile+cv', '1', '2', 'https://proiectexemplu.000webhostapp.com/Lessons/PDFs/Hang Alexandru CV  (1).pdf'),
(8, 'exemplu', '1', '6', 'https://proiectexemplu.000webhostapp.com/Lessons/PDFs/exemplu6Hang Alexandru CV  (1).pdf'),
(9, 'ex', '1', '5', 'https://proiectexemplu.000webhostapp.com/Lessons/PDFs/ex847Hang Alexandru CV  (1).pdf'),
(13, 'Clean code', '1', '8', 'https://proiectexemplu.000webhostapp.com/Lessons/PDFs/Clean code599Clean.Code.A.Handbook.of.Agile.Software.Craftsmanship.pdf'),
(14, 'Basics', '2', '1', 'https://proiectexemplu.000webhostapp.com/Lessons/PDFs/Basics214Hang Alexandru - CV-3.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `Quiz1`
--

CREATE TABLE `Quiz1` (
  `ID` int(11) NOT NULL,
  `Intrebare` text COLLATE utf8_unicode_ci,
  `raspuns1` text COLLATE utf8_unicode_ci,
  `raspuns2` text COLLATE utf8_unicode_ci,
  `raspuns3` text COLLATE utf8_unicode_ci,
  `corect` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Quiz1`
--

INSERT INTO `Quiz1` (`ID`, `Intrebare`, `raspuns1`, `raspuns2`, `raspuns3`, `corect`) VALUES
(1, 'Care inseamna http ?', 'Hyper text transfer protocol', 'HTML', 'abc', '1'),
(2, 'Care dintre urmatoarele este limbaj compilat?', 'Python', 'C++', 'JS', '2'),
(3, 'SEO inseamna ?', 'Societate Europeana Organizata', 'Search Engine Optimisation', 'Soare, Est, Olanda', '2'),
(5, 'Care dintre urmatoarele telefoane NU foloseste Android ?', 'Samsung Galaxy S9', 'ASUS Zenfone 5 Z', 'IPhone X', '3'),
(6, 'Care dintre urmatoarele limbaje  se poate folosi doar pentru front-end ?', 'HTML', 'JS', 'PHP', '1'),
(9, 'Cine a fondat Microsoft?', 'Bush', 'Gates', 'Jobs', '2'),
(10, 'Ce inseamna SQL ?', 'Structured Query Language', 'Save Quality Language', 'Send Query LAnguage', '1'),
(11, 'Care dintre urmatoarele limbaje este dezvoltat DE CATRE ORACLE ?', 'C++', 'Java', 'C#', '2'),
(12, 'JavaScript foloseste typing discipline :', 'Strong', 'Weak', 'OOP', '2'),
(13, 'Cum se defineste corect o metoda principala intr-o clasa in Java ?', ' public static int main(String[] args)', 'public static void main(String[] args)', 'public int main(String[] args)', '2'),
(14, 'Ce inseamna PHP ?', ' Personal Hypertext Processor', ' PHP: Hypertext Preprocessor', ' Private Home Page', '2'),
(17, 'HTML inseamna', 'Hyper Text markup language', 'High Temperature Molten Lava', 'Home Therapy Medical Money', '1'),
(18, 'Care dintre urmatoarele companii nu este din USA ?', 'BitDefender', 'Oracle', 'Google', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Quiz2`
--

CREATE TABLE `Quiz2` (
  `ID` int(11) NOT NULL,
  `Intrebare` text COLLATE utf8_unicode_ci,
  `raspuns1` text COLLATE utf8_unicode_ci,
  `raspuns2` text COLLATE utf8_unicode_ci,
  `raspuns3` text COLLATE utf8_unicode_ci,
  `corect` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Quiz2`
--

INSERT INTO `Quiz2` (`ID`, `Intrebare`, `raspuns1`, `raspuns2`, `raspuns3`, `corect`) VALUES
(1, 'Cine este Alex Hang ?', 'Bo$$', 'Student', 'Cel mai tare din parcare :)', '3');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID` int(11) NOT NULL,
  `UserName` text COLLATE utf8_unicode_ci,
  `Password` text COLLATE utf8_unicode_ci,
  `Quiz1` int(11) DEFAULT NULL,
  `Quiz2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `UserName`, `Password`, `Quiz1`, `Quiz2`) VALUES
(1, '1234', '123', 0, 0),
(2, 'alexandruhang@yahoo.com', '1234', 100, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Lessons`
--
ALTER TABLE `Lessons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Quiz1`
--
ALTER TABLE `Quiz1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Quiz2`
--
ALTER TABLE `Quiz2`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Lessons`
--
ALTER TABLE `Lessons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Quiz1`
--
ALTER TABLE `Quiz1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Quiz2`
--
ALTER TABLE `Quiz2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
