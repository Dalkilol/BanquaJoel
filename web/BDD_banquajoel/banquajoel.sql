-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 11 Avril 2019 à 15:39
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `banquajoel`
--
CREATE DATABASE IF NOT EXISTS `banquajoel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `banquajoel`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`idadmin`, `nom`, `prenom`, `mail`, `mdp`) VALUES
(1, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `idclient` int(11) NOT NULL AUTO_INCREMENT,
  `idconseiller` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idclient`, `idconseiller`, `nom`, `prenom`, `mail`, `mdp`) VALUES
(1, 1, 'test1', 'test1', 'test1', 'test1'),
(2, 1, 'test2', 'test2', 'test2', 'test2'),
(3, 1, 'test3', 'test3', 'test3', 'test3'),
(4, 2, 'test4', 'test4', 'test4', 'test4'),
(5, 2, 'test5', 'test5', 'test5', 'test5');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE IF NOT EXISTS `compte` (
  `idcompte` int(11) NOT NULL AUTO_INCREMENT,
  `idclient` int(11) NOT NULL,
  `solde` double NOT NULL,
  `decouvert` double NOT NULL,
  PRIMARY KEY (`idcompte`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`idcompte`, `idclient`, `solde`, `decouvert`) VALUES
(1, 1, 1000, 0),
(2, 1, 5000, 0),
(3, 2, 500, 0),
(4, 3, 100, 0),
(5, 4, 10, 0),
(6, 5, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `conseiller`
--

CREATE TABLE IF NOT EXISTS `conseiller` (
  `idconseiller` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  PRIMARY KEY (`idconseiller`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `conseiller`
--

INSERT INTO `conseiller` (`idconseiller`, `nom`, `prenom`, `mail`, `mdp`) VALUES
(1, 'cons1', 'cons1', 'cons1', 'cons1'),
(2, 'cons2', 'cons2', 'cons2', 'cons2');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE IF NOT EXISTS `historique` (
  `idhistorique` int(11) NOT NULL AUTO_INCREMENT,
  `idclient` int(11) NOT NULL,
  `dateOpe` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `montantOpe` double NOT NULL,
  `motif` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhistorique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `messagerie`
--

CREATE TABLE IF NOT EXISTS `messagerie` (
  `idmessagerie` int(11) NOT NULL AUTO_INCREMENT,
  `id_auteur` int(11) NOT NULL,
  `id_destinataire` int(11) NOT NULL,
  `contenu` varchar(500) NOT NULL,
  PRIMARY KEY (`idmessagerie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
