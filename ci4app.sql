-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Sep 2022 pada 02.05
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'b8aa9d4395bdd7a590540fa3679f5465', '2022-07-11 03:46:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator Page'),
(2, 'user', 'Regular User Page');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 2),
(2, 3),
(2, 7),
(2, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'agnarizky88@gmail.com', 2, '2022-07-08 14:21:50', 1),
(2, '::1', 'agnarizky88@gmail.com', 2, '2022-07-08 14:25:45', 1),
(3, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 03:54:47', 1),
(4, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 03:59:51', 1),
(5, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 04:01:03', 1),
(6, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 05:14:06', 1),
(7, '::1', 'cimoet121', NULL, '2022-07-09 05:58:02', 0),
(8, '::1', 'cimoet121', NULL, '2022-07-09 05:58:13', 0),
(9, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 05:58:46', 1),
(10, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 05:59:22', 1),
(11, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:04:56', 1),
(12, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:06:38', 1),
(13, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 11:14:07', 1),
(14, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:14:26', 1),
(15, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 11:20:55', 1),
(16, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:25:29', 1),
(17, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:25:59', 1),
(18, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:26:51', 1),
(19, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:32:11', 1),
(20, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:32:49', 1),
(21, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 11:33:12', 1),
(22, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:34:19', 1),
(23, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 11:34:50', 1),
(24, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:34:55', 1),
(25, '::1', 'cimoet121', NULL, '2022-07-09 11:36:07', 0),
(26, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 11:36:16', 1),
(27, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:37:12', 1),
(28, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:38:23', 1),
(29, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:38:49', 1),
(30, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:39:30', 1),
(31, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:41:08', 1),
(32, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:41:22', 1),
(33, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:41:58', 1),
(34, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:42:48', 1),
(35, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:42:53', 1),
(36, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 11:45:04', 1),
(37, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:04:55', 1),
(38, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:06:08', 1),
(39, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 12:06:17', 1),
(40, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:08:00', 1),
(41, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:09:33', 1),
(42, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:11:02', 1),
(43, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 12:11:11', 1),
(44, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:21:39', 1),
(45, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 12:21:49', 1),
(46, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:22:05', 1),
(47, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:22:40', 1),
(48, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:23:03', 1),
(49, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 12:23:12', 1),
(50, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 12:23:40', 1),
(51, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:26:07', 1),
(52, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 12:28:22', 1),
(53, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:34:24', 1),
(54, '::1', 'agnarizky69@gmail.com', 3, '2022-07-09 12:38:16', 1),
(55, '::1', 'agnarizky88@gmail.com', 2, '2022-07-09 12:39:00', 1),
(56, '::1', 'agnarizky88@gmail.com', 2, '2022-07-10 01:18:52', 1),
(57, '::1', 'cimoet121', NULL, '2022-07-10 03:14:32', 0),
(58, '::1', 'agnarizky121', NULL, '2022-07-10 03:14:37', 0),
(59, '::1', 'agnarizky88@gmail.com', 2, '2022-07-10 03:15:39', 1),
(60, '::1', 'agnarizky88@gmail.com', 2, '2022-07-10 03:18:26', 1),
(61, '::1', 'agnarizky69@gmail.com', 3, '2022-07-10 03:29:27', 1),
(62, '::1', 'cimoet121', NULL, '2022-07-10 07:13:26', 0),
(63, '::1', 'agnarizky121', NULL, '2022-07-10 07:13:33', 0),
(64, '::1', 'agnarizky69@gmail.com', 3, '2022-07-10 07:13:47', 1),
(65, '::1', 'agnarizky88@gmail.com', 2, '2022-07-10 14:19:23', 1),
(66, '::1', 'agnarizky88@gmail.com', 2, '2022-07-11 12:05:38', 1),
(67, '::1', 'agnarizky88@gmail.com', 2, '2022-07-11 12:24:14', 1),
(68, '::1', 'agnarizky88@gmail.com', 2, '2022-07-23 03:34:19', 1),
(69, '::1', 'agnarizky88@gmail.com', 2, '2022-07-23 07:07:11', 1),
(70, '::1', 'agnarizky88@gmail.com', 2, '2022-07-23 12:08:28', 1),
(71, '::1', 'agnarizky88@gmail.com', 2, '2022-07-24 01:24:35', 1),
(72, '::1', 'agnarizky88@gmail.com', 2, '2022-07-24 05:39:55', 1),
(73, '::1', 'agnarizky88@gmail.com', 2, '2022-07-24 13:43:19', 1),
(74, '::1', 'agnarizky88@gmail.com', 2, '2022-07-24 14:41:03', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profile', 'Manage Users Profile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_reset_attempts`
--

INSERT INTO `auth_reset_attempts` (`id`, `email`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(4, 'putraodin2@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'a7a57ff30ea551d6641a72c05481dc4b', '2022-07-11 12:16:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id_pesan` int(11) NOT NULL,
  `pengirim` int(255) NOT NULL,
  `penerima` int(255) NOT NULL,
  `pesan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id_pesan`, `pengirim`, `penerima`, `pesan`) VALUES
(1, 2, 3, 'halo'),
(2, 3, 2, 'iya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1657224375, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.png',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'agnarizky88@gmail.com', 'agnarizky121', NULL, 'default.png', '$2y$10$18pBcf0/7MKcsmQDsG8ZrOOcYHsB5kYtUr3lJRncy/urRfDQ2qDra', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-07-08 14:08:18', '2022-07-08 14:08:18', NULL),
(3, 'agnarizky69@gmail.com', 'cimoet121', NULL, 'default.png', '$2y$10$RmeBE/67FJU0pg9o4UNjY.86djMqDIqBOx8gV8FodwBFgfpGvQV06', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-07-09 05:10:46', '2022-07-09 05:10:46', NULL),
(7, 'putraodin21@gmail.com', 'sharingan12', 'Agna Rizky Putra', 'default.png', '$2y$10$GdPuunzhWhgzD8/ZnlKYsuDhObtHoRitrccbA.b/l0eO70vhQq9aq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-07-10 15:15:25', '2022-07-10 15:15:25', NULL),
(8, 'putraodin2@gmail.com', 'sintenitu121', 'Siti Latifatul Munawaroh', 'default.png', '$2y$10$7Yd0bpzT56mkFCCeQEdTmeY.MaX/m7YcSAPgyndUUP.b.IREg6yOC', 'a7a57ff30ea551d6641a72c05481dc4b', NULL, '2022-07-11 13:15:56', NULL, NULL, NULL, 1, 0, '2022-07-11 03:44:50', '2022-07-11 12:15:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
