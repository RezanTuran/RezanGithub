-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 13 feb 2019 kl 17:05
-- Serverversion: 10.1.34-MariaDB
-- PHP-version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `webbshop`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`) VALUES
(1, 'Kök'),
(2, 'Sovrum'),
(3, 'Datorer'),
(4, 'Mobiltelefoner'),
(5, 'Tillbehör');

-- --------------------------------------------------------

--
-- Tabellstruktur `product`
--

CREATE TABLE `product` (
  `productId` mediumint(9) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `price` mediumint(9) NOT NULL,
  `category` varchar(30) NOT NULL,
  `productInfo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `product`
--

INSERT INTO `product` (`productId`, `productName`, `price`, `category`, `productInfo`) VALUES
(5, 'Dell', 7900, '3', 'Kraftfull företagsdator från Dell med snabb Intel i5-processor och Windows 10 Pro, allt paketerat i ett portabelt format med en 14-tums Full HD-skärm. Hög kvalitet med 3 års på platsen-garanti från Dell!\r\n\r\n- 14\" LED-skärm\r\n- Intel Core i5-processor\r\n- DualCore gör datorn snabbare\r\n- 8 GB DDR4-minne\r\n- Hårddisk på 500 GB\r\n- Intel HD-grafik\r\n- Med stöd för USB 3.0\r\n- Windows 10 Pro\r\n'),
(6, 'Hp', 3900, '3', 'Begagnad! Mycket portabel företagsdator med stor kraft i litet paket. Utrustad med Intel i3-processor, praktiskt bakgrundbelyst tangentbord och har Windows 10 som operativsystem. Passar lika bra till plugget som hemma eller på jobbet!\r\n\r\n- 11.6\" LED-skärm\r\n- Intel Core i3-processor\r\n- DualCore gör datorn snabbare\r\n- 4 GB RAM-minne\r\n- Hårddisk på 320 GB\r\n- Intel HD-grafik\r\n- Med stöd för USB 3.0\r\n- Bakgrundsbelyst tangentbord\r\n- Windows 10'),
(7, 'Iphone 7 Plus', 6800, '4', '5,5-tums Retina HD-skärm\r\nStår emot vatten och damm\r\nDubbel 12 MP-kamera med video i 4K\r\nTouch ID\r\nA10 Fusion-chip'),
(8, 'Mouse', 299, '5', ' Smidigt stopp, jämn rullning och exakt rörelse på skärmen.\r\n• Personligt anpassningsbar¹ – tre programmerbara knappar hjälper dig att få mer gjort snabbt och intuitivt\r\n• Fler möjligheter att göra flera saker samtidigt – växla mellan upp till tre datorer\r\n• Konstruerad för komfort och användning många timmar i sträck med genomtänkta ergonomiska detaljer\r\n• Stöd för både Bluetooth-anslutning och trådbunden USB-anslutning\r\n\r\n');

-- --------------------------------------------------------

--
-- Tabellstruktur `productuser`
--

CREATE TABLE `productuser` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `amount` tinyint(4) NOT NULL,
  `orderDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `productuser`
--

INSERT INTO `productuser` (`orderId`, `userId`, `productId`, `amount`, `orderDate`) VALUES
(1, 16, 3, 4, '2018-11-27 19:53:02'),
(2, 17, 3, 2, '2018-12-12 21:17:53'),
(3, 17, 3, 2, '2018-12-12 21:23:14'),
(4, 17, 3, 2, '2018-12-12 21:25:52'),
(5, 17, 3, 2, '2018-12-12 21:26:35'),
(6, 17, 3, 2, '2018-12-12 21:27:07'),
(7, 17, 3, 2, '2018-12-12 21:33:35'),
(8, 17, 3, 2, '2018-12-12 21:33:39'),
(9, 17, 3, 2, '2018-12-12 21:34:08'),
(10, 17, 3, 2, '2018-12-12 21:34:44'),
(11, 17, 3, 2, '2018-12-13 10:04:53'),
(12, 17, 3, 2, '2018-12-13 10:07:55'),
(13, 17, 3, 2, '2018-12-13 10:51:44'),
(14, 17, 3, 2, '2018-12-13 10:52:46');

-- --------------------------------------------------------

--
-- Tabellstruktur `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(40) NOT NULL,
  `surName` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `user`
--

INSERT INTO `user` (`userId`, `firstName`, `surName`, `email`, `pass`) VALUES
(87, 'Rezan', 'Turan', 'rezanturan@gmail.com', 'a153d26d695487774e5a8258d1a11003'),
(102, 'Turan', 'Rezan', 'mainboard-@hotmail.com', 'a153d26d695487774e5a8258d1a11003'),
(103, 'dsgsdg', 'sdfds', 'hhh@gmail.com', 'a153d26d695487774e5a8258d1a11003');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Index för tabell `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Index för tabell `productuser`
--
ALTER TABLE `productuser`
  ADD PRIMARY KEY (`orderId`);

--
-- Index för tabell `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `product`
--
ALTER TABLE `product`
  MODIFY `productId` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT för tabell `productuser`
--
ALTER TABLE `productuser`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT för tabell `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
