-- MySQL dump 10.13  Distrib 5.5.37, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: war_world
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `mount_infos`
--

DROP TABLE IF EXISTS `mount_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mount_infos` (
  `Entry` int(10) unsigned NOT NULL,
  `Speed` smallint(5) unsigned NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Entry` (`Entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mount_infos`
--

LOCK TABLES `mount_infos` WRITE;
/*!40000 ALTER TABLE `mount_infos` DISABLE KEYS */;
INSERT INTO `mount_infos` VALUES (99848,60,'Gold',0),
(106,40,'Dumpy Horse Desto',1),
(64,50,'Mount - Dwarf Gyro Light Bronze',2),
(65,50,'Mount - Dwarf Gyro Light Silver',3),
(66,50,'Mount - Dwarf Gyro Light Iron',4),
(67,50,'Mount - Dwarf Gyro Light Copper',5),
(68,50,'Mount - Dwarf Gyro Light Gold',6),
(69,50,'Mount - Dwarf Gyro Light Blue Gromril ',7),
(70,50,'Mount - Wolf 01 Grey',8),
(71,50,'Mount - Wolf 02 Autumn',9),
(72,50,'Mount - Wolf 03 Black Timber',10),
(73,50,'Mount - Wolf 04 White',11),
(74,50,'Mount - Wolf 05 Brown',12),
(75,50,'Mount - Wolf 06 Red',13),
(76,50,'Mount - War Boar 01 Light Brown',14),
(77,50,'Mount - War Boar 02 Striped Mousse',15),
(78,50,'Mount - War Boar 03 Cream',16),
(79,50,'Mount - War Boar 04 White',17),
(80,50,'Mount - War Boar 05 Brindle',18),
(81,50,'Mount - War Boar 06 Straw',19),
(82,50,'Mount - War Horse 01 Chestnut',20),
(83,50,'Mount - War Horse 02 Skewbald',21),
(84,50,'Mount - War Horse 03 Palomino',22),
(85,50,'Mount - War Horse 04 Dark Bay',23),
(86,50,'Mount - War Horse 05 Grey',24),
(87,50,'Mount - War Horse 06 Black',25),
(88,50,'Mount - Chaos Steed 01 Black',26),
(89,50,'Mount - Chaos Steed 02 Rotted Green',27),
(90,50,'Mount - Chaos Steed 03 Dark Blue',28),
(91,50,'Mount - Chaos Steed 04 Maroon',29),
(92,50,'Mount - Chaos Steed 05 Daemon Red',30),
(93,50,'Mount - Chaos Steed 06 Decayed Flesh',31),
(94,50,'Mount - Elven Steed 01 White',32),
(95,50,'Mount - Elven Steed 02 Blue Roan',33),
(96,50,'Mount - Elven Steed 03 Strawberry Roan',34),
(97,50,'Mount - Elven Steed 04 Red Dun',35),
(98,50,'Mount - Elven Steed 05 Brown Pinto',36),
(99,50,'Mount - Elven Steed 06 Black Pinto',37),
(100,50,'Mount - Cold One 01 Red',38),
(101,50,'Mount - Cold One 02 White',39),
(102,50,'Mount - Cold One 03 Moonlit Blue',40),
(103,50,'Mount - Cold One 04 Glacier Blue',41),
(104,50,'Mount - Cold One 05 Black Slate',42),
(105,50,'Mount - Cold One 06 Green',43),
(107,40,'Dumpy Horse Order',44),
(184,75,'Mount Wolf 02',45),
(185,75,'Mount Wolf 03',46),
(186,75,'Mount Warboar 02',47),
(187,75,'Mount Warboar 03',48),
(188,75,'Mount Squig 02',49),
(189,75,'Mount Squig Blue 01',50),
(190,75,'Mount Squig Blue 02',51),
(191,75,'Mount Squig Blue 03',52),
(192,75,'Mount Squig Orange 01',53),
(193,75,'Mount Squig Orange 02',54),
(194,75,'Mount Squig Orange 03',55),
(195,75,'Mount - Dwarf Gyro Medium Bronze',56),
(196,75,'Mount - Dwarf Gyro Medium Silver',57),
(197,75,'Mount - Dwarf Gyro Medium Iron',58),
(198,75,'Mount - Dwarf Gyro Medium Copper',59),
(199,75,'Mount - Dwarf Gyro Medium Gold',60),
(200,75,'Mount - Dwarf Gyro Medium Blue Gromril ',61),
(210,60,'Mount - Dwarf Gyro Heavy Bronze',62),
(211,60,'Mount - Dwarf Gyro Heavy Silver',63),
(212,60,'Mount - Dwarf Gyro Heavy Iron',64),
(213,60,'Mount - Dwarf Gyro Heavy Copper',65),
(214,60,'Mount - Dwarf Gyro Heavy Gold',66),
(215,60,'Mount - Dwarf Gyro Heavy Blue Gromril ',67),
(216,60,'Mount - Wolf 01 Heavy White with Blue',68),
(217,60,'Mount - Wolf 02 Heavy Silver with Red',69),
(218,60,'Mount - Wolf 03 Heavy Orange with Black',70),
(219,60,'Mount - Wolf 04 Heavy Gold with Orange',71),
(220,60,'Mount - Wolf 05 Heavy Slate with Yellow',72),
(221,60,'Mount - Wolf 06 Heavy Black with Rust',73),
(222,60,'Mount - War Boar 01 Heavy Silver with Red',74),
(223,60,'Mount - War Boar 02 Heavy Bronze with White',75),
(224,60,'Mount - War Boar 03 Heavy Iron with Green',76),
(225,60,'Mount - War Boar 04 Heavy Rust with Yellow',77),
(226,60,'Mount - War Boar 05 Heavy Black with Orange',78),
(227,60,'Mount - War Boar 06 Heavy Red with White',79),
(228,60,'Mount - War Horse 01 Heavy Steel with Red',80),
(229,60,'Mount - War Horse 02 Heavy Silver with Blue',81),
(230,60,'Mount - War Horse 03 Heavy Franz with Red',82),
(231,60,'Mount - War Horse 04 Heavy Golden with Violet',83),
(232,60,'Mount - War Horse 05 Heavy Fiery with Orange',84),
(233,60,'Mount - War Horse 06 Heavy White with Blue',85),
(234,60,'Mount - Chaos Steed 01 Heavy Ember Black',86),
(235,60,'Mount - Chaos Steed 02 Heavy Bile Green',87),
(236,60,'Mount - Chaos Steed 03 Heavy Ocean Blue',88),
(237,60,'Mount - Chaos Steed 04 Heavy  Tainted Violet',89),
(238,60,'Mount - Chaos Steed 05 Heavy Deep Ruby',90),
(239,60,'Mount - Chaos Steed 06 Heavy Sickly Bone',91),
(240,60,'Mount - Elven Steed 01 Heavy Gold with Blue',92),
(241,60,'Mount - Elven Steed 02 Heavy Silver with Purple',93),
(242,60,'Mount - Elven Steed 03 Heavy Gold with Red',94),
(243,60,'Mount - Elven Steed 04 Heavy Steel with Green',95),
(244,60,'Mount - Elven Steed 05 Heavy Blush Gold with Turquoise',96),
(245,60,'Mount - Elven Steed 06 Heavy Blue with Leather',97),
(246,60,'Mount - Cold One 01 Heavy Steel with Green',98),
(247,60,'Mount - Cold One 02 Heavy Black with Blue',99),
(248,60,'Mount - Cold One 03 Heavy Turquoise with Magenta',100),
(249,60,'Mount - Cold One 04 Heavy Steel with Blue',101),
(250,60,'Mount - Cold One 05 Heavy Slate with Red',102),
(251,60,'Mount - Cold One 06 Heavy Purple with Red',103),
(252,75,'Mount - Dwarf Gyro Heavy Alt Bronze',104),
(253,75,'Mount - Dwarf Gyro Heavy Alt Silver',105),
(254,75,'Mount - Dwarf Gyro Heavy Alt Iron',106),
(255,75,'Mount - Dwarf Gyro Heavy Alt Copper',107),
(256,75,'Mount - Dwarf Gyro Heavy Alt Gold',108),
(257,75,'Mount - Dwarf Gyro Heavy Alt Blue Gromril ',109),
(258,75,'Mount - Wolf 01 Heavy Alt Steel with Orange',110),
(259,75,'Mount - Wolf 02 Heavy Alt Purple with Red',111),
(260,75,'Mount - Wolf 03 Heavy Alt Black Red with Purple',112),
(261,75,'Mount - Wolf 04 Heavy Alt Gold with Red',113),
(262,75,'Mount - Wolf 05 Heavy Alt Silver with White',114),
(263,75,'Mount - Wolf 06 Heavy Alt Black with Green',115),
(264,75,'Mount - War Boar 01 Heavy Alt Steel with Red',116),
(265,75,'Mount - War Boar 02 Heavy Alt Steel with Canary',117),
(266,75,'Mount - War Boar 03 Heavy Alt Red with Yellow',118),
(267,75,'Mount - War Boar 04 Heavy Alt Iron with Orange',119),
(268,75,'Mount - War Boar 05 Heavy Alt Black with Green',120),
(269,75,'Mount - War Boar 06 Heavy Alt Moss with Cyan',121),
(270,75,'Mount - War Horse 01 Heavy Alt Dark Steel with Gold',122),
(271,75,'Mount - War Horse 02 Heavy Alt Light Steel with Purple',123),
(272,75,'Mount - War Horse 03 Heavy Alt Franz with Silver',124),
(273,75,'Mount - War Horse 04 Heavy Alt Gold with Brass',125),
(274,75,'Mount - War Horse 05 Heavy Alt Red with Pyrite',126),
(275,75,'Mount - War Horse 06 Heavy Alt Silver with Black',127),
(276,75,'Mount - Chaos Steed 01 Heavy Alt Charcoal with Pea',128),
(277,75,'Mount - Chaos Steed 02 Heavy Alt Decay with Sage',129),
(278,75,'Mount - Chaos Steed 03 Heavy Alt Ocean with Sand',130),
(279,75,'Mount - Chaos Steed 04 Heavy Alt Ruby with Gold',131),
(280,75,'Mount - Chaos Steed 05 Heavy Alt Coral with Slate',132),
(281,75,'Mount - Chaos Steed 06 Heavy Alt White with Rose',133),
(282,75,'Mount - Elven Steed 01 Heavy Alt White',134),
(283,75,'Mount - Elven Steed 02 Heavy Alt Blue Roan',135),
(284,75,'Mount - Elven Steed 03 Heavy Alt Strawberry Roan',136),
(285,75,'Mount - Elven Steed 04 Heavy Alt Red Dun',137),
(286,75,'Mount - Elven Steed 05 Heavy Alt Brown Pinto',138),
(287,75,'Mount - Elven Steed 06 Heavy Alt Black Pinto',139),
(288,75,'Mount - Cold One 01 Heavy Alt Steel with Forest Green',140),
(289,75,'Mount - Cold One 02 Heavy Alt Magenta with Leather',141),
(290,75,'Mount - Cold One 03 Heavy Alt Sea with Black Ice',142),
(291,75,'Mount - Cold One 04 Heavy Alt White with Glacier',143),
(292,75,'Mount - Cold One 05 Heavy Alt Purple with Orange',144),
(293,75,'Mount - Cold One 06 Heavy Alt Silver with Red',145),
(294,75,'Mount - Dwarf Gyro Epic Bronze',146),
(295,75,'Mount - Dwarf Gyro Epic Silver',147),
(296,75,'Mount - Dwarf Gyro Epic Iron',148),
(297,75,'Mount - Dwarf Gyro Epic Copper',149),
(298,75,'Mount - Dwarf Gyro Epic Gold',150),
(299,75,'Mount - Dwarf Gyro Epic Blue Gromril ',151),
(300,75,'Mount - Wolf 01 Epic Rust',152),
(301,75,'Mount - Wolf 02 Epic Lava',153),
(302,75,'Mount - Wolf 03 Epic Charcoal',154),
(303,75,'Mount - Wolf 04 Epic Ocean',155),
(304,75,'Mount - Wolf 05 Epic Canary',156),
(305,75,'Mount - Wolf 06 Epic Moss',157),
(306,75,'Mount - War Boar 01 Epic Red',158),
(307,75,'Mount - War Boar 02 Epic Blue',159),
(308,75,'Mount - War Boar 03 Epic Purple',160),
(309,75,'Mount - War Boar 04 Epic White',161),
(310,75,'Mount - War Boar 05 Epic Brindle',162),
(311,75,'Mount - War Boar 06 Epic Straw',163),
(312,75,'Mount - War Horse 01 Epic Steel with Red',164),
(313,75,'Mount - War Horse 02 Epic Silver with Blue',165),
(314,75,'Mount - War Horse 03 Epic Silver with Purple',166),
(315,75,'Mount - War Horse 04 Epic Dark Gold with Black',167),
(316,75,'Mount - War Horse 05 Epic Red with Yellow',168),
(317,75,'Mount - War Horse 06 Epic White Gold with White',169),
(318,75,'Mount - Chaos Steed 01 Epic Black with Green',170),
(319,75,'Mount - Chaos Steed 02 Epic Bile with Gold',171),
(320,75,'Mount - Chaos Steed 03 Epic Violet with Crystal',172),
(321,75,'Mount - Chaos Steed 04 Epic  Red with Flesh',173),
(322,75,'Mount - Chaos Steed 05 Epic Ember with Black',174),
(323,75,'Mount - Chaos Steed 06 Epic Pearl with Grey',175),
(324,75,'Mount - Elven Steed 01 Epic Red and Blue',176),
(325,75,'Mount - Elven Steed 02 Epic Ocean with Gold',177),
(326,75,'Mount - Elven Steed 03 Epic Autumn with Steel',178),
(327,75,'Mount - Elven Steed 04 Epic Pansy with White',179),
(328,75,'Mount - Elven Steed 05 Epic Aqua with Blush',180),
(329,75,'Mount - Elven Steed 06 Epic Plum with Red',181),
(330,75,'Mount - Cold One 01 Epic Steel with Purple',182),
(331,75,'Mount - Cold One 02 Epic Black with Sage',183),
(332,75,'Mount - Cold One 03 Epic Aqua with Perriwinkle',184),
(333,75,'Mount - Cold One 04 Epic Stone with Cyan',185),
(334,75,'Mount - Cold One 05 Epic Berry with Red',186),
(335,75,'Mount - Cold One 06 Epic Black Rose with Lilac',187),
(336,75,'Mount - Destruction Juggernaut Steel',188),
(337,75,'Mount - Destruction Juggernaut Red',189),
(338,75,'Mount - Destruction Juggernaut Iron',190),
(339,75,'Mount - Destruction Juggernaut Blue',191),
(340,75,'Mount - Destruction Juggernaut White',192),
(341,75,'Mount - Destruction Juggernaut Orange',193),
(342,75,'Mount - Order Mechanical Horse Steel',194),
(343,75,'Mount - Order Mechanical Horse Black Steel',195),
(344,75,'Mount - Order Mechanical Horse Gold',196),
(345,75,'Mount - Order Mechanical Horse Iron',197),
(346,75,'Mount - Order Mechanical Horse Blue',198),
(347,75,'Mount - Order Mechanical Horse Rusted Iron',199),
(348,75,'Mount - Doomwheel Steel',200),
(349,75,'Mount - Doomwheel Bronze',201),
(1683,75,'Mount - Gyro Random',202),
(1684,75,'Mount - Wolf Random',203),
(1685,75,'Mount - Boar Random',204),
(1686,75,'Mount - Warhorse Random',205),
(1687,75,'Mount - Demon Steed Random',206),
(1688,75,'Mount - Elven Steed Random',207),
(1689,75,'Mount - Cold One Random',208),
(1693,75,'Mount - Wolf Unsaddled Random',209),
(1694,75,'Mount - Boar Unsaddled Random',210),
(1695,75,'Mount - Warhorse Unsaddled Random',211),
(1696,75,'Mount - Demon Steed Unsaddled Random',212),
(1697,75,'Mount - Elven Steed Unsaddled Random',213),
(1698,75,'Mount - Cold One Unsaddled Random',214),
(1725,75,'Mount- Saddled Tomb King Skeleton Horse ',215),
(1726,75,'Mount - Manticore BAF',216),
(1727,75,'Mount - Griffon BAF',217),
(1751,75,'Mount - Orc Manticore BAF',218),
(1752,75,'Mount - Chaos Warrior Male Manticore BAF',219),
(1792,75,'Mount- Unsaddled Tomb King Skeleton Horse ',220),
(1797,75,'Mount - Tomb King Arabian Steed Black',221),
(1798,75,'Mount - Tomb King Arabian Steed Grey',222),
(1799,75,'Mount - Tomb King Arabian Steed Pinto',223),
(1809,75,'Mount - VC Skeletal Horse 01',224),
(1810,75,'Mount - VC Nightmare Horse 01',225),
(1830,75,'Mount - Unsaddled VC Skeletal Horse',226),
(1831,75,'Mount - Unsaddled VC Nightmare Horse',227),
(151,75,'Invisible Magus Mount',228),
(355,75,'Mount - War Boar 06 Heavy Alt Moss with Cyan',229);
/*!40000 ALTER TABLE `mount_infos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-07 15:42:07
