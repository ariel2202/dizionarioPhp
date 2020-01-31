-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 30, 2020 alle 22:50
-- Versione del server: 10.4.8-MariaDB
-- Versione PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dizionario`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `parola`
--

CREATE TABLE `parola` (
  `pChiave` varchar(20) NOT NULL,
  `sinonimo` varchar(20) NOT NULL,
  `contrario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parola`
--

INSERT INTO `parola` (`pChiave`, `sinonimo`, `contrario`) VALUES
('abbondante', 'copioso', 'scarso'),
('alto', 'alzato', 'basso'),
('babbeo', 'sciocco', 'furbo'),
('bello', 'splendido', 'brutto'),
('bravo', 'abile', 'incapace'),
('brutto', 'orribile', 'bello'),
('cafone', 'maleducato', 'signore'),
('felice', 'contento', 'triste'),
('intelligente', 'pensante', 'stupido'),
('ladro', 'furfante', 'onesto'),
('lento', 'calmo', 'veloce'),
('ubbidiente', 'disciplinato', 'disubbidiente'),
('vacuo', 'povero', 'ricco');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `parola`
--
ALTER TABLE `parola`
  ADD PRIMARY KEY (`pChiave`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
