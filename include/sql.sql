-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Feb 2021 pada 05.28
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'Nama lengkap saya Fariz Hawari Sugiarto, ber Agama Islam dan saya \r\nsekarang berumur 20 tahun. Saya memiliki kondisi kesehatan yang \r\nsangat baik dan mampu berkomunikasi dengan bahasa indonesia \r\nyang baik dan sopan. Saya adalah seorang mahasiswa yang memiliki\r\nKemauan untuk mempelajari hal-hal baru. Saya mampu bekerja \r\nsecara mandiri maupun dalam tim dengan baik,', 'Kreatif Post / Web Developer', '', '            ', '', '29, Oktober 2000');

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
(1, 'Admin', 'admin@admin.com', 'admin', 1);

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
(1, 'Fariz Hawari', 'Website Portfolio ini dibuat untuk memenuhi tugas kuliah:)', 'Mahasiswa,Programer,Media Creator', '7060718_preview.png');

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
(18, 'Fariz Hawari', 'fariz.sco.77@gmail.com', 'CV Fariz', 'Hallo nama saya Fariz HAwari bla bla bla'),
(20, 'Nana', 'nanatrisna@gmail.com', 'Tugas', 'Assalammualaikum nih tugas bangsat');

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
(1, 'nih.jpg', 'Fariz Hawari', '', 'https://www.facebook.com/fariz.SCO.77', 'https://www.instagram.com/vestolaer', '', '', 'https://github.com/FarizHaw/', 'samuel-scalzo-xyuYk9oLA8I-unsplash.jpg', 'Mahasiswa,Programer,Media Creator', 'Jl. Babakan Sumedang, Komplek PosGiro 05/05 Kab.Bandung', '+6289630908640', 'farizh77@gmail.com');

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
(8, '1', '1.jpg', '#'),
(9, '2', '2.jpg', '#'),
(10, '3', '3.jpg', '#'),
(11, '4', '4.jpg', '#'),
(12, '5', '5.jpg', '#'),
(14, '6', '6.jpg', '#');

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
(10, 'e', 'Sekolah Dasar', '2006-2012', 'SDN Sejahtera IV Bandung', ''),
(11, 'e', 'Sekolah Menengah Pertama', '2012-2015', 'SMPN 46 Bandung', ''),
(12, 'e', 'Sekolah Menengah Kejuruan', '2015-2018', 'SMK Informatika Bandung', 'Jurusan Rekayasa Perangkat Lunak (RPL)'),
(13, 'pe', 'Magang', '2018', 'Percetakan Ijazah', ''),
(14, 'pe', 'Freelance', '2017-2020', 'Desain Banner & Digital Wedding', ''),
(15, 'pe', 'Freelance', '2019-Sekarang', 'WR Project, RAB Photography', '');

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
(12, 'HTML', '100'),
(13, 'CSS', '90'),
(14, 'PHP', '75'),
(15, 'MYSQL', '75'),
(16, 'Javascript', '60'),
(17, 'Photoshop', '90'),
(18, 'Bootstrap', '55'),
(19, 'MS Word', '90');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `personal_setup`
--
ALTER TABLE `personal_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
