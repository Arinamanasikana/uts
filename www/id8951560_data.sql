-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 19 Bulan Mei 2019 pada 19.07
-- Versi server: 10.3.14-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id8951560_data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bemu`
--

CREATE TABLE `bemu` (
  `id` int(11) NOT NULL,
  `nama_lk` varchar(100) NOT NULL,
  `nim_anggota` varchar(100) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `jabatan_anggota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bemu`
--

INSERT INTO `bemu` (`id`, `nama_lk`, `nim_anggota`, `nama_anggota`, `jabatan_anggota`) VALUES
(1, 'bem universitas', '16.01.53.100', 'syifana maulida', 'ketua'),
(2, 'bem universitas', '17.01.53.107', 'andri dewantara', 'seketaris'),
(3, 'bem universitas', '16.01.53.067', 'setya nugroho', 'bendahara'),
(4, 'bem universitas', '16.01.53.78', 'isyana purwaningsih', 'anggota'),
(5, 'bem universitas', '16.01.53.125', 'victor balady', 'anggota');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `Id` int(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `judul_buku` varchar(200) NOT NULL,
  `penulis` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`Id`, `nama`, `judul_buku`, `penulis`) VALUES
(47, 'Arina Manasikana', 'Biologi ', 'Ahmad Jayadi S.E');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE `file` (
  `file_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `file` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`file_id`, `name`, `file`) VALUES
(13, 'islamic_wallpaper_03_by_wheeqo', 'files/islamic_wallpaper_03_by_wheeqo.jpg'),
(17, 'Capture', 'files/Capture.PNG'),
(19, 'Logo HUT RI ke 73 tahun 2018 terbaru 2', 'files/Logo HUT RI ke 73 tahun 2018 terbaru 2.png'),
(21, 'citra', 'files/citra.JPG'),
(23, 'Untitled', 'files/Untitled.png'),
(25, 'Chrysanthemum', 'files/Chrysanthemum.jpg'),
(27, 'Tulips', 'files/Tulips.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ic`
--

CREATE TABLE `ic` (
  `id` int(11) NOT NULL,
  `nama_lk` varchar(100) DEFAULT NULL,
  `nim_anggota` varchar(100) DEFAULT NULL,
  `nama_anggota` varchar(100) DEFAULT NULL,
  `jabatan_anggota` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ic`
--

INSERT INTO `ic` (`id`, `nama_lk`, `nim_anggota`, `nama_anggota`, `jabatan_anggota`) VALUES
(1, 'IC', '16.01.53.00076', 'sobirin', 'ketua'),
(3, 'IC', '16.01.53.00076', 'paijo', 'ketua'),
(5, 'IC', '16.01.53.00076', 'munawaroh', 'ketua'),
(7, 'IC', '16.01.53.00076', 'blidex', 'ketua'),
(9, 'IC', '16.01.53.00076', 'aziz tahan uji', 'ketua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` char(40) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin', 'admin'),
(3, 'internet club', 'internetclub', 'rahasia', 'ic'),
(5, 'bem u', 'bemuniv', 'rahasia', 'bemu'),
(7, 'bem fti', 'bemfti', 'rahasia', 'bemfti'),
(9, 'kandank', 'kandank', 'rahasia', 'kandank'),
(11, 'mapalast', 'mapalast', 'mapalast', 'mapalast'),
(13, 'pecinta alam', 'pecintaalama', 'pecintaalama', 'pecintaalama');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bemu`
--
ALTER TABLE `bemu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `ic`
--
ALTER TABLE `ic`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bemu`
--
ALTER TABLE `bemu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `ic`
--
ALTER TABLE `ic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
