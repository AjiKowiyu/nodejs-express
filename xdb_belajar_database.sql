-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2024 at 02:42 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xdb_belajar_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL COMMENT 'id table',
  `nama` varchar(100) NOT NULL COMMENT 'nama karyawan',
  `alamat` varchar(500) NOT NULL COMMENT 'alamat tempat tinggal karyawan',
  `no_telepon` varchar(15) DEFAULT NULL COMMENT 'nomor telepon',
  `gol_darah` varchar(2) DEFAULT NULL COMMENT 'golongan darah',
  `jenis_kelamin` char(1) NOT NULL COMMENT 'jenis kelamin',
  `departemen_id` int(11) DEFAULT NULL,
  `jabatan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama`, `alamat`, `no_telepon`, `gol_darah`, `jenis_kelamin`, `departemen_id`, `jabatan_id`) VALUES
(1, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 3, 1),
(2, 'Luna Maya', 'Jogja', '081299990000', 'A', 'P', 1, 3),
(4, 'Raffi Ahmad', 'Bandung', '0229292929', 'O', 'L', NULL, NULL),
(6, 'Hotman Paris', 'Jakarta Selatan', '77788899', 'B', 'L', NULL, NULL),
(7, 'Deddy Corbuzier', 'Jakarta', '081299990000', 'A', 'L', 2, 4),
(8, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(9, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(11, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(12, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(13, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(14, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', 1, 2),
(15, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL),
(16, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL),
(17, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL),
(18, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL),
(19, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL),
(20, 'Luna Okta', 'Jogja', '081299990000', 'A', 'P', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_departemen`
--

CREATE TABLE `master_departemen` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_departemen`
--

INSERT INTO `master_departemen` (`id`, `kode`, `nama`) VALUES
(1, 'HR', 'Human Resources'),
(2, 'FIN', 'Finance'),
(3, 'IT', 'Information Technology'),
(4, 'MAR', 'Marketing'),
(5, 'PUR', 'Purchasing'),
(6, 'GA', 'General Affair');

-- --------------------------------------------------------

--
-- Table structure for table `master_jabatan`
--

CREATE TABLE `master_jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `deskripsi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_jabatan`
--

INSERT INTO `master_jabatan` (`id`, `nama`, `role`, `deskripsi`) VALUES
(1, 'Officer', 'Programmer', 'Programmer bertugas mengembangkan aplikasi atau software perusahaan'),
(2, 'Officer', 'System Analyst', 'Bertugas menganalisis kebutuhan pengembangan aplikasi'),
(3, 'Officer', 'Admin', 'Bertugas menangani kebutuhan administrasi masing-masing departemen'),
(4, 'Manager', '', 'Bertugas mengelola staff/officer/pegawai yg berada di bawahnya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_departemen`
--
ALTER TABLE `master_departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_jabatan`
--
ALTER TABLE `master_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id table', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `master_departemen`
--
ALTER TABLE `master_departemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_jabatan`
--
ALTER TABLE `master_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
