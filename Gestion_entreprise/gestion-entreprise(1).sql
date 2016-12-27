-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 27 Décembre 2016 à 10:32
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion-entreprise`
--

-- --------------------------------------------------------

--
-- Structure de la table `liste_users`
--

CREATE TABLE `liste_users` (
  `ID` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Nv_droit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `liste_users`
--

INSERT INTO `liste_users` (`ID`, `Email`, `Password`, `Nv_droit`) VALUES
(1, 'jay-juana@outlook.fr', 'jeromepaol06', 3),
(2, 'mickael@simplon.co', 'mdp', 3),
(3, 'Anthony@simplon.co', 'mdp', 3),
(4, 'Test@simplon.co', 'mdp', 3);

-- --------------------------------------------------------

--
-- Structure de la table `users_coordonnees`
--

CREATE TABLE `users_coordonnees` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Sexe` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Telephone` int(11) NOT NULL,
  `ID_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_coordonnees`
--

INSERT INTO `users_coordonnees` (`ID`, `Nom`, `Prenom`, `Sexe`, `Adresse`, `Telephone`, `ID_users`) VALUES
(1, 'Prince', 'Mickael', 'Masculin', 'Les moulins', 601020304, 2),
(2, 'Fromy', 'Anthony', 'Masculin ?', 'L\'ariane', 601020304, 3),
(3, 'Essai', 'Essai', 'Essai', 'Essai', 601020304, 4);

-- --------------------------------------------------------

--
-- Structure de la table `users_planning`
--

CREATE TABLE `users_planning` (
  `ID` int(11) NOT NULL,
  `Absence` date NOT NULL,
  `Retard` datetime NOT NULL,
  `ID_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `liste_users`
--
ALTER TABLE `liste_users`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `users_coordonnees`
--
ALTER TABLE `users_coordonnees`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `users_planning`
--
ALTER TABLE `users_planning`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `liste_users`
--
ALTER TABLE `liste_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users_coordonnees`
--
ALTER TABLE `users_coordonnees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `users_planning`
--
ALTER TABLE `users_planning`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
