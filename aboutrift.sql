-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 01:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aboutrift`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

-- --------------------------------------------------------

--
-- Table structure for table `bom_produk`
--

CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bom_produk`
--

INSERT INTO `bom_produk` (`kode_bom`, `kode_bk`, `kode_produk`, `nama_produk`, `kebutuhan`) VALUES
('B0006', 'M0001', 'P0007', 'blue palomino', '10'),
('B0005', 'M0001', 'P0006', 'band motorhead', '100'),
('B0004', 'M0001', 'P0005', 'Oldblue heavy tee', '100'),
('B0003', 'M0001', 'P0004', 'Vintage 90s tazmania warner', '10'),
('B0002', 'M003', 'P0003', 'Bloods', '1'),
('B0001', 'M0005', 'P0002', 'Tazmania Mancing', '2');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0002', 'Rafi Akbar', 'a.rafy@gmail.com', 'rafi', '$2y$10$/UjGYbisTPJhr8MgmT37qOXo1o/HJn3dhafPoSYbOlSN1E7olHIb.', '0856748564'),
('C0003', 'Nagita Silvana', 'bambang@gmail.com', 'Nagita', '$2y$10$47./qEeA/y3rNx3UkoKmkuxoAtmz4ebHSR0t0Bc.cFEEg7cK34M3C', '087804616097'),
('C0004', 'Nadiya', 'nadiya@gmail.com', 'nadiya', '$2y$10$6wHH.7rF1q3JtzKgAhNFy.4URchgJC8R.POT1osTAWmasDXTTO7ZG', '0898765432'),
('C0005', 'afdal', 'afdal@gmail.com', 'Afdal', '$2y$10$ByOz7T20lRia/6NmGg0K7ucnl6/NPBLW3l9h9DWe.Ooozz3L7mNqS', '847294832859');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`kode_bk`, `nama`, `qty`, `satuan`, `harga`, `tanggal`) VALUES
('M0001', 'Hitam', '76', '', 0, '2024-01-10'),
('M0002', 'Putih', '100', '', 0, '2024-01-10'),
('M0003', 'Cream', '17', '', 0, '2024-01-10'),
('M0004', 'Biru', '82', '', 0, '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
(16, 'C0003', 'P0002', 'Maryam', 5, 15000),
(17, 'C0003', 'P0003', 'Kue tart coklat', 2, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `image`, `deskripsi`, `harga`) VALUES
('P0002', 'Tazmania Mancing', '659e7ab711b56.jpg', 'Produk Tazmania mancing trifting\r\n			', 50000),
('P0003', 'Bloods', '659e7b2054ab3.jpg', '\r\n			', 80000),
('P0004', 'Vintage 90s tazmania warner', '659e85ee94385.jpg', 'Produk barang bekar tetapi barangnya masih baru dan berkualitas \r\n			', 70000),
('P0005', 'Oldblue heavy tee', '659e86aee6362.jpg', 'Akhirnya, merchandise toko tee pertama kami! Kaos ini memang dibuat untuk merayakan toko utama pertama kami di kampung halaman kami, Oldblue General Store & Outpost. Kaos eksklusif toko ini hanya dibuat dalam jumlah terbatas, jadi sebaiknya Anda mendapatkannya selagi masih ada!\r\n			', 120000),
('P0006', 'band motorhead', '659e8a7d17e9e.jpg', '\r\n			', 50000),
('P0007', 'blue palomino', '659e8aeecdf93.jpeg', '\r\n			', 99000);

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id_order`, `invoice`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`, `status`, `tanggal`, `provinsi`, `kota`, `alamat`, `kode_pos`, `terima`, `tolak`, `cek`) VALUES
(8, 'INV0001', 'C0002', 'P0003', 'Kue tart coklat', 1, 100000, 'Pesanan Baru', '2020-07-27', 'Jawa Timur', 'Surabaya', 'Jl.Tanah Merah Indah 1', '60129', '2', '1', 0),
(9, 'INV0002', 'C0002', 'P0001', 'Roti Sobek', 3, 10000, 'Pesanan Baru', '2020-07-27', 'Jawa Barat', 'Bandung', 'Jl.Jati Nangor Blok C, 10', '30712', '2', '1', 0),
(10, 'INV0003', 'C0003', 'P0002', 'Maryam', 2, 15000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 1),
(11, 'INV0003', 'C0003', 'P0003', 'Kue tart coklat', 1, 100000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 1),
(12, 'INV0003', 'C0003', 'P0001', 'Roti Sobek', 1, 10000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 1),
(13, 'INV0004', 'C0004', 'P0002', 'Maryam', 1, 15000, 'Pesanan Baru', '2020-07-26', 'Jawa Timur', 'Sidoarjo', 'Jl.KH Syukur Blok C 18 A', '50987', '0', '0', 1),
(14, 'INV0005', 'C0005', 'P0001', 'Roti Sobek', 1, 10000, 'Pesanan Baru', '2323-12-11', 'Nusa Tenggara Barat', 'Dompu', 'jl lintas sumbawa bima ', '3852', '0', '0', 0),
(15, 'INV0006', 'C0005', 'P0002', 'Maryam', 1, 15000, 'Pesanan Baru', '2323-12-21', 'ntb', 'dompu', 'dompu', '3249529', '0', '0', 1),
(16, 'INV0006', 'C0005', 'P0001', 'Roti Sobek', 1, 10000, 'Pesanan Baru', '2323-12-21', 'ntb', 'dompu', 'dompu', '3249529', '0', '0', 1),
(17, 'INV0007', 'C0005', 'P0002', 'Tazmania Mancing', 1, 50000, 'Pesanan Baru', '2424-01-10', 'Nusa Tenggara Barat', '', 'dompu', '', '0', '0', 1),
(18, 'INV0007', 'C0005', 'P0004', 'Vintage 90s tazmania warner', 1, 70000, 'Pesanan Baru', '2424-01-10', 'Nusa Tenggara Barat', '', 'dompu', '', '0', '0', 1),
(19, 'INV0008', 'C0005', 'P0003', 'Bloods', 1, 80000, 'Pesanan Baru', '2424-01-11', 'nrb', 'dompu', 'jl jendral sudirman', '84231', '0', '0', 1),
(20, 'INV0008', 'C0005', 'P0007', 'blue palomino', 1, 99000, 'Pesanan Baru', '2424-01-11', 'nrb', 'dompu', 'jl jendral sudirman', '84231', '0', '0', 1),
(21, 'INV0008', 'C0005', 'P0004', 'Vintage 90s tazmania warner', 1, 70000, 'Pesanan Baru', '2424-01-11', 'nrb', 'dompu', 'jl jendral sudirman', '84231', '0', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `report_cancel`
--

CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_inventory`
--

CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_omset`
--

CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report _penjualan`
--

CREATE TABLE `report _penjualan` (
  `id_report_sell` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_produksi`
--

CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_profit`
--

CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`kode_bk`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `report_cancel`
--
ALTER TABLE `report_cancel`
  ADD PRIMARY KEY (`id_report_cancel`);

--
-- Indexes for table `report_inventory`
--
ALTER TABLE `report_inventory`
  ADD PRIMARY KEY (`id_report_inv`);

--
-- Indexes for table `report_omset`
--
ALTER TABLE `report_omset`
  ADD PRIMARY KEY (`id_report_omset`);

--
-- Indexes for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  ADD PRIMARY KEY (`id_report_sell`);

--
-- Indexes for table `report_produksi`
--
ALTER TABLE `report_produksi`
  ADD PRIMARY KEY (`id_report_prd`);

--
-- Indexes for table `report_profit`
--
ALTER TABLE `report_profit`
  ADD PRIMARY KEY (`id_report_profit`),
  ADD UNIQUE KEY `kode_bom` (`kode_bom`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `report_cancel`
--
ALTER TABLE `report_cancel`
  MODIFY `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_inventory`
--
ALTER TABLE `report_inventory`
  MODIFY `id_report_inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_omset`
--
ALTER TABLE `report_omset`
  MODIFY `id_report_omset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  MODIFY `id_report_sell` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_produksi`
--
ALTER TABLE `report_produksi`
  MODIFY `id_report_prd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_profit`
--
ALTER TABLE `report_profit`
  MODIFY `id_report_profit` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
