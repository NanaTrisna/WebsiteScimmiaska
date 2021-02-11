-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Feb 2021 pada 19.23
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aboutus_setup`
--

CREATE TABLE `aboutus_setup` (
  `id` int(11) NOT NULL,
  `shortdesc` text NOT NULL,
  `heading` text NOT NULL,
  `subheading` text NOT NULL,
  `longdesc` text NOT NULL,
  `website` varchar(250) NOT NULL,
  `dob` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `aboutus_setup`
--

INSERT INTO `aboutus_setup` (`id`, `shortdesc`, `heading`, `subheading`, `longdesc`, `website`, `dob`) VALUES
(1, '<p align=\"justify\"><b>SCIMMIASKA</b> Adalah Band asal Bandung yang bergenrekan <b>SKA ROCKSTEADY</b>, Band yang bergenre SKA Rock Steady ini lahir pada awal bulan Juli 2012 di Batujajar, Bandung Barat. ScimmiaSka terbentuk bermula dari keinginan salah satu personilnya untuk membuat salah satu band beraliaran musik SKA dan ikut membaur di komunitas musik SKA Bandung dan Indonesia pada umumnya dengan formasi awal Senny (vocal), Reza (trumpet), Giant (keyboard), Anggi (bass), Jimi (guitar), Onie (gitar) dan Yogi (drum)</p>', 'SEJARAH DAN DESKRIPSI', '', '<p align=\"justify\"><b>SCIMMIASKA</b> bisa terus eksis sampai sekarang karena dukungan pemirsa dan para pecinta musik yang terus mendukung <b>SCIMMIASKA</b>, khususnya keluarga besar <b>SCIMMIASKA</b>, yang umum dikenal dengan sebutan Keluarga besar <b>SCIMMIAMI.INDONESIA</b>, yang terus memberikan support yang sangat besar kepada <b>SCIMMIASKA</b>. selain itu bentuk suport <b>SCIMMIAMI.INDONESIA</b> sangatlah besar bahkan ketika ada EVENT musik di daerah manapun <b>SCIMMIASKA</b> manggung mereka selalu datang untuk mensuport Band Kesayangan mereka, dan saya yang membuat WEBSITE inipun merukapan salah satu bagian dari kerluarga besar <b>SCIMMIAMI.INDONESIA</b>. <br>\r\n       \r\n                          ', 'https://www.reverbnation.com/scimmiaska', '12, Juli 2012');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_access` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `user_id`, `user_pass`, `user_access`) VALUES
(1, 'TrisnaGumilang', 'trisna.gumilang420@gmail.com', 'gumilang', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `basic_setup`
--

CREATE TABLE `basic_setup` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `keyword` text NOT NULL,
  `icon` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `basic_setup`
--

INSERT INTO `basic_setup` (`id`, `title`, `description`, `keyword`, `icon`) VALUES
(1, 'SCIMMIASKA_INDONESIA', 'Website Scimmiaska', 'Band Favorit', 'tampilan.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `cname` varchar(250) NOT NULL,
  `cemail` varchar(250) NOT NULL,
  `csubject` text NOT NULL,
  `cmessage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `cname`, `cemail`, `csubject`, `cmessage`) VALUES
(21, 'TrisnaGumilang', 'trisna.gumilang420@gmail.com', 'Booking Performance', 'Booking untuk tanggal 20 Februari 2021 di lapangan Majalaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_setup`
--

CREATE TABLE `personal_setup` (
  `id` int(11) NOT NULL,
  `profilepic` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `skype` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `homewallpaper` varchar(200) NOT NULL,
  `professions` varchar(200) NOT NULL,
  `location` text NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `emailid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `personal_setup`
--

INSERT INTO `personal_setup` (`id`, `profilepic`, `name`, `twitter`, `facebook`, `instagram`, `skype`, `linkedin`, `github`, `homewallpaper`, `professions`, `location`, `mobile`, `emailid`) VALUES
(1, 'tampilan.png', 'SCIMMIASKA <br> INDONESIA', '', '', 'https://www.instagram.com/_nanatrisna', '', 'https://www.reverbnation.com/scimmiaska', 'https://github.com/NanaTrisna', 'img-18.jpeg', 'BANDUNG SKA ROCKSTEADY,WE ARE NOT FANS-WE ARE FAMILY', 'Jl. Balekambang Dangdeur Kec.Majalaya Des.Sukamaju Kab.Bandung', '+6281224617418', 'trisna.gumilang420@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `projectname` varchar(250) NOT NULL,
  `projectpic` varchar(250) NOT NULL,
  `projectlink` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `portfolio`
--

INSERT INTO `portfolio` (`id`, `projectname`, `projectpic`, `projectlink`) VALUES
(15, '', 'img-1.jpeg', '#'),
(16, '', 'img-2.jpeg', ''),
(17, '', 'img-3.jpeg', ''),
(18, '', 'img-23.jpeg', ''),
(19, '', 'img-21.jpeg', ''),
(21, '', 'img-4.jpeg', ''),
(23, '', 'img-11.jpeg', ''),
(24, '', 'img-13.jpeg', ''),
(25, '', 'img-9.jpeg', ''),
(30, '', 'IMG_20180422_104859_374.jpg', ''),
(31, '', 'img-20.jpeg', ''),
(33, '', 'img-25.jpeg', ''),
(34, '', 'img-19.jpeg', ''),
(35, '', 'img-18.jpeg', ''),
(36, '', 'img-10.jpeg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `year` varchar(250) NOT NULL,
  `ogname` varchar(250) NOT NULL,
  `workdesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `resume`
--

INSERT INTO `resume` (`id`, `category`, `title`, `year`, `ogname`, `workdesc`) VALUES
(16, 'e', 'Vokalis', 'Givani Gumilang', 'SCIMMIASKA BANDUNG SKA', 'Vokalis Scimmiaska Terbaik sepanjang masa'),
(17, 'pe', 'Intro (Alba)', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', ''),
(18, 'e', 'Pemain Keyboard', 'Gian (Iqbal Giantaufik)', 'SCIMMIASKA BANDUNG SKA', ''),
(19, 'e', 'Pemain Trumpet', 'Eot (Reza Dwi Nugraha)', 'SCIMMIASKA BANDUNG SKA', ''),
(20, 'e', 'Pemain Saksofon', 'Asan (Shandra Adhiman Sobari)', 'SCIMMIASKA BANDUNG SKA', ''),
(21, 'e', 'Pemain Saksofon', 'Reza (Reza Surya Pradina)', 'SCIMMIASKA BANDUNG SKA', ''),
(22, 'e', 'Gitaris', 'Oni (Roni Riansyah)', 'SCIMMIASKA BANDUNG SKA', ''),
(23, 'e', 'Gitaris', 'Jim (Jim Desta Firdaus)', 'SCIMMIASKA BANDUNG SKA', ''),
(24, 'e', 'Pemain Bass', 'Jue (Anggi Fichriadi)', 'SCIMMIASKA BANDUNG SKA', ''),
(25, 'e', 'Pemain Trombone', 'Ogi (Yoghi Adhia Prasandi)', 'SCIMMIASKA BANDUNG SKA', ''),
(26, 'e', 'Pemain Drum', 'Ogi (Yoghi Adhia Prasandi) & Erik (Erick Mochamad Ilyas)', 'SCIMMIASKA BANDUNG SKA', ''),
(27, 'pe', 'Bebaskan', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', ''),
(28, 'pe', 'Lembayung', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', ''),
(29, 'pe', 'Berkumpul Bersama', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', ''),
(30, 'pe', 'Lelah', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', ''),
(31, 'pe', 'Biarkan', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', ''),
(32, 'pe', 'No Problem', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', ''),
(33, 'pe', 'With You', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', ''),
(34, 'pe', 'Dengarkan', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', ''),
(35, 'pe', 'You Dance With Me', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', ''),
(36, 'pe', 'Kecewa', 'Album - Alba', 'SCIMMIASKA BANDUNG SKA', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill` varchar(250) NOT NULL,
  `score` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id`, `skill`, `score`) VALUES
(20, 'Profesionalitas', '100'),
(21, 'Existensi', '90'),
(22, 'Fan Based', '90');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aboutus_setup`
--
ALTER TABLE `aboutus_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `basic_setup`
--
ALTER TABLE `basic_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_setup`
--
ALTER TABLE `personal_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aboutus_setup`
--
ALTER TABLE `aboutus_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `basic_setup`
--
ALTER TABLE `basic_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `personal_setup`
--
ALTER TABLE `personal_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
