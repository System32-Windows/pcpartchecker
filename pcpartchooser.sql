-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 15, 2026 at 03:17 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcpartchooser`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cpu`
--

CREATE TABLE `cpu` (
  `lp` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `disp` tinytext NOT NULL,
  `power` tinyint(4) NOT NULL,
  `url` text NOT NULL,
  `socket` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`lp`, `name`, `disp`, `power`, `url`, `socket`) VALUES
(1, 'r55500', 'AMD Ryzen 5 5500', 4, 'https://www.mediaexpert.pl/komputery-i-tablety/podzespoly-komputerowe/procesory/procesor-amd-ryzen-5-5500', 'am4'),
(2, 'r77800x3d', 'AMD Ryzen 7 7800X3D', 9, 'https://www.mediaexpert.pl/komputery-i-tablety/podzespoly-komputerowe/procesory/procesor-amd-ryzen-7-7800x3d', 'am5'),
(3, 'i514600kf', 'Intel Core i5-14600KF', 5, 'https://www.mediaexpert.pl/komputery-i-tablety/podzespoly-komputerowe/procesory/procesor-intel-core-i5-14600kf', '1700');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gpu`
--

CREATE TABLE `gpu` (
  `lp` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `disp` tinytext NOT NULL,
  `power` tinyint(4) NOT NULL,
  `url` text NOT NULL,
  `factor` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpu`
--

INSERT INTO `gpu` (`lp`, `name`, `disp`, `power`, `url`, `factor`) VALUES
(1, 'rx7800xt', 'AMD RX 7800 XT 16GB', 8, 'https://www.mediaexpert.pl/komputery-i-tablety/podzespoly-komputerowe/karty-graficzne/karta-graficzna-powercolor-radeon-rx-7800-xt-16gb', 'atx'),
(2, 'rx5600xt', 'AMD RX 5600 XT 6GB', 4, 'https://www.mediaexpert.pl/komputery-i-tablety/podzespoly-komputerowe/karty-graficzne/powercolor-axrx-5600xt-6gbd6-3dhe-oc-radeon-rx-5600xt-red-devil-6gb-gddr6-hdmi-3xdp-axrx-5600xt-6gbd6-3dhe', 'microatx'),
(3, 'rtx3070', 'NVIDIA RTX 3070', 6, 'https://www.mediaexpert.pl/komputery-i-tablety/podzespoly-komputerowe/karty-graficzne/karta-graficzna-msi-geforce-rtx-3070-gaming-x-trio', 'microatx'),
(4, 'rtx5090', 'NVIDIA RTX 5090', 10, 'https://www.mediaexpert.pl/komputery-i-tablety/podzespoly-komputerowe/karty-graficzne/karta-graficzna-palit-geforce-rtx-5090-gamerock-32gb-dlss-4', 'atx'),
(5, 'arcb580', 'Intel ARC B580', 5, 'https://www.mediaexpert.pl/komputery-i-tablety/podzespoly-komputerowe/karty-graficzne/karta-graficzna-asrock-intel-arc-b580-challenger-oc-12gb', 'microatx');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`lp`);

--
-- Indeksy dla tabeli `gpu`
--
ALTER TABLE `gpu`
  ADD PRIMARY KEY (`lp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `lp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gpu`
--
ALTER TABLE `gpu`
  MODIFY `lp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
