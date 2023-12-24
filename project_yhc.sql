-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2023 at 05:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_yhc`
--

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE `kursus` (
  `id` int(11) NOT NULL,
  `judul_kursus` varchar(50) NOT NULL,
  `deskripsi_kursus` varchar(200) NOT NULL,
  `durasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kursus`
--

INSERT INTO `kursus` (`id`, `judul_kursus`, `deskripsi_kursus`, `durasi`) VALUES
(1011, 'Web Developer', 'Full-Stack Development', '5 jam'),
(1012, 'Mobile Development', 'Full Stack in Mobile Development', '5 jam'),
(1013, 'Kecerdasan Buatan', 'kECERDASAN buatan', '5 jam'),
(1014, 'Front-End Developer', 'Front-End Developer', '5 jam');

-- --------------------------------------------------------

--
-- Table structure for table `materi_kursus`
--

CREATE TABLE `materi_kursus` (
  `id_materi` int(11) NOT NULL,
  `id_kursus` int(50) NOT NULL,
  `judul_materi` varchar(50) NOT NULL,
  `deskripsi_materi` varchar(200) NOT NULL,
  `link_materi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materi_kursus`
--

INSERT INTO `materi_kursus` (`id_materi`, `id_kursus`, `judul_materi`, `deskripsi_materi`, `link_materi`) VALUES
(12, 1012, 'IHCO ', 'IOHSOGV', 'klhjaH'),
(13, 1011, 'Front End', 'Front End', 'Front End'),
(14, 1012, 'ahayy', 'ihiyy', 'uhuyy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi_kursus`
--
ALTER TABLE `materi_kursus`
  ADD PRIMARY KEY (`id_materi`),
  ADD KEY `id_kursus` (`id_kursus`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `materi_kursus`
--
ALTER TABLE `materi_kursus`
  ADD CONSTRAINT `materi_kursus_ibfk_1` FOREIGN KEY (`id_kursus`) REFERENCES `kursus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
