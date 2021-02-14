-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 03:03 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_calon`
--

CREATE TABLE `tb_calon` (
  `id_calon` int(11) NOT NULL,
  `nama_calon` varchar(250) NOT NULL,
  `foto_calon` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_calon`
--

INSERT INTO `tb_calon` (`id_calon`, `nama_calon`, `foto_calon`, `keterangan`) VALUES
(1, 'Sandhika Galih', 'img-teacher-5.jpg', 'Lecturer at Pasundan University'),
(2, 'Aldino', '171510051.jpg', 'Student at Putera Batam University');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `jenis` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`, `status`, `jenis`) VALUES
(3, 'Tukino', 'admin', 'admin', 'Administrator', '0', 'PAN'),
(6, 'Tisha Arum Vania', 'arum', '123', 'Petugas', '0', 'PAN'),
(15, 'Zelikha Athiya Kida Putri', 'athiya', '123', 'Pemilih', '0', 'PST'),
(16, 'Nuha Delviva Prameswari', 'nuha', '123', 'Pemilih', '0', 'PST');

-- --------------------------------------------------------

--
-- Table structure for table `tb_vote`
--

CREATE TABLE `tb_vote` (
  `id_vote` int(11) NOT NULL,
  `id_calon` varchar(250) NOT NULL,
  `id_pemilih` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_vote`
--

INSERT INTO `tb_vote` (`id_vote`, `id_calon`, `id_pemilih`, `date`) VALUES
(10, '1', '15', '2020-06-16 18:41:51'),
(11, '2', '16', '2020-06-16 18:42:06'),
(12, '2', '17', '2020-06-16 18:42:06'),
(13, '1', '18', '2020-06-16 18:40:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_calon`
--
ALTER TABLE `tb_calon`
  ADD PRIMARY KEY (`id_calon`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_vote`
--
ALTER TABLE `tb_vote`
  ADD PRIMARY KEY (`id_vote`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_calon`
--
ALTER TABLE `tb_calon`
  MODIFY `id_calon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12343;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_vote`
--
ALTER TABLE `tb_vote`
  MODIFY `id_vote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
