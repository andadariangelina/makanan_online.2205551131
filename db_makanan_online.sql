-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 11:09 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_makanan_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_telp` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `no_telp`, `alamat`, `password`) VALUES
(1, 'Angelina', 'angelina@gmail.com', '081237022897', 'Bali', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id_order` varchar(200) NOT NULL,
  `id_restaurant` varchar(200) NOT NULL,
  `kualitas_menu` varchar(200) NOT NULL,
  `jarak_lokasi` varchar(200) NOT NULL,
  `total_harga` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id_restaurant` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `makanan` varchar(200) NOT NULL,
  `harga_makanan` varchar(200) NOT NULL,
  `minuman` varchar(200) NOT NULL,
  `harga_minuman` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id_restaurant`, `nama`, `alamat`, `makanan`, `harga_makanan`, `minuman`, `harga_minuman`) VALUES
(1, 'NAMA', 'ALAMAT', 'MAKANAN', 'HARGA MAKANAN', 'MINUMAN', 'HARGA MINUMAN'),
(2, 'NAMA', 'ALAMAT', 'MAKANAN', 'HARGA MAKANAN', 'MINUMAN', 'HARGA MINUMAN'),
(3, 'NAMA', 'ALAMAT', 'MAKANAN', 'HARGA MAKANAN', 'MINUMAN', 'HARGA MINUMAN'),
(4, 'NAMA', 'ALAMAT', 'MAKANAN', 'HARGA MAKANAN', 'MINUMAN', 'HARGA MINUMAN'),
(5, 'NAMA', 'ALAMAT', 'MAKANAN', 'HARGA MAKANAN', 'MINUMAN', 'HARGA MINUMAN'),
(6, 'NAMA', 'ALAMAT', 'MAKANAN', 'HARGA MAKANAN', 'MINUMAN', 'HARGA MINUMAN'),
(7, 'NAMA', 'ALAMAT', 'MAKANAN', 'HARGA MAKANAN', 'MINUMAN', 'HARGA MINUMAN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_telp` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `no_telp`, `alamat`, `password`, `level`) VALUES
(1, 'angel', 'admin@gmail.com', '081255907604', 'nusadua', '123', 'admin'),
(2, 'ananta', 'custumer@gmail.com', '081678092374', 'bualu', '1234', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`),
  ADD UNIQUE KEY `id_restaurant` (`id_restaurant`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id_restaurant`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id_restaurant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
