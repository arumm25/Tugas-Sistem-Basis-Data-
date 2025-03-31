-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2025 at 04:06 PM
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
-- Database: `db_sp_15469`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `hapus_obat` (IN `p_Kd_obat` CHAR(5))   BEGIN 
	DELETE FROM obat WHERE Kd_obat = p_Kd_obat;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `show_obat` ()   BEGIN
	SELECT * FROM obat;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_obat` (IN `p_Kd_obat` CHAR(5), IN `p_Nama_obat` VARCHAR(50), IN `p_isi` INT, IN `p_Harga_satuan` INT, IN `p_Pabrik` VARCHAR(25))   BEGIN
    INSERT INTO obat (Kd_obat, Nama_obat, isi, Harga_satuan, Pabrik) 
    VALUES (p_Kd_obat, p_Nama_obat, p_isi, p_Harga_satuan, p_Pabrik);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_Harga_obat` (IN `p_Kd_obat` CHAR(5), IN `p_Harga_baru` INT)   BEGIN
    UPDATE obat
    SET Harga_satuan = p_Harga_baru
    WHERE Kd_obat = p_Kd_obat;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `Kd_obat` char(5) NOT NULL,
  `Nama_obat` varchar(50) DEFAULT NULL,
  `isi` int(5) DEFAULT NULL,
  `Harga_satuan` int(10) DEFAULT NULL,
  `Pabrik` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`Kd_obat`, `Nama_obat`, `isi`, `Harga_satuan`, `Pabrik`) VALUES
('ACL15', 'ACTOS 15 MG TABLET', 14, 8200, 'Takeda'),
('ACL20', 'ACCOLATE 20 MG TABLET', 28, 9000, 'Zaneca'),
('ACT30', 'ACTOS 30 MG TABLET', 20, 12300, 'Takeda'),
('ADL30', 'ADALAT OROS 30 MG TABLET', 30, 8100, 'Bayer'),
('ADL60', 'ADALAT OROS 60 MG TABLET', 30, 13100, 'Bayer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`Kd_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
