-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Client :  sqletud.u-pem.fr
-- Généré le :  Mer 04 Janvier 2023 à 00:28
-- Version du serveur :  5.7.30-log
-- Version de PHP :  7.0.33-0+deb9u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `matis.vivier_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `AFFECTER`
--

CREATE TABLE `AFFECTER` (
  `NUM_CONF` smallint(6) NOT NULL,
  `MAT_TECH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `AFFECTER`
--

INSERT INTO `AFFECTER` (`NUM_CONF`, `MAT_TECH`) VALUES
(1, 10101),
(2, 10101),
(3, 10101),
(4, 10101),
(5, 10101),
(2, 10103),
(2, 10104),
(4, 10104);

-- --------------------------------------------------------

--
-- Structure de la table `AILE`
--

CREATE TABLE `AILE` (
  `CODE_AILE` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `AILE`
--

INSERT INTO `AILE` (`CODE_AILE`) VALUES
('A'),
('B'),
('C'),
('D');

-- --------------------------------------------------------

--
-- Structure de la table `CHEQUE`
--

CREATE TABLE `CHEQUE` (
  `NUM_CHEQUE` int(11) NOT NULL,
  `MONTANT_CHEQUE` int(11) DEFAULT NULL,
  `EMETTEUR_CHEQUE` varchar(50) DEFAULT NULL,
  `BANQUE` varchar(50) DEFAULT NULL,
  `DATEJOUR` date NOT NULL,
  `CODE_P` int(11) NOT NULL,
  `NUM_CONF` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `CHEQUE`
--

INSERT INTO `CHEQUE` (`NUM_CHEQUE`, `MONTANT_CHEQUE`, `EMETTEUR_CHEQUE`, `BANQUE`, `DATEJOUR`, `CODE_P`, `NUM_CONF`) VALUES
(23098, 340, 'Silva', 'BNP', '2023-01-02', 2022, 4),
(244234, 250, 'Zidane', 'Caisse d\'épargne', '2023-01-02', 2021, 2);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `compteur_especes`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `compteur_especes` (
`jour` date
,`montant` int(11)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `compteur_invitation`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `compteur_invitation` (
`num_invitant` int(11)
,`nom_invitant` varchar(20)
,`prénom_invitant` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure de la table `CONFERENCE`
--

CREATE TABLE `CONFERENCE` (
  `NUM_CONF` smallint(6) NOT NULL,
  `THEME` varchar(30) DEFAULT NULL,
  `TYPES_INTERVENTION` varchar(30) DEFAULT NULL,
  `LANGUES` varchar(20) DEFAULT NULL,
  `HEUREDEBUT_CONF` time DEFAULT NULL,
  `DATECONF` date DEFAULT NULL,
  `DUREE_CONF` time DEFAULT NULL,
  `NUM_SALLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `CONFERENCE`
--

INSERT INTO `CONFERENCE` (`NUM_CONF`, `THEME`, `TYPES_INTERVENTION`, `LANGUES`, `HEUREDEBUT_CONF`, `DATECONF`, `DUREE_CONF`, `NUM_SALLE`) VALUES
(1, 'Long Séjour', 'Profesionnels', 'Francais', '18:30:00', '2023-01-22', '02:00:00', 1),
(2, 'Expérience personnelle', 'Individuels', 'Anglais', '10:30:00', '2023-01-31', '01:25:00', 11),
(3, 'Séjours linguistiques', 'Institutions', 'Espagnol', '14:00:00', '2023-02-14', '03:30:00', 22),
(4, 'Séjours Court', 'Individuels', 'Anglais', '21:30:00', '2023-01-12', '00:50:00', 31),
(5, 'Ecologie', 'Institutions', 'Anglais', '17:45:00', '2023-01-07', '01:45:00', 21);

-- --------------------------------------------------------

--
-- Structure de la table `CONFERENCIER`
--

CREATE TABLE `CONFERENCIER` (
  `MATCONF` int(11) NOT NULL,
  `RESUMECOURT` varchar(250) DEFAULT NULL,
  `RESUMELONG` varchar(1500) DEFAULT NULL,
  `NOM_CONF` varchar(20) DEFAULT NULL,
  `PRENOM_CONF` varchar(20) DEFAULT NULL,
  `FONCTION_CONF` varchar(30) DEFAULT NULL,
  `ORGANISME_CONF` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `CONFERENCIER`
--

INSERT INTO `CONFERENCIER` (`MATCONF`, `RESUMECOURT`, `RESUMELONG`, `NOM_CONF`, `PRENOM_CONF`, `FONCTION_CONF`, `ORGANISME_CONF`) VALUES
(10001, 'Un séjours qui résume culture et découverte entourer des habitants', 'Un séjours qui résume culture et découverte entourer des habitants', 'Vivier', 'Matis', 'Informarticien', 'Microsoft'),
(10002, 'De nouvelles expériences qui vont grandir et réfléchir.', 'Des Expériences nouvelles qui vont grandir et réfléchir.', 'Ba', 'Mamadou', 'Restaurateur', 'La trinité'),
(10003, 'Une compréhension et un apprentissage de nouvelles langues culture passionnante', 'Une compréhension et un apprentissage de nouvelles langues culture passionnante', 'Guerreiro', 'Noah', 'Boulanger', 'La Mie Caline'),
(10004, 'Un petit séjours dans un pays aux paysages et une culture époustouflante', 'Un petit séjours dans un pays aux paysages et une culture époustouflante', 'Teixeira', 'Noé', 'Informaticiens', 'Apple'),
(10005, 'Découverte des problèmes de l\'écologie et les divers solutions pour y résoudre', 'Découverte des problèmes de l\'écologie et les divers solutions pour y résoudre', 'Scotto', 'Ugo', 'Techniciens', 'Batisante');

-- --------------------------------------------------------

--
-- Structure de la table `DIRIGER`
--

CREATE TABLE `DIRIGER` (
  `NUM_CONF` smallint(6) NOT NULL,
  `MATCONF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `DIRIGER`
--

INSERT INTO `DIRIGER` (`NUM_CONF`, `MATCONF`) VALUES
(1, 10001),
(2, 10002),
(3, 10003),
(4, 10004),
(5, 10005);

-- --------------------------------------------------------

--
-- Structure de la table `INSCRIPTION`
--

CREATE TABLE `INSCRIPTION` (
  `NUM_CONF` smallint(6) NOT NULL,
  `NUM_PARTICIPANT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `INSCRIPTION`
--

INSERT INTO `INSCRIPTION` (`NUM_CONF`, `NUM_PARTICIPANT`) VALUES
(2, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `INVITATION_ET`
--

CREATE TABLE `INVITATION_ET` (
  `NUM_CONF` smallint(6) NOT NULL,
  `MAT_TECH_Invité` int(11) NOT NULL,
  `NUM_PARTICIPANT_Invité_Par` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `INVITE_P`
--

CREATE TABLE `INVITE_P` (
  `NUM_CONF` smallint(6) NOT NULL,
  `NUM_PARTICIPANT_Invité` int(11) NOT NULL,
  `NUM_PARTICIPANT_Invité_Par` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `INVITE_P`
--

INSERT INTO `INVITE_P` (`NUM_CONF`, `NUM_PARTICIPANT_Invité`, `NUM_PARTICIPANT_Invité_Par`) VALUES
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(1, 7, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1),
(1, 11, 1),
(1, 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `JOUR`
--

CREATE TABLE `JOUR` (
  `DATEJOUR` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `JOUR`
--

INSERT INTO `JOUR` (`DATEJOUR`) VALUES
('2023-01-02'),
('2023-01-04'),
('2023-01-31');

-- --------------------------------------------------------

--
-- Structure de la table `MATERIELLE`
--

CREATE TABLE `MATERIELLE` (
  `NUMOBJET` int(11) NOT NULL,
  `TYPEOBJET` varchar(20) DEFAULT NULL,
  `OBJET` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `MATERIELLE`
--

INSERT INTO `MATERIELLE` (`NUMOBJET`, `TYPEOBJET`, `OBJET`) VALUES
(1, 'Camera', 'Nipson-3000'),
(2, 'Micro', 'Deluxo-24');

-- --------------------------------------------------------

--
-- Structure de la table `OBTENIR_ESPECE`
--

CREATE TABLE `OBTENIR_ESPECE` (
  `DATEJOUR` date NOT NULL,
  `MONTANT_ESPECE` int(11) DEFAULT NULL,
  `NUM_CONF` smallint(6) NOT NULL,
  `CODE_P` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `OBTENIR_ESPECE`
--

INSERT INTO `OBTENIR_ESPECE` (`DATEJOUR`, `MONTANT_ESPECE`, `NUM_CONF`, `CODE_P`) VALUES
('2023-01-02', 15000, 3, 2022),
('2023-01-04', 20000, 1, 2021),
('2023-01-31', 31000, 5, 2021);

-- --------------------------------------------------------

--
-- Structure de la table `PARTICIPANT`
--

CREATE TABLE `PARTICIPANT` (
  `NUM_PARTICIPANT` int(11) NOT NULL,
  `NOM_PARTICIPANT` varchar(20) DEFAULT NULL,
  `PRENOM_PARTICIPANT` varchar(20) DEFAULT NULL,
  `DATENAISSANCE_PARTICIPANT` date DEFAULT NULL,
  `NUMTEL_PARTICIPANT` int(11) DEFAULT NULL,
  `ADRESSE_PARTICIPANT` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `PARTICIPANT`
--

INSERT INTO `PARTICIPANT` (`NUM_PARTICIPANT`, `NOM_PARTICIPANT`, `PRENOM_PARTICIPANT`, `DATENAISSANCE_PARTICIPANT`, `NUMTEL_PARTICIPANT`, `ADRESSE_PARTICIPANT`) VALUES
(1, 'Beckam', 'Noah', '1995-08-21', 768022768, '5 rue de la parisienne'),
(2, 'Ronaldo', 'Da silva', '1976-02-23', 657645321, '13 avenue des tulipes'),
(3, 'Messi', 'Gerard', '1982-03-23', 879867546, '10 rue des ballons d\'or'),
(4, 'Silva', 'Junior do Santos', '1945-06-26', 987980976, 'Avenue des marguerrites'),
(5, 'Gourcuff', 'Didier', '2002-03-23', 657647893, 'Chemin des terres Blanches'),
(6, 'McGrew', 'Stephen', '1996-02-23', 678765645, '33 rue Victor Hugo'),
(7, 'Kyles', 'Lindsey', '1999-08-19', 678987690, '26 rue de la République'),
(8, 'Sirois', 'Maureen', '1978-02-26', 768932093, 'Rue de la tour eiffel'),
(9, 'Covillon', 'Logistillas', '1965-08-23', 675679342, '51 cours Jean Jaures'),
(10, 'Lebrun', 'Creissant', '2004-08-21', 675869087, '61 rue de l\'Epeule'),
(11, 'Panier', 'Ludivine', '2022-08-16', 675698709, '4 Rue du Limas'),
(12, 'Gontrant', 'Roger', '1976-03-20', 786759832, '73 rue de Groussay'),
(13, 'Tulipe', 'Bernardine', '1969-12-10', 675689780, '78 Place de la Madeleine');

-- --------------------------------------------------------

--
-- Structure de la table `PARTICIPANT_NORMAL`
--

CREATE TABLE `PARTICIPANT_NORMAL` (
  `NUM_PARTICIPANT` int(11) NOT NULL,
  `PROFESSION_PARTICIPANT_NORMAL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `PARTICIPANT_NORMAL`
--

INSERT INTO `PARTICIPANT_NORMAL` (`NUM_PARTICIPANT`, `PROFESSION_PARTICIPANT_NORMAL`) VALUES
(1, 'Boulanger'),
(2, 'Artisan'),
(3, 'Artiste');

-- --------------------------------------------------------

--
-- Structure de la table `PARTICIPANT_PRO`
--

CREATE TABLE `PARTICIPANT_PRO` (
  `NUM_PARTICIPANT` int(11) NOT NULL,
  `FONCTION_PARTICIPANT_PRO` varchar(30) DEFAULT NULL,
  `COORDONNES_PARTICIPANT_PRO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `PARTICIPANT_PRO`
--

INSERT INTO `PARTICIPANT_PRO` (`NUM_PARTICIPANT`, `FONCTION_PARTICIPANT_PRO`, `COORDONNES_PARTICIPANT_PRO`) VALUES
(4, 'Ingénieur', 'Ingénieur.micro@gmail.com'),
(5, 'PDG', 'PDGdeboite@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `PROJET`
--

CREATE TABLE `PROJET` (
  `CODE_P` int(11) NOT NULL,
  `TITRE_P` varchar(50) DEFAULT NULL,
  `NOMASSOCIATION` varchar(50) DEFAULT NULL,
  `OBJECTIF_P` varchar(100) DEFAULT NULL,
  `NOMCONTACT` varchar(20) DEFAULT NULL,
  `montant_éspèces` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `PROJET`
--

INSERT INTO `PROJET` (`CODE_P`, `TITRE_P`, `NOMASSOCIATION`, `OBJECTIF_P`, `NOMCONTACT`, `montant_éspèces`) VALUES
(2021, 'Une aides pour nos futur enfants', 'Les Grands Garcons', 'Donner de l\'argent aux parents et aux enfants dans le besoin pour leur réserver un avenir radieux', 'Da Silva', 0),
(2022, 'Le sauvetage des betes', 'Tout pour nos Oursons', 'Faire en sorte de sauver les animaux sauvages sur les banquises et éviter les nombreuses morts', 'Polski', 0);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `présence_conf`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `présence_conf` (
`techniciens` int(11)
);

-- --------------------------------------------------------

--
-- Structure de la table `SALLE`
--

CREATE TABLE `SALLE` (
  `NUM_SALLE` int(11) NOT NULL,
  `CAPACITE_SALLE` int(11) DEFAULT NULL,
  `CODE_AILE` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `SALLE`
--

INSERT INTO `SALLE` (`NUM_SALLE`, `CAPACITE_SALLE`, `CODE_AILE`) VALUES
(1, 100, 'A'),
(2, 100, 'B'),
(3, 100, 'C'),
(11, 300, 'B'),
(12, 300, 'B'),
(13, 300, 'B'),
(21, 500, 'C'),
(22, 500, 'C'),
(23, 500, 'C'),
(31, 750, 'D');

-- --------------------------------------------------------

--
-- Structure de la table `TECHNICIENS`
--

CREATE TABLE `TECHNICIENS` (
  `MAT_TECH` int(11) NOT NULL,
  `NOM_TECH` varchar(20) DEFAULT NULL,
  `PRENOM_TECH` varchar(20) DEFAULT NULL,
  `FONCTION_TECH` varchar(20) DEFAULT NULL,
  `MAT_TECH_responsable_de` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `TECHNICIENS`
--

INSERT INTO `TECHNICIENS` (`MAT_TECH`, `NOM_TECH`, `PRENOM_TECH`, `FONCTION_TECH`, `MAT_TECH_responsable_de`) VALUES
(10101, 'Diakite', 'Diabate', 'Netoyeurs', NULL),
(10102, 'Ekitike', 'Monique', 'Chef de Ménage', 10101),
(10103, 'Fernandez', 'Bruno', 'Cadreur', NULL),
(10104, 'Louis', 'Durant', 'Monteur', 10103),
(10105, 'Fernando', 'Rapido', 'Ingénieur Son', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `UTILISER`
--

CREATE TABLE `UTILISER` (
  `NUM_CONF` smallint(6) NOT NULL,
  `NUMOBJET` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `UTILISER`
--

INSERT INTO `UTILISER` (`NUM_CONF`, `NUMOBJET`) VALUES
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la vue `compteur_especes`
--
DROP TABLE IF EXISTS `compteur_especes`;
-- utilisé(#1142 - La commande 'SHOW VIEW' est interdite à l'utilisateur: 'matis.vivier'@'@etudiant.univ-mlv.fr' sur la table 'compteur_especes')

-- --------------------------------------------------------

--
-- Structure de la vue `compteur_invitation`
--
DROP TABLE IF EXISTS `compteur_invitation`;
-- utilisé(#1142 - La commande 'SHOW VIEW' est interdite à l'utilisateur: 'matis.vivier'@'@etudiant.univ-mlv.fr' sur la table 'compteur_invitation')

-- --------------------------------------------------------

--
-- Structure de la vue `présence_conf`
--
DROP TABLE IF EXISTS `présence_conf`;
-- utilisé(#1142 - La commande 'SHOW VIEW' est interdite à l'utilisateur: 'matis.vivier'@'@etudiant.univ-mlv.fr' sur la table 'présence_conf')

--
-- Index pour les tables exportées
--

--
-- Index pour la table `AFFECTER`
--
ALTER TABLE `AFFECTER`
  ADD PRIMARY KEY (`NUM_CONF`,`MAT_TECH`),
  ADD KEY `MAT_TECH` (`MAT_TECH`);

--
-- Index pour la table `AILE`
--
ALTER TABLE `AILE`
  ADD PRIMARY KEY (`CODE_AILE`);

--
-- Index pour la table `CHEQUE`
--
ALTER TABLE `CHEQUE`
  ADD PRIMARY KEY (`NUM_CHEQUE`),
  ADD UNIQUE KEY `CODE_P` (`CODE_P`),
  ADD KEY `DATEJOUR` (`DATEJOUR`),
  ADD KEY `NUM_CONF` (`NUM_CONF`);

--
-- Index pour la table `CONFERENCE`
--
ALTER TABLE `CONFERENCE`
  ADD PRIMARY KEY (`NUM_CONF`),
  ADD UNIQUE KEY `NUM_SALLE` (`NUM_SALLE`);

--
-- Index pour la table `CONFERENCIER`
--
ALTER TABLE `CONFERENCIER`
  ADD PRIMARY KEY (`MATCONF`);

--
-- Index pour la table `DIRIGER`
--
ALTER TABLE `DIRIGER`
  ADD PRIMARY KEY (`NUM_CONF`,`MATCONF`),
  ADD KEY `MATCONF` (`MATCONF`);

--
-- Index pour la table `INSCRIPTION`
--
ALTER TABLE `INSCRIPTION`
  ADD PRIMARY KEY (`NUM_CONF`,`NUM_PARTICIPANT`),
  ADD KEY `NUM_PARTICIPANT` (`NUM_PARTICIPANT`);

--
-- Index pour la table `INVITATION_ET`
--
ALTER TABLE `INVITATION_ET`
  ADD PRIMARY KEY (`NUM_CONF`,`MAT_TECH_Invité`,`NUM_PARTICIPANT_Invité_Par`),
  ADD KEY `MAT_TECH_Invité` (`MAT_TECH_Invité`),
  ADD KEY `NUM_PARTICIPANT_Invité_Par` (`NUM_PARTICIPANT_Invité_Par`);

--
-- Index pour la table `INVITE_P`
--
ALTER TABLE `INVITE_P`
  ADD PRIMARY KEY (`NUM_CONF`,`NUM_PARTICIPANT_Invité`,`NUM_PARTICIPANT_Invité_Par`),
  ADD KEY `NUM_PARTICIPANT_Invité` (`NUM_PARTICIPANT_Invité`),
  ADD KEY `NUM_PARTICIPANT_Invité_Par` (`NUM_PARTICIPANT_Invité_Par`);

--
-- Index pour la table `JOUR`
--
ALTER TABLE `JOUR`
  ADD PRIMARY KEY (`DATEJOUR`);

--
-- Index pour la table `MATERIELLE`
--
ALTER TABLE `MATERIELLE`
  ADD PRIMARY KEY (`NUMOBJET`);

--
-- Index pour la table `OBTENIR_ESPECE`
--
ALTER TABLE `OBTENIR_ESPECE`
  ADD PRIMARY KEY (`DATEJOUR`),
  ADD KEY `NUM_CONF` (`NUM_CONF`),
  ADD KEY `CODE_P` (`CODE_P`);

--
-- Index pour la table `PARTICIPANT`
--
ALTER TABLE `PARTICIPANT`
  ADD PRIMARY KEY (`NUM_PARTICIPANT`);

--
-- Index pour la table `PARTICIPANT_NORMAL`
--
ALTER TABLE `PARTICIPANT_NORMAL`
  ADD PRIMARY KEY (`NUM_PARTICIPANT`);

--
-- Index pour la table `PARTICIPANT_PRO`
--
ALTER TABLE `PARTICIPANT_PRO`
  ADD PRIMARY KEY (`NUM_PARTICIPANT`);

--
-- Index pour la table `PROJET`
--
ALTER TABLE `PROJET`
  ADD PRIMARY KEY (`CODE_P`);

--
-- Index pour la table `SALLE`
--
ALTER TABLE `SALLE`
  ADD PRIMARY KEY (`NUM_SALLE`),
  ADD KEY `CODE_AILE` (`CODE_AILE`);

--
-- Index pour la table `TECHNICIENS`
--
ALTER TABLE `TECHNICIENS`
  ADD PRIMARY KEY (`MAT_TECH`),
  ADD KEY `MAT_TECH_responsable_de` (`MAT_TECH_responsable_de`);

--
-- Index pour la table `UTILISER`
--
ALTER TABLE `UTILISER`
  ADD PRIMARY KEY (`NUM_CONF`,`NUMOBJET`),
  ADD KEY `NUMOBJET` (`NUMOBJET`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `AFFECTER`
--
ALTER TABLE `AFFECTER`
  ADD CONSTRAINT `AFFECTER_ibfk_1` FOREIGN KEY (`NUM_CONF`) REFERENCES `CONFERENCE` (`NUM_CONF`),
  ADD CONSTRAINT `AFFECTER_ibfk_2` FOREIGN KEY (`MAT_TECH`) REFERENCES `TECHNICIENS` (`MAT_TECH`);

--
-- Contraintes pour la table `CHEQUE`
--
ALTER TABLE `CHEQUE`
  ADD CONSTRAINT `CHEQUE_ibfk_1` FOREIGN KEY (`DATEJOUR`) REFERENCES `JOUR` (`DATEJOUR`),
  ADD CONSTRAINT `CHEQUE_ibfk_2` FOREIGN KEY (`CODE_P`) REFERENCES `PROJET` (`CODE_P`),
  ADD CONSTRAINT `CHEQUE_ibfk_3` FOREIGN KEY (`NUM_CONF`) REFERENCES `CONFERENCE` (`NUM_CONF`);

--
-- Contraintes pour la table `CONFERENCE`
--
ALTER TABLE `CONFERENCE`
  ADD CONSTRAINT `CONFERENCE_ibfk_1` FOREIGN KEY (`NUM_SALLE`) REFERENCES `SALLE` (`NUM_SALLE`);

--
-- Contraintes pour la table `DIRIGER`
--
ALTER TABLE `DIRIGER`
  ADD CONSTRAINT `DIRIGER_ibfk_1` FOREIGN KEY (`NUM_CONF`) REFERENCES `CONFERENCE` (`NUM_CONF`),
  ADD CONSTRAINT `DIRIGER_ibfk_2` FOREIGN KEY (`MATCONF`) REFERENCES `CONFERENCIER` (`MATCONF`);

--
-- Contraintes pour la table `INSCRIPTION`
--
ALTER TABLE `INSCRIPTION`
  ADD CONSTRAINT `INSCRIPTION_ibfk_1` FOREIGN KEY (`NUM_CONF`) REFERENCES `CONFERENCE` (`NUM_CONF`),
  ADD CONSTRAINT `INSCRIPTION_ibfk_2` FOREIGN KEY (`NUM_PARTICIPANT`) REFERENCES `PARTICIPANT` (`NUM_PARTICIPANT`);

--
-- Contraintes pour la table `INVITATION_ET`
--
ALTER TABLE `INVITATION_ET`
  ADD CONSTRAINT `INVITATION_ET_ibfk_1` FOREIGN KEY (`NUM_CONF`) REFERENCES `CONFERENCE` (`NUM_CONF`),
  ADD CONSTRAINT `INVITATION_ET_ibfk_2` FOREIGN KEY (`MAT_TECH_Invité`) REFERENCES `TECHNICIENS` (`MAT_TECH`),
  ADD CONSTRAINT `INVITATION_ET_ibfk_3` FOREIGN KEY (`NUM_PARTICIPANT_Invité_Par`) REFERENCES `PARTICIPANT` (`NUM_PARTICIPANT`);

--
-- Contraintes pour la table `INVITE_P`
--
ALTER TABLE `INVITE_P`
  ADD CONSTRAINT `INVITE_P_ibfk_1` FOREIGN KEY (`NUM_CONF`) REFERENCES `CONFERENCE` (`NUM_CONF`),
  ADD CONSTRAINT `INVITE_P_ibfk_2` FOREIGN KEY (`NUM_PARTICIPANT_Invité`) REFERENCES `PARTICIPANT` (`NUM_PARTICIPANT`),
  ADD CONSTRAINT `INVITE_P_ibfk_3` FOREIGN KEY (`NUM_PARTICIPANT_Invité_Par`) REFERENCES `PARTICIPANT` (`NUM_PARTICIPANT`);

--
-- Contraintes pour la table `OBTENIR_ESPECE`
--
ALTER TABLE `OBTENIR_ESPECE`
  ADD CONSTRAINT `OBTENIR_ESPECE_ibfk_1` FOREIGN KEY (`DATEJOUR`) REFERENCES `JOUR` (`DATEJOUR`),
  ADD CONSTRAINT `OBTENIR_ESPECE_ibfk_2` FOREIGN KEY (`NUM_CONF`) REFERENCES `CONFERENCE` (`NUM_CONF`),
  ADD CONSTRAINT `OBTENIR_ESPECE_ibfk_3` FOREIGN KEY (`CODE_P`) REFERENCES `PROJET` (`CODE_P`);

--
-- Contraintes pour la table `PARTICIPANT_NORMAL`
--
ALTER TABLE `PARTICIPANT_NORMAL`
  ADD CONSTRAINT `PARTICIPANT_NORMAL_ibfk_1` FOREIGN KEY (`NUM_PARTICIPANT`) REFERENCES `PARTICIPANT` (`NUM_PARTICIPANT`),
  ADD CONSTRAINT `PARTICIPANT_NORMAL_ibfk_2` FOREIGN KEY (`NUM_PARTICIPANT`) REFERENCES `PARTICIPANT` (`NUM_PARTICIPANT`);

--
-- Contraintes pour la table `PARTICIPANT_PRO`
--
ALTER TABLE `PARTICIPANT_PRO`
  ADD CONSTRAINT `PARTICIPANT_PRO_ibfk_1` FOREIGN KEY (`NUM_PARTICIPANT`) REFERENCES `PARTICIPANT` (`NUM_PARTICIPANT`),
  ADD CONSTRAINT `PARTICIPANT_PRO_ibfk_2` FOREIGN KEY (`NUM_PARTICIPANT`) REFERENCES `PARTICIPANT` (`NUM_PARTICIPANT`);

--
-- Contraintes pour la table `SALLE`
--
ALTER TABLE `SALLE`
  ADD CONSTRAINT `SALLE_ibfk_1` FOREIGN KEY (`CODE_AILE`) REFERENCES `AILE` (`CODE_AILE`);

--
-- Contraintes pour la table `TECHNICIENS`
--
ALTER TABLE `TECHNICIENS`
  ADD CONSTRAINT `TECHNICIENS_ibfk_1` FOREIGN KEY (`MAT_TECH_responsable_de`) REFERENCES `TECHNICIENS` (`MAT_TECH`);

--
-- Contraintes pour la table `UTILISER`
--
ALTER TABLE `UTILISER`
  ADD CONSTRAINT `UTILISER_ibfk_1` FOREIGN KEY (`NUM_CONF`) REFERENCES `CONFERENCE` (`NUM_CONF`),
  ADD CONSTRAINT `UTILISER_ibfk_2` FOREIGN KEY (`NUMOBJET`) REFERENCES `MATERIELLE` (`NUMOBJET`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



#REQUETES : 


#1) Sélectionnez seulement les conférences avec le critère "Individuels" pour les personnes voulant s'inscrire à des conférences de types individuels :

SELECT NUM_CONF, THEME FROM CONFERENCE WHERE TYPES_INTERVENTION = "Individuels"

#2) Sélectionnez le montant maximale récolter pour un projet durant le mois de Janvier :

SELECT MAX(MONTANT_ESPECE) FROM OBTENIR_ESPECE WHERE DATEJOUR BETWEEN '2023-01-01' AND '2023-01-31'

#3) Sélectionne toutes les personnes qui a été invité dans la conférence 1 :

SELECT * FROM PARTICIPANT LEFT OUTER JOIN INVITE_P ON PARTICIPANT.NUM_PARTICIPANT = INVITE_P.NUM_PARTICIPANT_Invité WHERE NUM_PARTICIPANT_Invité IS NOT NULL AND NUM_CONF = 1

#4) Argent récoltez en moyenne pour un projet par personne dans une conférence : (utile pour des éventuels prévitions)


SELECT OBTENIR_ESPECE.MONTANT_ESPECE / COUNT(INSCRIPTION.NUM_PARTICIPANT) AS argent_récolter_par_personnes_en_moyenne FROM INSCRIPTION, OBTENIR_ESPECE WHERE INSCRIPTION.NUM_CONF = OBTENIR_ESPECE.NUM_CONF AND INSCRIPTION.NUM_CONF = 5 GROUP BY OBTENIR_ESPECE.MONTANT_ESPECE

#5) Permet de connaitre le nbrs de place restante en fonction de la conference et de la salle (capacité - nbrs participant)

SELECT SALLE.CAPACITE_SALLE - COUNT(INSCRIPTION.NUM_PARTICIPANT) AS Place_dispo FROM SALLE, INSCRIPTION, CONFERENCE WHERE SALLE.NUM_SALLE = CONFERENCE.NUM_CONF AND CONFERENCE.NUM_CONF = INSCRIPTION.NUM_CONF AND INSCRIPTION.NUM_CONF = 1