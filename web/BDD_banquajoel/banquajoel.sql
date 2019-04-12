-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 12 avr. 2019 à 11:03
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `banquajoel`
--
DROP schema IF EXISTS `banquajoel`;
CREATE DATABASE IF NOT EXISTS `banquajoel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `banquajoel`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idclient` int(11) NOT NULL,
  `idconseiller` int(11) NOT NULL,
  PRIMARY KEY (`idclient`),
  KEY `fk_client_personne1_idx` (`idclient`),
  KEY `fk_client_conseiller1_idx` (`idconseiller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `idcompte` int(11) NOT NULL AUTO_INCREMENT,
  `solde` double NOT NULL,
  `decouvert` double NOT NULL,
  `idpersonne` int(11) NOT NULL,
  PRIMARY KEY (`idcompte`),
  KEY `fk_personne1_idx` (`idpersonne`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `conseiller`
--

DROP TABLE IF EXISTS `conseiller`;
CREATE TABLE IF NOT EXISTS `conseiller` (
  `idconseiller` int(11) NOT NULL,
  PRIMARY KEY (`idconseiller`),
  KEY `fk_conseiller_personne1_idx` (`idconseiller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `conseiller`
--
-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE IF NOT EXISTS `historique` (
  `idhistorique` int(11) NOT NULL AUTO_INCREMENT,
  `dateOpe` date NOT NULL,
  `montantOpe` double NOT NULL,
  `motif` varchar(45) DEFAULT NULL,
  `idcompte` int(11) NOT NULL,
  PRIMARY KEY (`idhistorique`),
  KEY `fk_historique_compte1_idx` (`idcompte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `messagerie`
--

DROP TABLE IF EXISTS `messagerie`;
CREATE TABLE IF NOT EXISTS `messagerie` (
  `idmessagerie` int(11) NOT NULL AUTO_INCREMENT,
  `contenu` varchar(500) NOT NULL,
  `idclient` int(11) NOT NULL,
  `idconseiller` int(11) NOT NULL,
  PRIMARY KEY (`idmessagerie`),
  KEY `fk_messagerie_client1_idx` (`idclient`),
  KEY `fk_messagerie_conseiller1_idx` (`idconseiller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `idpersonne` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(45) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `isadmin` tinyint(4) DEFAULT NULL,
  `isconseiller` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idpersonne`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`idpersonne`, `prenom`, `nom`, `mail`, `mdp`, `isadmin`, `isconseiller`) VALUES
(1, 'testadmin', 'testadmin', 'testadmin@test.com', 'testadmin', 1, NULL),
(2, 'testconseiller', 'testconseiller', 'testconseiller@test.com', 'testconseiller', NULL, 1),
(3, 'testclient', 'testclient', 'testclient@test.com', 'testclient', NULL, NULL);

--
-- Déclencheurs `personne`
--
DROP TRIGGER IF EXISTS `after_add_personne`;
DELIMITER $$
CREATE TRIGGER `after_add_personne` AFTER INSERT ON `personne` FOR EACH ROW BEGIN
    IF NEW.isconseiller IS NOT NULL
    OR NEW.isconseiller = 'true'
      THEN
        INSERT INTO conseiller (idconseiller) VALUES (NEW.idpersonne);
    END IF;
END
$$
DELIMITER ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_client_conseiller1` FOREIGN KEY (`idconseiller`) REFERENCES `conseiller` (`idconseiller`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_client_personne1` FOREIGN KEY (`idclient`) REFERENCES `personne` (`idpersonne`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_personne1` FOREIGN KEY (`idpersonne`) REFERENCES `personne` (`idpersonne`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
