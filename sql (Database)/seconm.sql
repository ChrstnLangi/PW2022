-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 01:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seconm`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `Id_User` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `NoH` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`Id_User`, `Nama`, `Username`, `Email`, `Password`, `NoH`) VALUES
(1, 'asas', 'Juan', 'asas@dada.com', 'test', '12313213412'),
(2, 'aadwad', 'tano', 'juanlangi@gmail.com', '2114', '24213');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `Id_Pesan` int(11) NOT NULL,
  `Id_User` int(11) NOT NULL,
  `Id_Produk` int(11) NOT NULL,
  `Alamat` varchar(500) NOT NULL,
  `Catatan` varchar(500) NOT NULL,
  `Penerima` varchar(100) NOT NULL,
  `NoHP` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `Id_Produk` int(50) NOT NULL,
  `Nama_Produk` varchar(100) NOT NULL,
  `Harga` bigint(20) NOT NULL,
  `Tinggi` varchar(100) NOT NULL,
  `Tenaga` varchar(100) NOT NULL,
  `Berat` varchar(100) NOT NULL,
  `Mesin` varchar(100) NOT NULL,
  `Foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`Id_Produk`, `Nama_Produk`, `Harga`, `Tinggi`, `Tenaga`, `Berat`, `Mesin`, `Foto`) VALUES
(1, 'Nex Crossover', 19495000, '1.055mm', '6,9kw', '94kg', '113cc', 'image/vehicle-1.png'),
(2, 'Honda Beat', 17926000, '1.045mm', '6,9kw', '93kg', '113cc', 'image/vehicle-3.png'),
(3, 'GSX-R150', 34231000, '1.075mm', '14,1kw', '131kg', '147,3cc', 'image/vehicle-5.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`Id_User`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`Id_Pesan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Id_Produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `Id_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `Id_Pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `Id_Produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
