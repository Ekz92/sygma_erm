-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 01 Septembre 2022 à 18:33
-- Version du serveur :  10.1.9-MariaDB
-- Version de PHP :  5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gpa_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `essai`
--

CREATE TABLE `essai` (
  `nom` varchar(5) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tb_article`
--

CREATE TABLE `tb_article` (
  `id_art` int(11) NOT NULL,
  `code_art` varchar(20) NOT NULL,
  `designation_art` varchar(100) NOT NULL,
  `alias_art` varchar(20) NOT NULL,
  `alias_ret` varchar(15) DEFAULT NULL,
  `type_art` varchar(100) NOT NULL,
  `kilo` double NOT NULL,
  `code_mag` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_article`
--

INSERT INTO `tb_article` (`id_art`, `code_art`, `designation_art`, `alias_art`, `alias_ret`, `type_art`, `kilo`, `code_mag`) VALUES
(7, '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 'B3A', 'RB3A', 'Charge gaz butane', 3, 'PFGB'),
(8, '011C03', 'Bouteille de recharge de 3kgs sodigaz', 'B3', 'RB3', 'Charge gaz butane', 3, 'PFGB'),
(9, '011C06', 'Bouteille de recharge de 6kgs sodigaz', 'B6', 'RB6', 'Charge gaz butane', 6, 'PFGB'),
(10, '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 'B6R', 'RB6R', 'Charge gaz butane', 6, 'PFGB'),
(11, '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 'B12', 'RB12', 'Charge gaz butane', 12.5, 'PFGB'),
(12, '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 'B50', 'RB50', 'Charge gaz butane', 50, 'PFGB'),
(13, '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 'B25', 'RB25', 'Charge gaz butane', 25, 'PFGB'),
(14, '011C06E', 'Bouteille de recharge de 6kgs enora', 'B6E', 'RB6E', 'Charge gaz butane', 6, 'PFGB'),
(15, '011C12E', 'Bouteille de recharge de 12,5kgs enora', 'B12E', 'RB12E', 'Charge gaz butane', 12.5, 'PFGB'),
(16, '02103K.', 'Bouteille de consignation de 3kgs avec anse sodigaz', 'B3A', 'RB3A', 'Consignation', 3, 'PFBC'),
(17, '02103K', 'Bouteille de consignation de 3kgs sodigaz', 'B3', 'RB3', 'Consignation', 3, 'PFBC'),
(18, '02106K', 'Bouteille de consignation de 6kgs sodigaz', 'B6', 'RB6', 'Consignation', 6, 'PFBC'),
(19, '02106K.', 'Bouteille de consignation de 6kgs à robinet sodigaz', 'B6R', 'RB6R', 'Consignation', 6, 'PFBC'),
(20, '02112K', 'Bouteille de consignation de 12,5kgs sodigaz', 'B12', 'RB12', 'Consignation', 12.5, 'PFBC'),
(21, '0250K', 'Bouteille de consignation de 50Kgs sodigaz', 'B50', 'RB50', 'Consignation', 50, 'PFBC'),
(22, '02125K', 'Bouteille de consignation de 25Kgs sodigaz', 'B25', 'RB25', 'Consignation', 25, 'PFBC'),
(23, '021E6K', 'Bouteille de consignation de 6kgs enora', 'B6E', 'RB6E', 'Consignation', 6, 'PFBC'),
(24, '021E12K', 'Bouteille de consignation de 12,5kgs enora', 'B12E', 'RB12E', 'Consignation', 12.5, 'PFBC'),
(25, 'BR01', 'BRULEUR SIMPLE', '', '', 'BRULEUR', 1, 'BRU'),
(26, 'BRU  A', 'BRULEUR ALLUMINIUM', '', '', 'BRULEUR', 1, 'BRU'),
(27, 'BRU 3', 'BRULEUR 3KG', '', '', 'BRULEUR', 1, 'BRU'),
(28, 'FOC001', 'FOYER CARE', 'FOCA', '', 'FOYER', 1, 'FO'),
(29, 'FOA002', 'FOYER ANTONOIRE PETIT', 'FOA', '', 'FOYER', 1, 'FO'),
(30, 'FOCRO', 'FOYER CROCHET', 'FOCR', '', 'FOYER', 1, 'FO'),
(31, 'FOAG', 'FOYER ANTONOIRE GRAND', 'FAG', '', 'FOYER', 1, 'FO');

-- --------------------------------------------------------

--
-- Structure de la table `tb_bank`
--

CREATE TABLE `tb_bank` (
  `id_bk` int(11) NOT NULL,
  `code_bk` varchar(15) DEFAULT NULL,
  `nom_bk` varchar(50) DEFAULT NULL,
  `compte_bk` varchar(30) NOT NULL,
  `solde_bk` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_bank`
--

INSERT INTO `tb_bank` (`id_bk`, `code_bk`, `nom_bk`, `compte_bk`, `solde_bk`) VALUES
(1, 'BAQ04', 'BTCI', '', 0),
(2, 'BAQ08', 'BAT', '', 0),
(3, 'BAQ06', 'ORA BANK', '', 0),
(4, 'B', 'BIA TG', '00336782271-94', 100000000);

-- --------------------------------------------------------

--
-- Structure de la table `tb_bene_fact`
--

CREATE TABLE `tb_bene_fact` (
  `id_bene` int(11) NOT NULL,
  `datefact` date DEFAULT NULL,
  `num_fact` varchar(15) DEFAULT NULL,
  `code_art` varchar(15) DEFAULT NULL,
  `designation_art` varchar(50) DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `pu` double DEFAULT NULL,
  `cout` double DEFAULT NULL,
  `marge` double DEFAULT NULL,
  `statut_canc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_bene_fact`
--

INSERT INTO `tb_bene_fact` (`id_bene`, `datefact`, `num_fact`, `code_art`, `designation_art`, `qte`, `pu`, `cout`, `marge`, `statut_canc`) VALUES
(1, '2022-07-12', 'CCP-F1', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 2, 1440, 1440, 0, 0),
(2, '2022-07-12', 'CCP-F1', '011C06', 'Charge gaz butane 6kgs sodigaz', 22, 2880, 2880, 0, 0),
(3, '2022-07-12', 'CCP-F1', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 2880, 0, 0),
(4, '2022-07-12', 'CCP-F1', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 6000, 6000, 0, 0),
(5, '2022-07-12', 'CCP-F2', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 4, 1440, 1440, 0, 1),
(6, '2022-07-12', 'CCP-F2', '011C06', 'Charge gaz butane 6kgs sodigaz', 25, 2880, 2880, 0, 1),
(7, '2022-07-12', 'CCP-F2', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 2880, 0, 1),
(8, '2022-07-12', 'CCP-F2', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 6000, 0, 1),
(9, '2022-07-12', 'CCP-F2', '011C25', 'Charge gaz butane 25Kgs sodigaz', 4, 12000, 12000, 0, 1),
(10, '2022-07-12', 'CCP-F3', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 30, 2880, 2880, 0, 0),
(11, '2022-07-12', 'CCP-F3', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 13, 6000, 6000, 0, 0),
(12, '2022-07-12', 'CCP-F3', '011C12E', 'Charge gaz butane 12,5kgs enora', 9, 6000, 6000, 0, 0),
(13, '2022-07-12', 'CCP-F3', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 7, 1440, 1440, 0, 0),
(14, '2022-07-12', 'CCP-F4', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 89, 6000, 6000, 0, 0),
(15, '2022-07-12', 'CCP-F4', '011C06', 'Charge gaz butane 6kgs sodigaz', 19, 2880, 2880, 0, 0),
(16, '2022-07-12', 'CCP-F4', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 2880, 0, 0),
(17, '2022-07-12', 'CCP-F4', '011C12E', 'Charge gaz butane 12,5kgs enora', 8, 6000, 6000, 0, 0),
(18, '2022-07-12', 'CCP-F5', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 2, 1440, 1440, 0, 0),
(19, '2022-07-12', 'CCP-F5', '011C06', 'Charge gaz butane 6kgs sodigaz', 22, 2880, 2880, 0, 0),
(20, '2022-07-12', 'CCP-F5', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 2880, 0, 0),
(21, '2022-07-12', 'CCP-F5', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 6000, 6000, 0, 0),
(22, '2022-07-12', 'CCP-F6', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 4, 1440, 1440, 0, 0),
(23, '2022-07-12', 'CCP-F6', '011C06', 'Charge gaz butane 6kgs sodigaz', 25, 2880, 2880, 0, 0),
(24, '2022-07-12', 'CCP-F6', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 2880, 0, 0),
(25, '2022-07-12', 'CCP-F6', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 6000, 0, 0),
(26, '2022-07-12', 'CCP-F6', '011C25', 'Charge gaz butane 25Kgs sodigaz', 4, 12000, 12000, 0, 0),
(27, '2022-07-12', 'CCP-F7', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(28, '2022-07-12', 'CCP-F8', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 3, 1440, 1440, 0, 0),
(29, '2022-07-12', 'CCP-F8', '011C06', 'Charge gaz butane 6kgs sodigaz', 38, 2880, 2880, 0, 0),
(30, '2022-07-12', 'CCP-F8', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 4, 2880, 2880, 0, 0),
(31, '2022-07-12', 'CCP-F8', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 6000, 0, 0),
(32, '2022-07-13', 'CCP-F9', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 3, 1440, 1440, 0, 0),
(33, '2022-07-13', 'CCP-F9', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 1, 2880, 2880, 0, 0),
(34, '2022-07-13', 'CCP-F9', '011C06', 'Charge gaz butane 6kgs sodigaz', 16, 2880, 2880, 0, 0),
(35, '2022-07-13', 'CCP-F9', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 6000, 6000, 0, 0),
(36, '2022-07-13', 'CCP-F10', '011C06', 'Charge gaz butane 6kgs sodigaz', 13, 2880, 2880, 0, 0),
(37, '2022-07-13', 'CCP-F10', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 3, 6000, 6000, 0, 0),
(38, '2022-07-13', 'CCP-F11', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1, 1440, 1440, 0, 0),
(39, '2022-07-13', 'CCP-F11', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 1, 2880, 2880, 0, 0),
(40, '2022-07-13', 'CCP-F11', '011C06', 'Charge gaz butane 6kgs sodigaz', 24, 2880, 2880, 0, 0),
(41, '2022-07-13', 'CCP-F11', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 6000, 6000, 0, 0),
(42, '2022-07-13', 'CCP-F12', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 3, 1440, 1440, 0, 0),
(43, '2022-07-13', 'CCP-F12', '011C06', 'Charge gaz butane 6kgs sodigaz', 13, 2880, 2880, 0, 0),
(44, '2022-07-13', 'CCP-F13', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 3, 6000, 6000, 0, 0),
(45, '2022-07-13', 'CCP-F13', '011C25', 'Charge gaz butane 25Kgs sodigaz', 4, 12000, 12000, 0, 0),
(46, '2022-07-13', 'CCP-F14', '011C06', 'Charge gaz butane 6kgs sodigaz', 1, 2880, 2880, 0, 0),
(47, '2022-07-13', 'CCP-F14', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12, 6000, 6000, 0, 0),
(48, '2022-07-13', 'CCP-F14', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(49, '2022-07-13', 'CCP-F15', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1, 1440, 1440, 0, 0),
(50, '2022-07-13', 'CCP-F15', '011C06', 'Charge gaz butane 6kgs sodigaz', 3, 2880, 2880, 0, 0),
(51, '2022-07-13', 'CCP-F15', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 5, 6000, 6000, 0, 0),
(52, '2022-07-13', 'CCP-F16', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 5, 1440, 1440, 0, 0),
(53, '2022-07-13', 'CCP-F16', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 3, 2880, 2880, 0, 0),
(54, '2022-07-13', 'CCP-F16', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 2880, 2880, 0, 0),
(55, '2022-07-13', 'CCP-F16', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 0),
(56, '2022-07-13', 'CCP-F17', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 5, 6000, 6000, 0, 0),
(57, '2022-07-13', 'CCP-F18', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 2, 1440, 1440, 0, 0),
(58, '2022-07-13', 'CCP-F18', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 3, 2880, 2880, 0, 0),
(59, '2022-07-13', 'CCP-F18', '011C06', 'Charge gaz butane 6kgs sodigaz', 11, 2880, 2880, 0, 0),
(60, '2022-07-13', 'CCP-F18', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 19, 6000, 6000, 0, 0),
(61, '2022-07-13', 'CCP-F19', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 4, 1440, 1440, 0, 0),
(62, '2022-07-13', 'CCP-F19', '011C06', 'Charge gaz butane 6kgs sodigaz', 19, 2880, 2880, 0, 0),
(63, '2022-07-13', 'CCP-F19', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 2, 6000, 6000, 0, 0),
(64, '2022-07-14', 'CCP-F20', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 24000, 24000, 0, 0),
(65, '2022-07-14', 'CCP-F21', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 24000, 24000, 0, 0),
(66, '2022-07-14', 'CCP-F22', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 2880, 2880, 0, 0),
(67, '2022-07-14', 'CCP-F22', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 2, 1440, 1440, 0, 0),
(68, '2022-07-14', 'CCP-F22', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 2, 6000, 6000, 0, 0),
(69, '2022-07-14', 'CCP-F23', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 2, 1440, 1440, 0, 0),
(70, '2022-07-14', 'CCP-F23', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 2880, 2880, 0, 0),
(71, '2022-07-14', 'CCP-F23', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 2, 6000, 6000, 0, 0),
(72, '2022-07-14', 'CCP-F24', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 6000, 0, 0),
(73, '2022-07-14', 'CCP-F25', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 3, 6000, 6000, 0, 0),
(74, '2022-07-14', 'CCP-F25', '011C06', 'Charge gaz butane 6kgs sodigaz', 15, 2880, 2880, 0, 0),
(75, '2022-07-14', 'CCP-F26', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 0),
(76, '2022-07-14', 'CCP-F26', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1, 1440, 1440, 0, 0),
(77, '2022-07-14', 'CCP-F26', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 2880, 2880, 0, 0),
(78, '2022-07-14', 'CCP-F26', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 1, 2880, 2880, 0, 0),
(79, '2022-07-14', 'CCP-F27', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 2, 6000, 6000, 0, 1),
(80, '2022-07-14', 'CCP-F27', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 2880, 2880, 0, 1),
(81, '2022-07-14', 'CCP-F28', '011C06', 'Charge gaz butane 6kgs sodigaz', 13, 2880, 2880, 0, 0),
(82, '2022-07-14', 'CCP-F28', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 2, 6000, 6000, 0, 0),
(83, '2022-07-14', 'CCP-F29', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 4, 1440, 1440, 0, 0),
(84, '2022-07-14', 'CCP-F29', '011C06', 'Charge gaz butane 6kgs sodigaz', 25, 2880, 2880, 0, 0),
(85, '2022-07-14', 'CCP-F29', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 5, 6000, 6000, 0, 0),
(86, '2022-07-15', 'CCP-F30', '011C06', 'Charge gaz butane 6kgs sodigaz', 15, 2880, 2880, 0, 1),
(87, '2022-07-15', 'CCP-F30', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 5, 1440, 1440, 0, 1),
(88, '2022-07-15', 'CCP-F30', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 3, 6000, 6000, 0, 1),
(89, '2022-07-15', 'CCP-F31', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 10, 1440, 1440, 0, 0),
(90, '2022-07-15', 'CCP-F31', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 2880, 2880, 0, 0),
(91, '2022-07-15', 'CCP-F31', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 14, 2880, 2880, 0, 0),
(92, '2022-07-15', 'CCP-F31', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 40, 6000, 6000, 0, 0),
(93, '2022-07-15', 'CCP-F31', '011C12E', 'Charge gaz butane 12,5kgs enora', 10, 6000, 6000, 0, 0),
(94, '2022-07-15', 'CCP-F31', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 12000, 12000, 0, 0),
(95, '2022-07-15', 'CCP-F32', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 2880, 0, 0),
(96, '2022-07-15', 'CCP-F32', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 3, 2880, 2880, 0, 0),
(97, '2022-07-15', 'CCP-F32', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 6000, 0, 0),
(98, '2022-07-15', 'CCP-F32', '011C12E', 'Charge gaz butane 12,5kgs enora', 2, 6000, 6000, 0, 0),
(99, '2022-07-15', 'CCP-F33', '011C06', 'Charge gaz butane 6kgs sodigaz', 14, 2880, 2880, 0, 0),
(100, '2022-07-15', 'CCP-F33', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 6000, 6000, 0, 0),
(101, '2022-07-15', 'CCP-F34', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 3, 1440, 1440, 0, 0),
(102, '2022-07-15', 'CCP-F34', '011C06', 'Charge gaz butane 6kgs sodigaz', 13, 2880, 2880, 0, 0),
(103, '2022-07-15', 'CCP-F34', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 6000, 6000, 0, 0),
(104, '2022-07-15', 'CCP-F34', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 12000, 12000, 0, 0),
(105, '2022-07-15', 'CCP-F35', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 2, 1440, 1440, 0, 0),
(106, '2022-07-15', 'CCP-F35', '011C06', 'Charge gaz butane 6kgs sodigaz', 14, 2880, 2880, 0, 0),
(107, '2022-07-15', 'CCP-F35', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 2880, 0, 0),
(108, '2022-07-15', 'CCP-F35', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 6000, 0, 0),
(109, '2022-07-15', 'CCP-F36', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 2880, 2880, 0, 0),
(110, '2022-07-16', 'CCP-F37', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 2880, 2880, 0, 0),
(111, '2022-07-16', 'CCP-F37', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 2880, 2880, 0, 0),
(112, '2022-07-16', 'CCP-F38', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 6000, 0, 0),
(113, '2022-07-16', 'CCP-F38', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 2880, 2880, 0, 0),
(114, '2022-07-16', 'CCP-F38', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 2880, 2880, 0, 0),
(115, '2022-07-18', 'CCP-F39', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12, 6000, 6000, 0, 0),
(116, '2022-07-18', 'CCP-F39', '011C06', 'Charge gaz butane 6kgs sodigaz', 16, 2880, 2880, 0, 0),
(117, '2022-07-18', 'CCP-F40', '011C06', 'Charge gaz butane 6kgs sodigaz', 17, 2880, 2880, 0, 0),
(118, '2022-07-18', 'CCP-F40', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1, 6000, 6000, 0, 0),
(119, '2022-07-18', 'CCP-F40', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1, 1440, 1440, 0, 0),
(120, '2022-07-18', 'CCP-F41', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 30, 2880, 2880, 0, 0),
(121, '2022-07-18', 'CCP-F41', '011C06', 'Charge gaz butane 6kgs sodigaz', 38, 2880, 2880, 0, 0),
(122, '2022-07-18', 'CCP-F41', '011C06E', 'Charge gaz butane 6kgs enora', 1, 2880, 2880, 0, 0),
(123, '2022-07-18', 'CCP-F41', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 65, 6000, 6000, 0, 0),
(124, '2022-07-18', 'CCP-F41', '011C12E', 'Charge gaz butane 12,5kgs enora', 26, 6000, 6000, 0, 0),
(125, '2022-07-18', 'CCP-F41', '011C25', 'Charge gaz butane 25Kgs sodigaz', 5, 12000, 12000, 0, 0),
(126, '2022-07-18', 'CCP-F41', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 10, 1440, 1440, 0, 0),
(127, '2022-07-18', 'CCP-F41', '011C03', 'Charge gaz butane 3kgs sodigaz', 1, 1440, 1440, 0, 0),
(128, '2022-07-18', 'CCP-F42', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 1),
(129, '2022-07-19', 'CCP-F43', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 40, 6000, 6000, 0, 1),
(130, '2022-07-19', 'CCP-F43', '011C12E', 'Charge gaz butane 12,5kgs enora', 17, 6000, 6000, 0, 1),
(131, '2022-07-19', 'CCP-F43', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 17, 2880, 2880, 0, 1),
(132, '2022-07-19', 'CCP-F43', '011C06', 'Charge gaz butane 6kgs sodigaz', 3, 2880, 2880, 0, 1),
(133, '2022-07-19', 'CCP-F43', '011C06E', 'Charge gaz butane 6kgs enora', 1, 2880, 2880, 0, 1),
(134, '2022-07-19', 'CCP-F43', '011C25', 'Charge gaz butane 25Kgs sodigaz', 4, 12000, 12000, 0, 1),
(135, '2022-07-19', 'CCP-F43', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 2, 1440, 1440, 0, 1),
(136, '2022-07-19', 'CCP-F44', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 6000, 6000, 0, 0),
(137, '2022-07-19', 'CCP-F44', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 2880, 2880, 0, 0),
(138, '2022-07-19', 'CCP-F44', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 7, 1440, 1440, 0, 0),
(139, '2022-07-21', 'CCP-F45', '011C25', 'Charge gaz butane 25Kgs sodigaz', 5, 12000, 12000, 0, 0),
(140, '2022-07-21', 'CCP-F45', '011C12E', 'Charge gaz butane 12,5kgs enora', 5, 6000, 6000, 0, 0),
(141, '2022-07-21', 'CCP-F46', '011C12E', 'Charge gaz butane 12,5kgs enora', 20, 6000, 6000, 0, 0),
(142, '2022-07-21', 'CCP-F47', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 12000, 12000, 0, 0),
(143, '2022-07-21', 'CCP-F47', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 25, 2880, 2880, 0, 0),
(144, '2022-07-21', 'CCP-F47', '011C12E', 'Charge gaz butane 12,5kgs enora', 6, 6000, 6000, 0, 0),
(145, '2022-07-21', 'CCP-F48', '011C06', 'Charge gaz butane 6kgs sodigaz', 25, 2880, 2880, 0, 0),
(146, '2022-07-21', 'CCP-F48', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 5, 6000, 6000, 0, 0),
(147, '2022-07-21', 'CCP-F48', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 2880, 2880, 0, 0),
(148, '2022-07-21', 'CCP-F49', '011C06', 'Charge gaz butane 6kgs sodigaz', 13, 2880, 2880, 0, 0),
(149, '2022-07-21', 'CCP-F49', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 6000, 6000, 0, 0),
(150, '2022-07-21', 'CCP-F50', '011C06', 'Charge gaz butane 6kgs sodigaz', 25, 2880, 2880, 0, 0),
(151, '2022-07-21', 'CCP-F50', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 5, 6000, 6000, 0, 0),
(152, '2022-07-21', 'CCP-F50', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 2880, 2880, 0, 0),
(153, '2022-07-21', 'CCP-F50', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 5, 1440, 1440, 0, 0),
(154, '2022-07-21', 'CCP-F51', '011C06', 'Charge gaz butane 6kgs sodigaz', 15, 2880, 2880, 0, 0),
(155, '2022-07-22', 'CCP-F52', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 12000, 12000, 0, 0),
(156, '2022-07-22', 'CCP-F52', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 25, 2880, 2880, 0, 0),
(157, '2022-07-22', 'CCP-F52', '011C12E', 'Charge gaz butane 12,5kgs enora', 6, 6000, 6000, 0, 0),
(158, '2022-07-22', 'CCP-F52', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 27, 6000, 6000, 0, 0),
(159, '2022-07-22', 'CCP-F53', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 12000, 12000, 0, 0),
(160, '2022-07-22', 'CCP-F53', '011C12E', 'Charge gaz butane 12,5kgs enora', 6, 6000, 6000, 0, 0),
(161, '2022-07-22', 'CCP-F53', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 24, 2880, 2880, 0, 0),
(162, '2022-07-22', 'CCP-F53', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 27, 6000, 6000, 0, 0),
(163, '2022-07-22', 'CCP-F54', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 2880, 0, 0),
(164, '2022-07-22', 'CCP-F54', '011C06', 'Charge gaz butane 6kgs sodigaz', 15, 2880, 2880, 0, 0),
(165, '2022-07-22', 'CCP-F54', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 8, 6000, 6000, 0, 0),
(166, '2022-07-22', 'CCP-F55', '011C06', 'Charge gaz butane 6kgs sodigaz', 16, 2880, 2880, 0, 0),
(167, '2022-07-22', 'CCP-F55', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 1, 2880, 2880, 0, 0),
(168, '2022-07-22', 'CCP-F55', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 5, 6000, 6000, 0, 0),
(169, '2022-07-22', 'CCP-F56', '011C06', 'Charge gaz butane 6kgs sodigaz', 15, 2880, 2880, 0, 1),
(170, '2022-07-22', 'CCP-F56', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 6000, 6000, 0, 1),
(171, '2022-07-25', 'CCR-F57', '0250K', 'Consignation gaz butane 50Kgs sodigaz', 3, 89000, 89000, 0, 0),
(172, '2022-07-26', 'CCP-F58', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 40, 6000, 6000, 0, 0),
(173, '2022-07-26', 'CCP-F58', '011C12E', 'Charge gaz butane 12,5kgs enora', 10, 6000, 6000, 0, 0),
(174, '2022-07-26', 'CCP-F59', '011C25', 'Charge gaz butane 25Kgs sodigaz', 5, 12000, 12000, 0, 0),
(175, '2022-07-26', 'CCP-F60', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 0),
(176, '2022-07-26', 'CCP-F61', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 0),
(177, '2022-07-26', 'CCP-F62', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 6000, 6000, 0, 1),
(178, '2022-07-27', 'CCP-F63', '011C25', 'Charge gaz butane 25Kgs sodigaz', 10, 12000, 12000, 0, 1),
(179, '2022-07-27', 'CCP-F64', '011C12E', 'Charge gaz butane 12,5kgs enora', 40, 6000, 6000, 0, 0),
(180, '2022-07-27', 'CCP-F64', '011C06E', 'Charge gaz butane 6kgs enora', 3, 2880, 2880, 0, 0),
(181, '2022-07-27', 'CCP-F64', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 18, 2880, 2880, 0, 0),
(182, '2022-07-27', 'CCP-F65', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 2880, 2880, 0, 0),
(183, '2022-07-27', 'CCP-F66', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1, 1440, 1440, 0, 0),
(184, '2022-07-27', 'CCP-F66', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 2880, 2880, 0, 0),
(185, '2022-07-27', 'CCP-F66', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 3, 6000, 6000, 0, 0),
(186, '2022-08-04', 'CCP-F1', '011C25', 'Charge gaz butane 25Kgs sodigaz', 10, 12000, 12000, 0, 0),
(187, '2022-08-04', 'CCP-F2', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 70, 6000, 6000, 0, 1),
(188, '2022-08-04', 'CCP-F3', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 18, 6000, 6000, 0, 0),
(189, '2022-08-04', 'CCP-F3', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 12000, 12000, 0, 0),
(190, '2022-08-04', 'CCP-F4', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 6000, 0, 0),
(191, '2022-08-04', 'CCP-F4', '011C25', 'Charge gaz butane 25Kgs sodigaz', 3, 12000, 12000, 0, 0),
(192, '2022-08-05', 'CCP-F5', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6500, 6000, 5000, 0),
(193, '2022-08-05', 'CCP-F5', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 3200, 2880, 3200, 0),
(194, '2022-08-05', 'CCP-F6', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 6000, 0, 0),
(195, '2022-08-05', 'CCP-F6', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(196, '2022-08-05', 'CCP-F7', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 0),
(197, '2022-08-05', 'CCP-F8', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 29, 6000, 6000, 0, 0),
(198, '2022-08-05', 'CCP-F9', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 85, 6000, 6000, 0, 0),
(199, '2022-08-05', 'CCP-F9', '011C25', 'Charge gaz butane 25Kgs sodigaz', 10, 12000, 12000, 0, 0),
(200, '2022-08-05', 'CCP-F10', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 24000, 0, 0),
(201, '2022-08-05', 'CCP-F11', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 29, 6000, 6000, 0, 0),
(202, '2022-08-05', 'CCP-F12', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(203, '2022-08-06', 'CCR-F13', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 80, 17880, 17880, 0, 0),
(204, '2022-08-06', 'CCR-F13', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 10, 31000, 31000, 0, 0),
(205, '2022-08-06', 'CCR-F13', '02103K', 'Consignation gaz butane 3kgs sodigaz', 10, 9440, 9440, 0, 0),
(206, '2022-08-06', 'CCP-F14', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 16, 6000, 6000, 0, 0),
(207, '2022-08-06', 'CCP-F14', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 2880, 0, 0),
(208, '2022-08-06', 'CCP-F14', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(209, '2022-08-06', 'CCP-F14', '011C06E', 'Charge gaz butane 6kgs enora', 2, 2880, 2880, 0, 0),
(210, '2022-08-05', 'CCP-F15', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 17, 6000, 6000, 0, 0),
(211, '2022-08-06', 'CCP-F16', '011C06', 'Charge gaz butane 6kgs sodigaz', 35, 2880, 2880, 0, 0),
(212, '2022-08-06', 'CCP-F16', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26, 6000, 6000, 0, 0),
(213, '2020-01-01', 'CCR-F17', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 180, 31000, 31000, 0, 1),
(214, '2020-01-01', 'CCR-F17', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 21, 17880, 17880, 0, 1),
(215, '2020-01-01', 'CCR-F17', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 2, 52000, 52000, 0, 1),
(216, '2020-01-01', 'CCR-F17', '0250K', 'Consignation gaz butane 50Kgs sodigaz', 2, 89000, 89000, 0, 1),
(217, '2022-08-01', 'CCP-F18', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(218, '2022-08-01', 'CCP-F18', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 24000, 0, 0),
(219, '2022-08-01', 'CCP-F18', '011C25', 'Charge gaz butane 25Kgs sodigaz', 3, 12000, 12000, 0, 0),
(220, '2022-08-01', 'CCP-F18', '011C06', 'Charge gaz butane 6kgs sodigaz', 36, 2880, 2880, 0, 0),
(221, '2022-08-02', 'CCP-F19', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 0),
(222, '2022-08-02', 'CCP-F19', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(223, '2022-08-03', 'CCP-F20', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 50, 6000, 6000, 0, 0),
(224, '2022-08-03', 'CCP-F20', '011C06', 'Charge gaz butane 6kgs sodigaz', 18, 2880, 2880, 0, 0),
(225, '2022-08-03', 'CCP-F20', '011C25', 'Charge gaz butane 25Kgs sodigaz', 5, 12000, 12000, 0, 0),
(226, '2022-08-03', 'CCP-F21', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 53, 6000, 6000, 0, 0),
(227, '2022-08-03', 'CCP-F21', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 24000, 24000, 0, 0),
(228, '2022-08-03', 'CCP-F22', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 6000, 6000, 0, 0),
(229, '2022-08-04', 'CCP-F23', '011C25', 'Charge gaz butane 25Kgs sodigaz', 10, 12000, 12000, 0, 0),
(230, '2022-08-04', 'CCP-F23', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 85, 6000, 6000, 0, 0),
(231, '2022-08-05', 'CCP-F24', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(232, '2022-08-06', 'CCP-F25', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26, 6000, 6000, 0, 0),
(233, '2022-08-06', 'CCP-F25', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 35, 2880, 2880, 0, 0),
(234, '2022-08-05', 'CCP-F26', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(235, '2022-08-02', 'CCP-F27', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 1),
(236, '2022-08-02', 'CCP-F27', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 2880, 2880, 0, 1),
(237, '2022-08-07', 'CCP-F28', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 18, 6000, 6000, 0, 0),
(238, '2022-08-07', 'CCP-F28', '011C03', 'Charge gaz butane 3kgs sodigaz', 10, 1440, 1440, 0, 0),
(239, '2022-08-07', 'CCP-F28', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(240, '2022-08-07', 'CCP-F28', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 12000, 12000, 0, 0),
(241, '2022-08-08', 'CCP-F29', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 0),
(242, '2022-08-08', 'CCP-F30', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 1),
(243, '2022-08-08', 'CCP-F30', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 4, 2880, 2880, 0, 1),
(244, '2022-08-08', 'CCP-F30', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 2880, 2880, 0, 1),
(245, '2022-08-08', 'CCP-F30', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 1),
(246, '2022-08-08', 'CCP-F30', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 12000, 12000, 0, 1),
(247, '2022-08-08', 'CCP-F31', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 9, 6000, 6000, 0, 0),
(248, '2022-08-08', 'CCP-F31', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 2880, 2880, 0, 0),
(249, '2022-08-08', 'CCP-F32', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 16, 6000, 6000, 0, 0),
(250, '2022-08-08', 'CCP-F32', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(251, '2022-08-08', 'CCP-F32', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 2880, 2880, 0, 0),
(252, '2022-08-08', 'CCP-F33', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 90, 6000, 6000, 0, 0),
(253, '2022-08-08', 'CCP-F33', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 2880, 0, 0),
(254, '2022-08-08', 'CCP-F33', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 24000, 24000, 0, 0),
(255, '2022-08-08', 'CCP-F33', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 12, 2880, 2880, 0, 0),
(256, '2022-08-05', 'CCP-F34', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 3200, 2880, 3200, 0),
(257, '2022-08-05', 'CCP-F34', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6500, 6000, 5000, 0),
(258, '2022-08-05', 'CCP-F35', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 0),
(259, '2022-08-05', 'CCP-F35', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(260, '2022-08-09', 'CCP-F36', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 6000, 0, 0),
(261, '2022-08-09', 'CCR-F37', '02106K', 'Consignation gaz butane 6kgs sodigaz', 18, 17880, 17880, 0, 0),
(262, '2022-08-09', 'CCP-F38', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 22, 6000, 6000, 0, 0),
(263, '2022-08-09', 'CCP-F38', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 24000, 24000, 0, 0),
(264, '2022-08-09', 'CCP-F38', '011C06', 'Charge gaz butane 6kgs sodigaz', 14, 2880, 2880, 0, 0),
(265, '2022-08-09', 'CCP-F39', '011C06', 'Charge gaz butane 6kgs sodigaz', 45, 2880, 2880, 0, 0),
(266, '2022-08-09', 'CCP-F39', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 0),
(267, '2022-08-09', 'CCP-F39', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 13, 2880, 2880, 0, 0),
(268, '2022-08-09', 'CCP-F39', '011C03', 'Charge gaz butane 3kgs sodigaz', 20, 1440, 1440, 0, 0),
(269, '2022-08-09', 'CCP-F40', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 25, 6000, 6000, 0, 0),
(270, '2022-08-09', 'CCP-F41', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 25, 6000, 6000, 0, 0),
(271, '2022-08-09', 'CCP-F41', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(272, '2022-08-09', 'CCP-F42', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 1),
(273, '2022-08-09', 'CCP-F42', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 1),
(274, '2022-08-09', 'CCP-F42', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 12000, 12000, 0, 1),
(275, '2022-08-09', 'CCP-F42', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 2880, 0, 1),
(276, '2022-08-09', 'CCP-F43', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 24000, 24000, 0, 1),
(277, '2022-08-09', 'CCP-F44', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(278, '2022-08-09', 'CCP-F44', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 2880, 2880, 0, 0),
(279, '2022-08-09', 'CCP-F44', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 6000, 0, 0),
(280, '2022-08-09', 'CCP-F45', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 2880, 2880, 0, 0),
(281, '2022-08-09', 'CCP-F45', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 6000, 0, 0),
(282, '2022-08-09', 'CCP-F45', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(283, '2022-08-09', 'CCP-F46', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(284, '2022-08-09', 'CCP-F46', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 9, 2880, 2880, 0, 0),
(285, '2022-08-09', 'CCP-F46', '011C50', 'Charge gaz butane 50Kgs sodigaz', 6, 24000, 24000, 0, 0),
(286, '2022-08-09', 'CCP-F47', '011C06', 'Charge gaz butane 6kgs sodigaz', 22, 2880, 2880, 0, 0),
(287, '2022-08-09', 'CCP-F47', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 16, 6000, 6000, 0, 0),
(288, '2022-08-09', 'CCP-F48', '011C06', 'Charge gaz butane 6kgs sodigaz', 45, 2880, 2880, 0, 0),
(289, '2022-08-09', 'CCP-F48', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 0),
(290, '2022-08-09', 'CCP-F48', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 13, 2880, 2880, 0, 0),
(291, '2022-08-09', 'CCP-F48', '011C03', 'Charge gaz butane 3kgs sodigaz', 20, 1440, 1440, 0, 0),
(292, '2022-08-10', 'CCP-F49', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 11, 6000, 6000, 0, 0),
(293, '2022-08-10', 'CCP-F49', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(294, '2022-08-10', 'CCP-F49', '011C06', 'Charge gaz butane 6kgs sodigaz', 7, 2880, 2880, 0, 0),
(295, '2022-08-10', 'CCP-F50', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 2880, 2880, 0, 0),
(296, '2022-08-10', 'CCP-F51', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 0),
(297, '2022-08-10', 'CCP-F52', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26, 6000, 6000, 0, 0),
(298, '2022-08-10', 'CCP-F52', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 24000, 24000, 0, 0),
(299, '2022-08-10', 'CCP-F53', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 6000, 0, 0),
(300, '2022-08-10', 'CCP-F54', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 14, 6000, 6000, 0, 0),
(301, '2022-08-10', 'CCP-F54', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(302, '2022-08-11', 'CCP-F56', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 1),
(303, '2022-08-11', 'CCP-F56', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 1),
(304, '2022-08-11', 'CCP-F57', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 6000, 6000, 0, 0),
(305, '2022-08-11', 'CCP-F58', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 2880, 0, 0),
(306, '2022-08-11', 'CCP-F58', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1, 6000, 6000, 0, 0),
(307, '2022-08-11', 'CCP-F59', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26, 6000, 6000, 0, 0),
(308, '2022-08-11', 'CCP-F59', '011C06', 'Charge gaz butane 6kgs sodigaz', 7, 2880, 2880, 0, 0),
(309, '2022-08-11', 'CCP-F59', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 2880, 0, 0),
(310, '2022-08-11', 'CCP-F61', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 13, 6000, 6000, 0, 0),
(311, '2022-08-11', 'CCP-F62', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 1),
(312, '2022-08-11', 'CCP-F62', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 1),
(313, '2022-08-11', 'CCP-F63', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 1),
(314, '2022-08-11', 'CCP-F64', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 6000, 6000, 0, 0),
(315, '2022-08-11', 'CCP-F65', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 0),
(316, '2022-08-11', 'CCP-F65', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(317, '2022-08-11', 'CCP-F66', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 6000, 0, 0),
(318, '2022-08-10', 'CCP-F67', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 100, 6000, 6000, 0, 0),
(319, '2022-08-10', 'CCP-F68', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 6000, 0, 0),
(320, '2022-08-10', 'CCP-F69', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 6000, 6000, 0, 0),
(321, '2022-08-10', 'CCP-F69', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(322, '2022-08-11', 'CCP-F70', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 6000, 0, 0),
(323, '2022-08-11', 'CCP-F71', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 1),
(324, '2022-08-11', 'CCP-F71', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 1),
(325, '2022-08-11', 'CCP-F72', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 25, 6000, 6000, 0, 0),
(326, '2022-08-12', 'CCP-F73', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 1),
(327, '2022-08-12', 'CCP-F73', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 1),
(328, '2022-08-10', 'CCP-F74', '011C50', 'Charge gaz butane 50Kgs sodigaz', 6, 24000, 24000, 0, 0),
(329, '2022-08-10', 'CCP-F74', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 2880, 2880, 0, 0),
(330, '2022-08-11', 'CCP-F75', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 6000, 0, 0),
(331, '2022-08-12', 'CCP-F76', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 0),
(332, '2022-08-12', 'CCP-F76', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 24000, 24000, 0, 0),
(333, '2022-08-12', 'CCP-F76', '011C12E', 'Charge gaz butane 12,5kgs enora', 2, 6000, 6000, 0, 0),
(334, '2022-08-12', 'CCP-F76', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 2880, 2880, 0, 0),
(335, '2022-08-12', 'CCP-F76', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 1, 2880, 2880, 0, 0),
(336, '2022-08-11', 'CCP-F77', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 3200, 2880, 6400, 0),
(337, '2022-08-12', 'CCP-F78', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 21, 6000, 6000, 0, 0),
(338, '2022-08-12', 'CCP-F78', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(339, '2022-08-12', 'CCP-F79', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 2880, 0, 0),
(340, '2022-08-12', 'CCP-F79', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 6000, 0, 0),
(341, '2022-08-12', 'CCP-F79', '011C03', 'Charge gaz butane 3kgs sodigaz', 6, 1440, 1440, 0, 0),
(342, '2022-08-12', 'CCP-F80', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 0),
(343, '2022-08-12', 'CCP-F80', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(344, '2022-08-12', 'CCR-F81', '0250K', 'Consignation gaz butane 50Kgs sodigaz', 1, 89000, 89000, 0, 0),
(345, '2022-08-12', 'CCP-F82', '011C06', 'Charge gaz butane 6kgs sodigaz', 30, 2880, 2880, 0, 0),
(346, '2022-08-12', 'CCP-F82', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 24000, 0, 0),
(347, '2022-08-12', 'CCP-F82', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 50, 6000, 6000, 0, 0),
(348, '2022-08-12', 'CCP-F83', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 32, 6000, 6000, 0, 0),
(349, '2022-08-12', 'CCP-F83', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 24000, 24000, 0, 0),
(350, '2022-08-12', 'CCP-F84', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 6000, 0, 0),
(351, '2022-08-12', 'CCP-F84', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(352, '2022-08-12', 'CCP-F84', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 2880, 2880, 0, 0),
(353, '2022-08-12', 'CCP-F84', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 1, 2880, 2880, 0, 0),
(354, '2020-01-01', 'CCP-F85', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 180, 6000, 6000, 0, 0),
(355, '2020-01-01', 'CCP-F85', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 21, 2880, 2880, 0, 0),
(356, '2020-01-01', 'CCP-F85', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 12000, 12000, 0, 0),
(357, '2020-01-01', 'CCP-F85', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(358, '2022-08-01', 'CCP-F86', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(359, '2022-08-01', 'CCP-F86', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 24000, 0, 0),
(360, '2022-08-01', 'CCP-F86', '011C25', 'Charge gaz butane 25Kgs sodigaz', 3, 12000, 12000, 0, 0),
(361, '2022-08-01', 'CCP-F86', '011C06', 'Charge gaz butane 6kgs sodigaz', 36, 2880, 2880, 0, 0),
(362, '2022-08-02', 'CCP-F87', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 0),
(363, '2022-08-02', 'CCP-F87', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(364, '2022-08-03', 'CCP-F88', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 50, 6000, 6000, 0, 0),
(365, '2022-08-03', 'CCP-F88', '011C06', 'Charge gaz butane 6kgs sodigaz', 18, 2880, 2880, 0, 0),
(366, '2022-08-03', 'CCP-F88', '011C25', 'Charge gaz butane 25Kgs sodigaz', 5, 12000, 12000, 0, 0),
(367, '2022-08-03', 'CCP-F89', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 53, 6000, 6000, 0, 0),
(368, '2022-08-03', 'CCP-F89', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 24000, 24000, 0, 0),
(369, '2022-08-03', 'CCP-F90', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 6000, 6000, 0, 0),
(370, '2022-08-04', 'CCP-F91', '011C25', 'Charge gaz butane 25Kgs sodigaz', 10, 12000, 12000, 0, 0),
(371, '2022-08-04', 'CCP-F91', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 85, 6000, 6000, 0, 0),
(372, '2022-08-05', 'CCP-F92', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(373, '2022-08-06', 'CCP-F93', '011C06', 'Charge gaz butane 6kgs sodigaz', 35, 2880, 2880, 0, 0),
(374, '2022-08-06', 'CCP-F93', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26, 6000, 6000, 0, 0),
(375, '2022-08-08', 'CCP-F94', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 90, 6000, 6000, 0, 0),
(376, '2022-08-08', 'CCP-F94', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 2880, 0, 0),
(377, '2022-08-08', 'CCP-F94', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 24000, 24000, 0, 0),
(378, '2022-08-08', 'CCP-F94', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 8, 2880, 2880, 0, 0),
(379, '2022-08-09', 'CCP-F95', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(380, '2022-08-09', 'CCP-F95', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 9, 2880, 2880, 0, 0),
(381, '2022-08-09', 'CCP-F95', '011C50', 'Charge gaz butane 50Kgs sodigaz', 6, 24000, 24000, 0, 0),
(382, '2022-08-09', 'CCP-F96', '011C06', 'Charge gaz butane 6kgs sodigaz', 22, 2880, 2880, 0, 0),
(383, '2022-08-09', 'CCP-F96', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 16, 6000, 6000, 0, 0),
(384, '2022-08-10', 'CCP-F97', '011C50', 'Charge gaz butane 50Kgs sodigaz', 6, 24000, 24000, 0, 0),
(385, '2022-08-10', 'CCP-F97', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 2880, 2880, 0, 0),
(386, '2022-08-10', 'CCP-F98', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 6000, 0, 0),
(387, '2022-08-10', 'CCP-F99', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 100, 6000, 6000, 0, 0),
(388, '2022-08-11', 'CCP-F100', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 6000, 0, 0),
(389, '2022-08-11', 'CCP-F101', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(390, '2022-08-11', 'CCP-F102', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 6000, 0, 0),
(391, '2022-08-11', 'CCP-F102', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(392, '2022-08-12', 'CCP-F103', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 6000, 0, 1),
(393, '2022-08-12', 'CCP-F103', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 1),
(394, '2022-08-13', 'CCP-F106', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(395, '2022-08-13', 'CCP-F106', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 24000, 0, 0),
(396, '2022-08-13', 'CCP-F106', '011C06', 'Charge gaz butane 6kgs sodigaz', 30, 2880, 2880, 0, 0),
(397, '2022-08-13', 'CCP-F107', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 28, 6000, 6000, 0, 0),
(398, '2022-08-13', 'CCP-F107', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 24000, 0, 0),
(399, '2022-08-13', 'CCP-F108', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 13, 6000, 6000, 0, 0),
(400, '2022-08-12', 'CCP-F109', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 6000, 0, 0),
(401, '2022-08-12', 'CCP-F109', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 2880, 2880, 0, 0),
(402, '2022-08-12', 'CCP-F109', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 2880, 2880, 0, 0),
(403, '2022-08-12', 'CCP-F110', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 17, 6000, 6000, 0, 0),
(404, '2022-08-13', 'CCP-F111', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 6000, 0, 0),
(405, '2022-08-13', 'CCP-F111', '011C06', 'Charge gaz butane 6kgs sodigaz', 30, 2880, 2880, 0, 0),
(406, '2022-08-13', 'CCP-F111', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 24000, 0, 0),
(407, '2022-08-13', 'CCP-F112', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 32, 6000, 6000, 0, 0),
(408, '2022-08-13', 'CCP-F112', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 18, 2880, 2880, 0, 0),
(409, '2022-08-13', 'CCP-F112', '011C06', 'Charge gaz butane 6kgs sodigaz', 7, 2880, 2880, 0, 0),
(410, '2022-08-13', 'CCP-F112', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000, 0, 0),
(411, '2022-08-13', 'CCP-F113', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42950, 24000, 75800, 1),
(412, '2022-08-13', 'CCP-F113', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1, 10738, 6000, 4738, 1),
(413, '2022-08-13', 'CCP-F113', '011C03', 'Charge gaz butane 3kgs sodigaz', 1, 2565, 1440, 1125, 1),
(414, '2022-08-13', 'CCP-F113', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 2, 2565, 1440, 2250, 1),
(415, '2022-08-13', 'CCP-F115', '011C50', 'Charge gaz butane 50Kgs sodigaz', 8, 42950, 24000, 151600, 0),
(416, '2022-08-13', 'CCP-F117', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 6000, 47380, 0),
(417, '2022-08-13', 'CCP-F117', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 5130, 2880, 11250, 0),
(418, '2022-08-13', 'CCP-F118', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 10738, 6000, 33166, 0),
(419, '2022-08-13', 'CCP-F119', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 6000, 47380, 0),
(420, '2022-08-13', 'CCP-F120', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 6000, 47380, 0),
(421, '2022-08-13', 'CCP-F120', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(422, '2022-08-13', 'CCP-F120', '011C06', 'Charge gaz butane 6kgs sodigaz', 1, 5130, 2880, 2250, 0),
(423, '2022-08-13', 'CCP-F122', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12, 10738, 6000, 56856, 0),
(424, '2022-08-13', 'CCP-F123', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 17, 10738, 6000, 80546, 1),
(425, '2022-08-13', 'CCP-F123', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 1),
(426, '2022-08-14', 'CCP-F124', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 10738, 6000, 142140, 0),
(427, '2022-08-13', 'CCP-F125', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 65, 10738, 6000, 307970, 0),
(428, '2022-08-13', 'CCP-F125', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(429, '2022-08-13', 'CCP-F125', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 21475, 12000, 18950, 0),
(430, '2022-08-14', 'CCP-F126', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 6000, 47380, 0),
(431, '2022-08-14', 'CCP-F126', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 42950, 24000, 56850, 0),
(432, '2022-08-14', 'CCP-F126', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 5130, 2880, 9000, 0),
(433, '2022-08-15', 'CCP-F127', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 5130, 2880, 11250, 0),
(434, '2022-08-15', 'CCP-F127', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 5130, 2880, 4500, 0),
(435, '2022-08-15', 'CCP-F127', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 10738, 6000, 33166, 0),
(436, '2022-08-15', 'CCP-F127', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 24000, 18950, 0),
(437, '2022-08-15', 'CCP-F128', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 40, 10738, 6000, 189520, 0),
(438, '2022-08-15', 'CCP-F128', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42950, 24000, 75800, 0),
(439, '2022-08-15', 'CCP-F128', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 6, 5130, 2880, 13500, 0),
(440, '2022-08-15', 'CCP-F128', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 5130, 2880, 13500, 0),
(441, '2022-08-15', 'CCP-F129', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42950, 24000, 75800, 0),
(442, '2022-08-15', 'CCP-F129', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 10738, 6000, 18952, 0),
(443, '2022-08-15', 'CCP-F130', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 17, 6250, 6000, 4250, 0),
(444, '2022-08-15', 'CCP-F130', '011C06E', 'Charge gaz butane 6kgs enora', 30, 3040, 2880, 4800, 0),
(445, '2022-08-15', 'CCP-F130', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 3040, 2880, 800, 0),
(446, '2022-08-15', 'CCP-F130', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 3040, 2880, 3200, 0),
(447, '2022-08-15', 'CCP-F131', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 18, 6050, 6000, 900, 0),
(448, '2022-08-15', 'CCP-F131', '011C06', 'Charge gaz butane 6kgs sodigaz', 12, 2950, 2880, 840, 0),
(449, '2022-08-15', 'CCP-F132', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 10738, 6000, 18952, 0),
(450, '2022-08-15', 'CCP-F132', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 5130, 2880, 22500, 0),
(451, '2022-08-15', 'CCP-F134', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 22, 10738, 6000, 104236, 0),
(452, '2022-08-15', 'CCP-F134', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 22, 5130, 2880, 49500, 0),
(453, '2022-08-15', 'CCP-F134', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 24000, 18950, 0),
(454, '2022-08-11', 'CCP-F136', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 64, 10738, 6000, 303232, 0),
(455, '2022-08-11', 'CCP-F136', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(456, '2022-08-11', 'CCP-F136', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 5130, 2880, 11250, 0),
(457, '2022-08-11', 'CCP-F136', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 21475, 12000, 18950, 0),
(458, '2022-08-05', 'CCP-F137', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 64, 10738, 6000, 303232, 0),
(459, '2022-08-05', 'CCP-F137', '011C06', 'Charge gaz butane 6kgs sodigaz', 34, 5130, 2880, 76500, 0),
(460, '2022-08-05', 'CCP-F137', '011C03', 'Charge gaz butane 3kgs sodigaz', 3, 2565, 1440, 3375, 0),
(461, '2022-08-05', 'CCP-F137', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(462, '2022-08-05', 'CCP-F137', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 21475, 12000, 18950, 0),
(463, '2022-08-02', '138', 'BRU  A', 'BRULEUR ALLUMINIUM', 30, 1200, 0, 36000, 0),
(464, '2022-08-02', '138', 'BR01', 'BRULEUR SIMPLE', 100, 600, 0, 60000, 0),
(465, '2022-08-15', 'CCP-F142', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 6000, 94760, 0),
(466, '2022-08-15', 'CCP-F143', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 8, 10738, 6000, 37904, 0),
(467, '2022-08-15', 'CCP-F143', '011C06', 'Charge gaz butane 6kgs sodigaz', 3, 5130, 2880, 6750, 0),
(468, '2022-08-15', 'CCP-F144', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 5130, 2880, 45000, 0),
(469, '2022-08-15', 'CCP-F144', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 6000, 47380, 0),
(470, '2022-08-15', 'CCP-F145', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 14, 10738, 6000, 66332, 0),
(471, '2022-08-15', 'CCP-F145', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 24000, 18950, 0),
(472, '2022-08-15', 'CCP-F145', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 21475, 12000, 9475, 0),
(473, '2022-08-15', 'CCP-F146', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 5, 10738, 6000, 23690, 0),
(474, '2022-08-15', 'CCP-F146', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 5130, 2880, 11250, 0),
(475, '2022-08-15', 'CCP-F147', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 6000, 94760, 0),
(476, '2022-08-15', 'CCP-F147', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 5130, 2880, 4500, 0),
(477, '2022-08-15', 'CCP-F147', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 5130, 2880, 22500, 0),
(478, '2022-08-15', 'CCP-F147', '011C03', 'Charge gaz butane 3kgs sodigaz', 2, 2565, 1440, 2250, 0),
(479, '2022-08-15', 'CCP-F148', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 6000, 94760, 0),
(480, '2022-08-15', 'CCP-F149', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 10738, 6000, 18952, 0),
(481, '2022-08-15', 'CCP-F149', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 24000, 18950, 0),
(482, '2022-08-15', 'CCP-F150', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 42950, 24000, 56850, 0),
(483, '2022-08-15', 'CCP-F151', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 24000, 18950, 0),
(484, '2022-08-15', 'CCP-F151', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 21475, 12000, 18950, 0),
(485, '2022-08-15', 'CCP-F152', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 5130, 2880, 22500, 0),
(486, '2022-08-15', 'CCP-F152', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(487, '2022-08-15', 'CCP-F153', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 5, 10738, 6000, 23690, 0),
(488, '2022-08-15', 'CCP-F153', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(489, '2022-08-15', 'CCP-F154', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6, 10738, 6000, 28428, 0),
(490, '2022-08-15', 'CCP-F154', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 5130, 2880, 11250, 0),
(491, '2022-08-15', 'CCP-F154', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(492, '2022-08-15', 'CCP-F155', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 10738, 6000, 142140, 0),
(493, '2022-08-15', 'CCP-F155', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 5130, 2880, 13500, 0),
(494, '2022-08-15', 'CCP-F156', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10738, 6000, 71070, 0),
(495, '2022-08-15', 'CCP-F156', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 5130, 2880, 13500, 0),
(496, '2022-08-15', 'CCP-F156', '011C03', 'Charge gaz butane 3kgs sodigaz', 4, 2565, 1440, 4500, 0),
(497, '2022-08-15', 'CCP-F156', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(498, '2022-08-15', 'CCP-F157', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 6000, 47380, 0),
(499, '2022-08-15', 'CCP-F157', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0);
INSERT INTO `tb_bene_fact` (`id_bene`, `datefact`, `num_fact`, `code_art`, `designation_art`, `qte`, `pu`, `cout`, `marge`, `statut_canc`) VALUES
(500, '2022-08-15', 'CCP-F157', '011C06', 'Charge gaz butane 6kgs sodigaz', 15, 5130, 2880, 33750, 0),
(501, '2022-08-15', 'CCP-F158', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 6000, 47380, 0),
(502, '2022-08-15', 'CCP-F158', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 5130, 2880, 9000, 0),
(503, '2022-08-15', 'CCP-F158', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 5130, 2880, 4500, 0),
(504, '2022-08-15', 'CCP-F159', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 5130, 2880, 9000, 0),
(505, '2022-08-15', 'CCP-F159', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 5130, 2880, 4500, 0),
(506, '2022-08-15', 'CCP-F159', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 6000, 47380, 0),
(507, '2022-08-15', 'CCP-F160', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 3, 10738, 6000, 14214, 0),
(508, '2022-08-15', 'CCP-F161', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12, 10738, 6000, 56856, 0),
(509, '2022-08-15', 'CCP-F162', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 42950, 24000, 56850, 0),
(510, '2022-08-15', 'CCP-F163', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 6000, 94760, 0),
(511, '2022-08-15', 'CCP-F164', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 25, 10738, 6000, 118450, 0),
(512, '2022-08-15', 'CCP-F164', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 24000, 18950, 0),
(513, '2022-08-15', 'CCP-F165', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 18, 5130, 2880, 40500, 0),
(514, '2022-08-15', 'CCP-F166', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10738, 6000, 71070, 0),
(515, '2022-08-15', 'CCP-F167', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 10738, 6000, 113712, 0),
(516, '2022-08-15', 'CCP-F167', '011C06', 'Charge gaz butane 6kgs sodigaz', 7, 5130, 2880, 15750, 0),
(517, '2022-08-15', 'CCP-F168', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 2, 10738, 6000, 9476, 0),
(518, '2022-08-15', 'CCP-F169', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(519, '2022-08-15', 'CCP-F170', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 6000, 94760, 0),
(520, '2022-08-15', 'CCP-F171', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 10738, 6000, 156354, 0),
(521, '2022-08-15', 'CCP-F172', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10738, 6000, 71070, 0),
(522, '2022-08-15', 'CCP-F173', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 6000, 94760, 0),
(523, '2022-08-15', 'CCP-F173', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(524, '2022-08-15', 'CCP-F174', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 6000, 94760, 0),
(525, '2022-08-15', 'CCP-F174', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 24000, 18950, 0),
(526, '2022-08-15', 'CCP-F174', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 21475, 12000, 9475, 0),
(527, '2022-08-15', 'CCP-F175', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 10738, 6000, 379040, 0),
(528, '2022-08-15', 'CCP-F175', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 42950, 24000, 132650, 0),
(529, '2022-08-15', 'CCP-F176', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 13, 10738, 6000, 61594, 0),
(530, '2022-08-15', 'CCP-F177', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 8, 10738, 6000, 37904, 0),
(531, '2022-08-15', 'CCP-F177', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 24000, 37900, 0),
(532, '2022-08-15', 'CCP-F178', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 10738, 6000, 18952, 0),
(533, '2022-08-15', 'CCP-F178', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 24000, 18950, 0),
(534, '2022-08-15', 'CCP-F178', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 21475, 12000, 9475, 0),
(535, '2022-08-15', 'CCP-F179', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 6000, 47380, 0),
(536, '2022-08-12', 'CCP-F180', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 10738, 6000, 156354, 0),
(537, '2022-08-15', '181', 'BR01', 'BRULEUR SIMPLE', 200, 600, 0, 120000, 0),
(538, '2022-08-15', '181', 'BRU  A', 'BRULEUR ALLUMINIUM', 35, 1200, 0, 42000, 0),
(539, '2022-08-15', '181', 'BRU 3', 'BRULEUR 3KG', 20, 1000, 0, 20000, 0),
(540, '2022-08-16', 'CCP-F184', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42300, 24000, 73200, 0),
(541, '2022-08-16', 'CCP-F184', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1, 10588, 6000, 4588, 0),
(542, '2022-08-16', 'CCP-F185', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42300, 24000, 36600, 0),
(543, '2022-08-16', 'CCP-F186', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42300, 24000, 73200, 0),
(544, '2022-08-16', 'CCP-F187', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 10588, 6000, 137640, 0),
(545, '2022-08-16', 'CCP-F187', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 42300, 24000, 54900, 0),
(546, '2022-08-16', 'CCP-F187', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 21150, 12000, 18300, 0),
(547, '2022-08-16', 'CCP-F188', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10588, 6000, 68820, 0),
(548, '2022-08-16', 'CCP-F189', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42300, 24000, 36600, 0),
(549, '2022-08-16', 'CCP-F190', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 10588, 6000, 32116, 0),
(550, '2022-08-16', 'CCP-F191', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42300, 24000, 73200, 0),
(551, '2022-08-16', 'CCP-F191', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1, 10588, 6000, 4588, 0),
(552, '2022-08-16', 'CCP-F193', '011C06', 'Charge gaz butane 6kgs sodigaz', 22, 5080, 2880, 48400, 0),
(553, '2022-08-16', 'CCP-F193', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 25, 10588, 6000, 114700, 0),
(554, '2022-08-16', 'CCP-F194', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42300, 24000, 36600, 1),
(555, '2022-08-16', 'CCP-F194', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 3, 10588, 6000, 13764, 1),
(556, '2022-08-16', 'CCP-F194', '011C06', 'Charge gaz butane 6kgs sodigaz', 2, 5080, 2880, 4400, 1),
(557, '2022-08-15', 'CCP-F195', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 10588, 6000, 110112, 0),
(558, '2022-08-16', 'CCP-F196', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42300, 24000, 36600, 0),
(559, '2022-08-16', 'CCP-F197', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 8, 10588, 6000, 36704, 0),
(560, '2022-08-16', 'CCP-F198', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 14, 10588, 6000, 64232, 0),
(561, '2022-08-16', 'CCP-F199', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10588, 6000, 68820, 0),
(562, '2022-08-16', 'CCP-F199', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42300, 24000, 18300, 0),
(563, '2022-08-16', 'CCP-F200', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10588, 6000, 68820, 0),
(564, '2022-08-16', 'CCP-F200', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42300, 24000, 18300, 0),
(565, '2022-08-16', 'CCP-F201', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 16, 10588, 6000, 73408, 0),
(566, '2022-08-16', 'CCP-F201', '011C12E', 'Charge gaz butane 12,5kgs enora', 4, 10588, 6000, 18352, 0),
(567, '2022-08-16', 'CCP-F201', '011C06', 'Charge gaz butane 6kgs sodigaz', 16, 5080, 2880, 35200, 0),
(568, '2022-08-16', 'CCP-F202', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10588, 6000, 45880, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_bl`
--

CREATE TABLE `tb_bl` (
  `id_bl` int(11) NOT NULL,
  `num_bl` varchar(20) NOT NULL,
  `numbl_his` int(11) NOT NULL,
  `code_clt` varchar(15) NOT NULL,
  `nom_clt` varchar(100) NOT NULL,
  `point_vente` varchar(100) NOT NULL,
  `code_mag` varchar(20) NOT NULL,
  `designation_mag` varchar(100) NOT NULL,
  `total_kilo` double NOT NULL,
  `date_bl` datetime NOT NULL,
  `Total_bouteille` int(11) NOT NULL,
  `prix_livraison` double NOT NULL,
  `Usager` varchar(20) NOT NULL,
  `statut_bl` int(11) NOT NULL,
  `livpart` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_bl`
--

INSERT INTO `tb_bl` (`id_bl`, `num_bl`, `numbl_his`, `code_clt`, `nom_clt`, `point_vente`, `code_mag`, `designation_mag`, `total_kilo`, `date_bl`, `Total_bouteille`, `prix_livraison`, `Usager`, `statut_bl`, `livpart`) VALUES
(1, 'CCP-F14', 1, 'P1', 'PIKABE GAZ', 'pikabe cacaveli', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 249, '2022-08-06 11:38:30', 16, 3237, '1002', 1, 1),
(2, 'CCP-F14', 2, 'P1', 'PIKABE GAZ', 'pikabe cacaveli', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 37.5, '2022-08-06 12:16:59', 3, 487.5, '1002', 0, 0),
(3, 'CCP-F11', 3, 'M1', 'MILLA GAZ', 'MILA LIMOSINE', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 362.5, '2022-08-07 13:22:01', 29, 5437.5, '1002', 0, 0),
(4, 'CCR-F13', 4, 'KO', 'KOFFI DAPAONG GAZ', 'dapaong 3', 'PFBC', 'CONSIGNATION', 575, '2022-08-07 20:52:18', 90, 31625, '1002', 1, 1),
(5, 'CCR-F13', 5, 'KO', 'KOFFI DAPAONG GAZ', 'dapaong 3', 'PFBC', 'CONSIGNATION', 30, '2022-08-07 20:56:13', 5, 1650, '1002', 1, 0),
(6, 'CCR-F13', 6, 'KO', 'KOFFI DAPAONG GAZ', 'dapaong 3', 'PFBC', 'CONSIGNATION', 30, '2022-08-09 12:44:52', 5, 1650, '1002', 1, 0),
(7, 'CCP-F48', 7, 'I1', 'ISSAKA KARA 1', 'KARA1', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 27.5, '2022-08-09 21:14:10', 4, 1512.5, '1002', 1, 1),
(8, 'CCP-F49', 8, 'R0', 'REHOBOPH', 'ADAKPAME', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 237.5, '2022-08-10 08:34:05', 13, 3562.5, '1002', 1, 1),
(9, 'CCP-F38', 9, 'C1', 'CINKANCE MARO GAZ', 'CINKANCE FACE LYCEE', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 684, '2022-08-10 16:12:32', 41, 37620, '1002', 1, 1),
(10, 'CCP-F59', 10, 'MAR', 'MARGO GAZ', 'CAREFOUR MARGO', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 379, '2022-08-11 16:33:19', 35, 4927, '1002', 1, 0),
(11, 'CCP-F70', 11, 'M1', 'MILLA GAZ', 'MILA CACAVELI', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 187.5, '2022-08-12 06:26:30', 15, 2812.5, '1002', 1, 0),
(12, 'CCP-F131', 12, 'TI02', 'TIMBROWN GAZ', 'NAPOLEON1', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 297, '2022-08-15 16:26:40', 30, 4455, '1002', 1, 0),
(13, 'CCP-F165', 13, 'ME01', 'MEDE GAZ', 'SOGBOSITO', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 108, '2022-08-15 16:27:22', 18, 1404, '1002', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_bl_detail`
--

CREATE TABLE `tb_bl_detail` (
  `id_bl` int(11) NOT NULL,
  `num_bl` varchar(20) NOT NULL,
  `code_client` varchar(15) NOT NULL,
  `nom_Client` varchar(50) NOT NULL,
  `code_mag` varchar(20) NOT NULL,
  `designation_mag` varchar(100) NOT NULL,
  `code_art` varchar(20) NOT NULL,
  `designation_art` varchar(100) NOT NULL,
  `Kilo_art` double NOT NULL,
  `qte_art` int(11) NOT NULL,
  `qte_liv` int(11) NOT NULL,
  `kilo_total` double NOT NULL,
  `Controle` int(11) NOT NULL,
  `livpart` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_bl_detail`
--

INSERT INTO `tb_bl_detail` (`id_bl`, `num_bl`, `code_client`, `nom_Client`, `code_mag`, `designation_mag`, `code_art`, `designation_art`, `Kilo_art`, `qte_art`, `qte_liv`, `kilo_total`, `Controle`, `livpart`) VALUES
(1, 'CCP-F14', 'P1', 'PIKABE GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12.5, 16, 13, 37.5, 0, 1),
(2, 'CCP-F14', 'P1', 'PIKABE GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 6, 2, 2, 12, 0, 0),
(3, 'CCP-F14', 'P1', 'PIKABE GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C50', 'Charge gaz butane 50Kgs sodigaz', 50, 2, 2, 100, 0, 0),
(4, 'CCP-F14', 'P1', 'PIKABE GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C06E', 'Charge gaz butane 6kgs enora', 6, 2, 2, 12, 0, 0),
(5, 'CCP-F11', 'M1', 'MILLA GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12.5, 29, 29, 362.5, 0, 0),
(6, 'CCR-F13', 'KO', 'KOFFI DAPAONG GAZ', 'PFBC', 'CONSIGNATION', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 6, 80, 80, 30, 0, 0),
(7, 'CCR-F13', 'KO', 'KOFFI DAPAONG GAZ', 'PFBC', 'CONSIGNATION', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 12.5, 10, 10, 125, 0, 0),
(8, 'CCR-F13', 'KO', 'KOFFI DAPAONG GAZ', 'PFBC', 'CONSIGNATION', '02103K', 'Consignation gaz butane 3kgs sodigaz', 3, 10, 10, 30, 0, 0),
(9, 'CCP-F48', 'I1', 'ISSAKA KARA 1', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 45, 1, 6, 0, 1),
(10, 'CCP-F48', 'I1', 'ISSAKA KARA 1', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12.5, 20, 1, 12.5, 0, 1),
(11, 'CCP-F48', 'I1', 'ISSAKA KARA 1', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 6, 13, 1, 6, 0, 1),
(12, 'CCP-F48', 'I1', 'ISSAKA KARA 1', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C03', 'Charge gaz butane 3kgs sodigaz', 3, 20, 1, 3, 0, 1),
(13, 'CCP-F49', 'R0', 'REHOBOPH', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12.5, 11, 11, 137.5, 0, 0),
(14, 'CCP-F49', 'R0', 'REHOBOPH', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C50', 'Charge gaz butane 50Kgs sodigaz', 50, 2, 2, 100, 0, 0),
(15, 'CCP-F49', 'R0', 'REHOBOPH', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 7, 0, 0, 0, 1),
(16, 'CCP-F38', 'C1', 'CINKANCE MARO GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12.5, 22, 20, 250, 0, 1),
(17, 'CCP-F38', 'C1', 'CINKANCE MARO GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C50', 'Charge gaz butane 50Kgs sodigaz', 50, 7, 7, 350, 0, 0),
(18, 'CCP-F38', 'C1', 'CINKANCE MARO GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 14, 14, 84, 0, 0),
(19, 'CCP-F59', 'MAR', 'MARGO GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12.5, 26, 26, 325, 0, 0),
(20, 'CCP-F59', 'MAR', 'MARGO GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 7, 7, 42, 0, 0),
(21, 'CCP-F59', 'MAR', 'MARGO GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 6, 2, 2, 12, 0, 0),
(22, 'CCP-F70', 'M1', 'MILLA GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12.5, 15, 15, 187.5, 0, 0),
(23, 'CCP-F131', 'TI02', 'TIMBROWN GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12.5, 18, 18, 225, 0, 0),
(24, 'CCP-F131', 'TI02', 'TIMBROWN GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 12, 12, 72, 0, 0),
(25, 'CCP-F165', 'ME01', 'MEDE GAZ', 'PFGB', 'PRODUIT FINI GAZ BUTANE', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 6, 18, 18, 108, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_bl_his`
--

CREATE TABLE `tb_bl_his` (
  `id_bhis` int(11) NOT NULL,
  `num_blhis` int(11) DEFAULT NULL,
  `num_bl` varchar(20) DEFAULT NULL,
  `date_blhis` datetime DEFAULT NULL,
  `code_art` varchar(20) DEFAULT NULL,
  `designation_art` varchar(100) DEFAULT NULL,
  `qte_his` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_bl_his`
--

INSERT INTO `tb_bl_his` (`id_bhis`, `num_blhis`, `num_bl`, `date_blhis`, `code_art`, `designation_art`, `qte_his`) VALUES
(1, 1, 'CCP-F14', '2022-08-06 11:38:00', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10),
(2, 1, 'CCP-F14', '2022-08-06 11:38:00', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2),
(3, 1, 'CCP-F14', '2022-08-06 11:38:00', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2),
(4, 1, 'CCP-F14', '2022-08-06 11:38:00', '011C06E', 'Charge gaz butane 6kgs enora', 2),
(5, 2, 'CCP-F14', '2022-08-06 12:16:00', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 3),
(6, 3, 'CCP-F11', '2022-08-07 13:22:00', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 29),
(7, 4, 'CCR-F13', '2022-08-07 20:52:00', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 70),
(8, 4, 'CCR-F13', '2022-08-07 20:52:00', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 10),
(9, 4, 'CCR-F13', '2022-08-07 20:52:00', '02103K', 'Consignation gaz butane 3kgs sodigaz', 10),
(10, 5, 'CCR-F13', '2022-08-07 20:56:00', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 5),
(11, 6, 'CCR-F13', '2022-08-09 12:44:00', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 5),
(12, 7, 'CCP-F48', '2022-08-09 21:14:00', '011C06', 'Charge gaz butane 6kgs sodigaz', 1),
(13, 7, 'CCP-F48', '2022-08-09 21:14:00', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1),
(14, 7, 'CCP-F48', '2022-08-09 21:14:00', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 1),
(15, 7, 'CCP-F48', '2022-08-09 21:14:00', '011C03', 'Charge gaz butane 3kgs sodigaz', 1),
(16, 8, 'CCP-F49', '2022-08-10 08:34:00', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 11),
(17, 8, 'CCP-F49', '2022-08-10 08:34:00', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2),
(18, 8, 'CCP-F49', '2022-08-10 08:34:00', '011C06', 'Charge gaz butane 6kgs sodigaz', 0),
(19, 9, 'CCP-F38', '2022-08-10 16:12:00', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20),
(20, 9, 'CCP-F38', '2022-08-10 16:12:00', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7),
(21, 9, 'CCP-F38', '2022-08-10 16:12:00', '011C06', 'Charge gaz butane 6kgs sodigaz', 14),
(22, 10, 'CCP-F59', '2022-08-11 16:33:00', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26),
(23, 10, 'CCP-F59', '2022-08-11 16:33:00', '011C06', 'Charge gaz butane 6kgs sodigaz', 7),
(24, 10, 'CCP-F59', '2022-08-11 16:33:00', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2),
(25, 11, 'CCP-F70', '2022-08-12 06:26:00', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15),
(26, 12, 'CCP-F131', '2022-08-15 16:26:00', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 18),
(27, 12, 'CCP-F131', '2022-08-15 16:26:00', '011C06', 'Charge gaz butane 6kgs sodigaz', 12),
(28, 13, 'CCP-F165', '2022-08-15 16:27:00', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 18);

-- --------------------------------------------------------

--
-- Structure de la table `tb_boncom`
--

CREATE TABLE `tb_boncom` (
  `id_bc` int(11) NOT NULL,
  `date_bc` date DEFAULT NULL,
  `num_bc` int(11) DEFAULT NULL,
  `code_fourn` varchar(20) DEFAULT NULL,
  `nom_fourn` varchar(100) DEFAULT NULL,
  `montant_bc` double DEFAULT NULL,
  `user_init` varchar(6) DEFAULT NULL,
  `user_validate` varchar(6) DEFAULT NULL,
  `vehicule` varchar(15) DEFAULT NULL,
  `nom_vehicule` varchar(50) DEFAULT NULL,
  `statut_bc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_boncom`
--

INSERT INTO `tb_boncom` (`id_bc`, `date_bc`, `num_bc`, `code_fourn`, `nom_fourn`, `montant_bc`, `user_init`, `user_validate`, `vehicule`, `nom_vehicule`, `statut_bc`) VALUES
(1, '2022-08-06', 1, 'ZN01', 'ZENER SA | SODIGAZ', 3840000, '1002', '1002', 'TG 9562 AX', 'ISUZU 2', 0),
(2, '2022-08-06', 2, 'ZN01', 'ZENER SA | SODIGAZ', 2100000, '1002', '1002', 'TG 3240 BC', 'ISUZU 1', 0),
(3, '2022-08-12', 3, 'ZN01', 'ZENER SA | SODIGAZ', 15500000, '1002', '1002', 'TG 5583 BJ', 'ISUZU 3', 0),
(4, '2022-08-12', 4, 'ZN01', 'ZENER SA | SODIGAZ', 6031200, '1002', '1002', 'TG 6231 BF', 'ISUZU 1', 0),
(5, '2022-08-12', 5, 'ZN01', 'ZENER SA | SODIGAZ', 2868000, '1002', '1002', 'TG 9630 BH', 'ISUZU 2', 0),
(6, '2022-08-13', 6, 'ZN01', 'ZENER SA | SODIGAZ', 2215200, '1002', '1002', 'TG 6231 BF', 'ISUZU 1', 0),
(7, '2022-09-01', 7, 'ZN01', 'ZENER SA | SODIGAZ', 5494560, '1002', '1002', 'TG 1014 AV', 'PETER GAZ IZUSU 1', 0),
(8, '2022-09-01', 8, 'ZN01', 'ZENER SA | SODIGAZ', 860000, '1002', '1002', 'TG 9630 BH', 'ISUZU 2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_boncom_detail`
--

CREATE TABLE `tb_boncom_detail` (
  `id_bcd` int(11) NOT NULL,
  `num_bc` int(11) DEFAULT NULL,
  `code_art` varchar(20) DEFAULT NULL,
  `designation_art` varchar(100) DEFAULT NULL,
  `pu` double DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `pt` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_boncom_detail`
--

INSERT INTO `tb_boncom_detail` (`id_bcd`, `num_bc`, `code_art`, `designation_art`, `pu`, `qte`, `pt`) VALUES
(1, 1, '011C12E', 'Charge gaz butane 12,5kgs enora', 6000, 400, 2400000),
(2, 1, '011C50', 'Charge gaz butane 50Kgs sodigaz', 24000, 60, 1440000),
(3, 2, '011C50', 'Charge gaz butane 50Kgs sodigaz', 24000, 60, 1440000),
(4, 2, '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2880, 100, 288000),
(5, 2, '011C06', 'Charge gaz butane 6kgs sodigaz', 2880, 100, 288000),
(6, 2, '011C25', 'Charge gaz butane 25Kgs sodigaz', 12000, 7, 84000),
(7, 3, '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 31000, 500, 15500000),
(8, 4, '0250K', 'Consignation gaz butane 50Kgs sodigaz', 89000, 60, 5340000),
(9, 4, '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2880, 60, 172800),
(10, 4, '011C06', 'Charge gaz butane 6kgs sodigaz', 2880, 180, 518400),
(11, 5, '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6000, 416, 2496000),
(12, 5, '011C50', 'Charge gaz butane 50Kgs sodigaz', 24000, 12, 288000),
(13, 5, '011C25', 'Charge gaz butane 25Kgs sodigaz', 12000, 7, 84000),
(14, 6, '011C50', 'Charge gaz butane 50Kgs sodigaz', 24000, 60, 1440000),
(15, 6, '011C06', 'Charge gaz butane 6kgs sodigaz', 2880, 180, 518400),
(16, 6, '011C25', 'Charge gaz butane 25Kgs sodigaz', 12000, 7, 84000),
(17, 6, '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2880, 60, 172800),
(18, 7, '02106K', 'Bouteille de consignation de 6kgs sodigaz', 17880, 12, 214560),
(19, 7, '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 24000, 200, 4800000),
(20, 7, '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 6000, 80, 480000),
(21, 8, '021E12K', 'Bouteille de consignation de 12,5kgs enora', 31000, 20, 620000),
(22, 8, '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 24000, 10, 240000);

-- --------------------------------------------------------

--
-- Structure de la table `tb_caisse`
--

CREATE TABLE `tb_caisse` (
  `id_caisse` int(11) NOT NULL,
  `Num_compte` varchar(12) DEFAULT NULL,
  `nom_caisse` varchar(50) DEFAULT NULL,
  `solde` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_caisse`
--

INSERT INTO `tb_caisse` (`id_caisse`, `Num_compte`, `nom_caisse`, `solde`) VALUES
(1, '0000000001', 'CAISSE PRINCIPALE', 28432327),
(2, '1002000001', 'CAISSE 1002', 2000),
(3, '1001000001', 'CAISSE 1001', 0),
(4, '1003', 'CAISSE 1003', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_catalogue_caisse`
--

CREATE TABLE `tb_catalogue_caisse` (
  `id_cat` int(11) NOT NULL,
  `date_cat` date DEFAULT NULL,
  `compte_caisse` varchar(12) DEFAULT NULL,
  `solde_caisse` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_catalogue_caisse`
--

INSERT INTO `tb_catalogue_caisse` (`id_cat`, `date_cat`, `compte_caisse`, `solde_caisse`) VALUES
(1, '2022-08-04', '1002000001', -1366000),
(2, '2022-08-04', '1001000001', 420000),
(3, '2022-08-05', '1002000001', 0),
(4, '2022-08-05', '1001000001', 0),
(5, '2022-08-05', '1002000001', 734200),
(6, '2022-08-05', '1001000001', 0),
(7, '2022-08-05', '1002000001', 0),
(8, '2022-08-05', '1001000001', 0),
(9, '2022-08-05', '1002000001', 0),
(10, '2022-08-05', '1001000001', 0),
(11, '2022-08-05', '1002000001', 0),
(12, '2022-08-05', '1001000001', 0),
(13, '2022-08-05', '1002000001', -15000),
(14, '2022-08-05', '1001000001', 0),
(15, '2022-08-05', '1002000001', 0),
(16, '2022-08-05', '1001000001', 0),
(17, '2022-08-06', '1002000001', 155520),
(18, '2022-08-06', '1001000001', 0),
(19, '2022-08-06', '1002000001', -865000),
(20, '2022-08-06', '1001000001', 0),
(21, '2022-08-06', '1002000001', 1492080),
(22, '2022-08-06', '1001000001', -420000),
(23, '2022-08-06', '1002000001', 0),
(24, '2022-08-06', '1001000001', 0),
(25, '2022-08-07', '1002000001', 1814800),
(26, '2022-08-07', '1001000001', 0),
(27, '2022-08-07', '1002000001', 0),
(28, '2022-08-07', '1001000001', 0),
(29, '2022-08-08', '1002000001', 424200),
(30, '2022-08-08', '1001000001', 0),
(31, '2022-08-08', '1002000001', 0),
(32, '2022-08-08', '1001000001', 0),
(33, '2022-08-09', '1002000001', 3880000),
(34, '2022-08-09', '1001000001', 0),
(35, '2022-08-09', '1002000001', 0),
(36, '2022-08-09', '1001000001', 0),
(37, '2022-08-10', '1002000001', 90320),
(38, '2022-08-10', '1001000001', 0),
(39, '2022-08-10', '1002000001', 0),
(40, '2022-08-10', '1001000001', 0),
(41, '2022-08-11', '1002000001', 7068893),
(42, '2022-08-11', '1001000001', 0),
(43, '2022-08-11', '1002000001', -894000),
(44, '2022-08-11', '1001000001', 0),
(45, '2022-08-11', '1002000001', 0),
(46, '2022-08-11', '1001000001', 0),
(47, '2022-08-12', '1002000001', -9092380),
(48, '2022-08-12', '1001000001', 0),
(49, '2022-08-12', '1002000001', 168000),
(50, '2022-08-12', '1001000001', 0),
(51, '2022-08-12', '1002000001', 0),
(52, '2022-08-12', '1001000001', 0),
(53, '2022-08-13', '1002000001', 2079600),
(54, '2022-08-13', '1001000001', 0),
(55, '2022-08-13', '1002000001', 146356),
(56, '2022-08-13', '1001000001', 0),
(57, '2022-08-13', '1002000001', 0),
(58, '2022-08-13', '1001000001', 0),
(59, '2022-08-13', '1002000001', 0),
(60, '2022-08-13', '1001000001', 0),
(61, '2022-08-14', '1002000001', 1662946),
(62, '2022-08-14', '1001000001', 0),
(63, '2022-08-14', '1002000001', 0),
(64, '2022-08-14', '1001000001', 0),
(65, '2022-08-14', '1002000001', 0),
(66, '2022-08-14', '1001000001', 0),
(67, '2022-08-14', '1002000001', 0),
(68, '2022-08-14', '1001000001', 0),
(69, '2022-08-15', '1002000001', 18128550),
(70, '2022-08-15', '1001000001', 0),
(71, '2022-08-15', '1002000001', 0),
(72, '2022-08-15', '1001000001', 0),
(73, '2022-08-15', '1002000001', 684980),
(74, '2022-08-15', '1001000001', 0),
(75, '2022-08-15', '1002000001', 0),
(76, '2022-08-15', '1001000001', 0),
(77, '2022-08-16', '1002000001', 1933142),
(78, '2022-08-16', '1001000001', 0),
(79, '2022-08-17', '1002000001', 0),
(80, '2022-08-17', '1001000001', 0),
(81, '2022-08-18', '1002000001', 0),
(82, '2022-08-18', '1001000001', 0),
(83, '2022-08-19', '1002000001', 0),
(84, '2022-08-19', '1001000001', 0),
(85, '2022-08-20', '1002000001', 0),
(86, '2022-08-20', '1001000001', 0),
(87, '2022-08-21', '1002000001', 0),
(88, '2022-08-21', '1001000001', 0),
(89, '2022-08-22', '1002000001', 201120),
(90, '2022-08-22', '1001000001', 0),
(91, '2022-08-23', '1002000001', 0),
(92, '2022-08-23', '1001000001', 0),
(93, '2022-08-24', '1002000001', 0),
(94, '2022-08-24', '1001000001', 0),
(95, '2022-08-25', '1002000001', 0),
(96, '2022-08-25', '1001000001', 0),
(97, '2022-08-26', '1002000001', 0),
(98, '2022-08-26', '1001000001', 0),
(99, '2022-08-27', '1002000001', 0),
(100, '2022-08-27', '1001000001', 0),
(101, '2022-08-28', '1002000001', 0),
(102, '2022-08-28', '1001000001', 0),
(103, '2022-08-29', '1002000001', 0),
(104, '2022-08-29', '1001000001', 0),
(105, '2022-08-30', '1002000001', 0),
(106, '2022-08-30', '1001000001', 0),
(107, '2022-08-31', '1002000001', 0),
(108, '2022-08-31', '1001000001', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_catalogue_date`
--

CREATE TABLE `tb_catalogue_date` (
  `id_cd` int(11) NOT NULL,
  `date_cd` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_catalogue_date`
--

INSERT INTO `tb_catalogue_date` (`id_cd`, `date_cd`) VALUES
(1, '2022-09-01');

-- --------------------------------------------------------

--
-- Structure de la table `tb_catalogue_stock`
--

CREATE TABLE `tb_catalogue_stock` (
  `id_cs` int(11) NOT NULL,
  `date_cs` date DEFAULT NULL,
  `code_art` varchar(30) DEFAULT NULL,
  `qte_vide` int(11) DEFAULT NULL,
  `qte_mag` int(11) DEFAULT NULL,
  `qte_totale` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_catalogue_stock`
--

INSERT INTO `tb_catalogue_stock` (`id_cs`, `date_cs`, `code_art`, `qte_vide`, `qte_mag`, `qte_totale`) VALUES
(1, '2022-08-04', '011C03.', 0, 0, 0),
(2, '2022-08-04', '011C03', 0, 0, 0),
(3, '2022-08-04', '011C06', 0, 0, 0),
(4, '2022-08-04', '011C06.', 120, 0, 120),
(5, '2022-08-04', '011C12', 421, 879, 1300),
(6, '2022-08-04', '011C50', 340, 0, 340),
(7, '2022-08-04', '011C25', 70, 0, 70),
(8, '2022-08-04', '011C06E', 80, 0, 80),
(9, '2022-08-04', '011C12E', 0, 0, 0),
(10, '2022-08-04', '02103K.', 33, 0, 33),
(11, '2022-08-04', '02103K', 0, 0, 0),
(12, '2022-08-04', '02106K', 320, 0, 320),
(13, '2022-08-04', '02106K.', 0, 0, 0),
(14, '2022-08-04', '02112K', 0, 0, 0),
(15, '2022-08-04', '0250K', 0, 0, 0),
(16, '2022-08-04', '02125K', 0, 0, 0),
(17, '2022-08-04', '021E6K', 0, 0, 0),
(18, '2022-08-04', '021E12K', 0, 0, 0),
(19, '2022-08-05', '011C03.', 0, 0, 0),
(20, '2022-08-05', '011C03', 23, 10, 33),
(21, '2022-08-05', '011C06', 430, 210, 640),
(22, '2022-08-05', '011C06.', -140, 260, 120),
(23, '2022-08-05', '011C12', -320, 1620, 1300),
(24, '2022-08-05', '011C50', 313, 27, 340),
(25, '2022-08-05', '011C25', 66, 4, 70),
(26, '2022-08-05', '011C06E', 80, 0, 80),
(27, '2022-08-05', '011C12E', 0, 0, 0),
(28, '2022-08-05', '02103K.', 33, 0, 33),
(29, '2022-08-05', '02103K', 0, 0, 0),
(30, '2022-08-05', '02106K', 320, 0, 320),
(31, '2022-08-05', '02106K.', 0, 0, 0),
(32, '2022-08-05', '02112K', 0, 0, 0),
(33, '2022-08-05', '0250K', 0, 0, 0),
(34, '2022-08-05', '02125K', 0, 0, 0),
(35, '2022-08-05', '021E6K', 0, 0, 0),
(36, '2022-08-05', '021E12K', 0, 0, 0),
(37, '2022-08-06', '011C03.', 0, 0, 0),
(38, '2022-08-06', '011C03', 23, 10, 33),
(39, '2022-08-06', '011C06', 539, 101, 640),
(40, '2022-08-06', '011C06.', -138, 258, 120),
(41, '2022-08-06', '011C12', -100, 1400, 1300),
(42, '2022-08-06', '011C50', 324, 16, 340),
(43, '2022-08-06', '011C25', 64, 6, 70),
(44, '2022-08-06', '011C06E', 82, -2, 80),
(45, '2022-08-06', '011C12E', 0, 0, 0),
(46, '2022-08-06', '02103K.', 33, 0, 33),
(47, '2022-08-06', '02103K', 0, -10, -10),
(48, '2022-08-06', '02106K', 320, 0, 320),
(49, '2022-08-06', '02106K.', 0, -101, -101),
(50, '2022-08-06', '02112K', 0, -190, -190),
(51, '2022-08-06', '0250K', 0, -2, -2),
(52, '2022-08-06', '02125K', 0, -2, -2),
(53, '2022-08-06', '021E6K', 0, 0, 0),
(54, '2022-08-06', '021E12K', 0, 0, 0),
(55, '2022-08-07', '011C03.', 0, 0, 0),
(56, '2022-08-07', '011C03', 33, 0, 33),
(57, '2022-08-07', '011C06', 539, 101, 640),
(58, '2022-08-07', '011C06.', -138, 258, 120),
(59, '2022-08-07', '011C12', -100, 1400, 1300),
(60, '2022-08-07', '011C50', 325, 15, 340),
(61, '2022-08-07', '011C25', 64, 6, 70),
(62, '2022-08-07', '011C06E', 82, -2, 80),
(63, '2022-08-07', '011C12E', 0, 0, 0),
(64, '2022-08-07', '02103K.', 33, 0, 33),
(65, '2022-08-07', '02103K', 0, -10, -10),
(66, '2022-08-07', '02106K', 320, 0, 320),
(67, '2022-08-07', '02106K.', 0, -101, -101),
(68, '2022-08-07', '02112K', 0, -190, -190),
(69, '2022-08-07', '0250K', 0, -2, -2),
(70, '2022-08-07', '02125K', 0, -2, -2),
(71, '2022-08-07', '021E6K', 0, 0, 0),
(72, '2022-08-07', '021E12K', 0, 0, 0),
(73, '2022-08-08', '011C03.', 0, 0, 0),
(74, '2022-08-08', '011C03', 33, 0, 33),
(75, '2022-08-08', '011C06', 572, 68, 640),
(76, '2022-08-08', '011C06.', -122, 242, 120),
(77, '2022-08-08', '011C12', 93, 1207, 1300),
(78, '2022-08-08', '011C50', 338, 2, 340),
(79, '2022-08-08', '011C25', 66, 4, 70),
(80, '2022-08-08', '011C06E', 82, -2, 80),
(81, '2022-08-08', '011C12E', 0, 0, 0),
(82, '2022-08-08', '02103K.', 33, 0, 33),
(83, '2022-08-08', '02103K', 0, -10, -10),
(84, '2022-08-08', '02106K', 320, 0, 320),
(85, '2022-08-08', '02106K.', 0, -101, -101),
(86, '2022-08-08', '02112K', 0, -190, -190),
(87, '2022-08-08', '0250K', 0, -2, -2),
(88, '2022-08-08', '02125K', 0, -2, -2),
(89, '2022-08-08', '021E6K', 0, 0, 0),
(90, '2022-08-08', '021E12K', 0, 0, 0),
(91, '2022-08-09', '011C03.', 0, 0, 0),
(92, '2022-08-09', '011C03', 57, -24, 33),
(93, '2022-08-09', '011C06', 387, 253, 640),
(94, '2022-08-09', '011C06.', -87, 207, 120),
(95, '2022-08-09', '011C12', -1215, 2515, 1300),
(96, '2022-08-09', '011C50', 230, 110, 340),
(97, '2022-08-09', '011C25', 47, 23, 70),
(98, '2022-08-09', '011C06E', 82, -2, 80),
(99, '2022-08-09', '011C12E', 0, 0, 0),
(100, '2022-08-09', '02103K.', 33, 0, 33),
(101, '2022-08-09', '02103K', 0, -10, -10),
(102, '2022-08-09', '02106K', 0, -18, -18),
(103, '2022-08-09', '02106K.', 0, -101, -101),
(104, '2022-08-09', '02112K', 0, -190, -190),
(105, '2022-08-09', '0250K', 0, -2, -2),
(106, '2022-08-09', '02125K', 0, -2, -2),
(107, '2022-08-09', '021E6K', 0, 0, 0),
(108, '2022-08-09', '021E12K', 0, 0, 0),
(109, '2022-08-09', 'BR01', 0, 0, 0),
(110, '2022-08-09', 'BRU  A', 0, 0, 0),
(111, '2022-08-09', 'BRU 3', 0, 0, 0),
(112, '2022-08-10', '011C03.', 0, 0, 0),
(113, '2022-08-10', '011C03', 57, -24, 33),
(114, '2022-08-10', '011C06', 390, 250, 640),
(115, '2022-08-10', '011C06.', -213, 333, 120),
(116, '2022-08-10', '011C12', -2096, 3396, 1300),
(117, '2022-08-10', '011C50', 184, 156, 340),
(118, '2022-08-10', '011C25', 33, 37, 70),
(119, '2022-08-10', '011C06E', 82, -2, 80),
(120, '2022-08-10', '011C12E', 0, 0, 0),
(121, '2022-08-10', '02103K.', 33, 0, 33),
(122, '2022-08-10', '02103K', 0, -10, -10),
(123, '2022-08-10', '02106K', 0, -18, -18),
(124, '2022-08-10', '02106K.', 0, -101, -101),
(125, '2022-08-10', '02112K', 0, -190, -190),
(126, '2022-08-10', '0250K', 0, -2, -2),
(127, '2022-08-10', '02125K', 0, -2, -2),
(128, '2022-08-10', '021E6K', 0, 0, 0),
(129, '2022-08-10', '021E12K', 0, 0, 0),
(130, '2022-08-10', 'BR01', 0, 0, 0),
(131, '2022-08-10', 'BRU  A', 0, 0, 0),
(132, '2022-08-10', 'BRU 3', 0, 0, 0),
(133, '2022-08-11', '011C03.', 0, 0, 0),
(134, '2022-08-11', '011C03', 57, -24, 33),
(135, '2022-08-11', '011C06', 405, 235, 640),
(136, '2022-08-11', '011C06.', -211, 331, 120),
(137, '2022-08-11', '011C12', -1791, 3091, 1300),
(138, '2022-08-11', '011C50', 188, 152, 340),
(139, '2022-08-11', '011C25', 33, 37, 70),
(140, '2022-08-11', '011C06E', 82, -2, 80),
(141, '2022-08-11', '011C12E', 0, 0, 0),
(142, '2022-08-11', '02103K.', 33, 0, 33),
(143, '2022-08-11', '02103K', 0, -10, -10),
(144, '2022-08-11', '02106K', 0, -18, -18),
(145, '2022-08-11', '02106K.', 0, -101, -101),
(146, '2022-08-11', '02112K', 0, -190, -190),
(147, '2022-08-11', '0250K', 0, -2, -2),
(148, '2022-08-11', '02125K', 0, -2, -2),
(149, '2022-08-11', '021E6K', 0, 0, 0),
(150, '2022-08-11', '021E12K', 0, 0, 0),
(151, '2022-08-11', 'BR01', 0, 0, 0),
(152, '2022-08-11', 'BRU  A', 0, 0, 0),
(153, '2022-08-11', 'BRU 3', 0, 0, 0),
(154, '2022-08-12', '011C03.', 0, 0, 0),
(155, '2022-08-12', '011C03', 63, -30, 33),
(156, '2022-08-12', '011C06', 305, 335, 640),
(157, '2022-08-12', '011C06.', -187, 307, 120),
(158, '2022-08-12', '011C12', -2069, 3369, 1300),
(159, '2022-08-12', '011C50', 177, 163, 340),
(160, '2022-08-12', '011C25', 21, 49, 70),
(161, '2022-08-12', '011C06E', 82, -2, 80),
(162, '2022-08-12', '011C12E', 2, -2, 0),
(163, '2022-08-12', '02103K.', 33, 0, 33),
(164, '2022-08-12', '02103K', 0, -10, -10),
(165, '2022-08-12', '02106K', 0, -18, -18),
(166, '2022-08-12', '02106K.', 0, -80, -80),
(167, '2022-08-12', '02112K', 0, -10, -10),
(168, '2022-08-12', '0250K', 0, -1, -1),
(169, '2022-08-12', '02125K', 0, 0, 0),
(170, '2022-08-12', '021E6K', 0, 0, 0),
(171, '2022-08-12', '021E12K', 0, 0, 0),
(172, '2022-08-12', 'BR01', 0, 0, 0),
(173, '2022-08-12', 'BRU  A', 0, 0, 0),
(174, '2022-08-12', 'BRU 3', 0, 0, 0),
(175, '2022-08-13', '011C03.', 2, -2, 0),
(176, '2022-08-13', '011C03', 64, -31, 33),
(177, '2022-08-13', '011C06', 173, 467, 640),
(178, '2022-08-13', '011C06.', -224, 344, 120),
(179, '2022-08-13', '011C12', -2984, 4284, 1300),
(180, '2022-08-13', '011C50', 97, 243, 340),
(181, '2022-08-13', '011C25', 7, 63, 70),
(182, '2022-08-13', '011C06E', 82, -2, 80),
(183, '2022-08-13', '011C12E', 2, -2, 0),
(184, '2022-08-13', '02103K.', 33, 0, 33),
(185, '2022-08-13', '02103K', 0, -10, -10),
(186, '2022-08-13', '02106K', 0, -18, -18),
(187, '2022-08-13', '02106K.', 0, -80, -80),
(188, '2022-08-13', '02112K', 0, -10, -10),
(189, '2022-08-13', '0250K', 0, -1, -1),
(190, '2022-08-13', '02125K', 0, 0, 0),
(191, '2022-08-13', '021E6K', 0, 0, 0),
(192, '2022-08-13', '021E12K', 0, 0, 0),
(193, '2022-08-13', 'BR01', 0, 0, 0),
(194, '2022-08-13', 'BRU  A', 0, 0, 0),
(195, '2022-08-13', 'BRU 3', 0, 0, 0),
(196, '2022-08-13', 'FOC001', 0, 0, 0),
(197, '2022-08-13', 'FOA002', 0, 0, 0),
(198, '2022-08-13', 'FOCRO', 0, 0, 0),
(199, '2022-08-13', 'FOAG', 0, 0, 0),
(200, '2022-08-14', '011C03.', 2, -2, 0),
(201, '2022-08-14', '011C03', 67, -34, 33),
(202, '2022-08-14', '011C06', 257, 383, 640),
(203, '2022-08-14', '011C06.', -193, 313, 120),
(204, '2022-08-14', '011C12', -2679, 3979, 1300),
(205, '2022-08-14', '011C50', 112, 228, 340),
(206, '2022-08-14', '011C25', 9, 61, 70),
(207, '2022-08-14', '011C06E', 112, -32, 80),
(208, '2022-08-14', '011C12E', 2, -2, 0),
(209, '2022-08-14', '02103K.', 33, 0, 33),
(210, '2022-08-14', '02103K', 0, -10, -10),
(211, '2022-08-14', '02106K', 0, -18, -18),
(212, '2022-08-14', '02106K.', 0, -80, -80),
(213, '2022-08-14', '02112K', 0, -10, -10),
(214, '2022-08-14', '0250K', 0, -1, -1),
(215, '2022-08-14', '02125K', 0, 0, 0),
(216, '2022-08-14', '021E6K', 0, 0, 0),
(217, '2022-08-14', '021E12K', 0, 0, 0),
(218, '2022-08-14', 'BR01', 0, -100, -100),
(219, '2022-08-14', 'BRU  A', 0, -30, -30),
(220, '2022-08-14', 'BRU 3', 0, 0, 0),
(221, '2022-08-14', 'FOC001', 0, 0, 0),
(222, '2022-08-14', 'FOA002', 0, 0, 0),
(223, '2022-08-14', 'FOCRO', 0, 0, 0),
(224, '2022-08-14', 'FOAG', 0, 0, 0),
(225, '2022-08-15', '011C03.', 2, -2, 0),
(226, '2022-08-15', '011C03', 73, -40, 33),
(227, '2022-08-15', '011C06', 40, 600, 640),
(228, '2022-08-15', '011C06.', -176, 296, 120),
(229, '2022-08-15', '011C12', -2914, 4214, 1300),
(230, '2022-08-15', '011C50', 147, 193, 340),
(231, '2022-08-15', '011C25', 14, 56, 70),
(232, '2022-08-15', '011C06E', 82, -2, 80),
(233, '2022-08-15', '011C12E', 2, -2, 0),
(234, '2022-08-15', '02103K.', 33, 0, 33),
(235, '2022-08-15', '02103K', 0, -10, -10),
(236, '2022-08-15', '02106K', 0, -18, -18),
(237, '2022-08-15', '02106K.', 0, -80, -80),
(238, '2022-08-15', '02112K', 0, -10, -10),
(239, '2022-08-15', '0250K', 0, -1, -1),
(240, '2022-08-15', '02125K', 0, 0, 0),
(241, '2022-08-15', '021E6K', 0, 0, 0),
(242, '2022-08-15', '021E12K', 0, 0, 0),
(243, '2022-08-15', 'BR01', 0, -300, -300),
(244, '2022-08-15', 'BRU  A', 0, -65, -65),
(245, '2022-08-15', 'BRU 3', 0, -20, -20),
(246, '2022-08-15', 'FOC001', 0, 0, 0),
(247, '2022-08-15', 'FOA002', 0, 0, 0),
(248, '2022-08-15', 'FOCRO', 0, 0, 0),
(249, '2022-08-15', 'FOAG', 0, 0, 0),
(250, '2022-08-16', '011C03.', 0, 0, 0),
(251, '2022-08-16', '011C03', 70, -37, 33),
(252, '2022-08-16', '011C06', 70, 570, 640),
(253, '2022-08-16', '011C06.', -178, 298, 120),
(254, '2022-08-16', '011C12', -2803, 4103, 1300),
(255, '2022-08-16', '011C50', 163, 177, 340),
(256, '2022-08-16', '011C25', 16, 54, 70),
(257, '2022-08-16', '011C06E', 82, -2, 80),
(258, '2022-08-16', '011C12E', 6, -6, 0),
(259, '2022-08-16', '02103K.', 33, 0, 33),
(260, '2022-08-16', '02103K', 0, -10, -10),
(261, '2022-08-16', '02106K', 0, -18, -18),
(262, '2022-08-16', '02106K.', 0, -80, -80),
(263, '2022-08-16', '02112K', 0, -10, -10),
(264, '2022-08-16', '0250K', 0, -1, -1),
(265, '2022-08-16', '02125K', 0, 0, 0),
(266, '2022-08-16', '021E6K', 0, 0, 0),
(267, '2022-08-16', '021E12K', 0, 0, 0),
(268, '2022-08-16', 'BR01', 0, -300, -300),
(269, '2022-08-16', 'BRU  A', 0, -65, -65),
(270, '2022-08-16', 'BRU 3', 0, -20, -20),
(271, '2022-08-16', 'FOC001', 0, 0, 0),
(272, '2022-08-16', 'FOA002', 0, 0, 0),
(273, '2022-08-16', 'FOCRO', 0, 0, 0),
(274, '2022-08-16', 'FOAG', 0, 0, 0),
(275, '2022-08-17', '011C03.', 0, 0, 0),
(276, '2022-08-17', '011C03', 70, -37, 33),
(277, '2022-08-17', '011C06', 70, 570, 640),
(278, '2022-08-17', '011C06.', -178, 298, 120),
(279, '2022-08-17', '011C12', -2803, 4103, 1300),
(280, '2022-08-17', '011C50', 163, 177, 340),
(281, '2022-08-17', '011C25', 16, 54, 70),
(282, '2022-08-17', '011C06E', 82, -2, 80),
(283, '2022-08-17', '011C12E', 6, -6, 0),
(284, '2022-08-17', '02103K.', 33, 0, 33),
(285, '2022-08-17', '02103K', 0, -10, -10),
(286, '2022-08-17', '02106K', 0, -18, -18),
(287, '2022-08-17', '02106K.', 0, -80, -80),
(288, '2022-08-17', '02112K', 0, -10, -10),
(289, '2022-08-17', '0250K', 0, -1, -1),
(290, '2022-08-17', '02125K', 0, 0, 0),
(291, '2022-08-17', '021E6K', 0, 0, 0),
(292, '2022-08-17', '021E12K', 0, 0, 0),
(293, '2022-08-17', 'BR01', 0, -300, -300),
(294, '2022-08-17', 'BRU  A', 0, -65, -65),
(295, '2022-08-17', 'BRU 3', 0, -20, -20),
(296, '2022-08-17', 'FOC001', 0, 0, 0),
(297, '2022-08-17', 'FOA002', 0, 0, 0),
(298, '2022-08-17', 'FOCRO', 0, 0, 0),
(299, '2022-08-17', 'FOAG', 0, 0, 0),
(300, '2022-08-18', '011C03.', 0, 0, 0),
(301, '2022-08-18', '011C03', 70, -37, 33),
(302, '2022-08-18', '011C06', 70, 570, 640),
(303, '2022-08-18', '011C06.', -178, 298, 120),
(304, '2022-08-18', '011C12', -2803, 4103, 1300),
(305, '2022-08-18', '011C50', 163, 177, 340),
(306, '2022-08-18', '011C25', 16, 54, 70),
(307, '2022-08-18', '011C06E', 82, -2, 80),
(308, '2022-08-18', '011C12E', 6, -6, 0),
(309, '2022-08-18', '02103K.', 33, 0, 33),
(310, '2022-08-18', '02103K', 0, -10, -10),
(311, '2022-08-18', '02106K', 0, -18, -18),
(312, '2022-08-18', '02106K.', 0, -80, -80),
(313, '2022-08-18', '02112K', 0, -10, -10),
(314, '2022-08-18', '0250K', 0, -1, -1),
(315, '2022-08-18', '02125K', 0, 0, 0),
(316, '2022-08-18', '021E6K', 0, 0, 0),
(317, '2022-08-18', '021E12K', 0, 0, 0),
(318, '2022-08-18', 'BR01', 0, -300, -300),
(319, '2022-08-18', 'BRU  A', 0, -65, -65),
(320, '2022-08-18', 'BRU 3', 0, -20, -20),
(321, '2022-08-18', 'FOC001', 0, 0, 0),
(322, '2022-08-18', 'FOA002', 0, 0, 0),
(323, '2022-08-18', 'FOCRO', 0, 0, 0),
(324, '2022-08-18', 'FOAG', 0, 0, 0),
(325, '2022-08-19', '011C03.', 0, 0, 0),
(326, '2022-08-19', '011C03', 70, -37, 33),
(327, '2022-08-19', '011C06', 70, 570, 640),
(328, '2022-08-19', '011C06.', -178, 298, 120),
(329, '2022-08-19', '011C12', -2803, 4103, 1300),
(330, '2022-08-19', '011C50', 163, 177, 340),
(331, '2022-08-19', '011C25', 16, 54, 70),
(332, '2022-08-19', '011C06E', 82, -2, 80),
(333, '2022-08-19', '011C12E', 6, -6, 0),
(334, '2022-08-19', '02103K.', 33, 0, 33),
(335, '2022-08-19', '02103K', 0, -10, -10),
(336, '2022-08-19', '02106K', 0, -18, -18),
(337, '2022-08-19', '02106K.', 0, -80, -80),
(338, '2022-08-19', '02112K', 0, -10, -10),
(339, '2022-08-19', '0250K', 0, -1, -1),
(340, '2022-08-19', '02125K', 0, 0, 0),
(341, '2022-08-19', '021E6K', 0, 0, 0),
(342, '2022-08-19', '021E12K', 0, 0, 0),
(343, '2022-08-19', 'BR01', 0, -300, -300),
(344, '2022-08-19', 'BRU  A', 0, -65, -65),
(345, '2022-08-19', 'BRU 3', 0, -20, -20),
(346, '2022-08-19', 'FOC001', 0, 0, 0),
(347, '2022-08-19', 'FOA002', 0, 0, 0),
(348, '2022-08-19', 'FOCRO', 0, 0, 0),
(349, '2022-08-19', 'FOAG', 0, 0, 0),
(350, '2022-08-20', '011C03.', 0, 0, 0),
(351, '2022-08-20', '011C03', 70, -37, 33),
(352, '2022-08-20', '011C06', 70, 570, 640),
(353, '2022-08-20', '011C06.', -178, 298, 120),
(354, '2022-08-20', '011C12', -2803, 4103, 1300),
(355, '2022-08-20', '011C50', 163, 177, 340),
(356, '2022-08-20', '011C25', 16, 54, 70),
(357, '2022-08-20', '011C06E', 82, -2, 80),
(358, '2022-08-20', '011C12E', 6, -6, 0),
(359, '2022-08-20', '02103K.', 33, 0, 33),
(360, '2022-08-20', '02103K', 0, -10, -10),
(361, '2022-08-20', '02106K', 0, -18, -18),
(362, '2022-08-20', '02106K.', 0, -80, -80),
(363, '2022-08-20', '02112K', 0, -10, -10),
(364, '2022-08-20', '0250K', 0, -1, -1),
(365, '2022-08-20', '02125K', 0, 0, 0),
(366, '2022-08-20', '021E6K', 0, 0, 0),
(367, '2022-08-20', '021E12K', 0, 0, 0),
(368, '2022-08-20', 'BR01', 0, -300, -300),
(369, '2022-08-20', 'BRU  A', 0, -65, -65),
(370, '2022-08-20', 'BRU 3', 0, -20, -20),
(371, '2022-08-20', 'FOC001', 0, 0, 0),
(372, '2022-08-20', 'FOA002', 0, 0, 0),
(373, '2022-08-20', 'FOCRO', 0, 0, 0),
(374, '2022-08-20', 'FOAG', 0, 0, 0),
(375, '2022-08-21', '011C03.', 0, 0, 0),
(376, '2022-08-21', '011C03', 70, -37, 33),
(377, '2022-08-21', '011C06', 70, 570, 640),
(378, '2022-08-21', '011C06.', -178, 298, 120),
(379, '2022-08-21', '011C12', -2792, 4103, 1311),
(380, '2022-08-21', '011C50', 173, 177, 350),
(381, '2022-08-21', '011C25', 16, 54, 70),
(382, '2022-08-21', '011C06E', 82, -2, 80),
(383, '2022-08-21', '011C12E', 6, -6, 0),
(384, '2022-08-21', '02103K.', 33, 0, 33),
(385, '2022-08-21', '02103K', 0, -10, -10),
(386, '2022-08-21', '02106K', 0, -18, -18),
(387, '2022-08-21', '02106K.', 0, -80, -80),
(388, '2022-08-21', '02112K', 0, -10, -10),
(389, '2022-08-21', '0250K', 0, -1, -1),
(390, '2022-08-21', '02125K', 0, 0, 0),
(391, '2022-08-21', '021E6K', 0, 0, 0),
(392, '2022-08-21', '021E12K', 0, 0, 0),
(393, '2022-08-21', 'BR01', 0, -300, -300),
(394, '2022-08-21', 'BRU  A', 0, -65, -65),
(395, '2022-08-21', 'BRU 3', 0, -20, -20),
(396, '2022-08-21', 'FOC001', 0, 0, 0),
(397, '2022-08-21', 'FOA002', 0, 0, 0),
(398, '2022-08-21', 'FOCRO', 0, 0, 0),
(399, '2022-08-21', 'FOAG', 0, 0, 0),
(400, '2022-08-22', '011C03.', 0, 0, 0),
(401, '2022-08-22', '011C03', 70, -37, 33),
(402, '2022-08-22', '011C06', 70, 570, 640),
(403, '2022-08-22', '011C06.', -178, 298, 120),
(404, '2022-08-22', '011C12', -2792, 4103, 1311),
(405, '2022-08-22', '011C50', 173, 177, 350),
(406, '2022-08-22', '011C25', 16, 54, 70),
(407, '2022-08-22', '011C06E', 82, -2, 80),
(408, '2022-08-22', '011C12E', 6, -6, 0),
(409, '2022-08-22', '02103K.', 33, 0, 33),
(410, '2022-08-22', '02103K', 0, -10, -10),
(411, '2022-08-22', '02106K', 0, -18, -18),
(412, '2022-08-22', '02106K.', 0, -80, -80),
(413, '2022-08-22', '02112K', 0, -10, -10),
(414, '2022-08-22', '0250K', 0, -1, -1),
(415, '2022-08-22', '02125K', 0, 0, 0),
(416, '2022-08-22', '021E6K', 0, 0, 0),
(417, '2022-08-22', '021E12K', 0, 0, 0),
(418, '2022-08-22', 'BR01', 0, -300, -300),
(419, '2022-08-22', 'BRU  A', 0, -65, -65),
(420, '2022-08-22', 'BRU 3', 0, -20, -20),
(421, '2022-08-22', 'FOC001', 0, 0, 0),
(422, '2022-08-22', 'FOA002', 0, 0, 0),
(423, '2022-08-22', 'FOCRO', 0, 0, 0),
(424, '2022-08-22', 'FOAG', 0, 0, 0),
(425, '2022-08-23', '011C03.', 0, 0, 0),
(426, '2022-08-23', '011C03', 70, -37, 33),
(427, '2022-08-23', '011C06', 70, 570, 640),
(428, '2022-08-23', '011C06.', -178, 298, 120),
(429, '2022-08-23', '011C12', -2792, 4103, 1311),
(430, '2022-08-23', '011C50', 173, 177, 350),
(431, '2022-08-23', '011C25', 16, 54, 70),
(432, '2022-08-23', '011C06E', 82, -2, 80),
(433, '2022-08-23', '011C12E', 6, -6, 0),
(434, '2022-08-23', '02103K.', 33, 0, 33),
(435, '2022-08-23', '02103K', 0, -10, -10),
(436, '2022-08-23', '02106K', 0, -18, -18),
(437, '2022-08-23', '02106K.', 0, -80, -80),
(438, '2022-08-23', '02112K', 0, -10, -10),
(439, '2022-08-23', '0250K', 0, -1, -1),
(440, '2022-08-23', '02125K', 0, 0, 0),
(441, '2022-08-23', '021E6K', 0, 0, 0),
(442, '2022-08-23', '021E12K', 0, 0, 0),
(443, '2022-08-23', 'BR01', 0, -300, -300),
(444, '2022-08-23', 'BRU  A', 0, -65, -65),
(445, '2022-08-23', 'BRU 3', 0, -20, -20),
(446, '2022-08-23', 'FOC001', 0, 0, 0),
(447, '2022-08-23', 'FOA002', 0, 0, 0),
(448, '2022-08-23', 'FOCRO', 0, 0, 0),
(449, '2022-08-23', 'FOAG', 0, 0, 0),
(450, '2022-08-24', '011C03.', 0, 0, 0),
(451, '2022-08-24', '011C03', 70, -37, 33),
(452, '2022-08-24', '011C06', 70, 570, 640),
(453, '2022-08-24', '011C06.', -178, 298, 120),
(454, '2022-08-24', '011C12', -2792, 4103, 1311),
(455, '2022-08-24', '011C50', 173, 177, 350),
(456, '2022-08-24', '011C25', 16, 54, 70),
(457, '2022-08-24', '011C06E', 82, -2, 80),
(458, '2022-08-24', '011C12E', 6, -6, 0),
(459, '2022-08-24', '02103K.', 33, 0, 33),
(460, '2022-08-24', '02103K', 0, -10, -10),
(461, '2022-08-24', '02106K', 0, -18, -18),
(462, '2022-08-24', '02106K.', 0, -80, -80),
(463, '2022-08-24', '02112K', 0, -10, -10),
(464, '2022-08-24', '0250K', 0, -1, -1),
(465, '2022-08-24', '02125K', 0, 0, 0),
(466, '2022-08-24', '021E6K', 0, 0, 0),
(467, '2022-08-24', '021E12K', 0, 0, 0),
(468, '2022-08-24', 'BR01', 0, -300, -300),
(469, '2022-08-24', 'BRU  A', 0, -65, -65),
(470, '2022-08-24', 'BRU 3', 0, -20, -20),
(471, '2022-08-24', 'FOC001', 0, 0, 0),
(472, '2022-08-24', 'FOA002', 0, 0, 0),
(473, '2022-08-24', 'FOCRO', 0, 0, 0),
(474, '2022-08-24', 'FOAG', 0, 0, 0),
(475, '2022-08-25', '011C03.', 0, 0, 0),
(476, '2022-08-25', '011C03', 70, -37, 33),
(477, '2022-08-25', '011C06', 70, 570, 640),
(478, '2022-08-25', '011C06.', -178, 298, 120),
(479, '2022-08-25', '011C12', -2792, 4103, 1311),
(480, '2022-08-25', '011C50', 150, 147, 297),
(481, '2022-08-25', '011C25', 16, 54, 70),
(482, '2022-08-25', '011C06E', 82, -2, 80),
(483, '2022-08-25', '011C12E', 121, -45, 76),
(484, '2022-08-25', '02103K.', 133, 0, 133),
(485, '2022-08-25', '02103K', 0, -10, -10),
(486, '2022-08-25', '02106K', 0, -18, -18),
(487, '2022-08-25', '02106K.', 0, -80, -80),
(488, '2022-08-25', '02112K', 0, -10, -10),
(489, '2022-08-25', '0250K', 0, -1, -1),
(490, '2022-08-25', '02125K', 0, 0, 0),
(491, '2022-08-25', '021E6K', 0, 0, 0),
(492, '2022-08-25', '021E12K', 0, 0, 0),
(493, '2022-08-25', 'BR01', 0, -300, -300),
(494, '2022-08-25', 'BRU  A', 0, -65, -65),
(495, '2022-08-25', 'BRU 3', 0, -20, -20),
(496, '2022-08-25', 'FOC001', 0, 0, 0),
(497, '2022-08-25', 'FOA002', 0, 0, 0),
(498, '2022-08-25', 'FOCRO', 0, 0, 0),
(499, '2022-08-25', 'FOAG', 0, 0, 0),
(500, '2022-08-26', '011C03.', 14, -55, -41),
(501, '2022-08-26', '011C03', 83, -89, -6),
(502, '2022-08-26', '011C06', 70, 570, 640),
(503, '2022-08-26', '011C06.', -178, 298, 120),
(504, '2022-08-26', '011C12', -2792, 4103, 1311),
(505, '2022-08-26', '011C50', 300, 147, 447),
(506, '2022-08-26', '011C25', 116, 54, 170),
(507, '2022-08-26', '011C06E', 82, -2, 80),
(508, '2022-08-26', '011C12E', 242, -208, 34),
(509, '2022-08-26', '02103K.', 133, 0, 133),
(510, '2022-08-26', '02103K', 0, -10, -10),
(511, '2022-08-26', '02106K', 0, -18, -18),
(512, '2022-08-26', '02106K.', 0, -80, -80),
(513, '2022-08-26', '02112K', 0, -10, -10),
(514, '2022-08-26', '0250K', 0, -1, -1),
(515, '2022-08-26', '02125K', 0, 0, 0),
(516, '2022-08-26', '021E6K', 0, 0, 0),
(517, '2022-08-26', '021E12K', 0, 0, 0),
(518, '2022-08-26', 'BR01', 0, -300, -300),
(519, '2022-08-26', 'BRU  A', 0, -65, -65),
(520, '2022-08-26', 'BRU 3', 0, -20, -20),
(521, '2022-08-26', 'FOC001', 0, 0, 0),
(522, '2022-08-26', 'FOA002', 0, 0, 0),
(523, '2022-08-26', 'FOCRO', 0, 0, 0),
(524, '2022-08-26', 'FOAG', 0, 0, 0),
(525, '2022-08-27', '011C03.', 14, -55, -41),
(526, '2022-08-27', '011C03', 83, -89, -6),
(527, '2022-08-27', '011C06', 70, 570, 640),
(528, '2022-08-27', '011C06.', -178, 298, 120),
(529, '2022-08-27', '011C12', -2792, 4103, 1311),
(530, '2022-08-27', '011C50', 300, 147, 447),
(531, '2022-08-27', '011C25', 116, 54, 170),
(532, '2022-08-27', '011C06E', 82, -2, 80),
(533, '2022-08-27', '011C12E', 242, -208, 34),
(534, '2022-08-27', '02103K.', 133, 0, 133),
(535, '2022-08-27', '02103K', 0, -10, -10),
(536, '2022-08-27', '02106K', 0, -18, -18),
(537, '2022-08-27', '02106K.', 0, -80, -80),
(538, '2022-08-27', '02112K', 0, -10, -10),
(539, '2022-08-27', '0250K', 0, -1, -1),
(540, '2022-08-27', '02125K', 0, 0, 0),
(541, '2022-08-27', '021E6K', 0, 0, 0),
(542, '2022-08-27', '021E12K', 0, 0, 0),
(543, '2022-08-27', 'BR01', 0, -300, -300),
(544, '2022-08-27', 'BRU  A', 0, -65, -65),
(545, '2022-08-27', 'BRU 3', 0, -20, -20),
(546, '2022-08-27', 'FOC001', 0, 0, 0),
(547, '2022-08-27', 'FOA002', 0, 0, 0),
(548, '2022-08-27', 'FOCRO', 0, 0, 0),
(549, '2022-08-27', 'FOAG', 0, 0, 0),
(550, '2022-08-28', '011C03.', 14, -74, -60),
(551, '2022-08-28', '011C03', 83, -107, -24),
(552, '2022-08-28', '011C06', 70, 553, 623),
(553, '2022-08-28', '011C06.', -178, 282, 104),
(554, '2022-08-28', '011C12', -2792, 4088, 1296),
(555, '2022-08-28', '011C50', 300, 133, 433),
(556, '2022-08-28', '011C25', 116, 41, 157),
(557, '2022-08-28', '011C06E', 82, -14, 68),
(558, '2022-08-28', '011C12E', -646, -1996, -2642),
(559, '2022-08-28', '02103K.', 133, 0, 133),
(560, '2022-08-28', '02103K', 0, -10, -10),
(561, '2022-08-28', '02106K', 0, -18, -18),
(562, '2022-08-28', '02106K.', 0, -80, -80),
(563, '2022-08-28', '02112K', 0, -10, -10),
(564, '2022-08-28', '0250K', 0, -1, -1),
(565, '2022-08-28', '02125K', 0, 0, 0),
(566, '2022-08-28', '021E6K', 0, 0, 0),
(567, '2022-08-28', '021E12K', 0, 0, 0),
(568, '2022-08-28', 'BR01', 0, -300, -300),
(569, '2022-08-28', 'BRU  A', 0, -65, -65),
(570, '2022-08-28', 'BRU 3', 0, -20, -20),
(571, '2022-08-28', 'FOC001', 0, 0, 0),
(572, '2022-08-28', 'FOA002', 0, 0, 0),
(573, '2022-08-28', 'FOCRO', 0, 0, 0),
(574, '2022-08-28', 'FOAG', 0, 0, 0),
(575, '2022-08-29', '011C03.', 37, -110, -73),
(576, '2022-08-29', '011C03', 306, -140, 166),
(577, '2022-08-29', '011C06', 93, 517, 610),
(578, '2022-08-29', '011C06.', -155, 246, 91),
(579, '2022-08-29', '011C12', -2769, 4052, 1283),
(580, '2022-08-29', '011C50', 353, 99, 452),
(581, '2022-08-29', '011C25', 139, 5, 144),
(582, '2022-08-29', '011C06E', 300, -50, 250),
(583, '2022-08-29', '011C12E', -528, -2032, -2560),
(584, '2022-08-29', '02103K.', 133, 0, 133),
(585, '2022-08-29', '02103K', 0, -10, -10),
(586, '2022-08-29', '02106K', 0, -18, -18),
(587, '2022-08-29', '02106K.', 0, -80, -80),
(588, '2022-08-29', '02112K', 0, -10, -10),
(589, '2022-08-29', '0250K', 0, -1, -1),
(590, '2022-08-29', '02125K', 0, 0, 0),
(591, '2022-08-29', '021E6K', 0, 0, 0),
(592, '2022-08-29', '021E12K', 0, 0, 0),
(593, '2022-08-29', 'BR01', 0, -300, -300),
(594, '2022-08-29', 'BRU  A', 0, -65, -65),
(595, '2022-08-29', 'BRU 3', 0, -20, -20),
(596, '2022-08-29', 'FOC001', 0, 0, 0),
(597, '2022-08-29', 'FOA002', 0, 0, 0),
(598, '2022-08-29', 'FOCRO', 0, 0, 0),
(599, '2022-08-29', 'FOAG', 0, 0, 0),
(600, '2022-08-30', '011C03.', 83, -217, -134),
(601, '2022-08-30', '011C03', 331, -212, 119),
(602, '2022-08-30', '011C06', 102, 446, 548),
(603, '2022-08-30', '011C06.', -146, 255, 109),
(604, '2022-08-30', '011C12', -2760, 4061, 1301),
(605, '2022-08-30', '011C50', 362, 108, 470),
(606, '2022-08-30', '011C25', 148, 14, 162),
(607, '2022-08-30', '011C06E', 309, -41, 268),
(608, '2022-08-30', '011C12E', -499, -2023, -2522),
(609, '2022-08-30', '02103K.', 133, -10, 123),
(610, '2022-08-30', '02103K', 0, -110, -110),
(611, '2022-08-30', '02106K', 0, -18, -18),
(612, '2022-08-30', '02106K.', 0, -80, -80),
(613, '2022-08-30', '02112K', 0, -10, -10),
(614, '2022-08-30', '0250K', 0, -1, -1),
(615, '2022-08-30', '02125K', 0, 0, 0),
(616, '2022-08-30', '021E6K', 0, 0, 0),
(617, '2022-08-30', '021E12K', 0, 0, 0),
(618, '2022-08-30', 'BR01', 0, -300, -300),
(619, '2022-08-30', 'BRU  A', 0, -65, -65),
(620, '2022-08-30', 'BRU 3', 0, -20, -20),
(621, '2022-08-30', 'FOC001', 0, 0, 0),
(622, '2022-08-30', 'FOA002', 0, 0, 0),
(623, '2022-08-30', 'FOCRO', 0, 0, 0),
(624, '2022-08-30', 'FOAG', 0, 0, 0),
(625, '2022-08-31', '011C03.', 1366, -1117, 249),
(626, '2022-08-31', '011C03', 787, -292, 495),
(627, '2022-08-31', '011C06', 286, 416, 702),
(628, '2022-08-31', '011C06.', -132, 255, 123),
(629, '2022-08-31', '011C12', -2760, 4061, 1301),
(630, '2022-08-31', '011C50', 362, 58, 420),
(631, '2022-08-31', '011C25', 148, 14, 162),
(632, '2022-08-31', '011C06E', 309, -41, 268),
(633, '2022-08-31', '011C12E', -499, -2023, -2522),
(634, '2022-08-31', '02103K.', 133, -10, 123),
(635, '2022-08-31', '02103K', 0, -110, -110),
(636, '2022-08-31', '02106K', 0, -18, -18),
(637, '2022-08-31', '02106K.', 0, -80, -80),
(638, '2022-08-31', '02112K', 0, -10, -10),
(639, '2022-08-31', '0250K', 0, -31, -31),
(640, '2022-08-31', '02125K', 0, 0, 0),
(641, '2022-08-31', '021E6K', 0, 0, 0),
(642, '2022-08-31', '021E12K', 0, 0, 0),
(643, '2022-08-31', 'BR01', 0, -300, -300),
(644, '2022-08-31', 'BRU  A', 0, -65, -65),
(645, '2022-08-31', 'BRU 3', 0, -20, -20),
(646, '2022-08-31', 'FOC001', 0, 0, 0),
(647, '2022-08-31', 'FOA002', 0, 0, 0),
(648, '2022-08-31', 'FOCRO', 0, 0, 0),
(649, '2022-08-31', 'FOAG', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_chargement_detail`
--

CREATE TABLE `tb_chargement_detail` (
  `id_chargement_detail` int(11) NOT NULL,
  `num_chargement` varchar(11) NOT NULL,
  `num_BL` varchar(20) NOT NULL,
  `numbl_his` int(11) NOT NULL,
  `client` varchar(50) NOT NULL,
  `total_bouteille` int(11) NOT NULL,
  `prix_kilo` double NOT NULL,
  `prix_livraison` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_chargement_detail`
--

INSERT INTO `tb_chargement_detail` (`id_chargement_detail`, `num_chargement`, `num_BL`, `numbl_his`, `client`, `total_bouteille`, `prix_kilo`, `prix_livraison`) VALUES
(1, 'CH002', 'CCP-F14', 1, 'PIKABE GAZ', 16, 249, 3237),
(2, 'CH002', 'CCP-F14', 1, 'PIKABE GAZ', 16, 249, 3237),
(3, 'CH003', 'CCP-F59', 10, 'MARGO GAZ', 35, 379, 4927),
(4, 'CH003', 'CCP-F38', 9, 'CINKANCE MARO GAZ', 41, 684, 37620),
(5, 'CH004', 'CCP-F70', 11, 'MILLA GAZ', 15, 187.5, 2812.5),
(6, 'CH004', 'CCP-F49', 8, 'REHOBOPH', 13, 237.5, 3562.5),
(7, 'CH004', 'CCP-F48', 7, 'ISSAKA KARA 1', 4, 27.5, 1512.5),
(8, 'CH004', 'CCR-F13', 6, 'KOFFI DAPAONG GAZ', 5, 30, 1650),
(9, 'CH005', 'CCP-F131', 12, 'TIMBROWN GAZ', 30, 297, 4455),
(10, 'CH005', 'CCP-F165', 13, 'MEDE GAZ', 18, 108, 1404),
(11, 'CH006', 'CCR-F13', 5, 'KOFFI DAPAONG GAZ', 5, 30, 1650),
(12, 'CH006', 'CCR-F13', 4, 'KOFFI DAPAONG GAZ', 90, 575, 31625);

-- --------------------------------------------------------

--
-- Structure de la table `tb_chargement_veh`
--

CREATE TABLE `tb_chargement_veh` (
  `id_chargement` int(11) NOT NULL,
  `num_chargement` varchar(10) NOT NULL,
  `num_immat_veh` varchar(20) NOT NULL,
  `Total_bouteille` int(11) NOT NULL,
  `total_kilo` double NOT NULL,
  `prix_livraison` double NOT NULL,
  `date_chargement` datetime NOT NULL,
  `Usager` varchar(20) NOT NULL,
  `statut_chargement` int(11) NOT NULL,
  `statut_controle` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_chargement_veh`
--

INSERT INTO `tb_chargement_veh` (`id_chargement`, `num_chargement`, `num_immat_veh`, `Total_bouteille`, `total_kilo`, `prix_livraison`, `date_chargement`, `Usager`, `statut_chargement`, `statut_controle`) VALUES
(1, 'CH002', 'TG 9562 AX', 16, 249, 3237, '2022-08-06 11:42:03', '1002', 1, 0),
(2, 'CH002', 'TG 9562 AX', 16, 249, 3237, '2022-08-06 11:42:03', '1002', 1, 0),
(3, 'CH003', 'TG 2318 DJ', 76, 1063, 42547, '2022-08-11 16:33:35', '1002', 1, 0),
(4, 'CH004', 'TG 9630 BH', 37, 482.5, 9537.5, '2022-08-12 06:27:12', '1002', 1, 0),
(5, 'CH005', 'TG 2318 DJ', 48, 405, 5859, '2022-08-15 18:59:43', '1002', 1, 0),
(6, 'CH006', 'TG 9630 BH', 95, 605, 33275, '2022-08-21 13:30:35', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_chauffeur`
--

CREATE TABLE `tb_chauffeur` (
  `id_chauf` int(11) NOT NULL,
  `num_mat_chauf` int(11) NOT NULL,
  `nom_chauf` varchar(100) NOT NULL,
  `prenom_chauf` varchar(100) NOT NULL,
  `tel_chauf` varchar(30) NOT NULL,
  `mail_chauf` varchar(100) NOT NULL,
  `adresse_chauf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_chauffeur`
--

INSERT INTO `tb_chauffeur` (`id_chauf`, `num_mat_chauf`, `nom_chauf`, `prenom_chauf`, `tel_chauf`, `mail_chauf`, `adresse_chauf`) VALUES
(1, 1, 'ABOZOU', 'ALBERT', '70516994', '', 'AGOE'),
(2, 2, 'SODOGA', 'AKOUTE', '93626746', '', 'DDFG'),
(3, 3, 'DJAMONGOU  KPIEMAME', 'ABOU', '93971898', 'LOME', 'LOME'),
(4, 4, 'MABA', 'maba', '93972615', '', 'agoe'),
(5, 5, 'SIMNARA', 'james', '91184265', '', 'AGOE'),
(6, 6, 'GODJA ', 'KOSSI', '91722040/LIVREUR TRICYUCLE', '', 'AGOE'),
(7, 7, 'FOUSSENI TRYCYCLE', 'LIVREUR', '92887631', '', 'AGOE');

-- --------------------------------------------------------

--
-- Structure de la table `tb_client`
--

CREATE TABLE `tb_client` (
  `id_clt` int(11) NOT NULL,
  `code_clt` varchar(15) NOT NULL,
  `nom_clt` varchar(100) NOT NULL,
  `adresse_clt` varchar(100) NOT NULL,
  `tel_clt` varchar(40) NOT NULL,
  `email_clt` varchar(100) NOT NULL,
  `comment_clt` text NOT NULL,
  `nom_zone` varchar(20) NOT NULL,
  `tarif` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_client`
--

INSERT INTO `tb_client` (`id_clt`, `code_clt`, `nom_clt`, `adresse_clt`, `tel_clt`, `email_clt`, `comment_clt`, `nom_zone`, `tarif`) VALUES
(1, 'ER01', 'ERIK', 'agoe seperepe', '92221344', '', '', '', 'TNORG'),
(2, 'DO1', 'DOUTI', 'fabrique togle ', '91816052', '', '', '', 'TNORG'),
(3, 'KO01', 'KOLANI ', 'agoe atcanvier', '93416042', '', '', '', 'TNORG'),
(4, 'KO2', 'KOLANI TSEVIER', 'tsevier', '91585560', '', '', '', 'TNORG'),
(5, 'ZA1', 'ZAKARI GAZ', 'togble raill', '90098926', '', '', '', 'TNORG'),
(6, 'A1', 'ABALO GAZ', 'apecito', '91819104', '', '', '', 'TNORG'),
(7, 'FE1', 'FELICITE GAZ', 'kpala contournement', '90092430', '', '', '', 'TNORG'),
(8, 'T1', 'T K SERVICE', 'SOGBOSITO A 100M DE LA STATION SOMAYAF1', '22257939', '', '', '', 'TNORG'),
(9, 'EV1', 'SAVENA GAZ', 'AGOE TOGBLE DERRIERE STATION SOMIER', '90780777', '', '', '', 'TNORG'),
(10, 'CO1', 'CONFIANCE GAZ', 'KOCHIGAN 2', '92186015', '', '', '', 'TNORG'),
(11, 'R0', 'REHOBOPH', 'ADAKPAME', '93525420', '', '', '', 'TNORG'),
(12, 'SO', 'SOULEMANE GAZ', 'LEGBASITO MADJIKPETO', '90066062', '', '', '', 'TNORG'),
(13, 'RA', 'RAZAK ', 'ROND POINT BAWARA ', '93816741', '', '', '', 'TNORG'),
(14, 'MA', 'MADIBA ', 'ADIDOGOME MADIBA', '99069272', '', '', '', 'TNORG'),
(15, 'MO', 'MOMO GAZ', 'ASSIGOME ', '92856700', '', '', '', 'TNORG'),
(16, 'P', 'PETER ET ACCESSOIRE', 'LOGOPE DERRIERE CAMP GP', '90578073', '', '', '', 'TNORG'),
(17, 'A', 'ALEX GAZ', 'ADETICOPE', '93906846', '', '', '', 'TNORG'),
(18, 'D', 'DERABE GAZ', 'ADETICOPE ', '90279968', '', '', '', 'TNORG'),
(19, 'A ', 'AMETODE GAZ', 'AMANDAHOME', '90250174', '', '', '', 'TNORG'),
(20, 'M1', 'MILLA GAZ', 'CACAVELI ', '92222357', '', '', '', 'TNORG'),
(21, 'I1', 'ISSAKA KARA 1', 'kara chel 1', '92975440', '', '', '', 'TNORG'),
(22, 'CH', 'CHIC GAZ', 'CEG AVEDJI', '92458180', '', '', '', 'TNORD'),
(23, 'AN', 'ANATE ', 'AMANDAHOME ', '91931024', '', '', '', 'TNORD'),
(24, 'AGB', 'KOMBATE KOKOU', 'AGBOLOUVE', '98708908', '', '', '', 'TNORD'),
(25, 'O', 'STATION OANDO', 'LOGOPE', '91286224', '', '', '', 'TNORD'),
(26, 'B', 'AGBOLOSSOU KOMLA', 'MARGO', '91204423', '', '', '', 'TNORD'),
(27, 'K', 'KOMBATE KARA2', 'kara', '93085176', '', 'kara', '', 'TNORG'),
(28, 'D1', 'KODJO DAPAONG 1 GAZ', 'dapaong ', '91336297', '', 'dapaong a 200m du rond point btd', '', 'TNORG'),
(29, 'C1', 'CINKANCE MARO GAZ', 'cinkance ', '93544258', '', 'cinkance en face du lycee ', '', 'TNORG'),
(30, 'P1', 'PIKABE GAZ', 'agbalepedo ', '90819345', '', 'devant le marche de cacaveli ', '', 'TNORG'),
(31, 'L1', 'LAMBO GAZ', 'AGOE LOME', '98010250', '', 'AGOE rond point commondo', '', 'TNORG'),
(32, 'G1', 'GERMAIN GAZ', 'AGOE ET DETICOPE', '91263461', '', 'SOGBOSITO DEVANT BAR PRESIDENCE ET DETICOPE DEVANT LES GRAVIERS', '', 'TNORG'),
(33, 'P ', 'PASTOR ENTREPRISE ', 'ENTREPRISE DE LUNION ', '90274231', '', '', '', 'TNORG'),
(34, 'M', 'MAXI FIRST', 'AMERINTA', '90804173', '', '', '', 'TNORG'),
(35, 'C', 'CETEED AMANDAHOME', 'DERRIERE CEG AMANDAHOME', '90151166', '', '', '', 'TNORG'),
(36, 'J', 'JAQUE GAZ', 'LEGBASITO', '90341905', '', '', '', 'TNORG'),
(37, 'Y', 'YAKOUBA GAZ', 'KOFIPANOU', '70558774', '', '', '', 'TNORG'),
(38, 'A3', 'AGRO PLUS ', 'AGOE', '92488058', '', '', '', 'TNORG'),
(39, 'L3', 'LOME LABELLE GAZ ', 'AGOE SEPEREPE', '92436394', '', '', '', 'TNORG'),
(40, 'N', 'NUMAR', 'AGOE', '91971728', '', '', '', 'TNORG'),
(41, 'BA', 'BARKOSSI GAZ', 'BARKOSSI', '99878136', '', '', '', 'TNORG'),
(42, 'EC', 'ECENAME GAZ', 'AGOE LOGOPE', '93772613', '', '', '', 'TNORG'),
(43, 'KO', 'KOFFI DAPAONG GAZ', 'DAPAONG ', '91552657', '', '', '', 'TNORG'),
(44, 'K4', 'KOBNA ', 'KEGUE NETIME', '99636544', '', '', '', 'TNORG'),
(45, 'AL', 'ALU SAVANE', 'apecito', '90221929', '', '', '', 'TNORG'),
(46, 'B5', 'BAS PRIX', 'AGOE ANOKOUI', '93390551', '', '', '', 'TNORG'),
(47, 'BE', 'BEN GAZ', 'LEGBASSITO', '98931613', '', '', '', 'TNORG'),
(48, 'MAW', 'MAWOUSSI GAZ', 'AGOE LOGOPE', '90098759', '', '', '', 'TNORG'),
(49, 'ALB', 'ALBARKA GAZ', 'AGOE ASSIYEYE', '90342056', '', 'FEMME DU DEFUN WAWA ', '', 'TNORG'),
(50, 'ALH', 'ALHAMDOULAI GAZ', 'AGOE ', '90271335', '', 'A 100 M DU DEPOT', '', 'TNORG'),
(51, 'DA', 'DAHOE GAZ', 'AGOE GAKPOTO', '92807607', '', 'FEMME DU TOURNEUR', '', 'TNORG'),
(52, 'AC', 'AGOE CENTRE', 'AGOE CENTRE', '90247441', '', '', '', 'TNORG'),
(53, 'PL', 'PAUL CMS AGOE', 'CMS AGOE', '91848781', '', '', '', 'TNORG'),
(54, 'GB', 'GRAND BAZARD GAZ', 'AGOE CACAVELI', '90189167', '', 'EN FACE DE LHAUTEL KOUCERA', '', 'TNORG'),
(55, 'DAP2', 'DAPAONG 2 BIGBA', 'DAPAONG A 100 M DE LA CEET', '91973388', '', '', '', 'TNORG'),
(56, 'CB', 'CAREFOURE BONNEUR', 'NANEGBE', 'SC/FOUSSENI', '', '', '', 'TNORG'),
(57, 'BO2', 'BOUCHER GAZ', 'AGOE LOGOPE', '91479606', '', '', '', 'TNORG'),
(58, 'TO', 'TOP SAHO', 'NOUKAFOU', '99520808', '', 'DG TOP SAHO', '', 'TNORG'),
(59, 'TY', 'TOYIMI ZANGUERA', 'FACE GENDARMERIE ZANGUERA', '90474147', '', '', '', 'TNORG'),
(60, 'KL', 'KOMLA TOTSI RAIL', 'AVEDJI FEU ROUGE', '99050123', '', '', '', 'TNORG'),
(61, 'CA', 'PASTEUR ZANGUERA CATHOLIQUE', 'FACE ZANGUERA CATHOLIQUE', '90368709', '', '', '', 'TNORG'),
(62, 'AD', 'ADOUGBA GAZ', 'ADOUGBA', '91126753', '', '', '', 'TNORG'),
(63, 'GE', 'GERUM', 'DETICOPE', '97354455', '', '', '', 'TNORG'),
(64, 'PR', 'PROMO GAZ LEGBASITO', 'LEGBASIME', '90884557', '', '', '', 'TNORG'),
(65, 'BO', 'RESTO BONICI', 'ROND POINT DEUX LION', '99480010', '', '', '', 'TNORG'),
(66, 'KT', 'KLARA GAZ', 'DETICOPE', '93273592', '', '', '', 'TNORG'),
(67, 'EO', 'EMANUEL OCEANOS', 'OCEANOS', '91854898', '', '', '', 'TNORG'),
(68, 'ME ', 'METROPOLICE GAZ', 'ATIOME', '99542638', '', '', '', 'TNORG'),
(69, 'TE', 'TECO/DRAMANE GAZ', 'AGBALEPEDO FACE STATION TOTAL', '90784861/91790169', '', '', '', 'TNORG'),
(70, 'NE', 'PLANTATION /NEDJRO GAZ', 'AGOE PLANTATION', '91975841', '', '', '', 'TNORG'),
(71, 'KD', 'KODJO GAZ', 'KEGUE ', '92459998', '', '', '', 'TNORG'),
(72, 'EL', 'ELOME GAZ', ' AKATO SEGBE', '98215933', '', '', '', 'TNORG'),
(73, 'EXO', 'EXODUS GAZ', 'APECITO', '98378795', '', '', '', 'TNORG'),
(74, 'AG', 'AGOE CENTRE GAZ', 'AGOE CENTRE', '90247441', '', '', '', 'TNORG'),
(75, 'VA', 'VAKPO GAZ ADOUGBA 2', 'VAKPOSITO', '90714846', '', '', '', 'TNORG'),
(76, 'TOM', 'TOMTY GAZ', 'BASE 228', '99807973', '', '', '', 'TNORG'),
(77, 'MAR', 'MARGO GAZ', 'ROND POINT MARGO', '93487289', '', '', '', 'TNORG'),
(78, 'FAT', 'FATAO GAZ', 'BERNARCOPE', '92638872', '', '', '', 'TNORG'),
(79, 'SA', 'SALI GAZ', 'BERNARC/SEPE1 ET 2', '91384952', '', '', '', 'TNORG'),
(80, 'ZO2', 'ZONGO FEU ROUGE GAZ', 'AGOE ZONGO', '90232046', '', '', '', 'TNORG'),
(81, 'BC', 'BUSNESS CENTER', 'AGOE ZONGO', '91928596', '', '', '', 'TNORG'),
(82, 'FS', 'FIS GAZ', 'SOGBOSSITO', '90139020', '', 'SOGBOSITO', '', 'TNORG'),
(83, 'G', 'PETER GAZ SOKODE', 'sokode ', '92285886', '', 'sokode en face de limeuble semassi', '', 'TNORG'),
(84, 'B002', 'BAWARA GAZ', 'KOFIPANOU', '92155925', '', 'ROND POINT ADOUGBA', '', 'TNORG'),
(85, 'T001', 'TAZO 3 GAZ', 'agoe logope', '90032958', '', 'a 100 m du bar tazo', '', 'TNORG'),
(86, 'F001', 'FIL OPARK GAZ', 'AGOE A 100 M DECHANGEUR', 'SC/ALBERT', '', 'AGOE', '', 'TNORG'),
(87, 'BJ01', 'BOULENGERIE JERUSALEM ', 'TOTSI', '90946872', '', 'TOTSI EN  FACE DE JEEF COIFURE', '', 'TNORG'),
(88, 'PR02', 'PROMO GAZ FECANDINE', 'AGOE FECANDINE', '91032422', '', 'ALINKA. FECANDINE .AMERINTA', '', 'TNORG'),
(89, 'C001', 'CENTRALE GAZ', 'ATIOME', '91677941', '', 'ATIOME FACE SOMITE', '', 'TNORG'),
(90, 'R001', 'REANE GAZ', 'AGOE LOGOPE', 'SC/JAMES', '', '', '', 'TNORG'),
(91, 'EM00', 'ECOLE MARIAME GAZ', '2 LION', 'SC /PETER', '', 'EN FACE DE LECOL MARIAM', '', 'TBGP2'),
(92, 'I001', 'IPG YAOVI GAZ', ' ADIDOGOME', '91929451', '', 'FACE IPG ', '', 'TNORG'),
(93, 'SO01', 'SOMITE', 'ATIOME', 'SC/JAMES', '', 'SOMITE ', '', 'TNORG'),
(94, 'E002', 'ERIK DJAGBLE', 'DJAGBLE', '92221344', '', 'DJAGBLE FACE TEMOIN DE JEOVA', '', 'TNORG'),
(95, 'TI01', 'TINA MACKET ', 'ZANGUERA', '93101090', '', 'ZANGUERA', '', 'TNORG'),
(96, 'BL01', 'BIL GAZ', 'MARGO ', '93462180', '', 'CAREFOUR MARGO', '', 'TNORG'),
(97, 'TI02', 'TIMBROWN GAZ', 'NAPOLEON 1', '91537152', '', 'NAPOLEON 1', '', 'TNORG'),
(98, 'ME01', 'MEDE GAZ', 'SOGBOSSITO', '90936777', '', 'SOGBOSITO', '', 'TNORG'),
(99, 'EM02', 'EMANUEL APECITO', 'APECITO', '90999505', '', 'DERRIERE PHARMACIE MBA', '', 'TNORG'),
(100, 'RK01', 'ROUKY GAZ', 'APECITO', '92065900', '', 'APECITO APOTRE', '', 'TNORG'),
(101, 'DU01', 'DUCO GAZ', 'MADJIKPETO', '90314524', '', 'DEVANT CMS MADJIKPETO', '', 'TNORG'),
(102, 'A002', 'ADOUGBA 2 FICHE ', 'FICHE', '90714846', '', 'ADOUGBA2', '', 'TNORG'),
(103, 'FD02', 'FIDELITAS GAZ', 'VAKPO', '92225960', '', 'SUPER MARCHE DE LENTREPRISE DE LUNION', '', 'TNORG'),
(104, 'KZ02', 'KOZATOU GAZ', 'LOGOPE', '96329443', '', 'DERRIERRE BKS', '', 'TNORG'),
(105, 'BE02', 'BEATRUC GAZ', 'VAKPOSSITO', '91524180', '', 'VAKPOSITO CAREFOUR MARGO', '', 'TNORG'),
(106, 'EN01', 'ENTREPRISE GAZ', 'VAKPO', '90325915', '', 'A 100 DE CAP TELESSOU', '', 'TNORG'),
(107, 'TH02', 'THOMAS ', 'LOGOPE ', 'SC/PETER', '', 'A 10M CAMP POLICE', '', 'TNORG'),
(108, 'NA01', 'NANEGBE GAZ', 'ROND POINT', '90241517', '', 'FACE CAP NANEGBE', '', 'TNORG'),
(109, 'P3', 'PROMO GAZ ADOUGBA', 'ADOUGBA', '91089328', '', 'ADOUGBA', '', 'TNORG'),
(110, 'MN01', 'MON NOM EST BENI', 'ADETICOPE', 'SC/TIMOTE', '', '', '', 'TNORG'),
(111, 'ZO02', 'ZOSSIME 3 GAZ', 'ZOSSIME', '90671657', '', 'ZOSSIME ACOTE DE WADJES', '', 'TNORG'),
(112, 'GD01', 'GLOIRE DE DIEU', 'AGOE ANOKOUI', 'SC/DEPOT', '', '', '', 'TNORG'),
(113, 'LO01', 'LOULLONT LETERNEL GAZ', 'vakpo', '90853228', '', '', '', 'TNORG'),
(114, 'K01', 'KOWONI GAZ', 'AGBELOUVOU', '98708908', '', '', '', 'TNORG'),
(115, 'GE01', 'GER GAZ', 'SEGBE', '98207710', '', 'SEGE DEVANT BAR WELCOM', '', 'TNORG'),
(116, 'LA01', 'LARE', 'AGBALEPEDO', '93969869', '', 'EN FACE LK', '', 'TNORG'),
(117, 'VI05', 'VIGUEUR ', 'AGBALEPEDO', 'SC/PETER', '', 'PHARMACIE VIGUEUR ', '', 'TNORG'),
(118, 'EN06', 'ENOULI GAZ', 'AGBALEPEDDO', 'SC/KOSSI', '', 'DERRIERE PHARMACIE ENOULI', '', 'TNORG'),
(119, 'BL07', 'BLESSED GAZ', 'FEU ROUGE LEO 2000', '90867302', '', 'FEU ROUGE LEO 2000', '', 'TNORG'),
(120, 'FI04', 'GAKPO GAZ', 'KPALA', '91839963', '', 'CONTOURNEMENT KPALA', '', 'TNORG'),
(121, 'GA05', 'CYBERT GALAXIE', 'LOGOPE', '90474737', '', 'KOCHIGAN', '', 'TNORG'),
(122, 'SA02', 'SAMBASSE GAZ', 'AGOE', '90346354', '', 'AGOE ASSIYEYE', '', 'TNORG'),
(123, 'ZR01', 'ZONGO RAIL', 'ZONGO', '90946067', '', 'ZONGO RAILL', '', 'TNORG'),
(124, 'GF01', 'GOD FIRST', 'LOME', 'A COMPLETER', '', '', '', 'TNORG'),
(125, 'BG01', 'BARRY GAZ ET FRERES', 'LOME', 'A COMPLETER', '', '', '', 'TNORG');

-- --------------------------------------------------------

--
-- Structure de la table `tb_commande_camion`
--

CREATE TABLE `tb_commande_camion` (
  `id_comc` int(11) NOT NULL,
  `num_comc` int(11) DEFAULT NULL,
  `date_com` date DEFAULT NULL,
  `chargement` int(11) DEFAULT NULL,
  `piece` varchar(12) DEFAULT NULL,
  `vehicule` varchar(12) DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `montant_p` double DEFAULT NULL,
  `montant_r` double DEFAULT NULL,
  `statut_cmd` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_commande_camion`
--

INSERT INTO `tb_commande_camion` (`id_comc`, `num_comc`, `date_com`, `chargement`, `piece`, `vehicule`, `montant`, `montant_p`, `montant_r`, `statut_cmd`) VALUES
(1, 1, '2022-08-21', 1, '123', 'TG 9630 BH', 636000, 0, 636000, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_compte_client`
--

CREATE TABLE `tb_compte_client` (
  `id_cc` int(11) NOT NULL,
  `code_clt` varchar(15) DEFAULT NULL,
  `nom_clt` varchar(50) NOT NULL,
  `num_cc` varchar(30) DEFAULT NULL,
  `solde` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_compte_client`
--

INSERT INTO `tb_compte_client` (`id_cc`, `code_clt`, `nom_clt`, `num_cc`, `solde`) VALUES
(1, 'ER01', 'ERIK', 'ER01', 11659552),
(2, 'DO1', 'DOUTI', 'DO1', 0),
(3, 'KO01', 'KOLANI ', 'KO01', 231480),
(4, 'KO2', 'KOLANI TSEVIER', 'KO2', 340),
(5, 'ZA1', 'ZAKARI GAZ', 'ZA1', 0),
(6, 'A1', 'ABALO GAZ', 'A1', 0),
(7, 'FE1', 'FELICITE GAZ', 'FE1', 0),
(8, 'T1', 'T K SERVICE', 'T1', 0),
(9, 'EV1', 'SAVENA GAZ', 'EV1', 1000),
(10, 'CO1', 'CONFIANCE GAZ', 'CO1', 0),
(11, 'R0', 'REHOBOPH', 'R0', 0),
(12, 'SO', 'SOULEMANE GAZ', 'SO', 0),
(13, 'RA', 'RAZAK ', 'RA', 0),
(14, 'MA', 'MADIBA ', 'MA', 0),
(15, 'MO', 'MOMO GAZ', 'MO', 0),
(16, 'P', 'PETER ET ACCESSOIRE', 'P', 0),
(17, 'A', 'ALEX GAZ', 'A', 0),
(18, 'D', 'DERABE GAZ', 'D', 0),
(19, 'A ', 'AMETODE GAZ', 'A ', 0),
(20, 'M1', 'MILLA GAZ', 'M1', 283240),
(21, 'I1', 'ISSAKA KARA 1', 'I1', 40160),
(22, 'CH', 'CHIC GAZ', 'CH', 0),
(23, 'AN', 'ANATE ', 'AN', 0),
(24, 'AGB', 'KOMBATE KOKOU', 'AGB', 0),
(25, 'O', 'STATION OANDO', 'O', 0),
(26, 'B', 'AGBOLOSSOU KOMLA', 'B', 0),
(27, 'K', 'KOMBATE KARA2', 'K', 0),
(28, 'D1', 'KODJO DAPAONG 1 GAZ', 'D1', 0),
(29, 'C1', 'CINKANCE MARO GAZ', 'C1', 0),
(30, 'P1', 'PIKABE GAZ', 'P1', 0),
(31, 'L1', 'LAMBO GAZ', 'L1', 214190),
(32, 'G1', 'GERMAIN GAZ', 'G1', 0),
(33, 'P ', 'PASTOR ENTREPRISE ', 'P ', 0),
(34, 'M', 'MAXI FIRST', 'M', 0),
(35, 'C', 'CETEED AMANDAHOME', 'C', 0),
(36, 'J', 'JAQUE GAZ', 'J', 0),
(37, 'Y', 'YAKOUBA GAZ', 'Y', 0),
(38, 'A3', 'AGRO PLUS ', 'A3', 0),
(39, 'L3', 'LOME LABELLE GAZ ', 'L3', 0),
(40, 'N', 'NUMAR', 'N', 0),
(41, 'BA', 'BARKOSSI GAZ', 'BA', 0),
(42, 'EC', 'ECENAME GAZ', 'EC', 0),
(43, 'KO', 'KOFFI DAPAONG GAZ', 'KO', 0),
(44, 'K4', 'KOBNA ', 'K4', 94120),
(45, 'AL', 'ALU SAVANE', 'AL', 0),
(46, 'B5', 'BAS PRIX', 'B5', 0),
(47, 'BE', 'BEN GAZ', 'BE', 0),
(48, 'MAW', 'MAWOUSSI GAZ', 'MAW', 0),
(49, 'ALB', 'ALBARKA GAZ', 'ALB', 0),
(50, 'ALH', 'ALHAMDOULAI GAZ', 'ALH', 0),
(51, 'DA', 'DAHOE GAZ', 'DA', 0),
(52, 'AC', 'AGOE CENTRE', 'AC', 0),
(53, 'PL', 'PAUL CMS AGOE', 'PL', 0),
(54, 'GB', 'GRAND BAZARD GAZ', 'GB', 0),
(55, 'DAP2', 'DAPAONG 2 BIGBA', 'DAP2', 10320),
(56, 'CB', 'CAREFOURE BONNEUR', 'CB', 0),
(57, 'BO2', 'BOUCHER GAZ', 'BO2', 0),
(58, 'TO', 'TOP SAHO', 'TO', 0),
(59, 'TY', 'TOYIMI ZANGUERA', 'TY', 0),
(60, 'KL', 'KOMLA TOTSI RAIL', 'KL', 0),
(61, 'CA', 'PASTEUR ZANGUERA CATHOLIQUE', 'CA', 0),
(62, 'AD', 'ADOUGBA GAZ', 'AD', 0),
(63, 'GE', 'GERUM', 'GE', 0),
(64, 'PR', 'PROMO GAZ LEGBASITO', 'PR', 0),
(65, 'BO', 'RESTO BONICI', 'BO', 0),
(66, 'KT', 'KLARA GAZ', 'KT', 0),
(67, 'EO', 'EMANUEL OCEANOS', 'EO', 0),
(68, 'ME ', 'METROPOLICE GAZ', 'ME ', 0),
(69, 'TE', 'TECO/DRAMANE GAZ', 'TE', 0),
(70, 'NE', 'PLANTATION /NEDJRO GAZ', 'NE', 0),
(71, 'KD', 'KODJO GAZ', 'KD', 0),
(72, 'EL', 'ELOME GAZ', 'EL', 0),
(73, 'EXO', 'EXODUS GAZ', 'EXO', 0),
(74, 'AG', 'AGOE CENTRE GAZ', 'AG', 0),
(75, 'VA', 'VAKPO GAZ ADOUGBA 2', 'VA', 0),
(76, 'TOM', 'TOMTY GAZ', 'TOM', 0),
(77, 'MAR', 'MARGO GAZ', 'MAR', 0),
(78, 'FAT', 'FATAO GAZ', 'FAT', 95000),
(79, 'SA', 'SALI GAZ', 'SA', 0),
(80, 'ZO2', 'ZONGO FEU ROUGE GAZ', 'ZO2', 0),
(81, 'BC', 'BUSNESS CENTER', 'BC', 0),
(82, 'FS', 'FIS GAZ', 'FS', 0),
(83, 'G', 'PETER GAZ SOKODE', 'G', 0),
(84, 'B002', 'BAWARA GAZ', 'B002', 0),
(85, 'T001', 'TAZO 3 GAZ', 'T001', 6022),
(86, 'F001', 'FIL OPARK GAZ', 'F001', 0),
(87, 'BJ01', 'BOULENGERIE JERUSALEM ', 'BJ01', 0),
(88, 'PR02', 'PROMO GAZ FECANDINE', 'PR02', 0),
(89, 'C001', 'CENTRALE GAZ', 'C001', 0),
(90, 'R001', 'REANE GAZ', 'R001', 0),
(91, 'EM00', 'ECOLE MARIAME GAZ', 'EM00', 0),
(92, 'I001', 'IPG YAOVI GAZ', 'I001', 0),
(93, 'SO01', 'SOMITE', 'SO01', 0),
(94, 'E002', 'ERIK DJAGBLE', 'E002', 0),
(95, 'TI01', 'TINA MACKET ', 'TI01', 0),
(96, 'BL01', 'BIL GAZ', 'BL01', 0),
(97, 'TI02', 'TIMBROWN GAZ', 'TI02', 0),
(98, 'ME01', 'MEDE GAZ', 'ME01', 0),
(99, 'EM02', 'EMANUEL APECITO', 'EM02', 0),
(100, 'RK01', 'ROUKY GAZ', 'RK01', 0),
(101, 'DU01', 'DUCO GAZ', 'DU01', 0),
(102, 'A002', 'ADOUGBA 2 FICHE ', 'A002', 0),
(103, 'FD02', 'FIDELITAS GAZ', 'FD02', 0),
(104, 'KZ02', 'KOZATOU GAZ', 'KZ02', 0),
(105, 'BE02', 'BEATRUC GAZ', 'BE02', 0),
(106, 'EN01', 'ENTREPRISE GAZ', 'EN01', 0),
(107, 'TH02', 'THOMAS ', 'TH02', 0),
(108, 'NA01', 'NANEGBE GAZ', 'NA01', 0),
(109, 'P3', 'PROMO GAZ ADOUGBA', 'P3', 0),
(110, 'MN01', 'MON NOM EST BENI', 'MN01', 0),
(111, 'ZO02', 'ZOSSIME 3 GAZ', 'ZO02', 0),
(112, 'GD01', 'GLOIRE DE DIEU', 'GD01', 0),
(113, 'LO01', 'LOULLONT LETERNEL GAZ', 'LO01', 0),
(114, 'K01', 'KOWONI GAZ', 'K01', 0),
(115, 'GE01', 'GER GAZ', 'GE01', 0),
(116, 'LA01', 'LARE', 'LA01', 0),
(117, 'VI05', 'VIGUEUR ', 'VI05', 0),
(118, 'EN06', 'ENOULI GAZ', 'EN06', 0),
(119, 'BL07', 'BLESSED GAZ', 'BL07', 0),
(120, 'FI04', 'GAKPO GAZ', 'FI04', 0),
(121, 'GA05', 'CYBERT GALAXIE', 'GA05', 0),
(122, 'SA02', 'SAMBASSE GAZ', 'SA02', 0),
(123, 'ZR01', 'ZONGO RAIL', 'ZR01', 0),
(124, 'GF01', 'GOD FIRST', 'GF01', 0),
(125, 'BG01', 'BARRY GAZ ET FRERES', 'BG01', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_compte_client_detail`
--

CREATE TABLE `tb_compte_client_detail` (
  `id_ccd` int(11) NOT NULL,
  `date_ccd` datetime DEFAULT NULL,
  `num_ope` int(11) DEFAULT NULL,
  `code_clt` varchar(15) DEFAULT NULL,
  `nom_clt` varchar(50) DEFAULT NULL,
  `compte_clt` varchar(30) DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `code_user` varchar(15) DEFAULT NULL,
  `statut_canc` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_compte_client_detail`
--

INSERT INTO `tb_compte_client_detail` (`id_ccd`, `date_ccd`, `num_ope`, `code_clt`, `nom_clt`, `compte_clt`, `montant`, `code_user`, `statut_canc`) VALUES
(4, '2022-08-04 22:24:40', NULL, 'KO01', 'KOLANI ', 'KO01', 1000000, '1002', 0),
(5, '2022-08-04 22:26:06', NULL, 'M1', 'MILLA GAZ', 'M1', 900000, '1002', 0),
(6, '2022-08-07 16:27:12', NULL, 'I1', 'ISSAKA KARA 1', 'I1', 356000, '1002', 0),
(7, '2022-08-09 12:38:08', NULL, 'DAP2', 'DAPAONG 2 BIGBA', 'DAP2', 332160, '1002', 0),
(10, '2022-08-11 21:53:09', 10, 'M1', 'MILLA GAZ', 'M1', 600000, '1002', 0),
(12, '2022-08-12 08:50:19', 12, 'KO2', 'KOLANI TSEVIER', 'KO2', 20, '1002', 0),
(14, '2022-08-12 10:02:22', 14, 'FAT', 'FATAO GAZ', 'FAT', 91000, '1002', 1),
(15, '2022-08-12 11:42:07', 15, 'KO2', 'KOLANI TSEVIER', 'KO2', 320, '1002', 0),
(22, '2022-08-04 15:30:52', 16, 'ER01', 'ERIK', 'ER01', 750000, '1002', 0),
(23, '2022-08-06 15:30:52', 23, 'ER01', 'ERIK', 'ER01', 950000, '1002', 0),
(24, '2022-08-09 15:30:52', 24, 'ER01', 'ERIK', 'ER01', 1100000, '1002', 0),
(25, '2022-08-05 15:30:52', 25, 'ER01', 'ERIK', 'ER01', 1000000, '1002', 0),
(26, '2022-08-10 15:30:52', 26, 'ER01', 'ERIK', 'ER01', 800000, '1002', 0),
(27, '2022-08-11 15:30:52', 27, 'ER01', 'ERIK', 'ER01', 1000000, '1002', 0),
(28, '2022-08-12 15:30:52', 28, 'ER01', 'ERIK', 'ER01', 750000, '1002', 0),
(29, '2022-08-12 15:30:52', 29, 'ER01', 'ERIK', 'ER01', 250000, '1002', 0),
(31, '2022-08-13 11:01:03', 31, 'L1', 'LAMBO GAZ', 'L1', 181200, '1002', 0),
(33, '2022-08-13 15:30:52', 33, 'FAT', 'FATAO GAZ', 'FAT', 95000, '1002', 0),
(34, '2022-08-13 15:30:52', 34, 'ER01', 'ERIK', 'ER01', 2409552, '1002', 0),
(35, '2022-08-14 15:30:52', 35, 'L1', 'LAMBO GAZ', 'L1', 21000, '1002', 0),
(36, '2022-08-15 15:30:52', 36, 'ER01', 'ERIK', 'ER01', 1000000, '1002', 0),
(37, '2022-08-15 10:50:46', 37, 'L1', 'LAMBO GAZ', 'L1', 11990, '1002', 0),
(38, '2022-08-15 10:55:04', 38, 'T001', 'TAZO 3 GAZ', 'T001', 6022, '1002', 0),
(39, '2022-08-16 15:30:52', 39, 'ER01', 'ERIK', 'ER01', 1650000, '1002', 0),
(40, '2022-08-16 15:30:52', 40, 'K4', 'KOBNA ', 'K4', 200000, '1002', 0),
(41, '2022-09-01 15:30:52', 41, 'KO01', 'KOLANI ', 'KO01', 5000, '1002', 0),
(42, '2022-09-01 15:30:52', 42, 'EV1', 'SAVENA GAZ', 'EV1', 1000, '1002', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_depense`
--

CREATE TABLE `tb_depense` (
  `id_dep` int(11) NOT NULL,
  `ope` varchar(12) DEFAULT NULL,
  `dateDep` date DEFAULT NULL,
  `num_caisse` varchar(12) DEFAULT NULL,
  `num_piece` varchar(12) DEFAULT NULL,
  `libelle_dep` text,
  `montant_dep` double DEFAULT NULL,
  `usager` varchar(10) DEFAULT NULL,
  `statut_canc` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_depense`
--

INSERT INTO `tb_depense` (`id_dep`, `ope`, `dateDep`, `num_caisse`, `num_piece`, `libelle_dep`, `montant_dep`, `usager`, `statut_canc`) VALUES
(1, 'ope2', '2022-08-04', '1002000001', 'ORDINATEUR N', 'OD', 340000, '1002', 0),
(2, 'ope3', '2022-08-04', '1002000001', 'AVANCE SUR A', '', 60000, '1002', 0),
(3, 'ope4', '2022-08-04', '1002000001', 'AVANCE SUR L', '', 800000, '1002', 0),
(4, 'ope5', '2022-08-04', '1002000001', 'AVANCE SUR P', '', 400000, '1002', 0),
(5, 'ope13', '2022-08-05', '1002000001', 'RE', 'REPARATION DU FOURGONNETE', 15000, '1002', 0),
(6, 'ope16', '2022-08-06', '1002000001', 'TCHABOSSO', 'salaire du moi de juin', 60000, '1002', 0),
(7, 'ope17', '2022-08-06', '1002000001', 'FOUSSENI', 'salaire du moi de juin', 60000, '1002', 0),
(8, 'ope18', '2022-08-06', '1002000001', 'ALBERT', 'salaire du moi de jun', 110000, '1002', 0),
(9, 'ope19', '2022-08-06', '1002000001', 'FLORENT', 'salaire du moi de juin', 55000, '1002', 0),
(10, 'ope20', '2022-08-06', '1002000001', 'AIME', 'salaire du moi de jun', 50000, '1002', 0),
(11, 'ope21', '2022-08-06', '1002000001', 'TOLER', 'salaire du moi de juin', 60000, '1002', 0),
(12, 'ope22', '2022-08-06', '1002000001', 'VIEU2', 'salaire juin 2022', 60000, '1002', 0),
(13, 'ope23', '2022-08-06', '1002000001', 'JEOFROID', 'salaire de juin 2022', 55000, '1002', 0),
(14, 'ope24', '2022-08-06', '1002000001', 'KODJO', 'salaire juin 2022', 50000, '1002', 0),
(15, 'ope25', '2022-08-06', '1002000001', 'MATIAS', 'salaire juin 2022', 50000, '1002', 0),
(16, 'ope26', '2022-08-06', '1002000001', 'MABA', 'salaire de juin 2022', 50000, '1002', 0),
(17, 'ope27', '2022-08-06', '1002000001', 'ABOU', 'forfait de juin 2022', 40000, '1002', 0),
(18, 'ope28', '2022-08-06', '1002000001', 'JAMES', 'salaire jun 2022', 40000, '1002', 0),
(19, 'ope29', '2022-08-06', '1002000001', 'TIMOTE', 'salaire juin 2022', 75000, '1002', 0),
(20, 'ope30', '2022-08-06', '1002000001', 'GROS', 'salire de jun 2022', 50000, '1002', 0),
(21, 'ope35', '2022-08-07', '1002000001', 'EDEMM', 'avance sur logiciel', 40000, '1002', 0),
(22, 'ope36', '2022-08-07', '1002000001', 'SORTI', 'sorti', 80000, '1002', 1),
(23, 'ope38', '2022-08-08', '1002000001', 'SIMNARA JAME', 'pret pour lobtention du permi de condure a payer 5000/mois apartir du mois de septembre 2022\r\npas solder lencienne dette 20000', 120000, '1002', 0),
(24, 'ope50', '2022-08-09', '1002000001', 'KOSSI', 'verssement de 450000', 4500000, '1002', 0),
(25, 'ope58', '2022-08-09', '1002000001', 'KOSSI', 'SALAIRE JUN', 60000, '1002', 0),
(26, 'ope59', '2022-08-09', '1002000001', 'THOMAS', 'SALAIRE JUN', 60000, '1002', 0),
(27, 'ope60', '2022-08-09', '1002000001', 'SAMBIANI', 'SALAIRE JUN', 100000, '1002', 0),
(28, 'ope61', '2022-08-09', '1002000001', 'VIEU 1 ', 'SALAIRE JUN', 60000, '1002', 0),
(29, 'ope62', '2022-08-03', '1002000001', 'ABRAHAM', 'LOYER DE FIN JUN ET FIN JUELLET', 100000, '1002', 0),
(30, 'ope67', '2022-08-10', '1002000001', 'ABRAHAM', 'ACHAT DE 6 RE 50KG CHEZ GERUM', 184000, '1002', 0),
(31, 'ope68', '2022-08-10', '1002000001', 'ABRAHAM', 'CANAL BOX', 25000, '1002', 0),
(32, 'ope69', '2022-08-10', '1002000001', 'KOSSI', 'DEPOT BANQUE', 5000000, '1002', 0),
(33, 'ope73', '2022-08-10', '1002000001', 'ABRAHAM', 'REGLEMENT DU CAISE', 5288000, '1002', 1),
(34, 'ope74', '2022-08-10', '1002000001', 'ALI', 'AVANCE SUR 10 CARTON BRULEUR R 230000', 250000, '1002', 0),
(35, 'ope77', '2022-08-10', '1002000001', 'KOSSI', 'DEPOT BANQ', 1700000, '1002', 0),
(36, 'ope80', '2022-08-11', '1002000001', 'ABRAHAM', 'cosonmation deau', 5121, '1002', 0),
(37, 'ope81', '2022-08-11', '1002000001', 'ABRAHAM ', 'c courant 107kw', 14946, '1002', 0),
(38, 'ope86', '2022-08-11', '1002000001', 'TIMOTE', 'PRET POUR LE PERMI DE CONDURE', 120000, '1002', 0),
(39, 'ope99', '2022-08-12', '1002000001', 'KOSSI', 'depot banque', 4000000, '1002', 0),
(40, 'ope105', '2022-08-12', '1002000001', 'KOSSI ', 'DEPOT BANQUE', 3050000, '1002', 0),
(41, 'ope108', '2022-08-11', '1002000001', 'BIA', 'AVANCE SUR PRET DE 44000000 POUR ACHAT DU CAMION', 9111000, '1002', 0),
(42, 'ope120', '2022-08-13', '1002000001', 'ABRAHAM', 'AVANCE TOTAL DE BRULEUR', 230000, '1002', 0),
(43, 'ope140', '2022-08-15', '1002000001', 'SIKPA ', 'SALAIRE JUIELLET 2022', 20000, '1002', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_encaissement`
--

CREATE TABLE `tb_encaissement` (
  `id_enc` int(11) NOT NULL,
  `ope` varchar(12) DEFAULT NULL,
  `date_enc` datetime DEFAULT NULL,
  `num_caisse` varchar(12) DEFAULT NULL,
  `num_piece` varchar(30) DEFAULT NULL,
  `libelle_enc` tinytext,
  `montant_enc` double DEFAULT NULL,
  `usager` varchar(4) DEFAULT NULL,
  `statut_canc` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_encaissement`
--

INSERT INTO `tb_encaissement` (`id_enc`, `ope`, `date_enc`, `num_caisse`, `num_piece`, `libelle_enc`, `montant_enc`, `usager`, `statut_canc`) VALUES
(1, 'ope34', '2022-08-07 00:00:00', '1002000001', 'AB', 'PRET', 100000, '1002', 0),
(2, 'ope43', '2022-08-09 00:00:00', '1002000001', 'ERIK', 'verssement', 1100000, '1002', 0),
(3, 'ope49', '2022-08-09 00:00:00', '1002000001', 'ABRAHAM', 'vente2', 4500000, '1002', 0),
(4, 'ope56', '2022-08-09 00:00:00', '1002000001', 'ABRAHAM', 'v soire du 9/08/2022', 900000, '1002', 0),
(5, 'ope57', '2022-08-09 00:00:00', '1002000001', 'ABRAHAM', 'VENTE CAISSE', 900000, '1002', 0),
(6, 'ope65', '2022-08-10 00:00:00', '1002000001', 'KOSSI ', 'depot banque', 5000000, '1002', 0),
(7, 'ope66', '2022-08-10 00:00:00', '1002000001', 'ABRAHAM', 'achat de 6 de 50kg chez GERUM', 184000, '1002', 0),
(8, 'ope70', '2022-08-10 00:00:00', '1002000001', 'ERIK', 'VERSSEMENT', 800000, '1002', 0),
(9, 'ope71', '2022-08-10 00:00:00', '1002000001', 'ABRAHAM', 'VENTE ', 5000000, '1002', 0),
(10, 'ope76', '2022-08-10 00:00:00', '1002000001', 'ABRAHAM', 'VENTE ', 795000, '1002', 0),
(11, 'ope78', '2022-08-11 00:00:00', '1002000001', 'ABRAHAM', 'vente', 240000, '1002', 0),
(12, 'ope79', '2022-08-11 00:00:00', '1002000001', 'ERIK', 'verssement', 1000000, '1002', 0),
(13, 'ope87', '2022-08-11 00:00:00', '1002000001', 'TIMOTE', '1ER REMBOURSSEMENT DU PRET DE PERMIS DE CVONDURE', 20000, '1002', 0),
(14, 'ope98', '2022-08-12 00:00:00', '1002000001', 'ABRAHAM', 'vente', 4550000, '1002', 0),
(15, 'ope100', '2022-08-12 00:00:00', '1002000001', 'MADAME ', 'retrait wadjes', 1200000, '1002', 0),
(16, 'ope104', '2022-08-12 00:00:00', '1002000001', 'ABRAHAM', 'vente', 1500000, '1002', 0),
(17, 'ope106', '2022-08-12 00:00:00', '1002000001', 'ERIK', 'verssement', 750000, '1002', 0),
(18, 'ope141', '2022-08-15 00:00:00', '1002000001', 'ABRAHAM', 'VENTE DE DIMANCHE 14/08', 1800000, '1002', 0),
(19, 'ope155', '2022-08-15 00:00:00', '1002000001', 'DESINATEUR', 'AVANCE SUR LES TSCHET ZENER', 200000, '1002', 0),
(20, 'ope167', '2022-08-15 00:00:00', '1002000001', 'ABRAHAM', 'VENTE DE LUNDI', 6300000, '1002', 0),
(21, 'ope170', '2022-08-15 00:00:00', '1002000001', 'ABRAHAM', 'VENTE DU 13/08/2022', 2400000, '1002', 0),
(22, 'ope171', '2022-08-15 00:00:00', '1002000001', 'ABRAHAM', 'VENT J', 200000, '1002', 0),
(23, 'ope176', '2022-08-16 00:00:00', '1002000001', 'ABRAHAM ', 'VENTE DU 15/08/2022', 1200000, '1002', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_entree`
--

CREATE TABLE `tb_entree` (
  `id_entree` int(11) NOT NULL,
  `code_art_src` varchar(20) NOT NULL,
  `code_art` varchar(20) NOT NULL,
  `code_mag` varchar(20) NOT NULL,
  `Qte_entree` int(11) NOT NULL,
  `type_entree` int(1) NOT NULL,
  `Usager` varchar(20) NOT NULL,
  `date_entree` datetime NOT NULL,
  `num_piece` varchar(30) NOT NULL,
  `statut_canc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_entree`
--

INSERT INTO `tb_entree` (`id_entree`, `code_art_src`, `code_art`, `code_mag`, `Qte_entree`, `type_entree`, `Usager`, `date_entree`, `num_piece`, `statut_canc`) VALUES
(1, '', '011C25', 'PFGB', 70, 0, '1001', '2022-08-04 18:50:49', 'INIT0408', 0),
(2, '', '011C25', 'PFGB', 14, 1, '1001', '2022-08-04 18:56:44', 'INIT0408', 0),
(3, '', '011C12', 'PFGB', 1300, 0, '1001', '2022-08-04 19:15:35', 'INIT0408', 0),
(4, '', '011C12', 'PFGB', 1000, 1, '1001', '2022-08-04 19:17:03', 'INIT0408', 0),
(5, '', '011C50', 'PFGB', 170, 0, '1002', '2022-08-04 22:53:42', 'B50', 0),
(6, '', '011C50', 'PFGB', 170, 0, '1002', '2022-08-04 22:55:08', 'B50', 0),
(7, '', '011C06E', 'PFGB', 80, 0, '1002', '2022-08-04 22:56:10', 'B50', 0),
(8, '', '02103K.', 'PFBC', 33, 0, '1002', '2022-08-04 22:56:34', 'B50', 0),
(9, '', '02106K', 'PFBC', 320, 0, '1002', '2022-08-04 22:56:54', 'B50', 0),
(10, '', '011C06.', 'PFGB', 120, 0, '1002', '2022-08-04 22:57:19', 'B50', 0),
(11, '', '011C06.', 'PFGB', 220, 1, '1002', '2022-08-05 11:16:07', 'B', 0),
(12, '', '011C06.', 'PFGB', 40, 1, '1002', '2022-08-05 11:17:26', 'B', 0),
(13, '', '011C50', 'PFGB', 34, 1, '1002', '2022-08-05 11:18:02', 'B', 0),
(14, '', '011C25', 'PFGB', 14, 1, '1002', '2022-08-05 11:18:29', 'B', 0),
(15, '', '011C03', 'PFGB', 10, 1, '1002', '2022-08-05 11:19:02', 'B', 0),
(16, '', '011C12', 'PFGB', 1009, 1, '1002', '2022-08-05 11:19:23', 'B', 0),
(17, '', '011C03', 'PFGB', 33, 0, '1002', '2022-08-05 11:28:36', 'B', 0),
(18, '', '011C06', 'PFGB', 320, 0, '1002', '2022-08-05 11:29:33', 'B', 0),
(19, '', '011C06', 'PFGB', 320, 0, '1002', '2022-08-05 14:19:07', 'B', 0),
(20, '', '011C06', 'PFGB', 220, 1, '1002', '2022-08-05 14:19:46', 'B', 0),
(21, '', '011C12', 'PFGB', 1561, 1, '1002', '2022-08-09 19:33:50', '1', 0),
(22, '', '011C50', 'PFGB', 126, 1, '1002', '2022-08-09 19:35:18', '1', 0),
(23, '', '011C06', 'PFGB', 323, 1, '1002', '2022-08-09 19:36:15', '1', 0),
(24, '', '011C25', 'PFGB', 21, 1, '1002', '2022-08-09 19:37:09', '1', 0),
(25, '', '011C03', 'PFGB', 16, 1, '1002', '2022-08-09 19:37:44', '1', 0),
(26, '', '011C12', 'PFGB', 360, 1, '1002', '2022-08-10 13:54:13', 'B', 0),
(27, '', '011C50', 'PFGB', 30, 1, '1002', '2022-08-10 13:56:39', 'B', 0),
(28, '', '011C12', 'PFGB', 408, 1, '1002', '2022-08-10 13:57:13', 'B', 0),
(29, '', '011C06', 'PFGB', 24, 1, '1002', '2022-08-10 14:02:35', 'B', 0),
(30, '', '011C50', 'PFGB', 12, 1, '1002', '2022-08-10 14:02:48', 'B', 0),
(31, '', '011C25', 'PFGB', 7, 1, '1002', '2022-08-10 14:03:04', 'B', 0),
(32, '', '011C12', 'PFGB', 217, 1, '1002', '2022-08-10 16:24:15', 'B', 0),
(33, '', '011C06.', 'PFGB', 94, 1, '1002', '2022-08-10 16:24:33', 'B', 0),
(34, '', '011C06.', 'PFGB', 32, 1, '1002', '2022-08-10 16:24:48', 'B', 0),
(35, '', '011C25', 'PFGB', 7, 1, '1002', '2022-08-10 16:25:01', 'B', 0),
(36, '', '011C50', 'PFGB', 10, 1, '1002', '2022-08-10 16:25:22', 'B', 0),
(37, '', '011C12', 'PFGB', 354, 1, '1002', '2022-08-12 09:25:30', 'P', 0),
(38, '', '011C06', 'PFGB', 178, 1, '1002', '2022-08-12 09:26:06', 'P', 0),
(39, '', '011C50', 'PFGB', 12, 1, '1002', '2022-08-12 09:26:27', 'P', 0),
(40, '', '011C25', 'PFGB', 7, 1, '1002', '2022-08-12 09:26:41', 'P', 0),
(41, '', '011C12', 'PFGB', 352, 1, '1002', '2022-08-12 09:26:58', 'P', 0),
(42, '', '011C50', 'PFGB', 30, 1, '1002', '2022-08-12 09:27:12', 'P', 0),
(43, '', '011C25', 'PFGB', 7, 1, '1002', '2022-08-12 09:27:27', 'P', 0),
(44, '', '011C12', 'PFGB', 416, 1, '1002', '2022-08-13 15:22:29', '1', 0),
(45, '', '011C50', 'PFGB', 12, 1, '1002', '2022-08-13 15:24:15', '1', 0),
(46, '', '011C25', 'PFGB', 7, 1, '1002', '2022-08-13 15:24:36', '1', 0),
(47, '', '011C50', 'PFGB', 30, 1, '1002', '2022-08-13 15:24:53', '1', 0),
(48, '', '011C50', 'PFGB', 60, 1, '1002', '2022-08-13 15:25:40', '1', 0),
(49, '', '011C06', 'PFGB', 180, 1, '1002', '2022-08-13 15:25:59', '1', 0),
(50, '', '011C06.', 'PFGB', 60, 1, '1002', '2022-08-13 15:26:21', '1', 0),
(51, '', '011C12', 'PFGB', 352, 1, '1002', '2022-08-13 15:26:40', '1', 0),
(52, '', '011C25', 'PFGB', 7, 1, '1002', '2022-08-13 15:28:12', '1', 0),
(53, '', '011C12', 'PFGB', 360, 1, '1002', '2022-08-13 15:28:59', '1', 0),
(54, '', '011C12', 'PFGB', 15, 1, '1002', '2022-08-13 15:38:25', 'ALBERT', 0),
(55, '', '011C12', 'PFGB', 440, 1, '1002', '2022-08-15 14:30:49', 'ALBERT', 0),
(56, '', '011C12', 'PFGB', 312, 1, '1002', '2022-08-15 14:49:34', 'AKOUTE', 0),
(57, '', '011C06', 'PFGB', 288, 1, '1002', '2022-08-15 14:49:55', 'AKOUTE', 0),
(58, '', '011C06', 'PFGB', 288, 1, '1002', '2022-08-15 14:50:09', 'AKOUTE', 1),
(59, '', '02103K.', 'PFBC', 100, 0, '1002', '2022-08-25 22:03:59', '0', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_entree_canc`
--

CREATE TABLE `tb_entree_canc` (
  `id_esc` int(11) NOT NULL,
  `num_piece` varchar(30) DEFAULT NULL,
  `code_art` varchar(30) NOT NULL,
  `motif` varchar(255) DEFAULT NULL,
  `qte` int(11) NOT NULL,
  `date_canc` date NOT NULL,
  `user_canc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_entree_canc`
--

INSERT INTO `tb_entree_canc` (`id_esc`, `num_piece`, `code_art`, `motif`, `qte`, `date_canc`, `user_canc`) VALUES
(1, 'AKOUTE', '011C06', 'DOUBLON', 288, '2022-08-15', '1002');

-- --------------------------------------------------------

--
-- Structure de la table `tb_facturation`
--

CREATE TABLE `tb_facturation` (
  `id_fact` int(11) NOT NULL,
  `date_fact` datetime DEFAULT NULL,
  `num_fact` varchar(30) DEFAULT NULL,
  `code_clt` varchar(10) NOT NULL,
  `nom_clt` varchar(100) NOT NULL,
  `qte_total` int(11) DEFAULT NULL,
  `mnt_t` double DEFAULT NULL,
  `mnt_p` double NOT NULL,
  `mnt_r` int(11) NOT NULL,
  `statut` varchar(20) NOT NULL,
  `type_fact` varchar(30) NOT NULL,
  `num_comc` varchar(12) DEFAULT NULL,
  `vehicule` varchar(10) NOT NULL,
  `statut_canc` int(1) NOT NULL,
  `usager` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_facturation`
--

INSERT INTO `tb_facturation` (`id_fact`, `date_fact`, `num_fact`, `code_clt`, `nom_clt`, `qte_total`, `mnt_t`, `mnt_p`, `mnt_r`, `statut`, `type_fact`, `num_comc`, `vehicule`, `statut_canc`, `usager`) VALUES
(1, '2022-08-04 19:03:36', 'CCP-F1', 'ER01', 'ERIK', 10, 120000, 0, 120000, 'AT', 'Comptoir', '', '', 1, '1001'),
(2, '2022-08-04 19:20:50', 'CCP-F2', 'ER01', 'ERIK', 70, 420000, 420000, 0, 'PA', 'Comptoir', '', '', 1, '1001'),
(3, '2022-08-04 21:48:58', 'CCP-F3', 'I1', 'ISSAKA KARA 1', 19, 120000, 0, 120000, 'AT', 'Comptoir', '', '', 1, '1002'),
(4, '2022-08-04 22:26:16', 'CCP-F4', 'M1', 'MILLA GAZ', 36, 234000, 234000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(5, '2022-08-05 08:41:50', 'CCP-F5', 'O', 'STATION OANDO', 20, 97000, 8200, 88800, 'AT', 'Comptoir', '', '', 0, '1002'),
(6, '2022-08-05 10:45:06', 'CCP-F6', 'KO01', 'KOLANI ', 17, 138000, 138000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(7, '2022-08-05 11:04:36', 'CCP-F7', 'KO01', 'KOLANI ', 20, 120000, 120000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(8, '2022-08-05 11:13:02', 'CCP-F8', 'DO1', 'DOUTI', 29, 174000, 174000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(9, '2022-08-05 14:12:05', 'CCP-F9', 'ER01', 'ERIK', 95, 630000, 0, 630000, 'AT', 'Comptoir', '', '', 1, '1002'),
(10, '2022-08-05 14:20:10', 'CCP-F10', 'CO1', 'CONFIANCE GAZ', 5, 120000, 120000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(11, '2022-08-05 17:17:06', 'CCP-F11', 'M1', 'MILLA GAZ', 29, 174000, 174000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(12, '2022-08-05 17:56:55', 'CCP-F12', 'ER01', 'ERIK', 80, 480000, 0, 480000, 'AT', 'Comptoir', '', '', 1, '1002'),
(13, '2022-08-06 10:24:49', 'CCR-F13', 'KO', 'KOFFI DAPAONG GAZ', 100, 1834800, 1834800, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(14, '2022-08-06 10:32:09', 'CCP-F14', 'P1', 'PIKABE GAZ', 22, 155520, 155520, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(15, '2022-08-05 11:28:40', 'CCP-F15', 'DO1', 'DOUTI', 17, 102000, 102000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(16, '2022-08-06 12:20:46', 'CCP-F16', 'ER01', 'ERIK', 61, 256800, 0, 256800, 'FO', 'Comptoir', '', '', 1, '1002'),
(17, '2020-01-01 17:15:11', 'CCR-F17', 'ER01', 'ERIK', 205, 6237480, 1212480, 5025000, 'AT', 'Comptoir', '', '', 1, '1002'),
(18, '2022-08-01 17:21:14', 'CCP-F18', 'ER01', 'ERIK', 124, 739680, 0, 739680, 'AT', 'Comptoir', '', '', 1, '1002'),
(19, '2022-08-02 17:24:02', 'CCP-F19', 'ER01', 'ERIK', 25, 168000, 0, 168000, 'AT', 'Comptoir', '', '', 1, '1002'),
(20, '2022-08-03 17:25:47', 'CCP-F20', 'ER01', 'ERIK', 73, 411840, 0, 411840, 'AT', 'Comptoir', '', '', 1, '1002'),
(21, '2022-08-03 17:28:29', 'CCP-F21', 'ER01', 'ERIK', 56, 390000, 0, 390000, 'AT', 'Comptoir', '', '', 1, '1002'),
(22, '2022-08-03 17:30:01', 'CCP-F22', 'ER01', 'ERIK', 4, 24000, 0, 24000, 'AT', 'Comptoir', '', '', 1, '1002'),
(23, '2022-08-04 17:32:10', 'CCP-F23', 'ER01', 'ERIK', 95, 630000, 0, 630000, 'AT', 'Comptoir', '', '', 1, '1002'),
(24, '2022-08-05 17:33:18', 'CCP-F24', 'ER01', 'ERIK', 80, 480000, 0, 480000, 'AT', 'Comptoir', '', '', 1, '1002'),
(25, '2022-08-06 17:34:02', 'CCP-F25', 'ER01', 'ERIK', 61, 256800, 0, 256800, 'AT', 'Comptoir', '', '', 1, '1002'),
(26, '2022-08-05 17:50:42', 'CCP-F26', 'ER01', 'ERIK', 80, 480000, 0, 480000, 'AT', 'Comptoir', '', '', 1, '1002'),
(27, '2022-08-02 19:01:59', 'CCP-F27', 'FE1', 'FELICITE GAZ', 40, 177600, 0, 177600, 'PA', 'Comptoir', '', '', 0, '1002'),
(28, '2022-08-07 16:06:42', 'CCP-F28', 'I1', 'ISSAKA KARA 1', 30, 158400, 158400, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(29, '2022-08-08 20:49:08', 'CCP-F29', 'M1', 'MILLA GAZ', 24, 144000, 144000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(30, '2022-08-08 20:51:26', 'CCP-F30', 'L1', 'LAMBO GAZ', 32, 215040, 200000, 15040, 'AT', 'Comptoir', '', '', 1, '1002'),
(31, '2022-08-08 20:52:47', 'CCP-F31', 'AL', 'ALU SAVANE', 15, 71280, 0, 71280, 'AT', 'Comptoir', '', '', 0, '1002'),
(32, '2022-08-08 20:54:02', 'CCP-F32', 'BC', 'BUSNESS CENTER', 23, 158400, 0, 158400, 'AT', 'Comptoir', '', '', 0, '1002'),
(33, '2022-08-08 21:24:51', 'CCP-F33', 'ER01', 'ERIK', 117, 765600, 0, 765600, 'AT', 'Comptoir', '', '', 1, '1002'),
(34, '2022-08-05 21:27:54', 'CCP-F34', 'O', 'STATION OANDO', 20, 97000, 8200, 88800, 'AT', 'Comptoir', '', '', 0, '1002'),
(35, '2022-08-05 21:28:58', 'CCP-F35', 'A1', 'ABALO GAZ', 26, 192000, 192000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(36, '2022-08-09 12:20:15', 'CCP-F36', 'DAP2', 'DAPAONG 2 BIGBA', 10, 60000, 60000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(37, '2022-08-09 12:21:25', 'CCR-F37', 'DAP2', 'DAPAONG 2 BIGBA', 18, 321840, 321840, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(38, '2022-08-09 12:25:18', 'CCP-F38', 'C1', 'CINKANCE MARO GAZ', 43, 340320, 340320, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(39, '2022-08-09 14:44:58', 'CCP-F39', 'I1', 'ISSAKA KARA 1', 98, 315840, 315840, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(40, '2022-08-09 14:52:22', 'CCP-F40', 'M1', 'MILLA GAZ', 25, 150000, 150000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(41, '2022-08-09 14:54:09', 'CCP-F41', 'KO01', 'KOLANI ', 27, 198000, 198000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(42, '2022-08-09 15:00:01', 'CCP-F42', 'L1', 'LAMBO GAZ', 32, 215040, 200000, 15040, 'AT', 'Comptoir', '', '', 1, '1002'),
(43, '2022-08-09 15:51:42', 'CCP-F43', 'AD', 'ADOUGBA GAZ', 3, 72000, 0, 72000, 'PA', 'Comptoir', '', '', 1, '1002'),
(44, '2022-08-09 18:54:23', 'CCP-F44', 'L1', 'LAMBO GAZ', 20, 125520, 0, 125520, 'AT', 'Comptoir', '', '', 1, '1002'),
(45, '2022-08-09 18:57:54', 'CCP-F45', 'KO01', 'KOLANI ', 20, 125520, 125520, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(46, '2022-08-09 19:14:17', 'CCP-F46', 'ER01', 'ERIK', 95, 649920, 0, 649920, 'AT', 'Comptoir', '', '', 1, '1002'),
(47, '2022-08-09 19:16:15', 'CCP-F47', 'ER01', 'ERIK', 38, 159360, 0, 159360, 'AT', 'Comptoir', '', '', 1, '1002'),
(48, '2022-08-09 21:08:38', 'CCP-F48', 'I1', 'ISSAKA KARA 1', 98, 315840, 0, 315840, 'FO', 'Comptoir', '', '', 0, '1002'),
(49, '2022-08-10 08:30:22', 'CCP-F49', 'R0', 'REHOBOPH', 20, 134160, 70000, 64160, 'FO', 'Comptoir', '', '', 0, '1002'),
(50, '2022-08-10 08:36:24', 'CCP-F50', 'G1', 'GERMAIN GAZ', 20, 57600, 0, 57600, 'AT', 'Comptoir', '', '', 0, '1002'),
(51, '2022-08-10 08:37:36', 'CCP-F51', 'N', 'NUMAR', 20, 120000, 120000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(52, '2022-08-10 08:48:22', 'CCP-F52', 'FAT', 'FATAO GAZ', 29, 228000, 228000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(53, '2022-08-10 13:25:54', 'CCP-F53', 'ER01', 'ERIK', 33, 198000, 0, 198000, 'AT', 'Comptoir', '', '', 1, '1002'),
(54, '2022-08-10 16:31:51', 'CCP-F54', 'M1', 'MILLA GAZ', 15, 108000, 108000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(55, '2022-08-11 16:05:44', 'SCE55', 'ER01', 'ERIK', 3, 6000, 0, 6000, 'AT', '', '', '', 0, '1002'),
(56, '2022-08-11 16:15:50', 'CCP-F56', 'K4', 'KOBNA ', 26, 192000, 0, 192000, 'AT', 'Comptoir', '', '', 1, '1002'),
(57, '2022-08-11 16:20:14', 'CCP-F57', 'K4', 'KOBNA ', 30, 180000, 0, 180000, 'AT', 'Comptoir', '', '', 1, '1002'),
(58, '2022-08-11 16:26:38', 'CCP-F58', 'TY', 'TOYIMI ZANGUERA', 9, 29040, 29040, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(59, '2022-08-11 16:29:55', 'CCP-F59', 'MAR', 'MARGO GAZ', 35, 181920, 181920, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(60, '2022-08-11 16:45:45', 'SCE60', 'DO1', 'DOUTI', 5, 30000, 0, 30000, 'AT', '', '', '', 0, '1002'),
(61, '2022-08-11 20:18:41', 'CCP-F61', 'K4', 'KOBNA ', 13, 78000, 0, 78000, 'AT', 'Comptoir', '', '', 1, '1002'),
(62, '2022-08-11 20:20:53', 'CCP-F62', 'K4', 'KOBNA ', 26, 192000, 192000, 0, 'PA', 'Comptoir', '', '', 1, '1002'),
(63, '2022-08-11 20:21:31', 'CCP-F63', 'ER01', 'ERIK', 80, 480000, 0, 480000, 'AT', 'Comptoir', '', '', 1, '1002'),
(64, '2022-08-11 20:22:17', 'CCP-F64', 'N', 'NUMAR', 30, 180000, 90000, 90000, 'AT', 'Comptoir', '', '', 0, '1002'),
(65, '2022-08-11 20:23:24', 'CCP-F65', 'KO01', 'KOLANI ', 26, 192000, 192000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(66, '2022-08-11 20:27:49', 'CCP-F66', 'SO', 'SOULEMANE GAZ', 10, 60000, 60000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(67, '2022-08-10 20:31:04', 'CCP-F67', 'ER01', 'ERIK', 100, 600000, 0, 600000, 'AT', 'Comptoir', '', '', 1, '1002'),
(68, '2022-08-10 20:31:56', 'CCP-F68', 'SO', 'SOULEMANE GAZ', 15, 90000, 90000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(69, '2022-08-10 20:42:47', 'CCP-F69', 'R0', 'REHOBOPH', 6, 72000, 71000, 1000, 'AT', 'Comptoir', '', '', 0, '1002'),
(70, '2022-08-11 21:51:03', 'CCP-F70', 'M1', 'MILLA GAZ', 15, 90000, 90000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(71, '2022-08-11 22:24:31', 'CCP-F71', 'K4', 'KOBNA ', 26, 192000, 0, 192000, 'AT', 'Comptoir', '', '', 1, '1002'),
(72, '2022-08-11 22:28:37', 'CCP-F72', 'K4', 'KOBNA ', 25, 150000, 0, 150000, 'AT', 'Comptoir', '', '', 1, '1002'),
(73, '2022-08-12 06:21:13', 'CCP-F73', 'K4', 'KOBNA ', 26, 192000, 0, 192000, 'AT', 'Comptoir', '', '', 1, '1002'),
(74, '2022-08-10 08:36:13', 'CCP-F74', 'ER01', 'ERIK', 11, 158400, 0, 158400, 'AT', 'Comptoir', '', '', 1, '1002'),
(75, '2022-08-11 08:37:24', 'CCP-F75', 'ER01', 'ERIK', 33, 198000, 0, 198000, 'AT', 'Comptoir', '', '', 1, '1002'),
(76, '2022-08-12 08:48:48', 'CCP-F76', 'KO2', 'KOLANI TSEVIER', 41, 283680, 283680, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(77, '2022-08-11 09:05:50', 'CCP-F77', 'O', 'STATION OANDO', 20, 64000, 6400, 57600, 'AT', 'Comptoir', '', '', 0, '1002'),
(78, '2022-08-12 09:07:11', 'CCP-F78', 'DO1', 'DOUTI', 22, 150000, 150000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(79, '2022-08-12 09:36:00', 'CCP-F79', 'FS', 'FIS GAZ', 24, 91680, 0, 91680, 'AT', 'Comptoir', '', '', 0, '1002'),
(80, '2022-08-12 09:56:52', 'CCP-F80', 'FAT', 'FATAO GAZ', 25, 168000, 168000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(81, '2022-08-12 10:54:54', 'CCR-F81', 'T001', 'TAZO 3 GAZ', 1, 89000, 85000, 4000, 'AT', 'Comptoir', '', '', 0, '1002'),
(82, '2022-08-12 11:16:07', 'CCP-F82', 'D1', 'KODJO DAPAONG 1 GAZ', 85, 506400, 0, 506400, 'AT', 'Comptoir', '', '', 0, '1002'),
(83, '2022-08-12 11:18:01', 'CCP-F83', 'C1', 'CINKANCE MARO GAZ', 39, 360000, 0, 360000, 'AT', 'Comptoir', '', '', 0, '1002'),
(84, '2022-08-12 11:39:37', 'CCP-F84', 'KO2', 'KOLANI TSEVIER', 22, 115680, 115680, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(85, '2020-01-01 16:34:36', 'CCP-F85', 'ER01', 'ERIK', 205, 1212480, 0, 1212480, 'AT', 'Comptoir', '', '', 0, '1002'),
(86, '2022-08-01 16:36:05', 'CCP-F86', 'ER01', 'ERIK', 124, 739680, 0, 739680, 'AT', 'Comptoir', '', '', 0, '1002'),
(87, '2022-08-02 16:37:11', 'CCP-F87', 'ER01', 'ERIK', 25, 168000, 0, 168000, 'AT', 'Comptoir', '', '', 0, '1002'),
(88, '2022-08-03 16:38:15', 'CCP-F88', 'ER01', 'ERIK', 73, 411840, 0, 411840, 'AT', 'Comptoir', '', '', 0, '1002'),
(89, '2022-08-03 16:39:10', 'CCP-F89', 'ER01', 'ERIK', 56, 390000, 0, 390000, 'AT', 'Comptoir', '', '', 0, '1002'),
(90, '2022-08-03 16:39:45', 'CCP-F90', 'ER01', 'ERIK', 4, 24000, 0, 24000, 'AT', 'Comptoir', '', '', 0, '1002'),
(91, '2022-08-04 16:40:28', 'CCP-F91', 'ER01', 'ERIK', 95, 630000, 0, 630000, 'AT', 'Comptoir', '', '', 0, '1002'),
(92, '2022-08-05 16:41:22', 'CCP-F92', 'ER01', 'ERIK', 80, 480000, 0, 480000, 'AT', 'Comptoir', '', '', 0, '1002'),
(93, '2022-08-06 16:42:16', 'CCP-F93', 'ER01', 'ERIK', 61, 256800, 0, 256800, 'AT', 'Comptoir', '', '', 0, '1002'),
(94, '2022-08-08 16:43:42', 'CCP-F94', 'ER01', 'ERIK', 113, 754080, 0, 754080, 'AT', 'Comptoir', '', '', 0, '1002'),
(95, '2022-08-09 16:44:37', 'CCP-F95', 'ER01', 'ERIK', 95, 649920, 0, 649920, 'AT', 'Comptoir', '', '', 0, '1002'),
(96, '2022-08-09 16:45:27', 'CCP-F96', 'ER01', 'ERIK', 38, 159360, 0, 159360, 'AT', 'Comptoir', '', '', 0, '1002'),
(97, '2022-08-10 16:46:26', 'CCP-F97', 'ER01', 'ERIK', 11, 158400, 0, 158400, 'AT', 'Comptoir', '', '', 0, '1002'),
(98, '2022-08-10 16:47:04', 'CCP-F98', 'ER01', 'ERIK', 33, 198000, 0, 198000, 'AT', 'Comptoir', '', '', 0, '1002'),
(99, '2022-08-10 16:47:48', 'CCP-F99', 'ER01', 'ERIK', 100, 600000, 0, 600000, 'AT', 'Comptoir', '', '', 0, '1002'),
(100, '2022-08-11 16:48:25', 'CCP-F100', 'ER01', 'ERIK', 33, 198000, 0, 198000, 'AT', 'Comptoir', '', '', 0, '1002'),
(101, '2022-08-11 16:48:57', 'CCP-F101', 'ER01', 'ERIK', 80, 480000, 0, 480000, 'AT', 'Comptoir', '', '', 0, '1002'),
(102, '2022-08-11 22:01:16', 'CCP-F102', 'K4', 'KOBNA ', 26, 192000, 0, 192000, 'AT', 'Comptoir', '', '', 1, '1002'),
(103, '2022-08-12 22:02:10', 'CCP-F103', 'K4', 'KOBNA ', 22, 168000, 168000, 0, 'PA', 'Comptoir', '', '', 1, '1002'),
(104, '2022-08-12 22:13:11', 'SCE104', 'ER01', 'ERIK', 1, 405000, 0, 405000, 'AT', 'Comptoir', '', '', 0, '1002'),
(105, '2022-07-01 22:15:46', 'SCE105', 'ER01', 'ERIK', 1, 3000000, 0, 3000000, 'AT', 'Comptoir', '', '', 1, '1002'),
(106, '2022-08-13 08:12:27', 'CCP-F106', 'ER01', 'ERIK', 115, 686400, 0, 686400, 'AT', 'Comptoir', '', '', 0, '1002'),
(107, '2022-08-13 10:50:13', 'CCP-F107', 'FAT', 'FATAO GAZ', 30, 216000, 216000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(108, '2022-08-13 10:56:30', 'CCP-F108', 'R0', 'REHOBOPH', 13, 78000, 68000, 10000, 'AT', 'Comptoir', '', '', 0, '1002'),
(109, '2022-08-12 10:58:54', 'CCP-F109', 'L1', 'LAMBO GAZ', 25, 118800, 118800, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(110, '2022-08-12 10:59:44', 'CCP-F110', 'M1', 'MILLA GAZ', 17, 102000, 102000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(111, '2022-08-13 11:12:27', 'CCP-F111', 'ER01', 'ERIK', 115, 686400, 0, 686400, 'AT', 'Comptoir', '', '', 1, '1002'),
(112, '2022-08-13 13:50:35', 'CCP-F112', 'F001', 'FIL OPARK GAZ', 58, 288000, 288000, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(113, '2022-08-13 14:14:19', 'CCP-F113', 'K4', 'KOBNA ', 8, 190233, 190233, 0, 'PA', 'Comptoir', '', '', 1, '1002'),
(114, '2022-08-13 14:15:53', 'SCE114', 'K4', 'KOBNA ', 1, 1767, 1767, 0, 'PA', 'Comptoir', '', '', 1, '1002'),
(115, '2022-08-13 15:57:18', 'CCP-F115', 'PR02', 'PROMO GAZ FECANDINE', 8, 343600, 343600, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(116, '2022-08-13 16:33:36', 'SCE116', 'ER01', 'ERIK', 1, 4074460, 800000, 3274460, 'AT', 'Comptoir', '', '', 0, '1002'),
(117, '2022-08-13 17:00:59', 'CCP-F117', 'A', 'ALEX GAZ', 15, 133030, 133030, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(118, '2022-08-13 17:02:39', 'CCP-F118', 'ZA1', 'ZAKARI GAZ', 7, 75166, 75166, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(119, '2022-08-13 17:05:33', 'CCP-F119', 'I001', 'IPG YAOVI GAZ', 10, 107380, 107380, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(120, '2022-08-13 17:06:37', 'CCP-F120', 'DA', 'DAHOE GAZ', 13, 198410, 198410, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(121, '2022-08-13 17:36:16', 'SCE121', 'EXO', 'EXODUS GAZ', 1, 17500, 17500, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(122, '2022-08-13 21:31:30', 'CCP-F122', 'C001', 'CENTRALE GAZ', 12, 128856, 128856, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(123, '2022-08-13 21:46:35', 'CCP-F123', 'K4', 'KOBNA ', 19, 268446, 268446, 0, 'PA', 'Comptoir', '', '', 1, '1002'),
(124, '2022-08-14 09:29:10', 'CCP-F124', 'KT', 'KLARA GAZ', 30, 322140, 322140, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(125, '2022-08-13 09:30:07', 'CCP-F125', 'E002', 'ERIK DJAGBLE', 69, 826820, 826820, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(126, '2022-08-14 09:49:05', 'CCP-F126', 'L1', 'LAMBO GAZ', 17, 256750, 0, 256750, 'AT', 'Comptoir', '', '', 0, '1002'),
(127, '2022-08-15 21:05:19', 'CCP-F127', 'TI01', 'TINA MACKET ', 15, 154026, 0, 154026, 'AT', 'Comptoir', '', '', 0, '1002'),
(128, '2022-08-15 21:08:12', 'CCP-F128', 'MO', 'MOMO GAZ', 56, 662880, 662880, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(129, '2022-08-15 21:09:35', 'CCP-F129', 'CO1', 'CONFIANCE GAZ', 8, 214752, 214752, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(130, '2022-08-15 21:20:06', 'CCP-F130', 'ME01', 'MEDE GAZ', 72, 273450, 0, 273450, 'AT', 'Comptoir', '', '', 1, '1002'),
(131, '2022-08-15 21:21:55', 'CCP-F131', 'TI02', 'TIMBROWN GAZ', 30, 144300, 0, 144300, 'FO', 'Comptoir', '', '', 0, '1002'),
(132, '2022-08-15 21:27:23', 'CCP-F132', 'EM02', 'EMANUEL APECITO', 14, 94252, 0, 94252, 'AT', 'Comptoir', '', '', 0, '1002'),
(133, '2022-08-14 21:50:00', 'SCE133', 'L1', 'LAMBO GAZ', 2, 430080, 400000, 30080, 'AT', 'Comptoir', '', '', 0, '1002'),
(134, '2022-08-15 21:56:53', 'CCP-F134', 'DU01', 'DUCO GAZ', 45, 392046, 392046, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(135, '2022-08-05 22:01:30', 'SCE135', 'L1', 'LAMBO GAZ', 1, 166560, 0, 166560, 'AT', 'Comptoir', '', '', 0, '1002'),
(136, '2022-08-11 22:35:36', 'CCP-F136', 'E002', 'ERIK DJAGBLE', 73, 841732, 0, 841732, 'AT', 'Comptoir', '', '', 0, '1002'),
(137, '2022-08-05 22:38:05', 'CCP-F137', 'E002', 'ERIK DJAGBLE', 105, 998197, 0, 998197, 'AT', 'Comptoir', '', '', 0, '1002'),
(138, '2022-08-02 22:43:51', '138', 'ER01', 'ERIK', 130, 96000, 0, 96000, 'AT', 'Comptoir', '', '', 0, '1002'),
(139, '2022-08-01 22:53:21', 'SCE139', 'EXO', 'EXODUS GAZ', 7, 105840, 0, 105840, 'AT', 'Comptoir', '', '', 0, '1002'),
(140, '2022-08-15 09:51:49', 'SCE140', 'K4', 'KOBNA ', 2, 564000, 564000, 0, 'PA', 'Comptoir', '', '', 1, '1002'),
(141, '2022-08-15 09:53:25', 'SCE141', 'K4', 'KOBNA ', 1, 282000, 0, 282000, 'AT', 'Comptoir', '', '', 1, '1002'),
(142, '2022-08-15 10:02:58', 'CCP-F142', 'SA', 'SALI GAZ', 20, 214760, 0, 214760, 'AT', 'Comptoir', '', '', 0, '1002'),
(143, '2022-08-15 10:11:26', 'CCP-F143', 'MAW', 'MAWOUSSI GAZ', 11, 101294, 0, 101294, 'AT', 'Comptoir', '', '', 0, '1002'),
(144, '2022-08-15 10:12:15', 'CCP-F144', 'FD02', 'FIDELITAS GAZ', 30, 209980, 209980, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(145, '2022-08-15 10:15:05', 'CCP-F145', 'KZ02', 'KOZATOU GAZ', 16, 214757, 214757, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(146, '2022-08-15 10:18:33', 'CCP-F146', 'BE02', 'BEATRUC GAZ', 10, 79340, 79340, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(147, '2022-08-15 10:24:25', 'CCP-F147', 'DO1', 'DOUTI', 34, 281450, 0, 281450, 'AT', 'Comptoir', '', '', 1, '1002'),
(148, '2022-08-15 10:25:17', 'CCP-F148', 'TE', 'TECO/DRAMANE GAZ', 20, 214760, 214760, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(149, '2022-08-15 10:33:09', 'CCP-F149', 'EN01', 'ENTREPRISE GAZ', 5, 85902, 85902, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(150, '2022-08-15 10:33:53', 'CCP-F150', 'AD', 'ADOUGBA GAZ', 3, 128850, 128850, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(151, '2022-08-15 10:37:29', 'CCP-F151', 'EN01', 'ENTREPRISE GAZ', 3, 85900, 85900, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(152, '2022-08-15 10:41:10', 'CCP-F152', 'J', 'JAQUE GAZ', 12, 137200, 137200, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(153, '2022-08-15 10:42:32', 'CCP-F153', 'BO2', 'BOUCHER GAZ', 7, 139590, 139590, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(154, '2022-08-15 10:43:24', 'CCP-F154', 'T001', 'TAZO 3 GAZ', 13, 175978, 175978, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(155, '2022-08-15 10:45:01', 'CCP-F155', 'TH02', 'THOMAS ', 36, 352920, 0, 352920, 'FO', 'Comptoir', '', '', 0, '1002'),
(156, '2022-08-15 10:47:01', 'CCP-F156', 'L1', 'LAMBO GAZ', 27, 288010, 288010, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(157, '2022-08-15 11:04:04', 'CCP-F157', 'NA01', 'NANEGBE GAZ', 27, 270230, 0, 270230, 'AT', 'Comptoir', '', '', 0, '1002'),
(158, '2022-08-15 11:17:52', 'CCP-F158', 'A', 'ALEX GAZ', 16, 138160, 138160, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(159, '2022-08-15 11:19:54', 'CCP-F159', 'A', 'ALEX GAZ', 16, 138160, 0, 138160, 'AT', 'Comptoir', '', '', 1, '1002'),
(160, '2022-08-15 12:07:24', 'CCP-F160', 'NE', 'PLANTATION /NEDJRO GAZ', 3, 32214, 32214, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(161, '2022-08-15 12:35:02', 'CCP-F161', 'Y', 'YAKOUBA GAZ', 12, 128856, 128856, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(162, '2022-08-15 12:36:59', 'CCP-F162', 'AD', 'ADOUGBA GAZ', 3, 128850, 128850, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(163, '2022-08-15 12:39:26', 'CCP-F163', 'G1', 'GERMAIN GAZ', 20, 214760, 0, 214760, 'AT', 'Comptoir', '', '', 0, '1002'),
(164, '2022-08-15 12:43:25', 'CCP-F164', 'F001', 'FIL OPARK GAZ', 26, 311400, 311400, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(165, '2022-08-15 13:00:36', 'CCP-F165', 'ME01', 'MEDE GAZ', 18, 92340, 92340, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(166, '2022-08-15 13:01:47', 'CCP-F166', 'TI02', 'TIMBROWN GAZ', 15, 161070, 161070, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(167, '2022-08-15 13:13:03', 'CCP-F167', 'MAR', 'MARGO GAZ', 31, 293622, 293622, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(168, '2022-08-15 13:13:53', 'CCP-F168', 'KL', 'KOMLA TOTSI RAIL', 2, 21476, 21476, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(169, '2022-08-15 13:17:20', 'CCP-F169', 'KL', 'KOMLA TOTSI RAIL', 2, 85900, 85900, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(170, '2022-08-15 13:42:39', 'CCP-F170', 'M1', 'MILLA GAZ', 20, 214760, 214760, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(171, '2022-08-15 14:16:41', 'CCP-F171', 'KT', 'KLARA GAZ', 33, 354354, 354354, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(172, '2022-08-15 14:24:13', 'CCP-F172', 'MN01', 'MON NOM EST BENI', 15, 161070, 161070, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(173, '2022-08-15 14:39:47', 'CCP-F173', 'FAT', 'FATAO GAZ', 22, 300660, 300660, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(174, '2022-08-15 15:05:22', 'CCP-F174', 'ZO02', 'ZOSSIME 3 GAZ', 22, 279185, 0, 279185, 'AT', 'Comptoir', '', '', 0, '1002'),
(175, '2022-08-15 15:06:05', 'CCP-F175', 'ER01', 'ERIK', 87, 1159690, 511690, 648000, 'AT', 'Comptoir', '', '', 0, '1002'),
(176, '2022-08-15 15:07:15', 'CCP-F176', 'SO', 'SOULEMANE GAZ', 13, 139594, 139594, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(177, '2022-08-15 15:08:44', 'CCP-F177', 'R0', 'REHOBOPH', 10, 171804, 106000, 65804, 'AT', 'Comptoir', '', '', 0, '1002'),
(178, '2022-08-15 15:14:33', 'CCP-F178', 'GD01', 'GLOIRE DE DIEU', 6, 107377, 107377, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(179, '2022-08-15 15:25:43', 'CCP-F179', 'N', 'NUMAR', 10, 107380, 107380, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(180, '2022-08-12 16:46:31', 'CCP-F180', 'ER01', 'ERIK', 33, 354354, 156354, 198000, 'AT', 'Comptoir', '', '', 0, '1002'),
(181, '2022-08-15 16:48:17', '181', 'ER01', 'ERIK', 255, 182000, 25000, 157000, 'AT', 'Comptoir', '', '', 0, '1002'),
(182, '2022-08-15 20:03:38', 'SCE182', 'C1', 'CINKANCE MARO GAZ', 25, 845000, 0, 845000, 'AT', 'Comptoir', '', '', 1, '1002'),
(183, '2022-01-01 20:06:42', 'SCE183', 'C1', 'CINKANCE MARO GAZ', 25, 845000, 475000, 370000, 'AT', 'Comptoir', '', '', 0, '1002'),
(184, '2022-08-16 08:37:11', 'CCP-F184', 'GE01', 'GER GAZ', 5, 179788, 179788, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(185, '2022-08-16 08:37:48', 'CCP-F185', 'KL', 'KOMLA TOTSI RAIL', 2, 84600, 0, 84600, 'AT', 'Comptoir', '', '', 0, '1002'),
(186, '2022-08-16 08:38:32', 'CCP-F186', 'EV1', 'SAVENA GAZ', 4, 169200, 169200, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(187, '2022-08-16 08:44:31', 'CCP-F187', 'BC', 'BUSNESS CENTER', 35, 486840, 486840, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(188, '2022-08-16 08:59:25', 'CCP-F188', 'ER01', 'ERIK', 15, 158820, 0, 158820, 'AT', 'Comptoir', '', '', 0, '1002'),
(189, '2022-08-16 08:59:52', 'CCP-F189', 'LA01', 'LARE', 2, 84600, 84600, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(190, '2022-08-16 09:00:20', 'CCP-F190', 'EN06', 'ENOULI GAZ', 7, 74116, 74116, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(191, '2022-08-16 09:01:03', 'CCP-F191', 'VI05', 'VIGUEUR ', 5, 179788, 179788, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(192, '2022-08-16 09:06:39', 'SCE192', 'ER01', 'ERIK', 5, 6500, 0, 6500, 'AT', 'Comptoir', '', '', 0, '1002'),
(193, '2022-08-16 09:13:58', 'CCP-F193', 'FI04', 'GAKPO GAZ', 47, 376460, 34800, 341660, 'AT', 'Comptoir', '', '', 0, '1002'),
(194, '2022-08-16 09:20:30', 'CCP-F194', 'BL07', 'BLESSED GAZ', 7, 126524, 0, 126524, 'AT', 'Comptoir', '', '', 0, '1002'),
(195, '2022-08-15 10:21:59', 'CCP-F195', 'DO1', 'DOUTI', 24, 254112, 2000, 252112, 'AT', 'Comptoir', '', '', 0, '1002'),
(196, '2022-08-16 10:22:52', 'CCP-F196', 'ZA1', 'ZAKARI GAZ', 2, 84600, 84600, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(197, '2022-08-16 10:23:52', 'CCP-F197', 'SO01', 'SOMITE', 8, 84704, 84704, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(198, '2022-08-16 10:24:24', 'CCP-F198', 'ME ', 'METROPOLICE GAZ', 14, 148232, 148232, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(199, '2022-08-16 10:27:58', 'CCP-F199', 'A ', 'AMETODE GAZ', 16, 201120, 0, 201120, 'AT', 'Comptoir', '', '', 1, '1002'),
(200, '2022-08-16 10:29:32', 'CCP-F200', 'A ', 'AMETODE GAZ', 16, 201120, 201120, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(201, '2022-08-16 11:38:05', 'CCP-F201', 'K01', 'KOWONI GAZ', 36, 293040, 293040, 0, 'PA', 'Comptoir', '', '', 0, '1002'),
(202, '2022-08-16 12:28:58', 'CCP-F202', 'K4', 'KOBNA ', 10, 105880, 105880, 0, 'PA', 'Comptoir', '', '', 0, '1002');

-- --------------------------------------------------------

--
-- Structure de la table `tb_facturation_detail`
--

CREATE TABLE `tb_facturation_detail` (
  `id_fact` int(11) NOT NULL,
  `date_fact` datetime DEFAULT NULL,
  `num_fact` varchar(30) DEFAULT NULL,
  `code_mag` varchar(10) DEFAULT NULL,
  `designation_mag` varchar(100) DEFAULT NULL,
  `code_tclt` varchar(10) DEFAULT NULL,
  `designation_tclt` varchar(100) DEFAULT NULL,
  `code_clt` varchar(10) DEFAULT NULL,
  `nom_clt` varchar(100) DEFAULT NULL,
  `code_art` varchar(10) DEFAULT NULL,
  `designation_art` varchar(100) DEFAULT NULL,
  `qte_art` int(11) DEFAULT NULL,
  `PrixU` double NOT NULL,
  `PrixT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_facturation_detail`
--

INSERT INTO `tb_facturation_detail` (`id_fact`, `date_fact`, `num_fact`, `code_mag`, `designation_mag`, `code_tclt`, `designation_tclt`, `code_clt`, `nom_clt`, `code_art`, `designation_art`, `qte_art`, `PrixU`, `PrixT`) VALUES
(1, '2022-08-04 19:03:36', 'CCP-F1', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C25', 'Charge gaz butane 25Kgs sodigaz', 10, 12000, 120000),
(2, '2022-08-04 19:20:50', 'CCP-F2', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 70, 6000, 420000),
(3, '2022-08-04 21:48:58', 'CCP-F3', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 18, 6000, 108000),
(4, '2022-08-04 21:48:58', 'CCP-F3', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 12000, 12000),
(5, '2022-08-04 22:26:16', 'CCP-F4', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'M1', 'MILLA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 198000),
(6, '2022-08-04 22:26:16', 'CCP-F4', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'M1', 'MILLA GAZ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 3, 12000, 36000),
(7, '2022-08-05 08:41:50', 'CCP-F5', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORD', 'TNORD', 'O', 'STATION OANDO', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6500, 65000),
(8, '2022-08-05 08:41:50', 'CCP-F5', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORD', 'TNORD', 'O', 'STATION OANDO', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 3200, 32000),
(9, '2022-08-05 10:45:06', 'CCP-F6', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO01', 'KOLANI ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 90000),
(10, '2022-08-05 10:45:06', 'CCP-F6', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO01', 'KOLANI ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(11, '2022-08-05 11:04:36', 'CCP-F7', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO01', 'KOLANI ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 120000),
(12, '2022-08-05 11:13:02', 'CCP-F8', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DO1', 'DOUTI', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 29, 6000, 174000),
(13, '2022-08-05 14:12:05', 'CCP-F9', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 85, 6000, 510000),
(14, '2022-08-05 14:12:05', 'CCP-F9', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C25', 'Charge gaz butane 25Kgs sodigaz', 10, 12000, 120000),
(15, '2022-08-05 14:20:10', 'CCP-F10', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'CO1', 'CONFIANCE GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 120000),
(16, '2022-08-05 17:17:06', 'CCP-F11', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'M1', 'MILLA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 29, 6000, 174000),
(17, '2022-08-05 17:56:55', 'CCP-F12', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(18, '2022-08-06 10:24:49', 'CCR-F13', 'PFBC', 'CONSIGNATION', 'TNORG', 'TNORG', 'KO', 'KOFFI DAPAONG GAZ', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 80, 17880, 1430400),
(19, '2022-08-06 10:24:49', 'CCR-F13', 'PFBC', 'CONSIGNATION', 'TNORG', 'TNORG', 'KO', 'KOFFI DAPAONG GAZ', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 10, 31000, 310000),
(20, '2022-08-06 10:24:49', 'CCR-F13', 'PFBC', 'CONSIGNATION', 'TNORG', 'TNORG', 'KO', 'KOFFI DAPAONG GAZ', '02103K', 'Consignation gaz butane 3kgs sodigaz', 10, 9440, 94400),
(21, '2022-08-06 10:32:09', 'CCP-F14', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'P1', 'PIKABE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 16, 6000, 96000),
(22, '2022-08-06 10:32:09', 'CCP-F14', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'P1', 'PIKABE GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 5760),
(23, '2022-08-06 10:32:09', 'CCP-F14', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'P1', 'PIKABE GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(24, '2022-08-06 10:32:09', 'CCP-F14', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'P1', 'PIKABE GAZ', '011C06E', 'Charge gaz butane 6kgs enora', 2, 2880, 5760),
(25, '2022-08-05 00:00:00', 'CCP-F15', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DO1', 'DOUTI', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 17, 6000, 102000),
(26, '2022-08-06 00:00:00', 'CCP-F16', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 35, 2880, 100800),
(27, '2022-08-06 00:00:00', 'CCP-F16', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26, 6000, 156000),
(28, '2020-01-01 00:00:00', 'CCR-F17', 'PFBC', 'CONSIGNATION', 'TNORG', 'TNORG', 'ER01', 'ERIK', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 180, 31000, 5580000),
(29, '2020-01-01 00:00:00', 'CCR-F17', 'PFBC', 'CONSIGNATION', 'TNORG', 'TNORG', 'ER01', 'ERIK', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 21, 17880, 375480),
(30, '2020-01-01 00:00:00', 'CCR-F17', 'PFBC', 'CONSIGNATION', 'TNORG', 'TNORG', 'ER01', 'ERIK', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 2, 52000, 104000),
(31, '2020-01-01 00:00:00', 'CCR-F17', 'PFBC', 'CONSIGNATION', 'TNORG', 'TNORG', 'ER01', 'ERIK', '0250K', 'Consignation gaz butane 50Kgs sodigaz', 2, 89000, 178000),
(32, '2022-08-01 00:00:00', 'CCP-F18', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(33, '2022-08-01 00:00:00', 'CCP-F18', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 120000),
(34, '2022-08-01 00:00:00', 'CCP-F18', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C25', 'Charge gaz butane 25Kgs sodigaz', 3, 12000, 36000),
(35, '2022-08-01 00:00:00', 'CCP-F18', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 36, 2880, 103680),
(36, '2022-08-02 00:00:00', 'CCP-F19', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(37, '2022-08-02 00:00:00', 'CCP-F19', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000),
(38, '2022-08-03 00:00:00', 'CCP-F20', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 50, 6000, 300000),
(39, '2022-08-03 00:00:00', 'CCP-F20', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 18, 2880, 51840),
(40, '2022-08-03 00:00:00', 'CCP-F20', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C25', 'Charge gaz butane 25Kgs sodigaz', 5, 12000, 60000),
(41, '2022-08-03 00:00:00', 'CCP-F21', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 53, 6000, 318000),
(42, '2022-08-03 00:00:00', 'CCP-F21', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 24000, 72000),
(43, '2022-08-03 00:00:00', 'CCP-F22', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 6000, 24000),
(44, '2022-08-04 00:00:00', 'CCP-F23', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C25', 'Charge gaz butane 25Kgs sodigaz', 10, 12000, 120000),
(45, '2022-08-04 00:00:00', 'CCP-F23', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 85, 6000, 510000),
(46, '2022-08-05 00:00:00', 'CCP-F24', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(47, '2022-08-06 00:00:00', 'CCP-F25', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26, 6000, 156000),
(48, '2022-08-06 00:00:00', 'CCP-F25', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 35, 2880, 100800),
(49, '2022-08-05 00:00:00', 'CCP-F26', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(50, '2022-08-02 00:00:00', 'CCP-F27', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FE1', 'FELICITE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 120000),
(51, '2022-08-02 00:00:00', 'CCP-F27', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FE1', 'FELICITE GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 2880, 57600),
(52, '2022-08-07 00:00:00', 'CCP-F28', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 18, 6000, 108000),
(53, '2022-08-07 00:00:00', 'CCP-F28', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C03', 'Charge gaz butane 3kgs sodigaz', 10, 1440, 14400),
(54, '2022-08-07 00:00:00', 'CCP-F28', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000),
(55, '2022-08-07 00:00:00', 'CCP-F28', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 12000, 12000),
(56, '2022-08-08 00:00:00', 'CCP-F29', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'M1', 'MILLA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(57, '2022-08-08 00:00:00', 'CCP-F30', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 120000),
(58, '2022-08-08 00:00:00', 'CCP-F30', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 4, 2880, 11520),
(59, '2022-08-08 00:00:00', 'CCP-F30', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 2880, 11520),
(60, '2022-08-08 00:00:00', 'CCP-F30', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(61, '2022-08-08 00:00:00', 'CCP-F30', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 12000, 24000),
(62, '2022-08-08 00:00:00', 'CCP-F31', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'AL', 'ALU SAVANE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 9, 6000, 54000),
(63, '2022-08-08 00:00:00', 'CCP-F31', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'AL', 'ALU SAVANE', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 2880, 17280),
(64, '2022-08-08 00:00:00', 'CCP-F32', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BC', 'BUSNESS CENTER', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 16, 6000, 96000),
(65, '2022-08-08 00:00:00', 'CCP-F32', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BC', 'BUSNESS CENTER', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(66, '2022-08-08 00:00:00', 'CCP-F32', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BC', 'BUSNESS CENTER', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 2880, 14400),
(67, '2022-08-08 00:00:00', 'CCP-F33', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 90, 6000, 540000),
(68, '2022-08-08 00:00:00', 'CCP-F33', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 23040),
(69, '2022-08-08 00:00:00', 'CCP-F33', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 24000, 168000),
(70, '2022-08-08 00:00:00', 'CCP-F33', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 12, 2880, 34560),
(71, '2022-08-05 00:00:00', 'CCP-F34', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORD', 'TNORD', 'O', 'STATION OANDO', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 3200, 32000),
(72, '2022-08-05 00:00:00', 'CCP-F34', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORD', 'TNORD', 'O', 'STATION OANDO', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6500, 65000),
(73, '2022-08-05 00:00:00', 'CCP-F35', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A1', 'ABALO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(74, '2022-08-05 00:00:00', 'CCP-F35', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A1', 'ABALO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(75, '2022-08-09 00:00:00', 'CCP-F36', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DAP2', 'DAPAONG 2 BIGBA', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 60000),
(76, '2022-08-09 00:00:00', 'CCR-F37', 'PFBC', 'CONSIGNATION', 'TNORG', 'TNORG', 'DAP2', 'DAPAONG 2 BIGBA', '02106K', 'Consignation gaz butane 6kgs sodigaz', 18, 17880, 321840),
(77, '2022-08-09 00:00:00', 'CCP-F38', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'C1', 'CINKANCE MARO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 22, 6000, 132000),
(78, '2022-08-09 00:00:00', 'CCP-F38', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'C1', 'CINKANCE MARO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 24000, 168000),
(79, '2022-08-09 00:00:00', 'CCP-F38', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'C1', 'CINKANCE MARO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 14, 2880, 40320),
(80, '2022-08-09 00:00:00', 'CCP-F39', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C06', 'Charge gaz butane 6kgs sodigaz', 45, 2880, 129600),
(81, '2022-08-09 00:00:00', 'CCP-F39', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 120000),
(82, '2022-08-09 00:00:00', 'CCP-F39', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 13, 2880, 37440),
(83, '2022-08-09 00:00:00', 'CCP-F39', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C03', 'Charge gaz butane 3kgs sodigaz', 20, 1440, 28800),
(84, '2022-08-09 00:00:00', 'CCP-F40', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'M1', 'MILLA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 25, 6000, 150000),
(85, '2022-08-09 00:00:00', 'CCP-F41', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO01', 'KOLANI ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 25, 6000, 150000),
(86, '2022-08-09 00:00:00', 'CCP-F41', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO01', 'KOLANI ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(87, '2022-08-09 00:00:00', 'CCP-F42', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 120000),
(88, '2022-08-09 00:00:00', 'CCP-F42', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(89, '2022-08-09 00:00:00', 'CCP-F42', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 12000, 24000),
(90, '2022-08-09 00:00:00', 'CCP-F42', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 23040),
(91, '2022-08-09 00:00:00', 'CCP-F43', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'AD', 'ADOUGBA GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 24000, 72000),
(92, '2022-08-09 00:00:00', 'CCP-F44', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000),
(93, '2022-08-09 00:00:00', 'CCP-F44', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 2880, 11520),
(94, '2022-08-09 00:00:00', 'CCP-F44', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 90000),
(95, '2022-08-09 00:00:00', 'CCP-F45', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO01', 'KOLANI ', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 2880, 11520),
(96, '2022-08-09 00:00:00', 'CCP-F45', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO01', 'KOLANI ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 90000),
(97, '2022-08-09 00:00:00', 'CCP-F45', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO01', 'KOLANI ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000),
(98, '2022-08-09 00:00:00', 'CCP-F46', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(99, '2022-08-09 00:00:00', 'CCP-F46', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 9, 2880, 25920),
(100, '2022-08-09 00:00:00', 'CCP-F46', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 6, 24000, 144000),
(101, '2022-08-09 00:00:00', 'CCP-F47', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 22, 2880, 63360),
(102, '2022-08-09 00:00:00', 'CCP-F47', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 16, 6000, 96000),
(103, '2022-08-09 00:00:00', 'CCP-F48', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C06', 'Charge gaz butane 6kgs sodigaz', 45, 2880, 129600),
(104, '2022-08-09 00:00:00', 'CCP-F48', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 120000),
(105, '2022-08-09 00:00:00', 'CCP-F48', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 13, 2880, 37440),
(106, '2022-08-09 00:00:00', 'CCP-F48', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I1', 'ISSAKA KARA 1', '011C03', 'Charge gaz butane 3kgs sodigaz', 20, 1440, 28800),
(107, '2022-08-10 00:00:00', 'CCP-F49', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'R0', 'REHOBOPH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 11, 6000, 66000),
(108, '2022-08-10 00:00:00', 'CCP-F49', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'R0', 'REHOBOPH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(109, '2022-08-10 00:00:00', 'CCP-F49', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'R0', 'REHOBOPH', '011C06', 'Charge gaz butane 6kgs sodigaz', 7, 2880, 20160),
(110, '2022-08-10 00:00:00', 'CCP-F50', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'G1', 'GERMAIN GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 2880, 57600),
(111, '2022-08-10 00:00:00', 'CCP-F51', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'N', 'NUMAR', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 120000),
(112, '2022-08-10 00:00:00', 'CCP-F52', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FAT', 'FATAO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26, 6000, 156000),
(113, '2022-08-10 00:00:00', 'CCP-F52', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FAT', 'FATAO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 24000, 72000),
(114, '2022-08-10 00:00:00', 'CCP-F53', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 198000),
(115, '2022-08-10 00:00:00', 'CCP-F54', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'M1', 'MILLA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 14, 6000, 84000),
(116, '2022-08-10 00:00:00', 'CCP-F54', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'M1', 'MILLA GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000),
(117, '2022-08-11 00:00:00', 'SCE55', '', '', '', '', 'ER01', 'ERIK', 'sr01', 'REP DE FOYER', 3, 2000, 6000),
(118, '2022-08-11 00:00:00', 'CCP-F56', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(119, '2022-08-11 00:00:00', 'CCP-F56', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(120, '2022-08-11 00:00:00', 'CCP-F57', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 6000, 180000),
(121, '2022-08-11 00:00:00', 'CCP-F58', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'TY', 'TOYIMI ZANGUERA', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 23040),
(122, '2022-08-11 00:00:00', 'CCP-F58', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'TY', 'TOYIMI ZANGUERA', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1, 6000, 6000),
(123, '2022-08-11 00:00:00', 'CCP-F59', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MAR', 'MARGO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26, 6000, 156000),
(124, '2022-08-11 00:00:00', 'CCP-F59', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MAR', 'MARGO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 7, 2880, 20160),
(125, '2022-08-11 00:00:00', 'CCP-F59', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MAR', 'MARGO GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 2880, 5760),
(126, '2022-08-11 00:00:00', 'SCE60', '', '', '', '', 'DO1', 'DOUTI', 'sr01', 'REPARATO', 5, 6000, 30000),
(127, '2022-08-11 00:00:00', 'CCP-F61', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 13, 6000, 78000),
(128, '2022-08-11 00:00:00', 'CCP-F62', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(129, '2022-08-11 00:00:00', 'CCP-F62', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(130, '2022-08-11 00:00:00', 'CCP-F63', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(131, '2022-08-11 00:00:00', 'CCP-F64', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'N', 'NUMAR', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 6000, 180000),
(132, '2022-08-11 00:00:00', 'CCP-F65', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO01', 'KOLANI ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(133, '2022-08-11 00:00:00', 'CCP-F65', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO01', 'KOLANI ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(134, '2022-08-11 00:00:00', 'CCP-F66', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'SO', 'SOULEMANE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 60000),
(135, '2022-08-10 00:00:00', 'CCP-F67', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 100, 6000, 600000),
(136, '2022-08-10 00:00:00', 'CCP-F68', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'SO', 'SOULEMANE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 90000),
(137, '2022-08-10 00:00:00', 'CCP-F69', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'R0', 'REHOBOPH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 6000, 24000),
(138, '2022-08-10 00:00:00', 'CCP-F69', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'R0', 'REHOBOPH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(139, '2022-08-11 00:00:00', 'CCP-F70', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'M1', 'MILLA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 90000),
(140, '2022-08-11 00:00:00', 'CCP-F71', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(141, '2022-08-11 00:00:00', 'CCP-F71', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(142, '2022-08-11 00:00:00', 'CCP-F72', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 25, 6000, 150000),
(143, '2022-08-12 00:00:00', 'CCP-F73', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(144, '2022-08-12 00:00:00', 'CCP-F73', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(145, '2022-08-10 00:00:00', 'CCP-F74', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 6, 24000, 144000),
(146, '2022-08-10 00:00:00', 'CCP-F74', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 2880, 14400),
(147, '2022-08-11 00:00:00', 'CCP-F75', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 198000),
(148, '2022-08-12 00:00:00', 'CCP-F76', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO2', 'KOLANI TSEVIER', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(149, '2022-08-12 00:00:00', 'CCP-F76', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO2', 'KOLANI TSEVIER', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 24000, 96000),
(150, '2022-08-12 00:00:00', 'CCP-F76', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO2', 'KOLANI TSEVIER', '011C12E', 'Charge gaz butane 12,5kgs enora', 2, 6000, 12000),
(151, '2022-08-12 00:00:00', 'CCP-F76', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO2', 'KOLANI TSEVIER', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 2880, 28800),
(152, '2022-08-12 00:00:00', 'CCP-F76', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO2', 'KOLANI TSEVIER', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 1, 2880, 2880),
(153, '2022-08-11 00:00:00', 'CCP-F77', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORD', 'TNORD', 'O', 'STATION OANDO', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 3200, 64000),
(154, '2022-08-12 00:00:00', 'CCP-F78', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DO1', 'DOUTI', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 21, 6000, 126000),
(155, '2022-08-12 00:00:00', 'CCP-F78', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DO1', 'DOUTI', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000),
(156, '2022-08-12 00:00:00', 'CCP-F79', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FS', 'FIS GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 23040),
(157, '2022-08-12 00:00:00', 'CCP-F79', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FS', 'FIS GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 60000),
(158, '2022-08-12 00:00:00', 'CCP-F79', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FS', 'FIS GAZ', '011C03', 'Charge gaz butane 3kgs sodigaz', 6, 1440, 8640),
(159, '2022-08-12 00:00:00', 'CCP-F80', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FAT', 'FATAO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(160, '2022-08-12 00:00:00', 'CCP-F80', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FAT', 'FATAO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000),
(161, '2022-08-12 00:00:00', 'CCR-F81', 'PFBC', 'CONSIGNATION', 'TNORG', 'TNORG', 'T001', 'TAZO 3 GAZ', '0250K', 'Consignation gaz butane 50Kgs sodigaz', 1, 89000, 89000),
(162, '2022-08-12 00:00:00', 'CCP-F82', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'D1', 'KODJO DAPAONG 1 GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 30, 2880, 86400),
(163, '2022-08-12 00:00:00', 'CCP-F82', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'D1', 'KODJO DAPAONG 1 GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 120000),
(164, '2022-08-12 00:00:00', 'CCP-F82', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'D1', 'KODJO DAPAONG 1 GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 50, 6000, 300000),
(165, '2022-08-12 00:00:00', 'CCP-F83', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'C1', 'CINKANCE MARO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 32, 6000, 192000),
(166, '2022-08-12 00:00:00', 'CCP-F83', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'C1', 'CINKANCE MARO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 24000, 168000),
(167, '2022-08-12 00:00:00', 'CCP-F84', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO2', 'KOLANI TSEVIER', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 6000, 60000),
(168, '2022-08-12 00:00:00', 'CCP-F84', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO2', 'KOLANI TSEVIER', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000),
(169, '2022-08-12 00:00:00', 'CCP-F84', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO2', 'KOLANI TSEVIER', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 2880, 28800),
(170, '2022-08-12 00:00:00', 'CCP-F84', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KO2', 'KOLANI TSEVIER', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 1, 2880, 2880),
(171, '2020-01-01 00:00:00', 'CCP-F85', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 180, 6000, 1080000),
(172, '2020-01-01 00:00:00', 'CCP-F85', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 21, 2880, 60480),
(173, '2020-01-01 00:00:00', 'CCP-F85', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 12000, 24000),
(174, '2020-01-01 00:00:00', 'CCP-F85', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(175, '2022-08-01 00:00:00', 'CCP-F86', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(176, '2022-08-01 00:00:00', 'CCP-F86', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 120000),
(177, '2022-08-01 00:00:00', 'CCP-F86', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C25', 'Charge gaz butane 25Kgs sodigaz', 3, 12000, 36000),
(178, '2022-08-01 00:00:00', 'CCP-F86', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 36, 2880, 103680),
(179, '2022-08-02 00:00:00', 'CCP-F87', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(180, '2022-08-02 00:00:00', 'CCP-F87', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000),
(181, '2022-08-03 00:00:00', 'CCP-F88', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 50, 6000, 300000),
(182, '2022-08-03 00:00:00', 'CCP-F88', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 18, 2880, 51840),
(183, '2022-08-03 00:00:00', 'CCP-F88', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C25', 'Charge gaz butane 25Kgs sodigaz', 5, 12000, 60000),
(184, '2022-08-03 00:00:00', 'CCP-F89', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 53, 6000, 318000),
(185, '2022-08-03 00:00:00', 'CCP-F89', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 24000, 72000),
(186, '2022-08-03 00:00:00', 'CCP-F90', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 6000, 24000),
(187, '2022-08-04 00:00:00', 'CCP-F91', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C25', 'Charge gaz butane 25Kgs sodigaz', 10, 12000, 120000),
(188, '2022-08-04 00:00:00', 'CCP-F91', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 85, 6000, 510000),
(189, '2022-08-05 00:00:00', 'CCP-F92', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(190, '2022-08-06 00:00:00', 'CCP-F93', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 35, 2880, 100800),
(191, '2022-08-06 00:00:00', 'CCP-F93', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 26, 6000, 156000),
(192, '2022-08-08 00:00:00', 'CCP-F94', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 90, 6000, 540000),
(193, '2022-08-08 00:00:00', 'CCP-F94', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 8, 2880, 23040),
(194, '2022-08-08 00:00:00', 'CCP-F94', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 24000, 168000),
(195, '2022-08-08 00:00:00', 'CCP-F94', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 8, 2880, 23040),
(196, '2022-08-09 00:00:00', 'CCP-F95', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(197, '2022-08-09 00:00:00', 'CCP-F95', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 9, 2880, 25920),
(198, '2022-08-09 00:00:00', 'CCP-F95', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 6, 24000, 144000),
(199, '2022-08-09 00:00:00', 'CCP-F96', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 22, 2880, 63360),
(200, '2022-08-09 00:00:00', 'CCP-F96', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 16, 6000, 96000),
(201, '2022-08-10 00:00:00', 'CCP-F97', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 6, 24000, 144000),
(202, '2022-08-10 00:00:00', 'CCP-F97', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 2880, 14400),
(203, '2022-08-10 00:00:00', 'CCP-F98', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 198000),
(204, '2022-08-10 00:00:00', 'CCP-F99', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 100, 6000, 600000),
(205, '2022-08-11 00:00:00', 'CCP-F100', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 6000, 198000),
(206, '2022-08-11 00:00:00', 'CCP-F101', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(207, '2022-08-11 00:00:00', 'CCP-F102', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 6000, 144000),
(208, '2022-08-11 00:00:00', 'CCP-F102', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(209, '2022-08-12 00:00:00', 'CCP-F103', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 6000, 120000),
(210, '2022-08-12 00:00:00', 'CCP-F103', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(211, '2022-08-12 00:00:00', 'SCE104', '', '', '', '', 'ER01', 'ERIK', 'D001', 'DETTE DE MAI', 1, 405000, 405000),
(212, '2022-07-01 00:00:00', 'SCE105', '', '', '', '', 'ER01', 'ERIK', 'D001', 'DETTE DU MOI DE JUIELLT', 1, 3000000, 3000000),
(213, '2022-08-13 00:00:00', 'CCP-F106', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(214, '2022-08-13 00:00:00', 'CCP-F106', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 120000),
(215, '2022-08-13 00:00:00', 'CCP-F106', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 30, 2880, 86400),
(216, '2022-08-13 00:00:00', 'CCP-F107', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FAT', 'FATAO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 28, 6000, 168000),
(217, '2022-08-13 00:00:00', 'CCP-F107', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FAT', 'FATAO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 24000, 48000),
(218, '2022-08-13 00:00:00', 'CCP-F108', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'R0', 'REHOBOPH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 13, 6000, 78000),
(219, '2022-08-12 00:00:00', 'CCP-F109', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 6000, 90000),
(220, '2022-08-12 00:00:00', 'CCP-F109', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 2880, 14400),
(221, '2022-08-12 00:00:00', 'CCP-F109', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 2880, 14400),
(222, '2022-08-12 00:00:00', 'CCP-F110', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'M1', 'MILLA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 17, 6000, 102000),
(223, '2022-08-13 00:00:00', 'CCP-F111', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 6000, 480000),
(224, '2022-08-13 00:00:00', 'CCP-F111', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C06', 'Charge gaz butane 6kgs sodigaz', 30, 2880, 86400),
(225, '2022-08-13 00:00:00', 'CCP-F111', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 5, 24000, 120000),
(226, '2022-08-13 00:00:00', 'CCP-F112', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'F001', 'FIL OPARK GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 32, 6000, 192000),
(227, '2022-08-13 00:00:00', 'CCP-F112', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'F001', 'FIL OPARK GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 18, 2880, 51840),
(228, '2022-08-13 00:00:00', 'CCP-F112', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'F001', 'FIL OPARK GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 7, 2880, 20160),
(229, '2022-08-13 00:00:00', 'CCP-F112', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'F001', 'FIL OPARK GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 24000, 24000),
(230, '2022-08-13 00:00:00', 'CCP-F113', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42950, 171800),
(231, '2022-08-13 00:00:00', 'CCP-F113', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1, 10738, 10738),
(232, '2022-08-13 00:00:00', 'CCP-F113', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C03', 'Charge gaz butane 3kgs sodigaz', 1, 2565, 2565),
(233, '2022-08-13 00:00:00', 'CCP-F113', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 2, 2565, 5130),
(234, '2022-08-13 00:00:00', 'SCE114', '', '', '', '', 'K4', 'KOBNA ', 'D001', 'DET', 1, 1767, 1767),
(235, '2022-08-13 00:00:00', 'CCP-F115', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'PR02', 'PROMO GAZ FECANDINE', '011C50', 'Charge gaz butane 50Kgs sodigaz', 8, 42950, 343600),
(236, '2022-08-13 00:00:00', 'SCE116', '', '', '', '', 'ER01', 'ERIK', 'D001', 'DETTE DU 01/08/2022', 1, 4074460, 4074460),
(237, '2022-08-13 00:00:00', 'CCP-F117', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A', 'ALEX GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 107380),
(238, '2022-08-13 00:00:00', 'CCP-F117', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A', 'ALEX GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 5130, 25650),
(239, '2022-08-13 00:00:00', 'CCP-F118', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ZA1', 'ZAKARI GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 10738, 75166),
(240, '2022-08-13 00:00:00', 'CCP-F119', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'I001', 'IPG YAOVI GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 107380),
(241, '2022-08-13 00:00:00', 'CCP-F120', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DA', 'DAHOE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 107380),
(242, '2022-08-13 00:00:00', 'CCP-F120', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DA', 'DAHOE GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(243, '2022-08-13 00:00:00', 'CCP-F120', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DA', 'DAHOE GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 1, 5130, 5130),
(244, '2022-08-13 00:00:00', 'SCE121', '', '', '', '', 'EXO', 'EXODUS GAZ', 'D001', 'DETTE DE FOYER ', 1, 17500, 17500),
(245, '2022-08-13 00:00:00', 'CCP-F122', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'C001', 'CENTRALE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12, 10738, 128856),
(246, '2022-08-13 00:00:00', 'CCP-F123', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 17, 10738, 182546),
(247, '2022-08-13 00:00:00', 'CCP-F123', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(248, '2022-08-14 00:00:00', 'CCP-F124', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KT', 'KLARA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 10738, 322140),
(249, '2022-08-13 00:00:00', 'CCP-F125', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 65, 10738, 697970),
(250, '2022-08-13 00:00:00', 'CCP-F125', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(251, '2022-08-13 00:00:00', 'CCP-F125', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 21475, 42950),
(252, '2022-08-14 00:00:00', 'CCP-F126', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 107380),
(253, '2022-08-14 00:00:00', 'CCP-F126', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 42950, 128850),
(254, '2022-08-14 00:00:00', 'CCP-F126', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 5130, 20520),
(255, '2022-08-15 00:00:00', 'CCP-F127', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'TI01', 'TINA MACKET ', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 5130, 25650),
(256, '2022-08-15 00:00:00', 'CCP-F127', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'TI01', 'TINA MACKET ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 5130, 10260),
(257, '2022-08-15 00:00:00', 'CCP-F127', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'TI01', 'TINA MACKET ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 10738, 75166),
(258, '2022-08-15 00:00:00', 'CCP-F127', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'TI01', 'TINA MACKET ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 42950),
(259, '2022-08-15 00:00:00', 'CCP-F128', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MO', 'MOMO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 40, 10738, 429520),
(260, '2022-08-15 00:00:00', 'CCP-F128', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MO', 'MOMO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42950, 171800),
(261, '2022-08-15 00:00:00', 'CCP-F128', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MO', 'MOMO GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 6, 5130, 30780),
(262, '2022-08-15 00:00:00', 'CCP-F128', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MO', 'MOMO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 5130, 30780),
(263, '2022-08-15 00:00:00', 'CCP-F129', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'CO1', 'CONFIANCE GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42950, 171800),
(264, '2022-08-15 00:00:00', 'CCP-F129', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'CO1', 'CONFIANCE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 10738, 42952),
(265, '2022-08-15 00:00:00', 'CCP-F130', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TBGP3', 'TBGP3', 'ME01', 'MEDE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 17, 6250, 106250),
(266, '2022-08-15 00:00:00', 'CCP-F130', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TBGP3', 'TBGP3', 'ME01', 'MEDE GAZ', '011C06E', 'Charge gaz butane 6kgs enora', 30, 3040, 91200),
(267, '2022-08-15 00:00:00', 'CCP-F130', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TBGP3', 'TBGP3', 'ME01', 'MEDE GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5, 3040, 15200),
(268, '2022-08-15 00:00:00', 'CCP-F130', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TBGP3', 'TBGP3', 'ME01', 'MEDE GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 3040, 60800),
(269, '2022-08-15 00:00:00', 'CCP-F131', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TBGP2', 'TBGP2', 'TI02', 'TIMBROWN GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 18, 6050, 108900),
(270, '2022-08-15 00:00:00', 'CCP-F131', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TBGP2', 'TBGP2', 'TI02', 'TIMBROWN GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 12, 2950, 35400),
(271, '2022-08-15 00:00:00', 'CCP-F132', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'EM02', 'EMANUEL APECITO', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 10738, 42952),
(272, '2022-08-15 00:00:00', 'CCP-F132', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'EM02', 'EMANUEL APECITO', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 5130, 51300),
(273, '2022-08-14 00:00:00', 'SCE133', '', '', '', '', 'L1', 'LAMBO GAZ', 'D001', 'ACHAT DE 20/12+2/50+2/258+8/6*2', 2, 215040, 430080),
(274, '2022-08-15 00:00:00', 'CCP-F134', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DU01', 'DUCO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 22, 10738, 236236),
(275, '2022-08-15 00:00:00', 'CCP-F134', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DU01', 'DUCO GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 22, 5130, 112860),
(276, '2022-08-15 00:00:00', 'CCP-F134', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DU01', 'DUCO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 42950),
(277, '2022-08-05 00:00:00', 'SCE135', '', '', '', '', 'L1', 'LAMBO GAZ', 'D001', 'ACIENNE DETTE DU PC DOLIBAR', 1, 166560, 166560),
(278, '2022-08-11 00:00:00', 'CCP-F136', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 64, 10738, 687232),
(279, '2022-08-11 00:00:00', 'CCP-F136', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(280, '2022-08-11 00:00:00', 'CCP-F136', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 5130, 25650),
(281, '2022-08-11 00:00:00', 'CCP-F136', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 21475, 42950),
(282, '2022-08-05 00:00:00', 'CCP-F137', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 64, 10738, 687232),
(283, '2022-08-05 00:00:00', 'CCP-F137', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C06', 'Charge gaz butane 6kgs sodigaz', 34, 5130, 174420),
(284, '2022-08-05 00:00:00', 'CCP-F137', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C03', 'Charge gaz butane 3kgs sodigaz', 3, 2565, 7695),
(285, '2022-08-05 00:00:00', 'CCP-F137', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(286, '2022-08-05 00:00:00', 'CCP-F137', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'E002', 'ERIK DJAGBLE', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 21475, 42950),
(287, '2022-08-02 00:00:00', '138', 'BRU', 'BRULEUR', 'TNORG', 'TNORG', 'ER01', 'ERIK', 'BRU  A', 'BRULEUR ALLUMINIUM', 30, 1200, 36000);
INSERT INTO `tb_facturation_detail` (`id_fact`, `date_fact`, `num_fact`, `code_mag`, `designation_mag`, `code_tclt`, `designation_tclt`, `code_clt`, `nom_clt`, `code_art`, `designation_art`, `qte_art`, `PrixU`, `PrixT`) VALUES
(288, '2022-08-02 00:00:00', '138', 'BRU', 'BRULEUR', 'TNORG', 'TNORG', 'ER01', 'ERIK', 'BR01', 'BRULEUR SIMPLE', 100, 600, 60000),
(289, '2022-08-01 00:00:00', 'SCE139', '', '', '', '', 'EXO', 'EXODUS GAZ', 'D001', '7 b6 a ramacer staniste', 7, 15120, 105840),
(290, '2022-08-15 00:00:00', 'SCE140', '', '', '', '', 'K4', 'KOBNA ', 'D001', 'regulation de compte', 1, 282000, 282000),
(291, '2022-08-15 00:00:00', 'SCE140', '', '', '', '', 'K4', 'KOBNA ', 'sr01', 'reg', 1, 282000, 282000),
(292, '2022-08-15 00:00:00', 'SCE141', '', '', '', '', 'K4', 'KOBNA ', 'sr01', 're', 1, 282000, 282000),
(293, '2022-08-15 00:00:00', 'CCP-F142', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'SA', 'SALI GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 214760),
(294, '2022-08-15 00:00:00', 'CCP-F143', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MAW', 'MAWOUSSI GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 8, 10738, 85904),
(295, '2022-08-15 00:00:00', 'CCP-F143', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MAW', 'MAWOUSSI GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 3, 5130, 15390),
(296, '2022-08-15 00:00:00', 'CCP-F144', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FD02', 'FIDELITAS GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 20, 5130, 102600),
(297, '2022-08-15 00:00:00', 'CCP-F144', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FD02', 'FIDELITAS GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 107380),
(298, '2022-08-15 00:00:00', 'CCP-F145', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KZ02', 'KOZATOU GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 14, 10738, 150332),
(299, '2022-08-15 00:00:00', 'CCP-F145', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KZ02', 'KOZATOU GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 42950),
(300, '2022-08-15 00:00:00', 'CCP-F145', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KZ02', 'KOZATOU GAZ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 21475, 21475),
(301, '2022-08-15 00:00:00', 'CCP-F146', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BE02', 'BEATRUC GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 5, 10738, 53690),
(302, '2022-08-15 00:00:00', 'CCP-F146', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BE02', 'BEATRUC GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 5130, 25650),
(303, '2022-08-15 00:00:00', 'CCP-F147', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DO1', 'DOUTI', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 214760),
(304, '2022-08-15 00:00:00', 'CCP-F147', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DO1', 'DOUTI', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 5130, 10260),
(305, '2022-08-15 00:00:00', 'CCP-F147', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DO1', 'DOUTI', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 5130, 51300),
(306, '2022-08-15 00:00:00', 'CCP-F147', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DO1', 'DOUTI', '011C03', 'Charge gaz butane 3kgs sodigaz', 2, 2565, 5130),
(307, '2022-08-15 00:00:00', 'CCP-F148', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'TE', 'TECO/DRAMANE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 214760),
(308, '2022-08-15 00:00:00', 'CCP-F149', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'EN01', 'ENTREPRISE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 10738, 42952),
(309, '2022-08-15 00:00:00', 'CCP-F149', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'EN01', 'ENTREPRISE GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 42950),
(310, '2022-08-15 00:00:00', 'CCP-F150', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'AD', 'ADOUGBA GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 42950, 128850),
(311, '2022-08-15 00:00:00', 'CCP-F151', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'EN01', 'ENTREPRISE GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 42950),
(312, '2022-08-15 00:00:00', 'CCP-F151', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'EN01', 'ENTREPRISE GAZ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 21475, 42950),
(313, '2022-08-15 00:00:00', 'CCP-F152', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'J', 'JAQUE GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 10, 5130, 51300),
(314, '2022-08-15 00:00:00', 'CCP-F152', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'J', 'JAQUE GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(315, '2022-08-15 00:00:00', 'CCP-F153', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BO2', 'BOUCHER GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 5, 10738, 53690),
(316, '2022-08-15 00:00:00', 'CCP-F153', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BO2', 'BOUCHER GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(317, '2022-08-15 00:00:00', 'CCP-F154', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'T001', 'TAZO 3 GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6, 10738, 64428),
(318, '2022-08-15 00:00:00', 'CCP-F154', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'T001', 'TAZO 3 GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 5, 5130, 25650),
(319, '2022-08-15 00:00:00', 'CCP-F154', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'T001', 'TAZO 3 GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(320, '2022-08-15 00:00:00', 'CCP-F155', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'TH02', 'THOMAS ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 10738, 322140),
(321, '2022-08-15 00:00:00', 'CCP-F155', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'TH02', 'THOMAS ', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 5130, 30780),
(322, '2022-08-15 00:00:00', 'CCP-F156', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10738, 161070),
(323, '2022-08-15 00:00:00', 'CCP-F156', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 6, 5130, 30780),
(324, '2022-08-15 00:00:00', 'CCP-F156', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C03', 'Charge gaz butane 3kgs sodigaz', 4, 2565, 10260),
(325, '2022-08-15 00:00:00', 'CCP-F156', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'L1', 'LAMBO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(326, '2022-08-15 00:00:00', 'CCP-F157', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'NA01', 'NANEGBE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 107380),
(327, '2022-08-15 00:00:00', 'CCP-F157', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'NA01', 'NANEGBE GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(328, '2022-08-15 00:00:00', 'CCP-F157', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'NA01', 'NANEGBE GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 15, 5130, 76950),
(329, '2022-08-15 00:00:00', 'CCP-F158', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A', 'ALEX GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 107380),
(330, '2022-08-15 00:00:00', 'CCP-F158', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A', 'ALEX GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 5130, 20520),
(331, '2022-08-15 00:00:00', 'CCP-F158', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A', 'ALEX GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 5130, 10260),
(332, '2022-08-15 00:00:00', 'CCP-F159', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A', 'ALEX GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 5130, 20520),
(333, '2022-08-15 00:00:00', 'CCP-F159', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A', 'ALEX GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2, 5130, 10260),
(334, '2022-08-15 00:00:00', 'CCP-F159', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A', 'ALEX GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 107380),
(335, '2022-08-15 00:00:00', 'CCP-F160', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'NE', 'PLANTATION /NEDJRO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 3, 10738, 32214),
(336, '2022-08-15 00:00:00', 'CCP-F161', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'Y', 'YAKOUBA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12, 10738, 128856),
(337, '2022-08-15 00:00:00', 'CCP-F162', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'AD', 'ADOUGBA GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 42950, 128850),
(338, '2022-08-15 00:00:00', 'CCP-F163', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'G1', 'GERMAIN GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 214760),
(339, '2022-08-15 00:00:00', 'CCP-F164', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'F001', 'FIL OPARK GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 25, 10738, 268450),
(340, '2022-08-15 00:00:00', 'CCP-F164', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'F001', 'FIL OPARK GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 42950),
(341, '2022-08-15 00:00:00', 'CCP-F165', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ME01', 'MEDE GAZ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 18, 5130, 92340),
(342, '2022-08-15 00:00:00', 'CCP-F166', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'TI02', 'TIMBROWN GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10738, 161070),
(343, '2022-08-15 00:00:00', 'CCP-F167', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MAR', 'MARGO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 10738, 257712),
(344, '2022-08-15 00:00:00', 'CCP-F167', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MAR', 'MARGO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 7, 5130, 35910),
(345, '2022-08-15 00:00:00', 'CCP-F168', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KL', 'KOMLA TOTSI RAIL', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 2, 10738, 21476),
(346, '2022-08-15 00:00:00', 'CCP-F169', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KL', 'KOMLA TOTSI RAIL', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(347, '2022-08-15 00:00:00', 'CCP-F170', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'M1', 'MILLA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 214760),
(348, '2022-08-15 00:00:00', 'CCP-F171', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KT', 'KLARA GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 10738, 354354),
(349, '2022-08-15 00:00:00', 'CCP-F172', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'MN01', 'MON NOM EST BENI', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10738, 161070),
(350, '2022-08-15 00:00:00', 'CCP-F173', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FAT', 'FATAO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 214760),
(351, '2022-08-15 00:00:00', 'CCP-F173', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FAT', 'FATAO GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(352, '2022-08-15 00:00:00', 'CCP-F174', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ZO02', 'ZOSSIME 3 GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 20, 10738, 214760),
(353, '2022-08-15 00:00:00', 'CCP-F174', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ZO02', 'ZOSSIME 3 GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 42950),
(354, '2022-08-15 00:00:00', 'CCP-F174', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ZO02', 'ZOSSIME 3 GAZ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 21475, 21475),
(355, '2022-08-15 00:00:00', 'CCP-F175', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 80, 10738, 859040),
(356, '2022-08-15 00:00:00', 'CCP-F175', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 42950, 300650),
(357, '2022-08-15 00:00:00', 'CCP-F176', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'SO', 'SOULEMANE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 13, 10738, 139594),
(358, '2022-08-15 00:00:00', 'CCP-F177', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'R0', 'REHOBOPH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 8, 10738, 85904),
(359, '2022-08-15 00:00:00', 'CCP-F177', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'R0', 'REHOBOPH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42950, 85900),
(360, '2022-08-15 00:00:00', 'CCP-F178', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'GD01', 'GLOIRE DE DIEU', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 10738, 42952),
(361, '2022-08-15 00:00:00', 'CCP-F178', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'GD01', 'GLOIRE DE DIEU', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42950, 42950),
(362, '2022-08-15 00:00:00', 'CCP-F178', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'GD01', 'GLOIRE DE DIEU', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 21475, 21475),
(363, '2022-08-15 00:00:00', 'CCP-F179', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'N', 'NUMAR', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10738, 107380),
(364, '2022-08-12 00:00:00', 'CCP-F180', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 33, 10738, 354354),
(365, '2022-08-15 00:00:00', '181', 'BRU', 'BRULEUR', 'TNORG', 'TNORG', 'ER01', 'ERIK', 'BR01', 'BRULEUR SIMPLE', 200, 600, 120000),
(366, '2022-08-15 00:00:00', '181', 'BRU', 'BRULEUR', 'TNORG', 'TNORG', 'ER01', 'ERIK', 'BRU  A', 'BRULEUR ALLUMINIUM', 35, 1200, 42000),
(367, '2022-08-15 00:00:00', '181', 'BRU', 'BRULEUR', 'TNORG', 'TNORG', 'ER01', 'ERIK', 'BRU 3', 'BRULEUR 3KG', 20, 1000, 20000),
(368, '2022-08-15 00:00:00', 'SCE182', '', '', '', '', 'C1', 'CINKANCE MARO GAZ', 'AC01', 'ACCORD DES BOUTEILLE DE 12KG', 20, 25500, 510000),
(369, '2022-08-15 00:00:00', 'SCE182', '', '', '', '', 'C1', 'CINKANCE MARO GAZ', 'AC01', 'ACCORD DES B50KG', 5, 67000, 335000),
(370, '2022-01-01 00:00:00', 'SCE183', '', '', '', '', 'C1', 'CINKANCE MARO GAZ', 'AC01', 'ACCORD DE 20B12KG', 20, 25500, 510000),
(371, '2022-01-01 00:00:00', 'SCE183', '', '', '', '', 'C1', 'CINKANCE MARO GAZ', 'AC01', 'ACCORD DE 5 B50KG', 5, 67000, 335000),
(372, '2022-08-16 00:00:00', 'CCP-F184', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'GE01', 'GER GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42300, 169200),
(373, '2022-08-16 00:00:00', 'CCP-F184', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'GE01', 'GER GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1, 10588, 10588),
(374, '2022-08-16 00:00:00', 'CCP-F185', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'KL', 'KOMLA TOTSI RAIL', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42300, 84600),
(375, '2022-08-16 00:00:00', 'CCP-F186', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'EV1', 'SAVENA GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42300, 169200),
(376, '2022-08-16 00:00:00', 'CCP-F187', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BC', 'BUSNESS CENTER', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 30, 10588, 317640),
(377, '2022-08-16 00:00:00', 'CCP-F187', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BC', 'BUSNESS CENTER', '011C50', 'Charge gaz butane 50Kgs sodigaz', 3, 42300, 126900),
(378, '2022-08-16 00:00:00', 'CCP-F187', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BC', 'BUSNESS CENTER', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 21150, 42300),
(379, '2022-08-16 00:00:00', 'CCP-F188', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ER01', 'ERIK', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10588, 158820),
(380, '2022-08-16 00:00:00', 'CCP-F189', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'LA01', 'LARE', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42300, 84600),
(381, '2022-08-16 00:00:00', 'CCP-F190', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'EN06', 'ENOULI GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 7, 10588, 74116),
(382, '2022-08-16 00:00:00', 'CCP-F191', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'VI05', 'VIGUEUR ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 42300, 169200),
(383, '2022-08-16 00:00:00', 'CCP-F191', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'VI05', 'VIGUEUR ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1, 10588, 10588),
(384, '2022-08-16 00:00:00', 'SCE192', '', '', '', '', 'ER01', 'ERIK', 'A01', 'ROBINET TETE ROUGE ', 5, 1300, 6500),
(385, '2022-08-16 00:00:00', 'CCP-F193', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FI04', 'GAKPO GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 22, 5080, 111760),
(386, '2022-08-16 00:00:00', 'CCP-F193', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'FI04', 'GAKPO GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 25, 10588, 264700),
(387, '2022-08-16 00:00:00', 'CCP-F194', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BL07', 'BLESSED GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42300, 84600),
(388, '2022-08-16 00:00:00', 'CCP-F194', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BL07', 'BLESSED GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 3, 10588, 31764),
(389, '2022-08-16 00:00:00', 'CCP-F194', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'BL07', 'BLESSED GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 2, 5080, 10160),
(390, '2022-08-15 00:00:00', 'CCP-F195', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'DO1', 'DOUTI', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 24, 10588, 254112),
(391, '2022-08-16 00:00:00', 'CCP-F196', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ZA1', 'ZAKARI GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 2, 42300, 84600),
(392, '2022-08-16 00:00:00', 'CCP-F197', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'SO01', 'SOMITE', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 8, 10588, 84704),
(393, '2022-08-16 00:00:00', 'CCP-F198', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'ME ', 'METROPOLICE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 14, 10588, 148232),
(394, '2022-08-16 00:00:00', 'CCP-F199', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A ', 'AMETODE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10588, 158820),
(395, '2022-08-16 00:00:00', 'CCP-F199', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A ', 'AMETODE GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42300, 42300),
(396, '2022-08-16 00:00:00', 'CCP-F200', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A ', 'AMETODE GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 10588, 158820),
(397, '2022-08-16 00:00:00', 'CCP-F200', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'A ', 'AMETODE GAZ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 42300, 42300),
(398, '2022-08-16 00:00:00', 'CCP-F201', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K01', 'KOWONI GAZ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 16, 10588, 169408),
(399, '2022-08-16 00:00:00', 'CCP-F201', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K01', 'KOWONI GAZ', '011C12E', 'Charge gaz butane 12,5kgs enora', 4, 10588, 42352),
(400, '2022-08-16 00:00:00', 'CCP-F201', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K01', 'KOWONI GAZ', '011C06', 'Charge gaz butane 6kgs sodigaz', 16, 5080, 81280),
(401, '2022-08-16 00:00:00', 'CCP-F202', 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'TNORG', 'TNORG', 'K4', 'KOBNA ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10, 10588, 105880);

-- --------------------------------------------------------

--
-- Structure de la table `tb_facture_canc`
--

CREATE TABLE `tb_facture_canc` (
  `id_fc` int(11) NOT NULL,
  `num_fact` varchar(30) DEFAULT NULL,
  `motif_canc` varchar(255) DEFAULT NULL,
  `date_canc` date DEFAULT NULL,
  `user_canc` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_facture_canc`
--

INSERT INTO `tb_facture_canc` (`id_fc`, `num_fact`, `motif_canc`, `date_canc`, `user_canc`) VALUES
(1, 'CCP-F1', 'doublon', '2022-08-06', '1002'),
(2, 'CCP-F25', 'doublon', '2022-08-06', '1002'),
(3, 'CCP-F12', 'doublon', '2022-08-06', '1002'),
(4, 'CCP-F2', 'a repasser', '2022-08-06', '1002'),
(5, 'CCP-F9', 'doublon', '2022-08-06', '1002'),
(6, 'CCP-F26', 'doublon', '2022-08-06', '1002'),
(7, 'CCP-F3', 'ERREUR', '2022-08-07', '1002'),
(8, 'CCP-F43', 'TEST', '2022-08-09', '1002'),
(9, 'CCP-F44', 'erreur', '2022-08-09', '1002'),
(10, 'CCP-F72', 'ESS', '2022-08-11', '1002'),
(11, 'CCP-F61', 'EE', '2022-08-11', '1002'),
(12, 'CCP-F57', 'E', '2022-08-11', '1002'),
(13, 'CCP-F71', 'E', '2022-08-11', '1002'),
(14, 'CCP-F62', 'E', '2022-08-11', '1002'),
(15, 'CCP-F56', 'ER', '2022-08-11', '1002'),
(16, 'CCP-F73', 'e', '2022-08-12', '1002'),
(17, 'CCP-F63', 'init', '2022-08-12', '1002'),
(18, 'CCP-F75', 'init', '2022-08-12', '1002'),
(19, 'CCP-F67', 'init', '2022-08-12', '1002'),
(20, 'CCP-F53', 'init', '2022-08-12', '1002'),
(21, 'CCP-F74', 'init', '2022-08-12', '1002'),
(22, 'CCP-F47', 'init', '2022-08-12', '1002'),
(23, 'CCP-F46', 'init', '2022-08-12', '1002'),
(24, 'CCP-F33', 'init', '2022-08-12', '1002'),
(25, 'CCP-F16', 'init', '2022-08-12', '1002'),
(26, 'CCP-F24', 'init', '2022-08-12', '1002'),
(27, 'CCP-F23', 'init', '2022-08-12', '1002'),
(28, 'CCP-F22', 'init', '2022-08-12', '1002'),
(29, 'CCP-F21', 'init', '2022-08-12', '1002'),
(30, 'CCP-F20', 'init', '2022-08-12', '1002'),
(31, 'CCP-F19', 'init', '2022-08-12', '1002'),
(32, 'CCP-F18', 'init', '2022-08-12', '1002'),
(33, 'CCR-F17', 'init', '2022-08-12', '1002'),
(34, 'CCP-F102', 'ERR', '2022-08-13', '1002'),
(35, 'SCE105', 'ERRERR', '2022-08-13', '1002'),
(36, 'CCP-F111', 'doublon', '2022-08-13', '1002'),
(37, 'CCP-F42', 'E', '2022-08-14', '1002'),
(38, 'CCP-F30', 'E', '2022-08-14', '1002'),
(39, 'CCP-F159', 'ER', '2022-08-15', '1002'),
(40, 'CCP-F130', 'EREUR', '2022-08-15', '1002'),
(41, 'SCE182', 'ERR', '2022-08-15', '1002'),
(42, 'CCP-F147', 'ERR', '2022-08-16', '1002'),
(43, 'CCP-F199', 'ERR', '2022-08-16', '1002'),
(44, 'SCE114', '1001', '2022-08-16', '1002'),
(45, 'SCE140', '1001', '2022-08-16', '1002'),
(46, 'SCE141', '1001', '2022-08-16', '1002'),
(47, 'CCP-F123', '1001', '2022-08-16', '1002'),
(48, 'CCP-F113', '1001', '2022-08-16', '1002'),
(49, 'CCP-F103', '1001', '2022-08-16', '1002');

-- --------------------------------------------------------

--
-- Structure de la table `tb_fichees_recap`
--

CREATE TABLE `tb_fichees_recap` (
  `id_fes` int(11) NOT NULL,
  `num_fes` int(11) DEFAULT NULL,
  `date_fes` date DEFAULT NULL,
  `code_clt` varchar(12) DEFAULT NULL,
  `nom_clt` varchar(100) DEFAULT NULL,
  `matricule_veh` varchar(12) DEFAULT NULL,
  `marque_veh` varchar(100) DEFAULT NULL,
  `B3A_Iv` varchar(3) DEFAULT NULL,
  `B3A_Ip` varchar(3) DEFAULT NULL,
  `B3A_If` varchar(3) DEFAULT NULL,
  `B3_Iv` varchar(3) DEFAULT NULL,
  `B3_Ip` varchar(3) DEFAULT NULL,
  `B3_If` varchar(3) DEFAULT NULL,
  `B6_Iv` varchar(3) DEFAULT NULL,
  `B6_Ip` varchar(3) DEFAULT NULL,
  `B6_If` varchar(3) DEFAULT NULL,
  `B6R_Iv` varchar(3) DEFAULT NULL,
  `B6R_Ip` varchar(3) DEFAULT NULL,
  `B6R_If` varchar(3) DEFAULT NULL,
  `B12_Iv` varchar(3) DEFAULT NULL,
  `B12_Ip` varchar(3) DEFAULT NULL,
  `B12_If` varchar(3) DEFAULT NULL,
  `B50_Iv` varchar(3) DEFAULT NULL,
  `B50_Ip` varchar(3) DEFAULT NULL,
  `B50_If` varchar(3) DEFAULT NULL,
  `B25_Iv` varchar(3) DEFAULT NULL,
  `B25_Ip` varchar(3) DEFAULT NULL,
  `B25_If` varchar(3) DEFAULT NULL,
  `B6E_Iv` varchar(3) DEFAULT NULL,
  `B6E_Ip` varchar(3) DEFAULT NULL,
  `B6E_If` varchar(3) DEFAULT NULL,
  `B12E_Iv` varchar(3) DEFAULT NULL,
  `B12E_Ip` varchar(3) DEFAULT NULL,
  `B12E_If` varchar(3) DEFAULT NULL,
  `B3A_Ov` varchar(3) DEFAULT NULL,
  `B3A_Op` varchar(3) DEFAULT NULL,
  `B3A_Of` varchar(3) DEFAULT NULL,
  `B3_Ov` varchar(3) DEFAULT NULL,
  `B3_Op` varchar(3) DEFAULT NULL,
  `B3_Of` varchar(3) DEFAULT NULL,
  `B6_Ov` varchar(3) DEFAULT NULL,
  `B6_Op` varchar(3) DEFAULT NULL,
  `B6_Of` varchar(3) DEFAULT NULL,
  `B6R_Ov` varchar(3) DEFAULT NULL,
  `B6R_Op` varchar(3) DEFAULT NULL,
  `B6R_Of` varchar(3) DEFAULT NULL,
  `B12_Ov` varchar(3) DEFAULT NULL,
  `B12_Op` varchar(3) DEFAULT NULL,
  `B12_Of` varchar(3) DEFAULT NULL,
  `B50_Ov` varchar(3) DEFAULT NULL,
  `B50_Op` varchar(3) DEFAULT NULL,
  `B50_Of` varchar(3) DEFAULT NULL,
  `B25_Ov` varchar(3) DEFAULT NULL,
  `B25_Op` varchar(3) DEFAULT NULL,
  `B25_Of` varchar(3) DEFAULT NULL,
  `B6E_Ov` varchar(3) DEFAULT NULL,
  `B6E_Op` varchar(3) DEFAULT NULL,
  `B6E_Of` varchar(3) DEFAULT NULL,
  `B12E_Ov` varchar(3) DEFAULT NULL,
  `B12E_Op` varchar(3) DEFAULT NULL,
  `B12E_Of` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_fichees_recap`
--

INSERT INTO `tb_fichees_recap` (`id_fes`, `num_fes`, `date_fes`, `code_clt`, `nom_clt`, `matricule_veh`, `marque_veh`, `B3A_Iv`, `B3A_Ip`, `B3A_If`, `B3_Iv`, `B3_Ip`, `B3_If`, `B6_Iv`, `B6_Ip`, `B6_If`, `B6R_Iv`, `B6R_Ip`, `B6R_If`, `B12_Iv`, `B12_Ip`, `B12_If`, `B50_Iv`, `B50_Ip`, `B50_If`, `B25_Iv`, `B25_Ip`, `B25_If`, `B6E_Iv`, `B6E_Ip`, `B6E_If`, `B12E_Iv`, `B12E_Ip`, `B12E_If`, `B3A_Ov`, `B3A_Op`, `B3A_Of`, `B3_Ov`, `B3_Op`, `B3_Of`, `B6_Ov`, `B6_Op`, `B6_Of`, `B6R_Ov`, `B6R_Op`, `B6R_Of`, `B12_Ov`, `B12_Op`, `B12_Of`, `B50_Ov`, `B50_Op`, `B50_Of`, `B25_Ov`, `B25_Op`, `B25_Of`, `B6E_Ov`, `B6E_Op`, `B6E_Of`, `B12E_Ov`, `B12E_Op`, `B12E_Of`) VALUES
(1, 2, '2022-08-26', 'R0', 'REHOBOPH', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 11, '2022-08-26', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', 'ISUZU 2', '13', '5', '1', '12', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 12, '2022-08-26', 'BO2', 'BOUCHER GAZ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 22, '2022-08-26', 'A1', 'ABALO GAZ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '60', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '0', '0'),
(5, 14785, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '19', '0', '0', '18', '0', '0', '17', '0', '0', '16', '0', '0', '15', '0', '0', '14', '0', '0', '13', '0', '0', '12', '0', '0', '12', '0', '0'),
(6, 88, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 6231 BF', 'ISUZU 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '999', '777', '888'),
(7, 29342, '2022-08-29', 'DO1', 'DOUTI', 'TG 9630 BH', 'ISUZU 2', '0', '0', '0', '200', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30', '2', '0', '0', '0', '0', '150', '0', '1', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 57, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', 'ISUZU 3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 654, '2022-08-29', 'FAT', 'FATAO GAZ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 967, '2022-08-29', 'KO01', 'KOLANI ', 'TG 5583 BJ', 'ISUZU 3', '-', '-', '-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 55, '2022-08-29', 'AN', 'ANATE ', 'TG 9630 BH', 'ISUZU 2', '14', '-', '-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 914, '2022-08-29', 'MA', 'MADIBA ', 'TG 9630 BH', 'ISUZU 2', '15', '0', '0', '15', '0', '0', '15', '0', '0', '15', '0', '0', '15', '0', '0', '15', '0', '0', '15', '0', '0', '15', '0', '0', '15', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 23, '2022-08-29', 'T1', 'T K SERVICE', 'TG 5583 BJ', 'ISUZU 3', '11', '', '', '11', '', '', '11', '', '', '11', '', '', '11', '', '', '11', '', '', '11', '', '', '11', '', '', '11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 578, '2022-08-29', 'M1', 'MILLA GAZ', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', '', '', '4', '', '', '4', '', '', '4', '', '', '4', '', '', '4', '', '', '4', '', '', '4', '', '', '4', '', ''),
(17, 5510, '2022-08-29', 'B5', 'BAS PRIX', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12', '', '', '12', '', '', '12', '', '', '12', '', '', '12', '', '', '12', '', '', '12', '', '', '12', '', '', '12', '', ''),
(18, 666, '2022-08-29', 'K4', 'KOBNA ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '13', '', '', '13', '', '', '13', '', '', '13', '', '', '13', '', '', '13', '', '', '13', '', '', '13', '', '', '13', ''),
(19, 999, '2022-08-29', 'KO', 'KOFFI DAPAONG GAZ', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '15', '', '', '15', '', '', '15', '', '', '15', '', '', '15', '', '', '15', '', '', '15', '', '', '15', '', '', '15'),
(20, 145, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', 'ISUZU 2', '1', '3', '2', '1', '3', '2', '1', '3', '2', '1', '3', '2', '1', '3', '2', '1', '3', '2', '1', '3', '2', '1', '3', '2', '1', '3', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 148654, '2022-08-29', 'GB', 'GRAND BAZARD GAZ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', '6', '5', '4', '6', '5', '4', '6', '5', '4', '6', '5', '4', '6', '5', '4', '6', '5', '4', '6', '5', '4', '6', '5', '4', '6', '5'),
(22, 4815, '2022-08-30', 'D', 'DERABE GAZ', 'TG 2318 DJ', 'APSONIC 1', '', '11', '10', '', '11', '10', '', '11', '10', '', '11', '10', '', '11', '10', '', '11', '10', '', '11', '10', '', '11', '10', '', '11', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 78944, '2022-08-30', 'B5', 'BAS PRIX', 'TG 2318 DJ', 'APSONIC 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '1', '', '2', '1', '', '2', '1', '', '2', '1', '', '2', '1', '', '2', '1', '', '2', '1', '', '2', '1', '', '2', '1'),
(24, 87, '2022-08-30', 'L3', 'LOME LABELLE GAZ ', 'TG 2318 DJ', 'APSONIC 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 55521, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 90221, '2022-08-30', 'AD', 'ADOUGBA GAZ', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 648, '2022-08-30', 'D', 'DERABE GAZ', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 648, '2022-08-30', 'D', 'DERABE GAZ', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 6458, '2022-08-30', 'GE', 'GERUM', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', 'ISUZU 3', '5', '5', '5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', 'ISUZU 3', '2', '2', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', 'APSONIC 1', '10', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', 'ISUZU 3', '7', '7', '7', '8', '8', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12', '1', '1', '18', '5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 7895, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '', '', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '127', '', '', '66', '', '', '80', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', 'APSONIC 1', '300', '300', '600', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', 'ISUZU 2', '140', '', '', '50', '', '', '54', '', '', '14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', 'ISUZU 2', '100', '', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '120', '', '', '80', '', '', '30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', 'ISUZU 2', '12', '', '1', '150', '', '', '80', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '136', '', '', '50', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', 'ISUZU 2', '120', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '', '', '', '', '', '', '', ''),
(46, 8954, '2022-08-31', 'G1', 'GERMAIN GAZ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `tb_fichees_total`
--

CREATE TABLE `tb_fichees_total` (
  `id_ft` int(11) NOT NULL,
  `num_ft` int(11) DEFAULT NULL,
  `date_ft` date DEFAULT NULL,
  `code_clt` varchar(12) DEFAULT NULL,
  `nom_clt` varchar(100) DEFAULT NULL,
  `matricule_veh` varchar(12) DEFAULT NULL,
  `marque_veh` varchar(100) DEFAULT NULL,
  `B3A_I` varchar(4) DEFAULT NULL,
  `B3_I` varchar(4) DEFAULT NULL,
  `B6_I` varchar(4) DEFAULT NULL,
  `B6R_I` varchar(4) DEFAULT NULL,
  `B12_I` varchar(4) DEFAULT NULL,
  `B25_I` varchar(4) DEFAULT NULL,
  `B50_I` varchar(4) DEFAULT NULL,
  `B6E_I` varchar(4) DEFAULT NULL,
  `B12E_I` varchar(4) DEFAULT NULL,
  `B14_I` varchar(4) DEFAULT NULL,
  `B20_I` varchar(4) DEFAULT NULL,
  `B35_I` varchar(4) DEFAULT NULL,
  `B3A_S` varchar(4) DEFAULT NULL,
  `B3_S` varchar(4) DEFAULT NULL,
  `B6_S` varchar(4) DEFAULT NULL,
  `B6R_S` varchar(4) DEFAULT NULL,
  `B12_S` varchar(4) DEFAULT NULL,
  `B25_S` varchar(4) DEFAULT NULL,
  `B50_S` varchar(4) DEFAULT NULL,
  `B6E_S` varchar(4) DEFAULT NULL,
  `B12E_S` varchar(4) DEFAULT NULL,
  `B14_S` varchar(4) DEFAULT NULL,
  `B20_S` varchar(4) DEFAULT NULL,
  `B35_S` varchar(4) DEFAULT NULL,
  `type_ft` int(1) DEFAULT NULL,
  `usager` varchar(10) DEFAULT NULL,
  `statut_canc` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_fichees_total`
--

INSERT INTO `tb_fichees_total` (`id_ft`, `num_ft`, `date_ft`, `code_clt`, `nom_clt`, `matricule_veh`, `marque_veh`, `B3A_I`, `B3_I`, `B6_I`, `B6R_I`, `B12_I`, `B25_I`, `B50_I`, `B6E_I`, `B12E_I`, `B14_I`, `B20_I`, `B35_I`, `B3A_S`, `B3_S`, `B6_S`, `B6R_S`, `B12_S`, `B25_S`, `B50_S`, `B6E_S`, `B12E_S`, `B14_S`, `B20_S`, `B35_S`, `type_ft`, `usager`, `statut_canc`) VALUES
(1, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(2, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(3, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(4, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', 'APSONIC 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(5, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', 'ISUZU 3', '21', '24', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(6, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '14', '23', '', '', '', '', '', '', '', '', '', '', 1, '1002', 0),
(7, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', 'ISUZU 3', '', '', '', '', '', '', '', '', '', '', '', '', '127', '66', '80', '', '', '', '', '', '', '', '', '', 1, '1002', 0),
(8, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', 'APSONIC 1', '1200', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(9, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', 'ISUZU 2', '140', '50', '54', '14', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(10, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', 'ISUZU 2', '110', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(11, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '1200', '80', '30', '', '', '', '', '', '', '', '', '', 1, '1002', 0),
(12, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '13', '150', '80', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(13, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', 'ISUZU 2', '', '136', '50', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(14, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', 'ISUZU 2', '120', '120', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '1002', 0),
(15, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', 'ISUZU 2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '50', '', '', '', '', '', 1, '1002', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_fiche_es`
--

CREATE TABLE `tb_fiche_es` (
  `id_fes` int(11) NOT NULL,
  `num_fes` int(11) DEFAULT NULL,
  `date_fes` date DEFAULT NULL,
  `code_clt` varchar(12) DEFAULT NULL,
  `nom_clt` varchar(100) DEFAULT NULL,
  `matricule_veh` varchar(12) DEFAULT NULL,
  `code_art` varchar(12) DEFAULT NULL,
  `designation_art` varchar(100) DEFAULT NULL,
  `qte_vide` int(11) DEFAULT NULL,
  `qte_fuite` int(11) DEFAULT NULL,
  `qte_pleine` int(11) DEFAULT NULL,
  `kgArt` double DEFAULT NULL,
  `kgfuite` double DEFAULT NULL,
  `kgpleine` double DEFAULT NULL,
  `type_fes` int(1) DEFAULT NULL,
  `usager` varchar(4) DEFAULT NULL,
  `statut_canc` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_fiche_es`
--

INSERT INTO `tb_fiche_es` (`id_fes`, `num_fes`, `date_fes`, `code_clt`, `nom_clt`, `matricule_veh`, `code_art`, `designation_art`, `qte_vide`, `qte_fuite`, `qte_pleine`, `kgArt`, `kgfuite`, `kgpleine`, `type_fes`, `usager`, `statut_canc`) VALUES
(1, 357896, '2022-08-25', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(2, 357896, '2022-08-25', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 53, 1, 0, NULL, NULL, NULL, 0, '1002', 0),
(3, 357896, '2022-08-25', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(4, 357896, '2022-08-25', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 70, 1, 0, NULL, NULL, NULL, 0, '1002', 0),
(5, 357896, '2022-08-25', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(6, 357896, '2022-08-25', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(7, 357896, '2022-08-25', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(8, 357896, '2022-08-25', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(9, 357896, '2022-08-25', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(10, 148, '2022-08-25', 'ZA1', 'ZAKARI GAZ', 'TG 2318 DJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 100, 0, 6, NULL, NULL, NULL, 0, '1002', 0),
(11, 148, '2022-08-25', 'ZA1', 'ZAKARI GAZ', 'TG 2318 DJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(12, 148, '2022-08-25', 'ZA1', 'ZAKARI GAZ', 'TG 2318 DJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(13, 148, '2022-08-25', 'ZA1', 'ZAKARI GAZ', 'TG 2318 DJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(14, 148, '2022-08-25', 'ZA1', 'ZAKARI GAZ', 'TG 2318 DJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(15, 148, '2022-08-25', 'ZA1', 'ZAKARI GAZ', 'TG 2318 DJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(16, 148, '2022-08-25', 'ZA1', 'ZAKARI GAZ', 'TG 2318 DJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(17, 148, '2022-08-25', 'ZA1', 'ZAKARI GAZ', 'TG 2318 DJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(18, 148, '2022-08-25', 'ZA1', 'ZAKARI GAZ', 'TG 2318 DJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(19, 58246, '2022-08-25', 'KO2', 'KOLANI TSEVIER', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(20, 58246, '2022-08-25', 'KO2', 'KOLANI TSEVIER', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(21, 58246, '2022-08-25', 'KO2', 'KOLANI TSEVIER', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(22, 58246, '2022-08-25', 'KO2', 'KOLANI TSEVIER', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(23, 58246, '2022-08-25', 'KO2', 'KOLANI TSEVIER', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(24, 58246, '2022-08-25', 'KO2', 'KOLANI TSEVIER', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(25, 58246, '2022-08-25', 'KO2', 'KOLANI TSEVIER', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(26, 58246, '2022-08-25', 'KO2', 'KOLANI TSEVIER', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(27, 58246, '2022-08-25', 'KO2', 'KOLANI TSEVIER', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(28, 6845, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 2318 DJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 100, 0, 6, NULL, NULL, NULL, 0, '1002', 0),
(29, 6845, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 2318 DJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(30, 6845, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 2318 DJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(31, 6845, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 2318 DJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(32, 6845, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 2318 DJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(33, 6845, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 2318 DJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(34, 6845, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 2318 DJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(35, 6845, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 2318 DJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(36, 6845, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 2318 DJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(37, 7895, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 10, 5, 5, NULL, NULL, NULL, 0, '1002', 0),
(38, 7895, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(39, 7895, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(40, 7895, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(41, 7895, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(42, 7895, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(43, 7895, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(44, 7895, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(45, 7895, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(46, 789, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 50, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(47, 789, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(48, 789, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(49, 789, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(50, 789, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(51, 789, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(52, 789, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(53, 789, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(54, 789, '2022-08-25', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(55, 1536, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(56, 1536, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(57, 1536, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(58, 1536, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 7, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(59, 1536, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(60, 1536, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(61, 1536, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(62, 1536, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(63, 1536, '2022-08-25', 'T1', 'T K SERVICE', 'TG 2318 DJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(64, 147, '2022-08-25', 'KO01', 'KOLANI ', 'TG 2318 DJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(65, 147, '2022-08-25', 'KO01', 'KOLANI ', 'TG 2318 DJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(66, 147, '2022-08-25', 'KO01', 'KOLANI ', 'TG 2318 DJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(67, 147, '2022-08-25', 'KO01', 'KOLANI ', 'TG 2318 DJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 23, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(68, 147, '2022-08-25', 'KO01', 'KOLANI ', 'TG 2318 DJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(69, 147, '2022-08-25', 'KO01', 'KOLANI ', 'TG 2318 DJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(70, 147, '2022-08-25', 'KO01', 'KOLANI ', 'TG 2318 DJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(71, 147, '2022-08-25', 'KO01', 'KOLANI ', 'TG 2318 DJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(72, 147, '2022-08-25', 'KO01', 'KOLANI ', 'TG 2318 DJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(73, 645, '2022-08-25', 'J', 'JAQUE GAZ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(74, 645, '2022-08-25', 'J', 'JAQUE GAZ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(75, 645, '2022-08-25', 'J', 'JAQUE GAZ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(76, 645, '2022-08-25', 'J', 'JAQUE GAZ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 23, 0, NULL, NULL, NULL, 1, '1002', 0),
(77, 645, '2022-08-25', 'J', 'JAQUE GAZ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(78, 645, '2022-08-25', 'J', 'JAQUE GAZ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(79, 645, '2022-08-25', 'J', 'JAQUE GAZ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(80, 645, '2022-08-25', 'J', 'JAQUE GAZ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(81, 645, '2022-08-25', 'J', 'JAQUE GAZ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(82, 2, '2022-08-26', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 120, 1, 0, NULL, NULL, NULL, 0, '1002', 0),
(83, 2, '2022-08-26', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(84, 2, '2022-08-26', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 100, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(85, 2, '2022-08-26', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(86, 2, '2022-08-26', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(87, 2, '2022-08-26', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(88, 2, '2022-08-26', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(89, 2, '2022-08-26', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(90, 2, '2022-08-26', 'R0', 'REHOBOPH', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(91, 11, '2022-08-26', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(92, 11, '2022-08-26', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(93, 11, '2022-08-26', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(94, 11, '2022-08-26', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 150, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(95, 11, '2022-08-26', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(96, 11, '2022-08-26', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(97, 11, '2022-08-26', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(98, 11, '2022-08-26', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 12, 1, 8, NULL, NULL, NULL, 0, '1002', 0),
(99, 11, '2022-08-26', 'EV1', 'SAVENA GAZ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 13, 1, 5, NULL, NULL, NULL, 0, '1002', 0),
(100, 12, '2022-08-26', 'BO2', 'BOUCHER GAZ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 43, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(101, 12, '2022-08-26', 'BO2', 'BOUCHER GAZ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 50, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(102, 12, '2022-08-26', 'BO2', 'BOUCHER GAZ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(103, 12, '2022-08-26', 'BO2', 'BOUCHER GAZ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(104, 12, '2022-08-26', 'BO2', 'BOUCHER GAZ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(105, 12, '2022-08-26', 'BO2', 'BOUCHER GAZ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(106, 12, '2022-08-26', 'BO2', 'BOUCHER GAZ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(107, 12, '2022-08-26', 'BO2', 'BOUCHER GAZ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(108, 12, '2022-08-26', 'BO2', 'BOUCHER GAZ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(109, 22, '2022-08-26', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 120, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(110, 22, '2022-08-26', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(111, 22, '2022-08-26', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(112, 22, '2022-08-26', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(113, 22, '2022-08-26', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(114, 22, '2022-08-26', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(115, 22, '2022-08-26', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(116, 22, '2022-08-26', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 60, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(117, 22, '2022-08-26', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 60, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(118, 14785, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(119, 14785, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(120, 14785, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 13, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(121, 14785, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 14, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(122, 14785, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(123, 14785, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 16, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(124, 14785, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 17, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(125, 14785, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 18, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(126, 14785, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 19, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(127, 88, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 6231 BF', '011C12E', 'Charge gaz butane 12,5kgs enora', 999, 888, 777, NULL, NULL, NULL, 1, '1002', 0),
(128, 88, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 6231 BF', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(129, 88, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 6231 BF', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(130, 88, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 6231 BF', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(131, 88, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 6231 BF', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(132, 88, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 6231 BF', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(133, 88, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 6231 BF', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(134, 88, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 6231 BF', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(135, 88, '2022-08-28', 'ZA1', 'ZAKARI GAZ', 'TG 6231 BF', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(136, 29342, '2022-08-29', 'DO1', 'DOUTI', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(137, 29342, '2022-08-29', 'DO1', 'DOUTI', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 150, 1, 0, NULL, NULL, NULL, 0, '1002', 0),
(138, 29342, '2022-08-29', 'DO1', 'DOUTI', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(139, 29342, '2022-08-29', 'DO1', 'DOUTI', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 30, 0, 2, NULL, NULL, NULL, 0, '1002', 0),
(140, 29342, '2022-08-29', 'DO1', 'DOUTI', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(141, 29342, '2022-08-29', 'DO1', 'DOUTI', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(142, 29342, '2022-08-29', 'DO1', 'DOUTI', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(143, 29342, '2022-08-29', 'DO1', 'DOUTI', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 200, 0, 3, NULL, NULL, NULL, 0, '1002', 0),
(144, 29342, '2022-08-29', 'DO1', 'DOUTI', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(145, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 34, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(146, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(147, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(148, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(149, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 117, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(150, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 67, 2, 0, NULL, NULL, NULL, 0, '1002', 0),
(151, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 75, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(152, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 1, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(153, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 24, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(154, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 34, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(155, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(156, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 2, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(157, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(158, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 117, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(159, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 67, 2, 0, NULL, NULL, NULL, 0, '1002', 0),
(160, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 75, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(161, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 1, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(162, 33228, '2022-08-29', 'EXO', 'EXODUS GAZ', 'TG 5583 BJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 24, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(163, 57, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 12, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(164, 57, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(165, 57, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(166, 57, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(167, 57, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(168, 57, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(169, 57, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(170, 57, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(171, 57, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(172, 654, '2022-08-29', 'FAT', 'FATAO GAZ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 15, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(173, 654, '2022-08-29', 'FAT', 'FATAO GAZ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(174, 654, '2022-08-29', 'FAT', 'FATAO GAZ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(175, 654, '2022-08-29', 'FAT', 'FATAO GAZ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(176, 654, '2022-08-29', 'FAT', 'FATAO GAZ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(177, 654, '2022-08-29', 'FAT', 'FATAO GAZ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(178, 654, '2022-08-29', 'FAT', 'FATAO GAZ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(179, 654, '2022-08-29', 'FAT', 'FATAO GAZ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(180, 654, '2022-08-29', 'FAT', 'FATAO GAZ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(181, 967, '2022-08-29', 'KO01', 'KOLANI ', 'TG 5583 BJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(182, 967, '2022-08-29', 'KO01', 'KOLANI ', 'TG 5583 BJ', '011C06E', 'Charge gaz butane 6kgs enora', 44, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(183, 967, '2022-08-29', 'KO01', 'KOLANI ', 'TG 5583 BJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(184, 967, '2022-08-29', 'KO01', 'KOLANI ', 'TG 5583 BJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(185, 967, '2022-08-29', 'KO01', 'KOLANI ', 'TG 5583 BJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(186, 967, '2022-08-29', 'KO01', 'KOLANI ', 'TG 5583 BJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(187, 967, '2022-08-29', 'KO01', 'KOLANI ', 'TG 5583 BJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(188, 967, '2022-08-29', 'KO01', 'KOLANI ', 'TG 5583 BJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(189, 967, '2022-08-29', 'KO01', 'KOLANI ', 'TG 5583 BJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(190, 55, '2022-08-29', 'AN', 'ANATE ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 14, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(191, 55, '2022-08-29', 'AN', 'ANATE ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 14, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(192, 55, '2022-08-29', 'AN', 'ANATE ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 14, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(193, 55, '2022-08-29', 'AN', 'ANATE ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 14, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(194, 55, '2022-08-29', 'AN', 'ANATE ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 14, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(195, 55, '2022-08-29', 'AN', 'ANATE ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 14, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(196, 55, '2022-08-29', 'AN', 'ANATE ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 14, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(197, 55, '2022-08-29', 'AN', 'ANATE ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 14, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(198, 55, '2022-08-29', 'AN', 'ANATE ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 14, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(199, 914, '2022-08-29', 'MA', 'MADIBA ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 15, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(200, 914, '2022-08-29', 'MA', 'MADIBA ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 15, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(201, 914, '2022-08-29', 'MA', 'MADIBA ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 15, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(202, 914, '2022-08-29', 'MA', 'MADIBA ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 15, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(203, 914, '2022-08-29', 'MA', 'MADIBA ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 15, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(204, 914, '2022-08-29', 'MA', 'MADIBA ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 15, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(205, 914, '2022-08-29', 'MA', 'MADIBA ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 15, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(206, 914, '2022-08-29', 'MA', 'MADIBA ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 15, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(207, 914, '2022-08-29', 'MA', 'MADIBA ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 15, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(208, 23, '2022-08-29', 'T1', 'T K SERVICE', 'TG 5583 BJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 11, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(209, 23, '2022-08-29', 'T1', 'T K SERVICE', 'TG 5583 BJ', '011C06E', 'Charge gaz butane 6kgs enora', 11, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(210, 23, '2022-08-29', 'T1', 'T K SERVICE', 'TG 5583 BJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 11, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(211, 23, '2022-08-29', 'T1', 'T K SERVICE', 'TG 5583 BJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 11, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(212, 23, '2022-08-29', 'T1', 'T K SERVICE', 'TG 5583 BJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 11, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(213, 23, '2022-08-29', 'T1', 'T K SERVICE', 'TG 5583 BJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 11, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(214, 23, '2022-08-29', 'T1', 'T K SERVICE', 'TG 5583 BJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 11, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(215, 23, '2022-08-29', 'T1', 'T K SERVICE', 'TG 5583 BJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 11, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(216, 23, '2022-08-29', 'T1', 'T K SERVICE', 'TG 5583 BJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 11, 0, 0, NULL, NULL, NULL, 0, '1002', 0),
(217, 578, '2022-08-29', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 4, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(218, 578, '2022-08-29', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C06E', 'Charge gaz butane 6kgs enora', 4, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(219, 578, '2022-08-29', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 4, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(220, 578, '2022-08-29', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(221, 578, '2022-08-29', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(222, 578, '2022-08-29', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 4, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(223, 578, '2022-08-29', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(224, 578, '2022-08-29', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 4, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(225, 578, '2022-08-29', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 4, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(226, 5510, '2022-08-29', 'B5', 'BAS PRIX', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(227, 5510, '2022-08-29', 'B5', 'BAS PRIX', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(228, 5510, '2022-08-29', 'B5', 'BAS PRIX', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(229, 5510, '2022-08-29', 'B5', 'BAS PRIX', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(230, 5510, '2022-08-29', 'B5', 'BAS PRIX', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(231, 5510, '2022-08-29', 'B5', 'BAS PRIX', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(232, 5510, '2022-08-29', 'B5', 'BAS PRIX', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(233, 5510, '2022-08-29', 'B5', 'BAS PRIX', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(234, 5510, '2022-08-29', 'B5', 'BAS PRIX', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 12, 0, 0, NULL, NULL, NULL, 1, '1002', 0),
(235, 666, '2022-08-29', 'K4', 'KOBNA ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 0, 13, NULL, NULL, NULL, 1, '1002', 0),
(236, 666, '2022-08-29', 'K4', 'KOBNA ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 0, 0, 13, NULL, NULL, NULL, 1, '1002', 0),
(237, 666, '2022-08-29', 'K4', 'KOBNA ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 0, 13, NULL, NULL, NULL, 1, '1002', 0),
(238, 666, '2022-08-29', 'K4', 'KOBNA ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 0, 13, NULL, NULL, NULL, 1, '1002', 0),
(239, 666, '2022-08-29', 'K4', 'KOBNA ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 0, 13, NULL, NULL, NULL, 1, '1002', 0),
(240, 666, '2022-08-29', 'K4', 'KOBNA ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 0, 13, NULL, NULL, NULL, 1, '1002', 0),
(241, 666, '2022-08-29', 'K4', 'KOBNA ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 0, 13, NULL, NULL, NULL, 1, '1002', 0),
(242, 666, '2022-08-29', 'K4', 'KOBNA ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 0, 13, NULL, NULL, NULL, 1, '1002', 0),
(243, 666, '2022-08-29', 'K4', 'KOBNA ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 0, 13, NULL, NULL, NULL, 1, '1002', 0),
(244, 999, '2022-08-29', 'KO', 'KOFFI DAPAONG GAZ', 'TG 5583 BJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 15, 0, NULL, NULL, NULL, 1, '1002', 0),
(245, 999, '2022-08-29', 'KO', 'KOFFI DAPAONG GAZ', 'TG 5583 BJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 15, 0, NULL, NULL, NULL, 1, '1002', 0),
(246, 999, '2022-08-29', 'KO', 'KOFFI DAPAONG GAZ', 'TG 5583 BJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 15, 0, NULL, NULL, NULL, 1, '1002', 0),
(247, 999, '2022-08-29', 'KO', 'KOFFI DAPAONG GAZ', 'TG 5583 BJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 15, 0, NULL, NULL, NULL, 1, '1002', 0),
(248, 999, '2022-08-29', 'KO', 'KOFFI DAPAONG GAZ', 'TG 5583 BJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 15, 0, NULL, NULL, NULL, 1, '1002', 0),
(249, 999, '2022-08-29', 'KO', 'KOFFI DAPAONG GAZ', 'TG 5583 BJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 15, 0, NULL, NULL, NULL, 1, '1002', 0),
(250, 999, '2022-08-29', 'KO', 'KOFFI DAPAONG GAZ', 'TG 5583 BJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 15, 0, NULL, NULL, NULL, 1, '1002', 0),
(251, 999, '2022-08-29', 'KO', 'KOFFI DAPAONG GAZ', 'TG 5583 BJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 15, 0, NULL, NULL, NULL, 1, '1002', 0),
(252, 999, '2022-08-29', 'KO', 'KOFFI DAPAONG GAZ', 'TG 5583 BJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 15, 0, NULL, NULL, NULL, 1, '1002', 0),
(253, 145, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 1, 2, 3, NULL, NULL, NULL, 0, '1002', 0),
(254, 145, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 1, 2, 3, NULL, NULL, NULL, 0, '1002', 0),
(255, 145, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 1, 2, 3, NULL, NULL, NULL, 0, '1002', 0),
(256, 145, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 1, 2, 3, NULL, NULL, NULL, 0, '1002', 0),
(257, 145, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 1, 2, 3, NULL, NULL, NULL, 0, '1002', 0),
(258, 145, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 1, 2, 3, NULL, NULL, NULL, 0, '1002', 0),
(259, 145, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 1, 2, 3, NULL, NULL, NULL, 0, '1002', 0),
(260, 145, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 1, 2, 3, NULL, NULL, NULL, 0, '1002', 0),
(261, 145, '2022-08-29', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1, 2, 3, NULL, NULL, NULL, 0, '1002', 0),
(262, 148654, '2022-08-29', 'GB', 'GRAND BAZARD GAZ', 'TG 9630 BH', '011C12E', 'Charge gaz butane 12,5kgs enora', 4, 5, 6, NULL, NULL, NULL, 1, '1002', 0),
(263, 148654, '2022-08-29', 'GB', 'GRAND BAZARD GAZ', 'TG 9630 BH', '011C06E', 'Charge gaz butane 6kgs enora', 4, 5, 6, NULL, NULL, NULL, 1, '1002', 0),
(264, 148654, '2022-08-29', 'GB', 'GRAND BAZARD GAZ', 'TG 9630 BH', '011C25', 'Charge gaz butane 25Kgs sodigaz', 4, 5, 6, NULL, NULL, NULL, 1, '1002', 0),
(265, 148654, '2022-08-29', 'GB', 'GRAND BAZARD GAZ', 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 4, 5, 6, NULL, NULL, NULL, 1, '1002', 0),
(266, 148654, '2022-08-29', 'GB', 'GRAND BAZARD GAZ', 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 4, 5, 6, NULL, NULL, NULL, 1, '1002', 0),
(267, 148654, '2022-08-29', 'GB', 'GRAND BAZARD GAZ', 'TG 9630 BH', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 4, 5, 6, NULL, NULL, NULL, 1, '1002', 0),
(268, 148654, '2022-08-29', 'GB', 'GRAND BAZARD GAZ', 'TG 9630 BH', '011C06', 'Charge gaz butane 6kgs sodigaz', 4, 5, 6, NULL, NULL, NULL, 1, '1002', 0),
(269, 148654, '2022-08-29', 'GB', 'GRAND BAZARD GAZ', 'TG 9630 BH', '011C03', 'Charge gaz butane 3kgs sodigaz', 4, 5, 6, NULL, NULL, NULL, 1, '1002', 0),
(270, 148654, '2022-08-29', 'GB', 'GRAND BAZARD GAZ', 'TG 9630 BH', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 4, 5, 6, NULL, NULL, NULL, 1, '1002', 0),
(271, 4815, '2022-08-30', 'D', 'DERABE GAZ', 'TG 2318 DJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 10, 11, 12.5, 125, 137.5, 0, '1002', 0),
(272, 4815, '2022-08-30', 'D', 'DERABE GAZ', 'TG 2318 DJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 10, 11, 6, 60, 66, 0, '1002', 0),
(273, 4815, '2022-08-30', 'D', 'DERABE GAZ', 'TG 2318 DJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 10, 11, 25, 250, 275, 0, '1002', 0),
(274, 4815, '2022-08-30', 'D', 'DERABE GAZ', 'TG 2318 DJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 10, 11, 50, 500, 550, 0, '1002', 0),
(275, 4815, '2022-08-30', 'D', 'DERABE GAZ', 'TG 2318 DJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 10, 11, 12.5, 125, 137.5, 0, '1002', 0),
(276, 4815, '2022-08-30', 'D', 'DERABE GAZ', 'TG 2318 DJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 10, 11, 6, 60, 66, 0, '1002', 0),
(277, 4815, '2022-08-30', 'D', 'DERABE GAZ', 'TG 2318 DJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 10, 11, 6, 60, 66, 0, '1002', 0),
(278, 4815, '2022-08-30', 'D', 'DERABE GAZ', 'TG 2318 DJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 10, 11, 3, 30, 33, 0, '1002', 0),
(279, 4815, '2022-08-30', 'D', 'DERABE GAZ', 'TG 2318 DJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 10, 11, 3, 30, 33, 0, '1002', 0),
(280, 78944, '2022-08-30', 'B5', 'BAS PRIX', 'TG 2318 DJ', '011C12E', 'Charge gaz butane 12,5kgs enora', 0, 1, 2, 12.5, 12.5, 25, 1, '1002', 0),
(281, 78944, '2022-08-30', 'B5', 'BAS PRIX', 'TG 2318 DJ', '011C06E', 'Charge gaz butane 6kgs enora', 0, 1, 2, 6, 6, 12, 1, '1002', 0),
(282, 78944, '2022-08-30', 'B5', 'BAS PRIX', 'TG 2318 DJ', '011C25', 'Charge gaz butane 25Kgs sodigaz', 0, 1, 2, 25, 25, 50, 1, '1002', 0),
(283, 78944, '2022-08-30', 'B5', 'BAS PRIX', 'TG 2318 DJ', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 1, 2, 50, 50, 100, 1, '1002', 0),
(284, 78944, '2022-08-30', 'B5', 'BAS PRIX', 'TG 2318 DJ', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 1, 2, 12.5, 12.5, 25, 1, '1002', 0),
(285, 78944, '2022-08-30', 'B5', 'BAS PRIX', 'TG 2318 DJ', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 0, 1, 2, 6, 6, 12, 1, '1002', 0),
(286, 78944, '2022-08-30', 'B5', 'BAS PRIX', 'TG 2318 DJ', '011C06', 'Charge gaz butane 6kgs sodigaz', 0, 1, 2, 6, 6, 12, 1, '1002', 0),
(287, 78944, '2022-08-30', 'B5', 'BAS PRIX', 'TG 2318 DJ', '011C03', 'Charge gaz butane 3kgs sodigaz', 0, 1, 2, 3, 3, 6, 1, '1002', 0),
(288, 78944, '2022-08-30', 'B5', 'BAS PRIX', 'TG 2318 DJ', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 0, 1, 2, 3, 3, 6, 1, '1002', 0),
(289, 87, '2022-08-30', 'L3', 'LOME LABELLE GAZ ', 'TG 2318 DJ', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 20, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(290, 87, '2022-08-30', 'L3', 'LOME LABELLE GAZ ', 'TG 2318 DJ', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(291, 87, '2022-08-30', 'L3', 'LOME LABELLE GAZ ', 'TG 2318 DJ', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(292, 87, '2022-08-30', 'L3', 'LOME LABELLE GAZ ', 'TG 2318 DJ', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(293, 87, '2022-08-30', 'L3', 'LOME LABELLE GAZ ', 'TG 2318 DJ', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(294, 87, '2022-08-30', 'L3', 'LOME LABELLE GAZ ', 'TG 2318 DJ', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(295, 87, '2022-08-30', 'L3', 'LOME LABELLE GAZ ', 'TG 2318 DJ', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(296, 87, '2022-08-30', 'L3', 'LOME LABELLE GAZ ', 'TG 2318 DJ', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(297, 87, '2022-08-30', 'L3', 'LOME LABELLE GAZ ', 'TG 2318 DJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(298, 55521, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 9630 BH', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(299, 90221, '2022-08-30', 'AD', 'ADOUGBA GAZ', 'TG 5583 BJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(300, 648, '2022-08-30', 'D', 'DERABE GAZ', 'TG 5583 BJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(301, 648, '2022-08-30', 'D', 'DERABE GAZ', 'TG 5583 BJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(302, 6458, '2022-08-30', 'GE', 'GERUM', 'TG 5583 BJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(303, 6458, '2022-08-30', 'GE', 'GERUM', 'TG 5583 BJ', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(304, 6458, '2022-08-30', 'GE', 'GERUM', 'TG 5583 BJ', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(305, 6458, '2022-08-30', 'GE', 'GERUM', 'TG 5583 BJ', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(306, 6458, '2022-08-30', 'GE', 'GERUM', 'TG 5583 BJ', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(307, 6458, '2022-08-30', 'GE', 'GERUM', 'TG 5583 BJ', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(308, 6458, '2022-08-30', 'GE', 'GERUM', 'TG 5583 BJ', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(309, 6458, '2022-08-30', 'GE', 'GERUM', 'TG 5583 BJ', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(310, 6458, '2022-08-30', 'GE', 'GERUM', 'TG 5583 BJ', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(311, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(312, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(313, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(314, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(315, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(316, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(317, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(318, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(319, 9582, '2022-08-30', 'CH', 'CHIC GAZ', 'TG 5583 BJ', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(320, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 5, 5, 5, 3, 15, 15, 0, '1002', 0),
(321, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(322, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(323, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(324, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(325, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(326, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(327, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(328, 5522, '2022-08-30', 'M1', 'MILLA GAZ', 'TG 5583 BJ', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(329, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 2, 2, 2, 3, 6, 6, 0, '1002', 0),
(330, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 3, 3, 3, 3, 9, 9, 0, '1002', 0),
(331, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(332, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(333, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(334, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(335, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(336, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(337, 2551, '2022-08-30', 'CO1', 'CONFIANCE GAZ', 'TG 5583 BJ', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(338, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 10, 0, 10, 3, 0, 30, 0, '1002', 0),
(339, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0);
INSERT INTO `tb_fiche_es` (`id_fes`, `num_fes`, `date_fes`, `code_clt`, `nom_clt`, `matricule_veh`, `code_art`, `designation_art`, `qte_vide`, `qte_fuite`, `qte_pleine`, `kgArt`, `kgfuite`, `kgpleine`, `type_fes`, `usager`, `statut_canc`) VALUES
(340, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(341, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(342, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(343, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(344, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(345, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(346, 589, '2022-08-30', 'FE1', 'FELICITE GAZ', 'TG 2318 DJ', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(347, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 7, 7, 7, 3, 21, 21, 0, '1002', 0),
(348, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 8, 8, 8, 3, 24, 24, 0, '1002', 0),
(349, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(350, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(351, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(352, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(353, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(354, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(355, 845796, '2022-08-30', 'ER01', 'ERIK', 'TG 5583 BJ', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(356, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 12, 1, 1, 3, 3, 3, 1, '1002', 0),
(357, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 18, 0, 5, 3, 0, 15, 1, '1002', 0),
(358, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(359, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(360, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(361, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(362, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(363, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 1, '1002', 0),
(364, 4899, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 1, '1002', 0),
(365, 7895, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '02103K.', 'Bouteille de consignation de 3kgs avec anse sodigaz', 0, 0, 10, 3, 0, 30, 1, '1002', 0),
(366, 7895, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '02103K', 'Bouteille de consignation de 3kgs sodigaz', 0, 0, 100, 3, 0, 300, 1, '1002', 0),
(367, 7895, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '02106K', 'Bouteille de consignation de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(368, 7895, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '02106K.', 'Bouteille de consignation de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(369, 7895, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '021E6K', 'Bouteille de consignation de 6kgs enora', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(370, 7895, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '02112K', 'Bouteille de consignation de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(371, 7895, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '021E12K', 'Bouteille de consignation de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(372, 7895, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '02125K', 'Bouteille de consignation de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 1, '1002', 0),
(373, 7895, '2022-08-30', 'AGB', 'KOMBATE KOKOU', 'TG 5583 BJ', '0250K', 'Bouteille de consignation de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 1, '1002', 0),
(374, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 127, 3, 0, 381, 1, '1002', 0),
(375, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 0, 0, 66, 3, 0, 198, 1, '1002', 0),
(376, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 80, 6, 0, 480, 1, '1002', 0),
(377, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(378, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(379, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(380, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(381, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 1, '1002', 0),
(382, 887, '2022-08-30', 'AL', 'ALU SAVANE', 'TG 5583 BJ', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 1, '1002', 0),
(383, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 300, 600, 300, 3, 1800, 900, 0, '1002', 0),
(384, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(385, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(386, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(387, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(388, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(389, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(390, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(391, 3000, '2022-08-31', 'M1', 'MILLA GAZ', 'TG 2318 DJ', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(392, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 140, 0, 0, 3, 0, 0, 0, '1002', 0),
(393, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 50, 0, 0, 3, 0, 0, 0, '1002', 0),
(394, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 54, 0, 0, 6, 0, 0, 0, '1002', 0),
(395, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 14, 0, 0, 6, 0, 0, 0, '1002', 0),
(396, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(397, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(398, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(399, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(400, 9856, '2022-08-31', 'B', 'AGBOLOSSOU KOMLA', 'TG 9630 BH', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(401, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 100, 10, 0, 3, 30, 0, 0, '1002', 0),
(402, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(403, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(404, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(405, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(406, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(407, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(408, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(409, 541, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(410, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 1200, 3, 0, 3600, 1, '1002', 0),
(411, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 0, 0, 80, 3, 0, 240, 1, '1002', 0),
(412, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 30, 6, 0, 180, 1, '1002', 0),
(413, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(414, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(415, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(416, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(417, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 1, '1002', 0),
(418, 885624, '2022-08-31', 'ER01', 'ERIK', 'TG 9630 BH', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 1, '1002', 0),
(419, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 12, 1, 0, 3, 3, 0, 0, '1002', 0),
(420, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 150, 0, 0, 3, 0, 0, 0, '1002', 0),
(421, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 80, 0, 0, 6, 0, 0, 0, '1002', 0),
(422, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(423, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(424, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(425, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(426, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(427, 8795, '2022-08-31', 'A1', 'ABALO GAZ', 'TG 9630 BH', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(428, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 0, 3, 0, 0, 0, '1002', 0),
(429, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 136, 0, 0, 3, 0, 0, 0, '1002', 0),
(430, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 50, 0, 0, 6, 0, 0, 0, '1002', 0),
(431, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(432, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(433, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(434, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(435, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(436, 10012, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(437, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 120, 0, 0, 3, 0, 0, 0, '1002', 0),
(438, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 120, 0, 0, 3, 0, 0, 0, '1002', 0),
(439, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(440, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(441, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 0, '1002', 0),
(442, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(443, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 0, '1002', 0),
(444, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 0, '1002', 0),
(445, 856472, '2022-08-31', 'AN', 'ANATE ', 'TG 9630 BH', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 0, 50, 0, 0, 0, '1002', 0),
(446, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', '011C03.', 'Bouteille de recharge de 3kgs avec anse sodigaz', 0, 0, 0, 3, 0, 0, 1, '1002', 0),
(447, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', '011C03', 'Bouteille de recharge de 3kgs sodigaz', 0, 0, 0, 3, 0, 0, 1, '1002', 0),
(448, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', '011C06', 'Bouteille de recharge de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(449, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', '011C06.', 'Bouteille de recharge de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(450, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', '011C06E', 'Bouteille de recharge de 6kgs enora', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(451, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', '011C12', 'Bouteille de recharge de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(452, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', '011C12E', 'Bouteille de recharge de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(453, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', '011C25', 'Bouteille de recharge de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 1, '1002', 0),
(454, 956874, '2022-08-31', 'P ', 'PASTOR ENTREPRISE ', 'TG 9630 BH', '011C50', 'Bouteille de recharge de 50Kgs sodigaz', 0, 0, 50, 50, 0, 2500, 1, '1002', 0),
(455, 8954, '2022-08-31', 'G1', 'GERMAIN GAZ', 'TG 9630 BH', '02103K.', 'Bouteille de consignation de 3kgs avec anse sodigaz', 0, 0, 0, 3, 0, 0, 1, '1002', 0),
(456, 8954, '2022-08-31', 'G1', 'GERMAIN GAZ', 'TG 9630 BH', '02103K', 'Bouteille de consignation de 3kgs sodigaz', 0, 0, 0, 3, 0, 0, 1, '1002', 0),
(457, 8954, '2022-08-31', 'G1', 'GERMAIN GAZ', 'TG 9630 BH', '02106K', 'Bouteille de consignation de 6kgs sodigaz', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(458, 8954, '2022-08-31', 'G1', 'GERMAIN GAZ', 'TG 9630 BH', '02106K.', 'Bouteille de consignation de 6kgs à robinet sodigaz', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(459, 8954, '2022-08-31', 'G1', 'GERMAIN GAZ', 'TG 9630 BH', '021E6K', 'Bouteille de consignation de 6kgs enora', 0, 0, 0, 6, 0, 0, 1, '1002', 0),
(460, 8954, '2022-08-31', 'G1', 'GERMAIN GAZ', 'TG 9630 BH', '02112K', 'Bouteille de consignation de 12,5kgs sodigaz', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(461, 8954, '2022-08-31', 'G1', 'GERMAIN GAZ', 'TG 9630 BH', '021E12K', 'Bouteille de consignation de 12,5kgs enora', 0, 0, 0, 12.5, 0, 0, 1, '1002', 0),
(462, 8954, '2022-08-31', 'G1', 'GERMAIN GAZ', 'TG 9630 BH', '02125K', 'Bouteille de consignation de 25Kgs sodigaz', 0, 0, 0, 25, 0, 0, 1, '1002', 0),
(463, 8954, '2022-08-31', 'G1', 'GERMAIN GAZ', 'TG 9630 BH', '0250K', 'Bouteille de consignation de 50Kgs sodigaz', 0, 0, 30, 50, 0, 1500, 1, '1002', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_gphcirculaire`
--

CREATE TABLE `tb_gphcirculaire` (
  `idgphC` int(11) NOT NULL,
  `code_clt` varchar(20) DEFAULT NULL,
  `nom_clt` varchar(50) DEFAULT NULL,
  `total_kilo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_gphcirculaire`
--

INSERT INTO `tb_gphcirculaire` (`idgphC`, `code_clt`, `nom_clt`, `total_kilo`) VALUES
(1, 'P1', 'PIKABE GAZ', 249);

-- --------------------------------------------------------

--
-- Structure de la table `tb_gphcourbed`
--

CREATE TABLE `tb_gphcourbed` (
  `id_graph` int(11) NOT NULL,
  `code_clt` varchar(20) DEFAULT NULL,
  `nom_clt` varchar(50) DEFAULT NULL,
  `total_kilo` double NOT NULL,
  `date_bl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_gphcourbed`
--

INSERT INTO `tb_gphcourbed` (`id_graph`, `code_clt`, `nom_clt`, `total_kilo`, `date_bl`) VALUES
(1, 'P1', 'PIKABE GAZ', 249, '2022-08-06');

-- --------------------------------------------------------

--
-- Structure de la table `tb_gphcourbefin`
--

CREATE TABLE `tb_gphcourbefin` (
  `id_graph` int(11) NOT NULL,
  `code_clt` varchar(20) DEFAULT NULL,
  `nom_clt` varchar(50) DEFAULT NULL,
  `total_kilo` double DEFAULT NULL,
  `date_bl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_gphcourbefin`
--

INSERT INTO `tb_gphcourbefin` (`id_graph`, `code_clt`, `nom_clt`, `total_kilo`, `date_bl`) VALUES
(1, 'P1', 'PIKABE GAZ', 249, '2022-08-06');

-- --------------------------------------------------------

--
-- Structure de la table `tb_historique_caisse`
--

CREATE TABLE `tb_historique_caisse` (
  `id_hisc` int(11) NOT NULL,
  `date_hisc` datetime DEFAULT NULL,
  `num_piece` varchar(20) DEFAULT NULL,
  `code_cli` varchar(20) DEFAULT NULL,
  `nom_cli` varchar(100) DEFAULT NULL,
  `type_encais` varchar(12) DEFAULT NULL,
  `Caisse` varchar(12) DEFAULT NULL,
  `ope` varchar(12) DEFAULT NULL,
  `sens` varchar(1) DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `usager` varchar(4) DEFAULT NULL,
  `statut_canc` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_historique_caisse`
--

INSERT INTO `tb_historique_caisse` (`id_hisc`, `date_hisc`, `num_piece`, `code_cli`, `nom_cli`, `type_encais`, `Caisse`, `ope`, `sens`, `montant`, `usager`, `statut_canc`) VALUES
(1, '2022-08-04 19:27:00', 'CCP-F2', 'ER01', 'ERIK', NULL, '1001000001', 'ope1', 'C', 420000, '1001', 1),
(2, '2022-08-04 00:00:00', 'ORDINATEUR NEUF', 'néant', 'OD', NULL, '1002000001', 'ope2', 'D', 340000, '1002', 0),
(3, '2022-08-04 00:00:00', 'AVANCE SUR ACHAT DU ', 'néant', '', NULL, '1002000001', 'ope3', 'D', 60000, '1002', 0),
(4, '2022-08-04 00:00:00', 'AVANCE SUR LA PALLET', 'néant', '', NULL, '1002000001', 'ope4', 'D', 800000, '1002', 0),
(5, '2022-08-04 00:00:00', 'AVANCE SUR PALLETISA', 'néant', '', NULL, '1002000001', 'ope5', 'D', 400000, '1002', 0),
(6, '2022-08-04 22:31:00', 'CCP-F4', 'M1', 'MILLA GAZ', NULL, '1002000001', 'ope6', 'C', 234000, '1002', 0),
(7, '2022-08-05 10:46:00', 'CCP-F6', 'KO01', 'KOLANI ', NULL, '1002000001', 'ope7', 'C', 138000, '1002', 0),
(8, '2022-08-05 11:06:00', 'CCP-F7', 'KO01', 'KOLANI ', NULL, '1002000001', 'ope8', 'C', 120000, '1002', 0),
(9, '2022-08-05 11:14:00', 'CCP-F8', 'DO1', 'DOUTI', NULL, '1002000001', 'ope9', 'C', 174000, '1002', 0),
(10, '2022-08-05 14:14:00', 'CCP-F5', 'O', 'STATION OANDO', NULL, '1002000001', 'ope10', 'C', 8200, '1002', 0),
(11, '2022-08-05 14:21:00', 'CCP-F10', 'CO1', 'CONFIANCE GAZ', NULL, '1002000001', 'ope11', 'C', 120000, '1002', 0),
(12, '2022-08-05 17:37:00', 'CCP-F11', 'M1', 'MILLA GAZ', NULL, '1002000001', 'ope12', 'C', 174000, '1002', 0),
(13, '2022-08-05 00:00:00', 'RE', 'néant', 'REPARATION DU FOURGONNETE', NULL, '1002000001', 'ope13', 'D', 15000, '1002', 0),
(14, '2022-08-06 10:33:00', 'CCP-F14', 'P1', 'PIKABE GAZ', NULL, '1002000001', 'ope14', 'C', 5760, '1002', 0),
(15, '2022-08-06 10:36:00', 'CCP-F14', 'P1', 'PIKABE GAZ', NULL, '1002000001', 'ope15', 'C', 149760, '1002', 0),
(16, '2022-08-06 00:00:00', 'TCHABOSSO', 'néant', 'salaire du moi de juin', NULL, '1002000001', 'ope16', 'D', 60000, '1002', 0),
(17, '2022-08-06 00:00:00', 'FOUSSENI', 'néant', 'salaire du moi de juin', NULL, '1002000001', 'ope17', 'D', 60000, '1002', 0),
(18, '2022-08-06 00:00:00', 'ALBERT', 'néant', 'salaire du moi de jun', NULL, '1002000001', 'ope18', 'D', 110000, '1002', 0),
(19, '2022-08-06 00:00:00', 'FLORENT', 'néant', 'salaire du moi de juin', NULL, '1002000001', 'ope19', 'D', 55000, '1002', 0),
(20, '2022-08-06 00:00:00', 'AIME', 'néant', 'salaire du moi de jun', NULL, '1002000001', 'ope20', 'D', 50000, '1002', 0),
(21, '2022-08-06 00:00:00', 'TOLER', 'néant', 'salaire du moi de juin', NULL, '1002000001', 'ope21', 'D', 60000, '1002', 0),
(22, '2022-08-06 00:00:00', 'VIEU2', 'néant', 'salaire juin 2022', NULL, '1002000001', 'ope22', 'D', 60000, '1002', 0),
(23, '2022-08-06 00:00:00', 'JEOFROID', 'néant', 'salaire de juin 2022', NULL, '1002000001', 'ope23', 'D', 55000, '1002', 0),
(24, '2022-08-06 00:00:00', 'KODJO', 'néant', 'salaire juin 2022', NULL, '1002000001', 'ope24', 'D', 50000, '1002', 0),
(25, '2022-08-06 00:00:00', 'MATIAS', 'néant', 'salaire juin 2022', NULL, '1002000001', 'ope25', 'D', 50000, '1002', 0),
(26, '2022-08-06 00:00:00', 'MABA', 'néant', 'salaire de juin 2022', NULL, '1002000001', 'ope26', 'D', 50000, '1002', 0),
(27, '2022-08-06 00:00:00', 'ABOU', 'néant', 'forfait de juin 2022', NULL, '1002000001', 'ope27', 'D', 40000, '1002', 0),
(28, '2022-08-06 00:00:00', 'JAMES', 'néant', 'salaire jun 2022', NULL, '1002000001', 'ope28', 'D', 40000, '1002', 0),
(29, '2022-08-06 00:00:00', 'TIMOTE', 'néant', 'salaire juin 2022', NULL, '1002000001', 'ope29', 'D', 75000, '1002', 0),
(30, '2022-08-06 00:00:00', 'GROS', 'néant', 'salire de jun 2022', NULL, '1002000001', 'ope30', 'D', 50000, '1002', 0),
(31, '2022-08-06 17:15:00', 'CCR-F17', 'ER01', 'ERIK', NULL, '1002000001', 'ope31', 'C', 1212480, '1002', 1),
(33, '2022-08-06 19:45:00', 'CCP-F15', 'DO1', 'DOUTI', NULL, '1002000001', 'ope33', 'C', 102000, '1002', 0),
(34, '2022-08-07 00:00:00', 'AB', 'néant', 'PRET', NULL, '1002000001', 'ope34', 'C', 100000, '1002', 0),
(35, '2022-08-07 00:00:00', 'EDEMM', 'néant', 'avance sur logiciel', NULL, '1002000001', 'ope35', 'D', 40000, '1002', 0),
(36, '2022-08-07 00:00:00', 'SORTI', 'néant', 'sorti', NULL, '1002000001', 'ope36', 'D', 80000, '1002', 1),
(37, '2022-08-07 16:00:00', 'CCR-F13', 'KO', 'KOFFI DAPAONG GAZ', NULL, '1002000001', 'ope37', 'C', 1834800, '1002', 0),
(38, '2022-08-08 00:00:00', 'SIMNARA JAMES', 'néant', 'pret pour lobtention du permi de condure a payer 5000/mois apartir du mois de septembre 2022\r\npas so', NULL, '1002000001', 'ope38', 'D', 120000, '1002', 0),
(39, '2022-08-08 21:54:00', 'CCP-F35', 'A1', 'ABALO GAZ', NULL, '1002000001', 'ope39', 'C', 192000, '1002', 0),
(40, '2022-08-08 21:55:00', 'CCP-F34', 'O', 'STATION OANDO', NULL, '1002000001', 'ope40', 'C', 8200, '1002', 0),
(41, '2022-08-08 21:56:00', 'CCP-F30', 'L1', 'LAMBO GAZ', NULL, '1002000001', 'ope41', 'C', 200000, '1002', 1),
(42, '2022-08-08 21:57:00', 'CCP-F29', 'M1', 'MILLA GAZ', NULL, '1002000001', 'ope42', 'C', 144000, '1002', 0),
(43, '2022-08-09 00:00:00', 'ERIK', 'néant', 'verssement', NULL, '1002000001', 'ope43', 'C', 1100000, '1002', 0),
(44, '2022-08-09 12:38:00', 'CCR-F37', 'DAP2', 'DAPAONG 2 BIGBA', NULL, '1002000001', 'ope44', 'C', 321840, '1002', 0),
(45, '2022-08-09 12:42:00', 'CCP-F36', 'DAP2', 'DAPAONG 2 BIGBA', NULL, '1002000001', 'ope45', 'C', 60000, '1002', 0),
(46, '2022-08-09 14:54:00', 'CCP-F41', 'KO01', 'KOLANI ', NULL, '1002000001', 'ope46', 'C', 198000, '1002', 0),
(47, '2022-08-09 14:55:00', 'CCP-F40', 'M1', 'MILLA GAZ', NULL, '1002000001', 'ope47', 'C', 150000, '1002', 0),
(48, '2022-08-09 15:00:00', 'CCP-F42', 'L1', 'LAMBO GAZ', NULL, '1002000001', 'ope48', 'C', 200000, '1002', 1),
(49, '2022-08-09 00:00:00', 'ABRAHAM', 'néant', 'vente2', NULL, '1002000001', 'ope49', 'C', 4500000, '1002', 0),
(50, '2022-08-09 00:00:00', 'KOSSI', 'néant', 'verssement de 450000', NULL, '1002000001', 'ope50', 'D', 4500000, '1002', 0),
(51, '2022-08-09 15:32:00', 'CCP-F39', 'I1', 'ISSAKA KARA 1', NULL, '1002000001', 'ope51', 'C', 315840, '1002', 0),
(52, '2022-08-09 15:34:00', 'CCP-F28', 'I1', 'ISSAKA KARA 1', NULL, '1002000001', 'ope52', 'C', 158400, '1002', 0),
(55, '2022-08-09 18:58:00', 'CCP-F45', 'KO01', 'KOLANI ', NULL, '1002000001', 'ope53', 'C', 125520, '1002', 0),
(56, '2022-08-09 00:00:00', 'ABRAHAM', 'néant', 'v soire du 9/08/2022', NULL, '1002000001', 'ope56', 'C', 900000, '1002', 1),
(57, '2022-08-09 00:00:00', 'ABRAHAM', 'néant', 'VENTE CAISSE', NULL, '1002000001', 'ope57', 'C', 900000, '1002', 0),
(58, '2022-08-09 00:00:00', 'KOSSI', 'néant', 'SALAIRE JUN', NULL, '1002000001', 'ope58', 'D', 60000, '1002', 0),
(59, '2022-08-09 00:00:00', 'THOMAS', 'néant', 'SALAIRE JUN', NULL, '1002000001', 'ope59', 'D', 60000, '1002', 0),
(60, '2022-08-09 00:00:00', 'SAMBIANI', 'néant', 'SALAIRE JUN', NULL, '1002000001', 'ope60', 'D', 100000, '1002', 0),
(61, '2022-08-09 00:00:00', 'VIEU 1 ', 'néant', 'SALAIRE JUN', NULL, '1002000001', 'ope61', 'D', 60000, '1002', 0),
(62, '2022-08-03 00:00:00', 'ABRAHAM', 'néant', 'LOYER DE FIN JUN ET FIN JUELLET', NULL, '1002000001', 'ope62', 'D', 100000, '1002', 0),
(63, '2022-08-10 08:30:00', 'CCP-F49', 'R0', 'REHOBOPH', NULL, '1002000001', 'ope63', 'C', 70000, '1002', 0),
(64, '2022-08-10 08:48:00', 'CCP-F52', 'FAT', 'FATAO GAZ', NULL, '1002000001', 'ope64', 'C', 228000, '1002', 0),
(65, '2022-08-10 00:00:00', 'KOSSI ', 'néant', 'depot banque', NULL, '1002000001', 'ope65', 'C', 5000000, '1002', 1),
(66, '2022-08-10 00:00:00', 'ABRAHAM', 'néant', 'achat de 6 de 50kg chez GERUM', NULL, '1002000001', 'ope66', 'C', 184000, '1002', 1),
(67, '2022-08-10 00:00:00', 'ABRAHAM', 'néant', 'ACHAT DE 6 RE 50KG CHEZ GERUM', NULL, '1002000001', 'ope67', 'D', 184000, '1002', 0),
(68, '2022-08-10 00:00:00', 'ABRAHAM', 'néant', 'CANAL BOX', NULL, '1002000001', 'ope68', 'D', 25000, '1002', 0),
(69, '2022-08-10 00:00:00', 'KOSSI', 'néant', 'DEPOT BANQUE', NULL, '1002000001', 'ope69', 'D', 5000000, '1002', 0),
(70, '2022-08-10 00:00:00', 'ERIK', 'néant', 'VERSSEMENT', NULL, '1002000001', 'ope70', 'C', 800000, '1002', 0),
(71, '2022-08-10 00:00:00', 'ABRAHAM', 'néant', 'VENTE ', NULL, '1002000001', 'ope71', 'C', 5000000, '1002', 0),
(72, '2022-08-10 13:36:00', 'CCP-F51', 'N', 'NUMAR', NULL, '1002000001', 'ope72', 'C', 120000, '1002', 0),
(73, '2022-08-10 00:00:00', 'ABRAHAM', 'néant', 'REGLEMENT DU CAISE', NULL, '1002000001', 'ope73', 'D', 5288000, '1002', 1),
(74, '2022-08-10 00:00:00', 'ALI', 'néant', 'AVANCE SUR 10 CARTON BRULEUR R 230000', NULL, '1002000001', 'ope74', 'D', 250000, '1002', 0),
(75, '2022-08-10 16:08:00', 'CCP-F38', 'C1', 'CINKANCE MARO GAZ', NULL, '1002000001', 'ope75', 'C', 340320, '1002', 0),
(76, '2022-08-10 00:00:00', 'ABRAHAM', 'néant', 'VENTE ', NULL, '1002000001', 'ope76', 'C', 795000, '1002', 0),
(77, '2022-08-10 00:00:00', 'KOSSI', 'néant', 'DEPOT BANQ', NULL, '1002000001', 'ope77', 'D', 1700000, '1002', 0),
(78, '2022-08-11 00:00:00', 'ABRAHAM', 'néant', 'vente', NULL, '1002000001', 'ope78', 'C', 240000, '1002', 0),
(79, '2022-08-11 00:00:00', 'ERIK', 'néant', 'verssement', NULL, '1002000001', 'ope79', 'C', 1000000, '1002', 0),
(80, '2022-08-11 00:00:00', 'ABRAHAM', 'néant', 'cosonmation deau', NULL, '1002000001', 'ope80', 'D', 5121, '1002', 0),
(81, '2022-08-11 00:00:00', 'ABRAHAM ', 'néant', 'c courant 107kw', NULL, '1002000001', 'ope81', 'D', 14946, '1002', 0),
(82, '2022-08-11 16:07:00', 'SCE55', 'ER01', 'ERIK', 'ESP01', '1002000001', 'ope82', 'C', 6000, '1002', 1),
(83, '2022-08-11 16:16:00', 'CCP-F56', 'K4', 'KOBNA ', 'ESP01', '1002000001', 'ope83', 'C', 192000, '1002', 1),
(84, '2022-08-11 16:30:00', 'CCP-F59', 'MAR', 'MARGO GAZ', 'ESP01', '1002000001', 'ope84', 'C', 181920, '1002', 0),
(85, '2022-08-11 16:30:00', 'CCP-F58', 'TY', 'TOYIMI ZANGUERA', 'ESP01', '1002000001', 'ope85', 'C', 29040, '1002', 0),
(86, '2022-08-11 00:00:00', 'TIMOTE', 'néant', 'PRET POUR LE PERMI DE CONDURE', '', '1002000001', 'ope86', 'D', 120000, '1002', 0),
(87, '2022-08-11 00:00:00', 'TIMOTE', 'néant', '1ER REMBOURSSEMENT DU PRET DE PERMIS DE CVONDURE', '', '1002000001', 'ope87', 'C', 20000, '1002', 0),
(88, '2022-08-11 20:44:00', 'CCP-F62', 'K4', 'KOBNA ', 'AVANCE', '1002000001', 'ope88', 'C', 192000, '1002', 1),
(89, '2022-08-11 20:45:00', 'CCP-F65', 'KO01', 'KOLANI ', 'AVANCE', '1002000001', 'ope89', 'C', 192000, '1002', 0),
(90, '2022-08-11 21:47:00', 'CCP-F54', 'M1', 'MILLA GAZ', 'AVANCE', '1002000001', 'ope90', 'C', 108000, '1002', 0),
(91, '2022-08-11 21:53:00', 'CCP-F70', 'M1', 'MILLA GAZ', 'AVANCE', '1002000001', 'ope91', 'C', 90000, '1002', 0),
(92, '2022-08-11 22:25:00', 'CCP-F71', 'K4', 'KOBNA ', 'ESP01', '1002000001', 'ope92', 'C', 192000, '1002', 1),
(93, '2022-08-12 08:50:00', 'CCP-F76', 'KO2', 'KOLANI TSEVIER', 'ESP01', '1002000001', 'ope93', 'C', 283680, '1002', 0),
(94, '2022-08-12 08:50:00', 'CCP-F69', 'R0', 'REHOBOPH', 'ESP01', '1002000001', 'ope94', 'C', 71000, '1002', 0),
(95, '2022-08-12 08:51:00', 'CCP-F68', 'SO', 'SOULEMANE GAZ', 'ESP01', '1002000001', 'ope95', 'C', 90000, '1002', 0),
(96, '2022-08-12 08:51:00', 'CCP-F66', 'SO', 'SOULEMANE GAZ', 'ESP01', '1002000001', 'ope96', 'C', 60000, '1002', 0),
(97, '2022-08-12 09:10:00', 'CCP-F73', 'K4', 'KOBNA ', 'ESP01', '1002000001', 'ope97', 'C', 192000, '1002', 1),
(98, '2022-08-12 00:00:00', 'ABRAHAM', 'néant', 'vente', '', '1002000001', 'ope98', 'C', 4550000, '1002', 0),
(99, '2022-08-12 00:00:00', 'KOSSI', 'néant', 'depot banque', '', '1002000001', 'ope99', 'D', 4000000, '1002', 0),
(100, '2022-08-12 00:00:00', 'MADAME ', 'néant', 'retrait wadjes', '', '1002000001', 'ope100', 'C', 1200000, '1002', 0),
(101, '2022-08-12 10:01:00', 'CCP-F80', 'FAT', 'FATAO GAZ', 'ESP01', '1002000001', 'ope101', 'C', 168000, '1002', 0),
(102, '2022-08-12 10:02:00', 'CCP-F78', 'DO1', 'DOUTI', 'ESP01', '1002000001', 'ope102', 'C', 150000, '1002', 0),
(103, '2022-08-12 10:03:00', 'CCP-F77', 'O', 'STATION OANDO', 'ESP01', '1002000001', 'ope103', 'C', 6400, '1002', 0),
(104, '2022-08-12 00:00:00', 'ABRAHAM', 'néant', 'vente', '', '1002000001', 'ope104', 'C', 1500000, '1002', 0),
(105, '2022-08-12 00:00:00', 'KOSSI ', 'néant', 'DEPOT BANQUE', '', '1002000001', 'ope105', 'D', 3050000, '1002', 0),
(106, '2022-08-12 00:00:00', 'ERIK', 'néant', 'verssement', '', '1002000001', 'ope106', 'C', 750000, '1002', 0),
(107, '2022-08-12 10:55:00', 'CCR-F81', 'T001', 'TAZO 3 GAZ', 'ESP01', '1002000001', 'ope107', 'C', 85000, '1002', 0),
(108, '2022-08-11 00:00:00', 'BIA', 'néant', 'AVANCE SUR PRET DE 44000000 POUR ACHAT DU CAMION', '', '1002000001', 'ope108', 'D', 9111000, '1002', 0),
(109, '2022-08-12 11:41:00', 'CCP-F84', 'KO2', 'KOLANI TSEVIER', 'ESP01', '1002000001', 'ope109', 'C', 115680, '1002', 0),
(110, '2022-08-12 14:20:00', 'CCP-F64', 'N', 'NUMAR', 'ESP01', '1002000001', 'ope110', 'C', 90000, '1002', 0),
(111, '2022-08-12 16:07:00', 'CCP-F63', 'ER01', 'ERIK', 'AVANCE', '1002000001', 'ope111', 'C', 480000, '1002', 1),
(112, '2022-08-12 22:02:00', 'CCP-F103', 'K4', 'KOBNA ', 'AVANCE', '1002000001', 'ope112', 'C', 168000, '1002', 1),
(113, '2022-08-13 10:50:00', 'CCP-F107', 'FAT', 'FATAO GAZ', 'ESP01', '1002000001', 'ope113', 'C', 216000, '1002', 0),
(114, '2022-08-13 11:00:00', 'CCP-F110', 'M1', 'MILLA GAZ', 'AVANCE', '1002000001', 'ope114', 'C', 102000, '1002', 0),
(115, '2022-08-13 11:00:00', 'CCP-F109', 'L1', 'LAMBO GAZ', 'ESP01', '1002000001', 'ope115', 'C', 118800, '1002', 0),
(116, '2022-08-13 11:01:00', 'CCP-F108', 'R0', 'REHOBOPH', 'ESP01', '1002000001', 'ope116', 'C', 68000, '1002', 0),
(117, '2022-08-13 14:14:00', 'CCP-F113', 'K4', 'KOBNA ', 'AVANCE', '1002000001', 'ope117', 'C', 190233, '1002', 1),
(118, '2022-08-13 14:15:00', 'SCE114', 'K4', 'KOBNA ', 'AVANCE', '1002000001', 'ope118', 'C', 1767, '1002', 1),
(119, '2022-08-13 14:28:00', 'CCP-F112', 'F001', 'FIL OPARK GAZ', 'ESP01', '1002000001', 'ope119', 'C', 288000, '1002', 0),
(120, '2022-08-13 00:00:00', 'ABRAHAM', 'néant', 'AVANCE TOTAL DE BRULEUR', '', '1002000001', 'ope120', 'D', 230000, '1002', 0),
(121, '2022-08-13 15:57:00', 'CCP-F115', 'PR02', 'PROMO GAZ FECANDINE', 'ESP01', '1002000001', 'ope121', 'C', 343600, '1002', 0),
(122, '2022-08-13 16:33:00', 'SCE116', 'ER01', 'ERIK', 'ESP01', '1002000001', 'ope122', 'C', 800000, '1002', 0),
(123, '2022-08-13 21:44:00', 'SCE121', 'EXO', 'EXODUS GAZ', 'ESP01', '1002000001', 'ope123', 'C', 17500, '1002', 0),
(124, '2022-08-13 21:45:00', 'CCP-F122', 'C001', 'CENTRALE GAZ', 'ESP01', '1002000001', 'ope124', 'C', 128856, '1002', 0),
(125, '2022-08-14 09:42:00', 'CCP-F125', 'E002', 'ERIK DJAGBLE', 'ESP01', '1002000001', 'ope125', 'C', 826820, '1002', 0),
(126, '2022-08-14 09:43:00', 'CCP-F124', 'KT', 'KLARA GAZ', 'ESP01', '1002000001', 'ope126', 'C', 322140, '1002', 0),
(127, '2022-08-14 09:43:00', 'CCP-F120', 'DA', 'DAHOE GAZ', 'ESP01', '1002000001', 'ope127', 'C', 198410, '1002', 0),
(128, '2022-08-14 09:44:00', 'CCP-F119', 'I001', 'IPG YAOVI GAZ', 'ESP01', '1002000001', 'ope128', 'C', 107380, '1002', 0),
(129, '2022-08-14 09:44:00', 'CCP-F118', 'ZA1', 'ZAKARI GAZ', 'ESP01', '1002000001', 'ope129', 'C', 75166, '1002', 0),
(130, '2022-08-14 09:45:00', 'CCP-F117', 'A', 'ALEX GAZ', 'ESP01', '1002000001', 'ope130', 'C', 133030, '1002', 0),
(131, '2022-08-14 21:50:00', 'SCE133', 'L1', 'LAMBO GAZ', 'ESP01', '1002000001', 'ope131', 'C', 400000, '1002', 0),
(132, '2022-08-15 09:46:00', 'CCP-F123', 'K4', 'KOBNA ', 'ESP01', '1002000001', 'ope132', 'C', 268446, '1002', 1),
(133, '2022-08-15 09:53:00', 'SCE140', 'K4', 'KOBNA ', 'ESP01', '1002000001', 'ope133', 'C', 564000, '1002', 1),
(134, '2022-08-15 10:27:00', 'CCP-F134', 'DU01', 'DUCO GAZ', 'ESP01', '1002000001', 'ope134', 'C', 392046, '1002', 0),
(135, '2022-08-15 10:50:00', 'CCP-F156', 'L1', 'LAMBO GAZ', 'ESP01', '1002000001', 'ope135', 'C', 288010, '1002', 0),
(136, '2022-08-15 10:54:00', 'CCP-F154', 'T001', 'TAZO 3 GAZ', 'ESP01', '1002000001', 'ope136', 'C', 175978, '1002', 0),
(137, '2022-08-15 10:55:00', 'CCP-F151', 'EN01', 'ENTREPRISE GAZ', 'ESP01', '1002000001', 'ope137', 'C', 85900, '1002', 0),
(138, '2022-08-15 10:55:00', 'CCP-F149', 'EN01', 'ENTREPRISE GAZ', 'ESP01', '1002000001', 'ope138', 'C', 85902, '1002', 0),
(139, '2022-08-15 11:21:00', 'CCP-F158', 'A', 'ALEX GAZ', 'ESP01', '1002000001', 'ope139', 'C', 138160, '1002', 0),
(140, '2022-08-15 00:00:00', 'SIKPA ', 'néant', 'SALAIRE JUIELLET 2022', '', '1002000001', 'ope140', 'D', 20000, '1002', 0),
(141, '2022-08-15 00:00:00', 'ABRAHAM', 'néant', 'VENTE DE DIMANCHE 14/08', '', '1002000001', 'ope141', 'C', 1800000, '1002', 0),
(142, '2022-08-15 13:01:00', 'CCP-F160', 'NE', 'PLANTATION /NEDJRO GAZ', 'ESP01', '1002000001', 'ope142', 'C', 32214, '1002', 0),
(143, '2022-08-15 13:02:00', 'CCP-F162', 'AD', 'ADOUGBA GAZ', 'ESP01', '1002000001', 'ope143', 'C', 128850, '1002', 0),
(144, '2022-08-15 13:06:00', 'CCP-F161', 'Y', 'YAKOUBA GAZ', 'ESP01', '1002000001', 'ope144', 'C', 128856, '1002', 0),
(145, '2022-08-15 13:17:00', 'CCP-F169', 'KL', 'KOMLA TOTSI RAIL', 'ESP01', '1002000001', 'ope145', 'C', 85900, '1002', 0),
(146, '2022-08-15 13:17:00', 'CCP-F168', 'KL', 'KOMLA TOTSI RAIL', 'ESP01', '1002000001', 'ope146', 'C', 21476, '1002', 0),
(147, '2022-08-15 13:19:00', 'CCP-F152', 'J', 'JAQUE GAZ', 'ESP01', '1002000001', 'ope147', 'C', 137200, '1002', 0),
(148, '2022-08-15 13:21:00', 'CCP-F167', 'MAR', 'MARGO GAZ', 'ESP01', '1002000001', 'ope148', 'C', 293622, '1002', 0),
(149, '2022-08-15 13:26:00', 'CCP-F129', 'CO1', 'CONFIANCE GAZ', 'ESP01', '1002000001', 'ope149', 'C', 214752, '1002', 0),
(150, '2022-08-15 13:28:00', 'CCP-F128', 'MO', 'MOMO GAZ', 'ESP01', '1002000001', 'ope150', 'C', 662880, '1002', 0),
(151, '2022-08-15 13:28:00', 'CCP-F166', 'TI02', 'TIMBROWN GAZ', 'ESP01', '1002000001', 'ope151', 'C', 161070, '1002', 0),
(152, '2022-08-15 13:37:00', 'CCP-F150', 'AD', 'ADOUGBA GAZ', 'ESP01', '1002000001', 'ope152', 'C', 128850, '1002', 0),
(153, '2022-08-15 13:38:00', 'CCP-F153', 'BO2', 'BOUCHER GAZ', 'ESP01', '1002000001', 'ope153', 'C', 139590, '1002', 0),
(154, '2022-08-15 13:42:00', 'CCP-F170', 'M1', 'MILLA GAZ', 'AVANCE', '1002000001', 'ope154', 'C', 214760, '1002', 0),
(155, '2022-08-15 00:00:00', 'DESINATEUR', 'néant', 'AVANCE SUR LES TSCHET ZENER', '', '1002000001', 'ope155', 'C', 200000, '1002', 0),
(156, '2022-08-15 14:27:00', 'CCP-F172', 'MN01', 'MON NOM EST BENI', 'ESP01', '1002000001', 'ope156', 'C', 161070, '1002', 0),
(157, '2022-08-15 14:30:00', 'CCP-F164', 'F001', 'FIL OPARK GAZ', 'ESP01', '1002000001', 'ope157', 'C', 311400, '1002', 0),
(158, '2022-08-15 14:40:00', 'CCP-F165', 'ME01', 'MEDE GAZ', 'ESP01', '1002000001', 'ope158', 'C', 92340, '1002', 0),
(159, '2022-08-15 14:48:00', 'CCP-F145', 'KZ02', 'KOZATOU GAZ', 'ESP01', '1002000001', 'ope159', 'C', 214757, '1002', 0),
(160, '2022-08-15 15:09:00', 'CCP-F177', 'R0', 'REHOBOPH', 'ESP01', '1002000001', 'ope160', 'C', 106000, '1002', 0),
(161, '2022-08-15 15:09:00', 'CCP-F176', 'SO', 'SOULEMANE GAZ', 'ESP01', '1002000001', 'ope161', 'C', 139594, '1002', 0),
(162, '2022-08-15 16:07:00', 'CCP-F178', 'GD01', 'GLOIRE DE DIEU', 'ESP01', '1002000001', 'ope162', 'C', 107377, '1002', 0),
(163, '2022-08-15 16:08:00', 'CCP-F171', 'KT', 'KLARA GAZ', 'ESP01', '1002000001', 'ope163', 'C', 354354, '1002', 0),
(164, '2022-08-15 16:09:00', 'CCP-F173', 'FAT', 'FATAO GAZ', 'ESP01', '1002000001', 'ope164', 'C', 300660, '1002', 0),
(165, '2022-08-15 16:09:00', 'CCP-F148', 'TE', 'TECO/DRAMANE GAZ', 'ESP01', '1002000001', 'ope165', 'C', 214760, '1002', 0),
(166, '2022-08-15 16:10:00', 'CCP-F146', 'BE02', 'BEATRUC GAZ', 'ESP01', '1002000001', 'ope166', 'C', 79340, '1002', 0),
(167, '2022-08-15 00:00:00', 'ABRAHAM', 'néant', 'VENTE DE LUNDI', '', '1002000001', 'ope167', 'C', 6300000, '1002', 0),
(168, '2022-08-15 16:33:00', 'CCP-F179', 'N', 'NUMAR', 'ESP01', '1002000001', 'ope168', 'C', 107380, '1002', 0),
(169, '2022-08-15 16:33:00', 'CCP-F175', 'ER01', 'ERIK', 'ESP01', '1002000001', 'ope169', 'C', 511690, '1002', 0),
(170, '2022-08-15 00:00:00', 'ABRAHAM', 'néant', 'VENTE DU 13/08/2022', '', '1002000001', 'ope170', 'C', 2400000, '1002', 0),
(171, '2022-08-15 00:00:00', 'ABRAHAM', 'néant', 'VENT J', '', '1002000001', 'ope171', 'C', 200000, '1002', 0),
(172, '2022-08-15 16:49:00', '181', 'ER01', 'ERIK', 'ESP01', '1002000001', 'ope172', 'C', 25000, '1002', 0),
(173, '2022-08-15 16:49:00', 'CCP-F180', 'ER01', 'ERIK', 'ESP01', '1002000001', 'ope173', 'C', 156354, '1002', 0),
(174, '2022-08-15 20:06:00', 'SCE183', 'C1', 'CINKANCE MARO GAZ', 'ESP01', '1002000001', 'ope174', 'C', 475000, '1002', 0),
(175, '2022-08-15 20:10:00', 'CCP-F144', 'FD02', 'FIDELITAS GAZ', 'ESP01', '1002000001', 'ope175', 'C', 209980, '1002', 0),
(176, '2022-08-16 00:00:00', 'ABRAHAM ', 'néant', 'VENTE DU 15/08/2022', '', '1002000001', 'ope176', 'C', 1200000, '1002', 0),
(177, '2022-08-16 08:46:00', 'CCP-F187', 'BC', 'BUSNESS CENTER', 'ESP01', '1002000001', 'ope177', 'C', 486840, '1002', 0),
(178, '2022-08-16 08:49:00', 'CCP-F186', 'EV1', 'SAVENA GAZ', 'ESP01', '1002000001', 'ope178', 'C', 169200, '1002', 0),
(179, '2022-08-16 08:50:00', 'CCP-F184', 'GE01', 'GER GAZ', 'ESP01', '1002000001', 'ope179', 'C', 179788, '1002', 0),
(180, '2022-08-16 09:14:00', 'CCP-F193', 'FI04', 'GAKPO GAZ', 'ESP01', '1002000001', 'ope180', 'C', 28800, '1002', 0),
(181, '2022-08-16 09:14:00', 'CCP-F193', 'FI04', 'GAKPO GAZ', 'ESP01', '1002000001', 'ope181', 'C', 6000, '1002', 0),
(182, '2022-08-16 10:24:00', 'CCP-F198', 'ME ', 'METROPOLICE GAZ', 'ESP01', '1002000001', 'ope182', 'C', 148232, '1002', 0),
(183, '2022-08-16 10:25:00', 'CCP-F197', 'SO01', 'SOMITE', 'ESP01', '1002000001', 'ope183', 'C', 84704, '1002', 0),
(184, '2022-08-16 10:25:00', 'CCP-F196', 'ZA1', 'ZAKARI GAZ', 'ESP01', '1002000001', 'ope184', 'C', 84600, '1002', 0),
(185, '2022-08-16 10:40:00', 'CCP-F191', 'VI05', 'VIGUEUR ', 'ESP01', '1002000001', 'ope185', 'C', 179788, '1002', 0),
(186, '2022-08-16 10:42:00', 'CCP-F190', 'EN06', 'ENOULI GAZ', 'ESP01', '1002000001', 'ope186', 'C', 74116, '1002', 0),
(187, '2022-08-16 10:42:00', 'CCP-F189', 'LA01', 'LARE', 'ESP01', '1002000001', 'ope187', 'C', 84600, '1002', 0),
(188, '2022-08-16 11:38:00', 'CCP-F201', 'K01', 'KOWONI GAZ', 'ESP01', '1002000001', 'ope188', 'C', 252500, '1002', 0),
(189, '2022-08-16 11:43:00', 'CCP-F201', 'K01', 'KOWONI GAZ', 'ESP01', '1002000001', 'ope189', 'C', 40540, '1002', 0),
(190, '2022-08-16 12:29:00', 'CCP-F202', 'K4', 'KOBNA ', 'AVANCE', '1002000001', 'ope190', 'C', 105880, '1002', 0),
(191, '2022-08-22 08:41:00', 'CCP-F200', 'A ', 'AMETODE GAZ', 'ESP01', '1002000001', 'ope191', 'C', 201120, '1002', 0),
(192, '2022-09-01 10:51:00', 'CCP-F195', 'DO1', 'DOUTI', 'ESP01', '1002000001', 'ope192', 'C', 2000, '1002', 0),
(193, '2022-09-01 10:54:00', 'CCP-F194', 'BL07', 'BLESSED GAZ', 'ESP01', '1002000001', 'ope193', 'C', 3000, '1002', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tb_importcsv`
--

CREATE TABLE `tb_importcsv` (
  `num_import` int(11) NOT NULL,
  `nom_client` varchar(50) DEFAULT NULL,
  `date_bl` varchar(15) DEFAULT NULL,
  `heure_bl` varchar(15) DEFAULT NULL,
  `num_bl` varchar(20) DEFAULT NULL,
  `code_art` varchar(50) DEFAULT NULL,
  `designation_art` varchar(100) DEFAULT NULL,
  `qte_art` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tb_livraison_camion`
--

CREATE TABLE `tb_livraison_camion` (
  `id_cc` int(11) NOT NULL,
  `date_charg` date DEFAULT NULL,
  `lettrage` varchar(12) DEFAULT NULL,
  `num_charg` int(11) DEFAULT NULL,
  `code_livreur` varchar(12) DEFAULT NULL,
  `nom_livreur` varchar(100) DEFAULT NULL,
  `code_clt` varchar(12) DEFAULT NULL,
  `nom_clt` varchar(100) DEFAULT NULL,
  `camion` varchar(12) DEFAULT NULL,
  `pièce` varchar(30) DEFAULT NULL,
  `B3A` varchar(3) DEFAULT NULL,
  `B3` varchar(3) DEFAULT NULL,
  `B6` varchar(3) DEFAULT NULL,
  `B6R` varchar(3) DEFAULT NULL,
  `B12` varchar(3) DEFAULT NULL,
  `B50` varchar(3) DEFAULT NULL,
  `B25` varchar(3) DEFAULT NULL,
  `B6E` varchar(3) DEFAULT NULL,
  `B12E` varchar(3) DEFAULT NULL,
  `RB3A` varchar(3) DEFAULT NULL,
  `RB3` varchar(3) DEFAULT NULL,
  `RB6` varchar(3) DEFAULT NULL,
  `RB6R` varchar(3) DEFAULT NULL,
  `RB12` varchar(3) DEFAULT NULL,
  `RB50` varchar(3) DEFAULT NULL,
  `RB25` varchar(3) DEFAULT NULL,
  `RB6E` varchar(3) DEFAULT NULL,
  `RB12E` varchar(3) DEFAULT NULL,
  `type_ch` varchar(2) DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `kilo_t` double DEFAULT NULL,
  `zone_liv` varchar(50) DEFAULT NULL,
  `prix_zone` double DEFAULT NULL,
  `prix_liv` double DEFAULT NULL,
  `usager` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_livraison_camion`
--

INSERT INTO `tb_livraison_camion` (`id_cc`, `date_charg`, `lettrage`, `num_charg`, `code_livreur`, `nom_livreur`, `code_clt`, `nom_clt`, `camion`, `pièce`, `B3A`, `B3`, `B6`, `B6R`, `B12`, `B50`, `B25`, `B6E`, `B12E`, `RB3A`, `RB3`, `RB6`, `RB6R`, `RB12`, `RB50`, `RB25`, `RB6E`, `RB12E`, `type_ch`, `montant`, `kilo_t`, `zone_liv`, `prix_zone`, `prix_liv`, `usager`) VALUES
(1, '2022-08-21', '1', 1, 'V02', 'VIEU 2', 'A1', 'ABALO GAZ', 'TG 9630 BH', '123', '', '', '', '', '14', '23', '', '', '', '', '', '', '', '14', '23', '', '', '', 'Ch', 636000, 1325, 'ZONE 13 ', 13, 17225, '');

-- --------------------------------------------------------

--
-- Structure de la table `tb_livreur`
--

CREATE TABLE `tb_livreur` (
  `id_liv` int(11) NOT NULL,
  `code_liv` varchar(4) DEFAULT NULL,
  `nom_liv` varchar(100) DEFAULT NULL,
  `tel_liv` varchar(50) DEFAULT NULL,
  `adresse_liv` varchar(100) DEFAULT NULL,
  `mail_liv` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_livreur`
--

INSERT INTO `tb_livreur` (`id_liv`, `code_liv`, `nom_liv`, `tel_liv`, `adresse_liv`, `mail_liv`) VALUES
(1, '', 'SIMNARA', '91184265', 'AGOE', ''),
(2, '', 'GODJA KOSSI', '91722040', 'AGOE', ''),
(3, '', 'FOUSSENI', '92672590', '', ''),
(4, '', 'VIEU1', '92626786', 'AGOE TOGBLE', ''),
(5, 'V02', 'VIEU 2', '70315747', 'AGOE', '');

-- --------------------------------------------------------

--
-- Structure de la table `tb_magasin`
--

CREATE TABLE `tb_magasin` (
  `id_mag` int(11) NOT NULL,
  `code_mag` varchar(15) NOT NULL,
  `designation_mag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_magasin`
--

INSERT INTO `tb_magasin` (`id_mag`, `code_mag`, `designation_mag`) VALUES
(1, 'PFGB', 'PRODUIT FINI GAZ BUTANE'),
(2, 'PFBC', 'CONSIGNATION'),
(3, 'BRU', 'BRULEUR'),
(4, 'FO', 'foyers'),
(5, 'DET1', 'DETENDEURS');

-- --------------------------------------------------------

--
-- Structure de la table `tb_mission_ordinaire`
--

CREATE TABLE `tb_mission_ordinaire` (
  `id_mis_ord` int(11) NOT NULL,
  `num_mission_ord` varchar(15) NOT NULL,
  `num_matricule_chauf` int(11) NOT NULL,
  `num_immat_veh` varchar(30) NOT NULL,
  `type_veh` varchar(30) NOT NULL,
  `ancien_compteur` int(30) NOT NULL,
  `nouveau_compteur` int(30) NOT NULL,
  `date_mission` date NOT NULL,
  `motif_mission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tb_mission_speciale`
--

CREATE TABLE `tb_mission_speciale` (
  `id_mis_spec` int(11) NOT NULL,
  `num_matricule_chauf` int(11) NOT NULL,
  `num_immat_veh` varchar(30) NOT NULL,
  `num_ordre_mission` varchar(15) NOT NULL,
  `date_depart` date NOT NULL,
  `heure_depart` time NOT NULL,
  `Type_mission` int(1) NOT NULL,
  `num_chargement` varchar(20) NOT NULL,
  `retour` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_mission_speciale`
--

INSERT INTO `tb_mission_speciale` (`id_mis_spec`, `num_matricule_chauf`, `num_immat_veh`, `num_ordre_mission`, `date_depart`, `heure_depart`, `Type_mission`, `num_chargement`, `retour`) VALUES
(1, 1, 'TG 9562 AX', 'M_ORD/1', '2022-08-06', '11:50:00', 1, 'CH002', 0),
(2, 1, 'TG 2318 DJ', 'M_ORD/2', '2022-08-11', '16:34:00', 1, 'CH003', 0),
(3, 1, 'TG 9630 BH', 'M_ORD/3', '2022-08-12', '06:28:00', 1, 'CH004', 0),
(4, 1, 'TG 2318 DJ', 'M_ORD/4', '2022-08-15', '19:01:00', 1, 'CH005', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_mouvement_stock`
--

CREATE TABLE `tb_mouvement_stock` (
  `id_mouv` int(11) NOT NULL,
  `date_mouv` date DEFAULT NULL,
  `code_art` varchar(20) DEFAULT NULL,
  `code_mag` varchar(20) DEFAULT NULL,
  `qte_entree` int(11) DEFAULT NULL,
  `qte_sortie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_mouvement_stock`
--

INSERT INTO `tb_mouvement_stock` (`id_mouv`, `date_mouv`, `code_art`, `code_mag`, `qte_entree`, `qte_sortie`) VALUES
(1, '2022-08-04', '011C25', 'PFGB', 84, 34),
(2, '2022-08-04', '011C12', 'PFGB', 2300, 291),
(3, '2022-08-04', '011C50', 'PFGB', 510, 0),
(4, '2022-08-04', '011C06E', 'PFGB', 80, 0),
(5, '2022-08-04', '02103K.', 'PFBC', 33, 0),
(6, '2022-08-04', '02106K', 'PFBC', 320, 0),
(7, '2022-08-04', '011C06.', 'PFGB', 120, 0),
(8, '2022-08-05', '011C12', 'PFGB', 1009, 623),
(9, '2022-08-05', '011C06', 'PFGB', 860, 54),
(10, '2022-08-05', '011C50', 'PFGB', 34, 11),
(11, '2022-08-05', '011C06.', 'PFGB', 260, 0),
(12, '2022-08-05', '011C25', 'PFGB', 14, 12),
(13, '2022-08-05', '011C03', 'PFGB', 46, 3),
(14, '2022-08-06', '02106K.', 'PFBC', 0, 80),
(15, '2022-08-06', '02112K', 'PFBC', 0, 10),
(16, '2022-08-06', '02103K', 'PFBC', 0, 10),
(17, '2022-08-06', '011C12', 'PFGB', 0, 94),
(18, '2022-08-06', '011C06.', 'PFGB', 0, 37),
(19, '2022-08-06', '011C50', 'PFGB', 0, 2),
(20, '2022-08-06', '011C06E', 'PFGB', 0, 2),
(21, '2022-08-06', '011C06', 'PFGB', 0, 70),
(22, '2020-01-01', '02112K', 'PFBC', 0, 180),
(23, '2020-01-01', '02106K.', 'PFBC', 0, 21),
(24, '2020-01-01', '02125K', 'PFBC', 0, 2),
(25, '2020-01-01', '0250K', 'PFBC', 0, 2),
(26, '2022-08-01', '011C12', 'PFGB', 0, 160),
(27, '2022-08-01', '011C50', 'PFGB', 0, 10),
(28, '2022-08-01', '011C25', 'PFGB', 0, 6),
(29, '2022-08-01', '011C06', 'PFGB', 0, 72),
(30, '2022-08-02', '011C12', 'PFGB', 0, 68),
(31, '2022-08-02', '011C50', 'PFGB', 0, 2),
(32, '2022-08-03', '011C12', 'PFGB', 0, 214),
(33, '2022-08-03', '011C06', 'PFGB', 0, 36),
(34, '2022-08-03', '011C25', 'PFGB', 0, 10),
(35, '2022-08-03', '011C50', 'PFGB', 0, 6),
(36, '2022-08-02', '011C06', 'PFGB', 0, 20),
(37, '2022-08-07', '011C12', 'PFGB', 0, 18),
(38, '2022-08-07', '011C03', 'PFGB', 0, 10),
(39, '2022-08-07', '011C50', 'PFGB', 0, 1),
(40, '2022-08-07', '011C25', 'PFGB', 0, 1),
(41, '2022-08-08', '011C12', 'PFGB', 0, 249),
(42, '2022-08-08', '011C06.', 'PFGB', 0, 24),
(43, '2022-08-08', '011C06', 'PFGB', 0, 31),
(44, '2022-08-08', '011C50', 'PFGB', 0, 18),
(45, '2022-08-08', '011C25', 'PFGB', 0, 2),
(46, '2022-08-09', '011C12', 'PFGB', 1561, 364),
(47, '2022-08-09', '02106K', 'PFBC', 0, 18),
(48, '2022-08-09', '011C50', 'PFGB', 126, 28),
(49, '2022-08-09', '011C06', 'PFGB', 323, 164),
(50, '2022-08-09', '011C06.', 'PFGB', 0, 44),
(51, '2022-08-09', '011C03', 'PFGB', 16, 40),
(52, '2022-08-09', '011C25', 'PFGB', 21, 2),
(53, '2022-08-10', '011C12', 'PFGB', 985, 356),
(54, '2022-08-10', '011C50', 'PFGB', 52, 20),
(55, '2022-08-10', '011C06', 'PFGB', 24, 27),
(56, '2022-08-10', '011C25', 'PFGB', 14, 0),
(57, '2022-08-10', '011C06.', 'PFGB', 126, 10),
(58, '2022-08-11', '011C12', 'PFGB', 0, 560),
(59, '2022-08-11', '011C50', 'PFGB', 0, 12),
(60, '2022-08-11', '011C06', 'PFGB', 0, 40),
(61, '2022-08-11', '011C06.', 'PFGB', 0, 2),
(62, '2022-08-12', '011C12', 'PFGB', 706, 280),
(63, '2022-08-12', '011C50', 'PFGB', 42, 23),
(64, '2022-08-12', '011C12E', 'PFGB', 0, 2),
(65, '2022-08-12', '011C06', 'PFGB', 178, 63),
(66, '2022-08-12', '011C06.', 'PFGB', 0, 7),
(67, '2022-08-12', '011C25', 'PFGB', 14, 0),
(68, '2022-08-12', '011C03', 'PFGB', 0, 6),
(69, '2022-08-12', '0250K', 'PFBC', 0, 1),
(70, '2020-01-01', '011C12', 'PFGB', 0, 180),
(71, '2020-01-01', '011C06.', 'PFGB', 0, 21),
(72, '2020-01-01', '011C25', 'PFGB', 0, 2),
(73, '2020-01-01', '011C50', 'PFGB', 0, 2),
(74, '2022-08-13', '011C12', 'PFGB', 1143, 365),
(75, '2022-08-13', '011C50', 'PFGB', 102, 31),
(76, '2022-08-13', '011C06', 'PFGB', 180, 73),
(77, '2022-08-13', '011C06.', 'PFGB', 60, 18),
(78, '2022-08-13', '011C03', 'PFGB', 0, 1),
(79, '2022-08-13', '011C03.', 'PFGB', 0, 2),
(80, '2022-08-13', '011C25', 'PFGB', 14, 2),
(81, '2022-08-14', '011C12', 'PFGB', 0, 40),
(82, '2022-08-14', '011C50', 'PFGB', 0, 3),
(83, '2022-08-14', '011C06', 'PFGB', 0, 4),
(84, '2022-08-15', '011C06', 'PFGB', 576, 148),
(85, '2022-08-15', '011C06.', 'PFGB', 0, 59),
(86, '2022-08-15', '011C12', 'PFGB', 752, 647),
(87, '2022-08-15', '011C50', 'PFGB', 0, 45),
(88, '2022-08-15', '011C06E', 'PFGB', 0, 30),
(89, '2022-08-11', '011C25', 'PFGB', 0, 2),
(90, '2022-08-02', 'BRU  A', 'BRU', 0, 30),
(91, '2022-08-02', 'BR01', 'BRU', 0, 100),
(92, '2022-08-15', '011C25', 'PFGB', 0, 5),
(93, '2022-08-15', '011C03', 'PFGB', 0, 6),
(94, '2022-08-15', 'BR01', 'BRU', 0, 200),
(95, '2022-08-15', 'BRU  A', 'BRU', 0, 35),
(96, '2022-08-15', 'BRU 3', 'BRU', 0, 20),
(97, '2022-08-16', '011C50', 'PFGB', 0, 25),
(98, '2022-08-16', '011C12', 'PFGB', 0, 160),
(99, '2022-08-16', '011C25', 'PFGB', 0, 2),
(100, '2022-08-16', '011C06', 'PFGB', 0, 40),
(101, '2022-08-16', '011C12E', 'PFGB', 0, 4),
(102, '2022-08-21', '011C12', 'PFGB', 0, 14),
(103, '2022-08-21', '011C50', 'PFGB', 0, 23),
(104, '2022-08-25', '02103K.', 'PFBC', 100, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_parametre`
--

CREATE TABLE `tb_parametre` (
  `id_param` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `footer1` text,
  `footer2` text,
  `footer3` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_parametre`
--

INSERT INTO `tb_parametre` (`id_param`, `nom`, `description`, `footer1`, `footer2`, `footer3`) VALUES
(1, 'ETS. PETER GAZ', 'COMMERCE GENERAL', 'Commerce général distribution de gaz butane, cuisinières et accessoires, etc. Sise à Aného quartier amadote\n', 'maison Atayi & Lomé 04BP819, Lomé-Togo. Tél. +228 22 36 84 83 / 90 17 55 42 / +228 91 97 36 39 / +229 67 81 23 44\r\n', 'E-mail : melsifagroup2012@gmail.com / melwonam@yahoo.fr\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `tb_paramnumfacture`
--

CREATE TABLE `tb_paramnumfacture` (
  `idParamNumFact` int(11) NOT NULL,
  `code_mag` varchar(10) DEFAULT NULL,
  `designation_mag` varchar(100) DEFAULT NULL,
  `prefixe_fact` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_paramnumfacture`
--

INSERT INTO `tb_paramnumfacture` (`idParamNumFact`, `code_mag`, `designation_mag`, `prefixe_fact`) VALUES
(1, 'PFGB', 'PRODUIT FINI GAZ BUTANE', 'CCP-F'),
(2, 'PFBC', 'CONSIGNATION', 'CCR-F');

-- --------------------------------------------------------

--
-- Structure de la table `tb_payement_caisse`
--

CREATE TABLE `tb_payement_caisse` (
  `idPaye` int(11) NOT NULL,
  `date_paye` datetime DEFAULT NULL,
  `num_fact` varchar(20) DEFAULT NULL,
  `code_clt` varchar(20) DEFAULT NULL,
  `nom_clt` varchar(100) DEFAULT NULL,
  `code_ope` varchar(20) DEFAULT NULL,
  `nom_caisse` varchar(100) DEFAULT NULL,
  `compte_caisse` varchar(12) DEFAULT NULL,
  `montant_paye` double DEFAULT NULL,
  `statut_canc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_payement_caisse`
--

INSERT INTO `tb_payement_caisse` (`idPaye`, `date_paye`, `num_fact`, `code_clt`, `nom_clt`, `code_ope`, `nom_caisse`, `compte_caisse`, `montant_paye`, `statut_canc`) VALUES
(1, '2022-08-04 19:27:00', 'CCP-F2', 'ER01', 'ERIK', 'ope1', '', '1001000001', 420000, 1),
(2, '2022-08-04 22:31:00', 'CCP-F4', 'M1', 'MILLA GAZ', 'ope6', '', '1002000001', 234000, 0),
(3, '2022-08-05 10:46:00', 'CCP-F6', 'KO01', 'KOLANI ', 'ope7', '', '1002000001', 138000, 0),
(4, '2022-08-05 11:06:00', 'CCP-F7', 'KO01', 'KOLANI ', 'ope8', '', '1002000001', 120000, 0),
(5, '2022-08-05 11:14:00', 'CCP-F8', 'DO1', 'DOUTI', 'ope9', '', '1002000001', 174000, 0),
(6, '2022-08-05 14:14:00', 'CCP-F5', 'O', 'STATION OANDO', 'ope10', '', '1002000001', 8200, 0),
(7, '2022-08-05 14:21:00', 'CCP-F10', 'CO1', 'CONFIANCE GAZ', 'ope11', '', '1002000001', 120000, 0),
(8, '2022-08-05 17:37:00', 'CCP-F11', 'M1', 'MILLA GAZ', 'ope12', '', '1002000001', 174000, 0),
(9, '2022-08-06 10:33:00', 'CCP-F14', 'P1', 'PIKABE GAZ', 'ope14', '', '1002000001', 5760, 0),
(10, '2022-08-06 10:36:00', 'CCP-F14', 'P1', 'PIKABE GAZ', 'ope15', '', '1002000001', 149760, 0),
(11, '2022-08-06 17:15:00', 'CCR-F17', 'ER01', 'ERIK', 'ope31', '', '1002000001', 1212480, 1),
(12, '2022-08-06 19:02:00', 'CCP-F27', 'FE1', 'FELICITE GAZ', 'ope32', '', '1002000001', 177600, 1),
(13, '2022-08-06 19:45:00', 'CCP-F15', 'DO1', 'DOUTI', 'ope33', '', '1002000001', 102000, 0),
(14, '2022-08-07 16:00:00', 'CCR-F13', 'KO', 'KOFFI DAPAONG GAZ', 'ope37', '', '1002000001', 1834800, 0),
(15, '2022-08-08 21:54:00', 'CCP-F35', 'A1', 'ABALO GAZ', 'ope39', '', '1002000001', 192000, 0),
(16, '2022-08-08 21:55:00', 'CCP-F34', 'O', 'STATION OANDO', 'ope40', '', '1002000001', 8200, 0),
(17, '2022-08-08 21:56:00', 'CCP-F30', 'L1', 'LAMBO GAZ', 'ope41', '', '1002000001', 200000, 1),
(18, '2022-08-08 21:57:00', 'CCP-F29', 'M1', 'MILLA GAZ', 'ope42', '', '1002000001', 144000, 0),
(19, '2022-08-09 12:38:00', 'CCR-F37', 'DAP2', 'DAPAONG 2 BIGBA', 'ope44', '', '1002000001', 321840, 0),
(20, '2022-08-09 12:42:00', 'CCP-F36', 'DAP2', 'DAPAONG 2 BIGBA', 'ope45', '', '1002000001', 60000, 0),
(21, '2022-08-09 14:54:00', 'CCP-F41', 'KO01', 'KOLANI ', 'ope46', '', '1002000001', 198000, 0),
(22, '2022-08-09 14:55:00', 'CCP-F40', 'M1', 'MILLA GAZ', 'ope47', '', '1002000001', 150000, 0),
(23, '2022-08-09 15:00:00', 'CCP-F42', 'L1', 'LAMBO GAZ', 'ope48', '', '1002000001', 200000, 1),
(24, '2022-08-09 15:32:00', 'CCP-F39', 'I1', 'ISSAKA KARA 1', 'ope51', '', '1002000001', 315840, 0),
(25, '2022-08-09 15:34:00', 'CCP-F28', 'I1', 'ISSAKA KARA 1', 'ope52', '', '1002000001', 158400, 0),
(26, '2022-08-09 15:46:00', 'CCP-F27', 'FE1', 'FELICITE GAZ', 'ope53', '', '1002000001', 177600, 1),
(27, '2022-08-09 15:51:00', 'CCP-F43', 'AD', 'ADOUGBA GAZ', 'ope53', '', '1002000001', 72000, 1),
(28, '2022-08-09 18:58:00', 'CCP-F45', 'KO01', 'KOLANI ', 'ope53', '', '1002000001', 125520, 0),
(29, '2022-08-10 08:30:00', 'CCP-F49', 'R0', 'REHOBOPH', 'ope63', '', '1002000001', 70000, 0),
(30, '2022-08-10 08:48:00', 'CCP-F52', 'FAT', 'FATAO GAZ', 'ope64', '', '1002000001', 228000, 0),
(31, '2022-08-10 13:36:00', 'CCP-F51', 'N', 'NUMAR', 'ope72', '', '1002000001', 120000, 0),
(32, '2022-08-10 16:08:00', 'CCP-F38', 'C1', 'CINKANCE MARO GAZ', 'ope75', '', '1002000001', 340320, 0),
(33, '2022-08-11 16:07:00', 'SCE55', 'ER01', 'ERIK', 'ope82', '', '1002000001', 10000, 1),
(34, '2022-08-11 16:16:00', 'CCP-F56', 'K4', 'KOBNA ', 'ope83', '', '1002000001', 450000, 1),
(35, '2022-08-11 16:30:00', 'CCP-F59', 'MAR', 'MARGO GAZ', 'ope84', '', '1002000001', 181920, 0),
(36, '2022-08-11 16:30:00', 'CCP-F58', 'TY', 'TOYIMI ZANGUERA', 'ope85', '', '1002000001', 29040, 0),
(37, '2022-08-11 20:44:00', 'CCP-F62', 'K4', 'KOBNA ', 'ope88', '', '1002000001', 192000, 1),
(38, '2022-08-11 20:45:00', 'CCP-F65', 'KO01', 'KOLANI ', 'ope89', '', '1002000001', 192000, 0),
(39, '2022-08-11 21:47:00', 'CCP-F54', 'M1', 'MILLA GAZ', 'ope90', '', '1002000001', 108000, 0),
(40, '2022-08-11 21:53:00', 'CCP-F70', 'M1', 'MILLA GAZ', 'ope91', '', '1002000001', 90000, 0),
(41, '2022-08-11 22:25:00', 'CCP-F71', 'K4', 'KOBNA ', 'ope92', '', '1002000001', 384000, 1),
(42, '2022-08-12 08:50:00', 'CCP-F76', 'KO2', 'KOLANI TSEVIER', 'ope93', '', '1002000001', 283700, 0),
(43, '2022-08-12 08:50:00', 'CCP-F69', 'R0', 'REHOBOPH', 'ope94', '', '1002000001', 71000, 0),
(44, '2022-08-12 08:51:00', 'CCP-F68', 'SO', 'SOULEMANE GAZ', 'ope95', '', '1002000001', 90000, 0),
(45, '2022-08-12 08:51:00', 'CCP-F66', 'SO', 'SOULEMANE GAZ', 'ope96', '', '1002000001', 60000, 0),
(46, '2022-08-12 09:10:00', 'CCP-F73', 'K4', 'KOBNA ', 'ope97', '', '1002000001', 450000, 1),
(47, '2022-08-12 10:01:00', 'CCP-F80', 'FAT', 'FATAO GAZ', 'ope101', '', '1002000001', 259000, 0),
(48, '2022-08-12 10:02:00', 'CCP-F78', 'DO1', 'DOUTI', 'ope102', '', '1002000001', 150000, 0),
(49, '2022-08-12 10:03:00', 'CCP-F77', 'O', 'STATION OANDO', 'ope103', '', '1002000001', 6400, 0),
(50, '2022-08-12 10:55:00', 'CCR-F81', 'T001', 'TAZO 3 GAZ', 'ope107', '', '1002000001', 85000, 0),
(51, '2022-08-12 11:41:00', 'CCP-F84', 'KO2', 'KOLANI TSEVIER', 'ope109', '', '1002000001', 116000, 0),
(52, '2022-08-12 14:20:00', 'CCP-F64', 'N', 'NUMAR', 'ope110', '', '1002000001', 90000, 0),
(53, '2022-08-12 16:07:00', 'CCP-F63', 'ER01', 'ERIK', 'ope111', '', '1002000001', 480000, 1),
(54, '2022-08-12 22:02:00', 'CCP-F103', 'K4', 'KOBNA ', 'ope112', '', '1002000001', 168000, 1),
(55, '2022-08-13 10:50:00', 'CCP-F107', 'FAT', 'FATAO GAZ', 'ope113', '', '1002000001', 216000, 0),
(56, '2022-08-13 11:00:00', 'CCP-F110', 'M1', 'MILLA GAZ', 'ope114', '', '1002000001', 102000, 0),
(57, '2022-08-13 11:00:00', 'CCP-F109', 'L1', 'LAMBO GAZ', 'ope115', '', '1002000001', 300000, 0),
(58, '2022-08-13 11:01:00', 'CCP-F108', 'R0', 'REHOBOPH', 'ope116', '', '1002000001', 68000, 0),
(59, '2022-08-13 14:14:00', 'CCP-F113', 'K4', 'KOBNA ', 'ope117', '', '1002000001', 190233, 1),
(60, '2022-08-13 14:15:00', 'SCE114', 'K4', 'KOBNA ', 'ope118', '', '1002000001', 1767, 1),
(61, '2022-08-13 14:28:00', 'CCP-F112', 'F001', 'FIL OPARK GAZ', 'ope119', '', '1002000001', 288000, 0),
(62, '2022-08-13 15:57:00', 'CCP-F115', 'PR02', 'PROMO GAZ FECANDINE', 'ope121', '', '1002000001', 343600, 0),
(63, '2022-08-13 16:33:00', 'SCE116', 'ER01', 'ERIK', 'ope122', '', '1002000001', 800000, 0),
(64, '2022-08-13 21:44:00', 'SCE121', 'EXO', 'EXODUS GAZ', 'ope123', '', '1002000001', 17500, 0),
(65, '2022-08-13 21:45:00', 'CCP-F122', 'C001', 'CENTRALE GAZ', 'ope124', '', '1002000001', 128856, 0),
(66, '2022-08-14 09:42:00', 'CCP-F125', 'E002', 'ERIK DJAGBLE', 'ope125', '', '1002000001', 826820, 0),
(67, '2022-08-14 09:43:00', 'CCP-F124', 'KT', 'KLARA GAZ', 'ope126', '', '1002000001', 322140, 0),
(68, '2022-08-14 09:43:00', 'CCP-F120', 'DA', 'DAHOE GAZ', 'ope127', '', '1002000001', 198410, 0),
(69, '2022-08-14 09:44:00', 'CCP-F119', 'I001', 'IPG YAOVI GAZ', 'ope128', '', '1002000001', 107380, 0),
(70, '2022-08-14 09:44:00', 'CCP-F118', 'ZA1', 'ZAKARI GAZ', 'ope129', '', '1002000001', 75166, 0),
(71, '2022-08-14 09:45:00', 'CCP-F117', 'A', 'ALEX GAZ', 'ope130', '', '1002000001', 133030, 0),
(72, '2022-08-14 21:50:00', 'SCE133', 'L1', 'LAMBO GAZ', 'ope131', '', '1002000001', 400000, 0),
(73, '2022-08-15 09:46:00', 'CCP-F123', 'K4', 'KOBNA ', 'ope132', '', '1002000001', 268446, 1),
(74, '2022-08-15 09:53:00', 'SCE140', 'K4', 'KOBNA ', 'ope133', '', '1002000001', 564000, 1),
(75, '2022-08-15 10:27:00', 'CCP-F134', 'DU01', 'DUCO GAZ', 'ope134', '', '1002000001', 392046, 0),
(76, '2022-08-15 10:50:00', 'CCP-F156', 'L1', 'LAMBO GAZ', 'ope135', '', '1002000001', 300000, 0),
(77, '2022-08-15 10:54:00', 'CCP-F154', 'T001', 'TAZO 3 GAZ', 'ope136', '', '1002000001', 182000, 0),
(78, '2022-08-15 10:55:00', 'CCP-F151', 'EN01', 'ENTREPRISE GAZ', 'ope137', '', '1002000001', 85900, 0),
(79, '2022-08-15 10:55:00', 'CCP-F149', 'EN01', 'ENTREPRISE GAZ', 'ope138', '', '1002000001', 85902, 0),
(80, '2022-08-15 11:21:00', 'CCP-F158', 'A', 'ALEX GAZ', 'ope139', '', '1002000001', 138160, 0),
(81, '2022-08-15 13:01:00', 'CCP-F160', 'NE', 'PLANTATION /NEDJRO GAZ', 'ope142', '', '1002000001', 32214, 0),
(82, '2022-08-15 13:02:00', 'CCP-F162', 'AD', 'ADOUGBA GAZ', 'ope143', '', '1002000001', 128850, 0),
(83, '2022-08-15 13:06:00', 'CCP-F161', 'Y', 'YAKOUBA GAZ', 'ope144', '', '1002000001', 128856, 0),
(84, '2022-08-15 13:17:00', 'CCP-F169', 'KL', 'KOMLA TOTSI RAIL', 'ope145', '', '1002000001', 85900, 0),
(85, '2022-08-15 13:17:00', 'CCP-F168', 'KL', 'KOMLA TOTSI RAIL', 'ope146', '', '1002000001', 21476, 0),
(86, '2022-08-15 13:19:00', 'CCP-F152', 'J', 'JAQUE GAZ', 'ope147', '', '1002000001', 137200, 0),
(87, '2022-08-15 13:21:00', 'CCP-F167', 'MAR', 'MARGO GAZ', 'ope148', '', '1002000001', 293622, 0),
(88, '2022-08-15 13:26:00', 'CCP-F129', 'CO1', 'CONFIANCE GAZ', 'ope149', '', '1002000001', 214752, 0),
(89, '2022-08-15 13:28:00', 'CCP-F128', 'MO', 'MOMO GAZ', 'ope150', '', '1002000001', 662880, 0),
(90, '2022-08-15 13:28:00', 'CCP-F166', 'TI02', 'TIMBROWN GAZ', 'ope151', '', '1002000001', 161070, 0),
(91, '2022-08-15 13:37:00', 'CCP-F150', 'AD', 'ADOUGBA GAZ', 'ope152', '', '1002000001', 128850, 0),
(92, '2022-08-15 13:38:00', 'CCP-F153', 'BO2', 'BOUCHER GAZ', 'ope153', '', '1002000001', 139590, 0),
(93, '2022-08-15 13:42:00', 'CCP-F170', 'M1', 'MILLA GAZ', 'ope154', '', '1002000001', 214760, 0),
(94, '2022-08-15 14:27:00', 'CCP-F172', 'MN01', 'MON NOM EST BENI', 'ope156', '', '1002000001', 161070, 0),
(95, '2022-08-15 14:30:00', 'CCP-F164', 'F001', 'FIL OPARK GAZ', 'ope157', '', '1002000001', 311400, 0),
(96, '2022-08-15 14:40:00', 'CCP-F165', 'ME01', 'MEDE GAZ', 'ope158', '', '1002000001', 92340, 0),
(97, '2022-08-15 14:48:00', 'CCP-F145', 'KZ02', 'KOZATOU GAZ', 'ope159', '', '1002000001', 214757, 0),
(98, '2022-08-15 15:09:00', 'CCP-F177', 'R0', 'REHOBOPH', 'ope160', '', '1002000001', 106000, 0),
(99, '2022-08-15 15:09:00', 'CCP-F176', 'SO', 'SOULEMANE GAZ', 'ope161', '', '1002000001', 139594, 0),
(100, '2022-08-15 16:07:00', 'CCP-F178', 'GD01', 'GLOIRE DE DIEU', 'ope162', '', '1002000001', 107377, 0),
(101, '2022-08-15 16:08:00', 'CCP-F171', 'KT', 'KLARA GAZ', 'ope163', '', '1002000001', 354354, 0),
(102, '2022-08-15 16:09:00', 'CCP-F173', 'FAT', 'FATAO GAZ', 'ope164', '', '1002000001', 300660, 0),
(103, '2022-08-15 16:09:00', 'CCP-F148', 'TE', 'TECO/DRAMANE GAZ', 'ope165', '', '1002000001', 214760, 0),
(104, '2022-08-15 16:10:00', 'CCP-F146', 'BE02', 'BEATRUC GAZ', 'ope166', '', '1002000001', 79340, 0),
(105, '2022-08-15 16:33:00', 'CCP-F179', 'N', 'NUMAR', 'ope168', '', '1002000001', 107380, 0),
(106, '2022-08-15 16:33:00', 'CCP-F175', 'ER01', 'ERIK', 'ope169', '', '1002000001', 511690, 0),
(107, '2022-08-15 16:49:00', '181', 'ER01', 'ERIK', 'ope172', '', '1002000001', 25000, 0),
(108, '2022-08-15 16:49:00', 'CCP-F180', 'ER01', 'ERIK', 'ope173', '', '1002000001', 156354, 0),
(109, '2022-08-15 20:06:00', 'SCE183', 'C1', 'CINKANCE MARO GAZ', 'ope174', '', '1002000001', 475000, 0),
(110, '2022-08-15 20:10:00', 'CCP-F144', 'FD02', 'FIDELITAS GAZ', 'ope175', '', '1002000001', 209980, 0),
(111, '2022-08-16 08:46:00', 'CCP-F187', 'BC', 'BUSNESS CENTER', 'ope177', '', '1002000001', 486840, 0),
(112, '2022-08-16 08:49:00', 'CCP-F186', 'EV1', 'SAVENA GAZ', 'ope178', '', '1002000001', 169200, 0),
(113, '2022-08-16 08:50:00', 'CCP-F184', 'GE01', 'GER GAZ', 'ope179', '', '1002000001', 179788, 0),
(114, '2022-08-16 09:14:00', 'CCP-F193', 'FI04', 'GAKPO GAZ', 'ope180', '', '1002000001', 28800, 0),
(115, '2022-08-16 09:14:00', 'CCP-F193', 'FI04', 'GAKPO GAZ', 'ope181', '', '1002000001', 6000, 0),
(116, '2022-08-16 10:24:00', 'CCP-F198', 'ME ', 'METROPOLICE GAZ', 'ope182', '', '1002000001', 148232, 0),
(117, '2022-08-16 10:25:00', 'CCP-F197', 'SO01', 'SOMITE', 'ope183', '', '1002000001', 84704, 0),
(118, '2022-08-16 10:25:00', 'CCP-F196', 'ZA1', 'ZAKARI GAZ', 'ope184', '', '1002000001', 84600, 0),
(119, '2022-08-16 10:40:00', 'CCP-F191', 'VI05', 'VIGUEUR ', 'ope185', '', '1002000001', 179788, 0),
(120, '2022-08-16 10:42:00', 'CCP-F190', 'EN06', 'ENOULI GAZ', 'ope186', '', '1002000001', 74116, 0),
(121, '2022-08-16 10:42:00', 'CCP-F189', 'LA01', 'LARE', 'ope187', '', '1002000001', 84600, 0),
(122, '2022-08-16 11:38:00', 'CCP-F201', 'K01', 'KOWONI GAZ', 'ope188', '', '1002000001', 252500, 0),
(123, '2022-08-16 11:43:00', 'CCP-F201', 'K01', 'KOWONI GAZ', 'ope189', '', '1002000001', 40540, 0),
(124, '2022-08-16 12:29:00', 'CCP-F202', 'K4', 'KOBNA ', 'ope190', '', '1002000001', 105880, 0),
(125, '2022-08-22 08:41:00', 'CCP-F200', 'A ', 'AMETODE GAZ', 'ope191', '', '1002000001', 201120, 0),
(126, '2022-09-01 10:51:00', 'CCP-F195', 'DO1', 'DOUTI', 'ope192', '', '1002000001', 2000, 0),
(127, '2022-09-01 10:54:00', 'CCP-F194', 'BL07', 'BLESSED GAZ', 'ope193', '', '1002000001', 3000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tb_payement_canc`
--

CREATE TABLE `tb_payement_canc` (
  `id_pc` int(11) NOT NULL,
  `piece` varchar(30) DEFAULT NULL,
  `ope` varchar(30) NOT NULL,
  `code_clt` varchar(30) NOT NULL,
  `montant` double DEFAULT NULL,
  `motif` varchar(255) DEFAULT NULL,
  `date_canc` date DEFAULT NULL,
  `user_canc` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_payement_canc`
--

INSERT INTO `tb_payement_canc` (`id_pc`, `piece`, `ope`, `code_clt`, `montant`, `motif`, `date_canc`, `user_canc`) VALUES
(1, 'SORTI', 'ope36', 'néant', 80000, 'erreur', '2022-08-07', '1002'),
(2, 'CCP-F27', 'ope32', 'FE1', 177600, 'TEST', '2022-08-09', '1002'),
(3, 'CCP-F27', 'ope53', 'FE1', 177600, 'ERRR', '2022-08-09', '1002'),
(4, 'CCP-F43', 'ope53', 'AD', 72000, 'TEST', '2022-08-09', '1002'),
(5, 'SCE55', 'ope82', 'ER01', 6000, 'ESSAIE', '2022-08-11', '1002'),
(6, 'CCP-F71', 'ope92', 'K4', 192000, 'ESS', '2022-08-11', '1002'),
(7, 'CCP-F56', 'ope83', 'K4', 192000, 'ESS', '2022-08-11', '1002'),
(8, 'CCP-F73', 'ope97', 'K4', 192000, 'e', '2022-08-12', '1002'),
(9, 'CCP-F63', 'ope111', 'ER01', 480000, 'test', '2022-08-12', '1002'),
(10, 'CCP-F194', 'ope193', 'BL07', 3000, 'fes', '2022-09-01', '1002');

-- --------------------------------------------------------

--
-- Structure de la table `tb_point_vente`
--

CREATE TABLE `tb_point_vente` (
  `id_point` int(11) NOT NULL,
  `nom_point` varchar(30) DEFAULT NULL,
  `zone` varchar(20) DEFAULT NULL,
  `code_client` varchar(100) DEFAULT NULL,
  `adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_point_vente`
--

INSERT INTO `tb_point_vente` (`id_point`, `nom_point`, `zone`, `code_client`, `adresse`) VALUES
(1, 'SEPEREPE', 'GRAND LOME', 'ER01', ''),
(2, 'erik gaz', 'GRAND LOME', 'ER01', 'ras'),
(3, 'kolani agoe est', 'ZONE 13 ', 'KO01', ''),
(4, 'erik seperepe', 'ZONE 13 ', 'ER01', 'seperepe a 100 m de miami 228'),
(5, 'pikabe cacaveli', 'ZONE 13 ', 'P1', ''),
(6, 'djagble', 'ZONE DJABLE', 'ER01', ''),
(7, 'kolani deticope', 'ZONE 13 ', 'KO01', ''),
(8, 'abalo gaz', 'ZONE 13 ', 'A1', ''),
(9, 'oando gaz', 'ZONE 13 ', 'O', ''),
(10, 'beatruc gaz', 'ZONE 13 ', 'B', ''),
(11, 'germain sogbosito', 'ZONE 13 ', 'G1', ''),
(12, 'germain deticope', 'ZONE 13 ', 'G1', ''),
(13, 'FELICITE KPALA', 'ZONE 13 ', 'FE1', 'CONTOURNEMENT KPALA'),
(14, 'KPALA', 'GRAND LOME', 'FE1', 'CONTOURNE'),
(15, 'MILA CACAVELI', 'GRAND LOME', 'M1', 'CACAVELI'),
(16, 'MILA LIMOSINE', 'GRAND LOME', 'M1', 'LIMOSINE'),
(17, 'dapaong 3', 'ZONE 55', 'KO', 'dapaong'),
(18, 'KARA1', 'ZONE 55', 'I1', 'KARA'),
(19, 'KARA 3', 'ZONE 55', 'I1', 'KARA ANCIEN ADONAI'),
(20, 'ADAKPAME', 'GRAND LOME', 'R0', 'ROND POINT ADAKPAME'),
(21, 'CINKANCE FACE LYCEE', 'ZONE 55', 'C1', 'CINKANCE VILLE'),
(22, 'CAREFOUR MARGO', 'ZONE 13 ', 'MAR', 'SC'),
(23, 'SOGBOSITO', 'ZONE 13 ', 'FS', 'A COTE DES SOEUR'),
(24, 'FIOVIE AGOE', 'ZONE 13 ', 'FS', 'FACE POSTE FIOVIE'),
(25, 'TSEVIE', 'ZONE18', 'KO2', 'A 100M DE POSTE DE TSEVIE'),
(26, 'NAPOLEON1', 'GRAND LOME', 'TI02', 'A 100 M DU CAREFOUR'),
(27, 'SOGBOSITO', 'GRAND LOME', 'ME01', 'A 200 M DE COLONEL BALI'),
(28, 'MARGO', 'GRAND LOME', 'BL01', '2EM ROND POINT APRES LE CAREFOUR'),
(29, 'MARGO', 'GRAND LOME', 'BE02', 'A 10 M DU ROND POINT'),
(30, 'ENTREPRISE DE LUNION', 'GRAND LOME', 'EN01', 'ENTREPRISE'),
(31, 'LOGOPE', 'GRAND LOME', 'TH02', 'A 100 M DU CAMP DE POLICE'),
(32, 'DETICOPE', 'GRAND LOME', 'KT', 'DETICOPE DEVANT LE MARCHE'),
(33, 'BKS', 'GRAND LOME', 'KZ02', ''),
(34, 'ENTREPRISE DE LUNION', 'GRAND LOME', 'FD02', ''),
(35, 'FICHE 1', 'GRAND LOME', 'A002', ''),
(36, 'IPG', 'GRAND LOME', 'I001', ''),
(37, 'DJAGBLE', 'GRAND LOME', 'E002', ''),
(38, 'APECITO', 'GRAND LOME', 'EM02', ''),
(39, 'ZANGUERA', 'GRAND LOME', 'TI01', ''),
(40, 'APECITO', 'GRAND LOME', 'RK01', ''),
(41, 'AGOE', 'GRAND LOME', 'EM00', ''),
(42, 'MARGO', 'GRAND LOME', 'MAR', ''),
(43, 'BERNARCOPE', 'GRAND LOME', 'FAT', ''),
(44, 'SEPEREPE1', 'GRAND LOME', 'SA', ''),
(45, 'SEPEREPE 2', 'GRAND LOME', 'SA', '');

-- --------------------------------------------------------

--
-- Structure de la table `tb_rbouteille`
--

CREATE TABLE `tb_rbouteille` (
  `id_rbouteille` int(11) NOT NULL,
  `num_chargement` varchar(10) NOT NULL,
  `num_BL` varchar(20) NOT NULL,
  `nom_client` varchar(50) NOT NULL,
  `code_art` varchar(20) NOT NULL,
  `designation_art` varchar(100) NOT NULL,
  `bouteille_dep` int(11) NOT NULL,
  `bouteille_ret` int(11) NOT NULL,
  `Bouteille_consigne` int(11) NOT NULL,
  `bouteille_manquant` int(11) NOT NULL,
  `date_controle` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tb_rbouteille_h`
--

CREATE TABLE `tb_rbouteille_h` (
  `id_rb_H` int(11) NOT NULL,
  `code_art` varchar(20) NOT NULL,
  `designation_art` varchar(100) NOT NULL,
  `bouteille_dep` int(11) NOT NULL,
  `bouteille_ret` int(11) NOT NULL,
  `bouteille_consigne` int(11) NOT NULL,
  `bouteille_manquant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tb_releve_client`
--

CREATE TABLE `tb_releve_client` (
  `id_rc` int(11) NOT NULL,
  `code_clt` varchar(30) NOT NULL,
  `nom_client` varchar(50) NOT NULL,
  `date_rc` date DEFAULT NULL,
  `operation_rc` varchar(30) DEFAULT NULL,
  `caisse_rc` varchar(30) DEFAULT NULL,
  `piece` varchar(30) DEFAULT NULL,
  `avance_debit` varchar(30) DEFAULT NULL,
  `avance_credit` varchar(30) DEFAULT NULL,
  `factRet_debit` varchar(30) DEFAULT NULL,
  `factRet_credit` varchar(30) DEFAULT NULL,
  `Libelle` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_releve_client`
--

INSERT INTO `tb_releve_client` (`id_rc`, `code_clt`, `nom_client`, `date_rc`, `operation_rc`, `caisse_rc`, `piece`, `avance_debit`, `avance_credit`, `factRet_debit`, `factRet_credit`, `Libelle`) VALUES
(8, 'I1', 'ISSAKA KARA 1', '2022-08-04', 'Vente', 'CCP', 'CCP-F3', '-', '-', '120000', '-', 'D'),
(9, 'KO01', 'KOLANI ', '2022-08-04', 'Trésorerie', 'CCP', 'Avance', '-', '1000000', '-', '-', 'PRET'),
(10, 'M1', 'MILLA GAZ', '2022-08-04', 'Trésorerie', 'CCP', 'Avance', '-', '900000', '-', '-', 'PRET'),
(11, 'M1', 'MILLA GAZ', '2022-08-04', 'Vente', 'CCP', 'CCP-F4', '-', '-', '234000', '-', 'D'),
(12, 'M1', 'MILLA GAZ', '2022-08-04', 'O.D', 'O.D', 'Avance', '234000', '-', '-', '-', 'Imputation avance/facture CCP-F4'),
(13, 'M1', 'MILLA GAZ', '2022-08-04', 'O.D', 'O.D', 'CCP-F4', '-', '-', '-', '234000', 'Imputation avance/facture CCP-F4'),
(14, 'O', 'STATION OANDO', '2022-08-05', 'Vente', 'CCP', 'CCP-F5', '-', '-', '97000', '-', 'D'),
(15, 'KO01', 'KOLANI ', '2022-08-05', 'Vente', 'CCP', 'CCP-F6', '-', '-', '138000', '-', 'D'),
(16, 'KO01', 'KOLANI ', '2022-08-05', 'O.D', 'O.D', 'Avance', '138000', '-', '-', '-', 'Imputation avance/facture CCP-F6'),
(17, 'KO01', 'KOLANI ', '2022-08-05', 'O.D', 'O.D', 'CCP-F6', '-', '-', '-', '138000', 'Imputation avance/facture CCP-F6'),
(18, 'KO01', 'KOLANI ', '2022-08-05', 'Vente', 'CCP', 'CCP-F7', '-', '-', '120000', '-', 'D'),
(19, 'KO01', 'KOLANI ', '2022-08-05', 'O.D', 'O.D', 'Avance', '120000', '-', '-', '-', 'Imputation avance/facture CCP-F7'),
(20, 'KO01', 'KOLANI ', '2022-08-05', 'O.D', 'O.D', 'CCP-F7', '-', '-', '-', '120000', 'Imputation avance/facture CCP-F7'),
(21, 'DO1', 'DOUTI', '2022-08-05', 'Vente', 'CCP', 'CCP-F8', '-', '-', '174000', '-', 'D'),
(23, 'O', 'STATION OANDO', '2022-08-05', 'Vente', 'CCP', 'CCP-F5', '-', '-', '88800', '-', 'D'),
(24, 'CO1', 'CONFIANCE GAZ', '2022-08-05', 'Vente', 'CCP', 'CCP-F10', '-', '-', '120000', '-', 'D'),
(25, 'M1', 'MILLA GAZ', '2022-08-05', 'Vente', 'CCP', 'CCP-F11', '-', '-', '174000', '-', 'D'),
(26, 'M1', 'MILLA GAZ', '2022-08-05', 'O.D', 'O.D', 'Avance', '174000', '-', '-', '-', 'Imputation avance/facture CCP-F11'),
(27, 'M1', 'MILLA GAZ', '2022-08-05', 'O.D', 'O.D', 'CCP-F11', '-', '-', '-', '174000', 'Imputation avance/facture CCP-F11'),
(29, 'KO', 'KOFFI DAPAONG GAZ', '2022-08-06', 'Vente', 'CCP', 'CCR-F13', '-', '-', '1834800', '-', 'D'),
(30, 'P1', 'PIKABE GAZ', '2022-08-06', 'Vente', 'CCP', 'CCP-F14', '-', '-', '155520', '-', 'D'),
(31, 'P1', 'PIKABE GAZ', '2022-08-06', 'Vente', 'CCP', 'CCP-F14', '-', '-', '149760', '-', 'D'),
(32, 'DO1', 'DOUTI', '2022-08-06', 'Vente', 'CCP', 'CCP-F15', '-', '-', '102000', '-', 'D'),
(45, 'FE1', 'FELICITE GAZ', '2022-08-06', 'Vente', 'CCP', 'CCP-F27', '-', '-', '177600', '-', 'D'),
(46, 'I1', 'ISSAKA KARA 1', '2022-08-07', 'Vente', 'CCP', 'CCP-F28', '-', '-', '158400', '-', 'D'),
(47, 'I1', 'ISSAKA KARA 1', '2022-08-07', 'Trésorerie', 'CCP', 'Avance', '-', '356000', '-', '-', 'RESTE SUR LES ACHAT DES CONSIGNATIONS'),
(48, 'M1', 'MILLA GAZ', '2022-08-08', 'Vente', 'CCP', 'CCP-F29', '-', '-', '144000', '-', 'D'),
(50, 'AL', 'ALU SAVANE', '2022-08-08', 'Vente', 'CCP', 'CCP-F31', '-', '-', '71280', '-', 'D'),
(51, 'BC', 'BUSNESS CENTER', '2022-08-08', 'Vente', 'CCP', 'CCP-F32', '-', '-', '158400', '-', 'D'),
(53, 'O', 'STATION OANDO', '2022-08-08', 'Vente', 'CCP', 'CCP-F34', '-', '-', '97000', '-', 'D'),
(54, 'A1', 'ABALO GAZ', '2022-08-08', 'Vente', 'CCP', 'CCP-F35', '-', '-', '192000', '-', 'D'),
(55, 'O', 'STATION OANDO', '2022-08-08', 'Vente', 'CCP', 'CCP-F34', '-', '-', '88800', '-', 'D'),
(57, 'M1', 'MILLA GAZ', '2022-08-08', 'O.D', 'O.D', 'Avance', '144000', '-', '-', '-', 'Imputation avance/facture CCP-F29'),
(58, 'M1', 'MILLA GAZ', '2022-08-08', 'O.D', 'O.D', 'CCP-F29', '-', '-', '-', '144000', 'Imputation avance/facture CCP-F29'),
(59, 'DAP2', 'DAPAONG 2 BIGBA', '2022-08-09', 'Vente', 'CCP', 'CCP-F36', '-', '-', '60000', '-', 'D'),
(60, 'DAP2', 'DAPAONG 2 BIGBA', '2022-08-09', 'Vente', 'CCP', 'CCR-F37', '-', '-', '321840', '-', 'D'),
(61, 'C1', 'CINKANCE MARO GAZ', '2022-08-09', 'Vente', 'CCP', 'CCP-F38', '-', '-', '340320', '-', 'D'),
(62, 'DAP2', 'DAPAONG 2 BIGBA', '2022-08-09', 'Trésorerie', 'CCP', 'Avance', '-', '332160', '-', '-', 'AVANCE SUR ACHAT DU 09/08/2022'),
(63, 'DAP2', 'DAPAONG 2 BIGBA', '2022-08-09', 'O.D', 'O.D', 'Avance', '321840', '-', '-', '-', 'Imputation avance/facture CCR-F37'),
(64, 'DAP2', 'DAPAONG 2 BIGBA', '2022-08-09', 'O.D', 'O.D', 'CCR-F37', '-', '-', '-', '321840', 'Imputation avance/facture CCR-F37'),
(65, 'I1', 'ISSAKA KARA 1', '2022-08-09', 'Vente', 'CCP', 'CCP-F39', '-', '-', '315840', '-', 'D'),
(66, 'M1', 'MILLA GAZ', '2022-08-09', 'Vente', 'CCP', 'CCP-F40', '-', '-', '150000', '-', 'D'),
(67, 'KO01', 'KOLANI ', '2022-08-09', 'Vente', 'CCP', 'CCP-F41', '-', '-', '198000', '-', 'D'),
(68, 'KO01', 'KOLANI ', '2022-08-09', 'O.D', 'O.D', 'Avance', '198000', '-', '-', '-', 'Imputation avance/facture CCP-F41'),
(69, 'KO01', 'KOLANI ', '2022-08-09', 'O.D', 'O.D', 'CCP-F41', '-', '-', '-', '198000', 'Imputation avance/facture CCP-F41'),
(70, 'M1', 'MILLA GAZ', '2022-08-09', 'O.D', 'O.D', 'Avance', '150000', '-', '-', '-', 'Imputation avance/facture CCP-F40'),
(71, 'M1', 'MILLA GAZ', '2022-08-09', 'O.D', 'O.D', 'CCP-F40', '-', '-', '-', '150000', 'Imputation avance/facture CCP-F40'),
(74, 'I1', 'ISSAKA KARA 1', '2022-08-09', 'ope51', 'O.D', 'Avance', '315840', '-', '-', '-', 'Imputation avance/facture CCP-F39'),
(75, 'I1', 'ISSAKA KARA 1', '2022-08-09', 'ope51', 'O.D', 'CCP-F39', '-', '-', '-', '315840', 'Imputation avance/facture CCP-F39'),
(76, 'I1', 'ISSAKA KARA 1', '2022-08-09', 'ope52', 'CCP', 'CCP-F28', '-', '-', '-', '158400', 'Encaissement de facture en espèce'),
(77, 'FE1', 'FELICITE GAZ', '2022-08-09', 'ope53', 'CCP', 'CCP-F27', '-', '-', '-', '177600', 'Encaissement de facture en espèce'),
(81, 'KO01', 'KOLANI ', '2022-08-09', 'CCP-F45', 'Vente', 'CCP-F45', '-', '-', '125520', '-', 'D'),
(82, 'KO01', 'KOLANI ', '2022-08-09', 'ope53', 'O.D', 'Avance', '125520', '-', '-', '-', 'Imputation avance/facture CCP-F45'),
(83, 'KO01', 'KOLANI ', '2022-08-09', 'ope53', 'O.D', 'CCP-F45', '-', '-', '-', '125520', 'Imputation avance/facture CCP-F45'),
(86, 'I1', 'ISSAKA KARA 1', '2022-08-09', 'CCP-F48', 'Vente', 'CCP-F48', '-', '-', '315840', '-', 'D'),
(87, 'R0', 'REHOBOPH', '2022-08-10', 'CCP-F49', 'Vente', 'CCP-F49', '-', '-', '134160', '-', 'D'),
(88, 'R0', 'REHOBOPH', '2022-08-10', 'ope63', 'CCP', 'CCP-F49', '-', '-', '-', '70000', 'Encaissement de facture en espèce'),
(89, 'G1', 'GERMAIN GAZ', '2022-08-10', 'CCP-F50', 'Vente', 'CCP-F50', '-', '-', '57600', '-', 'D'),
(90, 'N', 'NUMAR', '2022-08-10', 'CCP-F51', 'Vente', 'CCP-F51', '-', '-', '120000', '-', 'D'),
(91, 'FAT', 'FATAO GAZ', '2022-08-10', 'CCP-F52', 'Vente', 'CCP-F52', '-', '-', '228000', '-', 'D'),
(92, 'FAT', 'FATAO GAZ', '2022-08-10', 'ope64', 'CCP', 'CCP-F52', '-', '-', '-', '228000', 'Encaissement de facture en espèce'),
(94, 'N', 'NUMAR', '2022-08-10', 'ope72', 'CCP', 'CCP-F51', '-', '-', '-', '120000', 'Encaissement de facture en espèce'),
(95, 'C1', 'CINKANCE MARO GAZ', '2022-08-10', 'ope75', 'CCP', 'CCP-F38', '-', '-', '-', '340320', 'Encaissement de facture en espèce'),
(96, 'M1', 'MILLA GAZ', '2022-08-10', 'CCP-F54', 'Vente', 'CCP-F54', '-', '-', '108000', '-', 'D'),
(104, 'TY', 'TOYIMI ZANGUERA', '2022-08-11', 'CCP-F58', 'Vente', 'CCP-F58', '-', '-', '29040', '-', 'D'),
(105, 'MAR', 'MARGO GAZ', '2022-08-11', 'CCP-F59', 'Vente', 'CCP-F59', '-', '-', '181920', '-', 'D'),
(106, 'MAR', 'MARGO GAZ', '2022-08-11', 'ope84', 'CCP', 'CCP-F59', '-', '-', '-', '181920', 'Encaissement de facture en espèce'),
(107, 'TY', 'TOYIMI ZANGUERA', '2022-08-11', 'ope85', 'CCP', 'CCP-F58', '-', '-', '-', '29040', 'Encaissement de facture en espèce'),
(108, 'DO1', 'DOUTI', '2022-08-11', 'SCE60', 'Vente', 'SCE60', '-', '-', '30000', '-', 'D'),
(112, 'N', 'NUMAR', '2022-08-11', 'CCP-F64', 'Vente', 'CCP-F64', '-', '-', '180000', '-', 'D'),
(113, 'KO01', 'KOLANI ', '2022-08-11', 'CCP-F65', 'Vente', 'CCP-F65', '-', '-', '192000', '-', 'D'),
(114, 'SO', 'SOULEMANE GAZ', '2022-08-11', 'CCP-F66', 'Vente', 'CCP-F66', '-', '-', '60000', '-', 'D'),
(116, 'SO', 'SOULEMANE GAZ', '2022-08-11', 'CCP-F68', 'Vente', 'CCP-F68', '-', '-', '90000', '-', 'D'),
(117, 'R0', 'REHOBOPH', '2022-08-11', 'CCP-F69', 'Vente', 'CCP-F69', '-', '-', '72000', '-', 'D'),
(120, 'KO01', 'KOLANI ', '2022-08-11', 'ope89', 'O.D', 'Avance', '192000', '-', '-', '-', 'Imputation avance/facture CCP-F65'),
(121, 'KO01', 'KOLANI ', '2022-08-11', 'ope89', 'O.D', 'CCP-F65', '-', '-', '-', '192000', 'Imputation avance/facture CCP-F65'),
(122, 'M1', 'MILLA GAZ', '2022-08-11', 'ope90', 'O.D', 'Avance', '108000', '-', '-', '-', 'Imputation avance/facture CCP-F54'),
(123, 'M1', 'MILLA GAZ', '2022-08-11', 'ope90', 'O.D', 'CCP-F54', '-', '-', '-', '108000', 'Imputation avance/facture CCP-F54'),
(124, 'M1', 'MILLA GAZ', '2022-08-11', 'CCP-F70', 'Vente', 'CCP-F70', '-', '-', '90000', '-', 'D'),
(125, 'M1', 'MILLA GAZ', '2022-08-11', '10', 'Trésorerie', '10', '-', '600000', '-', '-', 'AVANCE SUR ACHAT'),
(126, 'M1', 'MILLA GAZ', '2022-08-11', 'ope91', 'O.D', 'Avance', '90000', '-', '-', '-', 'Imputation avance/facture CCP-F70'),
(127, 'M1', 'MILLA GAZ', '2022-08-11', 'ope91', 'O.D', 'CCP-F70', '-', '-', '-', '90000', 'Imputation avance/facture CCP-F70'),
(131, 'KO2', 'KOLANI TSEVIER', '2022-08-12', 'CCP-F76', 'Vente', 'CCP-F76', '-', '-', '283680', '-', 'D'),
(132, 'KO2', 'KOLANI TSEVIER', '2022-08-12', 'ope93', 'CCP', 'CCP-F76', '-', '-', '-', '283680', 'Encaissement de facture en espèce'),
(133, 'KO2', 'KOLANI TSEVIER', '2022-08-12', '12', 'Trésorerie', '12', '-', '20', '-', '-', 'Avance par surplus de caisse'),
(134, 'R0', 'REHOBOPH', '2022-08-12', 'ope94', 'CCP', 'CCP-F69', '-', '-', '-', '71000', 'Encaissement de facture en espèce'),
(135, 'SO', 'SOULEMANE GAZ', '2022-08-12', 'ope95', 'CCP', 'CCP-F68', '-', '-', '-', '90000', 'Encaissement de facture en espèce'),
(136, 'SO', 'SOULEMANE GAZ', '2022-08-12', 'ope96', 'CCP', 'CCP-F66', '-', '-', '-', '60000', 'Encaissement de facture en espèce'),
(137, 'O', 'STATION OANDO', '2022-08-12', 'CCP-F77', 'Vente', 'CCP-F77', '-', '-', '64000', '-', 'D'),
(138, 'DO1', 'DOUTI', '2022-08-12', 'CCP-F78', 'Vente', 'CCP-F78', '-', '-', '150000', '-', 'D'),
(141, 'FS', 'FIS GAZ', '2022-08-12', 'CCP-F79', 'Vente', 'CCP-F79', '-', '-', '91680', '-', 'D'),
(142, 'FAT', 'FATAO GAZ', '2022-08-12', 'CCP-F80', 'Vente', 'CCP-F80', '-', '-', '168000', '-', 'D'),
(143, 'FAT', 'FATAO GAZ', '2022-08-12', 'ope101', 'CCP', 'CCP-F80', '-', '-', '-', '168000', 'Encaissement de facture en espèce'),
(145, 'DO1', 'DOUTI', '2022-08-12', 'ope102', 'CCP', 'CCP-F78', '-', '-', '-', '150000', 'Encaissement de facture en espèce'),
(146, 'O', 'STATION OANDO', '2022-08-12', 'ope103', 'CCP', 'CCP-F77', '-', '-', '-', '6400', 'Encaissement de facture en espèce'),
(147, 'T001', 'TAZO 3 GAZ', '2022-08-12', 'CCR-F81', 'Vente', 'CCR-F81', '-', '-', '89000', '-', 'D'),
(148, 'T001', 'TAZO 3 GAZ', '2022-08-12', 'ope107', 'CCP', 'CCR-F81', '-', '-', '-', '85000', 'Encaissement de facture en espèce'),
(149, 'D1', 'KODJO DAPAONG 1 GAZ', '2022-08-12', 'CCP-F82', 'Vente', 'CCP-F82', '-', '-', '506400', '-', 'D'),
(150, 'C1', 'CINKANCE MARO GAZ', '2022-08-12', 'CCP-F83', 'Vente', 'CCP-F83', '-', '-', '360000', '-', 'D'),
(151, 'KO2', 'KOLANI TSEVIER', '2022-08-12', 'CCP-F84', 'Vente', 'CCP-F84', '-', '-', '115680', '-', 'D'),
(152, 'KO2', 'KOLANI TSEVIER', '2022-08-12', 'ope109', 'CCP', 'CCP-F84', '-', '-', '-', '115680', 'Encaissement de facture en espèce'),
(153, 'KO2', 'KOLANI TSEVIER', '2022-08-12', '15', 'Trésorerie', '15', '-', '320', '-', '-', 'Avance par surplus de caisse'),
(154, 'N', 'NUMAR', '2022-08-12', 'ope110', 'CCP', 'CCP-F64', '-', '-', '-', '90000', 'Encaissement de facture en espèce'),
(161, 'ER01', 'ERIK', '2022-08-04', '16', 'Trésorerie', '16', '-', '750000', '-', '-', 'AVANCE'),
(162, 'ER01', 'ERIK', '2022-08-06', '23', 'Trésorerie', '23', '-', '950000', '-', '-', 'AVANCE'),
(163, 'ER01', 'ERIK', '2022-08-09', '24', 'Trésorerie', '24', '-', '1100000', '-', '-', 'AVANCE'),
(164, 'ER01', 'ERIK', '2022-08-05', '25', 'Trésorerie', '25', '-', '1000000', '-', '-', 'AVANCE'),
(165, 'ER01', 'ERIK', '2022-08-10', '26', 'Trésorerie', '26', '-', '800000', '-', '-', 'AVANCE'),
(166, 'ER01', 'ERIK', '2022-08-11', '27', 'Trésorerie', '27', '-', '1000000', '-', '-', 'AVANCE'),
(167, 'ER01', 'ERIK', '2022-08-12', '28', 'Trésorerie', '28', '-', '750000', '-', '-', 'AVANCE'),
(170, 'ER01', 'ERIK', '2020-01-01', 'CCP-F85', 'Vente', 'CCP-F85', '-', '-', '1212480', '-', 'D'),
(171, 'ER01', 'ERIK', '2022-08-01', 'CCP-F86', 'Vente', 'CCP-F86', '-', '-', '739680', '-', 'D'),
(172, 'ER01', 'ERIK', '2022-08-02', 'CCP-F87', 'Vente', 'CCP-F87', '-', '-', '168000', '-', 'D'),
(173, 'ER01', 'ERIK', '2022-08-03', 'CCP-F88', 'Vente', 'CCP-F88', '-', '-', '411840', '-', 'D'),
(174, 'ER01', 'ERIK', '2022-08-03', 'CCP-F89', 'Vente', 'CCP-F89', '-', '-', '390000', '-', 'D'),
(175, 'ER01', 'ERIK', '2022-08-03', 'CCP-F90', 'Vente', 'CCP-F90', '-', '-', '24000', '-', 'D'),
(176, 'ER01', 'ERIK', '2022-08-04', 'CCP-F91', 'Vente', 'CCP-F91', '-', '-', '630000', '-', 'D'),
(177, 'ER01', 'ERIK', '2022-08-05', 'CCP-F92', 'Vente', 'CCP-F92', '-', '-', '480000', '-', 'D'),
(178, 'ER01', 'ERIK', '2022-08-06', 'CCP-F93', 'Vente', 'CCP-F93', '-', '-', '256800', '-', 'D'),
(179, 'ER01', 'ERIK', '2022-08-08', 'CCP-F94', 'Vente', 'CCP-F94', '-', '-', '754080', '-', 'D'),
(180, 'ER01', 'ERIK', '2022-08-09', 'CCP-F95', 'Vente', 'CCP-F95', '-', '-', '649920', '-', 'D'),
(181, 'ER01', 'ERIK', '2022-08-09', 'CCP-F96', 'Vente', 'CCP-F96', '-', '-', '159360', '-', 'D'),
(182, 'ER01', 'ERIK', '2022-08-10', 'CCP-F97', 'Vente', 'CCP-F97', '-', '-', '158400', '-', 'D'),
(183, 'ER01', 'ERIK', '2022-08-10', 'CCP-F98', 'Vente', 'CCP-F98', '-', '-', '198000', '-', 'D'),
(184, 'ER01', 'ERIK', '2022-08-10', 'CCP-F99', 'Vente', 'CCP-F99', '-', '-', '600000', '-', 'D'),
(185, 'ER01', 'ERIK', '2022-08-11', 'CCP-F100', 'Vente', 'CCP-F100', '-', '-', '198000', '-', 'D'),
(186, 'ER01', 'ERIK', '2022-08-11', 'CCP-F101', 'Vente', 'CCP-F101', '-', '-', '480000', '-', 'D'),
(187, 'ER01', 'ERIK', '2022-08-12', '29', 'Trésorerie', '29', '-', '250000', '-', '-', 'AVANCE SR ACHAT'),
(193, 'ER01', 'ERIK', '2022-08-12', 'SCE104', 'Vente', 'SCE104', '-', '-', '405000', '-', 'D'),
(195, 'ER01', 'ERIK', '2022-08-13', 'CCP-F106', 'Vente', 'CCP-F106', '-', '-', '686400', '-', 'D'),
(196, 'FAT', 'FATAO GAZ', '2022-08-13', 'CCP-F107', 'Vente', 'CCP-F107', '-', '-', '216000', '-', 'D'),
(197, 'FAT', 'FATAO GAZ', '2022-08-13', 'ope113', 'CCP', 'CCP-F107', '-', '-', '-', '216000', 'Encaissement de facture en espèce'),
(198, 'R0', 'REHOBOPH', '2022-08-13', 'CCP-F108', 'Vente', 'CCP-F108', '-', '-', '78000', '-', 'D'),
(199, 'L1', 'LAMBO GAZ', '2022-08-12', 'CCP-F109', 'Vente', 'CCP-F109', '-', '-', '118800', '-', 'D'),
(200, 'M1', 'MILLA GAZ', '2022-08-12', 'CCP-F110', 'Vente', 'CCP-F110', '-', '-', '102000', '-', 'D'),
(201, 'M1', 'MILLA GAZ', '2022-08-13', 'ope114', 'O.D', 'Avance', '102000', '-', '-', '-', 'Imputation avance/facture CCP-F110'),
(202, 'M1', 'MILLA GAZ', '2022-08-13', 'ope114', 'O.D', 'CCP-F110', '-', '-', '-', '102000', 'Imputation avance/facture CCP-F110'),
(203, 'L1', 'LAMBO GAZ', '2022-08-13', 'ope115', 'CCP', 'CCP-F109', '-', '-', '-', '118800', 'Encaissement de facture en espèce'),
(204, 'L1', 'LAMBO GAZ', '2022-08-13', '31', 'Trésorerie', '31', '-', '181200', '-', '-', 'Avance par surplus de caisse'),
(205, 'R0', 'REHOBOPH', '2022-08-13', 'ope116', 'CCP', 'CCP-F108', '-', '-', '-', '68000', 'Encaissement de facture en espèce'),
(207, 'F001', 'FIL OPARK GAZ', '2022-08-13', 'CCP-F112', 'Vente', 'CCP-F112', '-', '-', '288000', '-', 'D'),
(215, 'F001', 'FIL OPARK GAZ', '2022-08-13', 'ope119', 'CCP', 'CCP-F112', '-', '-', '-', '288000', 'Encaissement de facture en espèce'),
(216, 'PR02', 'PROMO GAZ FECANDINE', '2022-08-13', 'CCP-F115', 'Vente', 'CCP-F115', '-', '-', '343600', '-', 'D'),
(217, 'PR02', 'PROMO GAZ FECANDINE', '2022-08-13', 'ope121', 'CCP', 'CCP-F115', '-', '-', '-', '343600', 'Encaissement de facture en espèce'),
(218, 'FAT', 'FATAO GAZ', '2022-08-13', '33', 'Trésorerie', '33', '-', '95000', '-', '-', 'AVANCE SUR ACHAT'),
(219, 'ER01', 'ERIK', '2022-08-13', 'SCE116', 'Vente', 'SCE116', '-', '-', '4074460', '-', 'D'),
(220, 'ER01', 'ERIK', '2022-08-13', 'ope122', 'CCP', 'SCE116', '-', '-', '-', '800000', 'Encaissement de facture en espèce'),
(221, 'A', 'ALEX GAZ', '2022-08-13', 'CCP-F117', 'Vente', 'CCP-F117', '-', '-', '133030', '-', 'D'),
(222, 'ZA1', 'ZAKARI GAZ', '2022-08-13', 'CCP-F118', 'Vente', 'CCP-F118', '-', '-', '75166', '-', 'D'),
(223, 'I001', 'IPG YAOVI GAZ', '2022-08-13', 'CCP-F119', 'Vente', 'CCP-F119', '-', '-', '107380', '-', 'D'),
(224, 'DA', 'DAHOE GAZ', '2022-08-13', 'CCP-F120', 'Vente', 'CCP-F120', '-', '-', '198410', '-', 'D'),
(225, 'EXO', 'EXODUS GAZ', '2022-08-13', 'SCE121', 'Vente', 'SCE121', '-', '-', '17500', '-', 'D'),
(226, 'C001', 'CENTRALE GAZ', '2022-08-13', 'CCP-F122', 'Vente', 'CCP-F122', '-', '-', '128856', '-', 'D'),
(227, 'EXO', 'EXODUS GAZ', '2022-08-13', 'ope123', 'CCP', 'SCE121', '-', '-', '-', '17500', 'Encaissement de facture en espèce'),
(228, 'C001', 'CENTRALE GAZ', '2022-08-13', 'ope124', 'CCP', 'CCP-F122', '-', '-', '-', '128856', 'Encaissement de facture en espèce'),
(230, 'ER01', 'ERIK', '2022-08-13', '34', 'Trésorerie', '34', '-', '2409552', '-', '-', 'TRANSPORT 2EME TRIMESTRE'),
(231, 'KT', 'KLARA GAZ', '2022-08-14', 'CCP-F124', 'Vente', 'CCP-F124', '-', '-', '322140', '-', 'D'),
(232, 'E002', 'ERIK DJAGBLE', '2022-08-13', 'CCP-F125', 'Vente', 'CCP-F125', '-', '-', '826820', '-', 'D'),
(233, 'E002', 'ERIK DJAGBLE', '2022-08-14', 'ope125', 'CCP', 'CCP-F125', '-', '-', '-', '826820', 'Encaissement de facture en espèce'),
(234, 'KT', 'KLARA GAZ', '2022-08-14', 'ope126', 'CCP', 'CCP-F124', '-', '-', '-', '322140', 'Encaissement de facture en espèce'),
(235, 'DA', 'DAHOE GAZ', '2022-08-14', 'ope127', 'CCP', 'CCP-F120', '-', '-', '-', '198410', 'Encaissement de facture en espèce'),
(236, 'I001', 'IPG YAOVI GAZ', '2022-08-14', 'ope128', 'CCP', 'CCP-F119', '-', '-', '-', '107380', 'Encaissement de facture en espèce'),
(237, 'ZA1', 'ZAKARI GAZ', '2022-08-14', 'ope129', 'CCP', 'CCP-F118', '-', '-', '-', '75166', 'Encaissement de facture en espèce'),
(238, 'A', 'ALEX GAZ', '2022-08-14', 'ope130', 'CCP', 'CCP-F117', '-', '-', '-', '133030', 'Encaissement de facture en espèce'),
(239, 'L1', 'LAMBO GAZ', '2022-08-14', 'CCP-F126', 'Vente', 'CCP-F126', '-', '-', '256750', '-', 'D'),
(240, 'TI01', 'TINA MACKET ', '2022-08-15', 'CCP-F127', 'Vente', 'CCP-F127', '-', '-', '154026', '-', 'D'),
(241, 'MO', 'MOMO GAZ', '2022-08-15', 'CCP-F128', 'Vente', 'CCP-F128', '-', '-', '662880', '-', 'D'),
(242, 'CO1', 'CONFIANCE GAZ', '2022-08-15', 'CCP-F129', 'Vente', 'CCP-F129', '-', '-', '214752', '-', 'D'),
(244, 'TI02', 'TIMBROWN GAZ', '2022-08-15', 'CCP-F131', 'Vente', 'CCP-F131', '-', '-', '144300', '-', 'D'),
(245, 'EM02', 'EMANUEL APECITO', '2022-08-15', 'CCP-F132', 'Vente', 'CCP-F132', '-', '-', '94252', '-', 'D'),
(246, 'L1', 'LAMBO GAZ', '2022-08-14', 'SCE133', 'Vente', 'SCE133', '-', '-', '430080', '-', 'D'),
(247, 'L1', 'LAMBO GAZ', '2022-08-14', 'ope131', 'CCP', 'SCE133', '-', '-', '-', '400000', 'Encaissement de facture en espèce'),
(248, 'DU01', 'DUCO GAZ', '2022-08-15', 'CCP-F134', 'Vente', 'CCP-F134', '-', '-', '392046', '-', 'D'),
(249, 'L1', 'LAMBO GAZ', '2022-08-14', 'SCE135', 'Vente', 'SCE135', '-', '-', '166560', '-', 'D'),
(250, 'L1', 'LAMBO GAZ', '2022-08-14', '35', 'Trésorerie', '35', '-', '21000', '-', '-', 'ACHAT DES VOLAILLES'),
(251, 'E002', 'ERIK DJAGBLE', '2022-08-11', 'CCP-F136', 'Vente', 'CCP-F136', '-', '-', '841732', '-', 'D'),
(252, 'E002', 'ERIK DJAGBLE', '2022-08-05', 'CCP-F137', 'Vente', 'CCP-F137', '-', '-', '998197', '-', 'D'),
(253, 'ER01', 'ERIK', '2022-08-02', '138', 'Vente', '138', '-', '-', '96000', '-', 'D'),
(254, 'EXO', 'EXODUS GAZ', '2022-08-14', 'SCE139', 'Vente', 'SCE139', '-', '-', '105840', '-', 'D'),
(259, 'ER01', 'ERIK', '2022-08-15', '36', 'Trésorerie', '36', '-', '1000000', '-', '-', 'AVANCE ACHAT GAZ'),
(260, 'SA', 'SALI GAZ', '2022-08-15', 'CCP-F142', 'Vente', 'CCP-F142', '-', '-', '214760', '-', 'D'),
(261, 'MAW', 'MAWOUSSI GAZ', '2022-08-15', 'CCP-F143', 'Vente', 'CCP-F143', '-', '-', '101294', '-', 'D'),
(262, 'FD02', 'FIDELITAS GAZ', '2022-08-15', 'CCP-F144', 'Vente', 'CCP-F144', '-', '-', '209980', '-', 'D'),
(263, 'KZ02', 'KOZATOU GAZ', '2022-08-15', 'CCP-F145', 'Vente', 'CCP-F145', '-', '-', '214757', '-', 'D'),
(264, 'BE02', 'BEATRUC GAZ', '2022-08-15', 'CCP-F146', 'Vente', 'CCP-F146', '-', '-', '79340', '-', 'D'),
(266, 'TE', 'TECO/DRAMANE GAZ', '2022-08-15', 'CCP-F148', 'Vente', 'CCP-F148', '-', '-', '214760', '-', 'D'),
(267, 'DU01', 'DUCO GAZ', '2022-08-15', 'ope134', 'CCP', 'CCP-F134', '-', '-', '-', '392046', 'Encaissement de facture en espèce'),
(268, 'EN01', 'ENTREPRISE GAZ', '2022-08-15', 'CCP-F149', 'Vente', 'CCP-F149', '-', '-', '85902', '-', 'D'),
(269, 'AD', 'ADOUGBA GAZ', '2022-08-15', 'CCP-F150', 'Vente', 'CCP-F150', '-', '-', '128850', '-', 'D'),
(270, 'EN01', 'ENTREPRISE GAZ', '2022-08-15', 'CCP-F151', 'Vente', 'CCP-F151', '-', '-', '85900', '-', 'D'),
(271, 'J', 'JAQUE GAZ', '2022-08-15', 'CCP-F152', 'Vente', 'CCP-F152', '-', '-', '137200', '-', 'D'),
(272, 'BO2', 'BOUCHER GAZ', '2022-08-15', 'CCP-F153', 'Vente', 'CCP-F153', '-', '-', '139590', '-', 'D'),
(273, 'T001', 'TAZO 3 GAZ', '2022-08-15', 'CCP-F154', 'Vente', 'CCP-F154', '-', '-', '175978', '-', 'D'),
(274, 'TH02', 'THOMAS ', '2022-08-15', 'CCP-F155', 'Vente', 'CCP-F155', '-', '-', '352920', '-', 'D'),
(275, 'L1', 'LAMBO GAZ', '2022-08-15', 'CCP-F156', 'Vente', 'CCP-F156', '-', '-', '288010', '-', 'D'),
(276, 'L1', 'LAMBO GAZ', '2022-08-15', 'ope135', 'CCP', 'CCP-F156', '-', '-', '-', '288010', 'Encaissement de facture en espèce'),
(277, 'L1', 'LAMBO GAZ', '2022-08-15', '37', 'Trésorerie', '37', '-', '11990', '-', '-', 'Avance par surplus de caisse'),
(278, 'T001', 'TAZO 3 GAZ', '2022-08-15', 'ope136', 'CCP', 'CCP-F154', '-', '-', '-', '175978', 'Encaissement de facture en espèce'),
(279, 'T001', 'TAZO 3 GAZ', '2022-08-15', '38', 'Trésorerie', '38', '-', '6022', '-', '-', 'Avance par surplus de caisse'),
(280, 'EN01', 'ENTREPRISE GAZ', '2022-08-15', 'ope137', 'CCP', 'CCP-F151', '-', '-', '-', '85900', 'Encaissement de facture en espèce'),
(281, 'EN01', 'ENTREPRISE GAZ', '2022-08-15', 'ope138', 'CCP', 'CCP-F149', '-', '-', '-', '85902', 'Encaissement de facture en espèce'),
(282, 'NA01', 'NANEGBE GAZ', '2022-08-15', 'CCP-F157', 'Vente', 'CCP-F157', '-', '-', '270230', '-', 'D'),
(283, 'A', 'ALEX GAZ', '2022-08-15', 'CCP-F158', 'Vente', 'CCP-F158', '-', '-', '138160', '-', 'D'),
(285, 'A', 'ALEX GAZ', '2022-08-15', 'ope139', 'CCP', 'CCP-F158', '-', '-', '-', '138160', 'Encaissement de facture en espèce'),
(286, 'NE', 'PLANTATION /NEDJRO GAZ', '2022-08-15', 'CCP-F160', 'Vente', 'CCP-F160', '-', '-', '32214', '-', 'D'),
(287, 'Y', 'YAKOUBA GAZ', '2022-08-15', 'CCP-F161', 'Vente', 'CCP-F161', '-', '-', '128856', '-', 'D'),
(288, 'AD', 'ADOUGBA GAZ', '2022-08-15', 'CCP-F162', 'Vente', 'CCP-F162', '-', '-', '128850', '-', 'D'),
(289, 'G1', 'GERMAIN GAZ', '2022-08-15', 'CCP-F163', 'Vente', 'CCP-F163', '-', '-', '214760', '-', 'D'),
(290, 'F001', 'FIL OPARK GAZ', '2022-08-15', 'CCP-F164', 'Vente', 'CCP-F164', '-', '-', '311400', '-', 'D'),
(291, 'ME01', 'MEDE GAZ', '2022-08-15', 'CCP-F165', 'Vente', 'CCP-F165', '-', '-', '92340', '-', 'D'),
(292, 'TI02', 'TIMBROWN GAZ', '2022-08-15', 'CCP-F166', 'Vente', 'CCP-F166', '-', '-', '161070', '-', 'D'),
(293, 'NE', 'PLANTATION /NEDJRO GAZ', '2022-08-15', 'ope142', 'CCP', 'CCP-F160', '-', '-', '-', '32214', 'Encaissement de facture en espèce'),
(294, 'AD', 'ADOUGBA GAZ', '2022-08-15', 'ope143', 'CCP', 'CCP-F162', '-', '-', '-', '128850', 'Encaissement de facture en espèce'),
(295, 'Y', 'YAKOUBA GAZ', '2022-08-15', 'ope144', 'CCP', 'CCP-F161', '-', '-', '-', '128856', 'Encaissement de facture en espèce'),
(296, 'MAR', 'MARGO GAZ', '2022-08-15', 'CCP-F167', 'Vente', 'CCP-F167', '-', '-', '293622', '-', 'D'),
(297, 'KL', 'KOMLA TOTSI RAIL', '2022-08-15', 'CCP-F168', 'Vente', 'CCP-F168', '-', '-', '21476', '-', 'D'),
(298, 'KL', 'KOMLA TOTSI RAIL', '2022-08-15', 'CCP-F169', 'Vente', 'CCP-F169', '-', '-', '85900', '-', 'D'),
(299, 'KL', 'KOMLA TOTSI RAIL', '2022-08-15', 'ope145', 'CCP', 'CCP-F169', '-', '-', '-', '85900', 'Encaissement de facture en espèce'),
(300, 'KL', 'KOMLA TOTSI RAIL', '2022-08-15', 'ope146', 'CCP', 'CCP-F168', '-', '-', '-', '21476', 'Encaissement de facture en espèce'),
(301, 'J', 'JAQUE GAZ', '2022-08-15', 'ope147', 'CCP', 'CCP-F152', '-', '-', '-', '137200', 'Encaissement de facture en espèce'),
(302, 'MAR', 'MARGO GAZ', '2022-08-15', 'ope148', 'CCP', 'CCP-F167', '-', '-', '-', '293622', 'Encaissement de facture en espèce'),
(303, 'CO1', 'CONFIANCE GAZ', '2022-08-15', 'ope149', 'CCP', 'CCP-F129', '-', '-', '-', '214752', 'Encaissement de facture en espèce'),
(304, 'MO', 'MOMO GAZ', '2022-08-15', 'ope150', 'CCP', 'CCP-F128', '-', '-', '-', '662880', 'Encaissement de facture en espèce'),
(305, 'TI02', 'TIMBROWN GAZ', '2022-08-15', 'ope151', 'CCP', 'CCP-F166', '-', '-', '-', '161070', 'Encaissement de facture en espèce'),
(306, 'AD', 'ADOUGBA GAZ', '2022-08-15', 'ope152', 'CCP', 'CCP-F150', '-', '-', '-', '128850', 'Encaissement de facture en espèce'),
(307, 'BO2', 'BOUCHER GAZ', '2022-08-15', 'ope153', 'CCP', 'CCP-F153', '-', '-', '-', '139590', 'Encaissement de facture en espèce'),
(308, 'M1', 'MILLA GAZ', '2022-08-15', 'CCP-F170', 'Vente', 'CCP-F170', '-', '-', '214760', '-', 'D'),
(309, 'M1', 'MILLA GAZ', '2022-08-15', 'ope154', 'O.D', 'Avance', '214760', '-', '-', '-', 'Imputation avance/facture CCP-F170'),
(310, 'M1', 'MILLA GAZ', '2022-08-15', 'ope154', 'O.D', 'CCP-F170', '-', '-', '-', '214760', 'Imputation avance/facture CCP-F170'),
(311, 'KT', 'KLARA GAZ', '2022-08-15', 'CCP-F171', 'Vente', 'CCP-F171', '-', '-', '354354', '-', 'D'),
(312, 'MN01', 'MON NOM EST BENI', '2022-08-15', 'CCP-F172', 'Vente', 'CCP-F172', '-', '-', '161070', '-', 'D'),
(313, 'MN01', 'MON NOM EST BENI', '2022-08-15', 'ope156', 'CCP', 'CCP-F172', '-', '-', '-', '161070', 'Encaissement de facture en espèce'),
(314, 'F001', 'FIL OPARK GAZ', '2022-08-15', 'ope157', 'CCP', 'CCP-F164', '-', '-', '-', '311400', 'Encaissement de facture en espèce'),
(315, 'FAT', 'FATAO GAZ', '2022-08-15', 'CCP-F173', 'Vente', 'CCP-F173', '-', '-', '300660', '-', 'D'),
(316, 'ME01', 'MEDE GAZ', '2022-08-15', 'ope158', 'CCP', 'CCP-F165', '-', '-', '-', '92340', 'Encaissement de facture en espèce'),
(317, 'KZ02', 'KOZATOU GAZ', '2022-08-15', 'ope159', 'CCP', 'CCP-F145', '-', '-', '-', '214757', 'Encaissement de facture en espèce'),
(318, 'ZO02', 'ZOSSIME 3 GAZ', '2022-08-15', 'CCP-F174', 'Vente', 'CCP-F174', '-', '-', '279185', '-', 'D'),
(319, 'ER01', 'ERIK', '2022-08-15', 'CCP-F175', 'Vente', 'CCP-F175', '-', '-', '1159690', '-', 'D'),
(320, 'SO', 'SOULEMANE GAZ', '2022-08-15', 'CCP-F176', 'Vente', 'CCP-F176', '-', '-', '139594', '-', 'D'),
(321, 'R0', 'REHOBOPH', '2022-08-15', 'CCP-F177', 'Vente', 'CCP-F177', '-', '-', '171804', '-', 'D'),
(322, 'R0', 'REHOBOPH', '2022-08-15', 'ope160', 'CCP', 'CCP-F177', '-', '-', '-', '106000', 'Encaissement de facture en espèce'),
(323, 'SO', 'SOULEMANE GAZ', '2022-08-15', 'ope161', 'CCP', 'CCP-F176', '-', '-', '-', '139594', 'Encaissement de facture en espèce'),
(324, 'GD01', 'GLOIRE DE DIEU', '2022-08-15', 'CCP-F178', 'Vente', 'CCP-F178', '-', '-', '107377', '-', 'D'),
(325, 'N', 'NUMAR', '2022-08-15', 'CCP-F179', 'Vente', 'CCP-F179', '-', '-', '107380', '-', 'D'),
(326, 'GD01', 'GLOIRE DE DIEU', '2022-08-15', 'ope162', 'CCP', 'CCP-F178', '-', '-', '-', '107377', 'Encaissement de facture en espèce'),
(327, 'KT', 'KLARA GAZ', '2022-08-15', 'ope163', 'CCP', 'CCP-F171', '-', '-', '-', '354354', 'Encaissement de facture en espèce'),
(328, 'FAT', 'FATAO GAZ', '2022-08-15', 'ope164', 'CCP', 'CCP-F173', '-', '-', '-', '300660', 'Encaissement de facture en espèce'),
(329, 'TE', 'TECO/DRAMANE GAZ', '2022-08-15', 'ope165', 'CCP', 'CCP-F148', '-', '-', '-', '214760', 'Encaissement de facture en espèce'),
(330, 'BE02', 'BEATRUC GAZ', '2022-08-15', 'ope166', 'CCP', 'CCP-F146', '-', '-', '-', '79340', 'Encaissement de facture en espèce'),
(331, 'N', 'NUMAR', '2022-08-15', 'ope168', 'CCP', 'CCP-F179', '-', '-', '-', '107380', 'Encaissement de facture en espèce'),
(332, 'ER01', 'ERIK', '2022-08-15', 'ope169', 'CCP', 'CCP-F175', '-', '-', '-', '511690', 'Encaissement de facture en espèce'),
(333, 'ER01', 'ERIK', '2022-08-12', 'CCP-F180', 'Vente', 'CCP-F180', '-', '-', '354354', '-', 'D'),
(334, 'ER01', 'ERIK', '2022-08-15', '181', 'Vente', '181', '-', '-', '182000', '-', 'D'),
(335, 'ER01', 'ERIK', '2022-08-15', 'ope172', 'CCP', '181', '-', '-', '-', '25000', 'Encaissement de facture en espèce'),
(336, 'ER01', 'ERIK', '2022-08-15', 'ope173', 'CCP', 'CCP-F180', '-', '-', '-', '156354', 'Encaissement de facture en espèce'),
(338, 'C1', 'CINKANCE MARO GAZ', '2022-08-15', 'SCE183', 'Vente', 'SCE183', '-', '-', '845000', '-', 'D'),
(339, 'C1', 'CINKANCE MARO GAZ', '2022-08-15', 'ope174', 'CCP', 'SCE183', '-', '-', '-', '475000', 'Encaissement de facture en espèce'),
(340, 'FD02', 'FIDELITAS GAZ', '2022-08-15', 'ope175', 'CCP', 'CCP-F144', '-', '-', '-', '209980', 'Encaissement de facture en espèce'),
(341, 'ER01', 'ERIK', '2022-08-16', '39', 'Trésorerie', '39', '-', '1650000', '-', '-', 'ERIK VERSSEMENT'),
(342, 'GE01', 'GER GAZ', '2022-08-16', 'CCP-F184', 'Vente', 'CCP-F184', '-', '-', '179788', '-', 'D'),
(343, 'KL', 'KOMLA TOTSI RAIL', '2022-08-16', 'CCP-F185', 'Vente', 'CCP-F185', '-', '-', '84600', '-', 'D'),
(344, 'EV1', 'SAVENA GAZ', '2022-08-16', 'CCP-F186', 'Vente', 'CCP-F186', '-', '-', '169200', '-', 'D'),
(345, 'BC', 'BUSNESS CENTER', '2022-08-16', 'CCP-F187', 'Vente', 'CCP-F187', '-', '-', '486840', '-', 'D'),
(346, 'BC', 'BUSNESS CENTER', '2022-08-16', 'ope177', 'CCP', 'CCP-F187', '-', '-', '-', '486840', 'Encaissement de facture en espèce'),
(347, 'EV1', 'SAVENA GAZ', '2022-08-16', 'ope178', 'CCP', 'CCP-F186', '-', '-', '-', '169200', 'Encaissement de facture en espèce'),
(348, 'GE01', 'GER GAZ', '2022-08-16', 'ope179', 'CCP', 'CCP-F184', '-', '-', '-', '179788', 'Encaissement de facture en espèce'),
(349, 'ER01', 'ERIK', '2022-08-16', 'CCP-F188', 'Vente', 'CCP-F188', '-', '-', '158820', '-', 'D'),
(350, 'LA01', 'LARE', '2022-08-16', 'CCP-F189', 'Vente', 'CCP-F189', '-', '-', '84600', '-', 'D'),
(351, 'EN06', 'ENOULI GAZ', '2022-08-16', 'CCP-F190', 'Vente', 'CCP-F190', '-', '-', '74116', '-', 'D'),
(352, 'VI05', 'VIGUEUR ', '2022-08-16', 'CCP-F191', 'Vente', 'CCP-F191', '-', '-', '179788', '-', 'D'),
(353, 'ER01', 'ERIK', '2022-08-16', 'SCE192', 'Vente', 'SCE192', '-', '-', '6500', '-', 'D'),
(354, 'FI04', 'GAKPO GAZ', '2022-08-16', 'CCP-F193', 'Vente', 'CCP-F193', '-', '-', '376460', '-', 'D'),
(355, 'FI04', 'GAKPO GAZ', '2022-08-16', 'ope180', 'CCP', 'CCP-F193', '-', '-', '-', '28800', 'Encaissement de facture en espèce'),
(356, 'FI04', 'GAKPO GAZ', '2022-08-16', 'ope181', 'CCP', 'CCP-F193', '-', '-', '-', '6000', 'Encaissement de facture en espèce'),
(357, 'BL07', 'BLESSED GAZ', '2022-08-16', 'CCP-F194', 'Vente', 'CCP-F194', '-', '-', '126524', '-', 'D'),
(358, 'DO1', 'DOUTI', '2022-08-15', 'CCP-F195', 'Vente', 'CCP-F195', '-', '-', '254112', '-', 'D'),
(359, 'ZA1', 'ZAKARI GAZ', '2022-08-16', 'CCP-F196', 'Vente', 'CCP-F196', '-', '-', '84600', '-', 'D'),
(360, 'SO01', 'SOMITE', '2022-08-16', 'CCP-F197', 'Vente', 'CCP-F197', '-', '-', '84704', '-', 'D'),
(361, 'ME ', 'METROPOLICE GAZ', '2022-08-16', 'CCP-F198', 'Vente', 'CCP-F198', '-', '-', '148232', '-', 'D'),
(362, 'ME ', 'METROPOLICE GAZ', '2022-08-16', 'ope182', 'CCP', 'CCP-F198', '-', '-', '-', '148232', 'Encaissement de facture en espèce'),
(363, 'SO01', 'SOMITE', '2022-08-16', 'ope183', 'CCP', 'CCP-F197', '-', '-', '-', '84704', 'Encaissement de facture en espèce'),
(364, 'ZA1', 'ZAKARI GAZ', '2022-08-16', 'ope184', 'CCP', 'CCP-F196', '-', '-', '-', '84600', 'Encaissement de facture en espèce'),
(366, 'A ', 'AMETODE GAZ', '2022-08-16', 'CCP-F200', 'Vente', 'CCP-F200', '-', '-', '201120', '-', 'D'),
(367, 'VI05', 'VIGUEUR ', '2022-08-16', 'ope185', 'CCP', 'CCP-F191', '-', '-', '-', '179788', 'Encaissement de facture en espèce'),
(368, 'EN06', 'ENOULI GAZ', '2022-08-16', 'ope186', 'CCP', 'CCP-F190', '-', '-', '-', '74116', 'Encaissement de facture en espèce'),
(369, 'LA01', 'LARE', '2022-08-16', 'ope187', 'CCP', 'CCP-F189', '-', '-', '-', '84600', 'Encaissement de facture en espèce'),
(370, 'K01', 'KOWONI GAZ', '2022-08-16', 'CCP-F201', 'Vente', 'CCP-F201', '-', '-', '293040', '-', 'D'),
(371, 'K01', 'KOWONI GAZ', '2022-08-16', 'ope188', 'CCP', 'CCP-F201', '-', '-', '-', '252500', 'Encaissement de facture en espèce'),
(372, 'K01', 'KOWONI GAZ', '2022-08-16', 'ope189', 'CCP', 'CCP-F201', '-', '-', '-', '40540', 'Encaissement de facture en espèce'),
(373, 'K4', 'KOBNA ', '2022-08-16', '40', 'Trésorerie', '40', '-', '200000', '-', '-', 'AV'),
(374, 'K4', 'KOBNA ', '2022-08-16', 'CCP-F202', 'Vente', 'CCP-F202', '-', '-', '105880', '-', 'D'),
(375, 'K4', 'KOBNA ', '2022-08-16', 'ope190', 'O.D', 'Avance', '105880', '-', '-', '-', 'Imputation avance/facture CCP-F202'),
(376, 'K4', 'KOBNA ', '2022-08-16', 'ope190', 'O.D', 'CCP-F202', '-', '-', '-', '105880', 'Imputation avance/facture CCP-F202'),
(377, 'A ', 'AMETODE GAZ', '2022-08-22', 'ope191', 'CCP', 'CCP-F200', '-', '-', '-', '201120', 'Encaissement de facture en espèce'),
(378, 'DO1', 'DOUTI', '2022-09-01', 'ope192', 'CCP', 'CCP-F195', '-', '-', '-', '2000', 'Encaissement de facture en espèce'),
(380, 'KO01', 'KOLANI ', '2022-09-01', '41', 'Trésorerie', '41', '-', '5000', '-', '-', 'VDSD'),
(381, 'EV1', 'SAVENA GAZ', '2022-09-01', '42', 'Trésorerie', '42', '-', '1000', '-', '-', 'KS');

-- --------------------------------------------------------

--
-- Structure de la table `tb_retour_bout`
--

CREATE TABLE `tb_retour_bout` (
  `id_rb` int(11) NOT NULL,
  `lot` varchar(12) DEFAULT NULL,
  `camion` varchar(12) DEFAULT NULL,
  `chauf` varchar(100) DEFAULT NULL,
  `date_charg` date DEFAULT NULL,
  `date_ret` date DEFAULT NULL,
  `codeArt` varchar(12) DEFAULT NULL,
  `designationArt` varchar(100) DEFAULT NULL,
  `qte_ch` int(11) DEFAULT NULL,
  `qte_ret` int(11) DEFAULT NULL,
  `qte_eq` int(11) DEFAULT NULL,
  `usager` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_retour_bout`
--

INSERT INTO `tb_retour_bout` (`id_rb`, `lot`, `camion`, `chauf`, `date_charg`, `date_ret`, `codeArt`, `designationArt`, `qte_ch`, `qte_ret`, `qte_eq`, `usager`) VALUES
(1, '1', 'TG 9630 BH', 'MABA', '2022-08-21', '2022-08-21', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 14, 11, 3, ''),
(2, '1', 'TG 9630 BH', 'MABA', '2022-08-21', '2022-08-21', '011C50', 'Charge gaz butane 50Kgs sodigaz', 23, 10, 13, '');

-- --------------------------------------------------------

--
-- Structure de la table `tb_retour_mission`
--

CREATE TABLE `tb_retour_mission` (
  `id_ret_mission` int(11) NOT NULL,
  `num_mission_ord` varchar(20) NOT NULL,
  `num_immat_veh` varchar(20) NOT NULL,
  `date_ret` date NOT NULL,
  `heure_ret` time NOT NULL,
  `observation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tb_sortie`
--

CREATE TABLE `tb_sortie` (
  `id_sortie` int(11) NOT NULL,
  `code_art_src` varchar(30) DEFAULT NULL,
  `code_art` varchar(20) DEFAULT NULL,
  `code_mag` varchar(20) DEFAULT NULL,
  `qte_sortie` int(11) DEFAULT NULL,
  `type_sortie` int(1) NOT NULL,
  `usager` varchar(20) DEFAULT NULL,
  `date_sortie` datetime DEFAULT NULL,
  `piece` varchar(30) DEFAULT NULL,
  `statut_canc` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_sortie`
--

INSERT INTO `tb_sortie` (`id_sortie`, `code_art_src`, `code_art`, `code_mag`, `qte_sortie`, `type_sortie`, `usager`, `date_sortie`, `piece`, `statut_canc`) VALUES
(1, '', '011C25', 'PFGB', 10, 0, '1001', '2022-08-04 19:03:36', '', 0),
(2, '', '011C12', 'PFGB', 70, 0, '1001', '2022-08-04 19:20:50', '', 0),
(3, '', '011C12', 'PFGB', 18, 0, '1002', '2022-08-04 21:48:58', '', 0),
(4, '', '011C25', 'PFGB', 1, 0, '1002', '2022-08-04 21:48:58', '', 0),
(5, '', '011C12', 'PFGB', 33, 0, '1002', '2022-08-04 22:26:16', '', 0),
(6, '', '011C25', 'PFGB', 3, 0, '1002', '2022-08-04 22:26:16', '', 0),
(7, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-05 08:41:50', '', 0),
(8, '', '011C06', 'PFGB', 10, 0, '1002', '2022-08-05 08:41:50', '', 0),
(9, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-05 10:45:06', '', 0),
(10, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-05 10:45:06', '', 0),
(11, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-05 11:04:36', '', 0),
(12, '', '011C12', 'PFGB', 29, 0, '1002', '2022-08-05 11:13:02', '', 0),
(13, '', '011C12', 'PFGB', 85, 0, '1002', '2022-08-05 14:12:05', '', 0),
(14, '', '011C25', 'PFGB', 10, 0, '1002', '2022-08-05 14:12:05', '', 0),
(15, '', '011C50', 'PFGB', 5, 0, '1002', '2022-08-05 14:20:10', '', 0),
(16, '', '011C12', 'PFGB', 29, 0, '1002', '2022-08-05 17:17:06', '', 0),
(17, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-05 17:56:55', '', 0),
(18, '', '02106K.', 'PFBC', 80, 0, '1002', '2022-08-06 10:24:49', '', 0),
(19, '', '02112K', 'PFBC', 10, 0, '1002', '2022-08-06 10:24:49', '', 0),
(20, '', '02103K', 'PFBC', 10, 0, '1002', '2022-08-06 10:24:49', '', 0),
(21, '', '011C12', 'PFGB', 16, 0, '1002', '2022-08-06 10:32:09', '', 0),
(22, '', '011C06.', 'PFGB', 2, 0, '1002', '2022-08-06 10:32:09', '', 0),
(23, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-06 10:32:09', '', 0),
(24, '', '011C06E', 'PFGB', 2, 0, '1002', '2022-08-06 10:32:09', '', 0),
(25, '', '011C12', 'PFGB', 17, 0, '1002', '2022-08-05 11:25:56', '', 0),
(26, '', '011C06', 'PFGB', 35, 0, '1002', '2022-08-06 12:19:40', '', 0),
(27, '', '011C12', 'PFGB', 26, 0, '1002', '2022-08-06 12:19:40', '', 0),
(28, '', '02112K', 'PFBC', 180, 0, '1002', '2020-01-01 17:02:32', '', 0),
(29, '', '02106K.', 'PFBC', 21, 0, '1002', '2020-01-01 17:02:32', '', 0),
(30, '', '02125K', 'PFBC', 2, 0, '1002', '2020-01-01 17:02:32', '', 0),
(31, '', '0250K', 'PFBC', 2, 0, '1002', '2020-01-01 17:02:32', '', 0),
(32, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-01 17:18:34', '', 0),
(33, '', '011C50', 'PFGB', 5, 0, '1002', '2022-08-01 17:18:34', '', 0),
(34, '', '011C25', 'PFGB', 3, 0, '1002', '2022-08-01 17:18:34', '', 0),
(35, '', '011C06', 'PFGB', 36, 0, '1002', '2022-08-01 17:18:34', '', 0),
(36, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-02 17:21:17', '', 0),
(37, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-02 17:21:17', '', 0),
(38, '', '011C12', 'PFGB', 50, 0, '1002', '2022-08-03 17:24:04', '', 0),
(39, '', '011C06', 'PFGB', 18, 0, '1002', '2022-08-03 17:24:04', '', 0),
(40, '', '011C25', 'PFGB', 5, 0, '1002', '2022-08-03 17:24:04', '', 0),
(41, '', '011C12', 'PFGB', 53, 0, '1002', '2022-08-03 17:25:49', '', 0),
(42, '', '011C50', 'PFGB', 3, 0, '1002', '2022-08-03 17:25:49', '', 0),
(43, '', '011C12', 'PFGB', 4, 0, '1002', '2022-08-03 17:28:35', '', 0),
(44, '', '011C25', 'PFGB', 10, 0, '1002', '2022-08-04 17:30:04', '', 0),
(45, '', '011C12', 'PFGB', 85, 0, '1002', '2022-08-04 17:30:04', '', 0),
(46, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-05 17:32:12', '', 0),
(47, '', '011C12', 'PFGB', 26, 0, '1002', '2022-08-06 17:33:20', '', 0),
(48, '', '011C06.', 'PFGB', 35, 0, '1002', '2022-08-06 17:33:20', '', 0),
(49, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-05 17:49:41', '', 0),
(50, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-02 19:01:05', '', 0),
(51, '', '011C06', 'PFGB', 20, 0, '1002', '2022-08-02 19:01:05', '', 0),
(52, '', '011C12', 'PFGB', 18, 0, '1002', '2022-08-07 16:04:55', '', 0),
(53, '', '011C03', 'PFGB', 10, 0, '1002', '2022-08-07 16:04:55', '', 0),
(54, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-07 16:04:55', '', 0),
(55, '', '011C25', 'PFGB', 1, 0, '1002', '2022-08-07 16:04:55', '', 0),
(56, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-08 20:48:13', '', 0),
(57, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-08 20:49:11', '', 0),
(58, '', '011C06.', 'PFGB', 4, 0, '1002', '2022-08-08 20:49:11', '', 0),
(59, '', '011C06', 'PFGB', 4, 0, '1002', '2022-08-08 20:49:11', '', 0),
(60, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-08 20:49:11', '', 0),
(61, '', '011C25', 'PFGB', 2, 0, '1002', '2022-08-08 20:49:11', '', 0),
(62, '', '011C12', 'PFGB', 9, 0, '1002', '2022-08-08 20:51:31', '', 0),
(63, '', '011C06', 'PFGB', 6, 0, '1002', '2022-08-08 20:51:31', '', 0),
(64, '', '011C12', 'PFGB', 16, 0, '1002', '2022-08-08 20:52:51', '', 0),
(65, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-08 20:52:51', '', 0),
(66, '', '011C06', 'PFGB', 5, 0, '1002', '2022-08-08 20:52:51', '', 0),
(67, '', '011C12', 'PFGB', 90, 0, '1002', '2022-08-08 21:23:24', '', 0),
(68, '', '011C06', 'PFGB', 8, 0, '1002', '2022-08-08 21:23:24', '', 0),
(69, '', '011C50', 'PFGB', 7, 0, '1002', '2022-08-08 21:23:24', '', 0),
(70, '', '011C06.', 'PFGB', 12, 0, '1002', '2022-08-08 21:23:24', '', 0),
(71, '', '011C06', 'PFGB', 10, 0, '1002', '2022-08-05 21:26:54', '', 0),
(72, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-05 21:26:54', '', 0),
(73, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-05 21:27:58', '', 0),
(74, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-05 21:27:58', '', 0),
(75, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-09 12:18:43', '', 0),
(76, '', '02106K', 'PFBC', 18, 0, '1002', '2022-08-09 12:20:19', '', 0),
(77, '', '011C12', 'PFGB', 22, 0, '1002', '2022-08-09 12:21:28', '', 0),
(78, '', '011C50', 'PFGB', 7, 0, '1002', '2022-08-09 12:21:28', '', 0),
(79, '', '011C06', 'PFGB', 14, 0, '1002', '2022-08-09 12:21:28', '', 0),
(80, '', '011C06', 'PFGB', 45, 0, '1002', '2022-08-09 13:26:02', '', 0),
(81, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-09 13:26:02', '', 0),
(82, '', '011C06.', 'PFGB', 13, 0, '1002', '2022-08-09 13:26:02', '', 0),
(83, '', '011C03', 'PFGB', 20, 0, '1002', '2022-08-09 13:26:02', '', 0),
(84, '', '011C12', 'PFGB', 25, 0, '1002', '2022-08-09 14:45:02', '', 0),
(85, '', '011C12', 'PFGB', 25, 0, '1002', '2022-08-09 14:52:25', '', 0),
(86, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-09 14:52:25', '', 0),
(87, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-09 14:58:08', '', 0),
(88, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-09 14:58:08', '', 0),
(89, '', '011C25', 'PFGB', 2, 0, '1002', '2022-08-09 14:58:08', '', 0),
(90, '', '011C06', 'PFGB', 8, 0, '1002', '2022-08-09 14:58:08', '', 0),
(91, '', '011C50', 'PFGB', 3, 0, '1002', '2022-08-09 15:50:04', '', 0),
(92, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-09 18:52:46', '', 0),
(93, '', '011C06', 'PFGB', 4, 0, '1002', '2022-08-09 18:52:46', '', 0),
(94, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-09 18:52:46', '', 0),
(95, '', '011C06', 'PFGB', 4, 0, '1002', '2022-08-09 18:56:56', '', 0),
(96, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-09 18:56:56', '', 0),
(97, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-09 18:56:56', '', 0),
(98, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-09 19:10:14', '', 0),
(99, '', '011C06.', 'PFGB', 9, 0, '1002', '2022-08-09 19:10:14', '', 0),
(100, '', '011C50', 'PFGB', 6, 0, '1002', '2022-08-09 19:10:14', '', 0),
(101, '', '011C06', 'PFGB', 22, 0, '1002', '2022-08-09 19:14:22', '', 0),
(102, '', '011C12', 'PFGB', 16, 0, '1002', '2022-08-09 19:14:22', '', 0),
(103, '', '011C06', 'PFGB', 45, 0, '1002', '2022-08-09 21:06:59', '', 0),
(104, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-09 21:06:59', '', 0),
(105, '', '011C06.', 'PFGB', 13, 0, '1002', '2022-08-09 21:06:59', '', 0),
(106, '', '011C03', 'PFGB', 20, 0, '1002', '2022-08-09 21:06:59', '', 0),
(107, '', '011C12', 'PFGB', 11, 0, '1002', '2022-08-10 08:28:47', '', 0),
(108, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-10 08:28:47', '', 0),
(109, '', '011C06', 'PFGB', 7, 0, '1002', '2022-08-10 08:28:47', '', 0),
(110, '', '011C06', 'PFGB', 20, 0, '1002', '2022-08-10 08:35:40', '', 0),
(111, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-10 08:36:27', '', 0),
(112, '', '011C12', 'PFGB', 26, 0, '1002', '2022-08-10 08:47:18', '', 0),
(113, '', '011C50', 'PFGB', 3, 0, '1002', '2022-08-10 08:47:18', '', 0),
(114, '', '011C12', 'PFGB', 33, 0, '1002', '2022-08-10 13:25:19', '', 0),
(115, '', '011C12', 'PFGB', 14, 0, '1002', '2022-08-10 16:30:57', '', 0),
(116, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-10 16:30:57', '', 0),
(117, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-11 16:14:45', '', 0),
(118, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-11 16:14:45', '', 0),
(119, '', '011C12', 'PFGB', 30, 0, '1002', '2022-08-11 16:19:30', '', 0),
(120, '', '011C06', 'PFGB', 8, 0, '1002', '2022-08-11 16:25:50', '', 0),
(121, '', '011C12', 'PFGB', 1, 0, '1002', '2022-08-11 16:25:50', '', 0),
(122, '', '011C12', 'PFGB', 26, 0, '1002', '2022-08-11 16:28:58', '', 0),
(123, '', '011C06', 'PFGB', 7, 0, '1002', '2022-08-11 16:28:58', '', 0),
(124, '', '011C06.', 'PFGB', 2, 0, '1002', '2022-08-11 16:28:58', '', 0),
(125, '', '011C12', 'PFGB', 13, 0, '1002', '2022-08-11 20:17:26', '', 0),
(126, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-11 20:18:45', '', 0),
(127, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-11 20:18:45', '', 0),
(128, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-11 20:20:55', '', 0),
(129, '', '011C12', 'PFGB', 30, 0, '1002', '2022-08-11 20:21:34', '', 0),
(130, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-11 20:22:20', '', 0),
(131, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-11 20:22:20', '', 0),
(132, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-11 20:23:27', '', 0),
(133, '', '011C12', 'PFGB', 100, 0, '1002', '2022-08-10 20:30:13', '', 0),
(134, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-10 20:31:06', '', 0),
(135, '', '011C12', 'PFGB', 4, 0, '1002', '2022-08-10 20:31:59', '', 0),
(136, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-10 20:31:59', '', 0),
(137, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-11 21:50:25', '', 0),
(138, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-11 22:23:50', '', 0),
(139, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-11 22:23:50', '', 0),
(140, '', '011C12', 'PFGB', 25, 0, '1002', '2022-08-11 22:28:05', '', 0),
(141, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-12 06:20:17', '', 0),
(142, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-12 06:20:17', '', 0),
(143, '', '011C50', 'PFGB', 6, 0, '1002', '2022-08-10 08:33:26', '', 0),
(144, '', '011C06.', 'PFGB', 5, 0, '1002', '2022-08-10 08:33:26', '', 0),
(145, '', '011C12', 'PFGB', 33, 0, '1002', '2022-08-11 08:36:19', '', 0),
(146, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-12 08:46:48', '', 0),
(147, '', '011C50', 'PFGB', 4, 0, '1002', '2022-08-12 08:46:48', '', 0),
(148, '', '011C12E', 'PFGB', 2, 0, '1002', '2022-08-12 08:46:48', '', 0),
(149, '', '011C06', 'PFGB', 10, 0, '1002', '2022-08-12 08:46:48', '', 0),
(150, '', '011C06.', 'PFGB', 1, 0, '1002', '2022-08-12 08:46:48', '', 0),
(151, '', '011C06', 'PFGB', 20, 0, '1002', '2022-08-11 09:05:10', '', 0),
(152, '', '011C12', 'PFGB', 21, 0, '1002', '2022-08-12 09:05:54', '', 0),
(153, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-12 09:05:54', '', 0),
(154, '', '011C06', 'PFGB', 8, 0, '1002', '2022-08-12 09:35:19', '', 0),
(155, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-12 09:35:19', '', 0),
(156, '', '011C03', 'PFGB', 6, 0, '1002', '2022-08-12 09:35:19', '', 0),
(157, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-12 09:56:07', '', 0),
(158, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-12 09:56:07', '', 0),
(159, '', '0250K', 'PFBC', 1, 0, '1002', '2022-08-12 10:53:49', '', 0),
(160, '', '011C06', 'PFGB', 30, 0, '1002', '2022-08-12 11:14:50', '', 0),
(161, '', '011C50', 'PFGB', 5, 0, '1002', '2022-08-12 11:14:50', '', 0),
(162, '', '011C12', 'PFGB', 50, 0, '1002', '2022-08-12 11:14:50', '', 0),
(163, '', '011C12', 'PFGB', 32, 0, '1002', '2022-08-12 11:16:44', '', 0),
(164, '', '011C50', 'PFGB', 7, 0, '1002', '2022-08-12 11:16:44', '', 0),
(165, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-12 11:34:41', '', 0),
(166, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-12 11:34:41', '', 0),
(167, '', '011C06', 'PFGB', 10, 0, '1002', '2022-08-12 11:34:41', '', 0),
(168, '', '011C06.', 'PFGB', 1, 0, '1002', '2022-08-12 11:34:41', '', 0),
(169, '', '011C12', 'PFGB', 180, 0, '1002', '2020-01-01 16:32:46', '', 0),
(170, '', '011C06.', 'PFGB', 21, 0, '1002', '2020-01-01 16:32:46', '', 0),
(171, '', '011C25', 'PFGB', 2, 0, '1002', '2020-01-01 16:32:46', '', 0),
(172, '', '011C50', 'PFGB', 2, 0, '1002', '2020-01-01 16:32:46', '', 0),
(173, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-01 16:34:40', '', 0),
(174, '', '011C50', 'PFGB', 5, 0, '1002', '2022-08-01 16:34:40', '', 0),
(175, '', '011C25', 'PFGB', 3, 0, '1002', '2022-08-01 16:34:40', '', 0),
(176, '', '011C06', 'PFGB', 36, 0, '1002', '2022-08-01 16:34:40', '', 0),
(177, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-02 16:36:07', '', 0),
(178, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-02 16:36:07', '', 0),
(179, '', '011C12', 'PFGB', 50, 0, '1002', '2022-08-03 16:37:14', '', 0),
(180, '', '011C06', 'PFGB', 18, 0, '1002', '2022-08-03 16:37:14', '', 0),
(181, '', '011C25', 'PFGB', 5, 0, '1002', '2022-08-03 16:37:14', '', 0),
(182, '', '011C12', 'PFGB', 53, 0, '1002', '2022-08-03 16:38:18', '', 0),
(183, '', '011C50', 'PFGB', 3, 0, '1002', '2022-08-03 16:38:18', '', 0),
(184, '', '011C12', 'PFGB', 4, 0, '1002', '2022-08-03 16:39:12', '', 0),
(185, '', '011C25', 'PFGB', 10, 0, '1002', '2022-08-04 16:39:47', '', 0),
(186, '', '011C12', 'PFGB', 85, 0, '1002', '2022-08-04 16:39:47', '', 0),
(187, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-05 16:40:30', '', 0),
(188, '', '011C06', 'PFGB', 35, 0, '1002', '2022-08-06 16:41:24', '', 0),
(189, '', '011C12', 'PFGB', 26, 0, '1002', '2022-08-06 16:41:24', '', 0),
(190, '', '011C12', 'PFGB', 90, 0, '1002', '2022-08-08 16:42:22', '', 0),
(191, '', '011C06', 'PFGB', 8, 0, '1002', '2022-08-08 16:42:22', '', 0),
(192, '', '011C50', 'PFGB', 7, 0, '1002', '2022-08-08 16:42:22', '', 0),
(193, '', '011C06.', 'PFGB', 8, 0, '1002', '2022-08-08 16:42:22', '', 0),
(194, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-09 16:43:45', '', 0),
(195, '', '011C06.', 'PFGB', 9, 0, '1002', '2022-08-09 16:43:45', '', 0),
(196, '', '011C50', 'PFGB', 6, 0, '1002', '2022-08-09 16:43:45', '', 0),
(197, '', '011C06', 'PFGB', 22, 0, '1002', '2022-08-09 16:44:38', '', 0),
(198, '', '011C12', 'PFGB', 16, 0, '1002', '2022-08-09 16:44:38', '', 0),
(199, '', '011C50', 'PFGB', 6, 0, '1002', '2022-08-10 16:45:30', '', 0),
(200, '', '011C06.', 'PFGB', 5, 0, '1002', '2022-08-10 16:45:30', '', 0),
(201, '', '011C12', 'PFGB', 33, 0, '1002', '2022-08-10 16:46:29', '', 0),
(202, '', '011C12', 'PFGB', 100, 0, '1002', '2022-08-10 16:47:06', '', 0),
(203, '', '011C12', 'PFGB', 33, 0, '1002', '2022-08-11 16:47:50', '', 0),
(204, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-11 16:48:27', '', 0),
(205, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-11 22:00:16', '', 0),
(206, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-11 22:00:16', '', 0),
(207, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-12 22:01:20', '', 0),
(208, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-12 22:01:20', '', 0),
(209, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-13 08:11:24', '', 0),
(210, '', '011C50', 'PFGB', 5, 0, '1002', '2022-08-13 08:11:24', '', 0),
(211, '', '011C06', 'PFGB', 30, 0, '1002', '2022-08-13 08:11:24', '', 0),
(212, '', '011C12', 'PFGB', 28, 0, '1002', '2022-08-13 10:49:30', '', 0),
(213, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-13 10:49:30', '', 0),
(214, '', '011C12', 'PFGB', 13, 0, '1002', '2022-08-13 10:56:00', '', 0),
(215, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-12 10:56:32', '', 0),
(216, '', '011C06', 'PFGB', 5, 0, '1002', '2022-08-12 10:56:32', '', 0),
(217, '', '011C06.', 'PFGB', 5, 0, '1002', '2022-08-12 10:56:32', '', 0),
(218, '', '011C12', 'PFGB', 17, 0, '1002', '2022-08-12 10:59:07', '', 0),
(219, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-13 11:04:43', '', 0),
(220, '', '011C06', 'PFGB', 30, 0, '1002', '2022-08-13 11:04:43', '', 0),
(221, '', '011C50', 'PFGB', 5, 0, '1002', '2022-08-13 11:04:43', '', 0),
(222, '', '011C12', 'PFGB', 32, 0, '1002', '2022-08-13 13:48:43', '', 0),
(223, '', '011C06.', 'PFGB', 18, 0, '1002', '2022-08-13 13:48:43', '', 0),
(224, '', '011C06', 'PFGB', 7, 0, '1002', '2022-08-13 13:48:43', '', 0),
(225, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-13 13:48:43', '', 0),
(226, '', '011C50', 'PFGB', 4, 0, '1002', '2022-08-13 14:12:39', '', 0),
(227, '', '011C12', 'PFGB', 1, 0, '1002', '2022-08-13 14:12:39', '', 0),
(228, '', '011C03', 'PFGB', 1, 0, '1002', '2022-08-13 14:12:39', '', 0),
(229, '', '011C03.', 'PFGB', 2, 0, '1002', '2022-08-13 14:12:39', '', 0),
(230, '', '011C50', 'PFGB', 8, 0, '1002', '2022-08-13 15:55:21', '', 0),
(231, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-13 16:55:11', '', 0),
(232, '', '011C06', 'PFGB', 5, 0, '1002', '2022-08-13 16:55:11', '', 0),
(233, '', '011C12', 'PFGB', 7, 0, '1002', '2022-08-13 17:01:02', '', 0),
(234, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-13 17:05:08', '', 0),
(235, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-13 17:05:48', '', 0),
(236, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-13 17:05:48', '', 0),
(237, '', '011C06', 'PFGB', 1, 0, '1002', '2022-08-13 17:05:48', '', 0),
(238, '', '011C12', 'PFGB', 12, 0, '1002', '2022-08-13 21:30:28', '', 0),
(239, '', '011C12', 'PFGB', 17, 0, '1002', '2022-08-13 21:45:57', '', 0),
(240, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-13 21:45:57', '', 0),
(241, '', '011C12', 'PFGB', 30, 0, '1002', '2022-08-14 09:29:01', '', 0),
(242, '', '011C12', 'PFGB', 65, 0, '1002', '2022-08-13 09:29:25', '', 0),
(243, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-13 09:29:25', '', 0),
(244, '', '011C25', 'PFGB', 2, 0, '1002', '2022-08-13 09:29:25', '', 0),
(245, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-14 09:48:02', '', 0),
(246, '', '011C50', 'PFGB', 3, 0, '1002', '2022-08-14 09:48:02', '', 0),
(247, '', '011C06', 'PFGB', 4, 0, '1002', '2022-08-14 09:48:02', '', 0),
(248, '', '011C06', 'PFGB', 5, 0, '1002', '2022-08-15 21:03:28', '', 0),
(249, '', '011C06.', 'PFGB', 2, 0, '1002', '2022-08-15 21:03:28', '', 0),
(250, '', '011C12', 'PFGB', 7, 0, '1002', '2022-08-15 21:03:28', '', 0),
(251, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-15 21:03:28', '', 0),
(252, '', '011C12', 'PFGB', 40, 0, '1002', '2022-08-15 21:05:23', '', 0),
(253, '', '011C50', 'PFGB', 4, 0, '1002', '2022-08-15 21:05:23', '', 0),
(254, '', '011C06.', 'PFGB', 6, 0, '1002', '2022-08-15 21:05:23', '', 0),
(255, '', '011C06', 'PFGB', 6, 0, '1002', '2022-08-15 21:05:23', '', 0),
(256, '', '011C50', 'PFGB', 4, 0, '1002', '2022-08-15 21:08:15', '', 0),
(257, '', '011C12', 'PFGB', 4, 0, '1002', '2022-08-15 21:08:15', '', 0),
(258, '', '011C12', 'PFGB', 17, 0, '1002', '2022-08-15 21:17:52', '', 0),
(259, '', '011C06E', 'PFGB', 30, 0, '1002', '2022-08-15 21:17:52', '', 0),
(260, '', '011C06.', 'PFGB', 5, 0, '1002', '2022-08-15 21:17:52', '', 0),
(261, '', '011C06', 'PFGB', 20, 0, '1002', '2022-08-15 21:17:52', '', 0),
(262, '', '011C12', 'PFGB', 18, 0, '1002', '2022-08-15 21:20:08', '', 0),
(263, '', '011C06', 'PFGB', 12, 0, '1002', '2022-08-15 21:20:08', '', 0),
(264, '', '011C12', 'PFGB', 4, 0, '1002', '2022-08-15 21:26:41', '', 0),
(265, '', '011C06', 'PFGB', 10, 0, '1002', '2022-08-15 21:26:41', '', 0),
(266, '', '011C12', 'PFGB', 22, 0, '1002', '2022-08-15 21:55:48', '', 0),
(267, '', '011C06.', 'PFGB', 22, 0, '1002', '2022-08-15 21:55:48', '', 0),
(268, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-15 21:55:48', '', 0),
(269, '', '011C12', 'PFGB', 64, 0, '1002', '2022-08-11 22:33:13', '', 0),
(270, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-11 22:33:13', '', 0),
(271, '', '011C06', 'PFGB', 5, 0, '1002', '2022-08-11 22:33:13', '', 0),
(272, '', '011C25', 'PFGB', 2, 0, '1002', '2022-08-11 22:33:13', '', 0),
(273, '', '011C12', 'PFGB', 64, 0, '1002', '2022-08-05 22:35:39', '', 0),
(274, '', '011C06', 'PFGB', 34, 0, '1002', '2022-08-05 22:35:39', '', 0),
(275, '', '011C03', 'PFGB', 3, 0, '1002', '2022-08-05 22:35:39', '', 0),
(276, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-05 22:35:39', '', 0),
(277, '', '011C25', 'PFGB', 2, 0, '1002', '2022-08-05 22:35:39', '', 0),
(278, '', 'BRU  A', 'BRU', 30, 0, '1002', '2022-08-02 22:42:55', '', 0),
(279, '', 'BR01', 'BRU', 100, 0, '1002', '2022-08-02 22:42:55', '', 0),
(280, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-15 10:00:19', '', 0),
(281, '', '011C12', 'PFGB', 8, 0, '1002', '2022-08-15 10:10:41', '', 0),
(282, '', '011C06', 'PFGB', 3, 0, '1002', '2022-08-15 10:10:41', '', 0),
(283, '', '011C06', 'PFGB', 20, 0, '1002', '2022-08-15 10:11:29', '', 0),
(284, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-15 10:11:29', '', 0),
(285, '', '011C12', 'PFGB', 14, 0, '1002', '2022-08-15 10:14:21', '', 0),
(286, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-15 10:14:21', '', 0),
(287, '', '011C25', 'PFGB', 1, 0, '1002', '2022-08-15 10:14:21', '', 0),
(288, '', '011C12', 'PFGB', 5, 0, '1002', '2022-08-15 10:17:30', '', 0),
(289, '', '011C06', 'PFGB', 5, 0, '1002', '2022-08-15 10:17:30', '', 0),
(290, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-15 10:18:35', '', 0),
(291, '', '011C06.', 'PFGB', 2, 0, '1002', '2022-08-15 10:18:35', '', 0),
(292, '', '011C06', 'PFGB', 10, 0, '1002', '2022-08-15 10:18:35', '', 0),
(293, '', '011C03', 'PFGB', 2, 0, '1002', '2022-08-15 10:18:35', '', 0),
(294, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-15 10:24:45', '', 0),
(295, '', '011C12', 'PFGB', 4, 0, '1002', '2022-08-15 10:32:37', '', 0),
(296, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-15 10:32:37', '', 0),
(297, '', '011C50', 'PFGB', 3, 0, '1002', '2022-08-15 10:33:15', '', 0),
(298, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-15 10:36:45', '', 0),
(299, '', '011C25', 'PFGB', 2, 0, '1002', '2022-08-15 10:36:45', '', 0),
(300, '', '011C06', 'PFGB', 10, 0, '1002', '2022-08-15 10:40:20', '', 0),
(301, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-15 10:40:20', '', 0),
(302, '', '011C12', 'PFGB', 5, 0, '1002', '2022-08-15 10:41:53', '', 0),
(303, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-15 10:41:53', '', 0),
(304, '', '011C12', 'PFGB', 6, 0, '1002', '2022-08-15 10:42:44', '', 0),
(305, '', '011C06', 'PFGB', 5, 0, '1002', '2022-08-15 10:42:44', '', 0),
(306, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-15 10:42:44', '', 0),
(307, '', '011C12', 'PFGB', 30, 0, '1002', '2022-08-15 10:44:32', '', 0),
(308, '', '011C06', 'PFGB', 6, 0, '1002', '2022-08-15 10:44:32', '', 0),
(309, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-15 10:45:06', '', 0),
(310, '', '011C06', 'PFGB', 6, 0, '1002', '2022-08-15 10:45:06', '', 0),
(311, '', '011C03', 'PFGB', 4, 0, '1002', '2022-08-15 10:45:06', '', 0),
(312, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-15 10:45:06', '', 0),
(313, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-15 11:03:14', '', 0),
(314, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-15 11:03:14', '', 0),
(315, '', '011C06', 'PFGB', 15, 0, '1002', '2022-08-15 11:03:14', '', 0),
(316, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-15 11:16:22', '', 0),
(317, '', '011C06', 'PFGB', 4, 0, '1002', '2022-08-15 11:16:22', '', 0),
(318, '', '011C06.', 'PFGB', 2, 0, '1002', '2022-08-15 11:16:22', '', 0),
(319, '', '011C06', 'PFGB', 4, 0, '1002', '2022-08-15 11:19:01', '', 0),
(320, '', '011C06.', 'PFGB', 2, 0, '1002', '2022-08-15 11:19:01', '', 0),
(321, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-15 11:19:01', '', 0),
(322, '', '011C12', 'PFGB', 3, 0, '1002', '2022-08-15 12:06:35', '', 0),
(323, '', '011C12', 'PFGB', 12, 0, '1002', '2022-08-15 12:33:44', '', 0),
(324, '', '011C50', 'PFGB', 3, 0, '1002', '2022-08-15 12:35:04', '', 0),
(325, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-15 12:39:02', '', 0),
(326, '', '011C12', 'PFGB', 25, 0, '1002', '2022-08-15 12:42:22', '', 0),
(327, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-15 12:42:22', '', 0),
(328, '', '011C06.', 'PFGB', 18, 0, '1002', '2022-08-15 12:59:09', '', 0),
(329, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-15 13:00:38', '', 0),
(330, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-15 13:09:38', '', 0),
(331, '', '011C06', 'PFGB', 7, 0, '1002', '2022-08-15 13:09:38', '', 0),
(332, '', '011C12', 'PFGB', 2, 0, '1002', '2022-08-15 13:13:06', '', 0),
(333, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-15 13:16:53', '', 0),
(334, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-15 13:42:12', '', 0),
(335, '', '011C12', 'PFGB', 33, 0, '1002', '2022-08-15 14:16:08', '', 0),
(336, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-15 14:23:39', '', 0),
(337, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-15 14:39:07', '', 0),
(338, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-15 14:39:07', '', 0),
(339, '', '011C12', 'PFGB', 20, 0, '1002', '2022-08-15 15:03:02', '', 0),
(340, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-15 15:03:02', '', 0),
(341, '', '011C25', 'PFGB', 1, 0, '1002', '2022-08-15 15:03:02', '', 0),
(342, '', '011C12', 'PFGB', 80, 0, '1002', '2022-08-15 15:05:25', '', 0),
(343, '', '011C50', 'PFGB', 7, 0, '1002', '2022-08-15 15:05:25', '', 0),
(344, '', '011C12', 'PFGB', 13, 0, '1002', '2022-08-15 15:06:52', '', 0),
(345, '', '011C12', 'PFGB', 8, 0, '1002', '2022-08-15 15:07:17', '', 0),
(346, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-15 15:07:17', '', 0),
(347, '', '011C12', 'PFGB', 4, 0, '1002', '2022-08-15 15:13:42', '', 0),
(348, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-15 15:13:42', '', 0),
(349, '', '011C25', 'PFGB', 1, 0, '1002', '2022-08-15 15:13:42', '', 0),
(350, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-15 15:25:09', '', 0),
(351, '', '011C12', 'PFGB', 33, 0, '1002', '2022-08-12 16:45:21', '', 0),
(352, '', 'BR01', 'BRU', 200, 0, '1002', '2022-08-15 16:46:33', '', 0),
(353, '', 'BRU  A', 'BRU', 35, 0, '1002', '2022-08-15 16:46:33', '', 0),
(354, '', 'BRU 3', 'BRU', 20, 0, '1002', '2022-08-15 16:46:33', '', 0),
(355, '', '011C50', 'PFGB', 4, 0, '1002', '2022-08-16 08:36:07', '', 0),
(356, '', '011C12', 'PFGB', 1, 0, '1002', '2022-08-16 08:36:07', '', 0),
(357, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-16 08:37:14', '', 0),
(358, '', '011C50', 'PFGB', 4, 0, '1002', '2022-08-16 08:37:51', '', 0),
(359, '', '011C12', 'PFGB', 30, 0, '1002', '2022-08-16 08:42:29', '', 0),
(360, '', '011C50', 'PFGB', 3, 0, '1002', '2022-08-16 08:42:29', '', 0),
(361, '', '011C25', 'PFGB', 2, 0, '1002', '2022-08-16 08:42:29', '', 0),
(362, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-16 08:59:16', '', 0),
(363, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-16 08:59:27', '', 0),
(364, '', '011C12', 'PFGB', 7, 0, '1002', '2022-08-16 08:59:54', '', 0),
(365, '', '011C50', 'PFGB', 4, 0, '1002', '2022-08-16 09:00:22', '', 0),
(366, '', '011C12', 'PFGB', 1, 0, '1002', '2022-08-16 09:00:22', '', 0),
(367, '', '011C06', 'PFGB', 22, 0, '1002', '2022-08-16 09:12:54', '', 0),
(368, '', '011C12', 'PFGB', 25, 0, '1002', '2022-08-16 09:12:54', '', 0),
(369, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-16 09:19:10', '', 0),
(370, '', '011C12', 'PFGB', 3, 0, '1002', '2022-08-16 09:19:10', '', 0),
(371, '', '011C06', 'PFGB', 2, 0, '1002', '2022-08-16 09:19:10', '', 0),
(372, '', '011C12', 'PFGB', 24, 0, '1002', '2022-08-15 10:21:36', '', 0),
(373, '', '011C50', 'PFGB', 2, 0, '1002', '2022-08-16 10:22:07', '', 0),
(374, '', '011C12', 'PFGB', 8, 0, '1002', '2022-08-16 10:22:54', '', 0),
(375, '', '011C12', 'PFGB', 14, 0, '1002', '2022-08-16 10:23:54', '', 0),
(376, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-16 10:27:26', '', 0),
(377, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-16 10:27:26', '', 0),
(378, '', '011C12', 'PFGB', 15, 0, '1002', '2022-08-16 10:28:57', '', 0),
(379, '', '011C50', 'PFGB', 1, 0, '1002', '2022-08-16 10:28:57', '', 0),
(380, '', '011C12', 'PFGB', 16, 0, '1002', '2022-08-16 11:23:58', '', 0),
(381, '', '011C12E', 'PFGB', 4, 0, '1002', '2022-08-16 11:23:58', '', 0),
(382, '', '011C06', 'PFGB', 16, 0, '1002', '2022-08-16 11:23:58', '', 0),
(383, '', '011C12', 'PFGB', 10, 0, '1002', '2022-08-16 12:28:06', '', 0),
(384, '', '011C12', 'PFGB', 14, 0, '', '2022-08-21 00:00:00', '', 0),
(385, '', '011C50', 'PFGB', 23, 0, '', '2022-08-21 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_statut_commande`
--

CREATE TABLE `tb_statut_commande` (
  `id_sc` int(11) NOT NULL,
  `statut_libelle` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tb_stock`
--

CREATE TABLE `tb_stock` (
  `id_stock` int(11) NOT NULL,
  `code_art` varchar(20) NOT NULL,
  `code_mag` varchar(20) NOT NULL,
  `qte_vide` int(11) NOT NULL,
  `Qte_mag` int(11) NOT NULL,
  `qte_totale` int(11) NOT NULL,
  `cout_achat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_stock`
--

INSERT INTO `tb_stock` (`id_stock`, `code_art`, `code_mag`, `qte_vide`, `Qte_mag`, `qte_totale`, `cout_achat`) VALUES
(7, '011C03.', 'PFGB', 1366, -1117, 249, 1440),
(8, '011C03', 'PFGB', 787, -292, 495, 1440),
(9, '011C06', 'PFGB', 286, 416, 702, 2880),
(10, '011C06.', 'PFGB', -132, 255, 123, 2880),
(11, '011C12', 'PFGB', -2760, 4061, 1301, 6000),
(12, '011C50', 'PFGB', 362, 58, 420, 24000),
(13, '011C25', 'PFGB', 148, 14, 162, 12000),
(14, '011C06E', 'PFGB', 309, -41, 268, 2880),
(15, '011C12E', 'PFGB', -499, -2023, -2522, 6000),
(16, '02103K.', 'PFBC', 133, -10, 123, 9440),
(17, '02103K', 'PFBC', 0, -110, -110, 9440),
(18, '02106K', 'PFBC', 0, -18, -18, 17880),
(19, '02106K.', 'PFBC', 0, -80, -80, 17880),
(20, '02112K', 'PFBC', 0, -10, -10, 31000),
(21, '0250K', 'PFBC', 0, -31, -31, 89000),
(22, '02125K', 'PFBC', 0, 0, 0, 60000),
(23, '021E6K', 'PFBC', 0, 0, 0, 17880),
(24, '021E12K', 'PFBC', 0, 0, 0, 31000),
(25, 'BR01', 'BRU', 0, -300, -300, 0),
(26, 'BRU  A', 'BRU', 0, -65, -65, 0),
(27, 'BRU 3', 'BRU', 0, -20, -20, 0),
(28, 'FOC001', 'FO', 0, 0, 0, 0),
(29, 'FOA002', 'FO', 0, 0, 0, 0),
(30, 'FOCRO', 'FO', 0, 0, 0, 0),
(31, 'FOAG', 'FO', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tb_stock_camion`
--

CREATE TABLE `tb_stock_camion` (
  `id_sc` int(11) NOT NULL,
  `vehicule` varchar(12) DEFAULT NULL,
  `code_art` varchar(30) DEFAULT NULL,
  `designation_art` varchar(100) DEFAULT NULL,
  `qte_vide` int(11) DEFAULT NULL,
  `qte_mag` int(11) DEFAULT NULL,
  `qte_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_stock_camion`
--

INSERT INTO `tb_stock_camion` (`id_sc`, `vehicule`, `code_art`, `designation_art`, `qte_vide`, `qte_mag`, `qte_total`) VALUES
(1, 'TG 9630 BH', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 0, 14, 14),
(2, 'TG 9630 BH', '011C50', 'Charge gaz butane 50Kgs sodigaz', 0, 23, 23);

-- --------------------------------------------------------

--
-- Structure de la table `tb_tarif`
--

CREATE TABLE `tb_tarif` (
  `idtarif` int(11) NOT NULL,
  `code_tarif` varchar(10) DEFAULT NULL,
  `designation_tarif` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_tarif`
--

INSERT INTO `tb_tarif` (`idtarif`, `code_tarif`, `designation_tarif`) VALUES
(1, 'TNORD', 'TARIF NORMAL DETAILLANTS'),
(2, 'TNORG', 'TARIF NORMAL GROSSISTES'),
(4, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2'),
(5, 'TBGP3', 'TARIF BENEFICE  GROSSISTE PACK3'),
(6, 'TPG01', 'TARIF PROMOTIONNEL PACK1'),
(7, 'TDDPR', 'TARIF DJOULDE PRINCIPAL'),
(8, 'TDDAN', 'TARIF DJOULDE ANNEX'),
(14, 'TBSK1', 'TARIF BENEFICE SACKHO'),
(15, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4'),
(16, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5'),
(17, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6'),
(18, 'TPP2', 'TARIF PROMO PACK 2'),
(19, 'TPMC', 'TARIF PROMO MICHEL'),
(20, 'TPRO', 'TARIF PROTESTANT'),
(21, 'TGE01', 'TARIF GLOBAL EXEPTIONEL'),
(22, 'TSPG', 'TARIF SEMI PROMO GROSSISTES');

-- --------------------------------------------------------

--
-- Structure de la table `tb_tarif_defprix`
--

CREATE TABLE `tb_tarif_defprix` (
  `idparamprix` int(11) NOT NULL,
  `code_tarif` varchar(10) DEFAULT NULL,
  `designation_tarif` varchar(100) DEFAULT NULL,
  `code_art` varchar(30) DEFAULT NULL,
  `designation_art` varchar(100) DEFAULT NULL,
  `prix_vente` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_tarif_defprix`
--

INSERT INTO `tb_tarif_defprix` (`idparamprix`, `code_tarif`, `designation_tarif`, `code_art`, `designation_art`, `prix_vente`) VALUES
(1, 'TNORD', 'TARIF NORMAL DETAILLANTS', '011C06E', 'Charge gaz butane 6kgs enora', 3200),
(2, 'TNORD', 'TARIF NORMAL DETAILLANTS', '011C06', 'Charge gaz butane 6kgs sodigaz', 3200),
(3, 'TNORD', 'TARIF NORMAL DETAILLANTS', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1700),
(4, 'TNORD', 'TARIF NORMAL DETAILLANTS', '011C03', 'Charge gaz butane 3kgs sodigaz', 1700),
(5, 'TNORD', 'TARIF NORMAL DETAILLANTS', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 3200),
(6, 'TNORD', 'TARIF NORMAL DETAILLANTS', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6500),
(7, 'TNORD', 'TARIF NORMAL DETAILLANTS', '011C50', 'Charge gaz butane 50Kgs sodigaz', 26000),
(8, 'TNORD', 'TARIF NORMAL DETAILLANTS', '011C25', 'Charge gaz butane 25Kgs sodigaz', 13000),
(9, 'TNORG', 'TARIF NORMAL GROSSISTES', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 2540),
(10, 'TNORG', 'TARIF NORMAL GROSSISTES', '011C03', 'Charge gaz butane 3kgs sodigaz', 2540),
(11, 'TNORG', 'TARIF NORMAL GROSSISTES', '011C06', 'Charge gaz butane 6kgs sodigaz', 5080),
(12, 'TNORG', 'TARIF NORMAL GROSSISTES', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 5080),
(13, 'TNORG', 'TARIF NORMAL GROSSISTES', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 10588),
(14, 'TNORG', 'TARIF NORMAL GROSSISTES', '011C50', 'Charge gaz butane 50Kgs sodigaz', 42300),
(15, 'TNORG', 'TARIF NORMAL GROSSISTES', '011C25', 'Charge gaz butane 25Kgs sodigaz', 21150),
(16, 'TNORG', 'TARIF NORMAL GROSSISTES', '011C06E', 'Charge gaz butane 6kgs enora', 5080),
(17, 'TNORG', 'TARIF NORMAL GROSSISTES', '011C12E', 'Charge gaz butane 12,5kgs enora', 10588),
(18, 'TNORG', 'TARIF NORMAL GROSSISTES', '02103K.', 'Consignation gaz butane 3kgs avec anse sodigaz', 9440),
(19, 'TNORG', 'TARIF NORMAL GROSSISTES', '02103K', 'Consignation gaz butane 3kgs sodigaz', 9440),
(20, 'TNORG', 'TARIF NORMAL GROSSISTES', '02106K', 'Consignation gaz butane 6kgs sodigaz', 17880),
(21, 'TNORG', 'TARIF NORMAL GROSSISTES', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 17880),
(22, 'TNORG', 'TARIF NORMAL GROSSISTES', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 31000),
(23, 'TNORG', 'TARIF NORMAL GROSSISTES', '02150K', 'Consignation gaz butane 50Kgs sodigaz', 89000),
(24, 'TNORG', 'TARIF NORMAL GROSSISTES', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 52000),
(25, 'TNORG', 'TARIF NORMAL GROSSISTES', '021E6K', 'Consignation gaz butane 6kgs enora', 17880),
(26, 'TNORG', 'TARIF NORMAL GROSSISTES', '021E12K', 'Consignation gaz butane 12,5kgs enora', 31000),
(45, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1500),
(46, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '011C03', 'Charge gaz butane 3kgs sodigaz', 1500),
(47, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '011C06', 'Charge gaz butane 6kgs sodigaz', 2950),
(48, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2950),
(49, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6050),
(50, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '011C50', 'Charge gaz butane 50Kgs sodigaz', 24200),
(51, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '011C25', 'Charge gaz butane 25Kgs sodigaz', 12100),
(52, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '011C06E', 'Charge gaz butane 6kgs enora', 2950),
(53, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '011C12E', 'Charge gaz butane 12,5kgs enora', 6050),
(54, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '02103K.', 'Consignation gaz butane 3kgs avec anse sodigaz', 9440),
(55, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '02103K', 'Consignation gaz butane 3kgs sodigaz', 9440),
(56, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '02106K', 'Consignation gaz butane 6kgs sodigaz', 17880),
(57, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 17880),
(58, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 31000),
(59, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '02150K', 'Consignation gaz butane 50Kgs sodigaz', 89000),
(60, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 52000),
(61, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '021E6K', 'Consignation gaz butane 6kgs enora', 17880),
(62, 'TBGP2', 'TARIF BENEFICE  GROSSISTE PACK2', '021E12K', 'Consignation gaz butane 12,5kgs enora', 31000),
(63, 'TBGP3', 'TARIF BENEFICE  GROSSISTE PACK3', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1650),
(64, 'TBGP3', 'TARIF BENEFICE  GROSSISTE PACK3', '011C03', 'Charge gaz butane 3kgs sodigaz', 1650),
(65, 'TBGP3', 'TARIF BENEFICE  GROSSISTE PACK3', '011C06', 'Charge gaz butane 6kgs sodigaz', 3040),
(66, 'TBGP3', 'TARIF BENEFICE  GROSSISTE PACK3', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 3040),
(67, 'TBGP3', 'TARIF BENEFICE  GROSSISTE PACK3', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6250),
(68, 'TBGP3', 'TARIF BENEFICE  GROSSISTE PACK3', '011C50', 'Charge gaz butane 50Kgs sodigaz', 26000),
(69, 'TBGP3', 'TARIF BENEFICE  GROSSISTE PACK3', '011C25', 'Charge gaz butane 25Kgs sodigaz', 12500),
(70, 'TBGP3', 'TARIF BENEFICE  GROSSISTE PACK3', '011C06E', 'Charge gaz butane 6kgs enora', 3040),
(71, 'TBGP3', 'TARIF BENEFICE  GROSSISTE PACK3', '011C12E', 'Charge gaz butane 12,5kgs enora', 6250),
(72, 'TNORD', 'TARIF NORMAL DETAILLANTS', '021E6K', 'Consignation gaz butane 6kgs enora', 3200),
(73, 'TNORD', 'TARIF NORMAL DETAILLANTS', '021E12K', 'Consignation gaz butane 12,5kgs enora', 6500),
(74, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '021E12K', 'Consignation gaz butane 12,5kgs enora', 31000),
(75, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '021E6K', 'Consignation gaz butane 6kgs enora', 17880),
(76, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 52000),
(77, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '02150K', 'Consignation gaz butane 50Kgs sodigaz', 89000),
(78, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 31000),
(79, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 17880),
(80, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '02106K', 'Consignation gaz butane 6kgs sodigaz', 17880),
(81, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '02103K', 'Consignation gaz butane 3kgs sodigaz', 9440),
(82, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1500),
(83, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '011C12E', 'Charge gaz butane 12,5kgs enora', 6000),
(84, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '011C06E', 'Charge gaz butane 6kgs enora', 2900),
(85, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '011C25', 'Charge gaz butane 25Kgs sodigaz', 12000),
(86, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '011C50', 'Charge gaz butane 50Kgs sodigaz', 24000),
(87, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6000),
(88, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2900),
(89, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '011C06', 'Charge gaz butane 6kgs sodigaz', 2900),
(90, 'TDDPR', 'TARIF DJOULDE PRINCIPAL', '011C03', 'Charge gaz butane 3kgs sodigaz', 1500),
(91, 'TDDAN', 'TARIF DJOULDE ANNEX', '021E12K', 'Consignation gaz butane 12,5kgs enora', 31000),
(92, 'TDDAN', 'TARIF DJOULDE ANNEX', '021E6K', 'Consignation gaz butane 6kgs enora', 17880),
(93, 'TDDAN', 'TARIF DJOULDE ANNEX', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 52000),
(94, 'TDDAN', 'TARIF DJOULDE ANNEX', '02150K', 'Consignation gaz butane 50Kgs sodigaz', 89000),
(95, 'TDDAN', 'TARIF DJOULDE ANNEX', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 31000),
(96, 'TDDAN', 'TARIF DJOULDE ANNEX', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 17880),
(97, 'TDDAN', 'TARIF DJOULDE ANNEX', '02106K', 'Consignation gaz butane 6kgs sodigaz', 17880),
(98, 'TDDAN', 'TARIF DJOULDE ANNEX', '02103K', 'Consignation gaz butane 3kgs sodigaz', 9440),
(99, 'TDDAN', 'TARIF DJOULDE ANNEX', '02103K.', 'Consignation gaz butane 3kgs avec anse sodigaz', 9440),
(100, 'TDDAN', 'TARIF DJOULDE ANNEX', '011C12E', 'Charge gaz butane 12,5kgs enora', 6250),
(101, 'TDDAN', 'TARIF DJOULDE ANNEX', '011C06E', 'Charge gaz butane 6kgs enora', 3050),
(102, 'TDDAN', 'TARIF DJOULDE ANNEX', '011C25', 'Charge gaz butane 25Kgs sodigaz', 12500),
(103, 'TDDAN', 'TARIF DJOULDE ANNEX', '011C50', 'Charge gaz butane 50Kgs sodigaz', 25000),
(104, 'TDDAN', 'TARIF DJOULDE ANNEX', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6250),
(105, 'TDDAN', 'TARIF DJOULDE ANNEX', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 3050),
(106, 'TDDAN', 'TARIF DJOULDE ANNEX', '011C06', 'Charge gaz butane 6kgs sodigaz', 3050),
(107, 'TDDAN', 'TARIF DJOULDE ANNEX', '011C03', 'Charge gaz butane 3kgs sodigaz', 1650),
(108, 'TDDAN', 'TARIF DJOULDE ANNEX', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1650),
(109, 'TBSK1', 'TARIF BENEFICE SACKHO', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1440),
(110, 'TBSK1', 'TARIF BENEFICE SACKHO', '011C03', 'Charge gaz butane 3kgs sodigaz', 1440),
(111, 'TBSK1', 'TARIF BENEFICE SACKHO', '011C06', 'Charge gaz butane 6kgs sodigaz', 3000),
(112, 'TBSK1', 'TARIF BENEFICE SACKHO', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 3000),
(113, 'TBSK1', 'TARIF BENEFICE SACKHO', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6000),
(114, 'TBSK1', 'TARIF BENEFICE SACKHO', '011C50', 'Charge gaz butane 50Kgs sodigaz', 24000),
(115, 'TBSK1', 'TARIF BENEFICE SACKHO', '011C25', 'Charge gaz butane 25Kgs sodigaz', 12000),
(116, 'TBSK1', 'TARIF BENEFICE SACKHO', '011C06E', 'Charge gaz butane 6kgs enora', 3000),
(117, 'TBSK1', 'TARIF BENEFICE SACKHO', '011C12E', 'Charge gaz butane 12,5kgs enora', 6000),
(118, 'TBSK1', 'TARIF BENEFICE SACKHO', '02103K.', 'Consignation gaz butane 3kgs avec anse sodigaz', 9440),
(119, 'TBSK1', 'TARIF BENEFICE SACKHO', '02103K', 'Consignation gaz butane 3kgs sodigaz', 9440),
(120, 'TBSK1', 'TARIF BENEFICE SACKHO', '02106K', 'Consignation gaz butane 6kgs sodigaz', 17880),
(121, 'TBSK1', 'TARIF BENEFICE SACKHO', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 17880),
(122, 'TBSK1', 'TARIF BENEFICE SACKHO', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 31000),
(123, 'TBSK1', 'TARIF BENEFICE SACKHO', '021E6K', 'Consignation gaz butane 6kgs enora', 17880),
(124, 'TBSK1', 'TARIF BENEFICE SACKHO', '021E12K', 'Consignation gaz butane 12,5kgs enora', 31000),
(125, 'TBSK1', 'TARIF BENEFICE SACKHO', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 52000),
(126, 'TBSK1', 'TARIF BENEFICE SACKHO', '02150K', 'Consignation gaz butane 50Kgs sodigaz', 89000),
(127, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '011C03', 'Charge gaz butane 3kgs sodigaz', 1500),
(128, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1500),
(129, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '011C06', 'Charge gaz butane 6kgs sodigaz', 2900),
(130, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 2900),
(131, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6000),
(132, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '011C50', 'Charge gaz butane 50Kgs sodigaz', 24000),
(133, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '011C25', 'Charge gaz butane 25Kgs sodigaz', 12000),
(134, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '011C06E', 'Charge gaz butane 6kgs enora', 2900),
(135, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '011C12E', 'Charge gaz butane 12,5kgs enora', 6000),
(136, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '02103K.', 'Consignation gaz butane 3kgs avec anse sodigaz', 9440),
(137, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '02103K', 'Consignation gaz butane 3kgs sodigaz', 9440),
(138, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '02106K', 'Consignation gaz butane 6kgs sodigaz', 17880),
(139, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 17880),
(140, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 31000),
(141, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '02150K', 'Consignation gaz butane 50Kgs sodigaz', 89000),
(142, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 52000),
(143, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '021E6K', 'Consignation gaz butane 6kgs enora', 17880),
(144, 'TBGP4', 'TARIF BENEFICE GROSSISTE PACK4', '021E12K', 'Consignation gaz butane 12,5kgs enora', 17880),
(145, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '011C03', 'Charge gaz butane 3kgs sodigaz', 1500),
(146, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1500),
(147, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '011C06', 'Charge gaz butane 6kgs sodigaz', 3000),
(148, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 3000),
(149, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6150),
(150, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '011C25', 'Charge gaz butane 25Kgs sodigaz', 12300),
(151, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '011C50', 'Charge gaz butane 50Kgs sodigaz', 24600),
(152, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '011C06E', 'Charge gaz butane 6kgs enora', 3000),
(153, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '011C12E', 'Charge gaz butane 12,5kgs enora', 6150),
(154, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '02103K.', 'Consignation gaz butane 3kgs avec anse sodigaz', 9440),
(155, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '02103K', 'Consignation gaz butane 3kgs sodigaz', 9440),
(156, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '02106K', 'Consignation gaz butane 6kgs sodigaz', 17880),
(157, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 17880),
(158, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 31000),
(159, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 52000),
(160, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '02150K', 'Consignation gaz butane 50Kgs sodigaz', 89000),
(161, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '021E6K', 'Consignation gaz butane 6kgs enora', 17880),
(162, 'TBGP5', 'TARIF BENEFICE GROSSISTE PACK5', '021E12K', 'Consignation gaz butane 12,5kgs enora', 31000),
(163, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '011C03', 'Charge gaz butane 3kgs sodigaz', 1500),
(164, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1500),
(165, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '011C06', 'Charge gaz butane 6kgs sodigaz', 3000),
(166, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 3000),
(167, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6200),
(168, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '011C25', 'Charge gaz butane 25Kgs sodigaz', 12400),
(169, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '011C50', 'Charge gaz butane 50Kgs sodigaz', 24800),
(170, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '011C06E', 'Charge gaz butane 6kgs enora', 3000),
(171, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '011C12E', 'Charge gaz butane 12,5kgs enora', 6200),
(172, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '02103K.', 'Consignation gaz butane 3kgs avec anse sodigaz', 9440),
(173, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '02103K', 'Consignation gaz butane 3kgs sodigaz', 9440),
(174, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '02106K', 'Consignation gaz butane 6kgs sodigaz', 17880),
(175, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 17880),
(176, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 31000),
(177, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 52000),
(178, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '02150K', 'Consignation gaz butane 50Kgs sodigaz', 89000),
(179, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '021E6K', 'Consignation gaz butane 6kgs enora', 17880),
(180, 'TBGP6', 'TARIF BENEFICE GROSSISTE PACK6', '021E12K', 'Consignation gaz butane 12,5kgs enora', 31000),
(181, 'TPP2', 'TARIF PROMO PACK 2', '02103K.', 'Consignation gaz butane 3kgs avec anse sodigaz', 8500),
(182, 'TPMC', 'TARIF PROMO MICHEL', '02150K', 'Consignation gaz butane 50Kgs sodigaz', 85000),
(183, 'TPMC', 'TARIF PROMO MICHEL', '02106K', 'Consignation gaz butane 6kgs sodigaz', 17880),
(184, 'TPRO', 'TARIF PROTESTANT', '011C03.', 'Charge gaz butane 3kgs avec anse sodigaz', 1500),
(185, 'TPRO', 'TARIF PROTESTANT', '011C03', 'Charge gaz butane 3kgs sodigaz', 1500),
(186, 'TPRO', 'TARIF PROTESTANT', '011C06', 'Charge gaz butane 6kgs sodigaz', 3000),
(187, 'TPRO', 'TARIF PROTESTANT', '011C06E', 'Charge gaz butane 6kgs enora', 3000),
(188, 'TPRO', 'TARIF PROTESTANT', '011C06.', 'Charge gaz  butane 6kgs à robinet sodigaz', 3000),
(189, 'TPRO', 'TARIF PROTESTANT', '011C12', 'Charge gaz butane 12,5kgs sodigaz', 6000),
(190, 'TPRO', 'TARIF PROTESTANT', '011C12E', 'Charge gaz butane 12,5kgs enora', 6000),
(191, 'TPRO', 'TARIF PROTESTANT', '011C25', 'Charge gaz butane 25Kgs sodigaz', 12000),
(192, 'TPRO', 'TARIF PROTESTANT', '011C50', 'Charge gaz butane 50Kgs sodigaz', 24000),
(193, 'TPRO', 'TARIF PROTESTANT', '02103K.', 'Consignation gaz butane 3kgs avec anse sodigaz', 9440),
(194, 'TPRO', 'TARIF PROTESTANT', '02103K', 'Consignation gaz butane 3kgs sodigaz', 9440),
(195, 'TPRO', 'TARIF PROTESTANT', '02106K', 'Consignation gaz butane 6kgs sodigaz', 17880),
(196, 'TPRO', 'TARIF PROTESTANT', '021E6K', 'Consignation gaz butane 6kgs enora', 17880),
(197, 'TPRO', 'TARIF PROTESTANT', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 17880),
(198, 'TPRO', 'TARIF PROTESTANT', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 31000),
(199, 'TPRO', 'TARIF PROTESTANT', '021E12K', 'Consignation gaz butane 12,5kgs enora', 31000),
(200, 'TPRO', 'TARIF PROTESTANT', '02125K', 'Consignation gaz butane 25Kgs sodigaz', 52000),
(201, 'TPRO', 'TARIF PROTESTANT', '02150K', 'Consignation gaz butane 50Kgs sodigaz', 89000),
(202, 'TGE01', 'TARIF GLOBAL EXEPTIONEL', '02106K.', 'Consignation gaz  butane 6kgs à robinet sodigaz', 18000),
(203, 'TSPG', 'TARIF SEMI PROMO GROSSISTES', '02112K', 'Consignation gaz butane 12,5kgs sodigaz', 28000),
(204, 'TNORG', 'TARIF NORMAL GROSSISTES', '0250K', 'Consignation gaz butane 50Kgs sodigaz', 89000),
(205, 'TNORG', 'TARIF NORMAL GROSSISTES', 'BR01', 'BRULEUR SIMPLE', 600),
(206, 'TNORG', 'TARIF NORMAL GROSSISTES', 'BRU 3', 'BRULEUR 3KG', 1000),
(207, 'TNORG', 'TARIF NORMAL GROSSISTES', 'BRU  A', 'BRULEUR ALLUMINIUM', 1200),
(208, 'TNORG', 'TARIF NORMAL GROSSISTES', 'FOAG', 'FOYER ANTONOIRE GRAND', 2500),
(209, 'TNORG', 'TARIF NORMAL GROSSISTES', 'FOCRO', 'FOYER CROCHET', 1200),
(210, 'TNORG', 'TARIF NORMAL GROSSISTES', 'FOA002', 'FOYER ANTONOIRE PETIT', 2200);

-- --------------------------------------------------------

--
-- Structure de la table `tb_temp_bl`
--

CREATE TABLE `tb_temp_bl` (
  `id_temp_BL` int(11) NOT NULL,
  `code_art` varchar(20) NOT NULL,
  `designation_art` varchar(100) NOT NULL,
  `kilo` double NOT NULL,
  `qte` int(11) NOT NULL,
  `Tkilo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tb_temp_chargement`
--

CREATE TABLE `tb_temp_chargement` (
  `id_temp_chargement` int(11) NOT NULL,
  `num_bl` varchar(20) NOT NULL,
  `client` varchar(100) NOT NULL,
  `bouteille` int(11) NOT NULL,
  `kilo` double NOT NULL,
  `prix_livraison` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tb_type_article`
--

CREATE TABLE `tb_type_article` (
  `id_type_art` int(11) NOT NULL,
  `designation_type_art` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_type_article`
--

INSERT INTO `tb_type_article` (`id_type_art`, `designation_type_art`) VALUES
(1, 'Charge gaz butane'),
(2, 'Consignation'),
(3, ''),
(4, 'BRULEUR'),
(5, 'FOYER'),
(6, 'DETENDEUR');

-- --------------------------------------------------------

--
-- Structure de la table `tb_type_encais`
--

CREATE TABLE `tb_type_encais` (
  `id_tenc` int(11) NOT NULL,
  `code_tenc` varchar(10) DEFAULT NULL,
  `libelle_tenc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_type_encais`
--

INSERT INTO `tb_type_encais` (`id_tenc`, `code_tenc`, `libelle_tenc`) VALUES
(1, 'ESP01', 'Espèce'),
(2, 'AVANCE', 'Avance');

-- --------------------------------------------------------

--
-- Structure de la table `tb_type_service`
--

CREATE TABLE `tb_type_service` (
  `id_ts` int(11) NOT NULL,
  `code_ts` varchar(12) DEFAULT NULL,
  `design_ts` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_type_service`
--

INSERT INTO `tb_type_service` (`id_ts`, `code_ts`, `design_ts`) VALUES
(1, 'sr01', 'REPARATION'),
(2, 'D001', 'DETTE '),
(3, 'AC01', 'ACCORD DE PARTENARIAT'),
(4, 'MA001', 'MISE A DISPOSITION'),
(5, 'A01', 'AUTRES');

-- --------------------------------------------------------

--
-- Structure de la table `tb_type_vehicule`
--

CREATE TABLE `tb_type_vehicule` (
  `id_type_veh` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_type_vehicule`
--

INSERT INTO `tb_type_vehicule` (`id_type_veh`, `designation`) VALUES
(1, 'Camion'),
(2, 'Tricycle'),
(3, 'Cargot');

-- --------------------------------------------------------

--
-- Structure de la table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nom_user` varchar(100) NOT NULL,
  `prenom_user` varchar(100) NOT NULL,
  `Usager` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `num_caisse` varchar(12) NOT NULL,
  `profil` varchar(100) NOT NULL,
  `statut` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nom_user`, `prenom_user`, `Usager`, `password`, `num_caisse`, `profil`, `statut`) VALUES
(1, 'ZIMAGLI', 'Komlan Edem', '1001', '@ADMIN@2022', '1001000001', '', 1),
(6, 'TETE', 'Eugène', '1002', '1002', '1002000001', 'User', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tb_vehicule`
--

CREATE TABLE `tb_vehicule` (
  `id_veh` int(11) NOT NULL,
  `Marque_veh` varchar(100) NOT NULL,
  `code_clt` varchar(12) DEFAULT NULL,
  `Num_Immat_veh` varchar(15) NOT NULL,
  `Couleur_veh` varchar(30) NOT NULL,
  `Compteur_veh` int(11) NOT NULL,
  `Type_veh` varchar(30) NOT NULL,
  `Kilo_max` int(11) NOT NULL,
  `date_mise_sce` date NOT NULL,
  `dispo_parc` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_vehicule`
--

INSERT INTO `tb_vehicule` (`id_veh`, `Marque_veh`, `code_clt`, `Num_Immat_veh`, `Couleur_veh`, `Compteur_veh`, `Type_veh`, `Kilo_max`, `date_mise_sce`, `dispo_parc`) VALUES
(1, 'ISUZU 1', NULL, 'TG 6231 BF', 'GRILLE', 0, 'Camion', 4000, '2022-07-11', 1),
(2, 'ISUZU 2', NULL, 'TG 9630 BH', 'GRILLE', 0, 'Camion', 6000, '2022-01-11', 0),
(3, 'APSONIC 1', NULL, 'TG 2318 DJ', 'VERT', 0, 'Tricycle', 1500, '2022-07-11', 0),
(6, 'ISUZU 3', 'KO2', 'TG 5583 BJ', 'BLANCHE', 0, 'Camion', 6000, '2022-07-20', 1),
(7, 'PETER GAZ APSONIC 1', 'P', '7925 DJ', 'BLEU', 0, 'Tricycle', 500, '2022-04-01', 1),
(8, 'PETER GAZ IZUSU 1', 'P', 'TG 1014 AV', '', 0, 'Camion', 1, '2015-08-10', 1),
(9, 'PETER RENAULT 2', 'P', 'TG 2020 BT', '', 0, 'Camion', 100, '2010-10-10', 1),
(10, 'BARRY IZUSU 4', 'BA', 'TG 2121 AG', '', 0, 'Camion', 100, '2010-10-10', 1),
(11, 'MELSIFA IZUSU 2', 'ZA1', 'TG 2541 AV', '', 0, 'Camion', 100, '2010-10-10', 1),
(12, 'BARRY RENAULT 1', 'BG01', 'TG 7151 BE', '', 0, 'Camion', 100, '2010-10-10', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tb_versement_camion`
--

CREATE TABLE `tb_versement_camion` (
  `id_vc` int(11) NOT NULL,
  `num_vers` int(11) DEFAULT NULL,
  `date_vc` datetime DEFAULT NULL,
  `num_caisse` varchar(30) DEFAULT NULL,
  `num_comc` varchar(12) DEFAULT NULL,
  `vehicule` varchar(15) DEFAULT NULL,
  `montant_vers` double DEFAULT NULL,
  `observation` tinytext,
  `usager` varchar(4) DEFAULT NULL,
  `statut_canc` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tb_vte_chargveh`
--

CREATE TABLE `tb_vte_chargveh` (
  `id` int(11) NOT NULL,
  `lettrage` varchar(12) DEFAULT NULL,
  `numCharg` int(11) DEFAULT NULL,
  `src_ch` int(1) DEFAULT NULL,
  `cod_client` varchar(4) DEFAULT NULL,
  `nom_client` varchar(100) DEFAULT NULL,
  `piece` varchar(30) DEFAULT NULL,
  `vehicule` varchar(10) NOT NULL,
  `num_mat_chauf` int(11) NOT NULL,
  `nom_chauf` varchar(100) NOT NULL,
  `dateCharg` date DEFAULT NULL,
  `TBouteille` int(11) DEFAULT NULL,
  `TKilo` double DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `usager` varchar(4) DEFAULT NULL,
  `statut_canc` int(1) DEFAULT NULL,
  `statut_com` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_vte_chargveh`
--

INSERT INTO `tb_vte_chargveh` (`id`, `lettrage`, `numCharg`, `src_ch`, `cod_client`, `nom_client`, `piece`, `vehicule`, `num_mat_chauf`, `nom_chauf`, `dateCharg`, `TBouteille`, `TKilo`, `montant`, `usager`, `statut_canc`, `statut_com`) VALUES
(1, '1', 1, 1, 'A1', 'ABALO GAZ', '123', 'TG 9630 BH', 4, 'MABA', '2022-08-21', 37, 1325, 636000, '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tb_vte_chargvehd`
--

CREATE TABLE `tb_vte_chargvehd` (
  `id` int(11) NOT NULL,
  `numCharg` int(11) DEFAULT NULL,
  `codeArt` varchar(15) DEFAULT NULL,
  `designationArt` varchar(100) DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `kilo` double DEFAULT NULL,
  `Tkilo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_vte_chargvehd`
--

INSERT INTO `tb_vte_chargvehd` (`id`, `numCharg`, `codeArt`, `designationArt`, `qte`, `kilo`, `Tkilo`) VALUES
(1, 1, '011C12', 'Charge gaz butane 12,5kgs sodigaz', 14, 12.5, 175),
(2, 1, '011C50', 'Charge gaz butane 50Kgs sodigaz', 23, 50, 1150);

-- --------------------------------------------------------

--
-- Structure de la table `tb_zone`
--

CREATE TABLE `tb_zone` (
  `id_zone` int(11) NOT NULL,
  `nom_zone` varchar(50) NOT NULL,
  `prix_zone` double NOT NULL,
  `comment_zone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tb_zone`
--

INSERT INTO `tb_zone` (`id_zone`, `nom_zone`, `prix_zone`, `comment_zone`) VALUES
(1, 'ZONE GHANA', 17, 'ZONE EST'),
(2, 'GRAND LOME', 15, 'Zone du grand lomé'),
(3, 'ZONE DJABLE', 20, 'Djagle et ses environs'),
(4, 'ZONE 13 ', 13, '\r\n'),
(5, 'ZONE 15', 15, '\r\n'),
(6, 'ZONE18', 18, '\r\n'),
(7, 'ZONE 24', 24, '\r\n'),
(8, 'ZONE 28', 28, '\r\n'),
(9, 'ZONE 35', 35, '\r\n\r\n'),
(10, 'ZONE 40', 40, '\r\n\r\n'),
(11, 'ZONE 55', 55, '\r\n\r\n'),
(12, 'LOME', 13, 'LOME VILLE ET SES ENVIRONNANT');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `tb_article`
--
ALTER TABLE `tb_article`
  ADD PRIMARY KEY (`id_art`);

--
-- Index pour la table `tb_bank`
--
ALTER TABLE `tb_bank`
  ADD PRIMARY KEY (`id_bk`);

--
-- Index pour la table `tb_bene_fact`
--
ALTER TABLE `tb_bene_fact`
  ADD PRIMARY KEY (`id_bene`);

--
-- Index pour la table `tb_bl`
--
ALTER TABLE `tb_bl`
  ADD PRIMARY KEY (`id_bl`);

--
-- Index pour la table `tb_bl_detail`
--
ALTER TABLE `tb_bl_detail`
  ADD PRIMARY KEY (`id_bl`);

--
-- Index pour la table `tb_bl_his`
--
ALTER TABLE `tb_bl_his`
  ADD PRIMARY KEY (`id_bhis`);

--
-- Index pour la table `tb_boncom`
--
ALTER TABLE `tb_boncom`
  ADD PRIMARY KEY (`id_bc`);

--
-- Index pour la table `tb_boncom_detail`
--
ALTER TABLE `tb_boncom_detail`
  ADD PRIMARY KEY (`id_bcd`);

--
-- Index pour la table `tb_caisse`
--
ALTER TABLE `tb_caisse`
  ADD PRIMARY KEY (`id_caisse`);

--
-- Index pour la table `tb_catalogue_caisse`
--
ALTER TABLE `tb_catalogue_caisse`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `tb_catalogue_date`
--
ALTER TABLE `tb_catalogue_date`
  ADD PRIMARY KEY (`id_cd`);

--
-- Index pour la table `tb_catalogue_stock`
--
ALTER TABLE `tb_catalogue_stock`
  ADD PRIMARY KEY (`id_cs`);

--
-- Index pour la table `tb_chargement_detail`
--
ALTER TABLE `tb_chargement_detail`
  ADD PRIMARY KEY (`id_chargement_detail`);

--
-- Index pour la table `tb_chargement_veh`
--
ALTER TABLE `tb_chargement_veh`
  ADD PRIMARY KEY (`id_chargement`);

--
-- Index pour la table `tb_chauffeur`
--
ALTER TABLE `tb_chauffeur`
  ADD PRIMARY KEY (`id_chauf`);

--
-- Index pour la table `tb_client`
--
ALTER TABLE `tb_client`
  ADD PRIMARY KEY (`id_clt`);

--
-- Index pour la table `tb_commande_camion`
--
ALTER TABLE `tb_commande_camion`
  ADD PRIMARY KEY (`id_comc`);

--
-- Index pour la table `tb_compte_client`
--
ALTER TABLE `tb_compte_client`
  ADD PRIMARY KEY (`id_cc`);

--
-- Index pour la table `tb_compte_client_detail`
--
ALTER TABLE `tb_compte_client_detail`
  ADD PRIMARY KEY (`id_ccd`);

--
-- Index pour la table `tb_depense`
--
ALTER TABLE `tb_depense`
  ADD PRIMARY KEY (`id_dep`);

--
-- Index pour la table `tb_encaissement`
--
ALTER TABLE `tb_encaissement`
  ADD PRIMARY KEY (`id_enc`);

--
-- Index pour la table `tb_entree`
--
ALTER TABLE `tb_entree`
  ADD PRIMARY KEY (`id_entree`);

--
-- Index pour la table `tb_entree_canc`
--
ALTER TABLE `tb_entree_canc`
  ADD PRIMARY KEY (`id_esc`);

--
-- Index pour la table `tb_facturation`
--
ALTER TABLE `tb_facturation`
  ADD PRIMARY KEY (`id_fact`);

--
-- Index pour la table `tb_facturation_detail`
--
ALTER TABLE `tb_facturation_detail`
  ADD PRIMARY KEY (`id_fact`);

--
-- Index pour la table `tb_facture_canc`
--
ALTER TABLE `tb_facture_canc`
  ADD PRIMARY KEY (`id_fc`);

--
-- Index pour la table `tb_fichees_recap`
--
ALTER TABLE `tb_fichees_recap`
  ADD PRIMARY KEY (`id_fes`);

--
-- Index pour la table `tb_fichees_total`
--
ALTER TABLE `tb_fichees_total`
  ADD PRIMARY KEY (`id_ft`);

--
-- Index pour la table `tb_fiche_es`
--
ALTER TABLE `tb_fiche_es`
  ADD PRIMARY KEY (`id_fes`);

--
-- Index pour la table `tb_gphcirculaire`
--
ALTER TABLE `tb_gphcirculaire`
  ADD PRIMARY KEY (`idgphC`);

--
-- Index pour la table `tb_gphcourbed`
--
ALTER TABLE `tb_gphcourbed`
  ADD PRIMARY KEY (`id_graph`);

--
-- Index pour la table `tb_gphcourbefin`
--
ALTER TABLE `tb_gphcourbefin`
  ADD PRIMARY KEY (`id_graph`);

--
-- Index pour la table `tb_historique_caisse`
--
ALTER TABLE `tb_historique_caisse`
  ADD PRIMARY KEY (`id_hisc`);

--
-- Index pour la table `tb_livraison_camion`
--
ALTER TABLE `tb_livraison_camion`
  ADD PRIMARY KEY (`id_cc`);

--
-- Index pour la table `tb_livreur`
--
ALTER TABLE `tb_livreur`
  ADD PRIMARY KEY (`id_liv`);

--
-- Index pour la table `tb_magasin`
--
ALTER TABLE `tb_magasin`
  ADD PRIMARY KEY (`id_mag`);

--
-- Index pour la table `tb_mission_ordinaire`
--
ALTER TABLE `tb_mission_ordinaire`
  ADD PRIMARY KEY (`id_mis_ord`);

--
-- Index pour la table `tb_mission_speciale`
--
ALTER TABLE `tb_mission_speciale`
  ADD PRIMARY KEY (`id_mis_spec`);

--
-- Index pour la table `tb_mouvement_stock`
--
ALTER TABLE `tb_mouvement_stock`
  ADD PRIMARY KEY (`id_mouv`);

--
-- Index pour la table `tb_parametre`
--
ALTER TABLE `tb_parametre`
  ADD PRIMARY KEY (`id_param`);

--
-- Index pour la table `tb_paramnumfacture`
--
ALTER TABLE `tb_paramnumfacture`
  ADD PRIMARY KEY (`idParamNumFact`);

--
-- Index pour la table `tb_payement_caisse`
--
ALTER TABLE `tb_payement_caisse`
  ADD PRIMARY KEY (`idPaye`);

--
-- Index pour la table `tb_payement_canc`
--
ALTER TABLE `tb_payement_canc`
  ADD PRIMARY KEY (`id_pc`);

--
-- Index pour la table `tb_point_vente`
--
ALTER TABLE `tb_point_vente`
  ADD PRIMARY KEY (`id_point`);

--
-- Index pour la table `tb_rbouteille`
--
ALTER TABLE `tb_rbouteille`
  ADD PRIMARY KEY (`id_rbouteille`);

--
-- Index pour la table `tb_rbouteille_h`
--
ALTER TABLE `tb_rbouteille_h`
  ADD PRIMARY KEY (`id_rb_H`);

--
-- Index pour la table `tb_releve_client`
--
ALTER TABLE `tb_releve_client`
  ADD PRIMARY KEY (`id_rc`);

--
-- Index pour la table `tb_retour_bout`
--
ALTER TABLE `tb_retour_bout`
  ADD PRIMARY KEY (`id_rb`);

--
-- Index pour la table `tb_retour_mission`
--
ALTER TABLE `tb_retour_mission`
  ADD PRIMARY KEY (`id_ret_mission`);

--
-- Index pour la table `tb_sortie`
--
ALTER TABLE `tb_sortie`
  ADD PRIMARY KEY (`id_sortie`);

--
-- Index pour la table `tb_statut_commande`
--
ALTER TABLE `tb_statut_commande`
  ADD PRIMARY KEY (`id_sc`);

--
-- Index pour la table `tb_stock`
--
ALTER TABLE `tb_stock`
  ADD PRIMARY KEY (`id_stock`);

--
-- Index pour la table `tb_stock_camion`
--
ALTER TABLE `tb_stock_camion`
  ADD PRIMARY KEY (`id_sc`);

--
-- Index pour la table `tb_tarif`
--
ALTER TABLE `tb_tarif`
  ADD PRIMARY KEY (`idtarif`);

--
-- Index pour la table `tb_tarif_defprix`
--
ALTER TABLE `tb_tarif_defprix`
  ADD PRIMARY KEY (`idparamprix`);

--
-- Index pour la table `tb_temp_bl`
--
ALTER TABLE `tb_temp_bl`
  ADD PRIMARY KEY (`id_temp_BL`);

--
-- Index pour la table `tb_type_article`
--
ALTER TABLE `tb_type_article`
  ADD PRIMARY KEY (`id_type_art`);

--
-- Index pour la table `tb_type_encais`
--
ALTER TABLE `tb_type_encais`
  ADD PRIMARY KEY (`id_tenc`);

--
-- Index pour la table `tb_type_service`
--
ALTER TABLE `tb_type_service`
  ADD PRIMARY KEY (`id_ts`);

--
-- Index pour la table `tb_type_vehicule`
--
ALTER TABLE `tb_type_vehicule`
  ADD PRIMARY KEY (`id_type_veh`);

--
-- Index pour la table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `tb_vehicule`
--
ALTER TABLE `tb_vehicule`
  ADD PRIMARY KEY (`id_veh`);

--
-- Index pour la table `tb_versement_camion`
--
ALTER TABLE `tb_versement_camion`
  ADD PRIMARY KEY (`id_vc`);

--
-- Index pour la table `tb_vte_chargveh`
--
ALTER TABLE `tb_vte_chargveh`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tb_vte_chargvehd`
--
ALTER TABLE `tb_vte_chargvehd`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tb_zone`
--
ALTER TABLE `tb_zone`
  ADD PRIMARY KEY (`id_zone`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `tb_article`
--
ALTER TABLE `tb_article`
  MODIFY `id_art` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `tb_bank`
--
ALTER TABLE `tb_bank`
  MODIFY `id_bk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tb_bene_fact`
--
ALTER TABLE `tb_bene_fact`
  MODIFY `id_bene` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;
--
-- AUTO_INCREMENT pour la table `tb_bl`
--
ALTER TABLE `tb_bl`
  MODIFY `id_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `tb_bl_detail`
--
ALTER TABLE `tb_bl_detail`
  MODIFY `id_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `tb_bl_his`
--
ALTER TABLE `tb_bl_his`
  MODIFY `id_bhis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `tb_boncom`
--
ALTER TABLE `tb_boncom`
  MODIFY `id_bc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `tb_boncom_detail`
--
ALTER TABLE `tb_boncom_detail`
  MODIFY `id_bcd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `tb_caisse`
--
ALTER TABLE `tb_caisse`
  MODIFY `id_caisse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tb_catalogue_caisse`
--
ALTER TABLE `tb_catalogue_caisse`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT pour la table `tb_catalogue_date`
--
ALTER TABLE `tb_catalogue_date`
  MODIFY `id_cd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tb_catalogue_stock`
--
ALTER TABLE `tb_catalogue_stock`
  MODIFY `id_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=650;
--
-- AUTO_INCREMENT pour la table `tb_chargement_detail`
--
ALTER TABLE `tb_chargement_detail`
  MODIFY `id_chargement_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `tb_chargement_veh`
--
ALTER TABLE `tb_chargement_veh`
  MODIFY `id_chargement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `tb_chauffeur`
--
ALTER TABLE `tb_chauffeur`
  MODIFY `id_chauf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `tb_client`
--
ALTER TABLE `tb_client`
  MODIFY `id_clt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT pour la table `tb_commande_camion`
--
ALTER TABLE `tb_commande_camion`
  MODIFY `id_comc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tb_compte_client`
--
ALTER TABLE `tb_compte_client`
  MODIFY `id_cc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT pour la table `tb_compte_client_detail`
--
ALTER TABLE `tb_compte_client_detail`
  MODIFY `id_ccd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `tb_depense`
--
ALTER TABLE `tb_depense`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `tb_encaissement`
--
ALTER TABLE `tb_encaissement`
  MODIFY `id_enc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `tb_entree`
--
ALTER TABLE `tb_entree`
  MODIFY `id_entree` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `tb_entree_canc`
--
ALTER TABLE `tb_entree_canc`
  MODIFY `id_esc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tb_facturation`
--
ALTER TABLE `tb_facturation`
  MODIFY `id_fact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT pour la table `tb_facturation_detail`
--
ALTER TABLE `tb_facturation_detail`
  MODIFY `id_fact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;
--
-- AUTO_INCREMENT pour la table `tb_facture_canc`
--
ALTER TABLE `tb_facture_canc`
  MODIFY `id_fc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `tb_fichees_recap`
--
ALTER TABLE `tb_fichees_recap`
  MODIFY `id_fes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `tb_fichees_total`
--
ALTER TABLE `tb_fichees_total`
  MODIFY `id_ft` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `tb_fiche_es`
--
ALTER TABLE `tb_fiche_es`
  MODIFY `id_fes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;
--
-- AUTO_INCREMENT pour la table `tb_gphcirculaire`
--
ALTER TABLE `tb_gphcirculaire`
  MODIFY `idgphC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tb_gphcourbed`
--
ALTER TABLE `tb_gphcourbed`
  MODIFY `id_graph` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tb_gphcourbefin`
--
ALTER TABLE `tb_gphcourbefin`
  MODIFY `id_graph` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tb_historique_caisse`
--
ALTER TABLE `tb_historique_caisse`
  MODIFY `id_hisc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT pour la table `tb_livraison_camion`
--
ALTER TABLE `tb_livraison_camion`
  MODIFY `id_cc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tb_livreur`
--
ALTER TABLE `tb_livreur`
  MODIFY `id_liv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `tb_magasin`
--
ALTER TABLE `tb_magasin`
  MODIFY `id_mag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `tb_mission_ordinaire`
--
ALTER TABLE `tb_mission_ordinaire`
  MODIFY `id_mis_ord` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tb_mission_speciale`
--
ALTER TABLE `tb_mission_speciale`
  MODIFY `id_mis_spec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tb_mouvement_stock`
--
ALTER TABLE `tb_mouvement_stock`
  MODIFY `id_mouv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT pour la table `tb_parametre`
--
ALTER TABLE `tb_parametre`
  MODIFY `id_param` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tb_paramnumfacture`
--
ALTER TABLE `tb_paramnumfacture`
  MODIFY `idParamNumFact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tb_payement_caisse`
--
ALTER TABLE `tb_payement_caisse`
  MODIFY `idPaye` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT pour la table `tb_payement_canc`
--
ALTER TABLE `tb_payement_canc`
  MODIFY `id_pc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `tb_point_vente`
--
ALTER TABLE `tb_point_vente`
  MODIFY `id_point` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `tb_rbouteille`
--
ALTER TABLE `tb_rbouteille`
  MODIFY `id_rbouteille` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tb_rbouteille_h`
--
ALTER TABLE `tb_rbouteille_h`
  MODIFY `id_rb_H` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tb_releve_client`
--
ALTER TABLE `tb_releve_client`
  MODIFY `id_rc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;
--
-- AUTO_INCREMENT pour la table `tb_retour_bout`
--
ALTER TABLE `tb_retour_bout`
  MODIFY `id_rb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tb_retour_mission`
--
ALTER TABLE `tb_retour_mission`
  MODIFY `id_ret_mission` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tb_sortie`
--
ALTER TABLE `tb_sortie`
  MODIFY `id_sortie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;
--
-- AUTO_INCREMENT pour la table `tb_stock`
--
ALTER TABLE `tb_stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `tb_stock_camion`
--
ALTER TABLE `tb_stock_camion`
  MODIFY `id_sc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tb_tarif`
--
ALTER TABLE `tb_tarif`
  MODIFY `idtarif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `tb_tarif_defprix`
--
ALTER TABLE `tb_tarif_defprix`
  MODIFY `idparamprix` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT pour la table `tb_temp_bl`
--
ALTER TABLE `tb_temp_bl`
  MODIFY `id_temp_BL` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tb_type_article`
--
ALTER TABLE `tb_type_article`
  MODIFY `id_type_art` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `tb_type_encais`
--
ALTER TABLE `tb_type_encais`
  MODIFY `id_tenc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tb_type_service`
--
ALTER TABLE `tb_type_service`
  MODIFY `id_ts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `tb_type_vehicule`
--
ALTER TABLE `tb_type_vehicule`
  MODIFY `id_type_veh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `tb_vehicule`
--
ALTER TABLE `tb_vehicule`
  MODIFY `id_veh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `tb_versement_camion`
--
ALTER TABLE `tb_versement_camion`
  MODIFY `id_vc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tb_vte_chargveh`
--
ALTER TABLE `tb_vte_chargveh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `tb_vte_chargvehd`
--
ALTER TABLE `tb_vte_chargvehd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tb_zone`
--
ALTER TABLE `tb_zone`
  MODIFY `id_zone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
