-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Maj 2020, 07:08
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `logowanie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `loginy`
--

CREATE TABLE `loginy` (
  `id` int(11) NOT NULL,
  `login` varchar(25) COLLATE utf8_bin NOT NULL,
  `pass` varchar(15) COLLATE utf8_bin NOT NULL,
  `nick` varchar(15) COLLATE utf8_bin NOT NULL,
  `imie` varchar(20) COLLATE utf8_bin NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_bin NOT NULL,
  `id_ranga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `loginy`
--

INSERT INTO `loginy` (`id`, `login`, `pass`, `nick`, `imie`, `nazwisko`, `id_ranga`) VALUES
(1, 'adam', 'adam01', 'wiariat88', 'Jan', 'Adminski', 2),
(2, 'admin', 'admin', 'superAdmin', 'Robert', 'Krajewski', 1),
(3, 'j5678ausz', 'j567ausz', 'Jany2020', 'Janusz', 'Mirecki', 3),
(4, 'annn90', 'annn90', 'anuszka88', 'Anna', 'Powińska', 4),
(5, 'mich90', 'mich90', 'wielkimichu', 'Ewa', 'Nowak', 4),
(6, 'janka2000', 'admin', 'Ja2020', 'Mirosław', 'Kiler', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `punkty`
--

CREATE TABLE `punkty` (
  `id` int(11) NOT NULL,
  `id_login` int(11) NOT NULL,
  `punkty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `punkty`
--

INSERT INTO `punkty` (`id`, `id_login`, `punkty`) VALUES
(1, 4, 20),
(2, 5, 100),
(3, 6, 55);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ranga`
--

CREATE TABLE `ranga` (
  `id` int(11) NOT NULL,
  `ranga` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `ranga`
--

INSERT INTO `ranga` (`id`, `ranga`) VALUES
(1, 'SuperAdmin'),
(2, 'Admin'),
(3, 'Manger'),
(4, 'User1');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `loginy`
--
ALTER TABLE `loginy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `punkty`
--
ALTER TABLE `punkty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ranga`
--
ALTER TABLE `ranga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `loginy`
--
ALTER TABLE `loginy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `punkty`
--
ALTER TABLE `punkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `ranga`
--
ALTER TABLE `ranga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
