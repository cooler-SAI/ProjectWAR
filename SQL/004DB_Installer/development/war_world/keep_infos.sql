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
-- Table structure for table `keep_infos`
--

DROP TABLE IF EXISTS `keep_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keep_infos` (
  `KeepId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `Realm` tinyint(3) unsigned NOT NULL,
  `DoorCount` tinyint(3) unsigned NOT NULL,
  `ZoneId` smallint(5) unsigned NOT NULL,
  `RegionId` smallint(5) unsigned NOT NULL,
  `X` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `Z` int(11) NOT NULL,
  `O` int(11) NOT NULL,
  `PQuestId` smallint(5) unsigned NOT NULL,
  `Race` tinyint(3) unsigned NOT NULL,
  `OilX` int(11) NOT NULL DEFAULT '0',
  `OilY` int(11) NOT NULL DEFAULT '0',
  `OilZ` int(11) NOT NULL DEFAULT '0',
  `OilO` int(11) NOT NULL DEFAULT '0',
  `OilOuterX` int(11) NOT NULL DEFAULT '0',
  `OilOuterY` int(11) NOT NULL DEFAULT '0',
  `OilOuterZ` int(11) NOT NULL DEFAULT '0',
  `OilOuterO` int(11) NOT NULL DEFAULT '0',
  `RamX` int(11) NOT NULL DEFAULT '0',
  `RamY` int(11) NOT NULL DEFAULT '0',
  `RamZ` int(11) NOT NULL DEFAULT '0',
  `RamO` int(11) NOT NULL DEFAULT '0',
  `RamOuterX` int(11) NOT NULL DEFAULT '0',
  `RamOuterY` int(11) NOT NULL DEFAULT '0',
  `RamOuterZ` int(11) NOT NULL DEFAULT '0',
  `RamOuterO` int(11) NOT NULL DEFAULT '0',
  `OilOuter1X` int(11) NOT NULL,
  `OilOuter1Y` int(11) NOT NULL,
  `OilOuter1Z` int(11) NOT NULL,
  `OilOuter1O` int(11) NOT NULL,
  `OilOuter2X` int(11) NOT NULL,
  `OilOuter2Y` int(11) NOT NULL,
  `OilOuter2Z` int(11) NOT NULL,
  `OilOuter2O` int(11) NOT NULL,
  `RamOuter1X` int(11) NOT NULL,
  `RamOuter1Y` int(11) NOT NULL,
  `RamOuter1Z` int(11) NOT NULL,
  `RamOuter1O` int(11) NOT NULL,
  `RamOuter2X` int(11) NOT NULL,
  `RamOuter2Y` int(11) NOT NULL,
  `RamOuter2Z` int(11) NOT NULL,
  `RamOuter2O` int(11) NOT NULL,
  `IsFortress` tinyint(3) unsigned NOT NULL,
  `GuildClaimObjectiveId` int(11) NOT NULL,
  PRIMARY KEY (`KeepId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keep_infos`
--

LOCK TABLES `keep_infos` WRITE;
/*!40000 ALTER TABLE `keep_infos` DISABLE KEYS */;
INSERT INTO `keep_infos` VALUES (1,'Dok Karaz',1,1,7,12,1063572,830635,6211,320,616,1,1063235,831260,6790,338,0,0,0,0,1063168,831388,6168,2386,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2,'Fangbreaka Swamp',2,1,1,12,1064902,892254,2832,450,617,2,1064367,892929,3397,454,0,0,0,0,1064265,893037,2784,2502,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(3,'Gnol Baraz',1,2,8,10,1239849,843703,9795,3020,619,1,1240595,843641,10374,3016,1246246,842832,9258,2954,1240739,843621,9746,968,1246372,842797,8428,906,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(4,'Thickmuck Pit',2,2,2,10,1257324,934304,4223,14,618,2,1257331,935126,4789,28,1257348,937093,4793,6,1257321,935265,4176,2076,1257351,937239,3984,2054,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(5,'Karaz Drengi',1,2,9,2,1413598,845990,10081,990,622,1,1412895,846008,10660,1014,1410325,846113,10705,868,1412724,846010,10032,3062,1410166,846148,9880,2916,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(6,'Kazad Dammaz',1,2,9,2,1402315,874059,9426,686,623,1,1401697,874408,10006,678,1399436,875727,10066,888,1401558,874478,9376,2726,1399267,875760,9236,2936,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(7,'Bloodfist Rock',2,2,5,2,1405748,928193,12107,1026,620,2,1404934,928182,12673,1062,1401172,928202,12252,984,1404772,928176,12056,3110,1400990,928199,11448,3032,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(8,'Karak Karag',1,2,5,2,1370580,928148,12036,2988,621,1,1371300,928070,12615,2998,1374236,927653,12824,3024,1371463,928058,11984,950,1374415,927641,12000,976,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(9,'Ironskin Skar',2,2,3,2,1395562,978671,7813,1494,624,2,1394942,978140,8379,1514,1393548,977070,8582,1518,1394831,978030,7768,3562,1393415,976952,7768,3566,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(10,'Badmoon Hole',2,2,3,2,1414294,1012023,6077,996,625,2,1413484,1012039,6643,1018,1410815,1011935,6340,1060,1413320,1012028,6045,3066,1410627,1011935,5539,3108,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(11,'Mandred\'s Hold',1,1,107,14,1055274,888576,4785,4052,603,3,1055269,889248,5284,0,0,0,0,0,1055269,889380,4769,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(12,'Stonetroll Keep',2,1,101,14,1018278,875819,6998,213,602,4,1018925,875830,7498,3064,0,0,0,0,1019083,875829,6968,1016,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(13,'Passwatch Castle',1,2,108,6,1250277,891994,12245,526,600,3,1249746,892465,12745,552,1246369,892302,12512,1840,1249657,892558,12184,2600,1246355,892262,11655,3888,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14,'Stoneclaw Castle',2,2,102,6,1216799,875673,15001,3978,601,4,1216597,876253,15501,246,1217084,878483,15676,3930,1216538,876413,14968,2294,1217104,878531,14856,1882,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(15,'Wilhelm\'s Fist',1,2,109,11,1439714,911820,18797,194,604,3,1439523,912444,19297,200,1439255,908826,18581,2142,1439475,912598,18752,2248,1439266,908753,17736,94,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(16,'Morr\'s Repose',1,2,109,11,1432067,944133,16720,1666,605,3,1432037,943493,16770,2004,1430584,941163,16735,1606,1432024,943322,16216,4052,1430524,941102,15904,3654,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(17,'Southern Garrison',1,2,105,11,1446130,882317,15768,2610,606,3,1446642,881899,16268,2640,1448370,881255,16619,3018,1446761,881804,15728,592,1448436,881246,15784,970,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(18,'Garrison of Skulls',2,2,105,11,1444283,830954,14438,22,607,4,1444246,831590,14938,16,1444166,833476,15219,8,1444236,831774,14408,2064,1444169,833553,14408,2056,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(19,'Zimmeron\'s Hold',2,2,103,11,1440647,763036,13363,3762,608,4,1440948,763583,13863,3774,1441079,767681,13551,10,1441037,763730,13328,1726,1441074,767743,12736,2058,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(20,'Charon\'s Citadel',2,2,103,11,1447515,796673,14125,2,609,4,1447517,797271,14624,24,1446564,800696,14359,4072,1447523,797450,14096,2072,1446568,800778,13552,2024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(21,'Cascades of Thunder',1,1,207,15,853675,1312034,5859,2096,610,5,853750,1311347,6369,2088,0,0,0,0,853770,1311171,5824,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(22,'Spite\'s Reach',2,1,201,15,852252,1260967,6081,3804,611,6,852535,1261643,6598,3794,0,0,0,0,852607,1261804,6048,1746,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(23,'The Well of Qhaysh',1,2,208,16,1426375,1490345,4584,2456,868,5,1426799,1489784,5094,2480,1428151,1488152,5049,2492,1426904,1489641,4552,432,1428257,1488000,4216,444,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(24,'Ghrond\'s Sacristy',2,2,202,16,1438189,1463200,4207,4078,870,6,1438187,1463934,4723,10,1438064,1465759,5070,48,1438187,1464105,4168,2058,1438065,1465950,4225,2096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(25,'Arbor of Light',1,2,209,4,1070388,1639850,5766,998,627,5,1069702,1639862,6276,998,1066469,1639786,6005,1046,1069512,1639856,5728,3046,1066251,1639785,5168,3094,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(26,'Pillars of Remembrance',1,2,209,4,1033036,1643738,7332,1758,626,5,1032822,1643127,7842,1836,1030020,1642041,7369,992,1032754,1642926,7296,3884,1029795,1642045,6536,3040,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(27,'Covenant of Flame',1,2,205,4,987825,1635986,11661,374,628,5,987450,1636547,12171,388,986062,1638318,12226,372,987333,1636714,11626,2436,985939,1638495,11392,2420,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(28,'Drakebreaker\'s Scourge',2,2,205,4,968879,1636866,8244,384,629,6,968488,1637447,8761,366,967326,1639320,8954,102,968370,1637617,8208,2414,967285,1639542,8104,2150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(29,'Hatred\'s Way',2,2,203,4,886872,1637441,6316,3046,630,6,887573,1637427,6833,3054,889559,1637023,6759,3088,887787,1637421,6280,1006,889776,1637028,5920,1040,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(30,'Wrath\'s Resolve',2,2,203,4,929686,1637774,8493,2938,631,6,930382,1637646,9010,2954,933710,1637233,8768,3002,930584,1637605,8456,906,933933,1637211,7928,954,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(100,'Reikwald',1,4,110,11,1431158,966414,15955,2042,10000,3,1431147,965727,16455,2066,1431198,961352,16790,2022,1431204,961368,15952,4086,1431205,961235,15952,52,1436116,961300,16790,2180,1426270,961333,16790,2212,1436119,961241,15944,186,1426272,961267,15935,4084,1,0),
(101,'The Maw',2,4,104,11,1429597,740733,14518,2,10001,4,1429595,741865,15018,14,1429554,747051,14181,58,1429586,741962,14488,2108,1429552,747063,13371,2040,1434473,749690,14181,514,1424641,749701,14181,3592,1434482,749672,13371,2556,1424625,749693,13371,1516,1,0),
(102,'Butcher\'s Pass',2,4,4,2,1398796,1040120,8847,2068,10005,2,1398846,1038904,9566,2096,1399056,1034587,9068,2078,1398854,1038904,8903,42,1399062,1034508,8264,24,1394658,1039010,9068,1472,1403515,1039163,9068,2742,1394602,1038964,8264,3528,1403581,1039131,8264,704,1,0),
(103,'Stonewatch',1,4,10,2,1398042,817074,12145,4092,10004,1,1398039,818058,12774,4084,1398117,821929,12303,4084,1398034,818138,12144,2040,1398112,822019,11463,2028,1402724,821160,12303,3906,1393150,821871,12303,12,1402732,821221,11472,1832,1393161,821950,11472,2058,1,0),
(104,'Fell Landing',2,4,204,4,867978,1635565,8980,3074,10003,6,869279,1635592,9508,3082,874741,1635924,8986,3184,869349,1635598,8936,1024,874853,1635951,8144,1140,874492,1631443,8986,2894,873195,1640297,8986,3404,874585,1631425,8152,812,873288,1640358,8144,1352,1,0),
(105,'Shining Way',1,4,210,4,1095885,1638354,7446,1008,10002,5,1094640,1638377,7970,1008,1089390,1638191,7483,1006,1094527,1638373,7416,3034,1089270,1638191,6648,3054,1090487,1642591,7487,734,1090527,1633828,7481,1290,1090372,1642647,6648,2760,1090415,1633768,6648,3374,1,0);
/*!40000 ALTER TABLE `keep_infos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-07 15:42:01
