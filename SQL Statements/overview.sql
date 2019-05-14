-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 14. Mai 2019 um 22:44
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
-- Tabellenstruktur für Tabelle `overview`
--

CREATE TABLE `overview` (
  `USERID` int(11) NOT NULL,
  `Activity_ID` int(11) NOT NULL,
  `Bezeichnung` varchar(50) NOT NULL,
  `Aufgenommen_am` date NOT NULL,
  `Distanz` int(11) NOT NULL,
  `Gesamtzeit` time NOT NULL,
  `Time_milliSeconds` int(11) NOT NULL,
  `AnzahlBahnen` int(11) NOT NULL,
  `Bahnenlänge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `overview`
--

INSERT INTO `overview` (`USERID`, `Activity_ID`, `Bezeichnung`, `Aufgenommen_am`, `Distanz`, `Gesamtzeit`, `Time_milliSeconds`, `AnzahlBahnen`, `Bahnenlänge`) VALUES
(1, 1, 'PyramidenSchwimmen', '2019-01-30', 3500, '01:22:34', 89, 140, 25),
(1, 2, 'GemischtesTraining', '2019-01-16', 2825, '01:07:48', 655, 114, 25),
(1, 3, 'KraulUebungen', '2019-01-18', 2500, '01:02:44', 178, 100, 25),
(1, 4, 'Diverse200mIntervalle', '2019-02-08', 2600, '01:03:09', 366, 104, 25),
(1, 5, '30mAusdauertest', '2019-02-10', 3000, '00:58:22', 618, 120, 25),
(1, 6, 'Verschiedene200m', '2019-02-17', 2300, '00:52:11', 578, 92, 25),
(1, 7, 'Lockere200mDistanzen', '2019-03-15', 2400, '00:52:22', 917, 94, 25),
(1, 8, '200-300-300MeterDistanzen', '2019-05-03', 2100, '00:50:53', 947, 85, 25),
(1, 9, '200mDistanzen', '2019-05-05', 2500, '00:57:27', 823, 101, 25),
(1, 10, '1000mundSchmetterling', '2019-05-10', 2650, '00:56:07', 131, 106, 25);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `overview`
--
ALTER TABLE `overview`
  ADD PRIMARY KEY (`USERID`,`Activity_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
