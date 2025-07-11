CREATE DATABASE  IF NOT EXISTS `europe_soccer_fixed` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `europe_soccer_fixed`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: europe_soccer_fixed
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `league`
--

DROP TABLE IF EXISTS `league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `league` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country_id` (`country_id`),
  CONSTRAINT `fk_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24559 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league`
--

LOCK TABLES `league` WRITE;
/*!40000 ALTER TABLE `league` DISABLE KEYS */;
INSERT INTO `league` VALUES (1,1,'Belgium Jupiler League'),(1729,1729,'England Premier League'),(4769,4769,'France Ligue 1'),(7809,7809,'Germany 1. Bundesliga'),(10257,10257,'Italy Serie A'),(13274,13274,'Netherlands Eredivisie'),(15722,15722,'Poland Ekstraklasa'),(17642,17642,'Portugal Liga ZON Sagres'),(19694,19694,'Scotland Premier League'),(21518,21518,'Spain LIGA BBVA'),(24558,24558,'Switzerland Super League');
/*!40000 ALTER TABLE `league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int NOT NULL,
  `team_api_id` int DEFAULT NULL,
  `team_fifa_api_id` int DEFAULT NULL,
  `team_long_name` varchar(255) DEFAULT NULL,
  `team_short_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (0,NULL,NULL,NULL,NULL),(2,9993,675,'Beerschot AC','BAC'),(3,10000,15005,'SV Zulte-Waregem','ZUL'),(4,9994,2007,'Sporting Lokeren','LOK'),(5,9984,1750,'KSV Cercle Brugge','CEB'),(6,8635,229,'RSC Anderlecht','AND'),(7,9991,674,'KAA Gent','GEN'),(8,9998,1747,'RAEC Mons','MON'),(9,7947,0,'FCV Dender EH','DEN'),(10,9985,232,'Standard de Liège','STL'),(11,8203,110724,'KV Mechelen','MEC'),(12,8342,231,'Club Brugge KV','CLB'),(13,9999,546,'KSV Roeselare','ROS'),(14,8571,100081,'KV Kortrijk','KOR'),(15,4049,0,'Tubize','TUB'),(16,9996,111560,'Royal Excel Mouscron','MOU'),(17,10001,681,'KVC Westerlo','WES'),(18,9986,670,'Sporting Charleroi','CHA'),(614,9997,680,'Sint-Truidense VV','STT'),(1034,9989,239,'Lierse SK','LIE'),(1042,6351,2013,'KAS Eupen','EUP'),(1513,1773,100087,'Oud-Heverlee Leuven','O-H'),(2004,8475,110913,'Waasland-Beveren','WAA'),(2476,8573,682,'KV Oostende','OOS'),(2510,274581,111560,'Royal Excel Mouscron','MOP'),(3457,10260,11,'Manchester United','MUN'),(3458,10261,13,'Newcastle United','NEW'),(3459,9825,1,'Arsenal','ARS'),(3460,8659,109,'West Bromwich Albion','WBA'),(3461,8472,106,'Sunderland','SUN'),(3462,8650,9,'Liverpool','LIV'),(3463,8654,19,'West Ham United','WHU'),(3464,8528,1917,'Wigan Athletic','WIG'),(3465,10252,2,'Aston Villa','AVL'),(3466,8456,10,'Manchester City','MCI'),(3467,8668,7,'Everton','EVE'),(3468,8655,3,'Blackburn Rovers','BLB'),(3469,8549,12,'Middlesbrough','MID'),(3470,8586,18,'Tottenham Hotspur','TOT'),(3471,8559,4,'Bolton Wanderers','BOL'),(3472,10194,1806,'Stoke City','STK'),(3473,8667,1952,'Hull City','HUL'),(3474,9879,144,'Fulham','FUL'),(3475,8455,5,'Chelsea','CHE'),(3476,8462,1790,'Portsmouth','POR'),(4218,8658,88,'Birmingham City','BIR'),(4225,8602,110,'Wolverhampton Wanderers','WOL'),(4234,8191,1796,'Burnley','BUR'),(4996,8483,1926,'Blackpool','BLA'),(5744,10003,1960,'Swansea City','SWA'),(5747,10172,15,'Queens Park Rangers','QPR'),(5756,9850,1792,'Norwich City','NOR'),(6504,8466,17,'Southampton','SOU'),(6509,9798,1793,'Reading','REA'),(7261,9826,1799,'Crystal Palace','CRY'),(7276,8344,1961,'Cardiff City','CAR'),(8021,8197,95,'Leicester City','LEI'),(8779,8678,1943,'Bournemouth','BOU'),(8784,9817,1795,'Watford','WAT'),(9537,8583,57,'AJ Auxerre','AUX'),(9538,9830,71,'FC Nantes','NAN'),(9539,9827,59,'Girondins de Bordeaux','BOR'),(9540,7819,210,'SM Caen','CAE'),(9541,9746,1738,'Le Havre AC','LEH'),(9542,9831,72,'OGC Nice','NIC'),(9543,8682,1739,'Le Mans FC','LEM'),(9544,8689,217,'FC Lorient','LOR'),(9545,9748,66,'Olympique Lyonnais','LYO'),(9546,9941,1809,'Toulouse FC','TOU'),(9547,9829,69,'AS Monaco','MON'),(9548,9847,73,'Paris Saint-Germain','PSG'),(9549,8481,1823,'AS Nancy-Lorraine','NAN'),(9550,8639,65,'LOSC Lille','LIL'),(9551,9851,74,'Stade Rennais FC','REN'),(9552,8592,219,'Olympique de Marseille','MAR'),(9553,9874,226,'FC Sochaux-Montbéliard','SOC'),(9554,9855,1805,'Grenoble Foot 38','GRE'),(9555,9873,110456,'Valenciennes FC','VAL'),(9556,9853,1819,'AS Saint-Étienne','ETI'),(10300,8588,64,'RC Lens','LEN'),(10309,10249,70,'Montpellier Hérault SC','MON'),(10312,4170,111376,'US Boulogne Cote D\'Opale','BOU'),(11074,108893,111989,'AC Arles-Avignon','ARL'),(11076,8521,378,'Stade Brestois 29','BRE'),(11817,8576,614,'AC Ajaccio','AJA'),(11822,4087,111271,'Évian Thonon Gaillard FC','ETG'),(11825,9836,110569,'Dijon FCO','DIJ'),(12587,9837,379,'Stade de Reims','REI'),(12594,7794,58,'SC Bastia','BAS'),(12595,10242,294,'ES Troyes AC','TRO'),(13343,9747,62,'En Avant de Guingamp','GUI'),(14106,8550,68,'FC Metz','MET'),(14868,8121,1530,'Angers SCO','ANG'),(14876,6391,110316,'GFC Ajaccio','GAJ'),(15617,9823,21,'FC Bayern Munich','BMU'),(15618,9790,28,'Hamburger SV','HAM'),(15619,8178,32,'Bayer 04 Leverkusen','LEV'),(15620,9789,22,'Borussia Dortmund','DOR'),(15621,10189,34,'FC Schalke 04','S04'),(15622,9904,485,'Hannover 96','HAN'),(15623,8721,175,'VfL Wolfsburg','WOL'),(15624,8722,31,'1. FC Köln','FCK'),(15625,9810,1824,'Eintracht Frankfurt','EFR'),(15626,8177,166,'Hertha BSC Berlin','HBE'),(15627,9912,159,'DSC Arminia Bielefeld','BIE'),(15628,8697,38,'SV Werder Bremen','WBR'),(15629,8398,162,'FC Energie Cottbus','COT'),(15630,8226,10029,'TSG 1899 Hoffenheim','HOF'),(15631,9788,23,'Borussia Mönchengladbach','GLA'),(15632,10269,36,'VfB Stuttgart','STU'),(15633,8295,1832,'Karlsruher SC','KAR'),(15634,9911,160,'VfL Bochum','BOC'),(16237,8358,25,'SC Freiburg','FRE'),(16239,8165,171,'1. FC Nürnberg','NUR'),(16243,9905,169,'1. FSV Mainz 05','MAI'),(16848,8350,29,'1. FC Kaiserslautern','KAI'),(16850,8152,110329,'FC St. Pauli','STP'),(17465,8406,100409,'FC Augsburg','AUG'),(18074,8194,110636,'Fortuna Düsseldorf','FDU'),(18079,8357,165,'SpVgg Greuther Fürth','GRF'),(18691,9776,110500,'Eintracht Braunschweig','BRA'),(19305,8460,10030,'SC Paderborn 07','PAD'),(19916,8234,111239,'FC Ingolstadt 04','ING'),(19917,8262,110502,'SV Darmstadt 98','DAR'),(20513,8524,39,'Atalanta','ATA'),(20514,8551,1838,'Siena','SIE'),(20515,8529,1842,'Cagliari','CAG'),(20516,8543,46,'Lazio','LAZ'),(20517,8530,110364,'Catania','CAT'),(20518,10233,110556,'Genoa','GEN'),(20519,8533,192,'Chievo Verona','CHI'),(20520,8690,203,'Reggio Calabria','REG'),(20521,8535,110374,'Fiorentina','FIO'),(20522,9885,45,'Juventus','JUV'),(20523,8564,47,'Milan','ACM'),(20524,9857,189,'Bologna','BOL'),(20525,8686,52,'Roma','ROM'),(20526,9875,48,'Napoli','NAP'),(20527,9882,1837,'Sampdoria','SAM'),(20528,8636,44,'Inter','INT'),(20529,9804,54,'Torino','TOR'),(20530,9888,347,'Lecce','LEC'),(20531,8600,55,'Udinese','UDI'),(20532,8540,1843,'Palermo','PAL'),(21280,9976,1848,'Bari','BAR'),(21285,8537,1844,'Livorno','LIV'),(21292,10167,50,'Parma','PAR'),(22042,9880,110915,'Cesena','CES'),(22044,9858,190,'Brescia','BRE'),(22805,6269,112225,'Novara','NOV'),(23523,9878,200,'Pescara','PES'),(24273,9876,206,'Hellas Verona','VER'),(24288,7943,111974,'Sassuolo','SAS'),(25048,8534,1746,'Empoli','EMP'),(25791,9891,111657,'Frosinone','FRO'),(25804,208931,112409,'Carpi','CAP'),(26547,8277,1909,'Vitesse','VIT'),(26548,8674,1915,'FC Groningen','GRO'),(26549,9803,1902,'Roda JC Kerkrade','ROD'),(26550,8611,1908,'FC Twente','TWE'),(26551,8525,1907,'Willem II','WII'),(26552,8593,245,'Ajax','AJA'),(26553,8464,1910,'N.E.C.','NEC'),(26554,8526,635,'De Graafschap','GRA'),(26555,9908,1903,'FC Utrecht','UTR'),(26556,8640,247,'PSV','PSV'),(26557,9791,100634,'Heracles Almelo','HER'),(26558,10235,246,'Feyenoord','FEY'),(26559,8614,100646,'Sparta Rotterdam','SPA'),(26560,10217,650,'ADO Den Haag','HAA'),(26561,6601,0,'FC Volendam','VOL'),(26562,10228,1913,'SC Heerenveen','HEE'),(26563,10229,1906,'AZ','ALK'),(26564,9761,1904,'NAC Breda','NAC'),(27161,10219,1905,'RKC Waalwijk','RKC'),(27168,9839,100651,'VVV-Venlo','VEN'),(27780,10218,1971,'Excelsior','EXC'),(29000,6413,1914,'PEC Zwolle','ZWO'),(29617,7788,647,'SC Cambuur','CAM'),(29624,6433,100632,'Go Ahead Eagles','GAE'),(30222,6631,100626,'FC Dordrecht','DOR'),(31443,10265,1873,'Wisła Kraków','WIS'),(31444,8031,111429,'Polonia Bytom','POB'),(31445,8020,111429,'Polonia Bytom','GOR'),(31446,1601,874,'Ruch Chorzów','CHO'),(31447,8673,1871,'Legia Warszawa','LEG'),(31448,2183,1570,'P. Warszawa','PWA'),(31449,8025,111092,'Śląsk Wrocław','SLA'),(31450,8030,111091,'Lechia Gdańsk','LGD'),(31451,8244,301,'Widzew Łódź','LOD'),(31452,8242,1564,'Odra Wodzisław','ODR'),(31453,2182,873,'Lech Poznań','POZ'),(31454,8569,110744,'GKS Bełchatów','BEL'),(31455,8322,111082,'Arka Gdynia','ARK'),(31456,1957,110745,'Jagiellonia Białystok','BIA'),(31457,8028,111086,'Piast Gliwice','PIG'),(31458,2186,110747,'Cracovia','CKR'),(31925,8245,111083,'Korona Kielce','KKI'),(31928,8021,110749,'Zagłębie Lubin','ZAG'),(32409,8024,301,'Widzew Łódź','WID'),(32891,8033,111087,'Podbeskidzie Bielsko-Biała','POD'),(33377,8023,110746,'Pogoń Szczecin','POG'),(33855,8027,112512,'Zawisza Bydgoszcz','ZAW'),(34337,8019,110565,'Górnik Łęczna','LEC'),(34816,177361,0,'Termalica Bruk-Bet Nieciecza','TBN'),(35283,9773,236,'FC Porto','POR'),(35284,9807,1889,'CF Os Belenenses','BEL'),(35285,9768,237,'Sporting CP','SCP'),(35286,7992,0,'Trofense','TRO'),(35287,7844,1887,'Vitória Guimarães','GUI'),(35288,10238,665,'Vitória Setúbal','SET'),(35289,6403,1892,'FC Paços de Ferreira','FER'),(35290,10264,1896,'SC Braga','BRA'),(35291,10213,0,'Amadora','AMA'),(35292,10215,1901,'Académica de Coimbra','ACA'),(35293,7841,744,'Rio Ave FC','RA'),(35294,9772,234,'SL Benfica','BEN'),(35295,6421,10018,'Leixões SC','LEI'),(35296,10214,1891,'CD Nacional','NAC'),(35297,9809,100737,'Naval 1° de Maio','NAV'),(35298,10212,1893,'CS Marítimo','MAR'),(35769,9771,1895,'União de Leiria, SAD','ULE'),(35774,2033,111540,'S.C. Olhanense','OLH'),(36248,9765,0,'Portimonense','POR'),(36253,10211,1897,'SC Beira Mar','B-M'),(36723,4064,0,'Feirense','FEI'),(36735,9764,1888,'Gil Vicente FC','GV'),(37210,8348,1900,'Moreirense FC','MOR'),(37214,7842,10020,'Estoril Praia','EST'),(37696,158085,112513,'FC Arouca','ARO'),(38173,6547,100741,'FC Penafiel','PEN'),(38176,8613,1898,'Boavista FC','BOA'),(38789,6367,0,'Uniao da Madeira','MAD'),(38791,188163,0,'Tondela','TON'),(39387,8596,79,'Falkirk','FAL'),(39388,8548,86,'Rangers','RAN'),(39389,9860,80,'Heart of Midlothian','HEA'),(39390,9927,83,'Motherwell','MOT'),(39391,8597,82,'Kilmarnock','KIL'),(39392,10251,81,'Hibernian','HIB'),(39393,8485,77,'Aberdeen','ABE'),(39394,8066,620,'Inverness Caledonian Thistle','INV'),(39395,9925,78,'Celtic','CEL'),(39396,9800,100805,'St. Mirren','MIR'),(39397,8429,184,'Hamilton Academical FC','HAM'),(39398,9938,181,'Dundee United','DUU'),(39853,8467,100804,'St. Johnstone FC','JOH'),(40757,8457,182,'Dunfermline Athletic','DUN'),(41216,8284,180,'Dundee FC','DUF'),(41217,8649,631,'Ross County FC','ROS'),(41673,8426,1754,'Partick Thistle F.C.','PAR'),(43035,10267,461,'Valencia CF','VAL'),(43036,8661,453,'RCD Mallorca','MAL'),(43037,8371,479,'CA Osasuna','OSA'),(43038,10205,483,'Villarreal CF','VIL'),(43039,9783,242,'RC Deportivo de La Coruña','COR'),(43040,8633,243,'Real Madrid CF','REA'),(43041,8388,477,'CD Numancia','NUM'),(43042,8634,241,'FC Barcelona','BAR'),(43043,8696,456,'Racing Santander','SAN'),(43044,8302,481,'Sevilla FC','SEV'),(43045,9869,459,'Real Sporting de Gijón','SPG'),(43046,8305,1860,'Getafe CF','GET'),(43047,8603,449,'Real Betis Balompié','BET'),(43048,8479,571,'RC Recreativo','HUE'),(43049,8558,452,'RCD Espanyol','ESP'),(43050,10281,462,'Real Valladolid','VAL'),(43051,8315,448,'Athletic Club de Bilbao','BIL'),(43052,9865,1861,'UD Almería','ALM'),(43053,9906,240,'Atlético Madrid','AMA'),(43054,9864,573,'Málaga CF','MAL'),(43800,9868,1742,'Xerez Club Deportivo','XER'),(43803,8394,244,'Real Zaragoza','ZAR'),(43804,9867,260,'CD Tenerife','TEN'),(44557,10278,100879,'Hércules Club de Fútbol','HER'),(44565,8581,1853,'Levante UD','LEV'),(44569,8560,457,'Real Sociedad','SOC'),(45330,7878,110832,'Granada CF','GRA'),(45333,8370,480,'Rayo Vallecano','RAY'),(46087,9910,450,'RC Celta de Vigo','CEL'),(46848,10268,468,'Elche CF','ELC'),(47605,8372,467,'SD Eibar','EIB'),(47612,7869,1867,'Córdoba CF','COR'),(48358,8306,472,'UD Las Palmas','LAS'),(49115,9956,322,'Grasshopper Club Zürich','GRA'),(49116,6493,1714,'AC Bellinzona','BEL'),(49117,10192,900,'BSC Young Boys','YB'),(49118,9931,896,'FC Basel','BAS'),(49119,9930,434,'FC Aarau','AAR'),(49120,10179,110770,'FC Sion','SIO'),(49121,10199,897,'FC Luzern','LUZ'),(49122,9824,286,'FC Vaduz','VAD'),(49123,7955,435,'Neuchâtel Xamax','XAM'),(49124,10243,894,'FC Zürich','ZUR'),(49479,10190,898,'FC St. Gallen','GAL'),(49837,10191,1715,'FC Thun','THU'),(50201,9777,324,'Servette FC','SER'),(50204,7730,1862,'FC Lausanne-Sports','LAU'),(51606,7896,0,'Lugano','LUG');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'europe_soccer_fixed'
--

--
-- Dumping routines for database 'europe_soccer_fixed'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-25 21:32:51
