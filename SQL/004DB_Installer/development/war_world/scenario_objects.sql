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
-- Table structure for table `scenario_objects`
--

DROP TABLE IF EXISTS `scenario_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scenario_objects` (
  `ScenarioId` smallint(5) unsigned DEFAULT NULL,
  `Identifier` smallint(5) unsigned DEFAULT NULL,
  `ObjectiveName` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `WorldPosX` int(10) DEFAULT NULL,
  `WorldPosY` int(10) DEFAULT NULL,
  `PosZ` smallint(5) unsigned DEFAULT NULL,
  `Heading` smallint(5) unsigned DEFAULT NULL,
  `PointGain` tinyint(3) unsigned DEFAULT NULL,
  `PointOverTimeGain` tinyint(3) unsigned DEFAULT NULL,
  `ProtoEntry` int(10) unsigned DEFAULT NULL,
  `CaptureObjectiveText` text,
  `CaptureObjectiveDescription` text,
  `HoldObjectiveText` text,
  `HoldObjectiveDescription` text,
  `CaptureAnnouncement` text,
  `scenario_objects_ID` varchar(36) NOT NULL,
  `Realm` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`scenario_objects_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenario_objects`
--

LOCK TABLES `scenario_objects` WRITE;
/*!40000 ALTER TABLE `scenario_objects` DISABLE KEYS */;
INSERT INTO `scenario_objects` VALUES (2104,15,'Glyph of Fury','Murderball',556598,364774,5516,3106,NULL,NULL,99855,NULL,NULL,NULL,NULL,NULL,'1',NULL),
(2109,7019,'Fallen Bridge','Flag',621043,364903,5734,4084,10,2,NULL,NULL,NULL,NULL,NULL,NULL,'11dc5e47-59b9-11e6-9679-00ff0731887a',NULL),
(2104,16,'Glyph of Madness','Murderball',554130,364594,5469,1024,NULL,NULL,99857,NULL,NULL,NULL,NULL,NULL,'2',NULL),
(2003,5003,'Gungnir\'s Bridge','Flag',NULL,NULL,NULL,NULL,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20032003',NULL),
(2003,5004,'Kordhal\'s Lookout','Flag',NULL,NULL,NULL,NULL,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20032004',NULL),
(2003,5005,'Slayer Basin','Flag',NULL,NULL,NULL,NULL,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20032005',NULL),
(2003,5006,'Swamp Rat Marsh','Flag',NULL,NULL,NULL,NULL,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20032006',NULL),
(2003,5007,'Borradin Ruins','Flag',NULL,NULL,NULL,NULL,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20032007',NULL),
(2005,5026,'Fireball Mortar','Flag',729101,200491,6416,2034,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20052005',1),
(2005,5027,'Gungnir\'s Fist','Flag',721102,200376,5542,2096,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20052006',1),
(2005,5025,'Gyrocopter Hangar','Flag',724993,196724,5635,2074,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20052007',0),
(2005,5028,'Blasting Cart','Flag',720456,191533,6385,2012,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20052008',2),
(2005,5029,'Firing Range','Flag',729408,191501,5484,1876,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20052009',2),
(2007,5015,'Northern Ruins^p,in','Flag',335671,368393,7554,3806,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20072007',NULL),
(2007,5016,'Central Ruins^p,in','Flag',337337,371574,7869,650,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20072008',NULL),
(2007,5017,'Southern Ruins^p,in','Flag',339302,374711,7575,1716,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20072009',NULL),
(2110,902,'Khorne War Quarters','Flag',136284,282401,16921,1062,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20102010',1),
(2110,901,'Slaanesh Chambers','Flag',120851,282579,17061,3072,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20102011',1),
(2110,903,'Emissary of the Changer','Flag',128901,272004,17091,2052,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20102012',1),
(2110,904,'Temple of the Damned','Flag',133953,270101,16964,358,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20102013',0),
(2110,905,'The Outcrop','Flag',134987,262411,16775,22,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20102014',2),
(2110,906,'The Lyceum','Flag',118309,265027,17174,0,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20102015',2),
(2012,7014,'Militia Quarters North','Flag',314348,291594,14239,4080,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20122012',2),
(2012,7015,'Militia Quarters South','Flag',314372,298897,14238,4088,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20122013',2),
(2012,7013,'Warmachine Quarters South','Flag',325866,298892,14239,8,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20122014',0),
(2012,7012,'Warmachine Quarters North','Flag',325875,291556,14238,4082,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20122015',1),
(2012,7001,'The Courtyard','Flag',320105,294965,13661,4052,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20122016',1),
(2013,7017,'Corrupters Crown','Flag',325823,544617,17699,2040,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20132013',1),
(2013,7018,'Soul Blight Stone','Flag',317467,544715,17061,3070,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20132014',1),
(2013,7040,'Soul Blight North','Flag',316772,542687,17253,120,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20132015',1),
(2013,7042,'Soul Blight Court','Flag',319336,544719,16920,3090,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20132016',0),
(2013,7043,'Soul Blight Overlook','Flag',316765,546756,17253,2266,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20132017',2),
(2013,7049,'Upper Temple','Flag',333040,544522,16921,1010,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20132018',2),
(2013,7048,'Lower Temple','Flag',331117,544579,16048,3080,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'20132019',2),
(2111,951,'The Armory','Flag',117849,409917,13734,3064,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'21112111',1),
(2111,952,'The Siege Workshop','Flag',128484,409944,13458,1158,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'21112112',1),
(2111,953,'Emperor\'s Circle','Flag',123485,402128,13328,2062,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'21112113',1),
(2111,954,'The Library','Flag',119268,396428,12326,384,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'21112114',0),
(2111,955,'The South Docks','Flag',135988,400752,12354,2022,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'21112115',2),
(2111,956,'The North Docks','Flag',132389,392015,12358,522,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'21112116',2),
(2136,7011,'The Aqshy Core',NULL,197120,203272,24131,1868,150,2,NULL,NULL,NULL,NULL,NULL,NULL,'21362136',NULL),
(2109,7020,'The Factory','Flag',625879,367208,6199,4084,10,2,NULL,NULL,NULL,NULL,NULL,NULL,'21dc5e47-59b9-11e6-9679-00ff0731887a',NULL),
(2104,24,'Warpstone Talisman','Murderball',555424,364779,5516,2139,NULL,NULL,99856,NULL,NULL,NULL,NULL,NULL,'3',NULL),
(2109,7021,'The Mill','Flag',615971,362595,5867,4084,10,2,NULL,NULL,NULL,NULL,NULL,NULL,'31dc5e47-59b9-11e6-9679-00ff0731887a',NULL),
(2205,7065,'The Summoning Tower','Flag',688188,370079,7481,2058,10,2,NULL,NULL,NULL,NULL,NULL,NULL,'b13c5e47-59b9-11e6-9679-00ff0731887a',NULL),
(2205,7066,'The Commorancy','Flag',688225,358806,7193,3808,10,2,NULL,NULL,NULL,NULL,NULL,NULL,'b14c5e47-59b9-11e6-9679-00ff0731887a',NULL),
(2205,7063,'The Academy','Flag',688391,364403,6758,1240,20,5,NULL,NULL,NULL,NULL,NULL,NULL,'b1bc5e47-59b9-11e6-9679-00ff0731887a',NULL),
(2006,5013,'Logrin\'s Hammer','Capture Point',577497,359733,8927,3060,NULL,NULL,99920,'Interact with the grave to capture %n!','Fight for control of %n!','Maintain control of %n!','Your realm controls %n','has captured','b1dba587-59b9-11e6-9679-00ff0731187a',NULL),
(2006,5012,'Logrin\'s Anvil','Capture Point',585444,359691,8927,2036,NULL,NULL,99919,'Interact with %n to capture it!','Fight for control of %n!','Maintain control of %n!','Your realm controls %n','has captured','b1dbc8c7-59b9-11e6-9679-00ff0731187a',NULL),
(2004,5033,'Da Base Camp','Flag',314461,511916,8115,NULL,35,10,NULL,NULL,NULL,NULL,NULL,NULL,'b1dbd3fb-59b9-11e6-9679-00ff0731187a',NULL),
(2004,5032,'Pile O\' Warstuff','Flag',321601,509599,8603,NULL,25,5,NULL,NULL,NULL,NULL,NULL,NULL,'b1dbda89-59b9-11e6-9679-00ff0731187a',NULL),
(2004,5031,'The Bridge','Flag',319048,516336,8806,NULL,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dbe37a-59b9-11e6-9679-00ff0731187a',NULL),
(2004,5022,'The Repair Depot','Flag',316619,522275,8798,NULL,25,5,NULL,NULL,NULL,NULL,NULL,NULL,'b1dbe426-59b9-11e6-9679-00ff0731187a',NULL),
(2004,5021,'Engine Number 9','Flag',323797,520961,8101,NULL,35,10,NULL,NULL,NULL,NULL,NULL,NULL,'b1dbe4bf-59b9-11e6-9679-00ff0731187a',NULL),
(2011,1,'Doomfist Ore','Murderball',587219,193715,3672,0,NULL,NULL,99928,NULL,NULL,NULL,NULL,NULL,'b1dbf47d-59b9-11e6-9679-00ff0731187a',NULL),
(2011,2,'Doomfist Ore','Murderball',589839,199230,3264,NULL,NULL,NULL,99928,NULL,NULL,NULL,NULL,NULL,'b1dbf520-59b9-11e6-9679-00ff0731187a',NULL),
(2011,3,'Doomfist Ore','Murderball',592801,193937,3248,NULL,NULL,NULL,99928,NULL,NULL,NULL,NULL,NULL,'b1dc0105-59b9-11e6-9679-00ff0731187a',NULL),
(2011,5030,'Doomfist Crater','Flag',589497,194879,3695,856,30,3,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc01b4-59b9-11e6-9679-00ff0731187a',NULL),
(2201,22,'Order Flag','Flag',421291,365550,6573,2048,150,NULL,98730,NULL,NULL,NULL,NULL,NULL,'b1dc0e30-59b9-11e6-9679-00ff0731187a',NULL),
(2201,23,'Destruction Flag','Flag',422464,355272,6470,0,150,NULL,98728,NULL,NULL,NULL,NULL,NULL,'b1dc19f7-59b9-11e6-9679-00ff0731187a',NULL),
(2002,26,'Dead Man\'s Dell','Flag',460414,357514,5514,2048,80,NULL,98730,NULL,NULL,NULL,NULL,NULL,'b1dc1a96-59b9-11e6-9679-00ff0731187a',NULL),
(2101,7069,'Chuck Rock Trolls','Capture Point',423239,364217,7920,NULL,35,NULL,99926,'Pacify the %n','Pacify the %n. You can only control this point while holding the Troll Pacifier. You can find the Pacifier at the top of Stone Troll Hill.','Maintain control of the %n!','Your realm has pacified the %n','has pacified the','b1dc1b3c-59b9-11e6-9679-00ff0731187a',NULL),
(2101,7070,'Gravel Bottom Trolls','Capture Point',420888,358267,7904,NULL,35,NULL,99926,'Pacify the %n','Pacify the %n. You can only control this point while holding the Troll Pacifier. You can find the Pacifier at the top of Stone Troll Hill.','Maintain control of the %n!','Your realm has pacified the %n','has pacified the','b1dc1bf1-59b9-11e6-9679-00ff0731187a',NULL),
(2101,7071,'Boulder Fist Trolls','Capture Point',424956,357502,7721,NULL,35,NULL,99926,'Pacify the %n','Pacify the %n. You can only control this point while holding the Troll Pacifier. You can find the Pacifier at the top of Stone Troll Hill.','Maintain control of the %n!','Your realm has pacified the %n','has pacified the','b1dc2700-59b9-11e6-9679-00ff0731187a',NULL),
(2103,5043,'The Stag','Capture Point',425389,423476,15830,1012,NULL,NULL,200004,'Interact with the grave to capture %n!','Fight for control of %n!','Maintain control of %n!','Your realm controls the %n','has captured','b1dc34b5-59b9-11e6-9679-00ff0731187a',NULL),
(2202,1,'Brimstone Bauble',NULL,489442,362040,6900,3882,NULL,NULL,99928,NULL,NULL,NULL,NULL,NULL,'b1dc4019-59b9-11e6-9679-00ff0731187a',NULL),
(2203,5018,'Temple of Isha','Flag',753811,366392,11103,NULL,30,3,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc40cd-59b9-11e6-9679-00ff0731187a',NULL),
(2101,12,'Troll Pacifier','Flag',423095,360652,9127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc415b-59b9-11e6-9679-00ff0731187a',NULL),
(2203,1,'Isha\'s Will','Pityball',753553,358741,12480,134,NULL,NULL,99922,NULL,NULL,NULL,NULL,NULL,'b1dc41e6-59b9-11e6-9679-00ff0731187a',NULL),
(2100,5100,'The Fortress','Flag',353573,357844,4832,1251,30,4,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc4273-59b9-11e6-9679-00ff0731187a',NULL),
(2100,5101,'The Barracks','Flag',358163,354382,3384,3276,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc4d37-59b9-11e6-9679-00ff0731187a',NULL),
(2100,5102,'The Lighthouse','Flag',358994,360908,4857,3219,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc4dcb-59b9-11e6-9679-00ff0731187a',NULL),
(2015,5053,'The Engine Room','Flag',308074,185029,3708,1420,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc4dcb-59b9-11e6-9679-00ff073118aa',NULL),
(2015,5052,'The Central Gangway','Flag',309026,185720,4199,1394,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc4dcb-59b9-11e6-9679-00ff073118ab',NULL),
(2015,5050,'The Upper Deck','Flag',310035,186408,4769,3470,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc4dcb-59b9-11e6-9679-00ff073118ac',NULL),
(2108,7007,'The Warehouse','Flag',362559,423347,6420,512,15,3,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc5b71-59b9-11e6-9679-00ff0731187a',NULL),
(2108,7008,'The Machine Shop','Flag',358119,423514,6408,3608,15,3,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc5c10-59b9-11e6-9679-00ff0731187a',NULL),
(2000,5000,'Gate Switch','Flag',194377,194176,9800,1251,30,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc5cad-59b9-11e6-9679-00ff0731187a',NULL),
(2108,7009,'The Steamtank Plant','Flag',360454,426358,6431,NULL,50,1,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc5d41-59b9-11e6-9679-00ff0731187a',NULL),
(2000,5001,'Ammunitions Cache','Flag',192283,194607,10100,NULL,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc5dce-59b9-11e6-9679-00ff0731187a',NULL),
(2105,7003,'The Atrium','Flag',688158,358116,19331,3632,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc5e47-19b9-11e6-9679-00ff0731887a',NULL),
(2105,7004,'The Loft','Flag',688147,358115,20446,3150,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc5e47-29b9-11e6-9679-00ff0731887a',NULL),
(2000,5002,'Supply Room','Flag',196495,193736,10100,3276,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc5e47-59b9-11e6-9679-00ff0731187a',NULL),
(2001,1,'Mourkain Artifact',NULL,331700,191645,2871,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc6c4a-59b9-11e6-9679-00ff0731187a',NULL),
(2008,1,'Powder Keg',NULL,453266,522218,5829,2436,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc6cf3-59b9-11e6-9679-00ff0731187a',NULL),
(2008,2,'Gun Powder',NULL,455823,516373,6600,3816,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc6d8c-59b9-11e6-9679-00ff0731187a',NULL),
(2103,5042,'The Crypt','Capture Point',419119,423491,15870,2969,NULL,NULL,200004,'Interact with the grave to capture %n!','Fight for control of %n!','Maintain control of %n!','Your realm controls the %n','has captured','b1dc7665-59b9-11e6-9679-00ff0731187a',NULL),
(2204,25,'Salvage',NULL,626704,368658,6888,2161,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc7ed8-59b9-11e6-9679-00ff0731187a',NULL),
(2008,1,'Gun Powder',NULL,450844,527483,6547,1968,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc8d69-59b9-11e6-9679-00ff0731187a',NULL),
(2102,1,'Powder Keg',NULL,489778,360241,5542,1224,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc8d69-59b9-11e6-9679-00ff0731187c',NULL),
(2102,2,'Gun Powder',NULL,483372,365971,6319,1346,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc8d69-59b9-11e6-9679-00ff0731187d',NULL),
(2102,1,'Gun Powder',NULL,495788,354490,6160,2924,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc8d69-59b9-11e6-9679-00ff0731187e',NULL),
(2204,2,'Destruction Parts Wagon',NULL,623031,360404,6072,3822,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc97c7-59b9-11e6-9679-00ff0731187a',NULL),
(2207,7067,'Caledor Woods','Flag',808246,360225,5546,100,25,5,NULL,NULL,NULL,NULL,NULL,NULL,'b1dc9866-59b9-11e6-9679-00ff0731187a',NULL),
(2204,0,'Center Glow',NULL,626668,368672,6888,2036,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcc746-59b9-11e6-9679-00ff0731187a',NULL),
(2106,5138,'Central Praag','Flag',757852,364479,6536,1251,15,2,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcc7ec-59b9-11e6-9679-00ff0731187a',NULL),
(2106,5137,'North Central Praag','Flag',759321,361670,7022,NULL,25,5,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd35c-59b9-11e6-9679-00ff0731187a',NULL),
(2106,5139,'South Central Praag','Flag',756354,367284,7102,NULL,25,5,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd3f8-59b9-11e6-9679-00ff0731187a',NULL),
(2106,5140,'South Praag','Flag',753351,368066,7261,NULL,35,10,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd483-59b9-11e6-9679-00ff0731187a',NULL),
(2106,5136,'North Praag','Flag',762697,361030,7261,NULL,35,10,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd50a-59b9-11e6-9679-00ff0731187a',NULL),
(2204,1,'Order Parts Wagon',NULL,630185,360408,6064,2343,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd586-59b9-11e6-9679-00ff0731187a',NULL),
(2200,7024,'Dance of Swords','Flag',361437,361707,11155,830,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd5ec-59b9-11e6-9679-00ff0731187a',NULL),
(2206,5150,'The N. Fountain','Flag',355022,421723,5742,2100,15,10,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd64d-59b9-11e6-9679-00ff07311871',1),
(2206,5151,'The Orchard','Flag',354705,430693,5261,1320,15,10,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd64d-59b9-11e6-9679-00ff07311872',2),
(2206,5152,'The Crossroads','Flag',352467,425900,4802,2222,15,5,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd64d-59b9-11e6-9679-00ff07311873',0),
(2206,5153,'The Tower','Flag',349389,421725,6069,2130,15,10,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd64d-59b9-11e6-9679-00ff07311874',1),
(2206,5154,'The S. Fountain','Flag',349749,430640,5062,58,15,10,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd64d-59b9-11e6-9679-00ff07311875',2),
(2200,7023,'Death\'s Charge','Flag',367380,361665,11191,3857,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'b1dcd64d-59b9-11e6-9679-00ff0731187a',NULL);
/*!40000 ALTER TABLE `scenario_objects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-07 15:42:30
