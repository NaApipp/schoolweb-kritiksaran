-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2025 at 01:38 PM
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
-- Database: `db_pertanyaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan_kritik_saran`
--

CREATE TABLE `pertanyaan_kritik_saran` (
  `nama` varchar(500) NOT NULL,
  `email` varchar(300) NOT NULL,
  `tipe` enum('pertanyaan','kritik dan saran') NOT NULL,
  `pesan` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertanyaan_kritik_saran`
--

INSERT INTO `pertanyaan_kritik_saran` (`nama`, `email`, `tipe`, `pesan`) VALUES
('Nabil Apip', 'nabilariftriyanto@gmail.com', '', 'Halo aku mau daftar'),
('Nabil Apip', 'nabilariftriyanto@gmail.com', 'pertanyaan', 'Halo aku mau daftar'),
('Apps V2', 'nabilariftriyanto@gmail.com', 'kritik dan saran', 'sekolah yang niat'),
('Apps', 'nabilariftriyanto@gmail.com', 'pertanyaan', 'kapan ppdb'),
('Apps', 'nabilapipp@gmail.com', 'pertanyaan', 'kapan ppdb?');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
