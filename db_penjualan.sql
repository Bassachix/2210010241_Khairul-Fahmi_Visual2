-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 05:02 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(8) NOT NULL,
  `barcode` int(20) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `harga_jual` bigint(20) DEFAULT NULL,
  `harga_beli` bigint(20) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL,
  `kategori_id` int(8) DEFAULT NULL,
  `satuan_id` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL,
  `supplier_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `barcode`, `name`, `harga_jual`, `harga_beli`, `stok`, `kategori_id`, `satuan_id`, `user_id`, `supplier_id`) VALUES
(1, 12345678, 'iPhone 13 Pro', 20000000, 18000000, 5, 1, 1, 1, 1),
(2, 23456789, 'MacBook Air', 15000000, 13000000, 3, 2, 1, 2, 4),
(3, 34567890, 'Samsung QLED 4K TV', 18000000, 16000000, 3, 2, 1, 3, 3),
(4, 45678901, 'Canon EOS R5', 25000000, 23000000, 1, 4, 1, 4, 5),
(5, 56789012, 'Wireless Headphones', 2000000, 1500000, 8, 5, 1, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `detail_beli`
--

CREATE TABLE `detail_beli` (
  `id` int(8) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  `pembelian_id` int(8) DEFAULT NULL,
  `barang_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_beli`
--

INSERT INTO `detail_beli` (`id`, `harga`, `qty`, `subtotal`, `pembelian_id`, `barang_id`) VALUES
(1, 18000000, 5, 90000000, 1, 1),
(2, 13000000, 3, 39000000, 2, 2),
(3, 16000000, 3, 48000000, 3, 3),
(4, 23000000, 1, 23000000, 4, 4),
(5, 1500000, 8, 12000000, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `detail_jual`
--

CREATE TABLE `detail_jual` (
  `id` int(8) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  `penjualan_id` int(8) DEFAULT NULL,
  `barang_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_jual`
--

INSERT INTO `detail_jual` (`id`, `harga`, `qty`, `subtotal`, `penjualan_id`, `barang_id`) VALUES
(1, 20000000, 1, 20000000, 1, 1),
(2, 15000000, 1, 15000000, 2, 2),
(3, 18000000, 1, 18000000, 3, 3),
(4, 25000000, 1, 25000000, 4, 4),
(5, 2000000, 2, 4000000, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(8) NOT NULL,
  `name` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `name`) VALUES
(1, 'Smartphone'),
(2, 'Laptop'),
(3, 'TV'),
(4, 'Kamera'),
(5, 'Aksesoris Elektronik'),
(7, 'iwak');

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE `kustomer` (
  `id` int(8) NOT NULL,
  `nik` int(16) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`id`, `nik`, `name`, `telp`, `email`, `alamat`) VALUES
(1, 123456, 'Budi Santoso', '08123456789', 'budi@gmail.com', 'Jl. Diponegoro No. 123, Jakarta'),
(2, 234567, 'Dewi Rahayu', '08234567890', 'dewi@gmail.com', 'Jl. Sudirman No. 45, Bandung'),
(3, 345678, 'Citra Wijaya', '08345678901', 'citra@gmail.com', 'Jl. Pahlawan No. 67, Surabaya'),
(4, 456789, 'Ahmad Subagyo', '08456789012', 'ahmad@gmail.com', 'Jl. Gajah Mada No. 89, Yogyakarta'),
(5, 567890, 'Eka Putri', '08567890123', 'eka@gmail.com', 'Jl. Ahmad Yani No. 90, Semarang');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(8) NOT NULL,
  `invoice` int(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `bayar` bigint(11) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `supplier_id` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `invoice`, `total`, `bayar`, `deskripsi`, `tanggal`, `supplier_id`, `user_id`) VALUES
(1, 900001, 90000000, 90000000, 'iPhone 13 Pro\n', '2024-04-25', 1, 1),
(2, 900002, 39000000, 39000000, 'MacBook Air\n', '2024-04-26', 2, 2),
(3, 900003, 48000000, 48000000, 'Samsung QLED 4K TV\n', '2024-04-27', 3, 3),
(4, 900004, 23000000, 23000000, 'Canon EOS R5\n', '2024-04-28', 4, 4),
(5, 900005, 12000000, 12000000, 'Wireless Headphones\n', '2024-04-29', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(8) NOT NULL,
  `invoice` int(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `bayar` bigint(11) DEFAULT NULL,
  `kembali` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kustomer_id` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `invoice`, `total`, `bayar`, `kembali`, `tanggal`, `kustomer_id`, `user_id`) VALUES
(1, 100001, 20000000, 21000000, 1000000, '2024-05-01', 1, 1),
(2, 100002, 15000000, 17000000, 2000000, '2024-05-02', 2, 2),
(3, 100003, 18000000, 18000000, 0, '2024-05-03', 3, 3),
(4, 100004, 25000000, 26000000, 1000000, '2024-05-04', 4, 4),
(5, 100005, 4000000, 6000000, 2000000, '2024-05-05', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id` int(8) NOT NULL,
  `name` char(100) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `name`, `deskripsi`) VALUES
(1, 'Unit', 'Satuan unit produk'),
(2, 'Pcs', 'Satuan dalam jumlah potongan untuk produk'),
(3, 'Set', 'Satuan untuk kumpulan produk elektronik'),
(4, 'Meter', 'Satuan panjang untuk kabel dan perlengkapan'),
(5, 'Pack', 'Satuan untuk paket produk');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(8) NOT NULL,
  `nik` int(18) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `perusahaan` varchar(150) DEFAULT NULL,
  `nama_bank` varchar(150) DEFAULT NULL,
  `nama_akun_bank` varchar(150) DEFAULT NULL,
  `no_akun_bank` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nik`, `name`, `telp`, `email`, `alamat`, `perusahaan`, `nama_bank`, `nama_akun_bank`, `no_akun_bank`) VALUES
(1, 4512341, 'Samsudin\n', '085677773456\n', 'elekjaya@gmail.com\n', 'Jl. Gatot Subroto No. 123, Jakarta', 'PT. Elektronik Jaya\n', 'Bank Central Asia (BCA)', 'PT. Elektronik Jaya', '789-456-123\n'),
(2, 8769083, 'Mojokerto\n', '081378894576\n', 'teknoman@gmail.com\n', 'Jl. Asia Afrika No. 45, Bandung', 'CV. Tekno Mandiri\n', 'Bank Mandiri', 'CV. Tekno Mandiri', '654-321-987\n'),
(3, 3342412, 'Wijaya\n', '081345237689\n', 'maju@gmail.com\n', 'Jl. Ahmad Yani No. 67, Surabaya', 'UD. Maju Jaya\n', 'Bank Negara Indonesia (BNI)', 'UD. Maju Jaya', '321-654-789\n'),
(4, 6732434, 'Udin Kepso\n', '085434235645\n', 'cemerlang@gmail.com\n', 'Jl. Pahlawan No. 89, Yogyakarta', 'PT. Cemerlang Teknologi\n', 'Bank Rakyat Indonesia (BRI)', 'PT. Cemerlang Teknologi', '987-654-321\n'),
(5, 4352345, 'Rusdi\n', '087589765643\n', 'gemilang@gmail.com\n', 'Jl. Diponegoro No. 90, Semarang', 'CV. Gemilang Elektronik\n', 'Bank Tabungan Negara (BTN)', 'CV. Gemilang Elektronik', '456-789-123\n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(8) NOT NULL,
  `nik` int(16) DEFAULT NULL,
  `username` char(100) DEFAULT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` char(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `is_active` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nik`, `username`, `full_name`, `password`, `role`, `email`, `telp`, `alamat`, `is_active`) VALUES
(1, 138427, 'bsantoso', 'Cahyanto\n', 'password123', 'Owner', 'yanto@gmail.com\n', '08123451112', 'Jl. Merpati No. 10, Kel. Mawar, Kec. Surya, Kota Makmur\n', 'active'),
(2, 126945, 'ejogon', 'Ejo Gonjales', 'dewi1234', 'Admin', 'mojo@gmail.com\n', '08379643210', 'Perumahan Bintang Indah Blok C3 No. 15, Desa Anggrek, Kec. Bunga Sejahtera, Kab. Cahaya\n', 'active'),
(3, 791528, 'citrales', 'Citra Lestari', 'citra5678', 'Admin', 'clea@gmail.com\n', '08765314209', 'Komplek Permata Hijau No. 8, RT 05/RW 02, Kel. Puri Indah, Kec. Jaya Sentosa, Kota Mutiara\n', 'active'),
(4, 746291, 'asubagyo', 'Ahmad Sifudin', 'ahmad7890', 'Karyawan', 'sifudin@gmail.com\n', '08992467531', 'Jl. Flamboyan Raya No. 22A, Perumahan Mawar Asri, Kel. Melati, Kec. Dahlia, Kota Ramayana\n', 'active'),
(5, 823615, 'esari', 'Erna Sari\n', 'eka12345', 'Karyawan', 'ersari@gmail.com\n', '08216795432', 'Cluster Bougenville Kav. 17, RT 08/RW 03, Kel. Cendana, Kec. Anggrek, Kota Berseri\n', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategori` (`kategori_id`),
  ADD KEY `fk_satuan` (`satuan_id`),
  ADD KEY `fk_user_barang` (`user_id`),
  ADD KEY `fk_supplier_barang` (`supplier_id`);

--
-- Indexes for table `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembelian` (`pembelian_id`),
  ADD KEY `fk_barang_beli` (`barang_id`);

--
-- Indexes for table `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_penjualan` (`penjualan_id`),
  ADD KEY `fk_barang_jual` (`barang_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kustomer`
--
ALTER TABLE `kustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supplier_pembelian` (`supplier_id`),
  ADD KEY `fk_user_pembelian` (`user_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kustomer` (`kustomer_id`),
  ADD KEY `fk_user_penjualan` (`user_id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_beli`
--
ALTER TABLE `detail_beli`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_jual`
--
ALTER TABLE `detail_jual`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kustomer`
--
ALTER TABLE `kustomer`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `fk_satuan` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`),
  ADD CONSTRAINT `fk_supplier_barang` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `fk_user_barang` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD CONSTRAINT `fk_barang_beli` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`),
  ADD CONSTRAINT `fk_pembelian` FOREIGN KEY (`pembelian_id`) REFERENCES `pembelian` (`id`);

--
-- Constraints for table `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD CONSTRAINT `fk_barang_jual` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`),
  ADD CONSTRAINT `fk_penjualan` FOREIGN KEY (`penjualan_id`) REFERENCES `penjualan` (`id`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `fk_supplier_pembelian` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `fk_user_pembelian` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_kustomer` FOREIGN KEY (`kustomer_id`) REFERENCES `kustomer` (`id`),
  ADD CONSTRAINT `fk_user_penjualan` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
