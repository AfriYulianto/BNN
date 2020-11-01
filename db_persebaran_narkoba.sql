-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Nov 2020 pada 14.49
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_persebaran_narkoba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_kelamin`
--

CREATE TABLE `tb_jenis_kelamin` (
  `id_jenis_kelamin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jenis_kelamin`
--

INSERT INTO `tb_jenis_kelamin` (`id_jenis_kelamin`, `nama`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kecamatan`
--

CREATE TABLE `tb_kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kecamatan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kecamatan`
--

INSERT INTO `tb_kecamatan` (`id_kecamatan`, `kecamatan`) VALUES
(1, 'Blimbing'),
(2, 'Kedungkandang'),
(3, 'Klojen'),
(4, 'Lowokwaru'),
(5, 'Sukun'),
(6, 'Ampelgading'),
(7, 'Bantur'),
(8, 'Bululawang'),
(9, 'Dampit'),
(10, 'Dau'),
(11, 'Donomulyo'),
(12, 'Gedangan'),
(13, 'Gondanglegi'),
(14, 'Jabung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelurahan`
--

CREATE TABLE `tb_kelurahan` (
  `id_kelurahan` int(11) NOT NULL,
  `kelurahan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelurahan`
--

INSERT INTO `tb_kelurahan` (`id_kelurahan`, `kelurahan`) VALUES
(1, 'Arjosari'),
(2, 'Balearjosari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pecandu`
--

CREATE TABLE `tb_pecandu` (
  `id_pecandu` int(11) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `usia` varchar(2) NOT NULL,
  `pekerjaan` varchar(64) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kelurahan` varchar(128) NOT NULL,
  `kecamatan` varchar(128) NOT NULL,
  `jenis_narkoba` varchar(255) NOT NULL,
  `tahapan` varchar(255) NOT NULL,
  `lembaga_rehab` varchar(255) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pecandu`
--

INSERT INTO `tb_pecandu` (`id_pecandu`, `jenis_kelamin`, `usia`, `pekerjaan`, `alamat`, `kelurahan`, `kecamatan`, `jenis_narkoba`, `tahapan`, `lembaga_rehab`, `tahun`) VALUES
(15, 'Laki-laki', '12', 'Pelajar', 'hjfsadgfdf', 'Balearjosari', 'Kedungkandang', 'll', 'Detoksifikasi', 'sadasda', '12'),
(16, '1', '12', 'Pelajar', 'Jl.Lowokwaru', 'Arjosari', 'Blimbing', 'll', 'Detoksifikasi', 'sadasda', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pekerjaan`
--

CREATE TABLE `tb_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `pekerjaan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pekerjaan`
--

INSERT INTO `tb_pekerjaan` (`id_pekerjaan`, `pekerjaan`) VALUES
(1, 'Pelajar'),
(2, 'Swasta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_selesai_rehab`
--

CREATE TABLE `tb_selesai_rehab` (
  `id_selesai_rehab` int(11) NOT NULL,
  `kelurahan` varchar(64) NOT NULL,
  `kecamatan` varchar(64) NOT NULL,
  `pekerjaan` varchar(64) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_rehab` varchar(255) NOT NULL,
  `lama_rehab` varchar(128) NOT NULL,
  `surat_selesai_rehab` varchar(5) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tahapan`
--

CREATE TABLE `tb_tahapan` (
  `id_tahapan` int(11) NOT NULL,
  `tahapan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tahapan`
--

INSERT INTO `tb_tahapan` (`id_tahapan`, `tahapan`) VALUES
(1, 'Detoksifikasi'),
(2, 'Pembinaan'),
(3, 'Rawat Jalan'),
(4, 'Rawat Inap'),
(5, 'Wajib Lapor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'bnn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jenis_kelamin`
--
ALTER TABLE `tb_jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indexes for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `tb_kelurahan`
--
ALTER TABLE `tb_kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- Indexes for table `tb_pecandu`
--
ALTER TABLE `tb_pecandu`
  ADD PRIMARY KEY (`id_pecandu`);

--
-- Indexes for table `tb_pekerjaan`
--
ALTER TABLE `tb_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `tb_selesai_rehab`
--
ALTER TABLE `tb_selesai_rehab`
  ADD PRIMARY KEY (`id_selesai_rehab`);

--
-- Indexes for table `tb_tahapan`
--
ALTER TABLE `tb_tahapan`
  ADD PRIMARY KEY (`id_tahapan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jenis_kelamin`
--
ALTER TABLE `tb_jenis_kelamin`
  MODIFY `id_jenis_kelamin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tb_kelurahan`
--
ALTER TABLE `tb_kelurahan`
  MODIFY `id_kelurahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_pecandu`
--
ALTER TABLE `tb_pecandu`
  MODIFY `id_pecandu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tb_pekerjaan`
--
ALTER TABLE `tb_pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_selesai_rehab`
--
ALTER TABLE `tb_selesai_rehab`
  MODIFY `id_selesai_rehab` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_tahapan`
--
ALTER TABLE `tb_tahapan`
  MODIFY `id_tahapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
