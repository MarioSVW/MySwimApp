-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Mai 2019 um 22:49
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
-- Tabellenstruktur für Tabelle `swimstyle`
--

CREATE TABLE `swimstyle` (
  `Swimid` int(11) NOT NULL,
  `Swim_Description` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `swimstyle`
--

INSERT INTO `swimstyle` (`Swimid`, `Swim_Description`) VALUES
(1, 'BUTTERFLY'),
(2, 'BACKSTROKE'),
(3, 'BREASTSTROKE'),
(4, 'FREESTYLE'),
(5, 'MIXED'),
(6, 'LAGEN'),
(7, 'FREESTYLE_LEGS'),
(8, 'FREESTYLE_ARMS'),
(9, 'FREESTYLE_ARMS_PADDLE'),
(10, 'DRILL'),
(11, 'PYRAMIDE'),
(12, 'KOMBI'),
(13, '--');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `swimstyle`
--
ALTER TABLE `swimstyle`
  ADD PRIMARY KEY (`Swimid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
