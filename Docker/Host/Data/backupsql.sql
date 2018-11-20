-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 04 Avril 2018 à 14:53
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `CTF`
--
DROP DATABASE IF EXISTS CTF
CREATE DATABASE `CTF` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `CTF`;

-- --------------------------------------------------------

--
-- Structure de la table `breach`
--

CREATE TABLE `breach` (
  `id` int(11) NOT NULL,
  `breach_name` varchar(255) NOT NULL,
  `breach_type` varchar(255) NOT NULL,
  `breach_difficulty` int(11) NOT NULL,
  `breach_points` int(11) NOT NULL,
  `breach_desc` varchar(255) NOT NULL,
  `breach_template` varchar(11) NOT NULL,
  `breach_flag_a` varchar(255) NOT NULL,
  `breach_flag_b` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `breach`
--

INSERT INTO `breach` (`id`, `breach_name`, `breach_type`, `breach_difficulty`, `breach_points`, `breach_desc`, `breach_template`, `breach_flag_a`, `breach_flag_b`) VALUES
(16, 'Cisco Password Enabled', 'cryptographie', 2, 15, 'Décryptage du mot de passe Enable.', '016', 'en4ble_6sko', 'en@ble_6sko'),
(17, 'Password FTP .pcap', 'ftp', 2, 10, 'Parcourir la trame pour trouver le mot de passe de connexion.', '017', 'cdts3500', 'cdts3600'),
(18, 'Injection SQL ', 'http', 3, 15, 'Injection SQL ', '018', '4dm1n1str@t0r', '@dm1n1str4t0r'),
(19, 'Unescape JS', 'http', 2, 10, 'Unescape mot de passe ', '019', 'hDufjdki156', 'ADufjdki156'),
(20, 'Android déverrouillage schéma', 'cryptanalyse', 3, 25, 'Trouver le schéma pour déverrouiller le téléphone', '020', '847630125', '673840512'),
(21, 'Include', 'http', 3, 25, 'Les includes c\'est pas sécure et les commentaires non plus..', '021', 'M0nmdp$ecure123', 'M4bddest$ecure123'),
(22, 'Bypass html identification', 'http', 3, 25, 'Contourner l\'identification html et trouvez le mot de passe pour valider l\'épreuve', '022', 'M0nmdp$ecure123htpasswd', 'C3siteE$tpasSecur3'),
(23, 'XSS TeamA vs TeamB', 'http', 4, 35, 'Volez le cookie de session de l\'autre équipe pour valider le flag', '023', 'ahahbi3njoueJ3su6slefl4g', 'ohohcbi3njoueJ3su6slefl4g'),
(24, 'Authentification Formulaire', 'http', 1, 5, 'Trouver le mot de passe afin de valider le défi', '024', 'hackmoilesel78280', 'starwarsdarkvador78280'),
(25, 'Challenge_Gmail', 'http', 1, 5, 'Retrouvez le mot de passe de la boîte Gmail pour capturer le Flag', '025', 'cetaitpassiduraufinal', 'cesttropfacilequandmeme'),
(26, 'ELF Protection', 'cryptanalyse', 2, 10, 'Programme rédigé en C avec et compilé avec GCC32.', '026', 'UGFzc2Vtb2lsZXNlbA==', 'Q2ZpbTBoQG1lZA=='),
(27, 'Script Python', 'cryptanalyse', 3, 15, 'Deux niveaux de cryptage', '027', 'Cfim0h@med', 'W@rCr@ft01'),
(28, 'Double password', 'http', 2, 10, 'Trouver le bon mot de passe', '028', 'marvelspiderman551', 'Hosttorvpn12'),
(29, 'Capture Ethernet', 'net', 2, 10, 'Conversion Hex String and String base64', '029', 'Laconversionc\'estcoolbravo', 'Laconversionc\'estcoolbienjoue'),
(30, 'Open_Redirect', 'http', 1, 10, 'Réussissez à faire une redirection', '030', 'BatmanestBruceWayne', 'SupermanestClarkKent'),
(31, 'Décompiler Programme C / MySQL', 'cracking', 3, 30, 'Décompiler Programme C puis trouver les ID MySQL pour pouvoir récupérer le flag', '031', 'uncocalightsvp', 'uncocazerosvp'),
(32, 'Mot de passe faible', 'http', 1, 10, 'Ne cherchez pas trop loin, c\'est vraiment facile', '032', 'root', 'admin'),
(33, 'Elevation de privilèges - Backup', 'system', 3, 25, 'Découverte du flag dans le dossier /home/toto au travers de l\'utilisation du script backup.sh dans /var', '033', 'FlagA', 'FlagB'),
(34, 'Elevation de privilèges - Find', 'system', 5, 40, 'Utiliser les droits attribués à find pour lire le fichier flag.txt', '034', 'mcGyverIsTheBestManEver', 'mcGyv3rIsTheB3st'),
(35, 'Analyse de trames', 'net', 1, 10, 'Analysez le traffic réseau et capturez la trame UDP qui s\'échappe du serveur ! ', '035', 'J3SU1SL3FL4GA', 'J3SU1SL3FL4GB'),
(36, 'Clé publique dans la nature', 'ssh', 3, 30, 'Trouvez la clé publique pour acceder au serveur et récuperer le flag !', '036', 'priceless_bhabha', 'gallant_elion'),
(37, 'Hack - Remote control', 'winxp', 4, 35, 'Infectez la machine et prenez son controle', '037', 'FLAGWINXPA', 'FLAGWINXPB'),
(38, 'Indisponibilité de Service', 'net', 4, 40, 'Effectuer un attaque de type DDos afin de surchager le site web et obtenir le flag', '038', 'LaTeamSiicEstVraimentLaMeilleure', 'LesDevsDeLaTeamSiicSontVraimentLesMeilleurs'),
(39, 'Analyse de donnés personnelles', 'cryptanalyse', 3, 30, 'PREREQUIS :  "Challenge_Gmail" Grâce au compte gmail de john, trouvez ses renseignements pour decouvrir le flag', '039', 'R3ns31gn3me3nts', 'D0nnees2J0hnny'),
(40, 'Historique Appel VOIP', 'net', 2, 20, 'Il faut inspecter les historiques de conversations et trouver l\'identifiant et mot de passe administrateur.', '040', '@mobcz+123', '321+zcbom@'),
(41, 'Decompilation APK', 'cracking', 3, 30, 'Décompiler l\'application APK pour obtenir les identifiants de connexion', '041', 'apk_decrypt123a', 'apk_decrypt123b'),
(43, 'Capture de trame FTP', 'ftp', 3, 30, 'Il faut retrouver le mot de passe de connexion à un serveur FTP', '043', 'bouffeunefrite', 'duselpourlesfrites');

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id` int(11) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `team_password` varchar(255) NOT NULL,
  `team_member` varchar(255) NOT NULL,
  `team_desc` text NOT NULL,
  `team_logo` int(11) NOT NULL,
  `team_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `equipes`
--
-- Default admin user: Admin pass: Admin

INSERT INTO `equipes` (`id`, `team_name`, `team_password`, `team_member`, `team_desc`, `team_logo`, `team_admin`) VALUES
(9, 'Admin', 'e3afed0047b08059d0fada10f400c1e5', 'Admin', 'Administrateurs', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `id_scenario` int(11) NOT NULL,
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_team_a` int(11) NOT NULL,
  `id_team_b` int(11) NOT NULL,
  `score_a` int(11) NOT NULL,
  `score_b` int(11) NOT NULL,
  `game_flag_ok_a` varchar(255) NOT NULL DEFAULT '',
  `game_flag_ok_b` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notif_id_team` int(11) NOT NULL,
  `notif_is_read` int(11) NOT NULL DEFAULT '0',
  `notif_type` varchar(255) NOT NULL,
  `notif_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `scenario`
--

CREATE TABLE `scenario` (
  `id` int(11) NOT NULL,
  `scenario_name` varchar(255) NOT NULL,
  `scenario_desc` varchar(255) NOT NULL,
  `breach_name` varchar(255) NOT NULL,
  `scenario_time` int(255) NOT NULL,
  `scenario_difficulty_average` float NOT NULL,
  `scenario_team_a` varchar(255) DEFAULT NULL,
  `scenario_team_b` varchar(255) DEFAULT NULL,
  `scenario_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Index pour les tables exportées
--

--
-- Index pour la table `breach`
--
ALTER TABLE `breach`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_name` (`team_name`);

--
-- Index pour la table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `scenario`
--
ALTER TABLE `scenario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `breach`
--
ALTER TABLE `breach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `scenario`
--
ALTER TABLE `scenario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
