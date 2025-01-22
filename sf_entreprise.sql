-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour sf_entreprise
CREATE DATABASE IF NOT EXISTS `sf_entreprise` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sf_entreprise`;

-- Listage de la structure de table sf_entreprise. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Listage des données de la table sf_entreprise.doctrine_migration_versions : ~0 rows (environ)
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20250120150243', '2025-01-20 15:03:51', 121);

-- Listage de la structure de table sf_entreprise. employe
CREATE TABLE IF NOT EXISTS `employe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entreprise_id` int NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_nais` datetime DEFAULT NULL,
  `date_embauche` datetime NOT NULL,
  `ville` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F804D3B9A4AEAFEA` (`entreprise_id`),
  CONSTRAINT `FK_F804D3B9A4AEAFEA` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sf_entreprise.employe : ~5 rows (environ)
INSERT INTO `employe` (`id`, `entreprise_id`, `nom`, `prenom`, `date_nais`, `date_embauche`, `ville`) VALUES
	(1, 1, 'Smail', 'Stéphane', '1982-01-21 10:30:05', '2019-01-21 10:30:23', 'Acapulco'),
	(2, 1, 'Murmann', 'Mickaël', '1985-01-21 00:00:00', '2010-01-21 00:00:00', 'Dark City'),
	(3, 3, 'Deckard', 'Rick', '2001-01-21 10:34:56', '2025-01-21 10:35:00', 'Los Angeles A.D.'),
	(4, 5, 'Miyazaki', 'Hidetaka', '1979-11-13 00:00:00', '2003-10-19 00:00:00', 'Nagoya'),
	(7, 4, 'Mandolini', 'Foobar', '1984-02-12 00:00:00', '2003-06-13 00:00:00', NULL);

-- Listage de la structure de table sf_entreprise. entreprise
CREATE TABLE IF NOT EXISTS `entreprise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `raison_sociale` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_crea` datetime NOT NULL,
  `adresse` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sf_entreprise.entreprise : ~5 rows (environ)
INSERT INTO `entreprise` (`id`, `raison_sociale`, `date_crea`, `adresse`, `cp`, `ville`) VALUES
	(1, 'ELAN FORMATION', '1993-01-21 00:00:00', '14, rue du Rhône', '67100', 'Strasbourg'),
	(2, 'COACTIS', '1987-01-21 00:00:00', '10, rue des Capucines', '68000', 'Colmar'),
	(3, 'TYRELL CORP.', '1982-01-21 08:54:37', '1, rue Steven Seagal', '90210', 'Bervely Hills'),
	(4, 'CAPCOM', '1986-01-21 22:16:49', '15, rue des Sakuras', '90123', 'Osaka'),
	(5, 'KONAMI', '1983-02-12 00:00:00', '22, Acacia Avenue', '90258', 'London');

-- Listage de la structure de table sf_entreprise. messenger_messages
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sf_entreprise.messenger_messages : ~0 rows (environ)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
