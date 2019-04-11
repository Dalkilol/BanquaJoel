-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 11 Avril 2019 à 16:09
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
DROP schema IF EXISTS `banquajoel`;
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
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `conseiller_idconseiller` int(11) NOT NULL,
  PRIMARY KEY (`idclient`),
  KEY `fk_client_conseiller_idx` (`conseiller_idconseiller`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idclient`, `nom`, `prenom`, `mail`, `mdp`, `conseiller_idconseiller`) VALUES
(1, 'test1', 'test1', 'test1', 'test1', 1),
(2, 'test2', 'test2', 'test2', 'test2', 1),
(3, 'test3', 'test3', 'test3', 'test3', 1),
(4, 'test4', 'test4', 'test4', 'test4', 2),
(5, 'test5', 'test5', 'test5', 'test5', 2);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE IF NOT EXISTS `compte` (
  `idcompte` int(11) NOT NULL AUTO_INCREMENT,
  `solde` double NOT NULL,
  `decouvert` double NOT NULL,
  `client_idclient` int(11) NOT NULL,
  PRIMARY KEY (`idcompte`),
  KEY `fk_compte_client1_idx` (`client_idclient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`idcompte`, `solde`, `decouvert`, `client_idclient`) VALUES
(1, 1000, 0, 1),
(2, 5000, 0, 1),
(3, 500, 0, 2),
(4, 100, 0, 3),
(5, 10, 0, 4),
(6, 0, 0, 5);

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
  `dateOpe` date NOT NULL,
  `montantOpe` double NOT NULL,
  `motif` varchar(45) DEFAULT NULL,
  `compte_idcompte` int(11) NOT NULL,
  PRIMARY KEY (`idhistorique`),
  KEY `fk_historique_compte1_idx` (`compte_idcompte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `messagerie`
--

CREATE TABLE IF NOT EXISTS `messagerie` (
  `idmessagerie` int(11) NOT NULL AUTO_INCREMENT,
  `contenu` varchar(500) NOT NULL,
  `conseiller_idconseiller` int(11) NOT NULL,
  `client_idclient` int(11) NOT NULL,
  PRIMARY KEY (`idmessagerie`),
  KEY `fk_messagerie_conseiller1_idx` (`conseiller_idconseiller`),
  KEY `fk_messagerie_client1_idx` (`client_idclient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_client_conseiller` FOREIGN KEY (`conseiller_idconseiller`) REFERENCES `conseiller` (`idconseiller`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_compte_client1` FOREIGN KEY (`client_idclient`) REFERENCES `client` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `fk_historique_compte1` FOREIGN KEY (`compte_idcompte`) REFERENCES `compte` (`idcompte`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `messagerie`
--
ALTER TABLE `messagerie`
  ADD CONSTRAINT `fk_messagerie_conseiller1` FOREIGN KEY (`conseiller_idconseiller`) REFERENCES `conseiller` (`idconseiller`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_messagerie_client1` FOREIGN KEY (`client_idclient`) REFERENCES `client` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
