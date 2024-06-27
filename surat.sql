-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2024 pada 02.52
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bagian`
--

CREATE TABLE `tbl_bagian` (
  `id_bagian` int(10) NOT NULL,
  `nama_bagian` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bagian`
--

INSERT INTO `tbl_bagian` (`id_bagian`, `nama_bagian`, `id_user`) VALUES
(6, 'Kepala Desa', 5),
(7, 'Bendahara', 5),
(8, 'Sekdes', 5),
(9, 'Kaur Umum', 5),
(10, 'Kaur Keuangan', 5),
(11, 'Kaur Pemerintahan', 5),
(12, 'Kaur Kesra', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lampiran`
--

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(10) NOT NULL,
  `token_lampiran` varchar(100) NOT NULL,
  `nama_berkas` text DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`id_lampiran`, `token_lampiran`, `nama_berkas`, `ukuran`) VALUES
(32, '5607783cca2a4c828eb648b0a52334ca', 'TEORI_BELAJAR_BEHAVIORISTIK.docx', '14.91'),
(33, '8702802491dad6966f5120b9d767b58f', 'Judul_Penelitian.docx', '13.43'),
(34, 'd3064387a5be6f8ab57b21d4a7eafbc5', 'pidato_teknologi_di_era_baru.docx', '14.11'),
(35, '3ef17f9bf6da5dc1aeb84d831aad5df2', 'Sistem_Informasi_Kearsipan_Berbais_website_pada_SAI_Alam_Aisyah_21.pdf', '1497.22'),
(36, '67c51a67547b55c65a81f2cc7c54a24f', 'Sistem_Informasi_Kearsipan_Berbais_website_pada_SAI_Alam_Aisyah_2.pdf', '1596.56'),
(37, 'd09930f832bae2c90ebce6135e4257c8', 'Skripsi_(Munaqosah)_-_Lintang_Aji_Yoga_Pratama_(2008096059).pdf', '4451.72'),
(38, 'a80f657cc40c23f66c8ce00ecce5412d', 'formulir_munaqosah_2008096069_(1).pdf', '331.65'),
(39, 'cf4c5d58b0f7d356c1b0c0b9426f19d2', '2008096069_17192141451968771559.pdf', '998.97'),
(40, '913f981b1c8db0b6cc09a3ceccfb2e3b', '2008096069_171921414519687715591.pdf', '998.97'),
(41, '54bb736c6ee5c41e485d32eeb82b350a', 'formulir_munaqosah_2008096069_(1)1.pdf', '331.65'),
(43, '810067e9be5b4651c26dd45a250e90db', 'formulir_munaqosah_2008096069_(1)2.pdf', '331.65'),
(44, 'd57e72c09e575ecbb645bf2165d057ae', 'formulir_munaqosah_2008096069.pdf', '331.65'),
(45, '8fd157c1e5a18d1495e7327a23b067c5', 'formulir_munaqosah_2008096069_(1)3.pdf', '331.65'),
(47, '53d5d3dc5e853834e698bf2215961bca', 'formulir_munaqosah_2008096069_(1)4.pdf', '331.65'),
(48, '8135b582275af81bd0bbd83a318ca3a0', 'formulir_munaqosah_2008096069_(1)5.pdf', '331.65');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_memo`
--

CREATE TABLE `tbl_memo` (
  `id_memo` int(10) NOT NULL,
  `judul_memo` text DEFAULT NULL,
  `memo` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ns`
--

CREATE TABLE `tbl_ns` (
  `id_ns` int(10) NOT NULL,
  `separator` text DEFAULT NULL,
  `no_posisi` text DEFAULT NULL,
  `no` text DEFAULT NULL,
  `org_posisi` text DEFAULT NULL,
  `org` text DEFAULT NULL,
  `bag_posisi` text DEFAULT NULL,
  `bag` text DEFAULT NULL,
  `subbag_posisi` text DEFAULT NULL,
  `subbag` text DEFAULT NULL,
  `bln_posisi` text DEFAULT NULL,
  `bln` text DEFAULT NULL,
  `thn_posisi` text DEFAULT NULL,
  `thn` text DEFAULT NULL,
  `reset_no` text DEFAULT NULL,
  `prefix` text DEFAULT NULL,
  `prefix_posisi` enum('kiri','kanan') DEFAULT NULL,
  `no_surat` text DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `jenis_ns` enum('semua','sm','sk','disposisi') DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sk`
--

CREATE TABLE `tbl_sk` (
  `id_sk` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `pengirim` text NOT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `id_bagian` int(10) NOT NULL,
  `token_lampiran` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` text NOT NULL,
  `peringatan` int(1) NOT NULL,
  `tgl_sk` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sk`
--

INSERT INTO `tbl_sk` (`id_sk`, `no_surat`, `tgl_ns`, `pengirim`, `penerima`, `perihal`, `id_bagian`, `token_lampiran`, `id_user`, `dibaca`, `disposisi`, `peringatan`, `tgl_sk`) VALUES
(20, 'SKm/001', '26-06-2024', '', '', 'Surat Izin beajar', 0, '810067e9be5b4651c26dd45a250e90db', 1, 0, '', 0, '26-06-2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sm`
--

CREATE TABLE `tbl_sm` (
  `id_sm` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `no_asal` text DEFAULT NULL,
  `tgl_no_asal` varchar(12) DEFAULT NULL,
  `pengirim` text DEFAULT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `token_lampiran` varchar(100) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` int(1) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_sm` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sm`
--

INSERT INTO `tbl_sm` (`id_sm`, `no_surat`, `tgl_ns`, `no_asal`, `tgl_no_asal`, `pengirim`, `penerima`, `perihal`, `token_lampiran`, `dibaca`, `disposisi`, `id_user`, `tgl_sm`) VALUES
(24, 'SKm/001', '26-06-2024', 'SKm/001', '26-06-2024', 'ADMIN', 'undefined', 'Surat Izin Penelitian', 'd57e72c09e575ecbb645bf2165d057ae', 1, 0, 0, '26-06-2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `pengalaman` text DEFAULT NULL,
  `level` enum('s_admin','admin','user') DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tgl_daftar` varchar(20) DEFAULT NULL,
  `terakhir_login` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `alamat`, `telp`, `pengalaman`, `level`, `status`, `tgl_daftar`, `terakhir_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ADMIN', 'anwarsptr@gmail.com', 'negarabumi', '453454', 'ok', 's_admin', 'aktif', '07-10-2017 17:03:12', '27-06-2024 07:41:17'),
(5, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'ADMIN2', 'herusp49@gmail.com', 'Negarabumi', '4646546', 'ok', 'admin', 'aktif', '07-10-2017 17:30:08', '25-06-2024 13:22:32'),
(6, 'user', '24c9e15e52afc47c225b757e7bee1f9d', 'USER', 'herusp49@gmail.com', 'negarabumi', '0987775', 'ok', 'user', 'aktif', '21-05-2024 11:00:50', '27-06-2024 07:38:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indeks untuk tabel `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indeks untuk tabel `tbl_memo`
--
ALTER TABLE `tbl_memo`
  ADD PRIMARY KEY (`id_memo`);

--
-- Indeks untuk tabel `tbl_ns`
--
ALTER TABLE `tbl_ns`
  ADD PRIMARY KEY (`id_ns`);

--
-- Indeks untuk tabel `tbl_sk`
--
ALTER TABLE `tbl_sk`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indeks untuk tabel `tbl_sm`
--
ALTER TABLE `tbl_sm`
  ADD PRIMARY KEY (`id_sm`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  MODIFY `id_bagian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  MODIFY `id_lampiran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `tbl_memo`
--
ALTER TABLE `tbl_memo`
  MODIFY `id_memo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_ns`
--
ALTER TABLE `tbl_ns`
  MODIFY `id_ns` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_sk`
--
ALTER TABLE `tbl_sk`
  MODIFY `id_sk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_sm`
--
ALTER TABLE `tbl_sm`
  MODIFY `id_sm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
