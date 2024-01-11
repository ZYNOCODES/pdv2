-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 03:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdvdb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cadeaux`
--

CREATE TABLE `cadeaux` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cadeaux`
--

INSERT INTO `cadeaux` (`id`, `title`, `photo`, `points`) VALUES
(2, 'Television 32 pouce', '/uploads/1670509263352--design-small.jpg', 60),
(3, 'Laptop', '/uploads/1670509277379--laptop-under-500-2048px-acer-1.jpg', 100),
(4, 'Omra (deux personnes)', '/uploads/1670509284545--344e131d6c359ad1fcbd876b33956362_M.jpg', 200),
(5, 'Moto', '/uploads/1670509495553--IC5YUWU7NFH5ZGZY7X2YTLN2WA.jpg', 500);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `phone`, `address`) VALUES
(1, 'LAZHARI', 'ZAKARIA', '0659432010', 'Cite 1680'),
(5, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 5200'),
(6, 'BOUROUBA', 'ILYES', '0659432010', 'Cite 1600'),
(7, 'BOUROUBA', 'ILYES', '0659432010', 'Cite 1600'),
(8, 'BOUROUBA', 'ILYES', '0659432010', 'Cite 1600'),
(9, 'BOUROUBA', 'ILYES', '0659432010', 'Cite 1600'),
(10, 'BOUROUBA', 'ILYES', '0659432010', 'Cite 1600'),
(11, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(12, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(13, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(14, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(15, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(16, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(17, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(18, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(19, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(20, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(21, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(22, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(23, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(24, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(25, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(26, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(27, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(28, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(29, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(30, 'BOUROUBA', 'ILYES', '0550365258', 'Cite 1680'),
(31, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(32, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(33, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(34, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(35, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(36, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(37, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(38, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(39, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(40, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(41, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(42, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(43, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(44, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(45, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(46, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(47, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(48, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(49, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(50, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(51, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(52, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(53, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(54, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(55, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(56, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(57, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(58, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(59, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(60, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(61, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(62, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(63, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(64, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(65, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(66, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(67, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(68, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(69, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(70, 'test', 'test', 'Empty', 'Empty'),
(71, 'test', 'test', 'Empty', 'Empty'),
(72, 'testo', 'test', 'Empty', 'Empty'),
(73, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(74, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(75, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(76, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(77, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(78, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(79, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(80, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(81, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(82, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(83, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(84, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(85, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(86, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(87, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(88, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(89, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(90, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(91, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(92, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(93, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(94, 'nom client1', 'prenom client2', '0560586963', 'adr'),
(102, 'abdallah', 'dekkiche', NULL, NULL),
(103, 'zino', 'boumrar', NULL, NULL),
(104, 'zino', 'boumrar', NULL, NULL),
(105, 'zino2', 'boumrar', NULL, NULL),
(106, 'zino3', 'boumrar', NULL, NULL),
(107, 'zino3', 'boumrar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `number` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `Pdv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`id`, `number`, `date`, `status_id`, `Pdv_id`) VALUES
(47, '891718', '2022-12-13', 1, 1),
(48, '943137', '2022-12-13', 1, 1),
(49, '945817', '2022-12-13', 1, 1),
(50, '544897', '2022-12-13', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `commandestatus`
--

CREATE TABLE `commandestatus` (
  `id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `commandestatus`
--

INSERT INTO `commandestatus` (`id`, `status`) VALUES
(1, 'En attente'),
(2, 'En traitement'),
(3, 'En préparation'),
(4, 'Prêt à livrer'),
(5, 'En cours de livraison'),
(6, 'livré'),
(7, 'reçu'),
(8, 'Refusé'),
(9, 'Annulé');

-- --------------------------------------------------------

--
-- Table structure for table `commande_has_product`
--

CREATE TABLE `commande_has_product` (
  `commande_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gain`
--

CREATE TABLE `gain` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `previous_points` int(11) DEFAULT NULL,
  `current_points` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `validation_date` date DEFAULT NULL,
  `pdv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gain`
--

INSERT INTO `gain` (`id`, `title`, `points`, `previous_points`, `current_points`, `status`, `date`, `validation_date`, `pdv_id`) VALUES
(1, 'Moto', 500, NULL, NULL, 'Commandé', '2024-01-09', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pdv`
--

CREATE TABLE `pdv` (
  `id` int(11) NOT NULL,
  `pdvname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contactname` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `commune` varchar(100) DEFAULT NULL,
  `Daira` varchar(100) DEFAULT NULL,
  `wilaya` varchar(100) DEFAULT NULL,
  `points` int(11) DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `rc` varchar(255) DEFAULT NULL,
  `pdvstatus_id` int(11) NOT NULL,
  `pdvgrade_id` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `registre_commerce` varchar(500) NOT NULL,
  `region` varchar(50) NOT NULL DEFAULT '',
  `date_naissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pdv`
--

INSERT INTO `pdv` (`id`, `pdvname`, `address`, `contactname`, `phone`, `location`, `commune`, `Daira`, `wilaya`, `points`, `password`, `rc`, `pdvstatus_id`, `pdvgrade_id`, `user_id`, `registre_commerce`, `region`, `date_naissance`) VALUES
(1, 'Badi phone fff', 'Cite 580 logement', 'didou djamel', '0666666666', 'www.streamsystem.com', 'Ouled Chebel', 'Birtouta', 'Alger', 100, '$2b$10$5Jd34Q0aWtlOxBBloi4E0OWCbmILp9gFMncGnLFx/YkiqklgMzhQC', NULL, 1, 1, 2, '', 'centre', NULL),
(2, 'amine', 'Cite 420', 'BOUKHALFA AMINE', '0556369874', 'https://www.google.com/', 'Souhane', 'Larbaa', 'Blida', 100, '$2b$10$1qZRZmc8ms1yWuSEf.LD1eL9wOMrFM6N4HFLqNc/HtQUVXo2AeDQi', NULL, 2, 1, 1, '', 'est', NULL),
(3, 'toufik', 'Cite 1840', 'MAAMRI FOUAD', '0770124578', 'https://www.google.com/', 'Sidi Moussa', 'Baraki', 'Alger', 100, '$2b$10$463lK30yDHkmD6mPrS.jueGTZnQszTxyD8XFiYszhuy7VZWfIJH9m', NULL, 3, 1, 1, '', 'centre', NULL),
(4, 'walid', 'tests', 'walid walid', '1234567', 'tests', 'Ain Benian', 'Cheraga', 'Alger', 100, '$2b$10$5voMOr0z2RWbDb2dfORBYOuejsRo58ZKD3B/1fsJML88TlNSqVC12', 'test', 2, 1, 2, '', '', NULL),
(5, 'pdv0', 'adre', 'pdv 0 ventes', '0212387741', 'www.streamsystem.com', 'Tessala El Merdja', 'Birtouta', 'Alger', 10, '$2b$10$Xvp8FPe3ECf0OSEEFHBhZeXv/Xw8gaz4ZoJOsVNxW3/6vD6Hoh4U.', NULL, 2, 1, 1, '', 'ouest', NULL),
(6, 'pdvb', 'ad', 'pdvb', '0560586963', 'www.streamsystem.com', 'Boufarik', 'Boufarik', 'Blida', 0, '$2b$10$Gfdpb8WzeuzD5EddXbGQcOj4hUSlK8XyYmogGChtP3f5nhQbRlpny', NULL, 2, 1, 1, '', 'centre', NULL),
(7, 'pdv_annulé', 'address', 'pdv annulé', '0560586963', 'www.streamsystem.com', 'Sebt', 'Meghila', 'Tiaret', 0, '$2b$10$2H3Kegt7kELnsPpWiOcSeuoJlGe/7pXulFVJI5lOCmbuQCV6CVW5W', NULL, 3, 1, 1, '', 'ouest', NULL),
(8, 'haddapdvpdv', 'exemple', 'exemple exemple', '0560586963', 'www.streamsystem.com', 'Abelsa', 'Silet', 'Tamanrasset', 0, '$2b$10$.loh2gXQWJu64kNYmA5gIeV5hV2JlwPthTdRU3gWzj3/AzU2LsUz2', 'exemple', 2, 1, 1, '/uploads/1704635598652--rc.jpg', '', NULL),
(9, 'haddapdvpdvi', 'exemple', 'exemple exemple', '0212387741', 'www.streamsystem.com', 'El Milia', 'El Milia', 'Jijel', 0, '$2b$10$d7hAfhnODw2okRCQQPqfiuB2O/xuO6wZCsuZMi3ZRRIt6.XApH.LC', 'exemple', 1, 1, 1, '/uploads/1704724665862--rc.jpg', 'est', '2024-01-11'),
(10, 'haddapdvpdvi1', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, 'Oran', 0, '$2b$10$Ze57RBcVBOcAFBYCCg0ioeJg2W78HrPKL5vSRPGDvc5m9sjyuRzvC', 'exemple', 1, 1, 1, '/uploads/1703085085378--streamtv.jpg', 'ouest', NULL),
(11, 'haddapdvpdvi11', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, 'Tlemcen', 0, '$2b$10$NYyBiOQGzF3f.vpa8D.Yu.oEK.bMKVN4D.739VJTd0C.A4dEQ8rqu', 'exemple', 1, 1, 1, '', 'ouest', NULL),
(12, 'pdv', 'adrr', 'fskfdgsdkfg', '0560586963', 'www.streamsystem.com', 'Sidi Abdelli', 'Bensekrane', 'Tlemcen', 0, '$2b$10$MygCGV0.U9Pj.3Spi8lYZeR50ZKs9dkHqsMihmB1mKZaW4eBnJZkm', NULL, 1, 1, 3, '', 'ouest', NULL),
(13, 'haddapdvpdvi112', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$8uTwOuGCwr0Xjxv4HxhURO45VJZGPu2kbXs9kFSfTWw5VU.Jhy2da', 'exemple', 1, 1, 1, '', '', NULL),
(14, 'haddapdv112', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$ymYXsytVx4s8cBnA1buHRuDIKM4VZ80xYZZhe96CGPRwyEa.knPb6', 'exemple', 1, 1, 1, '', '', NULL),
(15, 'haddapdv1', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$vYS7x9xYbSI3lglDqSWjxeTA9r8qtShPvh3aYkX2gez15a06byafW', 'exemple', 1, 1, 1, '', '', NULL),
(16, 'haddapdv2', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$OmvLS.LjEq31GybQ7.OubOk9TCI8WP8IJrly3sfeisT/nW31Y5Q3S', 'exemple', 1, 1, 1, '', '', NULL),
(17, 'haddapdv3', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$NAxrNmw0vf3/YaDA5NR5GemIASbi32iVTkkoS9BqHloMrWly70kfq', 'exemple', 1, 1, 1, '', 'centre', NULL),
(18, 'haddapdv4', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$yTsnh4Fi8Da70vciopo9XO5q3krGJawxylw9HAYs71GBf8ZRh85cO', 'exemple', 1, 1, 1, '', 'centre', NULL),
(19, 'haddapdv5', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$VNTxt75u4xCU7Me9t/gF8.hFw2TM58dkkgKzicj.K3pGoOwvWadQO', 'exemple', 1, 1, 1, '', 'est', NULL),
(20, 'pdvdash', 'dqhsdgjsqdghshdg', 'pdvdash', '0212387741', 'www.streamsystem.com', 'Ouled Riyah', 'Hennaya', 'Tlemcen', 0, '$2b$10$OyMtOav273SuUcmmyw3BduwdoGtmTHMUs5350Ang2KmhkjyLC61QG', NULL, 2, 1, 1, '/uploads/1703512591289--red-1902863_640.png', 'ouest', NULL),
(21, 'haddapdv6', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$62wYxDLDEZN2K9nzH2QqMuvAPXOdFBSQF7Kx8/NkrZLBHwcVONtH2', 'exemple', 1, 1, 1, '', 'centre', NULL),
(22, 'haddapdv7', 'exemple', 'exemple exemple', 'exemple', 'exemple', NULL, NULL, NULL, 0, '$2b$10$j2dlIU7nSo1Msjx41HTBcedwCP4/av7oL1.cFSkQlC1icLcFGkxeW', 'exemple', 2, 1, 1, '/uploads/1704026259356--streamtv.jpg', 'centre', NULL),
(23, 'haddapdvpdv', 'exemple', 'exemple exemple', '0560586963', 'www.streamsystem.com', 'Zenata', 'Hennaya', 'Tlemcen', 0, '$2b$10$5A8iQyKQ.S91/oksFZUVReps3HSd/jcSS2XI0ruwdn.JmOcH.NguG', NULL, 1, 1, 1, '', 'ouest', NULL),
(24, 'doudipdv', 'adr', 'pdv hjdsgdjgjsdgh', '0212387741', 'www.streamsystem.com', 'Taghit', 'Taghit', 'Béchar', 0, '$2b$10$gtMuANkJIWVcSBh8QRwr8u7cOI2B7u4bLE.vCqHWAw2t3TYKB6eni', NULL, 1, 1, 3, '', '', '1986-11-19'),
(29, 'zino2', 'Address', 'Contactname', '0778909854', NULL, NULL, NULL, 'alger', 0, '$2b$10$Xw3BC64hYOH8kQE3rEvQdeJiD4bGAplhcZZxhqD1FrkDSUdUU9fWO', NULL, 1, 1, 1, '1232646541.jpeg', 'region', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pdvgrade`
--

CREATE TABLE `pdvgrade` (
  `id` int(11) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pdvgrade`
--

INSERT INTO `pdvgrade` (`id`, `grade`) VALUES
(1, 'IRON'),
(2, 'BRONZE'),
(3, 'SILVER'),
(4, 'GOLD'),
(5, 'PLATINUM'),
(6, 'DIAMOND'),
(7, 'IMMOTAL');

-- --------------------------------------------------------

--
-- Table structure for table `pdvstatus`
--

CREATE TABLE `pdvstatus` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pdvstatus`
--

INSERT INTO `pdvstatus` (`id`, `status`) VALUES
(1, 'En attente'),
(2, 'Confirmé'),
(3, 'Annulé');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `size` float DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `is_new` varchar(100) DEFAULT NULL,
  `is_available` varchar(100) DEFAULT NULL,
  `is_bestselling` varchar(100) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `rom` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `hdmi` int(11) DEFAULT NULL,
  `usb` int(11) DEFAULT NULL,
  `vga` int(11) DEFAULT NULL,
  `dimensions` varchar(100) DEFAULT NULL,
  `wifi` varchar(100) DEFAULT NULL,
  `bluetooth` varchar(100) DEFAULT NULL,
  `earphone` varchar(100) DEFAULT NULL,
  `ethernet` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `oldprice` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `techsheet` varchar(255) DEFAULT NULL,
  `productimg` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `resolution` int(11) NOT NULL,
  `taille` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `model`, `size`, `os`, `price`, `points`, `is_new`, `is_available`, `is_bestselling`, `ram`, `rom`, `weight`, `hdmi`, `usb`, `vga`, `dimensions`, `wifi`, `bluetooth`, `earphone`, `ethernet`, `description`, `oldprice`, `rating`, `techsheet`, `productimg`, `banner`, `category_id`, `resolution`, `taille`) VALUES
(1, 'model', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `categoryimg` varchar(255) DEFAULT NULL,
  `abrv` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`id`, `category`, `categoryimg`, `abrv`) VALUES
(1, 'category', 'categoryimg.jpeg', 'ab');

-- --------------------------------------------------------

--
-- Table structure for table `resolutionproduct`
--

CREATE TABLE `resolutionproduct` (
  `id` int(11) NOT NULL,
  `resultion` varchar(50) NOT NULL,
  `abrv` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `resolutionproduct`
--

INSERT INTO `resolutionproduct` (`id`, `resultion`, `abrv`) VALUES
(1, 'resultion', 'abr');

-- --------------------------------------------------------

--
-- Table structure for table `serial_number`
--

CREATE TABLE `serial_number` (
  `id` int(11) NOT NULL,
  `serial_number` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'disponible'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `serial_number`
--

INSERT INTO `serial_number` (`id`, `serial_number`, `product_id`, `status`) VALUES
(1, '1234567890', 1, 'disponible');

-- --------------------------------------------------------

--
-- Table structure for table `sizeproduct`
--

CREATE TABLE `sizeproduct` (
  `id` int(11) NOT NULL,
  `size` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sizeproduct`
--

INSERT INTO `sizeproduct` (`id`, `size`) VALUES
(1, '10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `phone`, `email`, `password`, `usertype_id`) VALUES
(1, 'superuser', 'ILYES', '0550124578', 'ilyes@gmail.com', '$2b$08$A2v3gf27irz8JWZsvUj9U.e77jU/vLnzE6ZRDAi19PJ1i8xDIIgFq', 1),
(2, 'MOSBAH', 'RAMZI', '0660124578', 'zamzi@gmail.com', '$2b$08$CDTsFGsIcjGL7STiob08ReGFgmae0lvFNgxM30J1F9XaZHaFYhw4.', 2),
(3, 'userpdv1', 'pdvuser', '0560586963', 'email@gmail.com', '$2b$08$qRIQXU10mNm2AwU/fgHxK.R0Y/Ysa.7/FWMh5/rEENQkOT.alALMi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `type`) VALUES
(1, 'SUPERVISEUR'),
(2, 'SUPERVISEUR REGIONALE'),
(3, 'SUPERVISEUR GENERALE');

-- --------------------------------------------------------

--
-- Table structure for table `vent`
--

CREATE TABLE `vent` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `Pdv_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Client_id` int(11) NOT NULL,
  `serial_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vent`
--

INSERT INTO `vent` (`id`, `date`, `Pdv_id`, `Product_id`, `Client_id`, `serial_number`) VALUES
(94, '2024-01-11 00:00:00', 29, 1, 102, '1234567890'),
(96, '2024-01-11 00:00:00', 24, 1, 104, '1234567890'),
(97, '2024-01-11 12:49:57', 24, 1, 105, '1234567890'),
(98, '0000-00-00 00:00:00', 24, 1, 106, '1234567890'),
(99, '2024-01-11 12:52:48', 24, 1, 107, '1234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadeaux`
--
ALTER TABLE `cadeaux`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `Pdv_id` (`Pdv_id`);

--
-- Indexes for table `commandestatus`
--
ALTER TABLE `commandestatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commande_has_product`
--
ALTER TABLE `commande_has_product`
  ADD PRIMARY KEY (`commande_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `gain`
--
ALTER TABLE `gain`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pdv_id` (`pdv_id`);

--
-- Indexes for table `pdv`
--
ALTER TABLE `pdv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pdvstatus_id` (`pdvstatus_id`),
  ADD KEY `pdvgrade_id` (`pdvgrade_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pdvgrade`
--
ALTER TABLE `pdvgrade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdvstatus`
--
ALTER TABLE `pdvstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `fk_resolution_product` (`resolution`),
  ADD KEY `fk_taille_product` (`taille`);

--
-- Indexes for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abrv` (`abrv`);

--
-- Indexes for table `resolutionproduct`
--
ALTER TABLE `resolutionproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abrv` (`abrv`);

--
-- Indexes for table `serial_number`
--
ALTER TABLE `serial_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_serial_number` (`product_id`);

--
-- Indexes for table `sizeproduct`
--
ALTER TABLE `sizeproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `size` (`size`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertype_id` (`usertype_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vent`
--
ALTER TABLE `vent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Pdv_id` (`Pdv_id`),
  ADD KEY `Product_id` (`Product_id`),
  ADD KEY `Client_id` (`Client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadeaux`
--
ALTER TABLE `cadeaux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `commandestatus`
--
ALTER TABLE `commandestatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gain`
--
ALTER TABLE `gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pdv`
--
ALTER TABLE `pdv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pdvgrade`
--
ALTER TABLE `pdvgrade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pdvstatus`
--
ALTER TABLE `pdvstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `productcategory`
--
ALTER TABLE `productcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resolutionproduct`
--
ALTER TABLE `resolutionproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `serial_number`
--
ALTER TABLE `serial_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sizeproduct`
--
ALTER TABLE `sizeproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vent`
--
ALTER TABLE `vent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `commandestatus` (`id`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`Pdv_id`) REFERENCES `pdv` (`id`);

--
-- Constraints for table `commande_has_product`
--
ALTER TABLE `commande_has_product`
  ADD CONSTRAINT `commande_has_product_ibfk_1` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `commande_has_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `gain`
--
ALTER TABLE `gain`
  ADD CONSTRAINT `gain_ibfk_2` FOREIGN KEY (`pdv_id`) REFERENCES `pdv` (`id`);

--
-- Constraints for table `pdv`
--
ALTER TABLE `pdv`
  ADD CONSTRAINT `pdv_ibfk_1` FOREIGN KEY (`pdvstatus_id`) REFERENCES `pdvstatus` (`id`),
  ADD CONSTRAINT `pdv_ibfk_2` FOREIGN KEY (`pdvgrade_id`) REFERENCES `pdvgrade` (`id`),
  ADD CONSTRAINT `pdv_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_resolution_product` FOREIGN KEY (`resolution`) REFERENCES `resolutionproduct` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_taille_product` FOREIGN KEY (`taille`) REFERENCES `sizeproduct` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `productcategory` (`id`);

--
-- Constraints for table `serial_number`
--
ALTER TABLE `serial_number`
  ADD CONSTRAINT `fk_product_serial_number` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`usertype_id`) REFERENCES `usertype` (`id`);

--
-- Constraints for table `vent`
--
ALTER TABLE `vent`
  ADD CONSTRAINT `vent_ibfk_1` FOREIGN KEY (`Pdv_id`) REFERENCES `pdv` (`id`),
  ADD CONSTRAINT `vent_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `vent_ibfk_3` FOREIGN KEY (`Client_id`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
