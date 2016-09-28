-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 28 Septembre 2016 à 03:43
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gestion_de_livre`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE IF NOT EXISTS `auteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sexe` varchar(5) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `image` varchar(140) NOT NULL,
  `ville` varchar(40) NOT NULL,
  `courant_literaire` varchar(50) NOT NULL,
  `date_birth` datetime NOT NULL,
  `date_dead` datetime DEFAULT NULL,
  `bio` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`id`, `sexe`, `nom`, `prenom`, `age`, `image`, `ville`, `courant_literaire`, `date_birth`, `date_dead`, `bio`, `updated_at`, `created_at`) VALUES
(1, 'homme', 'Carriere', 'Jean-Claude', 85, 'http://medias.unifrance.org/medias/51/245/62771/format_page/media.jpg', 'Colombières-sur-Orb', 'Romancier', '1939-09-19 00:00:00', NULL, 'Né dans une famille de viticulteurs à Colombières-sur-Orb, Jean-Claude Carrière est un ancien élève du lycée Voltaire puis du lycée Lakanal à Sceaux et de l''École normale supérieure de Saint-Cloud. Après une licence de lettres et une maîtrise d''histoire, il abandonne rapidement sa vocation d''historien pour le dessin et l''écriture1.\r\n\r\nIl publie en 1957 son premier roman, Lézard et rencontre Jacques Tati et Pierre Étaix1 avec qui il cosigne des courts et des longs métrages. À ses débuts, il publie également plusieurs romans d''épouvante chez Fleuve noir, sous le nom de Benoît Becker (pseudonyme collectif utilisé pour cet éditeur par divers auteurs). Sa collaboration avec Buñuel durera dix-neuf ans jusqu''à la mort du réalisateur. Parallèlement, il poursuit sa carrière de dramaturge et adaptateur en particulier avec André Barsacq, Jean-Louis Barrault et Peter Brook. Il travaille aussi régulièrement avec le réalisateur tchèque Miloš Forman.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'homme', 'Ken', 'Follett', 67, 'https://upload.wikimedia.org/wikipedia/commons/8/85/Ken_Follett_2007.JPG', 'Cardiff', 'Roman d''espionnage', '1949-06-05 00:00:00', NULL, 'Il obtient une licence de philosophie à l''University College de Londres. Après l''université, il travaille en tant que journaliste à Cardiff puis à Londres où il commence à écrire. En 1978, son roman L''Arme à l''œil devient un succès de librairie pour lequel il recevra l''année suivante le prix Edgar-Allan-Poe du meilleur roman.\r\n\r\nKen Follett s''exprime avec aisance en français, quoique avec un accent britannique prononcé.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'femme', 'Chandernagor', 'Françoise', 71, 'http://static1.purepeople.com/articles/2/24/03/2/@/165442-francoise-chandernagor-637x0-3.jpg', 'Palaiseau', 'Romancière', '1945-06-19 00:00:00', NULL, 'Elle étudie au lycée Marie-Curie (Sceaux). Après le diplôme de l''Institut d''études politiques de Paris et une maîtrise de droit public, elle entre à vingt et un ans à l''École nationale d''administration (ENA), d''où elle sort deux ans plus tard major de sa promotion. Elle est alors la première femme à obtenir ce rang1.\r\n\r\nElle devient membre du Conseil d''État en 1969.\r\n\r\nElle quitte l''administration et abandonne sa carrière de fonctionnaire en 1993 pour se consacrer entièrement à l''écriture. Elle est membre de l''Académie Goncourt.\r\n\r\nFrançoise Chandernagor est fille d''un premier président de la Cour des Comptes, d''une famille du Limousin, issue au XVIIIe siècle de Charles François Chandernagor, traiteur, né à La Réunion en 1742, fils naturel d''un grand notable (sans doute Charles François de Verdière) et d''une indienne de Chandernagor affranchie (d''où son nom). Mariée en premières noces à Philippe Jurgensen, énarque, inspecteur des Finances, dont elle eut trois enfants puis divorça, et en deuxièmes noces à Gérard Denis de Senneville-Grave, inspecteur général de l’Équipement, Françoise Chandernagor a toujours partagé sa vie entre Paris et le Massif central.\r\n\r\nEn 1969, elle intègre le Conseil d''État où elle va exercer différentes fonctions juridictionnelles, notamment celles de Rapporteur Général.\r\n\r\nElle occupe aussi plusieurs postes dans des administrations extérieures, tant dans le secteur culturel que dans des services économiques, et assume à titre bénévole des responsabilités dans des organismes caritatifs, notamment la vice-présidence de la Fondation de France jusqu''en 1988 et la vice-présidence de la Fondation d''Aguesseau.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE IF NOT EXISTS `livre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(40) NOT NULL,
  `prix` float NOT NULL,
  `numero_isbn` varchar(20) NOT NULL,
  `image` varchar(140) NOT NULL,
  `numero_ean` varchar(20) NOT NULL,
  `id_auteur` int(11) DEFAULT NULL,
  `maison_edition` varchar(40) NOT NULL,
  `date_parution` datetime NOT NULL,
  `magasin` varchar(30) NOT NULL,
  `version_num` tinyint(1) NOT NULL,
  `vues` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `prix`, `numero_isbn`, `image`, `numero_ean`, `id_auteur`, `maison_edition`, `date_parution`, `magasin`, `version_num`, `vues`, `created_at`, `updated_at`) VALUES
(1, 'La controverse de Valladolid ', 4.4, '2714428797', 'http://pictures.abebooks.com/isbn/9782266054010-fr-300.jpg', '9782714428797', 1, 'Le Pré aux clercs', '1992-06-10 00:00:00', 'Fnac', 1, 156, '0000-00-00 00:00:00', '2016-09-26 12:14:43'),
(2, 'Croyance ', 23.5, '2738132456', 'http://www.odilejacob.fr/medias/couvertures/9782738132451.jpg', '9782738132451', 1, 'Odile Jacob', '2015-05-05 00:00:00', 'Fnac', 1, 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Aux portes de l''éternité ', 12.2, '2253125970', 'http://static.fnac-static.com/multimedia/Images/FR/NR/9e/6e/73/7564958/1507-1.jpg', '9782253125976', 2, 'Le Livre De Poche', '2016-03-02 00:00:00', 'Fnac', 0, 68, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'L''hiver du monde', 11.9, '2253125962', 'http://static.fnac-static.com/multimedia/Images/FR/NR/11/06/51/5309969/1507-1.jpg', ' 9782221110836', 2, 'Le Livre De Poche', '2013-10-30 00:00:00', 'Fnac', 0, 658, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'L''allée du roi', 8.7, '2070341216', 'http://static.fnac-static.com/multimedia/images_produits/ZoomPE/4/1/2/9782070341214.jpg', '9782070784936', 3, 'Folio', '2007-03-01 00:00:00', 'Fnac', 1, 140, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Vie de Jude frère de Jésus ', 22.9, '2226259945', 'http://t1.gstatic.com/images?q=tbn:ANd9GcS3sWoDMixhqTgGc0q8AH9-SgXze_JKV0dHJKfN-NDfQoQqHhct', '9782226259943', 3, ' Albin Michel ', '2015-04-01 00:00:00', 'Fnac', 1, 681, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
