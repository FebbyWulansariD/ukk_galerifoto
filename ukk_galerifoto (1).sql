-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308:3308
-- Waktu pembuatan: 21 Mar 2024 pada 05.16
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_galerifoto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(8, 'Otomotif', 'Foto seputar Otomotif', '2024-02-01', 0),
(9, 'Hewan', 'Harimau buas', '2024-02-01', 0),
(10, 'Otomotif', 'Foto seputar otomotif', '2024-02-02', 3),
(24, 'Hewan', 'Berkaki empat', '2024-03-01', 1),
(25, 'Bunga', 'Bersinarr hehehhe', '2024-03-01', 1),
(26, 'Lingkungan', 'indahh lohh', '2024-03-02', 18),
(27, 'Kartun anak anak', 'warna kuning', '2024-03-02', 1),
(28, 'Selfie', 'tak taulah', '2024-03-02', 1),
(29, 'Sahabat', 'NJKBCGGSB', '2024-03-07', 1),
(30, 'pink', 'bintang laut', '2024-03-09', 1),
(32, 'Lingkungan', 'Ada banyak bunga', '2024-03-13', 1),
(33, 'apa yah', 'tak taula', '2024-03-13', 1),
(34, 'Sekolah', 'SMKN 9 Medan', '2024-03-15', 1),
(35, 'Lingkungan', 'Bersih dari sampah', '2024-03-19', 17),
(36, 'Kartun', 'teman spongebob', '2024-03-19', 17),
(37, 'Kartun anak anak', 'lalalla', '2024-03-20', 11),
(38, 'Lin Yi', 'Cowo aku', '2024-03-20', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`, `username`, `image`) VALUES
(29, 'Kucing', 'Kerenn', '2024-03-07', '347806882-kucing.jpg', 24, 1, 'test', ''),
(31, 'Taman', 'ada berbagai bungaa', '2024-03-02', '2138598663-taman.jpg', 26, 18, '', ''),
(33, 'Foto Febiiy', 'GFSDYUTDFLF', '2024-03-07', '1960672187-IMG_20240301_113050.jpg', 28, 1, 'test', ''),
(37, 'Two Girls', 'dua orang', '2024-03-09', '1951222916-Sahabat.jpg', 29, 1, 'test', ''),
(38, 'Two Girls', 'dua orang', '2024-03-09', '1180255081-Sahabat.jpg', 29, 1, 'test', ''),
(39, 'Two Girls', 'haihaihai', '2024-03-09', '1821429434-patrick.jpg', 30, 1, 'test', ''),
(40, 'Patrick', 'llalaala', '2024-03-15', '2061913208-taman.jpg', 27, 1, 'test', ''),
(42, 'apalah jadilah', 'yeyeye', '2024-03-15', '1412793691-spongebob.jpg', 33, 1, 'test', ''),
(43, 'Patrick', 'kakakak', '2024-03-20', '941359289-Sahabat.jpg', 37, 11, 'aca', ''),
(44, 'Lin Yi akuu', 'lucu', '2024-03-20', '416843459-linyi.jpg', 38, 1, 'test', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(2, 29, 1, 'abcd', '2024-03-03'),
(3, 29, 1, 'abcd', '2024-03-03'),
(4, 29, 1, 'abcd', '2024-03-03'),
(5, 29, 1, 'Lucuu Kucingnya', '2024-03-06'),
(6, 29, 1, 'Lucuu Kucingnya', '2024-03-06'),
(7, 29, 1, 'hhhh', '2024-03-06'),
(8, 30, 1, 'lucu bunganya', '2024-03-06'),
(9, 29, 1, 'abcd', '2024-03-07'),
(10, 29, 1, 'Lucuu Kucingnya', '2024-03-07'),
(11, 29, 1, 'Lucuu Kucingnya', '2024-03-07'),
(12, 29, 1, 'gggh', '2024-03-09'),
(13, 29, 17, 'keren banget kucingnya', '2024-03-18'),
(14, 31, 17, 'wah dimana ini tempatnya?', '2024-03-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(25, 7, 1, '2024-02-21'),
(39, 2, 11, '2024-02-23'),
(40, 17, 11, '2024-02-23'),
(41, 17, 1, '2024-02-24'),
(42, 16, 1, '2024-02-24'),
(52, 22, 1, '2024-02-27'),
(53, 2, 18, '2024-02-27'),
(54, 3, 18, '2024-02-27'),
(62, 14, 1, '2024-02-28'),
(65, 8, 1, '2024-03-01'),
(69, 23, 18, '2024-03-01'),
(70, 24, 1, '2024-03-01'),
(73, 23, 1, '2024-03-01'),
(74, 3, 1, '2024-03-01'),
(75, 28, 1, '2024-03-01'),
(78, 29, 18, '2024-03-02'),
(79, 30, 18, '2024-03-02'),
(80, 31, 18, '2024-03-02'),
(81, 31, 1, '2024-03-02'),
(82, 32, 1, '2024-03-02'),
(83, 33, 1, '2024-03-03'),
(89, 29, 17, '2024-03-19'),
(90, 30, 1, '2024-03-20'),
(91, 29, 1, '2024-03-20'),
(92, 37, 1, '2024-03-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unlikefoto`
--

CREATE TABLE `unlikefoto` (
  `unlikefotoid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggalunlike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `unlikefoto`
--

INSERT INTO `unlikefoto` (`unlikefotoid`, `fotoid`, `userid`, `tanggalunlike`) VALUES
(3, 3, 1, '2024-03-01'),
(4, 14, 1, '2024-03-01'),
(7, 23, 1, '2024-03-01'),
(8, 28, 1, '2024-03-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(1, 'test', 'test', 'test@gmail.com', 'test', 'test'),
(5, 'test', 'tet', 'test@gmail.com', 'test', 'test'),
(6, 'test', 'test', 'test@gmail.com', 'test', 'test'),
(7, 'test', 'test', 'test@gmail.com', 'test', 'test'),
(8, 'test', 'test', 'test@gmail.com', 'test', 'test'),
(11, 'aca', 'aca', 'aca@gmail.com', 'aca', 'aca'),
(12, 'test', 'test', 'test@gmail.com', 'test', 'test'),
(13, 'bb', 'bb', 'bb@gmail.com', 'bb', 'bb'),
(14, 'bb', 'bb', 'bb@gmail.com', 'bb', 'bb'),
(15, 'test', 'test', 'test@gmail.com', 'test', 'test'),
(16, 'test', 'test', 'test@gmail.com', 'test', 'test'),
(17, 'aca', 'aca1', 'aca@gmail', 'aca1', ''),
(18, 'sindy', '12345', 'sindy@gmail.com', 'cantikkk', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `unlikefoto`
--
ALTER TABLE `unlikefoto`
  ADD PRIMARY KEY (`unlikefotoid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `unlikefoto`
--
ALTER TABLE `unlikefoto`
  MODIFY `unlikefotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `unlikefoto`
--
ALTER TABLE `unlikefoto`
  ADD CONSTRAINT `unlikefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
