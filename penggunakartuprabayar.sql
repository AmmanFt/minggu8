-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2020 at 11:53 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `hapus_pengguna`
--

CREATE TABLE `hapus_pengguna` (
  `id` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `umur` int(3) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `tanggal_hapus` date DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hapus_pengguna`
--

INSERT INTO `hapus_pengguna` (`id`, `nama`, `umur`, `tanggal_lahir`, `jenis_kelamin`, `tanggal_hapus`, `user`) VALUES
(16, 'aku', 20, '1999-09-19', 'Pria', '2020-05-08', 'root@localhost'),
(16, 'aku', 20, '1999-09-19', 'Pria', '2020-05-08', 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` int(3) NOT NULL,
  `tanggal_lahir` datetime DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `umur`, `tanggal_lahir`, `jenis_kelamin`) VALUES
(1, 'Ahmad Munandar', 25, '1994-09-13 00:00:00', 'Pria'),
(2, 'Adi', 26, '1993-07-29 00:00:00', 'Pria'),
(3, 'Bakti Santoso', 27, '1992-08-03 00:00:00', 'Pria'),
(4, 'Rama Purnama', 24, '1995-10-03 00:00:00', 'Pria'),
(5, 'Ali Mughni', 27, '1993-05-05 00:00:00', 'Pria'),
(6, 'Iqbal Amrullah', 27, '1993-05-01 00:00:00', 'Pria'),
(7, 'Sofi', 26, '1993-06-23 00:00:00', 'Wanita'),
(8, 'Adinda', 27, '1992-06-03 00:00:00', 'Wanita'),
(9, 'Tony Q', 26, '1993-06-15 00:00:00', 'Pria'),
(10, 'Rudolf', 26, '1993-06-11 00:00:00', 'Pria'),
(11, 'Joni Sutanto', 26, '1993-06-20 00:00:00', 'Pria'),
(12, 'Ronny', 26, '1993-06-15 00:00:00', 'Pria'),
(13, 'Kinnay', 26, '1993-06-08 00:00:00', 'Wanita'),
(14, 'Nanadz', 26, '1993-06-27 00:00:00', 'Wanita'),
(15, 'Asep', 26, '1993-06-24 00:00:00', 'Pria'),
(16, 'Amman', 20, '1999-09-19 00:00:00', 'Pria');

--
-- Triggers `pengguna`
--
DELIMITER $$
CREATE TRIGGER `hapus_pengguna` AFTER DELETE ON `pengguna` FOR EACH ROW begin
insert into hapus_pengguna (id, nama, umur, tanggal_lahir, jenis_kelamin, tanggal_hapus, user) values (old.id, old.nama, old.umur, old.tanggal_lahir, old.jenis_kelamin, sysdate(), current_user);
end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
