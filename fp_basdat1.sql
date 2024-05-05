-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/

-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 06:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fp basdat`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `id_cab` varchar(7) NOT NULL,
  `alamat_cab` varchar(100) NOT NULL,
  `email_cab` varchar(50) NOT NULL,
  `telp_cab` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `cabang` (`id_cab`, `alamat_cab`, `email_cab`, `telp_cab`) 
VALUES ('SBY01',	'Jalan MERR, Surabaya',	'bentokopimerr@gmail.com',	'0828282828');
INSERT INTO `cabang` (`id_cab`, `alamat_cab`, `email_cab`, `telp_cab`) 
VALUES ('YOG01',	'Jalan Nologaten, Sleman, DIY',	'bentokopisleman@gmail.com',	'0876765676');
INSERT INTO `cabang` (`id_cab`, `alamat_cab`, `email_cab`, `telp_cab`) 
VALUES ('TBN01',	'Jalan Pemuda, Tuban',	'bentokopituban1@gmail.com',	'0837385943');
INSERT INTO `cabang` (`id_cab`, `alamat_cab`, `email_cab`, `telp_cab`) 
VALUES ('MJK01',	'Jalan Hasanudin, Mojokerto',	'bentokopimojokerto@gmail.com',	'838671098');
INSERT INTO `cabang` (`id_cab`, `alamat_cab`, `email_cab`, `telp_cab`) 
VALUES ('MJK02',	'Jalan Pemuda, Mojokerto',	'bentokopimojokerto2@gmail.com',	'838671098');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` varchar(7) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `jenis_menu` varchar(20) NOT NULL,
  `harga_menu` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `menu` (`id_menu`,	`nama_menu`,	`jenis_menu`,	`harga_menu`)
VALUES ('MI01',	'Coffe Latte',	'Minuman',	'14000');
INSERT INTO `menu` (`id_menu`,	`nama_menu`,	`jenis_menu`,	`harga_menu`)
VALUES ('MI02',	'Lemon Tea',	'Minuman',	'10000');
INSERT INTO `menu` (`id_menu`,	`nama_menu`,	`jenis_menu`,	`harga_menu`)
VALUES ('MA01',	'Combo Platter',	'Makanan',	'15000');
INSERT INTO `menu` (`id_menu`,	`nama_menu`,	`jenis_menu`,	`harga_menu`)
VALUES ('SN01',	'Cinnamon',	'Snack',	'15000');
INSERT INTO `menu` (`id_menu`,	`nama_menu`,	`jenis_menu`,	`harga_menu`)
VALUES ('SN02',	'Croffel',	'Snack',	'13000');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(7) NOT NULL,
  `id_pel` varchar(7) NOT NULL,
  `id_tra` varchar(7) NOT NULL,
  `id_menu` varchar(7) NOT NULL,
  `jumlah_nota` int(2) NOT NULL,
  `harga_nota` int(10) NOT NULL,
  `total_nota` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `nota` (`id_nota`, `id_pel`, `id_tra`, `id_menu`, `jumlah_nota`, `harga_nota`, `total_nota`)
VALUES ('N0001',	'P1', 'T0001',	'MI01',	'2',	'14000',	'28000');
INSERT INTO `nota` (`id_nota`, `id_pel`, `id_tra`, `id_menu`, `jumlah_nota`, `harga_nota`, `total_nota`)
VALUES ('N0002',	'P2',	'T0002',	'MA01',	'1',	'15000',	'15000');
INSERT INTO `nota` (`id_nota`, `id_pel`, `id_tra`, `id_menu`, `jumlah_nota`, `harga_nota`, `total_nota`)
VALUES ('N0003',	'P3',	'T0003',	'MA01',	'2',	'15000',	'30000');
INSERT INTO `nota` (`id_nota`, `id_pel`, `id_tra`, `id_menu`, `jumlah_nota`, `harga_nota`, `total_nota`)
VALUES ('N0004',	'P4',	'T0004',	'SN02',	'2',	'13000',	'26000');
INSERT INTO `nota` (`id_nota`, `id_pel`, `id_tra`, `id_menu`, `jumlah_nota`, `harga_nota`, `total_nota`)
VALUES ('N0005',	'P5',	'T0005',	'MI02',	'2',	'10000',	'20000');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_peg` varchar(7) NOT NULL,
  `nama_peg` varchar(50) NOT NULL,
  `alamat_peg` varchar(100) NOT NULL,
  `jabatan_peg` varchar(50) NOT NULL,
  `tanggallahir_peg` varchar(20) NOT NULL,
  `email_peg` varchar(50) NOT NULL,
  `telp_peg` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `pegawai` (`id_peg`, `nama_peg`, `alamat_peg`, `jabatan_peg`, `tanggallahir_peg`, `email_peg`, `telp_peg`) 
VALUES ('PG01', 'Bobby', 'Jl. Jeruk, Kenjeran, Surabaya', 'Manajer', '04 Februari 1976', 'bobbyy@email.com', '083831461777');
INSERT INTO `pegawai` (`id_peg`, `nama_peg`, `alamat_peg`, `jabatan_peg`, `tanggallahir_peg`, `email_peg`, `telp_peg`) 
VALUES ('PG02', 'Mawa', 'Jl. Rambutan, Gunung Anyar, Surabaya', 'Kasir', '13 Maret 1995', 'maawa76@email.com', '081237494648');
INSERT INTO `pegawai` (`id_peg`, `nama_peg`, `alamat_peg`, `jabatan_peg`, `tanggallahir_peg`, `email_peg`, `telp_peg`) 
VALUES ('PG03', 'Rizky', 'Jl. Apel, Gunung Anyar, Surabaya', 'Kasir', '12 September 1996', 'riky99@email.com', '083697829355');
INSERT INTO `pegawai` (`id_peg`, `nama_peg`, `alamat_peg`, `jabatan_peg`, `tanggallahir_peg`, `email_peg`, `telp_peg`) 
VALUES ('PG04', 'Deva', 'Jl. Anggur, Gunung Anyar, Surabaya', 'Waiter', '13 Agustus 1995', 'deva87@email.com', '089735419865');
INSERT INTO `pegawai` (`id_peg`, `nama_peg`, `alamat_peg`, `jabatan_peg`, `tanggallahir_peg`, `email_peg`, `telp_peg`) 
VALUES ('PG05', 'Varis', 'Jl. Rambutan, Gunung Anyar, Surabaya', 'Waiter', '13 Juli 1997', 'varis@email.com', '081235972109');


-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pel` varchar(7) NOT NULL,
  `nama_pel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `pelanggan` (`id_pel`, `nama_pel`)
VALUES ('P1', 'Dilla');
INSERT INTO `pelanggan` (`id_pel`, `nama_pel`)
VALUES ('P2', 'Dela');
INSERT INTO `pelanggan` (`id_pel`, `nama_pel`)
VALUES ('P3', 'Ani');
INSERT INTO `pelanggan` (`id_pel`, `nama_pel`)
VALUES ('P4', 'Hasan');
INSERT INTO `pelanggan` (`id_pel`, `nama_pel`)
VALUES ('P5', 'Mira');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_tra` varchar(7) NOT NULL,
  `id_peg` varchar(7) NOT NULL,
  `waktu_tra` varchar(20) NOT NULL,
  `antrian_tra` int(2) NOT NULL,
  `bayar_tra` int(10) NOT NULL,
  `kembalian_tra` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `transaksi` (`id_tra`, `id_peg`, `waktu_tra`, `antrian_tra`, `bayar_tra`, `kembalian_tra`)
VALUES ('T0001',	'PG03',	'23 Mei 2023 17:21',	'1',	'50000',	'2700');
INSERT INTO `transaksi` (`id_tra`, `id_peg`, `waktu_tra`, `antrian_tra`, `bayar_tra`, `kembalian_tra`)
VALUES ('T0002',	'PG03',	'23 Mei 2023 18:00',	'2',	'15000',	'0');
INSERT INTO `transaksi` (`id_tra`, `id_peg`, `waktu_tra`, `antrian_tra`, `bayar_tra`, `kembalian_tra`)
VALUES ('T0003',	'PG02',	'23 Mei 2023 19:12',	'3', '30000',	'0');
INSERT INTO `transaksi` (`id_tra`, `id_peg`, `waktu_tra`, `antrian_tra`, `bayar_tra`, `kembalian_tra`)
VALUES ('T0004',	'PG02',	'23 Mei 2023 20:00',	'4',	'30000',	'4000');
INSERT INTO `transaksi` (`id_tra`, `id_peg`, `waktu_tra`, `antrian_tra`, `bayar_tra`, `kembalian_tra`)
VALUES ('T0005',	'PG03',	'23 Mei 2023 20:02',	'5',	'50000',	'30000');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id_cab`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_peg`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pel`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_tra`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
