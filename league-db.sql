-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 31, 2022 at 05:22 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `league-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stadiums_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `thropy` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `stadiums_id`, `name`, `logo`, `url`, `thropy`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chelsea FC', 'https://resources.premierleague.com/premierleague/badges/t8.svg', 'www.chelseafc.com', 19, NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(2, 2, 'Arsenal', 'https://resources.premierleague.com/premierleague/badges/t3.svg', 'www.arsenal.com', 8, NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(3, 3, 'Manchester United', 'https://resources.premierleague.com/premierleague/badges/t1.svg', 'www.manutd.com', 20, NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(4, 4, 'Manchester City', 'https://resources.premierleague.com/premierleague/badges/t43.svg', 'www.mancity.com', 12, NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(5, 5, 'Liverpool', 'https://resources.premierleague.com/premierleague/badges/t14.svg', 'www.liverpoolfc.com', 11, NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(6, 6, 'Tottenham Hotspur', 'https://resources.premierleague.com/premierleague/badges/t6.svg', 'www.tottenhamhotspur.com', 1, NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clubs_id` bigint(20) UNSIGNED DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `old` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `clubs_id`, `photo`, `name`, `old`, `nationality`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man39237.png', 'Thomas Tuchel', '47', 'Germany', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(2, 2, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man51018.png', 'Mikel Arteta', '38', 'Spain', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(3, 3, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man40342.png', 'Ole Gunnar Solskjær', '48', 'Norway', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(4, 4, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man37974.png', 'Josep Guardiola', '50', 'Spain', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(5, 5, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man279.png', 'Jurgen Klopp', '53', 'Germany', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(6, 6, 'https://resources.premierleague.com/premierleague/photos/players/250x250/man134.png', 'Jose Mourinho', '58', 'Portugal', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clubs_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rivals_id` bigint(20) UNSIGNED DEFAULT NULL,
  `schedule` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `clubs_id`, `rivals_id`, `schedule`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2021-08-25 00:00:00', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(2, 2, 1, '2021-08-25 00:00:00', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(3, 3, 4, '2021-08-25 00:00:00', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(4, 4, 3, '2021-08-25 00:00:00', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(5, 5, 6, '2021-08-25 00:00:00', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(6, 6, 5, '2021-08-25 00:00:00', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2021_07_19_024020_create_clubs_table', 1),
(17, '2021_07_19_024045_create_managers_table', 1),
(18, '2021_07_19_024113_create_stadiums_table', 1),
(19, '2021_07_19_024127_create_players_table', 1),
(20, '2021_07_19_025130_create_matches_table', 1),
(21, '2021_07_19_025455_add_foreign_keys_to_clubs', 1),
(22, '2021_07_19_030608_add_foreign_keys_to_managers', 1),
(23, '2021_07_19_030630_add_foreign_keys_to_matches', 1),
(24, '2021_07_19_030746_add_foreign_keys_to_players', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clubs_id` bigint(20) UNSIGNED DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `clubs_id`, `photo`, `name`, `height`, `position`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p165153.png', 'Timo Werner', '180', 'Forward', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(2, 1, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p184341.png', 'Mason Mount', '178', 'Midfielder', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(3, 2, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p184029.png', 'Martin Ødegaard', '178', 'Midfielder', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(4, 2, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p182539.png', 'Dani Ceballos', '179', 'Midfielder', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(5, 3, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p106760.png', 'Luke Shaw', '185', 'Defender', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(6, 3, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p141746.png', 'Bruno Fernandes', '179', 'Midfielder', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(7, 4, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p121160.png', 'Ederson', '188', 'Goalkeeper', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(8, 4, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p103025.png', 'Riyard Mahrez', '179', 'Forward', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(9, 5, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p194634.png', 'Diogo Jota', '178', 'Forward', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(10, 5, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p97032.png', 'Virgil van Dijk', '193', 'Defender', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(11, 6, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p36903.png', 'Gareth Bale', '185', 'Forward', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(12, 6, 'https://resources.premierleague.com/premierleague/photos/players/250x250/p199249.png', 'Sergio Reguilon', '178', 'Defender', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stadiums`
--

CREATE TABLE `stadiums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stadiums`
--

INSERT INTO `stadiums` (`id`, `name`, `capacity`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Stamford Bridge', 40000, 'Stamford Bridge, Fulham Road, London, SW6 1HS', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(2, 'Emirates Stadium', 60000, 'Highbury House, 75 Drayton Park, London, N5 1BU', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(3, 'Old Trafford', 74000, 'Sir Matt Busby Way, Old Trafford, Manchester, M16 0RA', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(4, 'Etihad Stadium', 55000, 'Etihad Stadium, Etihad Campus, Manchester, M11 3FF', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(5, 'Anfield', 53000, 'Anfield, Anfield Road, Liverpool, L4 0TH', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00'),
(6, 'Tottenham Hotspur Stadium', 62000, 'Lilywhite House, 782 High Road, Tottenham, London, N17 0BX', NULL, '2021-03-20 17:00:00', '2021-03-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stadiums_id_fk1` (`stadiums_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stadiums_id_fk3` (`clubs_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stadiums_id_fk4` (`clubs_id`),
  ADD KEY `stadiums_id_fk5` (`rivals_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stadiums_id_fk2` (`clubs_id`);

--
-- Indexes for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stadiums`
--
ALTER TABLE `stadiums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
