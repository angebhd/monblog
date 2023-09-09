-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 16 juil. 2021 à 19:03
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `noviciusdatabase`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `categorie` varchar(100) NOT NULL,
  `scategorie` varchar(100) NOT NULL,
  `contenuabbr` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date` date NOT NULL,
  `nbrevues` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Ma table dédié au articles noiciustech.com';

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `categorie`, `scategorie`, `contenuabbr`, `contenu`, `date`, `nbrevues`) VALUES
(1, 'Électronique (technique)', 'Electronique', 'Généralité', 'L\'électronique est une discipline technique ou science de l\'ingénieur, l\'une des branches les plus importantes de la physique appliquée, auxiliaire dans la plupart des industries', 'L\'électronique est une discipline technique ou science de l\'ingénieur, l\'une des branches les plus importantes de la physique appliquée, auxiliaire dans la plupart des industries.\r\n\r\nLe mot électronique, qui désigne d\'abord les faits et théories relatifs à l\'électron, prend un sens technique au milieu du xxe siècle. Les inventeurs qui ont développé les industries et techniques qui utilisent l\'électricité — télégraphe, éclairage électrique, moteur électrique, téléphone, radiocommunication, ont travaillé empiriquement, tandis que les savants élaboraient une théorie électronique de la matière. La notion d\'« appareil électronique » surgit du classement des dispositifs de détection des ondes radio, dont les principaux sont le récepteur à cristal, un semi-conducteur dont la théorie est alors « incomplètement connue4 » et le dernier le « détecteur électronique », dont le principe est directement lié au flux d\'électrons issus de la cathode chauffée. Ce tube électronique permet l\'amplification, dont tirent rapidement parti de nombreuses applications. Certaines, comme la radiodiffusion, vont diffuser leurs produits dans le grand public. Cette invention marque, pour la plupart des auteurs, le début de l\'électronique comme spécialité5.\r\n\r\nLa physique quantique donne les éléments pour comprendre le fonctionnement des semiconducteurs. La découverte de l\'effet transistor vers 19476, puis la fabrication de circuits à l\'état solide séparent le sens courant de « électronique » de l\'électron particule. L\'usage considère les phénomènes impliquant des flux électroniques, comme l\'arc électrique et l\'effet corona et leurs applications, comme hors du champ de l\'électronique2.\r\n\r\nLa situation de l\'électronique au sein de l\'électrotechnique — ensemble des applications de l\'électricité — est imprécise. L\'utilisation de semiconducteurs est parfois un critère1, d\'autres auteurs estiment que l\'électrotechnique s\'occupe du transfert de la puissance, tandis que l\'électronique étudie la transmission, par l\'électricité, de l\'information7. Cependant, l\'étude de la transmission de l\'information est largement indépendante de celle de l\'électricité. Ses notions sont purement mathématiques. Elle communique avec l\'électronique parce que celle-ci sert à convertir ces informations en signaux, mais n\'a aucun besoin de connaître les lois physiques qui régissent l\'électricité, déterminées dès le xixe siècle8. Seules la conception et la fabrication des composants électroniques peuvent mobiliser des resources scientifiques plus récentes. Chaque domaine a développé les méthodes et les modèles mathématiques adaptés à son activité. L\'électronique et l\'électrotechnique sont étroitement mêlées et ne connaissent aucune séparation institutionnellea.', '2021-06-07', 7),
(3, 'Électronique de puissance', 'Electronique', 'Électronique de puissance', 'L’électronique de puissance s\'intéresse au contrôle ou à la transformation de quantités significatives d\'énergie électrique.', 'L’électronique de puissance s\'intéresse au contrôle ou à la transformation de quantités significatives d\'énergie électrique.\r\n\r\nL’électronique de puissance a comme champ d’application l’électrotechnique domestique et industrielle, où elle remplace les anciennes solutions électromécaniques.\r\n\r\nLes questions de puissance et d\'efficacité concernent aussi tous les dispositifs de l\'électronique numérique, particulièrement les appareils autonomes, non reliés à une source d\'énergie électrique', '2021-06-07', 7),
(2, 'Historique - Electronique', 'Electronique', 'Généralité', 'L\'électronique, au sens qu\'a pris ce mot, remonte à l\'invention du premier composant capable d\'amplifier un signal électrique, et, par conséquent, d\'entretenir une oscillation, la triode de Lee De Forest en 1907', 'L\'électronique surgit d\'emblée comme une industrie. Les derniers inventeurs du xixe siècle comme Edison ou Bell ont prospéré grâce aux brevets, et ont construit de grandes organisations qui les exploitent et ferment la voie aux nouveaux arrivants. L\'invention du tube électronique va donner lieu à des batailles juridiques, paralysantes jusqu\'à la première Guerre mondiale. Les mesures d\'urgence que prend le gouvernement américain en 1916 débloque la situation afin que l\'industrie produise des systèmes de communication radio pour la marine. La paix revenue, ces capacités servent à lancer, à partir de 1920, la radiodiffusion, premier usage domestique de l\'électronique. Pour maintenir leur position, les industries rivales, General Electric et AT&T, organisent des laboratoires de recherche où les ingénieurs appliquent les découvertes de la physique, et orientent la recherche plutôt vers le perfectionnement des produits existants, que vers l\'exploration de nouvelles voies19.\r\n\r\nDès l\'application de l\'électronique à la radiodiffusion émerge une électronique populaire construite par des radio-amateurs et des bricoleurs. Avec le poste à galène, c\'est le seul à utiliser encore un semiconducteur19. Des publications comme La radio mais c\'est très simple, d\'Eugène Aisberg, dont la première édition remonte à 1936, aident les amateurs à se perfectionner. Ce secteur fonctionne plus par échange de recettes et de procédés et expérimentation libre que par assimilation des résultats de la physique théorique. La guitare électrique émerge ainsi avant la fin des années 1920, suivie par une quantité d\'instruments de musique comme le theremin ou les ondes Martenot20.\r\n\r\nL\'époque du transistor\r\n\r\nTransistor 2N34 de 1953.\r\nL\'utilisation des semiconducteurs ouvre l\'époque de l\'électronique à l\'état solide, qui s\'oppose à l\'électronique à tubes par sa taille réduite et son fonctionnement à basse tension. L\'électronique à l\'état solide permet d\'augmenter considérablement le nombre des composants sur un circuit de même taille, et consomme beaucoup moins d\'énergie que le tubeb.\r\n\r\nFerdinand Braun avait décrit la diode à cristal dès 1878, mais l\'invention du tube, plus susceptible d\'une production industrielle, l\'avait fait considérer comme obsolète. La physique quantique donne dans les années 1920 une théorie à la circulation des électrons dans les métaux et explique le phénomène ; les laboratoires Bell ont constituent un groupe d\'étude en 193621. Des recherches analogues ont lieu en Allemagne, en Angleterre et dans d\'autres pays.\r\n\r\nLa seconde Guerre mondiale mobilise les chercheurs pour le radar. Les tubes électroniques ne fonctionnent pas aux très hautes fréquences que les ingénieurs veulent atteindre, encourageant à reprendre les recherches sur les redresseurs à l\'état solide, avec deux matériaux, le germanium et le silicium22. À la paix, les laboratoires reprennent leurs travaux. Julius Edgar Lilienfeld avait déposé un brevet de dispositif à effet de champ en 1926, mais le principe exige de contrôler parfaitement la conductivité de la couche superficielle du cristal. La recherche sur l\'état de surface débouche fortuitement sur un nouveau principe23.\r\n\r\nLa structure du premier transistor à pointes (en)24 sur cristal de germanium que développent John Bardeen et Walter Brattain aux Laboratoires Bell fin 1947 reste très proche de la diode du récepteur à cristal de galène. À la suite de cette expérience, William Shockley élabore la première théorie du fonctionnement du transistor bipolairec,25. Six mois plus tard, le même laboratoire produit un transistor à jonction tirée (en)26, dont les jonctions sont constituées à la fabrication du cristal. En 1951, le laboratoire concurrent de General Electric et RCA met au point un transistor à jonctions par alliage (en)27, dans lequel des apports forment les jonctions de part et d\'autre d\'un substrat. En 1954, Bell dépose les premiers brevets pour le transistor à jonctions par diffusion (en)28. Ce procédé va permettre la fabrication en masse. Bell est alors contraint par les autorités de céder des licences d\'exploitation pour ses brevets de transistors. Parmi les acquéreurs, une compagnie japonaise qui deviendra Sony. Un nouveau venu, Texas Instruments produit le premier transistor au silicium. En 1959, Jean Hoerni, de Fairchild Semiconductor, met au point le procédé planar, qui permet la fabrication de plusieurs transistors sur le même substrat et sera ensuite constamment perfectionné29. La même année, Bell Labs produit un transistor à effet de champ à grille métal-oxyde, selon l\'idée initiale de Lilienfeld ; mais ce procédé ne sera optimisé industriellement que vers 198530.\r\n\r\nÀ partir de 1954, le transistor se diffuse dans le grand public avec la radio à transistors (en) portable qu\'a lancée Sony25 : « le premier récepteur radio à transistor qui sera bientôt vendu en France en grande série fonctionnera plus de 500 heures avec 3 piles de lampe de poche ! » annonce un magazine31.\r\n\r\nLe transistor va remplacer le tube dans presque toutes ses applications. En 1984, le Répertoire mondial des transistors contient plus de 27 000 références.', '2021-06-07', 12),
(5, 'Informatique - Historique', 'Informatique', 'Généralité', 'En 1957, l\'ingénieur allemand Karl crée le terme « Informatik » pour son essai intitulé Informatik: Automatische Informationsverarbeitung, pouvant être rendu en français par <strong>« Informatique : traitement automatique de l\'information »</strong>', 'En 1957, l\'ingénieur allemand Karl Steinbuch crée le terme « Informatik » pour son essai intitulé Informatik: Automatische Informationsverarbeitung, pouvant être rendu en français par « Informatique : traitement automatique de l\'information »1.\r\n\r\nEn mars 1962, <strong>Philippe Dreyfus</strong>, ancien directeur du Centre national de calcul électronique de Bull, utilise pour la première fois en France le terme « Informatique »2 pour son entreprise « Société d\'informatique appliquée » (SIA)3. Selon certains, ce néologisme est un mot-valise qui agglomère « information » et « automatique », pour désigner le traitement automatique des données4,5.\r\n\r\nLe même mois, Walter Bauer inaugure la société américaine « Informatics Inc. » qui dépose son nom et poursuit toutes les universités qui utilisent ce mot pour décrire la nouvelle discipline, les forçant à se rabattre sur computer science, bien que les diplômés qu\'elles forment soient pour la plupart des praticiens de l\'informatique plutôt que des scientifiques au sens propre[réf. nécessaire]. L’Association for Computing Machinery, la plus grande association d\'informaticiens au monde, approche même Informatics Inc. afin de pouvoir utiliser le mot informatics en remplacement de l\'expression computer machinery, mais l\'entreprise décline la proposition[réf. nécessaire]6. En 1985 Sterling Software rachète la société Informatics Inc. qui cesse ses activités en 1986[réf. souhaitée]. Pour Donald Knuth, cependant, les Américains ont délibérément écarté le mot informatique, non pour un problème de marque mais pour des raisons sémantiques ; les ordinateurs ne traitent pas de l\'information, mais des données, dont le sens informatif est parfaitement indifférent[réf. nécessaire].\r\n\r\nEn 1966, l\'Académie française consacre l\'usage officiel du mot pour désigner la « science du traitement de l\'information ». La presse, l\'industrie et le milieu universitaire l\'adoptent dès cette époque.\r\n\r\nEn juillet 1968, le ministre fédéral de la Recherche scientifique d\'Allemagne, Gerhard Stoltenberg, prononce le mot « Informatik » lors d\'un discours officiel sur la nécessité d\'enseigner cette nouvelle discipline dans les universités de son pays ; on emploie ce même terme pour nommer certains cours dans les universités allemandes7. Le mot informatica fait alors son apparition en Italie et en Espagne, de même qu’informatics au Royaume-Uni.\r\n\r\nLes fondateurs de la Compagnie Générale d\'Informatique (CGI) reprennent le mot « informatique » en 19698.\r\n\r\nÉvolution sémantique', '2021-06-08', 0),
(6, 'Informatique', 'Informatique', 'Généralités', 'Le terme « informatique » résulte de l\'association du terme « information » au suffixe « -ique » signifiant « qui est propre à »', 'Le terme « informatique » résulte de l\'association du terme « information » au suffixe « -ique » signifiant « qui est propre à » :\r\n\r\nComme adjectif, il s\'applique à l\'ensemble des traitements liés à l\'emploi des ordinateurs et systèmes numériques.\r\nComme substantif, il désigne les activités liées à la conception et à la mise en œuvre de ces machines. Des questions de télécommunications comme le traitement du signal ou la théorie de l\'information, aussi bien que des problèmes mathématiques comme la calculabilité s\'y rattachent.\r\nDans le vocabulaire universitaire américain, l\'informatique (« computer science ») désigne surtout l\'informatique théorique : un ensemble de sciences formelles qui ont pour objet d\'étude la notion d\'information et des procédés de traitement automatique de celle-ci, l\'algorithmique.\r\n\r\nLes applications de l\'informatique depuis les années 1950 forment la base du secteur d\'activité des technologies de l\'information et de la communication. Ce secteur industriel et commercial est lié à la fois aux procédés (logiciels, à l\'architectures de systèmes) et au matériel (électronique, télécommunication). Le secteur fournit également de nombreux services liés à l\'utilisation de ses produits : développement, maintenance, enseignement, assistance, surveillance et entretien.', '2021-06-08', 0),
(4, 'Logiciel informatique', 'Informatique', 'Programmation', 'Un logiciel est un ensemble d\'informations relatives à un traitement automatisé, qui correspond à la « procédure » d\'une Machine de Turing. La mécanique de cette machine correspondant au processeur.', 'Un logiciel est un ensemble d\'informations relatives à un traitement automatisé, qui correspond à la « procédure » d\'une Machine de Turing. La mécanique de cette machine correspondant au processeur. Le logiciel peut être composé d\'instructions et de données. Les instructions mettent en application les algorithmes en rapport avec le traitement d\'information voulu. Les données incluses dans un logiciel sont les informations relatives à ce traitement ou exigées par lui (valeurs clés, textes, images, etc.).\r\n\r\nLe logiciel peut prendre une forme exécutable (c\'est-à-dire, directement compréhensible par le micro-processeur) ou source, c\'est-à-dire que la représentation est composée d\'une suite d\'instructions directement compréhensible par un individu. Ainsi donc, on peut considérer le logiciel comme une abstraction qui peut prendre une multitude de formes : il peut être imprimé sur du papier, conservé sous forme de fichiers informatiques ou encore stocké dans une mémoire (une disquette, une clé USB).\r\n\r\n\r\nCatégories de logiciels.\r\nUn appareil informatique peut contenir de très nombreux logiciels, organisés en trois catégories :\r\n\r\nlogiciel applicatif : contient les instructions et les informations relatives à une activité automatisée. Un ordinateur peut stocker une panoplie de logiciels applicatifs, correspondant aux très nombreuses activités pour lesquelles il est utilisé ;\r\nlogiciel système : contient les instructions et les informations relatives à des opérations de routine effectuées par les différents logiciels applicatifs ;\r\nsystème d\'exploitation : logiciel système qui contient l\'ensemble des instructions et des informations relatives à l’utilisation commune du matériel informatique par les logiciels applicatifs ;\r\nmicrologiciel (firmware en anglais) : logiciel de bas niveau permettant la configuration, le démarrage d\'un système et de rendre celui-ci « standard » quels que soient son constructeur et sa technologie. Un micrologiciel contient les instructions et les informations relatives au déroulement de cette opération sur l\'équipement en question. Un appareil informatique peut contenir de nombreux micrologiciels. Chaque micrologiciel contient les instructions et les informations relatives à tous les traitements qui peuvent être effectués par les équipements d\'une série ou d\'une marque déterminée.\r\nUn logiciel embarqué, un logiciel libre, un logiciel propriétaire font référence à une manière de distribuer le logiciel. Voir « distribution de logiciels ».\r\n\r\nDomaines d\'activités informatisées\r\nLire en ligne : IEEE Computer Society - Keywords34.\r\n\r\nManipulation d\'informations administratives : commerciales, financières, légales, industrielles et comptables depuis 1962.\r\nIngénierie : conception assistée par ordinateur et fabrication assistée par ordinateur dans les domaines de l\'aéronautique, l\'astronautique, la mécanique, la chimie, l\'électronique et l\'informatique.\r\nSciences de la vie : biologie, santé.\r\nSciences sociales : psychologie, sociologie, économie.\r\nDesign et artisanat : architecture, littérature, musique.\r\nMalware ou logiciel malveillant : espionnage, vol d\'informations, usurpation d\'identité.', '2021-06-08', 15);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idart` int(11) NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `mail` varchar(72) NOT NULL,
  `siteweb` varchar(72) NOT NULL,
  `commentaires` tinytext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `idart`, `pseudo`, `mail`, `siteweb`, `commentaires`, `date`) VALUES
(1, 5, 'AngeBHD', '', '', 'Super l\'article, Merci', '2021-06-07 11:40:16'),
(2, 5, 'AngeBHD', '', '', 'Mon super commentaires inserer su phpmyadmin', '2021-06-09 15:45:25'),
(3, 1, 'Utilisateur Anonyme', '', '', 'Mon premier super commentaires', '2021-06-09 17:02:50'),
(4, 1, 'Utilisateur Anonyme', '', '', 'Mon premier super commentaires', '2021-06-09 17:03:00'),
(5, 1, 'Utilisateur Anonyme', '', '', 'Mon premier super commentaires', '2021-06-09 17:03:46'),
(6, 1, 'Utilisateur Anonyme', '', '', 'Mon premier super commentaire supers', '2021-06-09 17:21:09'),
(7, 1, 'Utilisateur Anonyme', '', '', 'Mon premier super commentaire supers 25', '2021-06-09 17:21:26'),
(8, 1, 'Ange', '', '', 'un commentaire de plus', '2021-06-09 17:22:50'),
(9, 1, 'BHD', '', '', 'Encore un commentaire de test', '2021-06-10 15:29:25'),
(10, 5, 'J Paul', 'jpaul@gmail.com', 'www.jpaul.com', 'Aucun commentaire', '2021-06-15 19:43:42'),
(11, 5, 'Josue', 'josue@hotmail.cd', 'www.rumjo.com', 'La mécanique ou rien\r\n', '2021-06-15 20:00:46'),
(12, 1, 'pseudo', 'josue@hotmail.cd', 'www.rumjo.com', 'waza', '2021-07-03 19:41:53'),
(13, 6, 'Elia', 'elia@abcmail.abc', 'www.abcdef.com', 'Salut comment tu va !\r\nQuestion bête', '2021-07-03 19:47:59'),
(14, 1, 'Ange BHD', 'angebhd@gmail.com', 'www.noviciustech.com', 'Mon commentaire pour essayer mon formulaire de commentaires', '2021-07-16 16:49:09');

-- --------------------------------------------------------

--
-- Structure de la table `proverbes`
--

DROP TABLE IF EXISTS `proverbes`;
CREATE TABLE IF NOT EXISTS `proverbes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proverbe` text NOT NULL,
  `auteur` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Ma table dedié aux proverbes du blog';

--
-- Déchargement des données de la table `proverbes`
--

INSERT INTO `proverbes` (`id`, `proverbe`, `auteur`) VALUES
(1, ' Les gens assez fous pour penser qu\'ils peuvent changer le monde sont ceux qui y parviennent', 'Steve Jobs'),
(2, 'Ayez le courage de suivre votre cœur et votre intuition. L\'un et l\'autre savent ce que vous voulez réellement devenir. Le reste est secondaire.', 'Steve Jobs'),
(3, 'Votre temps est limité, ne le gâchez pas à vivre la vie de quelqu\'un d\'autre', 'Steve Jobs'),
(4, 'Les tentatives de création de machines pensantes nous seront d’une grande aide pour découvrir comment nous pensons nous-mêmes.1951', 'Alan Turing');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
