-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 11 Avril 2019 à 17:11
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
DROP schema if exists `banquajoel` ;
CREATE DATABASE IF NOT EXISTS `banquajoel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `banquajoel`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `idclient` int(11) NOT NULL,
  `idconseiller` int(11) NOT NULL,
  PRIMARY KEY (`idclient`),
  KEY `fk_client_personne1_idx` (`idclient`),
  KEY `fk_client_conseiller1_idx` (`idconseiller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idclient`, `idconseiller`) VALUES
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE IF NOT EXISTS `compte` (
  `idcompte` int(11) NOT NULL AUTO_INCREMENT,
  `solde` double NOT NULL,
  `decouvert` double NOT NULL,
  `idclient` int(11) NOT NULL,
  PRIMARY KEY (`idcompte`),
  KEY `fk_compte_client1_idx` (`idclient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table `conseiller`
--

CREATE TABLE IF NOT EXISTS `conseiller` (
  `idconseiller` int(11) NOT NULL,
  PRIMARY KEY (`idconseiller`),
  KEY `fk_conseiller_personne1_idx` (`idconseiller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `conseiller`
--

INSERT INTO `conseiller` (`idconseiller`) VALUES
(2);

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE IF NOT EXISTS `historique` (
  `idhistorique` int(11) NOT NULL AUTO_INCREMENT,
  `dateOpe` date NOT NULL,
  `montantOpe` double NOT NULL,
  `motif` varchar(45) DEFAULT NULL,
  `idcompte` int(11) NOT NULL,
  PRIMARY KEY (`idhistorique`),
  KEY `fk_historique_compte1_idx` (`idcompte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `messagerie`
--

CREATE TABLE IF NOT EXISTS `messagerie` (
  `idmessagerie` int(11) NOT NULL AUTO_INCREMENT,
  `contenu` varchar(500) NOT NULL,
  `idclient` int(11) NOT NULL,
  `idconseiller` int(11) NOT NULL,
  PRIMARY KEY (`idmessagerie`),
  KEY `fk_messagerie_client1_idx` (`idclient`),
  KEY `fk_messagerie_conseiller1_idx` (`idconseiller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE IF NOT EXISTS `personne` (
  `idpersonne` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(45) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `isadmin` tinyint(4) DEFAULT NULL,
  `isconseiller` tinyint(4) DEFAULT NULL,
  `isclient` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idpersonne`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`idpersonne`, `prenom`, `nom`, `mail`, `mdp`, `isadmin`, `isconseiller`, `isclient`) VALUES
(1, 'testadmin', 'testadmin', 'testadmin', 'testadmin', 1, NULL, NULL),
(2, 'testconseiller', 'testconseiller', 'testconseiller', 'testconseiller', NULL, 1, NULL),
(3, 'testclient', 'testclient', 'testclient', 'testclient', NULL, NULL, 1);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_client_personne1` FOREIGN KEY (`idclient`) REFERENCES `personne` (`idpersonne`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_client_conseiller1` FOREIGN KEY (`idconseiller`) REFERENCES `conseiller` (`idconseiller`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_compte_client1` FOREIGN KEY (`idclient`) REFERENCES `client` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `conseiller`
--
ALTER TABLE `conseiller`
  ADD CONSTRAINT `fk_conseiller_personne1` FOREIGN KEY (`idconseiller`) REFERENCES `personne` (`idpersonne`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `fk_historique_compte1` FOREIGN KEY (`idcompte`) REFERENCES `compte` (`idcompte`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `messagerie`
--
ALTER TABLE `messagerie`
  ADD CONSTRAINT `fk_messagerie_client1` FOREIGN KEY (`idclient`) REFERENCES `client` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_messagerie_conseiller1` FOREIGN KEY (`idconseiller`) REFERENCES `conseiller` (`idconseiller`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
