-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: CTF
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `breach`
--

DROP TABLE IF EXISTS `breach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `breach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `breach_name` varchar(255) NOT NULL,
  `breach_type` varchar(255) NOT NULL,
  `breach_difficulty` int(11) NOT NULL,
  `breach_points` int(11) NOT NULL,
  `breach_desc` varchar(255) NOT NULL,
  `breach_template` varchar(11) NOT NULL,
  `breach_flag_a` varchar(255) NOT NULL,
  `breach_flag_b` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breach`
--

LOCK TABLES `breach` WRITE;
/*!40000 ALTER TABLE `breach` DISABLE KEYS */;
INSERT INTO `breach` VALUES (16,'Cisco Password Enabled','cryptographie',2,15,'Décryptage du mot de passe Enable.','016','en4ble_6sko','en@ble_6sko'),(17,'Password FTP .pcap','ftp',2,10,'Parcourir la trame pour trouver le mot de passe de connexion.','017','cdts3500','cdts3600'),(18,'Injection SQL ','http',3,15,'Injection SQL ','018','4dm1n1str@t0r','@dm1n1str4t0r'),(19,'Unescape JS','http',2,10,'Unescape mot de passe ','019','hDufjdki156','ADufjdki156'),(20,'Android déverrouillage schéma','cryptanalyse',3,25,'Trouver le schéma pour déverrouiller le téléphone','020','847630125','673840512'),(21,'Include','http',3,25,'Les includes c\'est pas sécure et les commentaires non plus..','021','M0nmdp$ecure123','M4bddest$ecure123'),(22,'Bypass html identification','http',3,25,'Contourner l\'identification html et trouvez le mot de passe pour valider l\'épreuve','022','M0nmdp$ecure123htpasswd','C3siteE$tpasSecur3'),(23,'XSS TeamA vs TeamB','http',4,35,'Volez le cookie de session de l\'autre équipe pour valider le flag','023','ahahbi3njoueJ3su6slefl4g','ohohcbi3njoueJ3su6slefl4g'),(24,'Authentification Formulaire','http',1,5,'Trouver le mot de passe afin de valider le défi','024','hackmoilesel78280','starwarsdarkvador78280'),(25,'Challenge_Gmail','http',1,5,'Retrouvez le mot de passe de la boîte Gmail pour capturer le Flag','025','cetaitpassiduraufinal','cesttropfacilequandmeme'),(26,'ELF Protection','cryptanalyse',2,10,'Programme rédigé en C avec et compilé avec GCC32.','026','UGFzc2Vtb2lsZXNlbA==','Q2ZpbTBoQG1lZA=='),(27,'Script Python','cryptanalyse',3,15,'Deux niveaux de cryptage','027','Cfim0h@med','W@rCr@ft01'),(28,'Double password','http',2,10,'Trouver le bon mot de passe','028','marvelspiderman551','Hosttorvpn12'),(29,'Capture Ethernet','net',2,10,'Conversion Hex String and String base64','029','Laconversionc\'estcoolbravo','Laconversionc\'estcoolbienjoue'),(30,'Open_Redirect','http',1,10,'Réussissez à faire une redirection','030','BatmanestBruceWayne','SupermanestClarkKent'),(31,'Décompiler Programme C / MySQL','cracking',3,30,'Décompiler Programme C puis trouver les ID MySQL pour pouvoir récupérer le flag','031','uncocalightsvp','uncocazerosvp'),(32,'Mot de passe faible','http',1,10,'Ne cherchez pas trop loin, c\'est vraiment facile','032','root','admin'),(33,'Elevation de privilèges - Backup','system',3,20,'Découverte du flag dans le dossier /home/toto au travers de l\'utilisation du script backup.sh dans /var','033','FlagA','FlagB'),(34,'Elevation de privilèges - Find','system',5,40,'Utiliser les droits attribués à find pour lire le fichier flag.txt','034','mcGyverIsTheBestManEver','mcGyv3rIsTheB3st'),(35,'Analyse de trames','net',1,10,'Analysez le traffic réseau et capturez la trame UDP qui s\'échappe du serveur ! ','035','J3SU1SL3FL4GA','J3SU1SL3FL4GB'),(36,'Clé publique dans la nature','ssh',3,30,'Trouvez la clé publique pour acceder au serveur et récuperer le flag !','036','priceless_bhabha','gallant_elion'),(37,'Hack - Remote control','winxp',4,35,'Infectez la machine et prenez son controle','037','FLAGWINXPA','FLAGWINXPB'),(38,'Indisponibilité de Service','net',4,40,'Effectuer un attaque de type DDos afin de surchager le site web et obtenir le flag','038','LaTeamSiicEstVraimentLaMeilleure','LesDevsDeLaTeamSiicSontVraimentLesMeilleurs'),(39,'Analyse de donnés personnelles','cryptanalyse',3,30,'PREREQUIS :  \"Challenge_Gmail\" Grâce au compte gmail de john, trouvez ses renseignements pour decouvrir le flag','039','R3ns31gn3me3nts','D0nnees2J0hnny'),(40,'Historique Appel VOIP','net',2,20,'Il faut inspecter les historiques de conversations et trouver l\'identifiant et mot de passe administrateur.','040','@mobcz+123','321+zcbom@');
/*!40000 ALTER TABLE `breach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipes`
--

DROP TABLE IF EXISTS `equipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) NOT NULL,
  `team_password` varchar(255) NOT NULL,
  `team_member` varchar(255) NOT NULL,
  `team_desc` text NOT NULL,
  `team_logo` int(11) NOT NULL,
  `team_admin` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_name` (`team_name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipes`
--

LOCK TABLES `equipes` WRITE;
/*!40000 ALTER TABLE `equipes` DISABLE KEYS */;
INSERT INTO `equipes` VALUES (9,'Admin','b015fa22747a771031f32e0809bfeb7a','Admin','Administrateurs',2,1),(14,'test','098f6bcd4621d373cade4e832627b4f6','dev','For dev uses',2,0),(15,'rouge','c6ea9af480ca35cb8ded3cb033937f58','toto','Description de l\'équipe...',1,0),(16,'bleu','12bbd9846d51a4f3239e5f72c150eb07','toto','Description de l\'équipe...',3,0),(17,'toto','f71dbe52628a3f83a77ab494817525c6','toto','Description de l\'équipe...',1,0);
/*!40000 ALTER TABLE `equipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_scenario` int(11) NOT NULL,
  `start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_team_a` int(11) NOT NULL,
  `id_team_b` int(11) NOT NULL,
  `score_a` int(11) NOT NULL,
  `score_b` int(11) NOT NULL,
  `game_flag_ok_a` varchar(255) NOT NULL DEFAULT '',
  `game_flag_ok_b` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notif_id_team` int(11) NOT NULL,
  `notif_is_read` int(11) NOT NULL DEFAULT '0',
  `notif_type` varchar(255) NOT NULL,
  `notif_message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,9,1,'danger','Bonjour !'),(2,9,1,'success','bonjour gilbert !'),(3,10,1,'success','hey PD !'),(4,0,1,'primary','bonjour'),(5,0,1,'info','ok'),(6,0,1,'success','c\'est parti !'),(7,0,1,'danger','Attention il reste 10 minutes'),(8,0,1,'warning','En attente de joueurs'),(9,10,1,'success','Bien joué'),(10,9,1,'success','ok'),(11,0,1,'success','ojovnd'),(12,9,1,'success','Bonjour gwendal'),(13,0,1,'danger','BANDE DE PUTE !!!!'),(14,15,1,'success','Bonne chance Jordan !'),(15,15,1,'warning','Ça avance pas très vite Jordan ..');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenario`
--

DROP TABLE IF EXISTS `scenario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scenario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scenario_name` varchar(255) NOT NULL,
  `scenario_desc` varchar(255) NOT NULL,
  `breach_name` varchar(255) NOT NULL,
  `scenario_time` int(255) NOT NULL,
  `scenario_difficulty_average` float NOT NULL,
  `scenario_team_a` varchar(255) DEFAULT NULL,
  `scenario_team_b` varchar(255) DEFAULT NULL,
  `scenario_deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenario`
--

LOCK TABLES `scenario` WRITE;
/*!40000 ALTER TABLE `scenario` DISABLE KEYS */;
INSERT INTO `scenario` VALUES (39,'test','Description pour les joueurs',';18;;16;',30,2.5,NULL,NULL,1);
/*!40000 ALTER TABLE `scenario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-15  9:21:35
