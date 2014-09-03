-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 16 Juin 2014 à 10:39
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `projetclip`
--
CREATE DATABASE IF NOT EXISTS `projetclip` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `projetclip`;

-- --------------------------------------------------------

--
-- Structure de la table `bloc`
--

CREATE TABLE IF NOT EXISTS `bloc` (
  `idBloc` int(10) NOT NULL AUTO_INCREMENT,
  `idNote` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `contenu` longtext NOT NULL,
  `speed` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  PRIMARY KEY (`idBloc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Contenu de la table `bloc`
--

INSERT INTO `bloc` (`idBloc`, `idNote`, `date`, `contenu`, `speed`, `vote`) VALUES
(36, 1, '2000-00-00 15:00:00', '<b>Historique</b> La névrose obsessionnelle a été identifiée assez tard, on la retrouve chez Freud, mais aussi chez Janet. Au 19ème s on parlait de folie du toucher. C''est donc au 19ème s qu''on commence avoir des descriptions sémiologiques de cette névrose.', 257, -6),
(37, 1, '2000-00-00 15:05:00', 'I - Sémiologie du trouble Obsessions, ou idées obsédantes : Une obsession est l''intrusion chez un sujet qui a une conscience claire, d''une idée, représentation, ou d''une pensée, qui va être vécue par le patient comme hors de sa volonté, absurde, ou répréhensible (absurde). Ce qui est important est la notion d''intrusion, de clarté du sujet, et la dimension qui échappe là la volonté du sujet.Les obsessions entraînent chez le sujet un système de lutte anxieuse qui vise à écarter ces idées obsessionnelles, et la simple évocation de l''objet de l''obsession entraîne de l''anxiété.', 579, 0),
(38, 1, '2000-00-00 15:10:00', '<b>Obsession</b> : peut-être une représentation, pensée, sentiment … Le plus souvent le patient a conscience du caractère pathologique de son idée, est capable de reconnaître que ça émane de lui, lutte contre une idée qui accompagne une angoisse. Le sujet a conscience que ces obsessions sont en désaccord avec sa pensée consciente.<b>Obsessions idéatives</b> : le fait d''être assiégé par des idées, mais aussi des mots, images, pseudos souvenirsOn retrouve toute la question de la moralité et des doutes : le sujet peut être obsédé par la religion, scrupules moraux …Obsessions scrupuleuses : en débat interne avec sa propre morale. Entraine le sujet dans des vérifications, puisqu''il doute.Obsessions qui concernant l''envahissement par des chiffres, nécessité de compter les choses', 783, -2),
(39, 1, '2000-00-00 15:15:00', '<b>Obsessions phobiques</b> : la pensée du sujet est assiégée par la pensée d''une situation redoutée. En général, ces obsessions concernent la saleté (il n''a pas besoin d''être confronté à l''objet pour que l''angoisse émerge #phobie) C''est l''aspect mental et les ruminations qui sont angoissants, par forcément la saleté.Microbes Maladie. Phobie : l''angoisse apparaît en dehors de l''objet. Dans l''obsession phobique, il n''y a pas de moyen de l''éviter. phobie : objets contraphobiques', 481, -3),
(40, 1, '2000-00-00 15:20:00', '<b>Compulsion</b> : idée d''un acte que l''on doit accomplir, le plus souvent absurde, gênant ou ridicule. Ce sont des actes répétitifs, ritualisés, et obligatoires. Le sujet ne peut pas s''en soustraire, et il ne peut pas enlever une partie du rituel, il doit le faire dans un certain ordre. Ce rituel a souvent comme but de faire diminuer l''angoisse, pas forcément générée par une situation anxiogène. Le plus souvent, comme le sujet en est conscient, essaie de ne pas le faire, se sent coupable de ne pas le faire, mais ne peux pas ne pas le faire et se sent ensuite coupable de l''avoir fait.', 592, -3),
(46, 5, '2000-00-00 15:00:00', 'Historiquement, les symptômes obsessionnels ont été repérés en psychiatrie depuis Philippe Pinel (les folies raisonnantes), Bénédict Augustin Morel (délire émotif) à Pierre Janet (obsession et psychasthénie) sous des appellations différentes. C est le psychanalyste Sigmund Freud qui en a établi le profil le plus complet notamment à travers son histoire de la cure de l homme aux rats atteint d une névrose obsessionnelle (devenue  névrose de contrainte  dans les nouvelles traductions). Les auteurs successifs des DSMs et, notamment, Spitzer pour la troisième révision ont évacué la notion de névrose trop marquée pour eux par la psychanalyse. C est ainsi qu ils ont proposé de classer les symptômes obsessionnels dans des troubles qui s intègrent dans une vision descriptive et comportementale, fortement marquée par la médecine somatique (organiciste).', 873, 8),
(47, 5, '2000-00-00 15:05:00', 'Il s’agit de pensées qui s’imposent à l’esprit du sujet, des ruminations obsédantes concernant par exemple l’existence de Dieu, la craint d’avoir été à l’origine d’un accident, la crainte d’avoir laissé le gaz ouvert… Ces doutes peuvent prendre la forme de scrupules perfectionnistes comme par exemple l’idée d’avoir mal fait sont travail. Ces obsessions ont également été décrites comme « la folie du doute ». Les sujets sont très imprégnés de doutes, ils se mettent à douter de tout. Ceci est vécu très douloureusement par le sujet, celui-ci ayant du mal à maitriser ses idées, ses comportements agressifs. Ces ruminations empêchent le sujet d’agir, l’envahissement étant incessant.', 684, 87),
(48, 5, '2000-00-00 15:10:00', 'les obsessions ideatives sont caractérisées par irruption dans la pensée de sentiment, une idée, une tendance, apparaissant au malade comme un phénomène morbide en désaccord avec sa pensée consciente et qui persiste malgré ses efforts pour en débarrasser.', 267, 8),
(49, 5, '2000-00-00 15:15:00', 'Les obsessions phobiques sont des craintes obsédantes (par exemple : cancérophobie, nosophobie...) Au cours de ce type obsessions, le sujet est constamment envahi par la crainte de situations ou objets qu il redoute. pas le fait être réellement confronté à la situation ou à un objet redouté qui suscite une angoisse, comme dans la phobie. Dans une obsession phobique, la crainte surgit continuellement entraînant des ruminations et parfois des compulsions. Un grand nombre de termes se terminant par le suffixe -phobiedésignent ainsi des obsessions et pas des phobies.', 583, 4),
(50, 5, '2000-00-00 15:20:00', 'On parle de compulsion quand une tendance intérieure impérative nous pousse à accomplir une action ou à penser à une certaine idée alors que consciemment nous nous y refusons. Exemples : les joueurs compulsifs, les acheteurs compulsifs etc. Cette tendance est irrésistible et la réprimer génère une angoisse. Il arrive cependant que on y parvienne, ou que on la contourne en lui substituant de petits rites répétitifs et anodins. Cependant, il faut différencier ces troubles du comportement avec la dépendance, qui est véritablement maladive.', 547, 4),
(56, 3, '2000-00-00 15:00:00', '<b>Historique</b> Trouble identifié assez tard. (Environ 1çeme siècle). On parlait de folie du touché et de folie consciente.', 125, 76),
(57, 3, '2000-00-00 15:05:00', 'Obsession : intrusion chez un sujet, qui a une conscience claire, d’une idée, d’une représentation ou d’une pensée qui va être vécue par le patient comme hors de sa volonté, vécue comme absurde ou répréhensible. Système de lutte chez le sujet pour écarter ces obsessions. La simple évocation de l’obsession provoque de l’angoisse chez le sujet. Les obsessions surviennent à n’importe quel moment. Beaucoup d’étude montrent que les obsessions sont présentes chez beaucoup d’individus. Idée d’une normalité de base des obsessions, mais qui vont devenir pathologique. Cela provoque une forte souffrance chez le sujet, longue durée, fréquence et intensité des obsessions.Cela peut aussi être des sentiments qui émanent au sujet. Il reconnait l’absurdité, et le caractère pathologique de l’idée. Il admet qu’elle vient de lui-même. Il a conscience que ces obsessions sont en désaccord avec sa pensée consciente.', 906, 18),
(58, 3, '2000-00-00 15:10:00', '<em>Obsession idéative</em> : être assiégé par des idées, des mots. Présence de faux souvenirs, le sujet n’est pas sûr que ce soit vrai. Question de la moralité et des doutes, religion. Scrupules moraux, règles à suivre. Le patient est dans des débats internes avec sa propre morale. Cela entraîne le sujet dans des vérifications, il fait le pour et le contre. Envahissement par des chiffres, nécessité de compter les choses. Préoccupations métaphysiques.', 455, 49),
(59, 3, '2000-00-00 15:15:00', '<em>Obsession phobique</em> : pensée du sujet qui est assiégée par la pensée d’un objet ou d’une situation redoutée. Il n’a pas besoin d’être confronté à l’objet pour que l’angoisse émerge. Plusieurs thèmes : la saleté, les microbes, la maladie. L’angoisse apparaît en dehors de l’objet (<b>différence avec la phobie</b>).', 322, 36),
(60, 3, '2000-00-00 15:20:00', '<b>Compulsions</b> :Idée d’un acte à accomplir, le plus souvent absurde, gênant ou ridicule. Acte répétitif et ritualisés auquel le sujet ne peut pas se soustraire et il ne peut pas non plus enlever une partie du rituel. Ce rituel a pour but de diminuer une angoisse, qui est pas forcément générer par une situation anxiogène. \r\nLe plus souvent, le sujet essai de ne pas le faire, il se sent coupable de vouloir le faire, mais il arrive pas à arrêter.', 463, -7);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE IF NOT EXISTS `commentaire` (
  `idComment` int(10) NOT NULL AUTO_INCREMENT,
  `idBloc` int(10) NOT NULL,
  `idUtilisateur` int(6) NOT NULL,
  `contenu` longtext NOT NULL,
  PRIMARY KEY (`idComment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE IF NOT EXISTS `cours` (
  `idCours` int(10) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(22) CHARACTER SET latin1 NOT NULL,
  `dateStart` datetime NOT NULL,
  `soustitre` text CHARACTER SET latin1 NOT NULL,
  `idMatiere` int(10) NOT NULL,
  PRIMARY KEY (`idCours`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci AUTO_INCREMENT=16 ;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`idCours`, `Nom`, `dateStart`, `soustitre`, `idMatiere`) VALUES
(1, 'Les TOC', '2014-05-30 00:00:00', 'Troubles obsessionnels compulsifs', 2),
(2, 'Le totalitarisme', '2014-06-21 00:00:00', 'Et le régime de Staline', 3),
(3, 'Rome', '2014-06-28 00:00:00', 'Sa fondation et son expansion', 3),
(4, 'Le croissant fertile', '2014-09-25 00:00:00', ' La naissance de l''agriculture et de l''écriture', 3),
(6, '1958-1962', '2014-08-22 00:00:00', 'Une nouvelle République', 3),
(7, 'Le stress', '2014-06-25 00:00:00', 'Causes et conséquences', 2),
(8, 'L''autisme', '2014-06-25 00:00:00', 'Psychopathologie', 2),
(9, 'Stérochimie', '2014-06-28 00:00:00', 'Représentations des molécules et stéréodescripteurs', 1),
(10, 'Les alcènes', '2014-09-12 00:00:00', 'Polymérisations', 1),
(11, 'Les glucides', '2015-01-16 00:00:00', 'Les monosaccharides', 1),
(12, 'Test psychologique', '2014-09-27 00:00:00', 'Définition et caractéristiques', 2),
(13, 'Banque - PME', '2014-06-28 00:00:00', 'Relation et financement de la PME', 4),
(14, 'Probabilité', '2014-06-28 00:00:00', 'La loi Normale', 5),
(15, 'Java', '2014-06-28 00:00:00', 'La Programmation Orientée Objet', 6);

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
  `idMatiere` int(10) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  PRIMARY KEY (`idMatiere`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`idMatiere`, `nom`) VALUES
(1, 'Chimie'),
(2, 'Psychologie'),
(3, 'Histoire'),
(4, 'Finance'),
(5, 'Mathématiques'),
(6, 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `motclefs`
--

CREATE TABLE IF NOT EXISTS `motclefs` (
  `idMot` int(11) NOT NULL AUTO_INCREMENT,
  `idCours` int(10) NOT NULL,
  `mot` varchar(26) NOT NULL,
  `frequence` int(5) NOT NULL,
  `tailleMot` int(11) NOT NULL,
  PRIMARY KEY (`idMot`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=437 ;

--
-- Contenu de la table `motclefs`
--

INSERT INTO `motclefs` (`idMot`, `idCours`, `mot`, `frequence`, `tailleMot`) VALUES
(1, 1, '<b>historique</b></br>la', 6, 15),
(2, 1, 'névrose', 36, 18),
(4, 1, 'identifiée', 6, 15),
(5, 1, 'tard', 12, 15),
(8, 1, 'freud', 12, 15),
(9, 1, 'janet', 12, 15),
(10, 1, '19ème', 12, 15),
(11, 1, 'parlait', 12, 15),
(12, 1, 'folie', 24, 16),
(13, 1, 'toucher', 6, 15),
(16, 1, 'commence', 6, 15),
(17, 1, 'descriptions', 6, 15),
(18, 1, 'sémiologiques', 6, 15),
(19, 1, 'sémiologie', 6, 15),
(20, 1, 'trouble<br/>obsessions', 6, 15),
(22, 1, 'obsédante', 24, 16),
(23, 1, 'obsession', 18, 16),
(24, 1, 'l''intrusion', 6, 15),
(25, 1, 'sujet', 156, 30),
(26, 1, 'conscience', 30, 17),
(27, 1, 'claire', 12, 15),
(29, 1, 'idée', 48, 19),
(30, 1, 'représentation', 18, 16),
(31, 1, 'pensée', 66, 21),
(32, 1, 'va', 12, 15),
(34, 1, 'patient', 24, 16),
(35, 1, 'hors', 12, 15),
(36, 1, 'volonté', 18, 16),
(37, 1, 'absurde', 24, 16),
(38, 1, 'répréhensible', 12, 15),
(39, 1, '(absurde)', 6, 15),
(40, 1, 'important', 6, 15),
(41, 1, 'notion', 12, 15),
(42, 1, 'd''intrusion', 6, 15),
(43, 1, 'clarté', 6, 15),
(44, 1, 'dimension', 6, 15),
(45, 1, 'échappe', 6, 15),
(47, 1, 'obsession', 102, 24),
(48, 1, 'entraînent', 6, 15),
(49, 1, 'système', 12, 15),
(50, 1, 'lutte', 18, 16),
(51, 1, 'anxieuse', 6, 15),
(52, 1, 'vise', 6, 15),
(53, 1, 'écarter', 12, 15),
(54, 1, 'obsessionnelles', 6, 15),
(55, 1, 'simple', 12, 15),
(56, 1, 'évocation', 12, 15),
(57, 1, 'objet', 24, 16),
(59, 1, 'entraîne', 12, 15),
(60, 1, 'l''anxiété', 6, 15),
(62, 1, 'assiégé', 18, 16),
(63, 1, 'indépendamment', 6, 15),
(64, 1, 'circonstances', 6, 15),
(65, 1, '(pas', 6, 15),
(66, 1, 'besoin', 18, 16),
(67, 1, 'd''objet', 6, 15),
(68, 1, 'déclencher', 6, 15),
(69, 1, '#phobie)<br/>les', 6, 15),
(70, 1, 'présentes', 12, 15),
(71, 1, 'individu', 6, 15),
(72, 1, 'nos', 6, 15),
(73, 1, 'différentes', 12, 15),
(74, 1, 'thématiques', 6, 15),
(75, 1, 'amène', 6, 15),
(76, 1, 'considérer', 6, 15),
(77, 1, 'l''idée', 12, 15),
(79, 1, 'continuum', 6, 15),
(80, 1, 'entre', 6, 15),
(81, 1, 'normal', 6, 15),
(82, 1, 'pathologique', 30, 17),
(83, 1, 'existe', 6, 15),
(84, 1, 'normales', 6, 15),
(85, 1, 'tirent', 6, 15),
(86, 1, 'pathologie', 6, 15),
(87, 1, 's''aggravent', 6, 15),
(88, 1, 'souffre', 6, 15),
(89, 1, 'durée', 12, 15),
(90, 1, 'fréquence', 12, 15),
(91, 1, 'l''intensité', 6, 15),
(92, 1, 'fortes', 6, 15),
(93, 1, '<br/><b>obsession</b>', 6, 15),
(95, 1, 'sentiment', 12, 15),
(97, 1, 'caractère', 12, 15),
(98, 1, 'capable', 6, 15),
(99, 1, 'reconnaître', 6, 15),
(100, 1, 'émane', 6, 15),
(101, 1, 'contre', 12, 15),
(102, 1, 's''accompagne', 6, 15),
(103, 1, 'd''angoisse', 6, 15),
(104, 1, 'désaccord', 18, 16),
(106, 1, '<br/><b>obsessions', 12, 15),
(107, 1, 'idéatives</b>', 6, 15),
(109, 1, 'd''être', 18, 16),
(110, 1, 'mots', 12, 15),
(111, 1, 'images', 6, 15),
(112, 1, 'pseudos', 6, 15),
(113, 1, 'souvenirson', 6, 15),
(114, 1, 'toute', 6, 15),
(115, 1, 'question', 12, 15),
(116, 1, 'moralité', 12, 15),
(117, 1, 'doute', 24, 16),
(118, 1, 'obsédé', 6, 15),
(119, 1, 'religion', 12, 15),
(120, 1, 'scrupule', 18, 16),
(121, 1, 'moraux', 12, 15),
(122, 1, '…obsessions', 6, 15),
(123, 1, 'scrupuleuses', 6, 15),
(124, 1, 'débat', 6, 15),
(125, 1, 'interne', 6, 15),
(126, 1, 'propre', 12, 15),
(127, 1, 'morale', 12, 15),
(128, 1, 'entraine', 6, 15),
(129, 1, 'vérifications', 12, 15),
(130, 1, 'puisqu''il', 6, 15),
(131, 1, 'doute', 12, 15),
(132, 1, 'concernant', 12, 15),
(133, 1, 'l''envahissement', 6, 15),
(134, 1, 'chiffres', 12, 15),
(135, 1, 'nécessité', 12, 15),
(136, 1, 'compter', 12, 15),
(137, 1, 'choses', 12, 15),
(138, 1, 'phobiques</b>', 6, 15),
(139, 1, 'assiégée', 12, 15),
(140, 1, 'situation', 36, 18),
(141, 1, 'redoutée', 12, 15),
(142, 1, 'général', 6, 15),
(143, 1, 'concernent', 6, 15),
(144, 1, 'saleté', 18, 16),
(145, 1, '(il', 6, 15),
(146, 1, 'n''a', 6, 15),
(147, 1, 'confronté', 18, 16),
(148, 1, 'angoisse', 30, 17),
(149, 1, 'émerge', 12, 15),
(150, 1, '#phobie)', 6, 15),
(151, 1, 'l''aspect', 6, 15),
(152, 1, 'mental', 6, 15),
(153, 1, 'rumination', 24, 16),
(154, 1, 'angoissants', 6, 15),
(155, 1, 'forcément', 18, 16),
(156, 1, 'microbes', 12, 15),
(157, 1, 'maladie', 12, 15),
(158, 1, 'phobie', 18, 16),
(159, 1, 'apparaît', 12, 15),
(160, 1, 'dehors', 12, 15),
(161, 1, 'phobique', 12, 15),
(162, 1, 'n''y', 6, 15),
(163, 1, 'moyen', 6, 15),
(164, 1, 'l''éviter', 6, 15),
(165, 1, 'objets', 6, 15),
(166, 1, 'contraphobiques', 6, 15),
(167, 1, '<br/><b>compulsion</b>', 6, 15),
(168, 1, 'acte', 18, 16),
(169, 1, 'l''on', 12, 15),
(170, 1, 'doit', 18, 16),
(171, 1, 'accomplir', 18, 16),
(172, 1, 'gênant', 12, 15),
(173, 1, 'ridicule', 12, 15),
(174, 1, 'actes', 6, 15),
(175, 1, 'répétitifs', 12, 15),
(176, 1, 'ritualisés', 12, 15),
(177, 1, 'obligatoires', 6, 15),
(178, 1, 's''en', 12, 15),
(179, 1, 'soustraire', 12, 15),
(180, 1, 'enlever', 12, 15),
(181, 1, 'partie', 12, 15),
(182, 1, 'rituel', 24, 16),
(184, 1, 'certain', 6, 15),
(185, 1, 'ordre', 6, 15),
(186, 1, 'but', 12, 15),
(187, 1, 'diminuer', 12, 15),
(188, 1, 'générée', 6, 15),
(189, 1, 'anxiogène', 12, 15),
(190, 1, 'conscient', 6, 15),
(191, 1, 'essaie', 6, 15),
(192, 1, 'coupable', 18, 16),
(193, 1, 'peux', 6, 15),
(194, 1, 'l''avoir', 6, 15),
(195, 1, 'historiquement', 6, 15),
(196, 1, 'symptômes', 12, 15),
(197, 1, 'obsessionnels', 12, 15),
(198, 1, 'repérés', 6, 15),
(199, 1, 'psychiatrie', 6, 15),
(200, 1, 'philippe', 6, 15),
(201, 1, 'pinel', 6, 15),
(202, 1, '(les', 6, 15),
(203, 1, 'folies', 6, 15),
(204, 1, 'raisonnantes)', 6, 15),
(205, 1, 'bénédict', 6, 15),
(206, 1, 'augustin', 6, 15),
(207, 1, 'morel', 6, 15),
(208, 1, '(«', 12, 15),
(209, 1, 'délire', 6, 15),
(210, 1, 'émotif', 6, 15),
(211, 1, '»)', 12, 15),
(212, 1, 'pierre', 6, 15),
(213, 1, 'psychasthénie', 6, 15),
(214, 1, 'sous', 6, 15),
(215, 1, 'appellations', 6, 15),
(216, 1, 'psychanalyste', 6, 15),
(217, 1, 'sigmund', 6, 15),
(218, 1, 'établi', 6, 15),
(219, 1, 'profil', 6, 15),
(220, 1, 'complet', 6, 15),
(221, 1, 'notamment', 12, 15),
(222, 1, 'travers', 6, 15),
(223, 1, 'histoire', 6, 15),
(224, 1, 'cure', 6, 15),
(225, 1, 'l''homme', 6, 15),
(226, 1, 'rats', 6, 15),
(227, 1, 'atteint', 6, 15),
(228, 1, '(devenue', 6, 15),
(229, 1, 'contrainte', 6, 15),
(230, 1, 'nouvelles', 6, 15),
(231, 1, 'traductions)', 6, 15),
(232, 1, 'auteurs', 6, 15),
(233, 1, 'successifs', 6, 15),
(234, 1, 'desdsms', 6, 15),
(235, 1, 'spitzer', 6, 15),
(236, 1, 'troisième', 6, 15),
(237, 1, 'révision', 6, 15),
(238, 1, 'évacué', 6, 15),
(239, 1, 'marquée', 12, 15),
(240, 1, 'psychanalyse', 6, 15),
(241, 1, 'ainsi', 12, 15),
(242, 1, 'qu''ils', 6, 15),
(243, 1, 'proposé', 6, 15),
(244, 1, 'classer', 6, 15),
(245, 1, 'troubles', 12, 15),
(246, 1, 's''intègrent', 6, 15),
(247, 1, 'vision', 6, 15),
(248, 1, 'descriptive', 6, 15),
(249, 1, 'comportementale', 6, 15),
(250, 1, 'fortement', 6, 15),
(251, 1, 'médecine', 6, 15),
(252, 1, 'somatique', 6, 15),
(253, 1, '(organiciste)', 6, 15),
(254, 1, '<br/>il', 6, 15),
(255, 1, 's’agit', 6, 15),
(256, 1, 'pensées', 6, 15),
(257, 1, 's’imposent', 6, 15),
(258, 1, 'l’esprit', 6, 15),
(259, 1, 'l’existence', 6, 15),
(260, 1, 'dieu', 6, 15),
(261, 1, 'craint', 6, 15),
(262, 1, 'd’avoir', 18, 16),
(263, 1, 'l’origine', 6, 15),
(264, 1, 'd’un', 18, 16),
(265, 1, 'accident', 6, 15),
(266, 1, 'crainte', 18, 16),
(267, 1, 'laissé', 6, 15),
(268, 1, 'gaz', 6, 15),
(269, 1, 'ouvert…', 6, 15),
(270, 1, 'peuvent', 6, 15),
(271, 1, 'prendre', 6, 15),
(272, 1, 'forme', 6, 15),
(273, 1, 'perfectionnistes', 6, 15),
(274, 1, 'l’idée', 12, 15),
(275, 1, 'mal', 12, 15),
(276, 1, 'travail', 6, 15),
(277, 1, 'également', 6, 15),
(278, 1, 'décrites', 6, 15),
(279, 1, 'sujets', 6, 15),
(280, 1, 'imprégnés', 6, 15),
(281, 1, 'mettent', 6, 15),
(282, 1, 'douter', 6, 15),
(283, 1, 'ceci', 6, 15),
(284, 1, 'vécu', 6, 15),
(285, 1, 'douloureusement', 6, 15),
(286, 1, 'ayant', 6, 15),
(287, 1, 'maitriser', 6, 15),
(288, 1, 'comportements', 6, 15),
(289, 1, 'agressifs', 6, 15),
(290, 1, 'empêchent', 6, 15),
(291, 1, 'd’agir', 6, 15),
(292, 1, 'l’envahissement', 6, 15),
(293, 1, 'étant', 6, 15),
(294, 1, 'incessant', 6, 15),
(295, 1, 'ideatives', 6, 15),
(296, 1, 'caractérisées', 6, 15),
(297, 1, '"l''irruption', 6, 15),
(298, 1, 'tendance', 18, 16),
(299, 1, 'apparaissant', 6, 15),
(300, 1, 'malade', 6, 15),
(301, 1, 'phénomène', 6, 15),
(302, 1, 'morbide', 6, 15),
(303, 1, 'persiste', 6, 15),
(304, 1, 'malgré', 6, 15),
(305, 1, 'efforts', 6, 15),
(306, 1, 'débarrasser', 6, 15),
(307, 1, 'phobiques', 6, 15),
(308, 1, 'craintes', 6, 15),
(309, 1, '(par', 6, 15),
(310, 1, 'cancérophobie', 6, 15),
(311, 1, 'nosophobie', 6, 15),
(312, 1, 'cours', 6, 15),
(313, 1, 'type', 6, 15),
(314, 1, 'd''obsessions', 6, 15),
(315, 1, 'constamment', 6, 15),
(316, 1, 'envahi', 6, 15),
(317, 1, 'objet', 12, 15),
(318, 1, 'qu''il', 6, 15),
(319, 1, 'redoute', 6, 15),
(320, 1, 'n''est', 6, 15),
(321, 1, 'réellement', 6, 15),
(322, 1, 'redouté', 6, 15),
(323, 1, 'suscite', 6, 15),
(324, 1, 'surgit', 6, 15),
(325, 1, 'continuellement', 6, 15),
(326, 1, 'entraînant', 6, 15),
(327, 1, 'parfois', 6, 15),
(328, 1, 'compulsions', 6, 15),
(329, 1, 'grand', 6, 15),
(330, 1, 'nombre', 6, 15),
(331, 1, 'termes', 6, 15),
(332, 1, 'terminant', 6, 15),
(333, 1, 'suffixe', 6, 15),
(334, 1, 'phobiedésignent', 6, 15),
(335, 1, 'phobies', 6, 15),
(336, 1, '<br/>on', 6, 15),
(337, 1, 'parle', 6, 15),
(338, 1, 'compulsion', 6, 15),
(339, 1, 'lorsqu''une', 6, 15),
(340, 1, 'intérieure', 6, 15),
(341, 1, 'impérative', 6, 15),
(342, 1, 'pousse', 6, 15),
(343, 1, 'action', 6, 15),
(344, 1, 'penser', 6, 15),
(345, 1, 'certaine', 6, 15),
(346, 1, 'consciemment', 6, 15),
(347, 1, 'refusons', 6, 15),
(348, 1, 'exemples', 6, 15),
(349, 1, 'joueurs', 6, 15),
(350, 1, 'compulsifs', 12, 15),
(351, 1, 'acheteurs', 6, 15),
(352, 1, 'irrésistible', 6, 15),
(353, 1, 'réprimer', 6, 15),
(354, 1, 'génère', 6, 15),
(355, 1, 'arrive', 6, 15),
(356, 1, 'cependant', 12, 15),
(357, 1, 'parvienne', 6, 15),
(358, 1, 'contourne', 6, 15),
(359, 1, 'substituant', 6, 15),
(360, 1, 'petits', 6, 15),
(361, 1, 'rites', 6, 15),
(362, 1, 'anodins', 6, 15),
(363, 1, 'faut', 6, 15),
(364, 1, 'différencier', 6, 15),
(365, 1, 'comportement', 6, 15),
(366, 1, 'd’avec', 6, 15),
(367, 1, 'dépendance', 6, 15),
(368, 1, 'véritablement', 6, 15),
(369, 1, 'maladive', 6, 15),
(370, 1, '<b>historique</b><br/>trou', 6, 15),
(371, 1, 'identifié', 6, 15),
(372, 1, '(environ', 6, 15),
(373, 1, '1çeme', 6, 15),
(374, 1, 'siècle)', 6, 15),
(375, 1, 'touché', 6, 15),
(376, 1, 'intrusion', 6, 15),
(378, 1, 'l’obsession', 6, 15),
(379, 1, 'provoque', 12, 15),
(381, 1, 'surviennent', 6, 15),
(382, 1, 'n’importe', 6, 15),
(383, 1, 'moment', 6, 15),
(384, 1, 'd’étude', 6, 15),
(385, 1, 'montrent', 6, 15),
(386, 1, 'd’individus', 6, 15),
(387, 1, 'normalité', 6, 15),
(388, 1, 'base', 6, 15),
(389, 1, 'vont', 6, 15),
(390, 1, 'devenir', 6, 15),
(391, 1, 'forte', 6, 15),
(392, 1, 'souffrance', 6, 15),
(393, 1, 'longue', 6, 15),
(394, 1, 'intensité', 6, 15),
(395, 1, '<br/>cela', 6, 15),
(396, 1, 'sentiments', 6, 15),
(397, 1, 'émanent', 6, 15),
(398, 1, 'reconnait', 6, 15),
(399, 1, 'l’absurdité', 6, 15),
(400, 1, 'admet', 6, 15),
(401, 1, 'qu’elle', 6, 15),
(402, 1, 'vient', 6, 15),
(403, 1, '<br/><em>obsession', 12, 15),
(404, 1, 'idéative</em>', 6, 15),
(405, 1, 'présence', 6, 15),
(406, 1, 'faux', 6, 15),
(407, 1, 'souvenirs', 6, 15),
(408, 1, 'n’est', 12, 15),
(409, 1, 'sûr', 6, 15),
(410, 1, 'soit', 6, 15),
(411, 1, 'vrai', 6, 15),
(412, 1, 'règles', 6, 15),
(413, 1, 'suivre', 6, 15),
(414, 1, 'débats', 6, 15),
(415, 1, 'internes', 6, 15),
(416, 1, 'envahissement', 6, 15),
(417, 1, 'préoccupations', 6, 15),
(418, 1, 'métaphysiques', 6, 15),
(419, 1, 'phobique</em>', 6, 15),
(420, 1, 'n’a', 6, 15),
(421, 1, 'd’être', 6, 15),
(422, 1, 'l’objet', 12, 15),
(423, 1, 'plusieurs', 6, 15),
(424, 1, 'thèmes', 6, 15),
(425, 1, '(<b>différence', 6, 15),
(426, 1, 'phobie</b>)', 6, 15),
(427, 1, '<b>compulsions</b>', 6, 15),
(428, 1, 'l’on', 6, 15),
(429, 1, 'répétitif', 6, 15),
(430, 1, 'auquel', 6, 15),
(431, 1, 'générer', 6, 15),
(432, 1, '\r\nle', 6, 15),
(433, 1, 'essai', 6, 15),
(434, 1, 'vouloir', 6, 15),
(435, 1, 'n’arrive', 6, 15),
(436, 1, 'arrêter', 6, 15);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `idNote` int(10) NOT NULL AUTO_INCREMENT,
  `idUtilisateur` int(6) NOT NULL,
  `idCours` int(10) NOT NULL,
  `contenu` longtext NOT NULL,
  PRIMARY KEY (`idNote`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `note`
--

INSERT INTO `note` (`idNote`, `idUtilisateur`, `idCours`, `contenu`) VALUES
(1, 1, 1, '<span class="15:20:00"><span class="15:15:00"><span class="15:10:00"><span class="15:05:00"><span class="15:00:00"><b>Historique</b><br/>La névrose obsessionnelle a été identifiée assez tard, on la retrouve chez Freud, mais aussi chez Janet. Au 19ème s on parlait de folie du toucher. C''est donc au 19ème s qu''on commence avoir des descriptions sémiologiques de cette névrose.</span><br/><br/> <b>I - Sémiologie du trouble</b><br/>Obsessions, ou idées obsédantes : Une obsession est l''intrusion chez un sujet qui a une conscience claire, d''une idée, représentation, ou d''une pensée, qui va être vécue par le patient comme hors de sa volonté, absurde, ou répréhensible (absurde). Ce qui est important est la notion d''intrusion, de clarté du sujet, et la dimension qui échappe là la volonté du sujet.<br/>Les obsessions entraînent chez le sujet un système de lutte anxieuse qui vise à écarter ces idées obsessionnelles, et la simple évocation de l''objet de l''obsession entraîne de l''anxiété.</span> <br/><br/><b>Obsession</b> : peut-être une représentation, pensée, sentiment … Le plus souvent le patient a conscience du caractère pathologique de son idée, est capable de reconnaître que ça émane de lui, lutte contre l''idée qui s''accompagne d''angoisse. Le sujet a conscience que ces obsessions sont en désaccord avec sa pensée consciente.<br/><br/><b>Obsessions idéatives</b> : le fait d''être assiégé par des idées, mais aussi des mots, images, pseudos souvenirsOn retrouve toute la question de la moralité et des doutes : le sujet peut être obsédé par la religion, scrupules moraux …Obsessions scrupuleuses : en débat interne avec sa propre morale. Entraine le sujet dans des vérifications, puisqu''il doute.Obsessions qui concernant l''envahissement par des chiffres, nécessité de compter les choses</span><br/><br/><b>Obsessions phobiques</b> : la pensée du sujet est assiégée par la pensée d''une situation redoutée. En général, ces obsessions concernent la saleté (il n''a pas besoin d''être confronté à l''objet pour que l''angoisse émerge #phobie) C''est l''aspect mental et les ruminations qui sont angoissants, par forcément la saleté.Microbes Maladie. Phobie : l''angoisse apparaît en dehors de l''objet. Dans l''obsession phobique, il n''y a pas de moyen de l''éviter. phobie : objets contraphobiques</span><br/><br/><b>Compulsion</b> : idée d''un acte que l''on doit accomplir, le plus souvent absurde, gênant ou ridicule. Ce sont des actes répétitifs, ritualisés, et obligatoires. Le sujet ne peut pas s''en soustraire, et il ne peut pas enlever une partie du rituel, il doit le faire dans un certain ordre. Ce rituel a souvent comme but de faire diminuer l''angoisse, pas forcément générée par une situation anxiogène. Le plus souvent, comme le sujet en est conscient, essaie de ne pas le faire, se sent coupable de ne pas le faire, mais ne peux pas ne pas le faire et se sent ensuite coupable de l''avoir fait.</span>'),
(2, 1, 2, ''),
(3, 2, 1, '<span class="15:20:00"><span class="15:15:00"><span class="15:10:00"><span class="15:05:00"><span class="15:00:00"><b>Historique</b><br/>Trouble identifié assez tard. (Environ 1çeme siècle). On parlait de folie du touché et de folie consciente.</span><br/> Obsession : intrusion chez un sujet, qui a une conscience claire, d’une idée, d’une représentation ou d’une pensée qui va être vécue par le patient comme hors de sa volonté, vécue comme absurde ou répréhensible. Système de lutte chez le sujet pour écarter ces obsessions. La simple évocation de l’obsession provoque de l’angoisse chez le sujet. Les obsessions surviennent à n’importe quel moment. Beaucoup d’étude montrent que les obsessions sont présentes chez beaucoup d’individus. Idée d’une normalité de base des obsessions, mais qui vont devenir pathologique. Cela provoque une forte souffrance chez le sujet, longue durée, fréquence et intensité des obsessions. <br/>Cela peut aussi être des sentiments qui émanent au sujet. Il reconnait l’absurdité, et le caractère pathologique de l’idée. Il admet qu’elle vient de lui-même. Il a conscience que ces obsessions sont en désaccord avec sa pensée consciente.</span><br/><em>Obsession idéative</em> : être assiégé par des idées, des mots. Présence de faux souvenirs, le sujet n’est pas sûr que ce soit vrai. Question de la moralité et des doutes, religion. Scrupules moraux, règles à suivre. Le patient est dans des débats internes avec sa propre morale. Cela entraîne le sujet dans des vérifications, il fait le pour et le contre. Envahissement par des chiffres, nécessité de compter les choses. Préoccupations métaphysiques.</span><br/><em>Obsession phobique</em> : pensée du sujet qui est assiégée par la pensée d’un objet ou d’une situation redoutée. Il n’a pas besoin d’être confronté à l’objet pour que l’angoisse émerge. Plusieurs thèmes : la saleté, les microbes, la maladie. L’angoisse apparaît en dehors de l’objet (<b>différence avec la phobie</b>).</span><br/><b>Compulsions</b> :Idée d’un acte que l’on doit accomplir, le plus souvent absurde, gênant ou ridicule. Acte répétitif et ritualisés auquel le sujet ne peut pas se soustraire et il ne peut pas non plus enlever une partie du rituel. Ce rituel a pour but de diminuer l’angoisse, qui n’est pas forcément générer par une situation anxiogène. \r\nLe plus souvent, le sujet essai de ne pas le faire, il se sent coupable de vouloir le faire, mais il n’arrive pas à arrêter.</span>\r\n'),
(4, 2, 2, ''),
(5, 3, 1, '<span class="15:20:00"><span class="15:15:00"><span class="15:10:00"><span class="15:05:00"><span class="15:00:00">Historiquement, les symptômes obsessionnels ont été repérés en psychiatrie depuis Philippe Pinel (les folies raisonnantes), Bénédict Augustin Morel (« délire émotif ») à Pierre Janet (« obsession et psychasthénie ») sous des appellations différentes. C''est le psychanalyste Sigmund Freud qui en a établi le profil le plus complet notamment à travers son histoire de la cure de « l''homme aux rats » atteint d''une névrose obsessionnelle (devenue « névrose de contrainte » dans les nouvelles traductions). Les auteurs successifs desDSMs et, notamment, Spitzer pour la troisième révision ont évacué la notion de névrose trop marquée pour eux par la psychanalyse. C''est ainsi qu''ils ont proposé de classer les symptômes obsessionnels dans des « troubles » qui s''intègrent dans une vision descriptive et comportementale, fortement marquée par la médecine somatique (organiciste).</span><br/>Il s’agit de pensées qui s’imposent à l’esprit du sujet, des ruminations obsédantes concernant par exemple l’existence de Dieu, la craint d’avoir été à l’origine d’un accident, la crainte d’avoir laissé le gaz ouvert… Ces doutes peuvent prendre la forme de scrupules perfectionnistes comme par exemple l’idée d’avoir mal fait sont travail. Ces obsessions ont également été décrites comme « la folie du doute ». Les sujets sont très imprégnés de doutes, ils se mettent à douter de tout. Ceci est vécu très douloureusement par le sujet, celui-ci ayant du mal à maitriser ses idées, ses comportements agressifs. Ces ruminations empêchent le sujet d’agir, l’envahissement étant incessant.</span><br/>les obsessions ideatives sont caractérisées par "l''irruption dans la pensée d''un sentiment, d''une idée, d''une tendance, apparaissant au malade comme un phénomène morbide en désaccord avec sa pensée consciente et qui persiste malgré ses efforts pour s''en débarrasser."</span><br/>Les obsessions phobiques sont des craintes obsédantes (par exemple : cancérophobie, nosophobie...) Au cours de ce type d''obsessions, le sujet est constamment envahi par la crainte d''une situation ou d''un objet qu''il redoute. Ce n''est pas le fait d''être réellement confronté à la situation ou à l''objet redouté qui suscite l''angoisse, comme dans la phobie. Dans l''obsession phobique, la crainte surgit continuellement entraînant des ruminations et parfois des compulsions. Un grand nombre de termes se terminant par le suffixe -phobiedésignent ainsi des obsessions et pas des phobies.</span><br/>On parle de compulsion lorsqu''une tendance intérieure impérative nous pousse à accomplir une action ou à penser à une certaine idée alors que consciemment nous nous y refusons. Exemples : les joueurs compulsifs, les acheteurs compulsifs etc. Cette tendance est irrésistible et la réprimer génère de l''angoisse. Il arrive cependant que l''on y parvienne, ou qu''on la contourne en lui substituant de petits rites répétitifs et anodins. Cependant, il faut différencier ces troubles du comportement d’avec la dépendance, qui est véritablement maladive.</span>'),
(6, 1, 3, ''),
(7, 1, 4, ''),
(8, 1, 6, ''),
(9, 1, 7, ''),
(10, 1, 8, ''),
(11, 1, 12, ''),
(12, 1, 14, ''),
(13, 2, 7, ''),
(14, 1, 15, ''),
(15, 3, 7, ''),
(16, 3, 9, '');

-- --------------------------------------------------------

--
-- Structure de la table `updatebloc`
--

CREATE TABLE IF NOT EXISTS `updatebloc` (
  `idUtilisateur` int(6) NOT NULL,
  `idNote` int(10) NOT NULL,
  `contenuTotal` longtext NOT NULL,
  `speed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `updatebloc`
--

INSERT INTO `updatebloc` (`idUtilisateur`, `idNote`, `contenuTotal`, `speed`) VALUES
(1, 1, '<span class="22:12:52"><span class="15:20:00"><span class="15:15:00"><span class="15:10:00"><span class="15:05:00"><span class="15:00:00"><strong>Historique</strong><br />La n&eacute;vrose obsessionnelle a &eacute;t&eacute; identifi&eacute;e assez tard, on la retrouve chez Freud, mais aussi chez Janet. Au 19&egrave;me s on parlait de folie du toucher. C''est donc au 19&egrave;me s qu''on commence avoir des descriptions s&eacute;miologiques de cette n&eacute;vrose.1234567<br /><br /> <strong>I - S&eacute;miologie du trouble</strong><br />Obsessions, ou id&eacute;es obs&eacute;dantes : Une obsession est l''intrusion chez un sujet qui a une conscience claire, d''une id&eacute;e, repr&eacute;sentation, ou d''une pens&eacute;e, qui va &ecirc;tre v&eacute;cue par le patient comme hors de sa volont&eacute;, absurde, ou r&eacute;pr&eacute;hensible (absurde). Ce qui est important est la notion d''intrusion, de clart&eacute; du sujet, et la dimension qui &eacute;chappe l&agrave; la volont&eacute; du sujet.<br />Les obsessions entra&icirc;nent chez le sujet un syst&egrave;me de lutte anxieuse qui vise &agrave; &eacute;carter ces id&eacute;es obsessionnelles, et la simple &eacute;vocation de l''objet de l''obsession entra&icirc;ne de l''anxi&eacute;t&eacute;.1234567 <br /><br /><strong>Obsession</strong> : peut-&ecirc;tre une repr&eacute;sentation, pens&eacute;e, sentiment &hellip; Le plus souvent le patient a conscience du caract&egrave;re pathologique de son id&eacute;e, est capable de reconna&icirc;tre que &ccedil;a &eacute;mane de lui, lutte contre l''id&eacute;e qui s''accompagne d''angoisse. Le sujet a conscience que ces obsessions sont en d&eacute;saccord avec sa pens&eacute;e consciente.<br /><br /><strong>Obsessions id&eacute;atives</strong> : le fait d''&ecirc;tre assi&eacute;g&eacute; par des id&eacute;es, mais aussi des mots, images, pseudos souvenirsOn retrouve toute la question de la moralit&eacute; et des doutes : le sujet peut &ecirc;tre obs&eacute;d&eacute; par la religion, scrupules moraux &hellip;Obsessions scrupuleuses : en d&eacute;bat interne avec sa propre morale. Entraine le sujet dans des v&eacute;rifications, puisqu''il doute.Obsessions qui concernant l''envahissement par des chiffres, n&eacute;cessit&eacute; de compter les choses1234567<br /><br /><strong>Obsessions phobiques</strong> : la pens&eacute;e du sujet est assi&eacute;g&eacute;e par la pens&eacute;e d''une situation redout&eacute;e. En g&eacute;n&eacute;ral, ces obsessions concernent la salet&eacute; (il n''a pas besoin d''&ecirc;tre confront&eacute; &agrave; l''objet pour que l''angoisse &eacute;merge #phobie) C''est l''aspect mental et les ruminations qui sont angoissants, par forc&eacute;ment la salet&eacute;.Microbes Maladie. Phobie : l''angoisse appara&icirc;t en dehors de l''objet. Dans l''obsession phobique, il n''y a pas de moyen de l''&eacute;viter. phobie : objets contraphobiques1234567<br /><br /><strong>Compulsion</strong> : id&eacute;e d''un acte que l''on doit accomplir, le plus souvent absurde, g&ecirc;nant ou ridicule. Ce sont des actes r&eacute;p&eacute;titifs, ritualis&eacute;s, et obligatoires. Le sujet ne peut pas s''en soustraire, et il ne peut pas enlever une partie du rituel, il doit le faire dans un certain ordre. Ce rituel a souvent comme but de faire diminuer l''angoisse, pas forc&eacute;ment g&eacute;n&eacute;r&eacute;e par une situation anxiog&egrave;ne. Le plus souvent, comme le sujet en est conscient, essaie de ne pas le faire, se sent coupable de ne pas le faire, mais ne peux pas ne pas le faire et se sent ensuite coupable de l''avoir</span> fait.</span></span></span></span></span>', 3621),
(1, 1, '<span class="22:12:55"><span class="15:20:00"><span class="15:15:00"><span class="15:10:00"><span class="15:05:00"><span class="15:00:00"><strong>Historique</strong><br />La n&eacute;vrose obsessionnelle a &eacute;t&eacute; identifi&eacute;e assez tard, on la retrouve chez Freud, mais aussi chez Janet. Au 19&egrave;me s on parlait de folie du toucher. C''est donc au 19&egrave;me s qu''on commence avoir des descriptions s&eacute;miologiques de cette n&eacute;vrose.1234567<br /><br /> <strong>I - S&eacute;miologie du trouble</strong><br />Obsessions, ou id&eacute;es obs&eacute;dantes : Une obsession est l''intrusion chez un sujet qui a une conscience claire, d''une id&eacute;e, repr&eacute;sentation, ou d''une pens&eacute;e, qui va &ecirc;tre v&eacute;cue par le patient comme hors de sa volont&eacute;, absurde, ou r&eacute;pr&eacute;hensible (absurde). Ce qui est important est la notion d''intrusion, de clart&eacute; du sujet, et la dimension qui &eacute;chappe l&agrave; la volont&eacute; du sujet.<br />Les obsessions entra&icirc;nent chez le sujet un syst&egrave;me de lutte anxieuse qui vise &agrave; &eacute;carter ces id&eacute;es obsessionnelles, et la simple &eacute;vocation de l''objet de l''obsession entra&icirc;ne de l''anxi&eacute;t&eacute;.1234567 <br /><br /><strong>Obsession</strong> : peut-&ecirc;tre une repr&eacute;sentation, pens&eacute;e, sentiment &hellip; Le plus souvent le patient a conscience du caract&egrave;re pathologique de son id&eacute;e, est capable de reconna&icirc;tre que &ccedil;a &eacute;mane de lui, lutte contre l''id&eacute;e qui s''accompagne d''angoisse. Le sujet a conscience que ces obsessions sont en d&eacute;saccord avec sa pens&eacute;e consciente.<br /><br /><strong>Obsessions id&eacute;atives</strong> : le fait d''&ecirc;tre assi&eacute;g&eacute; par des id&eacute;es, mais aussi des mots, images, pseudos souvenirsOn retrouve toute la question de la moralit&eacute; et des doutes : le sujet peut &ecirc;tre obs&eacute;d&eacute; par la religion, scrupules moraux &hellip;Obsessions scrupuleuses : en d&eacute;bat interne avec sa propre morale. Entraine le sujet dans des v&eacute;rifications, puisqu''il doute.Obsessions qui concernant l''envahissement par des chiffres, n&eacute;cessit&eacute; de compter les choses1234567<br /><br /><strong>Obsessions phobiques</strong> : la pens&eacute;e du sujet est assi&eacute;g&eacute;e par la pens&eacute;e d''une situation redout&eacute;e. En g&eacute;n&eacute;ral, ces obsessions concernent la salet&eacute; (il n''a pas besoin d''&ecirc;tre confront&eacute; &agrave; l''objet pour que l''angoisse &eacute;merge #phobie) C''est l''aspect mental et les ruminations qui sont angoissants, par forc&eacute;ment la salet&eacute;.Microbes Maladie. Phobie : l''angoisse appara&icirc;t en dehors de l''objet. Dans l''obsession phobique, il n''y a pas de moyen de l''&eacute;viter. phobie : objets contraphobiques1234567<br /><br /><strong>Compulsion</strong> : id&eacute;e d''un acte que l''on doit accomplir, le plus souvent absurde, g&ecirc;nant ou ridicule. Ce sont des actes r&eacute;p&eacute;titifs, ritualis&eacute;s, et obligatoires. Le sujet ne peut pas s''en soustraire, et il ne peut pas enlever une partie du rituel, il doit le faire dans un certain ordre. Ce rituel a souvent comme but de faire diminuer l''angoisse, pas forc&eacute;ment g&eacute;n&eacute;r&eacute;e par une situation anxiog&egrave;ne. Le plus souvent, comme le sujet en est conscient, essaie de ne pas le faire, se sent coupable de ne pas le faire, mais ne peux pas ne pas le faire et se sent ensuite coupable de l''avoir</span> fait.</span></span></span></span></span>', 0),
(1, 1, '<span class="22:12:58"><span class="15:20:00"><span class="15:15:00"><span class="15:10:00"><span class="15:05:00"><span class="15:00:00"><strong>Historique</strong><br />La n&eacute;vrose obsessionnelle a &eacute;t&eacute; identifi&eacute;e assez tard, on la retrouve chez Freud, mais aussi chez Janet. Au 19&egrave;me s on parlait de folie du toucher. C''est donc au 19&egrave;me s qu''on commence avoir des descriptions s&eacute;miologiques de cette n&eacute;vrose.1234567<br /><br /> <strong>I - S&eacute;miologie du trouble</strong><br />Obsessions, ou id&eacute;es obs&eacute;dantes : Une obsession est l''intrusion chez un sujet qui a une conscience claire, d''une id&eacute;e, repr&eacute;sentation, ou d''une pens&eacute;e, qui va &ecirc;tre v&eacute;cue par le patient comme hors de sa volont&eacute;, absurde, ou r&eacute;pr&eacute;hensible (absurde). Ce qui est important est la notion d''intrusion, de clart&eacute; du sujet, et la dimension qui &eacute;chappe l&agrave; la volont&eacute; du sujet.<br />Les obsessions entra&icirc;nent chez le sujet un syst&egrave;me de lutte anxieuse qui vise &agrave; &eacute;carter ces id&eacute;es obsessionnelles, et la simple &eacute;vocation de l''objet de l''obsession entra&icirc;ne de l''anxi&eacute;t&eacute;.1234567 <br /><br /><strong>Obsession</strong> : peut-&ecirc;tre une repr&eacute;sentation, pens&eacute;e, sentiment &hellip; Le plus souvent le patient a conscience du caract&egrave;re pathologique de son id&eacute;e, est capable de reconna&icirc;tre que &ccedil;a &eacute;mane de lui, lutte contre l''id&eacute;e qui s''accompagne d''angoisse. Le sujet a conscience que ces obsessions sont en d&eacute;saccord avec sa pens&eacute;e consciente.<br /><br /><strong>Obsessions id&eacute;atives</strong> : le fait d''&ecirc;tre assi&eacute;g&eacute; par des id&eacute;es, mais aussi des mots, images, pseudos souvenirsOn retrouve toute la question de la moralit&eacute; et des doutes : le sujet peut &ecirc;tre obs&eacute;d&eacute; par la religion, scrupules moraux &hellip;Obsessions scrupuleuses : en d&eacute;bat interne avec sa propre morale. Entraine le sujet dans des v&eacute;rifications, puisqu''il doute.Obsessions qui concernant l''envahissement par des chiffres, n&eacute;cessit&eacute; de compter les choses1234567<br /><br /><strong>Obsessions phobiques</strong> : la pens&eacute;e du sujet est assi&eacute;g&eacute;e par la pens&eacute;e d''une situation redout&eacute;e. En g&eacute;n&eacute;ral, ces obsessions concernent la salet&eacute; (il n''a pas besoin d''&ecirc;tre confront&eacute; &agrave; l''objet pour que l''angoisse &eacute;merge #phobie) C''est l''aspect mental et les ruminations qui sont angoissants, par forc&eacute;ment la salet&eacute;.Microbes Maladie. Phobie : l''angoisse appara&icirc;t en dehors de l''objet. Dans l''obsession phobique, il n''y a pas de moyen de l''&eacute;viter. phobie : objets contraphobiques1234567<br /><br /><strong>Compulsion</strong> : id&eacute;e d''un acte que l''on doit accomplir, le plus souvent absurde, g&ecirc;nant ou ridicule. Ce sont des actes r&eacute;p&eacute;titifs, ritualis&eacute;s, et obligatoires. Le sujet ne peut pas s''en soustraire, et il ne peut pas enlever une partie du rituel, il doit le faire dans un certain ordre. Ce rituel a souvent comme but de faire diminuer l''angoisse, pas forc&eacute;ment g&eacute;n&eacute;r&eacute;e par une situation anxiog&egrave;ne. Le plus souvent, comme le sujet en est conscient, essaie de ne pas le faire, se sent coupable de ne pas le faire, mais ne peux pas ne pas le faire et se sent ensuite coupable de l''avoir</span> fait.</span></span></span></span></span>', 0),
(1, 10, '<span class="02:00:42">fdvfd&lt;br</span> /&gt;fdv', 50),
(1, 10, '<span class="02:00:45"><span class="02:00:42">fdvfd&lt;br</span> /&gt;fdvf&lt;br</span> /&gt;dfvfdfdvfdvfd', 56),
(1, 10, '<span class="02:00:48"><span class="02:00:45"><span class="02:00:42">fdvfd&lt;br</span> /&gt;fdvf&lt;br</span></span> /&gt;dfvfdfdvfdvfddvfdvf', 36),
(1, 10, '<span class="02:00:51"><span class="02:00:48"><span class="02:00:45"><span class="02:00:42">fdvfd&lt;br</span> /&gt;fdvf&lt;br</span></span></span> /&gt;dfvfdfdvfdvfddvfdvfdvdvfdvfvfdvfdv', 45),
(1, 10, '<span class="02:00:54"><span class="02:00:51"><span class="02:00:48"><span class="02:00:45"><span class="02:00:42">fdvfd&lt;br</span> /&gt;fdvf&lt;br</span></span></span> /&gt;dfvfdfdvfdvfddvfdvfdvdvfdvfvfdvfdvfdvdfbfd fd gf</span> fdgf', 49),
(1, 10, '<span class="02:00:57"><span class="02:00:54"><span class="02:00:51"><span class="02:00:48"><span class="02:00:45"><span class="02:00:42">fdvfd&lt;br</span> /&gt;fdvf&lt;br</span></span></span> /&gt;dfvfdfdvfdvfddvfdvfdvdvfdvfvfdvfdvfdvdfbfd fd gf</span> fdgfd<br />gfdg fdgfd</span> fdgfdg', 54),
(1, 10, '<span class="02:01:00"><span class="02:00:57"><span class="02:00:54"><span class="02:00:51"><span class="02:00:48"><span class="02:00:45"><span class="02:00:42">fdvfd&lt;br</span> /&gt;fdvf&lt;br</span></span></span> /&gt;dfvfdfdvfdvfddvfdvfdvdvfdvfvfdvfdvfdvdfbfd fd gf</span> fdgfd<br />gfdg fdgfd</span> fdgfdgfdgfg fdgfd&nbsp;<br />fdgfdg</span> fdgfdg', 66),
(1, 10, '<span class="02:01:03"><span class="02:01:00"><span class="02:00:57"><span class="02:00:54"><span class="02:00:51"><span class="02:00:48"><span class="02:00:45"><span class="02:00:42">fdvfd&lt;br</span> /&gt;fdvf&lt;br</span></span></span> /&gt;dfvfdfdvfdvfddvfdvfdvdvfdvfvfdvfdvfdvdfbfd fd gf</span> fdgfd<br />gfdg fdgfd</span> fdgfdgfdgfg fdgfd&nbsp;<br />fdgfdg</span> fdgfdgfdgfd fdgfd<br />gfdgfdg&lt;br</span> /&gt;fgd', 69),
(1, 9, '<span class="02:01:40">dzfe<br />efzezf<br />fezf&lt;br</span> /&gt;ez', 70),
(1, 9, '<span class="02:01:43"><span class="02:01:40">dzfe<br />efzezf<br />fezf&lt;br</span> /&gt;ez<br />ezf<br />ezf<br /><br />z<br />fz<br />e<br />&lt;br</span> /&gt;ezfzefe', 101),
(1, 9, '<span class="02:01:46"><span class="02:01:43"><span class="02:01:40">dzfe<br />efzezf<br />fezf&lt;br</span> /&gt;ez<br />ezf<br />ezf<br /><br />z<br />fz<br />e<br />&lt;br</span> /&gt;ezfzefezfezfze&lt;br</span> /&gt;fezfezfez', 58);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idUtilisateur` int(6) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  UNIQUE KEY `idUtilisateur_2` (`idUtilisateur`),
  KEY `idUtilisateur` (`idUtilisateur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `pseudo`, `password`) VALUES
(1, 'Quentin', 'root'),
(2, 'Franck', 'grsrhswqr'),
(3, 'Nancy', 'tehthjtjy');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
