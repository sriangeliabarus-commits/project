-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2026 at 06:24 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joki_tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `user`, `password`) VALUES
(1, 'stevani', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_telepon` varchar(100) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama`, `no_telepon`, `instansi`, `username`, `password`) VALUES
(2, 'Jelita Hasiani', '081385988184', 'Universitas Satya Terra Bhinnneka', 'lita', '1234'),
(3, 'Stevani', '082277981060', 'Universitas satya Terra Bhinneka', 'vani', '12345'),
(4, 'ell', '0882016693494', 'Universitas Satya Terra Bhinneka', 'ell', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelayanan`
--

CREATE TABLE `tbl_pelayanan` (
  `id_pelayanan` int NOT NULL,
  `nama_layanan` varchar(50) NOT NULL,
  `harga` int NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_pelayanan`
--

INSERT INTO `tbl_pelayanan` (`id_pelayanan`, `nama_layanan`, `harga`, `deskripsi`) VALUES
(1, 'Joki Makalah', 75000, 'Pembuatan makalah'),
(4, 'Buat Website', 250000, 'Pakai desain dark mode'),
(5, 'Laporan Praktikum', 50000, 'Sampai ACC'),
(6, 'Codingan', 35000, 'Dark Web');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `id_pembayaran` int NOT NULL,
  `id_pesanan` int NOT NULL,
  `metode_pembayaran` varchar(100) NOT NULL,
  `jumlah_bayar` int NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `status_pembayaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`id_pembayaran`, `id_pesanan`, `metode_pembayaran`, `jumlah_bayar`, `tanggal_bayar`, `status_pembayaran`) VALUES
(1, 1, 'Transfer Bank', 100000, '2026-06-01', 'DP'),
(2, 2, 'E-Wallet', 65000, '2026-05-07', 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `id_pesanan` int NOT NULL,
  `id_pelanggan` int NOT NULL,
  `id_layanan` int NOT NULL,
  `mata_kuliah` varchar(100) NOT NULL,
  `deadline` datetime NOT NULL,
  `total_harga` int NOT NULL,
  `status` varchar(100) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`id_pesanan`, `id_pelanggan`, `id_layanan`, `mata_kuliah`, `deadline`, `total_harga`, `status`, `catatan`) VALUES
(1, 2, 1, 'Kecerdasan Buatan', '2026-06-10 23:00:00', 250000, 'Proses', 'Selesai H-3'),
(2, 3, 4, 'Pengembangan Web', '2026-06-02 00:00:00', 150000, 'Proses', 'Website tentang bisnis'),
(3, 4, 3, 'Mikrobiologi', '2026-06-06 00:00:00', 75000, 'Proses', 'Sampai ACC'),
(4, 4, 5, 'Ilmu Tanah', '2026-06-06 00:00:00', 55000, 'Proses', 'Sampai ACC'),
(5, 4, 6, 'Web', '2026-06-30 00:00:00', 35000, 'Menunggu', '-'),
(6, 2, 5, 'ilmu tanah', '2026-06-23 00:00:00', 50000, 'Menunggu', '-'),
(7, 2, 6, 'Pengembangan web', '2026-06-26 00:00:00', 35000, 'Menunggu', 'Light mode'),
(8, 3, 6, 'Algoritma', '2026-06-29 00:00:00', 35000, 'Menunggu', 'Moderen Dark'),
(9, 3, 1, 'Keberagamaan', '2026-07-06 00:00:00', 75000, 'Menunggu', 'Minimal menggunakan 15 jurnal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_pelayanan`
--
ALTER TABLE `tbl_pelayanan`
  ADD PRIMARY KEY (`id_pelayanan`);

--
-- Indexes for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pesanan` (`id_pesanan`);

--
-- Indexes for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`,`id_layanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pelayanan`
--
ALTER TABLE `tbl_pelayanan`
  MODIFY `id_pelayanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  MODIFY `id_pembayaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id_pesanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
