-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Mai 2019 um 22:48
-- Server-Version: 10.1.35-MariaDB
-- PHP-Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `swim_project`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lanes`
--

CREATE TABLE `lanes` (
  `USERID` int(11) NOT NULL,
  `Aktivitätsindex` int(11) NOT NULL,
  `Intervallindex` int(11) NOT NULL,
  `Bahnindex` int(11) NOT NULL,
  `Styleindex` int(11) NOT NULL,
  `Zeit` time NOT NULL,
  `MilliSeconds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `lanes`
--

INSERT INTO `lanes` (`USERID`, `Aktivitätsindex`, `Intervallindex`, `Bahnindex`, `Styleindex`, `Zeit`, `MilliSeconds`) VALUES
(1, 1, 1, 1, 4, '00:00:27', 562),
(1, 1, 1, 2, 4, '00:00:22', 250),
(1, 1, 1, 3, 4, '00:00:23', 62),
(1, 1, 1, 4, 4, '00:00:26', 125),
(1, 1, 1, 5, 4, '00:00:23', 250),
(1, 1, 1, 6, 4, '00:00:26', 125),
(1, 1, 1, 7, 4, '00:00:25', 625),
(1, 1, 1, 8, 4, '00:00:23', 500),
(1, 1, 1, 9, 4, '00:00:27', 125),
(1, 1, 1, 10, 4, '00:00:24', 250),
(1, 1, 1, 11, 4, '00:00:24', 812),
(1, 1, 1, 12, 4, '00:00:24', 187),
(1, 1, 1, 13, 4, '00:00:27', 875),
(1, 1, 1, 14, 4, '00:00:23', 875),
(1, 1, 1, 15, 4, '00:00:28', 625),
(1, 1, 1, 16, 4, '00:00:26', 562),
(1, 1, 1, 17, 4, '00:00:25', 687),
(1, 1, 1, 18, 4, '00:00:21', 755),
(1, 1, 2, 1, 3, '00:00:38', 500),
(1, 1, 2, 2, 3, '00:00:37', 500),
(1, 1, 2, 3, 3, '00:00:35', 562),
(1, 1, 2, 4, 3, '00:00:30', 316),
(1, 1, 3, 1, 10, '00:00:40', 770),
(1, 1, 3, 2, 10, '00:00:40', 770),
(1, 1, 3, 3, 10, '00:00:40', 770),
(1, 1, 3, 4, 10, '00:00:40', 770),
(1, 1, 3, 5, 10, '00:00:40', 770),
(1, 1, 3, 6, 10, '00:00:40', 770),
(1, 1, 3, 7, 10, '00:00:40', 770),
(1, 1, 3, 8, 10, '00:00:40', 772),
(1, 1, 4, 1, 10, '00:00:27', 617),
(1, 1, 4, 2, 10, '00:00:27', 617),
(1, 1, 4, 3, 10, '00:00:27', 617),
(1, 1, 4, 4, 10, '00:00:27', 617),
(1, 1, 4, 5, 10, '00:00:27', 617),
(1, 1, 4, 6, 10, '00:00:27', 617),
(1, 1, 4, 7, 10, '00:00:27', 617),
(1, 1, 4, 8, 10, '00:00:27', 617),
(1, 1, 5, 1, 3, '00:00:37', 875),
(1, 1, 5, 2, 3, '00:00:32', 625),
(1, 1, 5, 3, 3, '00:00:35', 312),
(1, 1, 5, 4, 3, '00:00:30', 638),
(1, 1, 6, 1, 1, '00:00:29', 437),
(1, 1, 6, 2, 1, '00:00:27', 812),
(1, 1, 6, 3, 2, '00:00:31', 125),
(1, 1, 6, 4, 2, '00:00:25', 250),
(1, 1, 6, 5, 2, '00:00:31', 125),
(1, 1, 6, 6, 2, '00:00:31', 312),
(1, 1, 6, 7, 4, '00:00:28', 250),
(1, 1, 6, 8, 4, '00:00:26', 500),
(1, 1, 6, 9, 4, '00:00:23', 687),
(1, 1, 6, 10, 4, '00:00:23', 875),
(1, 1, 6, 11, 4, '00:00:24', 0),
(1, 1, 6, 12, 4, '00:00:23', 437),
(1, 1, 6, 13, 4, '00:00:23', 437),
(1, 1, 6, 14, 4, '00:00:25', 250),
(1, 1, 6, 15, 2, '00:00:28', 625),
(1, 1, 6, 16, 2, '00:00:27', 62),
(1, 1, 6, 17, 2, '00:00:28', 500),
(1, 1, 6, 18, 2, '00:00:33', 375),
(1, 1, 6, 19, 1, '00:00:26', 750),
(1, 1, 6, 20, 1, '00:00:28', 226),
(1, 1, 7, 1, 3, '00:00:40', 812),
(1, 1, 7, 2, 3, '00:00:38', 62),
(1, 1, 7, 3, 3, '00:00:38', 437),
(1, 1, 7, 4, 3, '00:00:30', 878),
(1, 1, 8, 1, 1, '00:00:31', 125),
(1, 1, 8, 2, 1, '00:00:31', 187),
(1, 1, 8, 3, 2, '00:00:26', 500),
(1, 1, 8, 4, 2, '00:00:28', 312),
(1, 1, 8, 5, 2, '00:00:20', 875),
(1, 1, 8, 6, 2, '00:00:40', 125),
(1, 1, 8, 7, 4, '00:00:22', 937),
(1, 1, 8, 8, 4, '00:00:29', 62),
(1, 1, 8, 9, 4, '00:00:21', 312),
(1, 1, 8, 10, 4, '00:00:31', 187),
(1, 1, 8, 11, 4, '00:00:25', 62),
(1, 1, 8, 12, 4, '00:00:28', 375),
(1, 1, 8, 13, 4, '00:00:22', 187),
(1, 1, 8, 14, 4, '00:00:27', 437),
(1, 1, 8, 15, 2, '00:00:27', 750),
(1, 1, 8, 16, 2, '00:00:27', 62),
(1, 1, 8, 17, 2, '00:00:30', 437),
(1, 1, 8, 18, 2, '00:00:34', 375),
(1, 1, 8, 19, 1, '00:00:28', 687),
(1, 1, 8, 20, 1, '00:00:25', 830),
(1, 1, 9, 1, 3, '00:00:41', 187),
(1, 1, 9, 2, 3, '00:00:40', 312),
(1, 1, 9, 3, 3, '00:00:33', 62),
(1, 1, 9, 4, 3, '00:00:31', 556),
(1, 1, 10, 1, 4, '00:00:27', 750),
(1, 1, 10, 2, 4, '00:00:24', 187),
(1, 1, 10, 3, 4, '00:00:22', 250),
(1, 1, 10, 4, 4, '00:00:24', 312),
(1, 1, 10, 5, 4, '00:00:23', 937),
(1, 1, 10, 6, 4, '00:00:22', 312),
(1, 1, 10, 7, 4, '00:00:25', 750),
(1, 1, 10, 8, 4, '00:00:19', 656),
(1, 1, 11, 1, 4, '00:00:26', 625),
(1, 1, 11, 2, 4, '00:00:24', 625),
(1, 1, 11, 3, 4, '00:00:27', 937),
(1, 1, 11, 4, 4, '00:00:23', 375),
(1, 1, 11, 5, 4, '00:00:25', 625),
(1, 1, 11, 6, 4, '00:00:26', 687),
(1, 1, 11, 7, 4, '00:00:21', 125),
(1, 1, 11, 8, 4, '00:00:22', 36),
(1, 1, 12, 1, 3, '00:00:41', 312),
(1, 1, 12, 2, 3, '00:00:37', 250),
(1, 1, 12, 3, 3, '00:00:40', 375),
(1, 1, 12, 4, 3, '00:00:32', 665),
(1, 1, 13, 1, 4, '00:00:28', 937),
(1, 1, 13, 2, 4, '00:00:24', 500),
(1, 1, 13, 3, 4, '00:00:25', 437),
(1, 1, 13, 4, 4, '00:00:24', 312),
(1, 1, 13, 5, 4, '00:00:28', 187),
(1, 1, 13, 6, 4, '00:00:26', 812),
(1, 1, 13, 7, 4, '00:00:26', 625),
(1, 1, 13, 8, 4, '00:00:26', 500),
(1, 1, 13, 9, 4, '00:00:27', 937),
(1, 1, 13, 10, 4, '00:00:25', 937),
(1, 1, 13, 11, 4, '00:00:24', 187),
(1, 1, 13, 12, 4, '00:00:25', 250),
(1, 1, 13, 13, 4, '00:00:27', 937),
(1, 1, 13, 14, 4, '00:00:34', 62),
(1, 1, 13, 15, 4, '00:00:25', 750),
(1, 1, 13, 16, 4, '00:00:27', 625),
(1, 1, 13, 17, 4, '00:00:27', 562),
(1, 1, 13, 18, 4, '00:00:26', 312),
(1, 1, 13, 19, 4, '00:00:26', 937),
(1, 1, 13, 20, 4, '00:00:28', 250),
(1, 1, 13, 21, 4, '00:00:27', 750),
(1, 1, 13, 22, 4, '00:00:23', 666),
(1, 1, 14, 1, 3, '00:00:44', 812),
(1, 1, 14, 2, 3, '00:00:39', 62),
(1, 1, 14, 3, 4, '00:00:25', 812),
(1, 1, 14, 4, 4, '00:00:28', 687),
(1, 1, 14, 5, 4, '00:00:27', 125),
(1, 1, 14, 6, 4, '00:00:28', 562),
(1, 1, 14, 7, 4, '00:00:26', 625),
(1, 1, 14, 8, 4, '00:00:25', 405),
(1, 2, 1, 1, 4, '00:00:16', 750),
(1, 2, 1, 2, 4, '00:00:21', 937),
(1, 2, 1, 3, 4, '00:00:23', 187),
(1, 2, 1, 4, 4, '00:00:21', 250),
(1, 2, 1, 5, 4, '00:00:22', 937),
(1, 2, 1, 6, 4, '00:00:25', 312),
(1, 2, 1, 7, 4, '00:00:24', 125),
(1, 2, 1, 8, 4, '00:00:24', 62),
(1, 2, 1, 9, 4, '00:00:24', 625),
(1, 2, 1, 10, 4, '00:00:24', 62),
(1, 2, 1, 11, 4, '00:00:25', 500),
(1, 2, 1, 12, 4, '00:00:24', 687),
(1, 2, 1, 13, 4, '00:00:24', 0),
(1, 2, 1, 14, 4, '00:00:27', 187),
(1, 2, 1, 15, 4, '00:00:28', 625),
(1, 2, 1, 16, 4, '00:00:24', 187),
(1, 2, 1, 17, 4, '00:00:25', 125),
(1, 2, 1, 18, 4, '00:00:30', 187),
(1, 2, 1, 19, 4, '00:00:20', 250),
(1, 2, 1, 20, 4, '00:00:24', 875),
(1, 2, 1, 21, 4, '00:00:23', 909),
(1, 2, 2, 1, 3, '00:00:35', 312),
(1, 2, 2, 2, 3, '00:00:35', 125),
(1, 2, 2, 3, 13, '00:00:37', 562),
(1, 2, 2, 4, 4, '00:00:26', 812),
(1, 2, 2, 5, 3, '00:00:32', 125),
(1, 2, 2, 6, 3, '00:00:31', 62),
(1, 2, 2, 7, 3, '00:00:40', 187),
(1, 2, 2, 8, 3, '00:00:40', 307),
(1, 2, 3, 1, 10, '00:00:43', 360),
(1, 2, 3, 2, 10, '00:00:43', 360),
(1, 2, 3, 3, 10, '00:00:43', 360),
(1, 2, 3, 4, 10, '00:00:43', 360),
(1, 2, 3, 5, 10, '00:00:43', 360),
(1, 2, 3, 6, 10, '00:00:43', 360),
(1, 2, 3, 7, 10, '00:00:43', 360),
(1, 2, 3, 8, 10, '00:00:43', 360),
(1, 2, 4, 1, 3, '00:00:37', 500),
(1, 2, 4, 2, 3, '00:00:37', 562),
(1, 2, 4, 3, 3, '00:00:32', 61),
(1, 2, 4, 4, 3, '00:00:33', 419),
(1, 2, 5, 1, 4, '00:00:22', 0),
(1, 2, 5, 2, 4, '00:00:23', 625),
(1, 2, 5, 3, 4, '00:00:21', 750),
(1, 2, 5, 4, 4, '00:00:23', 375),
(1, 2, 5, 5, 4, '00:00:24', 375),
(1, 2, 5, 6, 4, '00:00:22', 437),
(1, 2, 5, 7, 4, '00:00:25', 500),
(1, 2, 5, 8, 4, '00:00:20', 494),
(1, 2, 6, 1, 4, '00:00:24', 812),
(1, 2, 6, 2, 4, '00:00:23', 250),
(1, 2, 6, 3, 4, '00:00:23', 937),
(1, 2, 6, 4, 4, '00:00:25', 562),
(1, 2, 6, 5, 4, '00:00:25', 375),
(1, 2, 6, 6, 4, '00:00:23', 500),
(1, 2, 6, 7, 4, '00:00:24', 625),
(1, 2, 6, 8, 4, '00:00:20', 716),
(1, 2, 7, 1, 4, '00:00:25', 750),
(1, 2, 7, 2, 4, '00:00:23', 125),
(1, 2, 7, 3, 4, '00:00:25', 562),
(1, 2, 7, 4, 4, '00:00:25', 375),
(1, 2, 7, 5, 4, '00:00:23', 312),
(1, 2, 7, 6, 4, '00:00:26', 0),
(1, 2, 7, 7, 4, '00:00:23', 375),
(1, 2, 7, 8, 4, '00:00:22', 102),
(1, 2, 8, 1, 3, '00:00:40', 0),
(1, 2, 8, 2, 3, '00:00:36', 165),
(1, 2, 9, 1, 1, '00:00:31', 812),
(1, 2, 9, 2, 2, '00:00:28', 812),
(1, 2, 9, 3, 2, '00:00:26', 375),
(1, 2, 9, 4, 4, '00:00:30', 562),
(1, 2, 9, 5, 4, '00:00:49', 125),
(1, 2, 9, 6, 4, '00:00:30', 250),
(1, 2, 9, 7, 4, '00:00:23', 437),
(1, 2, 9, 8, 2, '00:00:34', 375),
(1, 2, 9, 9, 1, '00:00:26', 777),
(1, 2, 10, 1, 1, '00:00:28', 937),
(1, 2, 10, 2, 1, '00:00:25', 187),
(1, 2, 10, 3, 2, '00:00:34', 750),
(1, 2, 10, 4, 2, '00:00:30', 437),
(1, 2, 10, 5, 3, '00:00:35', 812),
(1, 2, 10, 6, 4, '00:00:34', 125),
(1, 2, 10, 7, 4, '00:00:25', 562),
(1, 2, 10, 8, 4, '00:00:22', 180),
(1, 2, 11, 1, 3, '00:00:38', 687),
(1, 2, 11, 2, 3, '00:00:34', 621),
(1, 2, 12, 1, 4, '00:00:30', 500),
(1, 2, 12, 2, 4, '00:00:25', 437),
(1, 2, 12, 3, 4, '00:00:27', 187),
(1, 2, 12, 4, 4, '00:00:27', 937),
(1, 2, 12, 5, 4, '00:00:29', 0),
(1, 2, 12, 6, 4, '00:00:27', 500),
(1, 2, 12, 7, 4, '00:00:29', 0),
(1, 2, 12, 8, 4, '00:00:29', 437),
(1, 2, 12, 9, 4, '00:00:26', 250),
(1, 2, 12, 10, 4, '00:00:25', 937),
(1, 2, 12, 11, 4, '00:00:30', 437),
(1, 2, 12, 12, 4, '00:00:26', 562),
(1, 2, 12, 13, 4, '00:00:28', 312),
(1, 2, 12, 14, 4, '00:00:29', 0),
(1, 2, 12, 15, 4, '00:00:29', 125),
(1, 2, 12, 16, 4, '00:00:28', 437),
(1, 2, 12, 17, 4, '00:00:30', 125),
(1, 2, 12, 18, 4, '00:00:26', 750),
(1, 2, 12, 19, 4, '00:00:28', 562),
(1, 2, 12, 20, 4, '00:00:26', 156),
(1, 2, 13, 1, 3, '00:00:46', 625),
(1, 2, 13, 2, 3, '00:00:30', 572),
(1, 2, 14, 1, 10, '00:01:09', 463),
(1, 2, 14, 2, 10, '00:01:09', 463),
(1, 2, 15, 1, 4, '00:00:29', 625),
(1, 2, 15, 2, 4, '00:00:28', 750),
(1, 2, 15, 3, 4, '00:00:29', 0),
(1, 2, 15, 4, 4, '00:00:23', 392),
(1, 3, 1, 1, 4, '00:00:26', 562),
(1, 3, 1, 2, 4, '00:00:25', 125),
(1, 3, 1, 3, 4, '00:00:24', 437),
(1, 3, 1, 4, 4, '00:00:23', 312),
(1, 3, 1, 5, 4, '00:00:23', 812),
(1, 3, 1, 6, 4, '00:00:25', 312),
(1, 3, 1, 7, 4, '00:00:25', 187),
(1, 3, 1, 8, 4, '00:00:24', 687),
(1, 3, 1, 9, 4, '00:00:27', 250),
(1, 3, 1, 10, 4, '00:00:25', 375),
(1, 3, 1, 11, 4, '00:00:26', 375),
(1, 3, 1, 12, 4, '00:00:25', 187),
(1, 3, 1, 13, 4, '00:00:25', 437),
(1, 3, 1, 14, 4, '00:00:25', 375),
(1, 3, 1, 15, 4, '00:00:27', 0),
(1, 3, 1, 16, 4, '00:00:21', 893),
(1, 3, 2, 1, 3, '00:00:33', 875),
(1, 3, 2, 2, 3, '00:00:32', 61),
(1, 3, 2, 3, 3, '00:00:34', 750),
(1, 3, 2, 4, 3, '00:00:30', 77),
(1, 3, 3, 1, 3, '00:00:26', 0),
(1, 3, 3, 2, 3, '00:01:47', 952),
(1, 3, 4, 1, 4, '00:00:33', 437),
(1, 3, 4, 2, 4, '00:00:19', 910),
(1, 3, 5, 1, 10, '00:00:37', 674),
(1, 3, 5, 2, 10, '00:00:37', 674),
(1, 3, 5, 3, 10, '00:00:37', 674),
(1, 3, 5, 4, 10, '00:00:37', 676),
(1, 3, 6, 1, 10, '00:00:24', 146),
(1, 3, 6, 2, 10, '00:00:24', 146),
(1, 3, 6, 3, 10, '00:00:24', 146),
(1, 3, 6, 4, 10, '00:00:24', 147),
(1, 3, 7, 1, 10, '00:00:36', 919),
(1, 3, 7, 2, 10, '00:00:36', 919),
(1, 3, 7, 3, 10, '00:00:36', 919),
(1, 3, 7, 4, 10, '00:00:36', 919),
(1, 3, 8, 1, 10, '00:00:24', 764),
(1, 3, 8, 2, 10, '00:00:24', 764),
(1, 3, 8, 3, 10, '00:00:24', 764),
(1, 3, 8, 4, 10, '00:00:24', 767),
(1, 3, 9, 1, 10, '00:00:37', 522),
(1, 3, 9, 2, 10, '00:00:37', 522),
(1, 3, 9, 3, 10, '00:00:37', 522),
(1, 3, 9, 4, 10, '00:00:37', 522),
(1, 3, 10, 1, 10, '00:00:25', 181),
(1, 3, 10, 2, 10, '00:00:25', 181),
(1, 3, 10, 3, 10, '00:00:25', 181),
(1, 3, 10, 4, 10, '00:00:25', 182),
(1, 3, 11, 1, 4, '00:00:31', 125),
(1, 3, 11, 2, 3, '00:00:33', 750),
(1, 3, 11, 3, 3, '00:00:33', 125),
(1, 3, 11, 4, 3, '00:00:29', 632),
(1, 3, 12, 1, 2, '00:00:29', 125),
(1, 3, 12, 2, 2, '00:00:29', 187),
(1, 3, 12, 3, 2, '00:00:30', 937),
(1, 3, 12, 4, 2, '00:00:23', 627),
(1, 3, 13, 1, 2, '00:00:30', 750),
(1, 3, 13, 2, 2, '00:00:25', 437),
(1, 3, 13, 3, 2, '00:00:26', 437),
(1, 3, 13, 4, 2, '00:00:25', 948),
(1, 3, 14, 1, 2, '00:00:27', 750),
(1, 3, 14, 2, 2, '00:00:27', 687),
(1, 3, 14, 3, 2, '00:00:30', 437),
(1, 3, 14, 4, 2, '00:00:23', 515),
(1, 3, 15, 1, 2, '00:00:27', 937),
(1, 3, 15, 2, 2, '00:00:26', 875),
(1, 3, 15, 3, 2, '00:00:25', 687),
(1, 3, 15, 4, 2, '00:00:27', 8),
(1, 3, 16, 1, 3, '00:00:40', 625),
(1, 3, 16, 2, 3, '00:00:28', 882),
(1, 3, 17, 1, 4, '00:00:24', 62),
(1, 3, 17, 2, 4, '00:00:22', 750),
(1, 3, 17, 3, 4, '00:00:24', 812),
(1, 3, 17, 4, 4, '00:00:22', 312),
(1, 3, 17, 5, 4, '00:00:25', 875),
(1, 3, 17, 6, 4, '00:00:23', 375),
(1, 3, 17, 7, 4, '00:00:24', 812),
(1, 3, 17, 8, 4, '00:00:24', 687),
(1, 3, 17, 9, 4, '00:00:24', 937),
(1, 3, 17, 10, 4, '00:00:24', 812),
(1, 3, 17, 11, 4, '00:00:25', 437),
(1, 3, 17, 12, 4, '00:00:23', 750),
(1, 3, 17, 13, 4, '00:00:25', 875),
(1, 3, 17, 14, 4, '00:00:24', 687),
(1, 3, 17, 15, 4, '00:00:25', 812),
(1, 3, 17, 16, 4, '00:00:18', 299),
(1, 3, 18, 1, 3, '00:00:36', 562),
(1, 3, 18, 2, 3, '00:00:35', 375),
(1, 3, 18, 3, 3, '00:00:34', 937),
(1, 3, 18, 4, 3, '00:00:30', 449),
(1, 3, 19, 1, 1, '00:00:27', 312),
(1, 3, 19, 2, 1, '00:00:30', 0),
(1, 3, 19, 3, 2, '00:00:23', 0),
(1, 3, 19, 4, 2, '00:00:28', 62),
(1, 3, 19, 5, 4, '00:00:32', 311),
(1, 3, 19, 6, 4, '00:00:29', 437),
(1, 3, 19, 7, 4, '00:00:21', 875),
(1, 3, 19, 8, 4, '00:00:20', 840),
(1, 3, 20, 1, 3, '00:00:37', 750),
(1, 3, 20, 2, 3, '00:00:34', 578),
(1, 4, 1, 1, 4, '00:00:28', 0),
(1, 4, 1, 2, 4, '00:00:25', 250),
(1, 4, 1, 3, 4, '00:00:22', 625),
(1, 4, 1, 4, 4, '00:00:24', 312),
(1, 4, 1, 5, 4, '00:00:26', 750),
(1, 4, 1, 6, 4, '00:00:23', 812),
(1, 4, 1, 7, 4, '00:00:26', 187),
(1, 4, 1, 8, 4, '00:00:23', 0),
(1, 4, 1, 9, 4, '00:00:25', 125),
(1, 4, 1, 10, 4, '00:00:26', 750),
(1, 4, 1, 11, 4, '00:00:24', 62),
(1, 4, 1, 12, 4, '00:00:24', 250),
(1, 4, 1, 13, 4, '00:00:24', 625),
(1, 4, 1, 14, 4, '00:00:23', 250),
(1, 4, 1, 15, 4, '00:00:27', 375),
(1, 4, 1, 16, 4, '00:00:20', 509),
(1, 4, 2, 1, 3, '00:00:34', 0),
(1, 4, 2, 2, 3, '00:00:34', 375),
(1, 4, 2, 3, 3, '00:00:36', 0),
(1, 4, 2, 4, 3, '00:00:33', 152),
(1, 4, 3, 1, 10, '00:00:37', 496),
(1, 4, 3, 2, 10, '00:00:37', 496),
(1, 4, 3, 3, 10, '00:00:37', 496),
(1, 4, 3, 4, 10, '00:00:37', 497),
(1, 4, 4, 1, 10, '00:00:24', 755),
(1, 4, 4, 2, 10, '00:00:24', 755),
(1, 4, 4, 3, 10, '00:00:24', 755),
(1, 4, 4, 4, 10, '00:00:24', 757),
(1, 4, 5, 1, 10, '00:00:40', 450),
(1, 4, 5, 2, 10, '00:00:40', 450),
(1, 4, 5, 3, 10, '00:00:40', 450),
(1, 4, 5, 4, 10, '00:00:40', 451),
(1, 4, 6, 1, 10, '00:00:24', 610),
(1, 4, 6, 2, 10, '00:00:24', 610),
(1, 4, 6, 3, 10, '00:00:24', 610),
(1, 4, 6, 4, 10, '00:00:24', 611),
(1, 4, 7, 1, 3, '00:00:32', 625),
(1, 4, 7, 2, 3, '00:00:41', 312),
(1, 4, 7, 3, 3, '00:00:35', 687),
(1, 4, 7, 4, 3, '00:00:31', 551),
(1, 4, 8, 1, 2, '00:00:30', 62),
(1, 4, 8, 2, 2, '00:00:25', 687),
(1, 4, 8, 3, 2, '00:00:32', 0),
(1, 4, 8, 4, 2, '00:00:28', 312),
(1, 4, 8, 5, 2, '00:00:32', 686),
(1, 4, 8, 6, 2, '00:00:26', 312),
(1, 4, 8, 7, 2, '00:00:29', 62),
(1, 4, 8, 8, 2, '00:00:29', 624),
(1, 4, 9, 1, 2, '00:00:29', 125),
(1, 4, 9, 2, 2, '00:00:25', 625),
(1, 4, 9, 3, 2, '00:00:30', 375),
(1, 4, 9, 4, 2, '00:00:32', 750),
(1, 4, 9, 5, 2, '00:00:23', 187),
(1, 4, 9, 6, 2, '00:00:29', 312),
(1, 4, 9, 7, 2, '00:00:28', 375),
(1, 4, 9, 8, 2, '00:00:30', 218),
(1, 4, 10, 1, 3, '00:00:41', 687),
(1, 4, 10, 2, 3, '00:00:34', 837),
(1, 4, 11, 1, 1, '00:00:26', 500),
(1, 4, 11, 2, 1, '00:00:27', 750),
(1, 4, 11, 3, 2, '00:00:23', 0),
(1, 4, 11, 4, 2, '00:00:31', 250),
(1, 4, 11, 5, 3, '00:00:30', 687),
(1, 4, 11, 6, 3, '00:00:32', 311),
(1, 4, 11, 7, 4, '00:00:22', 250),
(1, 4, 11, 8, 4, '00:00:17', 969),
(1, 4, 12, 1, 1, '00:00:29', 437),
(1, 4, 12, 2, 1, '00:00:27', 437),
(1, 4, 12, 3, 2, '00:00:26', 0),
(1, 4, 12, 4, 2, '00:00:28', 562),
(1, 4, 12, 5, 3, '00:00:32', 750),
(1, 4, 12, 6, 3, '00:00:32', 686),
(1, 4, 12, 7, 4, '00:00:21', 250),
(1, 4, 12, 8, 4, '00:00:19', 374),
(1, 4, 13, 1, 3, '00:00:45', 625),
(1, 4, 13, 2, 3, '00:00:38', 764),
(1, 4, 14, 1, 4, '00:00:22', 812),
(1, 4, 14, 2, 4, '00:00:22', 312),
(1, 4, 14, 3, 4, '00:00:21', 687),
(1, 4, 14, 4, 4, '00:00:24', 0),
(1, 4, 14, 5, 4, '00:00:26', 687),
(1, 4, 14, 6, 4, '00:00:23', 625),
(1, 4, 14, 7, 4, '00:00:23', 250),
(1, 4, 14, 8, 4, '00:00:24', 937),
(1, 4, 14, 9, 4, '00:00:23', 625),
(1, 4, 14, 10, 4, '00:00:25', 875),
(1, 4, 14, 11, 4, '00:00:24', 0),
(1, 4, 14, 12, 4, '00:00:24', 375),
(1, 4, 14, 13, 4, '00:00:23', 625),
(1, 4, 14, 14, 4, '00:00:21', 500),
(1, 4, 14, 15, 4, '00:00:23', 187),
(1, 4, 14, 16, 4, '00:00:21', 485),
(1, 4, 15, 1, 3, '00:00:38', 312),
(1, 4, 15, 2, 3, '00:00:36', 169),
(1, 4, 16, 1, 4, '00:00:40', 0),
(1, 4, 16, 2, 3, '00:00:31', 184),
(1, 4, 17, 1, 1, '00:00:22', 51),
(1, 4, 18, 1, 1, '00:00:22', 858),
(1, 4, 19, 1, 1, '00:00:23', 49),
(1, 4, 20, 1, 1, '00:00:22', 525),
(1, 4, 21, 1, 4, '00:00:28', 750),
(1, 4, 21, 2, 4, '00:00:22', 812),
(1, 4, 21, 3, 4, '00:00:28', 375),
(1, 4, 21, 4, 4, '00:00:21', 7),
(1, 5, 1, 1, 4, '00:00:25', 875),
(1, 5, 1, 2, 4, '00:00:22', 500),
(1, 5, 1, 3, 4, '00:00:23', 687),
(1, 5, 1, 4, 4, '00:00:25', 687),
(1, 5, 1, 5, 4, '00:00:24', 500),
(1, 5, 1, 6, 4, '00:00:24', 625),
(1, 5, 1, 7, 4, '00:00:27', 750),
(1, 5, 1, 8, 4, '00:00:23', 62),
(1, 5, 1, 9, 4, '00:00:26', 62),
(1, 5, 1, 10, 4, '00:00:24', 0),
(1, 5, 1, 11, 4, '00:00:28', 125),
(1, 5, 1, 12, 4, '00:00:26', 750),
(1, 5, 1, 13, 4, '00:00:24', 62),
(1, 5, 1, 14, 4, '00:00:25', 812),
(1, 5, 1, 15, 4, '00:00:27', 125),
(1, 5, 1, 16, 4, '00:00:21', 564),
(1, 5, 2, 1, 3, '00:00:32', 0),
(1, 5, 2, 2, 3, '00:00:40', 312),
(1, 5, 2, 3, 3, '00:00:35', 812),
(1, 5, 2, 4, 3, '00:00:32', 634),
(1, 5, 3, 1, 4, '00:00:32', 125),
(1, 5, 3, 2, 4, '00:00:28', 125),
(1, 5, 4, 1, 4, '00:00:25', 750),
(1, 5, 4, 2, 4, '00:00:24', 250),
(1, 5, 4, 3, 4, '00:00:25', 312),
(1, 5, 4, 4, 4, '00:00:24', 187),
(1, 5, 4, 5, 4, '00:00:25', 687),
(1, 5, 4, 6, 4, '00:00:25', 437),
(1, 5, 4, 7, 4, '00:00:25', 625),
(1, 5, 4, 8, 4, '00:00:24', 937),
(1, 5, 4, 9, 4, '00:00:24', 562),
(1, 5, 4, 10, 4, '00:00:25', 750),
(1, 5, 4, 11, 4, '00:00:25', 437),
(1, 5, 4, 12, 4, '00:00:25', 437),
(1, 5, 4, 13, 4, '00:00:25', 0),
(1, 5, 4, 14, 4, '00:00:25', 937),
(1, 5, 4, 15, 4, '00:00:24', 250),
(1, 5, 4, 16, 4, '00:00:25', 62),
(1, 5, 4, 17, 4, '00:00:24', 875),
(1, 5, 4, 18, 4, '00:00:25', 562),
(1, 5, 4, 19, 4, '00:00:25', 625),
(1, 5, 4, 20, 4, '00:00:24', 312),
(1, 5, 4, 21, 4, '00:00:23', 937),
(1, 5, 4, 22, 4, '00:00:25', 62),
(1, 5, 4, 23, 4, '00:00:24', 437),
(1, 5, 4, 24, 4, '00:00:25', 750),
(1, 5, 4, 25, 4, '00:00:25', 875),
(1, 5, 4, 26, 4, '00:00:23', 875),
(1, 5, 4, 27, 4, '00:00:24', 687),
(1, 5, 4, 28, 4, '00:00:25', 250),
(1, 5, 4, 29, 4, '00:00:26', 62),
(1, 5, 4, 30, 4, '00:00:25', 500),
(1, 5, 4, 31, 4, '00:00:25', 500),
(1, 5, 4, 32, 4, '00:00:24', 562),
(1, 5, 4, 33, 4, '00:00:26', 125),
(1, 5, 4, 34, 4, '00:00:25', 500),
(1, 5, 4, 35, 4, '00:00:26', 0),
(1, 5, 4, 36, 4, '00:00:25', 187),
(1, 5, 4, 37, 4, '00:00:25', 500),
(1, 5, 4, 38, 4, '00:00:23', 500),
(1, 5, 4, 39, 4, '00:00:25', 187),
(1, 5, 4, 40, 4, '00:00:25', 125),
(1, 5, 4, 41, 4, '00:00:24', 687),
(1, 5, 4, 42, 4, '00:00:23', 812),
(1, 5, 4, 43, 4, '00:00:26', 62),
(1, 5, 4, 44, 4, '00:00:25', 875),
(1, 5, 4, 45, 4, '00:00:25', 62),
(1, 5, 4, 46, 4, '00:00:22', 875),
(1, 5, 4, 47, 4, '00:00:24', 562),
(1, 5, 4, 48, 4, '00:00:25', 625),
(1, 5, 4, 49, 4, '00:00:26', 250),
(1, 5, 4, 50, 4, '00:00:21', 875),
(1, 5, 4, 51, 4, '00:00:24', 0),
(1, 5, 4, 52, 4, '00:00:24', 625),
(1, 5, 4, 53, 4, '00:00:23', 812),
(1, 5, 4, 54, 4, '00:00:24', 187),
(1, 5, 4, 55, 4, '00:00:24', 125),
(1, 5, 4, 56, 4, '00:00:25', 125),
(1, 5, 4, 57, 4, '00:00:25', 312),
(1, 5, 4, 58, 4, '00:00:23', 687),
(1, 5, 4, 59, 4, '00:00:23', 812),
(1, 5, 4, 60, 4, '00:00:25', 625),
(1, 5, 4, 61, 4, '00:00:25', 187),
(1, 5, 4, 62, 4, '00:00:22', 562),
(1, 5, 4, 63, 4, '00:00:24', 562),
(1, 5, 4, 64, 4, '00:00:25', 937),
(1, 5, 4, 65, 4, '00:00:24', 812),
(1, 5, 4, 66, 4, '00:00:22', 937),
(1, 5, 4, 67, 4, '00:00:25', 62),
(1, 5, 4, 68, 4, '00:00:24', 62),
(1, 5, 4, 69, 4, '00:00:20', 625),
(1, 5, 4, 70, 4, '00:00:23', 187),
(1, 5, 4, 71, 4, '00:00:24', 125),
(1, 5, 4, 72, 4, '00:00:21', 679),
(1, 5, 5, 1, 3, '00:00:36', 875),
(1, 5, 5, 2, 3, '00:00:31', 222),
(1, 5, 6, 1, 1, '00:00:29', 62),
(1, 5, 6, 2, 2, '00:00:26', 312),
(1, 5, 6, 3, 4, '00:00:33', 250),
(1, 5, 6, 4, 4, '00:00:18', 7),
(1, 5, 7, 1, 1, '00:00:27', 250),
(1, 5, 7, 2, 2, '00:00:26', 187),
(1, 5, 7, 3, 4, '00:00:31', 875),
(1, 5, 7, 4, 4, '00:00:16', 942),
(1, 5, 8, 1, 4, '00:00:27', 312),
(1, 5, 8, 2, 4, '00:00:22', 250),
(1, 5, 8, 3, 4, '00:00:24', 500),
(1, 5, 8, 4, 4, '00:00:21', 487),
(1, 5, 9, 1, 1, '00:00:25', 312),
(1, 5, 9, 2, 1, '00:00:24', 427),
(1, 5, 10, 1, 1, '00:00:28', 437),
(1, 5, 10, 2, 1, '00:00:24', 861),
(1, 5, 11, 1, 4, '00:00:24', 687),
(1, 5, 11, 2, 4, '00:00:24', 750),
(1, 5, 11, 3, 4, '00:00:24', 562),
(1, 5, 11, 4, 4, '00:00:21', 613),
(1, 5, 12, 1, 4, '00:00:24', 0),
(1, 5, 12, 2, 4, '00:00:24', 937),
(1, 5, 12, 3, 4, '00:00:25', 812),
(1, 5, 12, 4, 4, '00:00:21', 548),
(1, 6, 1, 1, 4, '00:00:26', 687),
(1, 6, 1, 2, 4, '00:00:24', 875),
(1, 6, 1, 3, 4, '00:00:25', 375),
(1, 6, 1, 4, 4, '00:00:24', 62),
(1, 6, 1, 5, 4, '00:00:25', 937),
(1, 6, 1, 6, 4, '00:00:25', 750),
(1, 6, 1, 7, 4, '00:00:21', 187),
(1, 6, 1, 8, 4, '00:00:27', 312),
(1, 6, 1, 9, 4, '00:00:28', 625),
(1, 6, 1, 10, 4, '00:00:25', 687),
(1, 6, 1, 11, 4, '00:00:22', 500),
(1, 6, 1, 12, 4, '00:00:26', 687),
(1, 6, 1, 13, 4, '00:00:26', 875),
(1, 6, 1, 14, 4, '00:00:23', 312),
(1, 6, 1, 15, 4, '00:00:25', 437),
(1, 6, 1, 16, 4, '00:00:21', 335),
(1, 6, 2, 1, 4, '00:00:20', 0),
(1, 6, 2, 2, 4, '00:00:23', 687),
(1, 6, 2, 3, 4, '00:00:28', 312),
(1, 6, 2, 4, 4, '00:00:21', 570),
(1, 6, 3, 1, 10, '00:00:39', 398),
(1, 6, 3, 2, 10, '00:00:39', 398),
(1, 6, 3, 3, 10, '00:00:39', 398),
(1, 6, 3, 4, 10, '00:00:39', 399),
(1, 6, 4, 1, 10, '00:00:25', 353),
(1, 6, 4, 2, 10, '00:00:25', 353),
(1, 6, 4, 3, 10, '00:00:25', 353),
(1, 6, 4, 4, 10, '00:00:25', 355),
(1, 6, 5, 1, 10, '00:00:41', 446),
(1, 6, 5, 2, 10, '00:00:41', 446),
(1, 6, 5, 3, 10, '00:00:41', 446),
(1, 6, 5, 4, 10, '00:00:41', 448),
(1, 6, 6, 1, 10, '00:00:35', 298),
(1, 6, 6, 2, 10, '00:00:35', 298),
(1, 6, 6, 3, 10, '00:00:35', 298),
(1, 6, 6, 4, 10, '00:00:35', 298),
(1, 6, 6, 5, 10, '00:00:35', 298),
(1, 6, 6, 6, 10, '00:00:35', 298),
(1, 6, 6, 7, 10, '00:00:35', 298),
(1, 6, 6, 8, 10, '00:00:35', 303),
(1, 6, 7, 1, 2, '00:00:20', 0),
(1, 6, 7, 2, 2, '00:00:38', 0),
(1, 6, 7, 3, 2, '00:00:28', 750),
(1, 6, 7, 4, 2, '00:00:29', 312),
(1, 6, 7, 5, 2, '00:00:24', 937),
(1, 6, 7, 6, 2, '00:00:30', 62),
(1, 6, 7, 7, 2, '00:00:30', 250),
(1, 6, 7, 8, 2, '00:00:26', 75),
(1, 6, 8, 1, 1, '00:00:28', 375),
(1, 6, 8, 2, 4, '00:00:31', 875),
(1, 6, 8, 3, 2, '00:00:27', 375),
(1, 6, 8, 4, 2, '00:00:29', 625),
(1, 6, 8, 5, 3, '00:01:12', 500),
(1, 6, 8, 6, 4, '00:00:43', 547),
(1, 6, 9, 1, 4, '00:00:22', 562),
(1, 6, 9, 2, 4, '00:00:23', 750),
(1, 6, 9, 3, 4, '00:00:21', 437),
(1, 6, 9, 4, 4, '00:00:23', 687),
(1, 6, 9, 5, 4, '00:00:23', 62),
(1, 6, 9, 6, 4, '00:00:23', 375),
(1, 6, 9, 7, 4, '00:00:23', 62),
(1, 6, 9, 8, 4, '00:00:18', 960),
(1, 6, 10, 1, 3, '00:00:45', 687),
(1, 6, 10, 2, 3, '00:00:42', 287),
(1, 6, 11, 1, 2, '00:00:28', 250),
(1, 6, 11, 2, 2, '00:00:29', 437),
(1, 6, 11, 3, 2, '00:00:29', 187),
(1, 6, 11, 4, 2, '00:00:31', 589),
(1, 6, 12, 1, 4, '00:00:26', 125),
(1, 6, 12, 2, 4, '00:00:25', 687),
(1, 6, 12, 3, 4, '00:00:26', 250),
(1, 6, 12, 4, 4, '00:00:26', 437),
(1, 6, 12, 5, 4, '00:00:26', 750),
(1, 6, 12, 6, 4, '00:00:25', 937),
(1, 6, 12, 7, 4, '00:00:26', 687),
(1, 6, 12, 8, 4, '00:00:24', 500),
(1, 6, 12, 9, 4, '00:00:27', 125),
(1, 6, 12, 10, 4, '00:00:23', 500),
(1, 6, 12, 11, 4, '00:00:28', 375),
(1, 6, 12, 12, 4, '00:00:26', 625),
(1, 6, 12, 13, 4, '00:00:25', 937),
(1, 6, 12, 14, 4, '00:00:25', 625),
(1, 6, 12, 15, 4, '00:00:26', 500),
(1, 6, 12, 16, 4, '00:00:26', 875),
(1, 6, 12, 17, 4, '00:00:25', 0),
(1, 6, 12, 18, 4, '00:00:27', 250),
(1, 6, 12, 19, 4, '00:00:27', 187),
(1, 6, 12, 20, 4, '00:00:22', 757),
(1, 6, 13, 1, 3, '00:00:41', 437),
(1, 6, 13, 2, 3, '00:00:48', 875),
(1, 6, 13, 3, 3, '00:00:38', 875),
(1, 6, 13, 4, 3, '00:00:37', 217),
(1, 7, 1, 1, 10, '00:00:24', 849),
(1, 7, 1, 2, 10, '00:00:24', 849),
(1, 7, 1, 3, 10, '00:00:24', 849),
(1, 7, 1, 4, 10, '00:00:24', 849),
(1, 7, 1, 5, 10, '00:00:24', 849),
(1, 7, 1, 6, 10, '00:00:24', 849),
(1, 7, 1, 7, 10, '00:00:24', 849),
(1, 7, 1, 8, 10, '00:00:24', 849),
(1, 7, 1, 9, 10, '00:00:24', 849),
(1, 7, 1, 10, 10, '00:00:24', 849),
(1, 7, 1, 11, 10, '00:00:24', 849),
(1, 7, 1, 12, 10, '00:00:24', 849),
(1, 7, 1, 13, 10, '00:00:24', 849),
(1, 7, 1, 14, 10, '00:00:24', 849),
(1, 7, 1, 15, 10, '00:00:24', 849),
(1, 7, 1, 16, 10, '00:00:24', 859),
(1, 7, 2, 1, 4, '00:00:35', 312),
(1, 7, 2, 2, 4, '00:00:27', 500),
(1, 7, 2, 3, 3, '00:00:31', 812),
(1, 7, 2, 4, 3, '00:00:34', 562),
(1, 7, 2, 5, 3, '00:00:33', 0),
(1, 7, 2, 6, 3, '00:00:35', 812),
(1, 7, 2, 7, 4, '00:00:28', 187),
(1, 7, 2, 8, 4, '00:00:43', 209),
(1, 7, 3, 1, 2, '00:00:29', 250),
(1, 7, 3, 2, 2, '00:00:28', 62),
(1, 7, 3, 3, 2, '00:00:26', 125),
(1, 7, 3, 4, 2, '00:00:29', 125),
(1, 7, 3, 5, 2, '00:00:24', 625),
(1, 7, 3, 6, 2, '00:00:34', 687),
(1, 7, 3, 7, 2, '00:00:25', 375),
(1, 7, 3, 8, 2, '00:00:29', 398),
(1, 7, 4, 1, 4, '00:00:27', 312),
(1, 7, 4, 2, 4, '00:00:20', 375),
(1, 7, 4, 3, 4, '00:00:23', 437),
(1, 7, 4, 4, 4, '00:00:25', 625),
(1, 7, 4, 5, 4, '00:00:22', 375),
(1, 7, 4, 6, 4, '00:00:23', 250),
(1, 7, 4, 7, 4, '00:00:25', 750),
(1, 7, 4, 8, 4, '00:00:36', 240),
(1, 7, 5, 1, 1, '00:00:26', 375),
(1, 7, 5, 2, 1, '00:00:28', 937),
(1, 7, 5, 3, 2, '00:00:26', 687),
(1, 7, 5, 4, 2, '00:00:26', 312),
(1, 7, 5, 5, 3, '00:00:36', 375),
(1, 7, 5, 6, 3, '00:00:33', 812),
(1, 7, 5, 7, 4, '00:00:25', 625),
(1, 7, 5, 8, 4, '00:00:25', 625),
(1, 7, 6, 1, 10, '00:00:00', 479),
(1, 7, 6, 2, 10, '00:00:00', 479),
(1, 7, 6, 3, 10, '00:00:00', 479),
(1, 7, 6, 4, 10, '00:00:00', 479),
(1, 7, 6, 5, 10, '00:00:00', 479),
(1, 7, 6, 6, 10, '00:00:00', 479),
(1, 7, 7, 1, 2, '00:00:29', 62),
(1, 7, 7, 2, 2, '00:00:25', 687),
(1, 7, 7, 3, 2, '00:00:30', 375),
(1, 7, 7, 4, 2, '00:00:24', 875),
(1, 7, 7, 5, 2, '00:00:29', 562),
(1, 7, 7, 6, 2, '00:00:30', 687),
(1, 7, 7, 7, 2, '00:00:31', 375),
(1, 7, 7, 8, 2, '00:00:27', 564),
(1, 7, 8, 1, 4, '00:00:25', 0),
(1, 7, 8, 2, 4, '00:00:21', 187),
(1, 7, 8, 3, 4, '00:00:27', 375),
(1, 7, 8, 4, 4, '00:00:21', 646),
(1, 7, 9, 1, 3, '00:00:25', 812),
(1, 7, 9, 2, 3, '00:00:57', 750),
(1, 7, 9, 3, 4, '00:00:34', 62),
(1, 7, 9, 4, 4, '00:00:24', 83),
(1, 7, 10, 1, 2, '00:00:41', 500),
(1, 7, 10, 2, 3, '00:00:38', 670),
(1, 7, 11, 1, 4, '00:00:27', 500),
(1, 7, 11, 2, 4, '00:00:21', 247),
(1, 7, 12, 1, 1, '00:00:27', 875),
(1, 7, 12, 2, 1, '00:00:25', 750),
(1, 7, 12, 3, 2, '00:00:25', 187),
(1, 7, 12, 4, 2, '00:00:26', 875),
(1, 7, 12, 5, 3, '00:00:32', 750),
(1, 7, 12, 6, 3, '00:00:31', 125),
(1, 7, 12, 7, 4, '00:00:21', 687),
(1, 7, 12, 8, 4, '00:00:19', 627),
(1, 7, 13, 1, 3, '00:00:41', 312),
(1, 7, 13, 2, 3, '00:00:35', 147),
(1, 7, 14, 1, 4, '00:00:29', 62),
(1, 7, 14, 2, 4, '00:00:29', 937),
(1, 7, 14, 3, 4, '00:00:24', 875),
(1, 7, 14, 4, 4, '00:00:26', 297),
(1, 7, 15, 1, 10, '00:00:59', 616),
(1, 7, 15, 2, 10, '00:00:59', 616),
(1, 7, 16, 1, 1, '00:00:24', 875),
(1, 7, 16, 2, 1, '00:00:23', 870),
(1, 7, 17, 1, 4, '00:00:30', 312),
(1, 7, 17, 2, 4, '00:00:21', 811),
(1, 8, 1, 1, 4, '00:00:21', 937),
(1, 8, 1, 2, 4, '00:00:22', 125),
(1, 8, 1, 3, 4, '00:00:23', 687),
(1, 8, 1, 4, 4, '00:00:24', 312),
(1, 8, 1, 5, 4, '00:00:23', 312),
(1, 8, 1, 6, 4, '00:00:24', 687),
(1, 8, 1, 7, 4, '00:00:24', 500),
(1, 8, 1, 8, 4, '00:00:27', 875),
(1, 8, 1, 9, 4, '00:00:26', 562),
(1, 8, 1, 10, 4, '00:00:26', 62),
(1, 8, 1, 11, 4, '00:00:25', 125),
(1, 8, 1, 12, 4, '00:00:25', 875),
(1, 8, 1, 13, 4, '00:00:26', 562),
(1, 8, 1, 14, 4, '00:00:26', 125),
(1, 8, 1, 15, 4, '00:00:24', 937),
(1, 8, 1, 16, 4, '00:00:23', 110),
(1, 8, 2, 1, 3, '00:00:33', 312),
(1, 8, 2, 2, 3, '00:00:30', 375),
(1, 8, 2, 3, 3, '00:00:29', 559),
(1, 8, 2, 4, 3, '00:00:29', 559),
(1, 8, 3, 1, 10, '00:00:40', 653),
(1, 8, 3, 2, 10, '00:00:40', 653),
(1, 8, 3, 3, 10, '00:00:40', 653),
(1, 8, 3, 4, 10, '00:00:40', 653),
(1, 8, 3, 5, 10, '00:00:40', 653),
(1, 8, 3, 6, 10, '00:00:40', 653),
(1, 8, 3, 7, 10, '00:00:40', 653),
(1, 8, 3, 8, 10, '00:00:40', 656),
(1, 8, 4, 1, 4, '00:00:24', 0),
(1, 8, 4, 2, 4, '00:00:25', 437),
(1, 8, 4, 3, 4, '00:00:23', 312),
(1, 8, 4, 4, 4, '00:00:24', 437),
(1, 8, 4, 5, 4, '00:00:22', 500),
(1, 8, 4, 6, 4, '00:00:23', 312),
(1, 8, 4, 7, 4, '00:00:21', 625),
(1, 8, 4, 8, 4, '00:00:24', 0),
(1, 8, 5, 1, 4, '00:00:25', 187),
(1, 8, 5, 2, 4, '00:00:23', 437),
(1, 8, 5, 3, 4, '00:00:24', 250),
(1, 8, 5, 4, 4, '00:00:23', 187),
(1, 8, 5, 5, 4, '00:00:27', 312),
(1, 8, 5, 6, 4, '00:00:23', 0),
(1, 8, 5, 7, 4, '00:00:25', 750),
(1, 8, 5, 8, 4, '00:00:24', 187),
(1, 8, 5, 9, 4, '00:00:26', 500),
(1, 8, 5, 10, 4, '00:00:24', 875),
(1, 8, 5, 11, 4, '00:00:24', 250),
(1, 8, 5, 12, 4, '00:00:21', 620),
(1, 8, 6, 1, 4, '00:00:23', 750),
(1, 8, 6, 2, 4, '00:00:27', 437),
(1, 8, 6, 3, 4, '00:00:24', 0),
(1, 8, 6, 4, 4, '00:00:24', 625),
(1, 8, 6, 5, 4, '00:00:25', 500),
(1, 8, 6, 6, 4, '00:00:23', 625),
(1, 8, 6, 7, 4, '00:00:27', 625),
(1, 8, 6, 8, 4, '00:00:25', 750),
(1, 8, 6, 9, 4, '00:00:25', 812),
(1, 8, 6, 10, 4, '00:00:27', 0),
(1, 8, 6, 11, 4, '00:00:26', 187),
(1, 8, 6, 12, 4, '00:00:22', 475),
(1, 8, 7, 1, 3, '00:00:34', 375),
(1, 8, 7, 2, 3, '00:00:34', 875),
(1, 8, 7, 3, 4, '00:00:23', 406),
(1, 8, 7, 4, 4, '00:00:23', 406),
(1, 8, 7, 5, 13, '00:00:12', 225),
(1, 8, 8, 1, 2, '00:00:29', 437),
(1, 8, 8, 2, 2, '00:00:31', 543),
(1, 8, 9, 1, 10, '00:00:28', 452),
(1, 8, 9, 2, 10, '00:00:28', 452),
(1, 8, 9, 3, 10, '00:00:28', 452),
(1, 8, 9, 4, 10, '00:00:28', 452),
(1, 8, 9, 5, 10, '00:00:28', 452),
(1, 8, 9, 6, 10, '00:00:28', 452),
(1, 8, 9, 7, 10, '00:00:28', 452),
(1, 8, 9, 8, 10, '00:00:28', 453),
(1, 8, 10, 1, 1, '00:00:28', 0),
(1, 8, 10, 2, 1, '00:00:30', 187),
(1, 8, 10, 3, 2, '00:00:25', 250),
(1, 8, 10, 4, 2, '00:00:33', 937),
(1, 8, 10, 5, 3, '00:00:35', 312),
(1, 8, 10, 6, 3, '00:00:30', 625),
(1, 8, 10, 7, 4, '00:00:26', 437),
(1, 8, 10, 8, 4, '00:00:20', 546),
(1, 8, 11, 1, 4, '00:00:32', 812),
(1, 8, 11, 2, 4, '00:00:24', 500),
(1, 9, 1, 1, 4, '00:00:24', 687),
(1, 9, 1, 2, 4, '00:00:14', 875),
(1, 9, 1, 3, 4, '00:00:32', 436),
(1, 9, 1, 4, 4, '00:00:19', 875),
(1, 9, 1, 5, 4, '00:00:30', 250),
(1, 9, 1, 6, 4, '00:00:24', 937),
(1, 9, 1, 7, 4, '00:00:23', 375),
(1, 9, 1, 8, 4, '00:00:24', 687),
(1, 9, 1, 9, 4, '00:00:23', 125),
(1, 9, 1, 10, 4, '00:00:23', 250),
(1, 9, 1, 11, 4, '00:00:26', 500),
(1, 9, 1, 12, 4, '00:00:25', 750),
(1, 9, 1, 13, 4, '00:00:23', 62),
(1, 9, 1, 14, 4, '00:00:26', 875),
(1, 9, 1, 15, 4, '00:00:25', 250),
(1, 9, 1, 16, 4, '00:00:22', 851),
(1, 9, 2, 1, 13, '00:00:27', 0),
(1, 9, 2, 2, 3, '00:00:33', 875),
(1, 9, 2, 3, 4, '00:00:32', 0),
(1, 9, 2, 4, 3, '00:00:32', 0),
(1, 9, 2, 5, 3, '00:00:37', 125),
(1, 9, 2, 6, 4, '00:00:26', 187),
(1, 9, 2, 7, 3, '00:00:31', 125),
(1, 9, 2, 8, 3, '00:00:35', 625),
(1, 9, 2, 9, 3, '00:00:32', 457),
(1, 9, 3, 1, 2, '00:00:31', 312),
(1, 9, 3, 2, 2, '00:00:26', 812),
(1, 9, 3, 3, 2, '00:00:32', 624),
(1, 9, 3, 4, 2, '00:00:25', 937),
(1, 9, 3, 5, 2, '00:00:29', 875),
(1, 9, 3, 6, 2, '00:00:30', 250),
(1, 9, 3, 7, 2, '00:00:31', 437),
(1, 9, 3, 8, 2, '00:00:26', 338),
(1, 9, 4, 1, 2, '00:00:29', 812),
(1, 9, 4, 2, 2, '00:00:25', 500),
(1, 9, 4, 3, 2, '00:00:31', 562),
(1, 9, 4, 4, 2, '00:00:27', 250),
(1, 9, 4, 5, 2, '00:00:33', 62),
(1, 9, 4, 6, 2, '00:00:26', 312),
(1, 9, 4, 7, 2, '00:00:33', 875),
(1, 9, 4, 8, 2, '00:00:25', 999),
(1, 9, 5, 1, 4, '00:00:38', 180),
(1, 9, 5, 2, 4, '00:00:38', 180),
(1, 9, 6, 1, 4, '00:00:24', 687),
(1, 9, 6, 2, 4, '00:00:21', 937),
(1, 9, 6, 3, 4, '00:00:22', 312),
(1, 9, 6, 4, 4, '00:00:23', 937),
(1, 9, 6, 5, 4, '00:00:24', 0),
(1, 9, 6, 6, 4, '00:00:23', 187),
(1, 9, 6, 7, 4, '00:00:24', 875),
(1, 9, 6, 8, 4, '00:00:20', 868),
(1, 9, 7, 1, 4, '00:00:25', 625),
(1, 9, 7, 2, 4, '00:00:23', 0),
(1, 9, 7, 3, 4, '00:00:27', 500),
(1, 9, 7, 4, 4, '00:00:24', 125),
(1, 9, 7, 5, 4, '00:00:25', 62),
(1, 9, 7, 6, 4, '00:00:22', 500),
(1, 9, 7, 7, 4, '00:00:25', 812),
(1, 9, 7, 8, 4, '00:00:19', 286),
(1, 9, 8, 1, 3, '00:00:40', 562),
(1, 9, 8, 2, 3, '00:00:31', 878),
(1, 9, 9, 1, 1, '00:00:26', 312),
(1, 9, 9, 2, 1, '00:00:30', 0),
(1, 9, 9, 3, 2, '00:00:22', 312),
(1, 9, 9, 4, 2, '00:00:27', 250),
(1, 9, 9, 5, 3, '00:00:34', 0),
(1, 9, 9, 6, 3, '00:00:31', 500),
(1, 9, 9, 7, 4, '00:00:18', 687),
(1, 9, 9, 8, 4, '00:00:20', 115),
(1, 9, 10, 1, 3, '00:00:41', 625),
(1, 9, 10, 2, 3, '00:00:32', 570),
(1, 9, 11, 1, 4, '00:00:31', 125),
(1, 9, 11, 2, 4, '00:00:24', 937),
(1, 9, 11, 3, 4, '00:00:26', 562),
(1, 9, 11, 4, 4, '00:00:26', 375),
(1, 9, 11, 5, 4, '00:00:22', 812),
(1, 9, 11, 6, 4, '00:00:25', 312),
(1, 9, 11, 7, 4, '00:00:26', 437),
(1, 9, 11, 8, 4, '00:00:26', 500),
(1, 9, 11, 9, 4, '00:00:30', 0),
(1, 9, 11, 10, 4, '00:00:33', 437),
(1, 9, 11, 11, 4, '00:00:24', 875),
(1, 9, 11, 12, 4, '00:00:26', 250),
(1, 9, 11, 13, 4, '00:00:25', 437),
(1, 9, 11, 14, 4, '00:00:19', 312),
(1, 9, 11, 15, 4, '00:00:32', 311),
(1, 9, 11, 16, 4, '00:00:26', 562),
(1, 9, 11, 17, 4, '00:00:27', 937),
(1, 9, 11, 18, 4, '00:00:27', 125),
(1, 9, 11, 19, 4, '00:00:22', 625),
(1, 9, 11, 20, 4, '00:00:27', 125),
(1, 9, 11, 21, 4, '00:00:30', 687),
(1, 9, 11, 22, 4, '00:00:21', 137),
(1, 9, 12, 1, 3, '00:00:41', 187),
(1, 9, 12, 2, 3, '00:00:31', 503),
(1, 9, 13, 1, 4, '00:00:29', 937),
(1, 9, 13, 2, 4, '00:00:21', 625),
(1, 9, 13, 3, 4, '00:00:27', 937),
(1, 9, 13, 4, 4, '00:00:25', 968),
(1, 9, 14, 1, 3, '00:00:42', 437),
(1, 9, 14, 2, 3, '00:00:29', 702),
(1, 10, 1, 1, 4, '00:00:25', 437),
(1, 10, 1, 2, 4, '00:00:28', 437),
(1, 10, 1, 3, 4, '00:00:22', 62),
(1, 10, 1, 4, 4, '00:00:23', 812),
(1, 10, 1, 5, 4, '00:00:25', 687),
(1, 10, 1, 6, 4, '00:00:23', 375),
(1, 10, 1, 7, 4, '00:00:26', 562),
(1, 10, 1, 8, 4, '00:00:23', 0),
(1, 10, 1, 9, 4, '00:00:26', 437),
(1, 10, 1, 10, 4, '00:00:25', 250),
(1, 10, 1, 11, 4, '00:00:24', 875),
(1, 10, 1, 12, 4, '00:00:26', 125),
(1, 10, 1, 13, 4, '00:00:25', 312),
(1, 10, 1, 14, 4, '00:00:24', 687),
(1, 10, 1, 15, 4, '00:00:24', 562),
(1, 10, 1, 16, 4, '00:00:19', 759),
(1, 10, 2, 1, 3, '00:00:38', 375),
(1, 10, 2, 2, 3, '00:00:42', 750),
(1, 10, 2, 3, 3, '00:00:34', 937),
(1, 10, 2, 4, 3, '00:00:36', 170),
(1, 10, 3, 1, 10, '00:00:40', 910),
(1, 10, 3, 2, 10, '00:00:40', 910),
(1, 10, 3, 3, 10, '00:00:40', 910),
(1, 10, 3, 4, 10, '00:00:40', 910),
(1, 10, 3, 5, 10, '00:00:40', 910),
(1, 10, 3, 6, 10, '00:00:40', 910),
(1, 10, 3, 7, 10, '00:00:40', 910),
(1, 10, 3, 8, 10, '00:00:40', 915),
(1, 10, 4, 1, 4, '00:01:42', 62),
(1, 10, 4, 2, 4, '00:00:35', 106),
(1, 10, 5, 1, 1, '00:00:27', 750),
(1, 10, 5, 2, 1, '00:00:29', 937),
(1, 10, 5, 3, 4, '00:00:26', 562),
(1, 10, 5, 4, 3, '00:00:36', 875),
(1, 10, 5, 5, 1, '00:00:25', 125),
(1, 10, 5, 6, 1, '00:00:29', 500),
(1, 10, 5, 7, 4, '00:00:25', 375),
(1, 10, 5, 8, 3, '00:00:38', 437),
(1, 10, 5, 9, 1, '00:00:25', 500),
(1, 10, 5, 10, 1, '00:00:29', 750),
(1, 10, 5, 11, 4, '00:00:25', 562),
(1, 10, 5, 12, 3, '00:00:32', 812),
(1, 10, 5, 13, 1, '00:00:31', 375),
(1, 10, 5, 14, 1, '00:00:28', 375),
(1, 10, 5, 15, 4, '00:00:26', 375),
(1, 10, 5, 16, 3, '00:00:41', 562),
(1, 10, 5, 17, 1, '00:00:27', 719),
(1, 10, 5, 18, 1, '00:00:27', 719),
(1, 10, 5, 19, 4, '00:00:26', 125),
(1, 10, 5, 20, 3, '00:00:34', 458),
(1, 10, 6, 1, 3, '00:00:41', 687),
(1, 10, 6, 2, 3, '00:00:34', 312),
(1, 10, 6, 3, 3, '00:00:38', 125),
(1, 10, 6, 4, 4, '00:00:26', 154),
(1, 10, 7, 1, 4, '00:00:26', 250),
(1, 10, 7, 2, 4, '00:00:21', 687),
(1, 10, 7, 3, 4, '00:00:26', 625),
(1, 10, 7, 4, 4, '00:00:23', 500),
(1, 10, 7, 5, 4, '00:00:25', 437),
(1, 10, 7, 6, 4, '00:00:21', 62),
(1, 10, 7, 7, 4, '00:00:29', 812),
(1, 10, 7, 8, 4, '00:00:26', 875),
(1, 10, 7, 9, 4, '00:00:25', 562),
(1, 10, 7, 10, 4, '00:00:23', 187),
(1, 10, 7, 11, 4, '00:00:26', 0),
(1, 10, 7, 12, 4, '00:00:26', 500),
(1, 10, 7, 13, 4, '00:00:23', 812),
(1, 10, 7, 14, 4, '00:00:24', 250),
(1, 10, 7, 15, 4, '00:00:23', 687),
(1, 10, 7, 16, 4, '00:00:25', 312),
(1, 10, 7, 17, 4, '00:00:24', 938),
(1, 10, 7, 18, 4, '00:00:24', 938),
(1, 10, 7, 19, 4, '00:00:24', 250),
(1, 10, 7, 20, 4, '00:00:26', 62),
(1, 10, 7, 21, 4, '00:00:22', 750),
(1, 10, 7, 22, 4, '00:00:29', 500),
(1, 10, 7, 23, 4, '00:00:24', 375),
(1, 10, 7, 24, 4, '00:00:24', 562),
(1, 10, 7, 25, 4, '00:00:26', 0),
(1, 10, 7, 26, 4, '00:00:28', 312),
(1, 10, 7, 27, 4, '00:00:26', 875),
(1, 10, 7, 28, 4, '00:00:24', 437),
(1, 10, 7, 29, 4, '00:00:25', 875),
(1, 10, 7, 30, 4, '00:00:26', 812),
(1, 10, 7, 31, 4, '00:00:24', 750),
(1, 10, 7, 32, 4, '00:00:23', 812),
(1, 10, 7, 33, 4, '00:00:26', 750),
(1, 10, 7, 34, 4, '00:00:27', 312),
(1, 10, 7, 35, 4, '00:00:21', 937),
(1, 10, 7, 36, 4, '00:00:25', 937),
(1, 10, 7, 37, 4, '00:00:26', 750),
(1, 10, 7, 38, 4, '00:00:25', 687),
(1, 10, 7, 39, 4, '00:00:23', 125),
(1, 10, 7, 40, 4, '00:00:23', 625),
(1, 10, 7, 41, 4, '00:00:23', 437),
(1, 10, 7, 42, 4, '00:00:22', 272),
(1, 10, 8, 1, 3, '00:00:35', 875),
(1, 10, 8, 2, 3, '00:00:39', 500),
(1, 10, 8, 3, 4, '00:00:38', 937),
(1, 10, 8, 4, 4, '00:00:27', 396),
(1, 10, 9, 1, 1, '00:00:29', 62),
(1, 10, 9, 2, 1, '00:00:28', 687),
(1, 10, 9, 3, 1, '00:00:28', 62),
(1, 10, 9, 4, 1, '00:00:26', 882),
(1, 10, 10, 1, 3, '00:00:41', 187),
(1, 10, 10, 2, 3, '00:00:50', 697);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `lanes`
--
ALTER TABLE `lanes`
  ADD PRIMARY KEY (`USERID`,`Aktivitätsindex`,`Intervallindex`,`Bahnindex`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
