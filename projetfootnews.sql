-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 12 mars 2022 à 21:25
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projetfootnews`
--

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

CREATE TABLE `agent` (
  `idagent` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `fonction` varchar(200) NOT NULL,
  `login` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `agent`
--

INSERT INTO `agent` (`idagent`, `nom`, `prenom`, `fonction`, `login`, `password`) VALUES
(1, 'qzd', 'qzd', 'qzd', 'hh@gmail.com', 'qjkzhdjkqzhd'),
(2, 'ggg', 'ggg', 'ggg', 'gg@gg.com', 'zdddddddddddd'),
(3, 'pekobiv', 'pekobiv', 'Admin', 'hamza1998boufous@gmail.com', 'qzdqzdqzd'),
(4, 'boufous', 'hamza', 'Auteur', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `idArticle` int(11) NOT NULL,
  `titre` varchar(400) NOT NULL,
  `image` varchar(400) NOT NULL,
  `contenu` text NOT NULL,
  `tag` text NOT NULL,
  `date` date NOT NULL,
  `idAgent` int(11) NOT NULL,
  `idCat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idArticle`, `titre`, `image`, `contenu`, `tag`, `date`, `idAgent`, `idCat`) VALUES
(41, 'Welcome To The Best Model Winner Contest', '1.jpg', 'Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner ContestWelcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest ', 'Welcome To The Best Model Winner Contest', '2022-03-11', 4, 1),
(42, 'Welcome To The Best Model Winner Contest', '42.jpg', 'Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner ContestWelcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest ', 'Welcome To The Best Model Winner Contest', '2022-03-11', 4, 1),
(43, 'Welcome To The Best Model Winner Contest', '43.jpg', 'Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest ', 'Welcome To The Best Model Winner Contest', '2022-03-11', 4, 1),
(44, 'Welcome To The Best Model Winner Contest', '44.jpg', 'Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest ', 'Welcome To The Best Model Winner Contest', '2022-03-11', 4, 1),
(45, 'Welcome To The Best Model Winner Contest', '45.jpg', 'Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest', 'Welcome To The Best Model Winner Contest', '2022-03-11', 4, 2),
(46, 'Welcome To The Best Model Winner Contest', '46.jpg', 'Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest', 'Welcome To The Best Model Winner Contest', '2022-03-11', 4, 2),
(47, 'Welcome To The Best Model Winner Contest', '47.jpg', 'Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner ContestWelcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest', 'Welcome To The Best Model Winner Contest', '2022-03-11', 4, 2),
(48, 'Welcome To The Best Model Winner Contest', '48.jpg', 'Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest vWelcome To The Best Model Winner Contest Welcome To The Best Model Winner ContestWelcome To The Best Model Winner Contest Welcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner ContestWelcome To The Best Model Winner Contest', 'Welcome To The Best Model Winner Contest', '2022-03-11', 4, 6),
(49, 'Welcome To The Best Model Winner Contest', '49.jpg', 'Welcome To The Best Model Winner Contest Welcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner Contest', 'Welcome To The Best Model Winner Contest', '2022-03-11', 4, 6),
(50, 'Welcome To The Best Model Winner Contest', '50.jpg', 'Welcome To The Best Model Winner Contest Welcome To The Best Model Winner Contest Welcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner ContestWelcome To The Best Model Winner Contest Welcome To The Best Model Winner ContestWelcome To The Best Model Winner Contest', 'Welcome To The Best Model Winner Contest', '2022-03-11', 4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idcat` int(11) NOT NULL,
  `label` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idcat`, `label`, `description`) VALUES
(1, 'Category', 'Category'),
(2, 'About', 'About'),
(6, 'Latest News', 'Latest News'),
(7, 'Corporate', 'Corporate');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`idagent`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idArticle`),
  ADD KEY `article_ibfk_1` (`idAgent`),
  ADD KEY `article_ibfk_2` (`idCat`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idcat`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agent`
--
ALTER TABLE `agent`
  MODIFY `idagent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`idAgent`) REFERENCES `agent` (`idagent`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`idCat`) REFERENCES `categorie` (`idcat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
