-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mc
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `mccourses`
--

DROP TABLE IF EXISTS `mccourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mccourses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `term` varchar(20) DEFAULT NULL,
  `instructor` varchar(50) DEFAULT NULL,
  `course_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mccourses`
--

LOCK TABLES `mccourses` WRITE;
/*!40000 ALTER TABLE `mccourses` DISABLE KEYS */;
INSERT INTO `mccourses` VALUES (1,'English 307: 18th Century British Literature','Fall','Richardson',2019),(2,'Spanish 101: Hablamos Espanol','Fall','Bonita',2019),(3,'English 101: Expository Writing','Fall','Willow',2019),(4,'Biology 101: Introduction to Biology','Fall','Pulmon',2019),(5,'Economics 102: Microeconomics','Fall','Iso',2019),(6,'History 275: History of the Polar Regions','Fall','Ursus',2019),(7,'English 222: Modern Novel','Fall','Dudgeon',2019),(8,'Economics 101: Macroeconomics','Fall','Laffer',2019),(9,'Math 235: Statistics','Fall','Factor',2019),(10,'Math 131: Pre-Calculus','Fall','Euler',2019),(11,'History 249: The California Gold Rush','Fall','Miller',2019),(12,'Sociology 249: The California Gold Rush','Fall','Miller',2019),(13,'French 101: Bon Jour!','Fall','Alouette',2019),(14,'Computer Science 302: Jump Into Java','Fall','Bean',2019),(15,'Engineering 288: Intro to Electrical Engineering','Fall','Spark',2019);
/*!40000 ALTER TABLE `mccourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mccourses_mcdepartments`
--

DROP TABLE IF EXISTS `mccourses_mcdepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mccourses_mcdepartments` (
  `course_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mccourses_mcdepartments`
--

LOCK TABLES `mccourses_mcdepartments` WRITE;
/*!40000 ALTER TABLE `mccourses_mcdepartments` DISABLE KEYS */;
INSERT INTO `mccourses_mcdepartments` VALUES (1,1),(2,2),(3,1),(4,4),(5,5),(6,6),(7,1),(8,5),(9,7),(10,7),(11,6),(12,8),(13,9),(14,11),(15,10);
/*!40000 ALTER TABLE `mccourses_mcdepartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcdepartments`
--

DROP TABLE IF EXISTS `mcdepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcdepartments` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) DEFAULT NULL,
  `department_head` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcdepartments`
--

LOCK TABLES `mcdepartments` WRITE;
/*!40000 ALTER TABLE `mcdepartments` DISABLE KEYS */;
INSERT INTO `mcdepartments` VALUES (1,'English','Austen'),(2,'Spanish','Lopez'),(4,'Biology','Vanderwaals'),(5,'Economics','Hayek'),(6,'History','Lincoln'),(7,'Math','Koenig'),(8,'Sociology','Wicks'),(9,'French','Abravanel'),(10,'Engineering','Goethals'),(11,'Computer Science','Coffee');
/*!40000 ALTER TABLE `mcdepartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcmajors`
--

DROP TABLE IF EXISTS `mcmajors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcmajors` (
  `major_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_name` varchar(50) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcmajors`
--

LOCK TABLES `mcmajors` WRITE;
/*!40000 ALTER TABLE `mcmajors` DISABLE KEYS */;
INSERT INTO `mcmajors` VALUES (1,'English',1),(2,'Spanish',2),(3,'Biology',4),(4,'Economic Theory and Structure',5),(5,'Finance',5),(6,'History',6),(7,'Math',7),(8,'Applied Math',7),(9,'Sociology',8),(10,'French',9),(11,'Mechanical and Aerospace Engineering',10),(12,'Civil and Electrical Engineering',10),(13,'Chemical and Geoscience Engineering',10),(14,'Web Development',11),(15,'Data Science',11),(16,'General Computer Science',11);
/*!40000 ALTER TABLE `mcmajors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcstudents`
--

DROP TABLE IF EXISTS `mcstudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcstudents` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcstudents`
--

LOCK TABLES `mcstudents` WRITE;
/*!40000 ALTER TABLE `mcstudents` DISABLE KEYS */;
INSERT INTO `mcstudents` VALUES (1,'Cynthia','Ratliff','1448 Lorem Avenue','Toledo','PA','340339','594-0126',1),(2,'Clementine','Newton','P.O. Box 229, 5185 Pharetra Ave','Grand-Halleux','VA','4727','1-295-536-7712',2),(3,'Nomlanga','Franklin','800-4778 At, Rd.','Langford','PA','95597','634-9805',3),(4,'Quail','Suarez','P.O. Box 646, 6796 Enim, Avenue','Kawartha Lakes','DC','1379','1-324-230-0394',4),(5,'Autumn','Callahan','9469 Imperdiet St.','Pievepelago','DC','553895','1-695-113-6437',5),(6,'Maggy','Carey','201-8035 Lectus St.','Cour-sur-Heure','DC','31403','601-3398',6),(7,'Graham','Greer','P.O. Box 192, 2412 Suspendisse Road','Tacoma','PA','3914','493-6221',7),(8,'Eden','Dejesus','647-2577 Penatibus Rd.','Murdochville','DC','23189','1-497-429-7205',8),(9,'Drew','Munoz','640-9497 Lorem. St.','Saint-Pierre','WV','41997','475-7504',9),(10,'Tamekah','Lopez','Ap #744-653 Nunc St.','Fort Smith','NC','02067','191-3683',10),(11,'August','Stein','Ap #602-7083 Est Rd.','Warszawa','NC','84773','968-4170',11),(12,'Maggy','Durham','P.O. Box 803, 9039 Lacus. Avenue','Champigny-sur-Marne','NC','116788','1-785-871-2921',12),(13,'Willa','Walker','Ap #539-8112 Vulputate Av.','Eisenhüttenstadt','NC','9871','1-453-625-2984',13),(14,'Maia','Hodges','P.O. Box 358, 2232 Mi. St.','Gander','VA','40119','1-596-884-5604',14),(15,'Madeson','Hood','Ap #428-8645 Amet, Av.','Campitello di Fassa','OH','60817','1-704-529-3214',15),(16,'Jessica','Page','819-5295 Lectus, St.','Lamont','OH','89685','1-628-167-3876',16),(17,'Gail','Cervantes','450-4570 Quis, Rd.','Cuceglio','WV','3601','1-654-429-9257',1),(18,'Ifeoma','Sweet','6761 Proin Rd.','Haasdonk','MD','32278','1-535-382-9295',2),(19,'Jessamine','Faulkner','8180 Cras Rd.','Montecarotto','MD','89252','600-7927',3),(20,'Leslie','Delgado','6238 Magna Rd.','Carmen','VA','2172XV','922-5463',4),(21,'Matthew','Holder','8408 Volutpat Avenue','Groot-Bijgaarden','PA','7709','415-0788',5),(22,'Basia','Bishop','3635 Congue. Av.','Oldenburg','PA','432456','1-164-697-4051',6),(23,'Ivan','Shaw','Ap #785-1481 Semper Road','Macklin','MD','04-816','903-0165',7),(24,'Unity','Crane','5770 Facilisis Street','Wolkrange','DC','20902','732-7342',8),(25,'Dennis','Reed','825-8999 Elit Av.','Conchalí','DC','66171','1-922-739-7205',9),(26,'Gloria','Levy','Ap #720-7055 At St.','Pencahue','OH','1651','897-4768',10),(27,'Neville','Landry','696-4642 Suspendisse Av.','Te Puke','VA','957996','1-301-998-3596',11),(28,'Michelle','Head','Ap #622-872 Quisque Rd.','Beaumont','OH','1397','1-470-381-3688',12),(29,'Jayme','Hale','654-5124 Nec, Road','Wernigerode','OH','988747','1-698-677-8649',13),(30,'Daniel','Lawson','P.O. Box 360, 541 Dui. Rd.','Fort Wayne','VA','9522','1-774-513-8566',14),(31,'Dahlia','Horn','P.O. Box 935, 9642 Lorem Rd.','Sant\'Onofrio','PA','96555','1-550-559-2533',15),(32,'Benjamin','Strong','Ap #446-7956 Lacinia. Road','Aylmer','NC','945928','1-917-261-2903',16),(33,'Liberty','Powers','P.O. Box 346, 621 Lacus. Road','Lerum','DC','53-214','412-7839',1),(34,'Brielle','Walters','P.O. Box 476, 926 Eleifend St.','Cap-de-la-Madeleine','DC','492550','745-2890',4),(35,'Lewis','Gates','P.O. Box 164, 8784 Mauris Ave','Bellante','DC','5782','1-273-570-0379',6),(36,'Kaseem','Valenzuela','5425 Purus. Road','Northumberland','PA','37437','653-4084',8),(37,'Moses','Garcia','8202 Eu, Street','Harlech','WV','231110','221-8506',9),(38,'Chantale','Shaw','Ap #651-3654 Risus. St.','La Ligua','VA','44939','253-4164',11),(39,'Avram','Joyce','Ap #506-6383 Interdum. Av.','Freux','OH','37090','187-3578',12),(40,'Skyler','Watts','705-6457 Lorem Av.','Oud-Turnhout','NC','886649','390-8772',13),(41,'Hilda','Durham','Ap #106-5441 Et Ave','Columbia','NC','S9S 1K3','1-681-362-1610',14),(42,'Iona','Sykes','3689 Sagittis St.','Rocca di Cambio','OH','3784','124-7285',14),(43,'Reed','Holloway','P.O. Box 665, 3670 Viverra. Ave','Huesca','MD','I95 2LK','758-1161',NULL),(44,'Matthew','Tillman','Ap #198-4710 Justo. Av.','Dingwall','MD','38471','1-974-844-1776',NULL),(45,'Amos','Pruitt','328-6008 Amet St.','Alsemberg','PA','97554','751-6592',NULL),(46,'Hyatt','Sellers','P.O. Box 218, 1709 Cum Av.','Sant\'Angelo Limosano','NC','57637','1-411-904-3721',NULL),(47,'Garth','Olson','148-7162 Enim. St.','Roux-Miroir','VA','72880','1-462-284-4926',NULL),(48,'Stone','Vinson','534 Nec Avenue','Lo Prado','MD','5500','929-8099',NULL),(49,'Shelly','Mccall','P.O. Box 906, 5785 Enim, Ave','Caxias','MD','86-033','165-2066',NULL),(50,'Kermit','Everett','P.O. Box 186, 2978 Nullam Rd.','North Battleford','DC','31322','922-5022',NULL),(51,'Larissa','Atkinson','Ap #115-360 Libero. Ave','Parbhani','NC','691593','858-9888',NULL),(52,'Jameson','Morgan','Ap #759-1381 At, Rd.','Villafranca Tirrena','OH','8509','1-143-549-4816',NULL),(53,'Karina','Watson','P.O. Box 110, 8062 Eget Street','Raurkela Civil Township','PA','10215','679-2075',NULL),(54,'Alika','Garcia','Ap #563-1679 Curabitur Avenue','Canela','VA','69909','424-6537',NULL),(55,'Idola','Spears','948-5491 Velit. Street','Sylvan Lake','DC','73-401','224-9554',NULL),(56,'Herman','Rios','P.O. Box 415, 4969 Quam. Street','Lancaster','MD','UB56 5GP','1-229-464-4269',NULL),(57,'Noelle','Glass','Ap #620-2433 Tincidunt Ave','Carstairs','DC','371311','138-7629',NULL),(58,'Alexa','Chavez','P.O. Box 366, 7785 Lobortis Avenue','Townsville','NC','24328','277-6522',1),(59,'Catherine','Rice','P.O. Box 622, 557 Fermentum Street','Bolsward','WV','68-661','163-1137',NULL),(60,'Elijah','Davis','955-3962 Mollis Rd.','LaSalle','WV','73270','1-667-468-9818',NULL),(61,'Lacy','Blanchard','P.O. Box 716, 9463 Hymenaeos. Rd.','Ahmadnagar','WV','070840','311-7124',NULL),(62,'Josephine','Levy','Ap #675-2742 Semper Rd.','Körfez','WV','120907','189-7818',NULL),(63,'Cailin','Meyers','519-3124 Phasellus Ave','Baisy-Thy','WV','49-951','1-697-937-4406',NULL),(64,'Curran','Spence','947-6023 Eget Avenue','Macquenoise','VA','0022FA','322-9132',NULL),(65,'Morgan','Boone','6147 Sit Avenue','Nieuwenrode','DC','9000','543-6617',NULL),(66,'Hadassah','Grant','P.O. Box 226, 4798 Rhoncus. St.','Augusta','MD','5898','298-3838',NULL),(67,'Ashely','Pate','P.O. Box 453, 5461 Libero Road','Pittsburgh','MD','1816','1-507-823-2153',NULL),(68,'Thaddeus','Watts','952-3996 Et Rd.','Oss','MD','C5C 0S6','461-1530',NULL),(69,'Pamela','Price','P.O. Box 189, 3036 Et, Street','Lota','VA','9003','1-973-672-2275',NULL),(70,'Daryl','Russo','P.O. Box 772, 3203 Erat Av.','Pimpri-Chinchwad','VA','81-540','1-805-426-8814',NULL),(71,'Abra','Knowles','239-771 Ligula St.','Ottignies','MD','26-538','1-710-624-5096',NULL),(72,'Darrel','Farley','818-7822 Nec Rd.','Baltimore','DC','74799','1-314-210-5289',NULL),(73,'Jillian','Parker','731-5094 Donec Road','Warburg','DC','1102JS','1-981-982-7174',NULL),(74,'Dawn','Nichols','5443 Dapibus Avenue','Chiusanico','VA','24430','1-468-914-8846',NULL),(75,'Graiden','Morris','1749 Orci, Ave','Porbandar','VA','44303','1-849-785-7553',11),(76,'Ferdinand','Grimes','P.O. Box 197, 6425 Quisque Ave','Callander','VA','943319','1-141-492-5307',NULL),(77,'Yasir','Nicholson','731 Euismod Road','Casnate con Bernate','DC','8437','1-796-602-5425',NULL),(78,'Octavia','Conrad','Ap #117-7416 Semper Street','Hunstanton','OH','55081','1-634-432-4911',NULL),(79,'Myra','Hall','P.O. Box 492, 8381 Nec Rd.','Beauvais','MD','3475','1-817-228-3681',7),(80,'Breanna','Sharp','143-6116 Tincidunt, St.','Fiuminata','NC','580743','1-776-891-1083',NULL),(81,'Hiram','Wade','8091 Ante Rd.','Lillois-WitterzŽe','MD','19834','561-9367',NULL),(82,'Bevis','Ramos','1932 Elit, Road','Châtellerault','WV','4342','1-959-344-3965',NULL),(83,'Elijah','Carey','1302 Ipsum St.','Castello dell\'Acqua','OH','34329','1-218-804-6824',NULL),(84,'Miriam','Sheppard','Ap #673-1634 Amet, Road','Stintino','WV','597539','1-622-105-1847',NULL),(85,'Xerxes','Coffey','P.O. Box 124, 928 Sem Street','Bundaberg','PA','14043','420-6303',12),(86,'Ashton','Gamble','298-7964 Lectus St.','Damme','MD','4904','1-915-288-6854',NULL),(87,'Clayton','Palmer','P.O. Box 499, 5584 Vel, Ave','Riesa','PA','65669','1-177-550-5964',NULL),(88,'Fay','Shaffer','P.O. Box 489, 3758 Donec Rd.','Newark','PA','99338-677','1-589-362-8259',NULL),(89,'Clementine','Ayers','P.O. Box 468, 4137 Sapien Avenue','Covington','MD','25788','1-177-723-5801',NULL),(90,'Julian','Raymond','Ap #475-7229 A Ave','Keith','MD','93738','1-203-956-7685',NULL),(91,'April','Ware','7015 Urna. Av.','Villa Agnedo','NC','60300','320-0344',NULL),(92,'Freya','Adkins','P.O. Box 343, 5128 Semper Avenue','Weyburn','OH','IL9S 5LY','1-962-253-7080',NULL),(93,'Yvette','Fischer','P.O. Box 655, 1144 Mi St.','İslahiye','PA','64337','368-7310',NULL),(94,'Gay','Charles','Ap #117-3707 Gravida St.','D�gelis','PA','333021','1-515-178-4484',NULL),(95,'Fallon','Navarro','Ap #884-273 Ligula. Street','Tracadie-Shelia','MD','602651','1-232-752-5128',NULL),(96,'Timothy','Best','P.O. Box 226, 5653 Mauris. Ave','Blaenau Ffestiniog','WV','21997','1-480-843-0020',NULL),(97,'Lilah','Mcguire','4237 Montes, Road','Cognelee','MD','FW80 5ZN','546-3921',NULL),(98,'Odessa','Mcleod','P.O. Box 801, 2938 Nunc Street','Tarbes','OH','74907-279','462-9157',NULL),(99,'Nathan','Maldonado','Ap #600-9757 Ullamcorper, Avenue','Rockville','VA','9023','1-348-182-2810',NULL),(100,'Daria','Hubbard','P.O. Box 491, 3849 Quis Av.','Canmore','DC','9404','1-580-303-6535',NULL);
/*!40000 ALTER TABLE `mcstudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcstudents_mccourses`
--

DROP TABLE IF EXISTS `mcstudents_mccourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcstudents_mccourses` (
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcstudents_mccourses`
--

LOCK TABLES `mcstudents_mccourses` WRITE;
/*!40000 ALTER TABLE `mcstudents_mccourses` DISABLE KEYS */;
INSERT INTO `mcstudents_mccourses` VALUES (4,1),(4,6),(4,12),(4,10),(8,2),(8,4),(8,11),(8,14),(37,3),(37,7),(37,15),(58,4),(58,8),(58,10),(58,13),(75,5),(75,9),(75,15),(75,4),(79,2),(79,7),(79,4),(85,4),(85,6);
/*!40000 ALTER TABLE `mcstudents_mccourses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-09 12:15:48
