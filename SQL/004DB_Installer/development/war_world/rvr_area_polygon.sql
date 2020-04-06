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
-- Table structure for table `rvr_area_polygon`
--

DROP TABLE IF EXISTS `rvr_area_polygon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rvr_area_polygon` (
  `BattleFrontId` smallint(5) unsigned NOT NULL,
  `ZoneId` smallint(5) unsigned NOT NULL,
  `ZoneName` varchar(255) DEFAULT NULL,
  `PolygonPlanarCoordinates` text,
  PRIMARY KEY (`BattleFrontId`,`ZoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rvr_area_polygon`
--

LOCK TABLES `rvr_area_polygon` WRITE;
/*!40000 ALTER TABLE `rvr_area_polygon` DISABLE KEYS */;
INSERT INTO `rvr_area_polygon` VALUES (1,106,'Nordland','26816, 21120, 24064, 20224, 22080, 18624, 22848, 16000, 22656, 13248, 21760, 9152, 23488, 3648, 26240, 2048, 28288, 3392, 30784, 2880, 32896, 1600, 34176, 576, 35392, 64, 39680, 768, 39872, 2368, 38336, 3520, 38208, 5248, 38976, 6528, 40960, 6592, 41792, 7616, 41216, 8576, 41920, 9728, 42624, 11456, 42624, 13952, 41344, 16000, 39360, 16640, 37056, 15552, 34176, 14528, 31168, 14912, 28480, 17024, 29888, 18880, 28544, 20608'),
(2,202,'Avelorn','11136,64896,14912,62784,19712,60032,19328,54144,21632,52032,26944,50112,30208,49472,32960,51712,35968,53952,39616,55616,42112,58176,47040,61824,50240,65024'),
(3,7,'Barack Varr','12224,31616,14080,28864,16896,27968,20160,29056,24128,29184,26048,28480,27712,29824,27968,32128,30592,30976,33536,30976,35648,31744,37056,28928,38656,28672,40576,30016,43136,31168,44608,29824,45056,26560,43392,23424,42432,18560,43200,14144,47616,13632,51072,15744,50688,20608,51136,27008,50944,31040,49472,34432,47680,36608,44160,39808,39616,41280,36800,42368,33280,46144,31936,48320,29824,47168,28352,42240,26368,42432,23680,42624,20736,42368,19776,40512,18496,36608,15360,33280'),
(4,203,'Caledor','0,26112,3520,25088,6336,25280,11840,26816,15936,25600,17856,24960,20864,26496,23744,26368,29056,25600,32448,24384,35456,25536,42432,28352,49728,26240,53696,25536,57984,26560,61632,25152,64512,24832,65152,24384,65216,39680,61568,37952,58624,37760,54848,37248,52544,38016,49024,40512,45696,41344,42432,38912,37312,39488,35968,41216,33024,42176,30208,41664,29120,38080,26688,36608,23296,36672,17472,37248,14208,36672,11072,37248,7424,39808,3904,40896,1536,40192,0,39488'),
(5,206,'Chrace','25344,3648,24832,8320,21696,10432,22080,12480,25088,12992,28608,13696,31168,14080,34048,14912,37120,15104,40576,11328,42624,9856,45248,9216,47104,7872,48832,4800,49408,1984,48512,256,23680,128,'),
(6,205,'Dragonwake','1984,28096,4800,30592,7104,32576,10816,33088,16000,29376,17792,26496,19072,23488,22528,22016,25344,21184,26560,24512,28224,26240,32704,27520,39424,28224,44800,30080,48768,32384,51840,32896,56896,32896,60480,30720,63552,30784,65408,31296,65216,43200,62272,42432,58752,43072,54080,44096,51840,45760,49280,45056,46016,44864,42624,46016,40064,46720,37696,44480,32832,43840,29120,44608,26560,45440,24256,46912,20032,47104,16768,46464,14208,44544,11520,43392,9408,43200,7744,40768,6144,38720,1408,36864,0,36800,128,27392,'),
(7,102,'High Pass','832,64896,1472,61888,1408,58624,1472,55360,2944,54336,5760,54144,7040,55360,6912,58176,7616,60992,9920,61696,12800,62080,15616,59328,17792,59712,19968,60992,24512,58560,26496,56768,29568,55616,31168,55808,32640,59584,33536,60736,35648,59072,38208,58752,39872,60992,42752,61824,45248,60928,45696,58176,46016,54848,47168,54080,49984,54592,51776,56896,53760,59776,55040,62272,54464,64704,54464,65088,576,65088,'),
(8,9,'Kadrin Valley','26496,2496,24192,3840,23424,5056,27072,8256,29056,10880,27648,13184,29184,14912,30464,16640,28928,21312,26688,26368,25792,27648,23040,26560,21376,23808,19200,24832,20480,27648,19968,29760,14656,29568,7360,29824,3648,31424,2816,33152,4224,34752,8000,36544,13824,38400,22720,40896,25536,42240,26304,44608,24256,48576,20032,49536,18112,51136,19456,53184,24000,50944,25600,51840,23104,57216,22592,59968,25792,60480,28928,61952,29632,64768,40192,65152,39232,59776,36864,56704,37824,53888,40832,51328,42432,49984,45440,48512,48832,46656,50240,44032,52224,41792,56256,39808,57984,38208,57856,36288,51584,33088,47552,26752,45760,21824,46208,16768,47424,14784,47616,12032,48128,9152,46976,8256,45696,11776,45440,13632,43456,13184,40640,11264,39168,9664,39680,7744,38784,6400,37248,4288,35968,2112,34880,256,27072,256,'),
(9,1,'Marshes of Mad','29312,26688,32832,25536,35968,27200,37312,29184,37952,30592,40320,32000,41728,34240,40640,39360,38080,41920,36544,43840,33280,42880,29312,42240,26688,44608,23936,47616,20608,50880,17216,51392,13888,50624,11008,46912,12224,40640,14336,38208,16640,36160,19776,35008,23040,33088,25280,30720,'),
(10,100,'Norsca','35456,64896,36352,61440,37376,58176,36544,56320,30080,55808,26560,55488,24960,53632,28160,52544,30912,51328,34048,50560,34432,52032,34944,51776,34944,50368,36096,49792,37120,48960,37824,49472,38400,50624,38464,52224,39680,53184,41472,54336,43904,53696,45248,55168,44864,57856,44288,60160,43584,61440,41984,62272,41728,63744,41728,64960,'),
(11,107,'Ostland','16000,0,16256,1920,16960,3840,18112,6400,20416,7360,23488,6656,25664,5056,26752,6720,26368,8000,25600,9408,27392,10880,29184,10304,30720,10560,31232,11968,33280,11392,37376,9408,39168,10432,41216,10304,43200,9600,45440,9216,47680,8000,49216,6912,49280,5760,50688,6464,52352,7104,54656,6912,55744,6656,57280,7744,58880,7360,58432,5760,57024,4352,55040,4032,50944,3904,48384,3200,47872,2240,47872,1088,46912,128,'),
(12,105,'Praag','47488,65024,41984,58304,35840,55680,33536,49472,37888,44864,42496,42176,41728,36480,44096,33152,45056,29632,41472,22592,45568,15936,45952,11136,42496,3968,36352,2048,36352,64,31296,0,31104,4544,25984,6848,21120,7872,20736,13312,20480,18368,22976,21888,29696,21440,32128,23360,31168,26688,25152,29120,20800,31168,19520,35328,19648,39232,21504,43264,23360,48384,25344,50304,23616,54016,24896,59584,24896,63360,22912,65216,'),
(13,109,'Reikland','14208,64768,14592,60032,15232,54656,15616,50688,15104,46144,15744,42944,15808,39168,18112,34176,20480,32000,22016,28480,24128,24384,25984,20608,25984,17856,25984,16704,25280,16192,23040,15488,22400,14080,23040,11712,24640,9920,24448,8576,23040,5888,21376,2496,19200,256,46656,128,45568,3136,44160,6144,43456,8448,42432,10432,39616,12992,37376,15040,37120,17472,37312,20992,38016,24192,39104,26240,39232,26944,37376,30976,37120,33344,36544,36288,35840,39616,34304,42944,32384,46848,30912,50624,31296,54592,31168,57024,30208,59520,29632,61696,30080,63680,30464,64640,'),
(14,208,'Saphery','13248,0,13184,3136,12992,7168,13184,10816,13376,15936,15488,18560,19328,17344,24192,14784,28480,12736,32896,12992,35968,15232,39680,15360,43840,13824,45248,10816,46400,5888,46976,2432,47104,256,'),
(15,108,'Talabecland','2368,0,2112,3520,4032,6400,7424,5760,9984,2688,12544,768,16000,768,18176,3136,18624,5888,19072,7424,22592,7552,25664,9408,29184,12032,32832,12928,37312,11776,38720,10560,39488,7040,40064,4544,42368,2624,45056,3584,47616,5056,52480,4224,54400,1728,55296,0,'),
(16,2,'Badlands','10688,45056,10880,41664,12288,39104,12928,36096,14656,33984,17216,32640,20288,30784,23744,29760,26688,33856,28352,36352,30592,34176,34176,33728,36096,34944,36864,37568,36800,41024,37824,44032,39232,45504,40896,46144,42944,46720,46592,47616,47424,49216,48832,51264,50368,54912,51584,60864,52032,64768,20224,64896,19200,59456,17472,56064,14528,52480,11584,49216,'),
(17,200,'BlightedIsle','21632,65152,22080,62080,23808,59968,24512,57920,27456,57728,29056,55040,29120,53184,28928,49472,32576,46016,37120,44992,40128,47360,41088,49920,44032,52032,47680,52224,48768,54208,47296,57984,47360,60480,48576,63232,48960,64896,'),
(18,201,'Shadowlands','23104,65088,24512,60672,24384,56896,23936,54464,24128,51968,24192,47552,25408,43648,26112,39232,26112,34304,28160,33024,31744,31680,34944,33024,38080,33152,40576,33280,44544,33088,46464,36672,48768,39424,46848,42496,44800,47296,43584,49408,43904,51968,44736,54400,45312,57664,45568,61824,45440,64768,'),
(19,5,'Thunder Mountain','30272,2944,30592,5760,30784,9152,31488,12544,32320,14336,29056,15808,23296,17344,19456,19968,16640,23680,15232,26112,13824,28480,11776,28800,9472,27200,7168,26112,4480,27008,128,27968,64,42624,5632,42176,8128,40384,11136,38016,13824,36800,17088,40768,19584,44608,25536,49280,28160,51648,28224,53440,27200,55168,26496,56960,27904,60288,29312,62080,32000,64896,37312,64704,35008,61632,36352,60288,39104,59584,39680,57664,38720,55296,36608,54464,34944,55552,34176,56320,31488,54912,30976,53504,32192,52544,39680,51840,44608,49792,51072,46272,54208,41344,56320,38528,59136,36992,60416,35264,59072,32192,57600,30208,56000,28928,52800,25856,51072,23552,50624,20608,47552,18176,44480,18304,40128,18880,36160,17792,34880,15360,34688,13632,36096,14144,37504,14208,38464,12288,38208,10176,37376,9472,35456,8320,35584,5184,35968,2944,36288,256,30272,64,30720,128,'),
(20,101,'Troll Country','1728,52288,2432,49984,5952,48768,7296,49408,10368,52352,13376,53376,17152,56448,18880,58304,23680,57472,31936,57152,35136,56704,37312,58176,38528,59072,42880,59136,46848,58624,48576,59520,49280,61440,48704,64000,49024,64768,49024,64960,15104,64896,14592,61952,13376,60160,10624,60160,9600,61568,8448,63488,6464,64512,3904,64448,1536,61888,1024,56896,1088,53888,'),
(21,110,'Reikwald','15500,26500,15850,22550,15750,21750,16600, 18050,16600,16500,16750,13500,13250, 8250,14550,4850,16000,3450,18050,45,30150,45,30550,2900,30150,4500,29250,6450,29650,11450,26850,12550,25950,14200,27950,15650,27700,18850,26850,21800,28000,23250, 27600,25550,27350,26800,26650,30450,'),
(22,210,'Shining Way','1081860,1628309,1085646,1628287,1088703,1631021,1098274,1624093,1100147,1629654,1102304,1629630,1102567,1627910,1105220,1626799,1109855,1632260,1117567,1630420,1117792,1637473,1115423,1642725,1108351,1647044,1105437,1644714,1103639,1647940,1103335,1648234,1102765,1646685,1103393,1642812,1100480,1641714,1097918,1648128,1093037,1645890,1091028,1647080,1086689,1644726,1087094,1647954,1081462,1648319,'),
(23,204,'Fell Landing','884291,1641535,870173,1643583,865546,1642484,862023,1639014,853755,1645557,847310,1641059,843044,1640079,844334,1637204,846426,1636288,855208,1638078,861209,1632209,865958,1628335,874617,1627847,878275,1628821,880319,1630659,884416,1631918,'),
(24,10,'Stonewatch','1393104,827189,1390521,824302,1390647,820365,1391880,819392,1393573,818139,1396638,812593,1394498,809341,1391823,809663,1388948,806127,1389891,803565,1396032,802194,1400602,802752,1401530,804552,1405813,808399,1404765,811961,1401984,810876,1400236,812864,1401544,817793,1406687,820545,1406466,821566,1401919,827249,'),
(25,4,'Butchers Pass','1400830,1024128,1400256,1028162,1401142,1028803,1402538,1030296,1404977,1031038,1406752,1034077,1408410,1038539,1410035,1039034,1412223,1041885,1411842,1040559,1417697,1052705,1412803,1052617,1389385,1051656,1381523,1054507,1379686,1049821,1385297,1048783,1388097,1039463,1387457,1035991,1388094,1033319,1395589,1027539,1398912,1024728,'),
(26,104,'The Maw','14111,65430,14828,64303,14111,62972,13906,61436,14418,59183,15237,56828,15749,54882,15749,52630,14111,50786,13705,48841,15135,46998,16568,45666,17900,43823,18924,42390,19128,39318,20972,37372,22815,38703,23736,39215,24760,40444,25580,42697,26706,44130,26706,46076,27730,46895,29266,48226,29880,49967,30085,52220,30597,54268,30495,56418,29266,58364,29266,60412,27935,62665,26911,63996,25477,65532,22405,65532,22405,65532,19948,65430,18309,65430,');
/*!40000 ALTER TABLE `rvr_area_polygon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-07 15:42:18
