-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (x86_64)
--
-- Host: localhost    Database: game_of_thrones
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Dumping data for table `castles`
--

LOCK TABLES `castles` WRITE;
/*!40000 ALTER TABLE `castles` DISABLE KEYS */;
INSERT INTO `castles` VALUES (1,1,'Winterfell',0,0),(2,3,'Riverrun',0,0),(3,8,'Dragonstone',0,0),(4,5,'Casterly Rock',0,0),(5,7,'Storm\'s End',0,0),(6,6,'Highgarden',0,0),(7,3,'The Twins',0,0),(8,3,'Harenhall',0,0),(9,1,'Dreadfort',0,0),(10,4,'The Eyrie',0,0),(11,2,'Pyke',0,0),(12,1,'Mormont Keep',0,0),(13,6,'Horn Hill',0,0),(14,9,'Sunspear',0,0),(15,11,'Castle Black',0,0),(16,11,'Eastwatch By-the-sea',0,0),(17,6,'Hightower',0,0),(18,8,'Red Keep',0,0);
/*!40000 ALTER TABLE `castles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `great_lords`
--

LOCK TABLES `great_lords` WRITE;
/*!40000 ALTER TABLE `great_lords` DISABLE KEYS */;
INSERT INTO `great_lords` VALUES (1,1),(2,3),(3,4),(4,5),(5,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(16,16),(17,17),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,28),(26,29),(27,35),(28,36),(29,37),(30,38),(31,39),(44,42),(32,43),(33,44),(34,45),(35,46),(36,47),(37,48),(38,49),(39,50),(40,51),(41,52),(6,53),(42,54),(43,55);
/*!40000 ALTER TABLE `great_lords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` VALUES (1,'Stark','Direwolf','Grey and White','Winter is coming'),(2,'Lannister','Lion','Red and Golden','Hear me roar'),(3,'Targaryen','Three-headed Dragon','Red and Black','Fire and blood'),(4,'Baratheon','Deer','Golden and Black','Ours is the fury'),(5,'Tyrell','Flower','Golden and Green','Growing strong'),(6,'Bolton','Flayed Man','Red and Pink','Our blades are sharp'),(7,'Arryn','Falcon and a Moon','Blue and White','As high as honor'),(8,'Clegane','Three Dogs','Black and Golden','<Not yet known>'),(9,'Greyjoy','Kraken','Golden and Black','We do not sow'),(10,'Manderly','Merman','Blue and Green','<Not yet known>'),(11,'Hornwood','Bullmoose','Brown and Orange','Righteous in wrath'),(12,'Mormont','Bear','Black and Green','Here we stand'),(13,'Redwyne','Grapes','Blue and Purple','<Not yet known>'),(14,'Reed','Lizard-lion','Black and Grey-green','<Not yet known>'),(15,'Seaworth','Ship','Grey and Black','<Not yet known>'),(16,'Tarly','Huntsman','Green and Red','First in battle'),(17,'Tully','Trout','Red and Blue','Family, duty, honor'),(18,'Forrester','Ironwood tree','Grey and Black','Iron from ice'),(19,'Martell','Sun and Spear','Orange and Red','Unbowed, unbent, unbroken'),(20,'Lefford','Inverted pile and Sun','Golden and Blue','<Not yet known>'),(21,'Frey','Two Towers','Grey and Blue','<Not yet known>'),(22,'Whent','Bats','Golden and Black','<Not yet known>'),(23,'Estermont','Sea Turtle','Green and White','<Not yet known>'),(24,'Florent','Fox and Flowers','Red and Blue','<Not yet known>'),(25,'Hightower','Tower in Flames','White and Grey','We light the way'),(26,'Harlaw','Scythe','Black and White','<Not yet known>'),(27,'Jonas','J and B letters','Black and Golden','Cause I\'m burnin\' up, burnin\' up');
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `inheritances`
--

LOCK TABLES `inheritances` WRITE;
/*!40000 ALTER TABLE `inheritances` DISABLE KEYS */;
INSERT INTO `inheritances` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,17),(7,20),(8,17),(9,22),(10,1),(10,17),(11,1),(11,17),(12,1),(12,17),(13,1),(13,17),(14,1),(14,17),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,1),(24,3),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,4),(37,23),(38,4),(38,23),(39,4),(39,23),(40,4),(40,23),(41,4),(41,23),(42,24),(43,4),(43,24),(44,4),(44,23),(44,24),(45,5),(46,5),(46,13),(47,5),(47,13),(48,25),(49,5),(49,13),(49,25),(50,5),(50,13),(50,25),(51,21),(52,21),(53,21),(54,21),(55,21),(56,6),(57,6),(58,17),(58,20),(59,17),(59,20),(59,22),(60,17),(60,20),(60,22),(61,21),(62,7),(63,7),(64,7),(65,7),(66,7),(66,17),(66,20),(66,22),(67,8),(68,8),(69,9),(70,9),(71,9),(72,9),(72,26),(73,9),(73,26),(74,9),(74,26),(75,9),(75,26),(76,9),(76,26),(77,12),(78,12),(79,12),(80,12),(81,25),(82,16),(83,16),(84,16),(85,16),(86,16),(87,19),(88,19),(89,19),(90,19),(91,19),(92,3),(92,19),(93,3),(93,19),(94,27);
/*!40000 ALTER TABLE `inheritances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kingdoms`
--

LOCK TABLES `kingdoms` WRITE;
/*!40000 ALTER TABLE `kingdoms` DISABLE KEYS */;
INSERT INTO `kingdoms` VALUES (1,'Six Kingdoms'),(2,'Wildlands'),(3,'The North');
/*!40000 ALTER TABLE `kingdoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kings`
--

LOCK TABLES `kings` WRITE;
/*!40000 ALTER TABLE `kings` DISABLE KEYS */;
INSERT INTO `kings` VALUES (1,38,33),(2,33,35),(3,35,NULL),(4,11,NULL),(5,12,NULL),(6,16,17),(7,17,21),(8,24,NULL),(9,39,NULL),(10,40,NULL),(11,23,NULL),(12,13,NULL);
/*!40000 ALTER TABLE `kings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `knights`
--

LOCK TABLES `knights` WRITE;
/*!40000 ALTER TABLE `knights` DISABLE KEYS */;
INSERT INTO `knights` VALUES (1,30,NULL),(2,50,40),(3,67,21),(4,68,21),(5,78,38);
/*!40000 ALTER TABLE `knights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `lords`
--

LOCK TABLES `lords` WRITE;
/*!40000 ALTER TABLE `lords` DISABLE KEYS */;
INSERT INTO `lords` VALUES (1,1,3),(3,3,11),(4,11,13),(5,13,12),(6,12,NULL),(7,8,58),(8,58,60),(9,60,NULL),(10,16,17),(11,17,19),(12,19,20),(13,20,21),(14,21,22),(16,25,26),(17,26,28),(19,28,31),(20,31,NULL),(21,36,38),(22,39,40),(23,40,NULL),(24,41,NULL),(25,82,86),(27,85,NULL),(28,45,47),(29,47,50),(31,51,52),(35,56,57),(36,57,NULL),(37,62,63),(38,63,66),(39,66,NULL),(40,79,80),(41,80,NULL),(42,77,NULL),(43,24,NULL),(44,38,33),(45,33,35),(46,35,NULL),(47,87,88),(48,88,91),(49,69,76),(50,76,NULL),(51,70,NULL),(52,46,NULL),(53,6,7),(54,29,NULL),(55,23,NULL),(56,78,NULL);
/*!40000 ALTER TABLE `lords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `lords_castles`
--

LOCK TABLES `lords_castles` WRITE;
/*!40000 ALTER TABLE `lords_castles` DISABLE KEYS */;
INSERT INTO `lords_castles` VALUES (1,1,1,NULL,NULL,0),(2,3,1,NULL,NULL,0),(3,4,1,NULL,NULL,0),(4,5,18,NULL,NULL,1),(5,6,1,NULL,NULL,1),(6,7,2,NULL,NULL,0),(7,9,2,NULL,NULL,1),(8,11,3,NULL,NULL,0),(9,12,3,NULL,NULL,0),(10,13,3,NULL,NULL,0),(11,17,4,NULL,NULL,0),(12,19,4,NULL,NULL,0),(13,20,4,NULL,NULL,1),(14,21,5,NULL,NULL,0),(15,22,5,NULL,NULL,0),(16,23,5,NULL,NULL,0),(17,24,5,NULL,NULL,1),(18,25,13,NULL,NULL,0),(19,27,13,NULL,NULL,1),(20,28,6,NULL,NULL,0),(21,29,6,NULL,NULL,0),(22,31,2,NULL,NULL,0),(23,31,7,NULL,NULL,0),(24,35,9,NULL,NULL,0),(25,36,1,NULL,NULL,0),(26,37,10,NULL,NULL,0),(27,53,2,NULL,NULL,0),(28,44,5,NULL,NULL,0),(29,44,18,NULL,NULL,0),(30,36,9,NULL,NULL,0),(31,38,10,NULL,NULL,0),(32,39,10,NULL,NULL,1),(33,40,12,NULL,NULL,0),(34,41,12,NULL,NULL,0),(35,42,15,NULL,NULL,0),(36,43,1,NULL,NULL,0),(37,43,15,NULL,NULL,1),(38,45,18,NULL,NULL,0),(39,46,18,NULL,NULL,0),(40,47,14,NULL,NULL,0),(41,48,14,NULL,NULL,0),(42,49,11,NULL,NULL,0),(43,50,11,NULL,NULL,1),(44,51,11,NULL,NULL,0),(45,52,6,NULL,NULL,0),(46,54,18,NULL,NULL,0),(47,55,3,NULL,NULL,0),(48,55,18,NULL,NULL,0);
/*!40000 ALTER TABLE `lords_castles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `marriages`
--

LOCK TABLES `marriages` WRITE;
/*!40000 ALTER TABLE `marriages` DISABLE KEYS */;
INSERT INTO `marriages` VALUES (3,10,1),(6,7,1),(8,9,1),(17,18,1),(21,5,1),(26,27,1),(31,12,0),(33,49,0),(35,49,1),(36,37,1),(38,29,1),(39,43,1),(40,49,0),(45,46,1),(47,48,1),(56,55,1),(57,12,0),(60,61,1),(63,59,0),(69,72,1),(78,81,0),(82,83,1),(98,12,1);
/*!40000 ALTER TABLE `marriages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nobles`
--

LOCK TABLES `nobles` WRITE;
/*!40000 ALTER TABLE `nobles` DISABLE KEYS */;
INSERT INTO `nobles` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71),(72,72),(73,73),(74,74),(75,75),(76,76),(77,77),(78,78),(79,79),(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),(90,90),(91,91),(92,92),(93,93),(94,98);
/*!40000 ALTER TABLE `nobles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,NULL,NULL,1,'Rickard Stark',NULL,NULL,0,'m','Warden of the north and lord of Winterfell, father of four children, Lord Rickard was killed burned alive by Aerys Targaryen (the mad king) at the Red Keep in King\'s Landing.'),(2,NULL,1,1,'Brandon Stark',NULL,NULL,0,'m','Heir to Lord Rickard, the elder of the four sons, Brandon Stark never got the chance to be named Lord of Winterfell as he was killed along with his father choked to death in King\'s Landing.'),(3,NULL,1,1,'Eddard Stark',NULL,NULL,0,'m','Warden of the north and lord of Winterfell, father of five children, Lord Eddard (Ned) Stark led the rebellion along with his long term friend Robert Baratheon after the murder of his father and brother and the (supposed) kidnaping of his sister. After Robert was crowned king of the seven kingdoms, Ned returned to Winterfell until he received an invitation from the capital to be tha hand of the king. After King Robert passed away, Ned was accused of treachery against the crown by Robert\'s widow Cersei Lannister and executed (beheaded) by their son Joffrey Baratheon.'),(4,NULL,1,1,'Benjen Stark',NULL,NULL,0,'m','During the rebellion agains the mad king, Benjen Stark was the lord and the Stark in Winterfell (as they say \'A Stark must always be in Winterfell\'). After the rebellion ended, Benjen joined the Night Watch disposing of all of his titles and lands. Years later, Benjen gone missing during a patrol beyond the wall, his whereabouts were unkown for months and he was assumed dead.'),(5,NULL,1,1,'Lyanna Stark',NULL,NULL,0,'f','The only daughter of Rickard Stark, Lyanna was promissed to Robert Baratheon (who loved her deeply) to unite the houses Stark and Baratheon in marriage, however, before they could marry, Lyanna was supposedly kidnaped by the mad king\'s son, prince Rhaegar Targaryen, this led Robert to rebel against the crown along with Lyanna\'s brother Eddard (Ned) Stark. At the end of the rebellion, Ned found Lyanna in a tower in Dorne on the brink of death after giving birth to his son, which she begs Ned to raise as his own. Years later, through a document at the citadel, Samwell Tarly finds out that the prince Rhaegar did\'nt actually kidnaped Lyanna and that they were actually in love so they ran away together and got married in a secret ceremony in Dorne.'),(6,NULL,NULL,3,'Robbyrt Tully',NULL,NULL,0,'m','Warden of the Riverlands and lord of Riverrun, Robbyrt Tully was the father of two children.'),(7,NULL,NULL,5,'Sansa Lefford',NULL,NULL,0,'f','Lady of Riverrun and mother of two children.'),(8,7,6,3,'Hoster Tully',NULL,NULL,0,'m','Warden of the Riverlands and lord of Riverrun, Hoster Tully was the father of three children. Lord Hoster died of old age during the war of the five kings.'),(9,NULL,NULL,3,'Minisa Whent',NULL,NULL,0,'f','Lady of Riverrun and mother of trhee children.'),(10,9,8,3,'Catelyn Tully',NULL,NULL,0,'f','Lady of Winterfell and mother of five children, Lady Catelyn went south with her son, King Robb Stark, during the war of the five kings after her husband, Eddard (Ned) Stark was made prisioner in King\'s Landing. Catelyn was accused of treachery by some northerners lords after she set Jaime Lannister (the kingslayer), King Robb\'s prisioner, free in an attempt to rescue her daughters from the capital. Lady Catelyn was killed by Raymund Frey in the night that is known as the Red Wedding at the Twins.'),(11,10,3,1,'Robb Stark',NULL,NULL,0,'m','King in the North and lord of Winterfell during the war of the five kings, Robb Stark was the elder son of Eddard (Ned) Stark. Robb raised his banners and marched south with the armies of the north to wage war against the capital after his father was accused of treachery against the crown. After Ned\'s execution, Robb was named King in the North by the northerners lords. King Robb was betrayed and killed by Roose Bolton in the night that is known as the Red Wedding at the Twins.'),(12,10,3,1,'Sansa Stark',NULL,NULL,1,'f','Queen in the North and lady of Winterfell, Sansa Stark is the elder daughter of Eddard (Ned) Stark. As a child, she was sent to King\'s Landing to marry King Joffrey, however, the marriage fell appart when her father was accused of treachery against the crown, she\'s been then married to Lord Tyrion Lannister. After King Joffrey\'s murder, Sansa was reportedly disappeared from King\'s Landing and lather found under the protection of the lords of the vale. She was sent back to her home at Winterfell and married to Ramsey Bolton, the new lord of Winterfell. During the battle where King Stannis Baratheon attacked Winterfell to take it back in the name of the house Stark, sansa was once again reported as missing and later joined her cousin, Jon Snow at Castle Black. After the battle of the bastards where Jon Snow retrieves Winterfell from the Boltons and id named King in the North, Sansa is left as Lady of Winterfell in his absence. Afther the last war, when Queen Daenerys is murdered by Jon Snow and Bran Stark is named King of the six kingdoms the North becames a independent kingdom and Sansa is named Queen in the North.'),(13,10,3,1,'Brandon Stark',NULL,NULL,1,'m','Son of Eddard (Ned) Stark, Brandon (Bran) Stark fell from a tower in Winterfell in his young age and became a crippled. After his brother Robb went south to wage war against the crown and the rebelling iron men assaulted Winterfell Bran and his younger brother managed to escape to the North. While many thought they were dead, Bran went north of the wall and became the enlighted three-eyed raven. After the war of the five kings, the great war and the last war, Bran was ellected king of the six kingdoms by the council of the great lords due to his foresight abilities and experiencies.'),(14,10,3,1,'Rickon Stark',NULL,NULL,0,'m','The younger son of Eddard (Ned) Stark. After his brother Robb went south to wage war against the crown and the rebelling iron men assaulted Winterfell Rickon and his brother Brandon managed to escape to the North. Uppon returning to the seven kingdoms, Rickon was murdered by Ramsey Bolton during the battle of the bastards.'),(15,NULL,NULL,6,'Aemon Targaryen',NULL,NULL,0,'m','Heir to the throne of the seven kingdoms, Aemon Targaryen gave up his rightfull place to his younger brother Aegon V Targaryen. Aemon went to the citadel and becmae a meister. Later he joined the Night\'s Watch as meister of Castle Black. Aemon Targaryen died of old age in Castle Black.'),(16,NULL,NULL,6,'Aegon V Targaryen',NULL,NULL,0,'m','King of the seven kingdoms and father of four children.'),(17,NULL,16,6,'Aerys II Targaryen',NULL,NULL,0,'m','Aerys Targaryen, commonly known as \'the mad king\' was father to Rhaegar, Viserys and Daenerys Targaryen. Aerys married his sister, Rhaella Targaryen. After commiting violent acts against the King\'s Landing people and his son\'s supposed kidnap of Lyanna Stark Aerys found himself trying to contain a rising rebellion lead by Robert Baratheon and Eddard Stark. Afther Rhaegar was killed in battle by Robert, Aerys was betrayed by his hand, Tywin Lannister and latter killed by his own sworn sword, Jaime Lannister.'),(18,NULL,16,6,'Rhaella Targaryen',NULL,NULL,0,'f',''),(19,NULL,16,6,'Duncan Targaryen',NULL,NULL,0,'m',''),(20,NULL,16,6,'Daeron Targaryen',NULL,NULL,0,'m',''),(21,18,17,6,'Rhaegar Targaryen',NULL,NULL,0,'m','The heir to the throne of the seven kingdoms, Rhaegar Targaryen, son of the mad king, was often described as kind and talented. Rhaegar supposedly kidnaped Lyanna Stark which (among other reasons) lead to North to rebel against the crown. Rhaegar was killed in combat by Robert Baratheon. Many years later, documents from the citadel proved that Rhaegar did not kidnaped Lyanna, they were infact in love and ran away together to get married in a secret ceremony in Dorne, from their union Jon Snow (which initialy was to be named Aegon Targaryen) was born.'),(22,18,17,6,'Viserys Targaryen',NULL,NULL,0,'m','After his family was defeated in the Robert rebellion and exiled from Westeros, Viserys and his younger sister Daenerys ran away to Essos, where they spent most of their childhood. Years later, plainning to retake the seven kingdoms, Viserys made a deal with a Dothraki tribe, but afther an disagreement the leader of the tribe, Khal Drogo killed Viserys with melted gold.'),(23,18,17,6,'Daenerys Targaryen',NULL,NULL,0,'f','After his family was defeated in the Robert rebellion and exiled from Westeros, Daenerys and his brother Viserys ran away to Essos, where they spent most of their childhood. Afther his brother made a deal with a Dothraki tribe, where the Dothraki would provide Viserys an army in exchange for Daenerys marrying Khal Drogo, the Dothraki leader. During the wedding ceremony, Daenerys is presented with three petrified dragon eggs, however, after Viserys and Drogo die, Daenerys walks into a pyre with the eggs and walks out unburnt and with three baby dragons, granting her the titles \'the unburnt\' and \'mother of dragons\'. Daenerys then traces her way around Essos liberating slaves, promoting peace and freedom and at some point she becames Queen of the city of Mereen. When she decides to sail back to Westeros, now with three fully grown dragons, Daenerys meets Jon Snow whom tells her about the long night and asks her for help. Daenerys then wages war against the White Walkers, this war, called \'the great war\' costs her two of her dragons and a great percentage of her men. Daenerys then aknowledges that Jon is actually a Targaryen and by the laws of Westeros has a better claim to the throne than  she does, this creates conflicts between them. After a series of questionable choices that lead many to associate Daenerys with her father, the mad king, she slaughters King\'s Landing in the last battle of the last war. At this point, her council is greatly divided between supporting and confronting her. Daenerys meets her end one day after the final battle of the last war in the hands of her nephew Jon Snow.'),(24,5,21,1,'Jon Snow',NULL,NULL,1,'m','Jon Snow was raised as a bastard son of Eddard (Ned) Stark. After the end of the Robert\'s rebellion, Ned came back home to Winterfell with a baby in his arms whom he called \'Jon\'. At age of 14, Jon decided to serve the Night\'s Watch beside his uncle Benjen Stark. During a patrol beyond the wall, Jon is captured by wildlings and forced to kill the Eastwatch By-the-sea\'s lord commander Korin Half-hand to infiltrate the wildling band to spy on them. After returning to Castle Black, Jon was seen by many as a traitor of the watch. After the attack of the wildlings on the wall, Jon is choosen as successor to Jeor Mormont as lord commander of Castle Black. However, aknowledging the threat of the white walkers beyond the wall, Jon chooses to let the free folks to go south of the wall to seek refuge, which is seen by many as a treacherous and unforgivable act. This situation led to a rebellion where Jon is betrayed and killed by his own men. Jon is then ressurected by Melisandre of Asshai with the power of R\'hllor. Jon had then completed his vows of serving the Night\'s Watch until his death and decides to march south with his sister Sansa to take back his family\'s castle Winterfell from Ramsey Bolton. With the combined force of the free folks, some northerners men, the remaining Stannis Baratheon\'s men and the knights of the vale, Jon Snow wins the battle of the bastards and became lord of Winterfell to later be named king in the north by the northerners lords. Aware of the army of the dead marching south, Jon travels to Dragonstone to meet Daenerys Targaryen and asks for her help to fight the war which she agrees to do. Returning to Winterfell, Jon learns about his true lineage as son of Rhaegar Targaryen and Lyanna Stark and that he is therefore the rightfull heir to the throne. After Daenerys slaughters King\'s Landing in an act o cruelty, Jon sees himself forced to stop her tirany and kills her at the throne room in King\'s Landing. For murdering the queen, some demanded Jon\'s execution but the Starks interveined in his favor and managed to send him to the Night\'s Watch where he would live again the rest of his days.'),(25,NULL,NULL,5,'Tytos Lannister',NULL,NULL,0,'m',''),(26,NULL,25,5,'Tywin Lannister',NULL,NULL,0,'m','Lord of Casterly Rock and father of three children, Tywin Lannister was the hand of the king Aerys II Targaryen. During the rebellion, Tywin realizes that Aerys would loose the war and changes sides betraying his king and attacking King\'s Landing from inside the gates. Tywin is once again named hand of the king when his grandson Joffrey is crowned king and continues as hand in his second grandson, Tommem is crowned following his brother\'s death. Tywin is killed in his room by his son Tyrion Lannister with a crossbow.'),(27,NULL,NULL,5,'Joanna Lannister',NULL,NULL,0,'f',''),(28,NULL,25,5,'Kevan Lannister',NULL,NULL,0,'m',''),(29,27,26,5,'Cersei Lannister',NULL,NULL,0,'f',''),(30,27,26,5,'Jaime Lannister',NULL,NULL,0,'m',''),(31,27,26,5,'Tyrion Lannister',NULL,NULL,1,'m',''),(32,NULL,28,5,'Lancel Lannister',NULL,NULL,0,'m',''),(33,29,30,5,'Joffrey Lannister',NULL,NULL,0,'m',''),(34,29,30,5,'Myrcela Lannister',NULL,NULL,0,'f',''),(35,29,30,5,'Tommem Lannister',NULL,NULL,0,'m',''),(36,NULL,NULL,7,'Steffon Baratheon',NULL,NULL,0,'m',''),(37,NULL,NULL,7,'Cassana Estermont',NULL,NULL,0,'f',''),(38,37,36,7,'Robert Baratheon',NULL,NULL,0,'m',''),(39,37,36,7,'Stannis Baratheon',NULL,NULL,0,'m',''),(40,37,36,7,'Renly Baratheon',NULL,NULL,0,'m',''),(41,NULL,38,8,'Gendry Baratheon',NULL,NULL,1,'m',''),(42,NULL,NULL,6,'Ryman Florent',NULL,NULL,0,'m',''),(43,NULL,42,6,'Selyse Baratheon',NULL,NULL,0,'f',''),(44,43,39,7,'Shireen Baratheon',NULL,NULL,0,'f',''),(45,NULL,NULL,6,'Luthor Tyrell',NULL,NULL,0,'m',''),(46,NULL,NULL,6,'Olenna Redwyne',NULL,NULL,0,'f',''),(47,46,45,6,'Mace Tyrell',NULL,NULL,0,'m',''),(48,NULL,NULL,6,'Alerie Hightower',NULL,NULL,0,'f',''),(49,48,47,6,'Margaery Tyrell',NULL,NULL,0,'f',''),(50,48,47,6,'Loras Tyrell',NULL,NULL,0,'m',''),(51,NULL,NULL,3,'Walder Frey',NULL,NULL,0,'m',''),(52,NULL,51,3,'Stevron Frey',NULL,NULL,0,'m',''),(53,NULL,52,3,'Rayman Frey',NULL,NULL,0,'m',''),(54,NULL,53,3,'Edwyn Frey',NULL,NULL,0,'m',''),(55,NULL,54,3,'Walda Frey',NULL,NULL,0,'f',''),(56,NULL,NULL,1,'Roose Bolton',NULL,NULL,0,'m',''),(57,NULL,56,1,'Ramsey Bolton',NULL,NULL,0,'m',''),(58,7,6,3,'Brynden Tully',NULL,NULL,1,'m',''),(59,9,8,3,'Lysa Tully',NULL,NULL,0,'f',''),(60,9,8,3,'Edmure Tully',NULL,NULL,1,'m',''),(61,NULL,NULL,3,'Roslin Frey',NULL,NULL,1,'f',''),(62,NULL,NULL,4,'Jasper Arryn',NULL,NULL,0,'m',''),(63,NULL,62,4,'Jon Arryn',NULL,NULL,0,'m',''),(64,NULL,62,4,'Alys Arryn',NULL,NULL,0,'f',''),(65,NULL,62,4,'Ronnel Arryn',NULL,NULL,0,'m',''),(66,59,63,4,'Robin Arryn',NULL,NULL,1,'m',''),(67,NULL,NULL,5,'Gregor Clegane',NULL,NULL,0,'m',''),(68,NULL,NULL,5,'Sandor Clegane',NULL,NULL,0,'m',''),(69,NULL,NULL,2,'Balon Greyjoy',NULL,NULL,0,'m',''),(70,NULL,NULL,2,'Euron Greyjoy',NULL,NULL,0,'m',''),(71,NULL,NULL,2,'Aeron Greyjoy',NULL,NULL,0,'m',''),(72,NULL,NULL,2,'Alannys Harlaw',NULL,NULL,1,'f',''),(73,72,69,2,'Rodrick Greyjoy',NULL,NULL,0,'m',''),(74,72,69,2,'Maron Greyjoy',NULL,NULL,0,'m',''),(75,72,69,2,'Theon Greyjoy',NULL,NULL,0,'m',''),(76,72,69,2,'Yara Greyjoy',NULL,NULL,1,'f',''),(77,NULL,NULL,1,'Jeor Mormont',NULL,NULL,0,'m','The lord commander of the Night\'s Watch, Jeor Mormont is betrayed and killed by his own men during a patrol beyond the wall.'),(78,NULL,77,1,'Jorah Mormont',NULL,NULL,0,'m','The lord of Mormont Keep and the Bear Island, SerJorah Mormont was sentenced to death for trading slaves but he fled Westeros and seek life as a mercenary on the free cities of Essos eventually entering service of Daenerys Targaryen. At first he trades info about the young Targaryen with the Westeros crown for a royal pardon, but he soon regrets his decision and chooses to remain loyal to Daenerys. When Daenerys learns about his role as a royal spy, she expels him of her service and exiles him from Mereen, a city that she currently rules in Essos. However, after a series of events, Jorah brings Tyrion Lannister as a gift for Daenerys and saves her life in an attack of the sons of the Harpy. Daenerys forgives him for his treason but then learns that he is infected with a mortal desease called greyscale. She commands Jorah to find a cure and return to her service, he then sails to the citadel in Westeros to seek for help from the meisters where he is cured by Samwell Tarly. He returns to serve Daenerys service and dies protecting her during the great war.'),(79,NULL,NULL,1,'Maege Mormont',NULL,NULL,0,'f',''),(80,79,NULL,1,'Lyanna Mormont',NULL,NULL,0,'f','Lyanna Mormont was made lady of Mormont Keep in a very young age. The relentless lady was killed by a walker giant during the great war against the White Walkers.'),(81,NULL,NULL,6,'Lynesse Hightower',NULL,NULL,0,'f',''),(82,NULL,NULL,6,'Randyll Tarly',NULL,NULL,0,'m','Lord of Horn Hill and father of three children, Randyll Tarly was executed by Daenerys Targaryen when he refused to bend the knee after the Lannister army ir caught by surprise when returning to King\'s Landing after the assault of Highgarden.'),(83,NULL,NULL,6,'Melessa Tarly',NULL,NULL,1,'f',''),(84,83,82,6,'Samwell Tarly',NULL,NULL,1,'m','The elder son of Randyll Tarly and heir of Horn Hill, Samwell (Sam) Tarly was sent to the Night\'s Watch at his young age. After serving a few years and following the death of Aemon Targaryen, Sam is sent to the citadel to become a meister and then return to Castle Black to take the place left by meister Aemon. However, Sam breaks both his Night\'s Watch and meister vows when she decides to abbandon the citadel and head to Winterfell to fight the White Walkers besides Jon Snow and the other men. Afther the war is won, and at the end of the last war, king Brandon forgives him for his broken vows and makes him the grand meister of King\'s Landing.'),(85,83,82,6,'Talla Tarly',NULL,NULL,1,'f',''),(86,83,82,6,'Dickon Tarly',NULL,NULL,0,'m',''),(87,NULL,NULL,9,'Lewyn Martell',NULL,NULL,0,'m',''),(88,NULL,87,9,'Doran Martell',NULL,NULL,0,'m',''),(89,NULL,87,9,'Elia Martell',NULL,NULL,0,'f','Wife of the prince Rhaegar, and thus, princess of the seven kingdoms, Elia Martell was murdered by Gregor Clegane at the end of Robert\'s rebellion.'),(90,NULL,87,9,'Oberyn Martell',NULL,NULL,0,'m','Oberyn was the brother of the prince of Dorne, Doran Martell and the princess of the seven kingdoms, Elia Martell. After the murder of his sister and nephews, Oberyn and his bastard daughters spent years plaining their vengeance against Gregor Clegane, Tywin Lannister and Robert Baratheon. When Tyrion Lannister is charged for the murder of King Joffrey and demmand a trial by combat, Oberyn learns that the court\'s champion would be Gregor Clegane and sees this as an opportunity to have his vengeance by lawfull means. Oberyn is killed in combat with Gregor, but his poisoned spear ends up killing Gregor all together.'),(91,NULL,88,9,'Trystane Martell',NULL,NULL,0,'m',''),(92,89,21,9,'Rhaenys Targaryen',NULL,NULL,0,'f','Rhaenys was the baby daughter of Rhaegar Targaryen and Elia Martell. She was murderd by Gregor Clegane under the orders of Lord Tywin Lannister atthe end of Robert\'s rebellion.'),(93,89,21,9,'Aegon Targaryen',NULL,NULL,0,'m','Aegon was the the baby son of Rhaegar Targaryen and Elia Martell and the heir to the iron throne after his father. He was murderd by Gregor Clegane under the orders of Lord Tywin Lannister atthe end of Robert\'s rebellion.'),(94,NULL,NULL,9,'Ellaria Sand',NULL,NULL,0,'f',''),(95,94,90,9,'Obara Sand',NULL,NULL,0,'f',''),(96,94,90,9,'Nymeria Sand',NULL,NULL,0,'f',''),(97,94,90,9,'Tyene Sand',NULL,NULL,0,'f',''),(98,NULL,NULL,8,'Joe Jonas',NULL,NULL,1,'m','');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,3,'North','Cold and harsh in winter and frequently it will snow in summer',1367942),(2,1,'Iron Islands','Oceanic climate with mild summers and mild winters and a relatively narrow annual temperature range and few extremes of temperature',NULL),(3,1,'Riverlands','Humid continental climate with large seasonal temperature differences',NULL),(4,1,'The Vale','Subartic climate with long, usually very cold winters, and short, cool to mild summers',NULL),(5,1,'Westerlands','Warm-summer mediterranean climate, warm (but not hot) and dry summers, with no average monthly temperatures above 22 °C during its warmest month and an average in the coldest month between 18 and -3 °C',NULL),(6,1,'The reach','Hot-summer mediterranean climate, monthly temperatures in excess of 22 °C during its warmest month and an average in the coldest month between 18 and -3 °C or, in some applications, between 18 and 0 °C',NULL),(7,1,'Stormlands','Humid subtropical climate, hot and humid summers, and cool to mild winters',NULL),(8,1,'Crownlands','Humid continental climate with large seasonal temperature differences',NULL),(9,1,'Dorne','Hot desert climate, hot, sunny and dry year-round',NULL),(10,2,'Beyond the Wall','Ice cap polar climate where no mean monthly temperature exceeds 0 °C',NULL),(11,3,'The Gift','Cold and harsh in winter and frequently it will snow in summer',NULL);
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reigns`
--

LOCK TABLES `reigns` WRITE;
/*!40000 ALTER TABLE `reigns` DISABLE KEYS */;
INSERT INTO `reigns` VALUES (1,1,1,NULL,NULL,0),(2,2,1,NULL,NULL,0),(3,3,1,NULL,NULL,0),(4,4,3,NULL,NULL,0),(5,5,3,NULL,NULL,1),(6,6,1,NULL,NULL,0),(7,7,1,NULL,NULL,0),(8,8,3,NULL,NULL,0),(9,9,1,NULL,NULL,0),(10,10,1,NULL,NULL,0),(11,11,1,NULL,NULL,0),(12,12,1,NULL,NULL,1);
/*!40000 ALTER TABLE `reigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `small_lords`
--

LOCK TABLES `small_lords` WRITE;
/*!40000 ALTER TABLE `small_lords` DISABLE KEYS */;
INSERT INTO `small_lords` VALUES (1,25,26),(2,27,4),(3,31,7),(4,40,5),(5,41,32);
/*!40000 ALTER TABLE `small_lords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `wardens`
--

LOCK TABLES `wardens` WRITE;
/*!40000 ALTER TABLE `wardens` DISABLE KEYS */;
INSERT INTO `wardens` VALUES (1,1,NULL,NULL,0),(2,1,NULL,NULL,0),(3,1,NULL,NULL,0),(4,1,NULL,NULL,0),(4,8,NULL,NULL,1),(5,1,NULL,NULL,1),(6,3,NULL,NULL,0),(7,3,NULL,NULL,0),(8,3,NULL,NULL,0),(9,3,NULL,NULL,1),(10,8,NULL,NULL,0),(11,8,NULL,NULL,0),(12,8,NULL,NULL,0),(13,8,NULL,NULL,0),(14,8,NULL,NULL,0),(16,5,NULL,NULL,0),(17,5,NULL,NULL,0),(19,5,NULL,NULL,0),(20,5,NULL,NULL,1),(21,7,NULL,NULL,0),(22,7,NULL,NULL,0),(23,7,NULL,NULL,0),(24,7,NULL,NULL,1),(25,6,NULL,NULL,0),(26,6,NULL,NULL,0),(27,1,NULL,NULL,0),(28,1,NULL,NULL,0),(29,4,NULL,NULL,0),(30,4,NULL,NULL,0),(31,4,NULL,NULL,0),(32,1,NULL,NULL,0),(32,11,NULL,NULL,1),(33,7,NULL,NULL,0),(33,8,NULL,NULL,0),(34,8,NULL,NULL,0),(35,8,NULL,NULL,0),(36,9,NULL,NULL,0),(37,9,NULL,NULL,0),(38,2,NULL,NULL,0),(39,2,NULL,NULL,1),(40,2,NULL,NULL,0),(41,6,NULL,NULL,0),(42,8,NULL,NULL,0),(43,8,NULL,NULL,0),(44,11,NULL,NULL,0);
/*!40000 ALTER TABLE `wardens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22  7:33:17
