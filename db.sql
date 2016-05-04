-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2016 at 10:13 PM
-- Server version: 5.7.8-rc
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agenda`
--

-- --------------------------------------------------------

--
-- Table structure for table `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `celular`, `created_at`, `updated_at`) VALUES
(1, 'cliente1', 'teste@teste.com', '12344321', '2016-04-29 23:57:37', '2016-04-29 23:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `GUID_EMAIL`
--

CREATE TABLE `GUID_EMAIL` (
  `GUID` int(11) NOT NULL,
  `EMAIL` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GUID_EMAIL`
--

INSERT INTO `GUID_EMAIL` (`GUID`, `EMAIL`) VALUES
(1, 'lancedon@gmail.com'),
(3, 'cliente3@teste.com'),
(3, 'teste001@teste.com');

-- --------------------------------------------------------

--
-- Table structure for table `LOG`
--

CREATE TABLE `LOG` (
  `GUID` int(11) NOT NULL,
  `URL` varchar(500) NOT NULL,
  `TS_CREATED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LOG`
--

INSERT INTO `LOG` (`GUID`, `URL`, `TS_CREATED`) VALUES
(1, '', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/envia_contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/envia_contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/envia_contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/index.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/envia_contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/envia_contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/envia_contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 00:00:00'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:22:09'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:22:29'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:31:20'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:40:41'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:41:21'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:42:33'),
(1, 'http://192.168.33.10/php/envia_contato.php', '2016-05-04 21:44:09'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:45:56'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:46:39'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:46:48'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:46:55'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:47:09'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:47:49'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:47:57'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:48:16'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:51:35'),
(1, 'http://192.168.33.10/php/contato.php', '2016-05-04 21:52:08'),
(2, 'http://192.168.33.10/php/', '2016-05-04 21:57:20'),
(3, 'http://192.168.33.10/php/contato.php', '2016-05-04 22:01:14'),
(3, 'http://192.168.33.10/php/contato.php', '2016-05-04 22:01:24'),
(3, 'http://192.168.33.10/php/index.php', '2016-05-04 22:01:32'),
(3, 'http://192.168.33.10/php/contato.php', '2016-05-04 22:02:39'),
(3, 'http://192.168.33.10/php/envia_contato.php', '2016-05-04 22:03:04'),
(3, 'http://192.168.33.10/php/report.php', '2016-05-04 22:03:42'),
(3, 'http://192.168.33.10/php/report.php', '2016-05-04 22:03:45'),
(3, 'http://192.168.33.10/php/report.php', '2016-05-04 22:08:47'),
(3, 'http://192.168.33.10/php/report.php', '2016-05-04 22:09:07'),
(3, 'http://192.168.33.10/php/report.php', '2016-05-04 22:09:15'),
(3, 'http://192.168.33.10/php/index.php', '2016-05-04 22:10:19'),
(3, 'http://192.168.33.10/php/report.php', '2016-05-04 22:10:20'),
(3, 'http://192.168.33.10/php/contato.php', '2016-05-04 22:10:22'),
(3, 'http://192.168.33.10/php/contato.php', '2016-05-04 22:10:26'),
(3, 'http://192.168.33.10/php/envia_contato.php', '2016-05-04 22:10:33'),
(3, 'http://192.168.33.10/php/contato.php', '2016-05-04 22:10:36'),
(3, 'http://192.168.33.10/php/report.php', '2016-05-04 22:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160429232513'),
('20160430074812'),
('20160430075041'),
('20160430075524');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password_digest` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `created_at`, `updated_at`, `password_digest`) VALUES
(1, 'teste', 'teste@teste.com', '2016-04-30 08:47:07', '2016-04-30 08:47:07', '$2a$10$REumZyaj7WizGwrgeRW4h..tBgLzbt.tKtYu3DD5vva2joMEt4E7W');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
