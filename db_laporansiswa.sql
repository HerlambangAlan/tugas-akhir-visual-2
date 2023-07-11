-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 02:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laporansiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_hubungan`
--

CREATE TABLE `tb_hubungan` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) NOT NULL,
  `ortu_id` int(8) NOT NULL,
  `status_hub` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_hubungan`
--

INSERT INTO `tb_hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub`, `keterangan`) VALUES
(2, 1, 2, 'Ayah Kandung', 'Orang tua'),
(3, 2, 1, 'Ayah Kandung', 'Orang tua'),
(4, 4, 4, 'Ibu Kandung', 'Orang tua'),
(5, 11, 3, 'Ibu Kandung', 'Orang tua'),
(6, 5, 5, 'Ayah Kandung', 'Orang tua'),
(7, 12, 7, 'Ayah Kandung', 'Orang tua');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(8) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jenis` enum('Pagi','Siang') NOT NULL,
  `jurusan` enum('Bahasa','IPA','IPS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `nama`, `jenis`, `jurusan`) VALUES
(1, 'Herlambang', 'Pagi', 'IPS'),
(2, 'Sania Della', 'Pagi', 'IPA'),
(3, 'Aryanto', 'Siang', 'Bahasa'),
(6, 'Natalia', 'Pagi', 'IPS'),
(7, 'Ica', 'Pagi', 'IPA'),
(8, 'Sony', 'Pagi', 'Bahasa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ortu`
--

CREATE TABLE `tb_ortu` (
  `ortu_id` int(8) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pendidikan` enum('SD','SMP','SMA/K','Sarjana') NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `telp` int(13) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `status` enum('Kandung','Wali','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ortu`
--

INSERT INTO `tb_ortu` (`ortu_id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `agama`, `jenis_kelamin`, `status`) VALUES
(1, 223424534, 'Joko', 'SMP', 'Wiraswasta', 862747223, 'Banjarbaru', 'Islam', 'Laki-Laki', 'Kandung'),
(2, 2147483647, 'Sunaryo', 'SD', 'Boss Sawit', 823451223, 'Angsana', 'Islam', 'Laki-Laki', 'Kandung'),
(3, 2147483647, 'Dastini', 'SD', 'Ibu Rumah Tangga', 822315234, 'Angsana', 'Islam', 'Perempuan', 'Kandung'),
(4, 2147483647, 'Siti', 'Sarjana', 'Ibu Rumah Tangga', 2147483647, 'Banjarmasin', 'Islam', 'Perempuan', 'Wali'),
(5, 2147483647, 'Dani', 'SD', 'Supir', 2147483647, 'Banjarbaru', 'Islam', 'Laki-Laki', 'Kandung'),
(7, 19323242, 'Widodo', 'Sarjana', 'Wirausaha', 83273732, 'Pelaihari', 'Islam', 'Laki-Laki', 'Kandung');

-- --------------------------------------------------------

--
-- Table structure for table `tb_poin`
--

CREATE TABLE `tb_poin` (
  `id` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `bobot` int(5) NOT NULL,
  `jenis` enum('Pelanggaran','Prestasi') NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_poin`
--

INSERT INTO `tb_poin` (`id`, `nama`, `bobot`, `jenis`, `status`) VALUES
(1, 'Herlambang', 1, 'Prestasi', 'Juara O2sn'),
(2, 'Aryanto', 2, 'Pelanggaran', 'Bolos Sekolah'),
(3, 'Ica', 2, 'Prestasi', 'Juara 1 Badminton'),
(4, 'Sania Della', 1, 'Prestasi', 'Juara 1 Mengaji'),
(5, 'sony', 1, 'Pelanggaran', 'Berkelahi'),
(6, 'Natalia', 2, 'Pelanggaran', 'Membawa Make Up');

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat_poin`
--

CREATE TABLE `tb_riwayat_poin` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) NOT NULL,
  `poin_id` int(8) NOT NULL,
  `wali_id` int(8) NOT NULL,
  `ortu_id` int(8) NOT NULL,
  `kelas_id` int(8) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_riwayat_poin`
--

INSERT INTO `tb_riwayat_poin` (`id`, `siswa_id`, `poin_id`, `wali_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`) VALUES
(8, 1, 1, 6, 2, 1, '2023-07-04', '1', 'Prestasi'),
(9, 2, 2, 3, 1, 3, '2023-06-13', '2', 'Pelanggaran'),
(10, 4, 3, 2, 4, 7, '2023-06-15', '2', 'Prestasi'),
(11, 5, 6, 2, 5, 6, '2023-06-19', '2', 'Pelanggaran'),
(12, 11, 4, 2, 3, 2, '2023-06-22', '2', 'Prestasi'),
(13, 12, 5, 3, 7, 8, '2023-06-23', '2', 'Pelanggaran');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `siswa_id` int(8) NOT NULL,
  `nis` int(15) NOT NULL,
  `nisn` int(15) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `nik` int(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `tingkat_kelas` enum('X','XI','XII','') NOT NULL,
  `jurusan` enum('Bahasa','IPA','IPS','','') NOT NULL,
  `wali_kelas` varchar(20) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `telp` int(13) NOT NULL,
  `hp` int(13) NOT NULL,
  `status` enum('Aktif','Tidak Aktif','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`siswa_id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, 2110010405, 123, 'Herlambang', 2001836278, 'Tanah Bumbu', '2002-04-14', 'Laki-Laki', 'XII', 'IPS', 'Budi', 'Banjarmasin', 98876, 876897640, 'Aktif'),
(2, 2023000345, 7639, 'Aryanto', 2001836452, 'Banjarmasin', '2002-07-18', 'Laki-Laki', 'XII', 'Bahasa', 'Lilis', 'Banjarmasin', 92176, 878672519, 'Aktif'),
(4, 2023765401, 7641, 'Ica', 2001836763, 'Banjarmasin', '2003-07-08', 'Perempuan', 'XII', 'IPA', 'Misran', 'Banjarmasin', 94456, 870987987, 'Aktif'),
(5, 2023004646, 7642, 'Natalia', 2007543389, 'Banjarmasin', '2003-02-18', 'Laki-Laki', 'XII', 'IPS', 'Budi', 'Banjarmasin', 86546, 878653499, 'Aktif'),
(11, 2013013422, 263421, 'Sania Della ', 241226432, 'Angsana', '2003-07-17', 'Perempuan', 'XII', 'IPA', 'Misran', 'Angsana', 83642545, 877362742, 'Aktif'),
(12, 2147483647, 4353, 'Sony', 2147483647, 'Banjarbaru', '2002-01-30', 'Laki-Laki', 'XII', 'Bahasa', 'Lilis', 'Banjarmasin', 825372426, 2147483647, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `password`, `level`, `status`) VALUES
(1, 'herlambang', '123', '1', 'admin'),
(2, 'Andre', '123', '1', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id` int(8) NOT NULL,
  `nip` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telp` int(13) NOT NULL,
  `matpel` varchar(20) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_walikelas`
--

INSERT INTO `tb_walikelas` (`id`, `nip`, `nama`, `jenis_kelamin`, `alamat`, `telp`, `matpel`, `pendidikan`, `status`) VALUES
(2, 237461274, 'Mirsan', 'L', 'Banjarmasin', 82631322, 'Kimia', 'Sarjana', 'Guru'),
(3, 55753628, 'Lilis ', 'P', 'Kayu Tangi', 826483273, 'Bahasa', 'Sarjana', 'Guru'),
(6, 645343, 'Budi', 'L', 'Banjarmasin', 84632643, 'Geografi', 's1', 'Guru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_hubungan`
--
ALTER TABLE `tb_hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `ortu_id` (`ortu_id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  ADD PRIMARY KEY (`ortu_id`);

--
-- Indexes for table `tb_poin`
--
ALTER TABLE `tb_poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_riwayat_poin`
--
ALTER TABLE `tb_riwayat_poin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`,`poin_id`,`wali_id`,`ortu_id`,`kelas_id`),
  ADD KEY `poin_id` (`poin_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `wali_id` (`wali_id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `siswa_id_2` (`siswa_id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hubungan`
--
ALTER TABLE `tb_hubungan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  MODIFY `ortu_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_poin`
--
ALTER TABLE `tb_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_riwayat_poin`
--
ALTER TABLE `tb_riwayat_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `siswa_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_hubungan`
--
ALTER TABLE `tb_hubungan`
  ADD CONSTRAINT `tb_hubungan_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `tb_siswa` (`siswa_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_hubungan_ibfk_2` FOREIGN KEY (`ortu_id`) REFERENCES `tb_ortu` (`ortu_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_riwayat_poin`
--
ALTER TABLE `tb_riwayat_poin`
  ADD CONSTRAINT `tb_riwayat_poin_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `tb_siswa` (`siswa_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_riwayat_poin_ibfk_2` FOREIGN KEY (`poin_id`) REFERENCES `tb_poin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_riwayat_poin_ibfk_3` FOREIGN KEY (`kelas_id`) REFERENCES `tb_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_riwayat_poin_ibfk_4` FOREIGN KEY (`wali_id`) REFERENCES `tb_walikelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_riwayat_poin_ibfk_5` FOREIGN KEY (`ortu_id`) REFERENCES `tb_ortu` (`ortu_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
