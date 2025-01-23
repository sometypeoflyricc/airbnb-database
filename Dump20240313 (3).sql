-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: airbnb_project
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation` (
  `AccommodationID` int NOT NULL AUTO_INCREMENT,
  `HostID` int NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `LocationID` int NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Capacity` int NOT NULL,
  `Rating` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`AccommodationID`),
  KEY `HostID` (`HostID`),
  KEY `LocationID` (`LocationID`),
  CONSTRAINT `accommodation_ibfk_1` FOREIGN KEY (`HostID`) REFERENCES `host` (`HostID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accommodation_ibfk_2` FOREIGN KEY (`LocationID`) REFERENCES `location` (`LocationID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES (1,2,'Rustic Cabin Retreat','Attention nature lovers! If you are craving adventure and outdoor exploration, look no further. My rustic cabin is the perfect basecamp for your wilderness adventures. Surrounded by towering trees and wildlife, you will experience the beauty of nature up close. From hiking trails to starlit nights by the firepit, get ready for an unforgettable outdoor experience!',1,'Cabin',2,4.82),(2,2,'Mountain View Lodge','Escape to the mountains and experience the ultimate alpine getaway at my cozy lodge. Nestled among towering peaks and lush forests, my mountain retreat offers breathtaking views and endless opportunities for outdoor adventure. Whether you are hitting the slopes in winter or hiking through wildflower meadows in summer, you will find beauty and tranquility in every season.',2,'Lodge',4,4.95),(3,5,'Charming Guesthouses','Hola amigos! I am a proud resident of this vibrant neighborhood, and I cannot wait to share its rich culture and heritage with you. My charming guesthouses are a hidden gem, filled with colorful decor and authentic charm. From sipping coffee on the patio to exploring local markets, I will show you the true essence of our community. ¡Bienvenidos a casa!',3,'Guesthouse',2,5.00),(4,5,'Bohemian Loft','Welcome to my bohemian loft, where creativity and comfort collide in a colorful explosion of style. Located in the heart of the arts district, my loft is the perfect retreat for artists, dreamers, and free spirits. From eclectic decor to inspiring views of the city skyline, every corner invites you to unleash your imagination and embrace the vibrant energy of urban living.',4,'Loft',2,4.90),(5,7,'Urban Oasis Apartments','Welcome to my urban oasis! As a seasoned host, I take pride in providing a comfortable and stylish space for travelers seeking a home away from home. Nestled in the heart of the city, my apartments offer modern amenities and breathtaking views. Whether you are here for business or pleasure, I will ensure your stay is nothing short of exceptional.',5,'Apartment',4,4.87),(6,7,'Downtown Penthouse Suite','Indulge in luxury living at my downtown penthouse suite, where style meets sophistication in the heart of the city. From panoramic skyline views to designer furnishings, every detail has been curated to elevate your stay to new heights of elegance. Whether you are entertaining guests in the spacious living area or unwinding in the private jacuzzi, you will experience the pinnacle of urban chic.',6,'Penthouse',2,5.00),(7,10,'Cozy Homes in the City','Hi there! I am a passionate traveler who loves meeting new people and sharing stories. Hosting guests from all over the world is not just a hobby for me; it is a way of life. My cozy homes are always open to fellow adventurers looking to explore the beauty of our city. From local tips to warm hospitality, I will make sure your stay is unforgettable!',7,'House',3,4.82),(8,10,'Sunny Apartment with City Views','Welcome to my sunny apartment with panoramic views of the city skyline! Located in the heart of downtown, my spacious flat offers the perfect blend of modern comfort and urban convenience. Whether you are sipping coffee on the balcony or exploring the vibrant streets below, you will feel right at home in this bustling metropolis.',8,'Apartment',2,4.91),(9,12,'Tranquil Countryside Farmhouse','Escape to tranquility at my countryside retreat! Tucked away from the hustle and bustle, my farmhouse offers peace, serenity, and panoramic views of rolling hills. Whether you are seeking a romantic getaway or a family adventure, you will find solace in nature is embrace. Come unwind, recharge, and create lasting memories in this idyllic setting.',9,'Cottage',1,4.75),(10,16,'Sunny Seaside Villa','Greetings from my sunny seaside villa! As a beach lover and hospitality aficionado, I take pride in offering guests a slice of paradise just steps from the shore. Whether you are lounging by the pool or soaking up the sun on the sand, my beachfront retreat promises relaxation, rejuvenation, and endless ocean views. Pack your swimsuit and leave your worries behind!',10,'Villa',2,4.90),(11,16,'Beach Bungalow Escape','Experience the ultimate beach getaway at my charming bungalow just steps from the shore. Nestled among swaying palms and turquoise waters, my seaside retreat offers the perfect blend of relaxation and adventure. Whether you are surfing the waves or sipping cocktails at sunset, you will find paradise in every moment.',11,'Bungalow',2,4.99),(12,18,'Historic Townhouse in the Old Quarter','Welcome to my historic townhouse in the heart of the Old Quarter! Steeped in charm and character, my homes offer a glimpse into the rich tapestry of past of our city. From cobblestone streets to hidden courtyards, every corner tells a story waiting to be discovered. Let me be your guide as we explore the secrets of this enchanting neighborhood together.',12,'Townhouse',2,4.77),(13,18,'Quaint Courtyard Cottage','Step back in time and discover the charm of old-world living at my quaint courtyard cottage. Tucked away down a cobblestone alley, my historic home offers a peaceful retreat from the bustling streets outside. Whether you are enjoying afternoon tea in the garden or exploring the nearby landmarks, you will experience the timeless beauty of our city.',13,'Cottage',2,4.86),(14,20,'Vibrant Casita in the Pueblo','Hola from my vibrant casita in the heart of the pueblo! As a proud local and cultural ambassador, I am excited to share the rhythms and flavors of our lively community with you. From salsa dancing in the town square to savoring homemade tamales, every moment here is a celebration of life and tradition. Bienvenidos a mi hogar!',14,'Casita',1,4.77),(15,22,'Lakeside Cabin Retreat','Hello from my lakeside cabin in the Great Lakes region! Perched on the shores of one of America largest freshwater lakes, my cozy retreat offers the perfect blend of natural beauty and outdoor adventure. Whether you are fishing off the dock or watching the sunset from the porch swing, you will find peace and tranquility in every moment. Welcome to the lake life!',15,'Cabin',1,4.20),(16,24,'Charming Cottage in the Cotswolds','Greetings from my charming cottage in the Cotswolds! Nestled in the heart of the English countryside, my cozy retreat offers a quintessentially British experience. Whether you are strolling through quaint villages or enjoying a traditional cream tea in the garden, you will find warmth and hospitality around every corner. Welcome to the Cotswolds!',16,'Cottage',1,4.82),(17,26,'Desert Oasis Hacienda','Greetings from my desert oasis in Arizona! Nestled amidst rugged canyons and towering saguaros, my adobe hacienda offers a peaceful retreat in the heart of the Sonoran Desert. Whether you are exploring ancient petroglyphs or stargazing by the fire pit, you will find wonder and adventure in the desert landscape. Come experience the magic of the Southwest!',17,'Hacienda',1,4.70),(18,28,'Coastal Cottage in Sunny California','Welcome to my coastal cottage in sunny California! Perched on the cliffs overlooking the Pacific Ocean, my home offers breathtaking views and endless opportunities for adventure. Whether you are catching waves at the nearby surf break or sipping wine in the garden at sunset, you will find bliss and relaxation in every moment. Come experience the magic of California living!',18,'Cottage',1,4.97),(19,30,'Sprawling Farm in the Midwest','Howdy from my sprawling farm in the Midwest! As a proud farmer and dedicated host, I am excited to share the beauty and bounty of rural America with guests from around the world. From harvesting fresh produce in the fields to gathering around the bonfire under the stars, every moment here is a celebration of simple living and heartfelt hospitality. Welcome to the farm!',19,'Farm',2,4.65),(20,30,'Country Cottage Retreat','Escape to the countryside and experience the charm of rural living at my cozy cottage retreat. Surrounded by rolling fields and blooming wildflowers, my country home offers a peaceful escape from the hustle and bustle of city life. Whether you are roasting marshmallows around the fire pit or exploring the nearby trails, you will find warmth and serenity in every moment.',9,'Cottage',2,4.73),(21,32,'Bavarian Chalet','Herzlich willkommen from my charming Bavarian chalet! Nestled in the foothills of the Alps, my cozy retreat offers the perfect blend of tradition and comfort. Whether you are exploring fairytale castles or sampling hearty Bavarian cuisine, you will experience Gemütlichkeit at its finest. Willkommen in Bayern!',21,'Chalet',1,5.00),(22,34,'Elegant Townhouse in London','Welcome to my elegant townhouse in the heart of London! Situated in one of the city most prestigious neighborhoods, my home offers luxury and sophistication at every turn. From exploring world-class museums to dining at Michelin-starred restaurants, London is a treasure trove of culture and excitement. Make your stay in the capital truly unforgettable!',22,'Townhouse',1,4.99),(23,36,'Historic Castle in Scotland','Hello from my historic castle in Scotland! Steeped in centuries of history and surrounded by breathtaking landscapes, my majestic estate offers a truly regal experience. Whether you are exploring ancient ruins or sampling single malt whiskies in the drawing room, you will feel like royalty during your stay. Come and experience the magic of Scotland castles!',23,'Castle',1,5.00),(24,37,'Picturesque Farmhouse Retreat','Howdy from my picturesque farmhouse in the Lake District! Surrounded by rolling hills and sparkling lakes, my rustic retreat offers a peaceful escape from the hustle and bustle of modern life. Whether you are exploring quaint villages or hiking through the fells, you will find solace and serenity inthe beauty of the Lake District. Make memories in the countryside!',24,'Farmhouse',1,4.56),(25,38,'Island Oasis in Hawaii','Aloha from my island oasis in Hawaii! Set amidst lush tropical gardens and swaying palms, my Hawaiian hideaway offers the perfect blend of luxury and tranquility. From snorkeling in crystal-clear waters to savoring farm-to-table cuisine, every moment here is a celebration of island life. Come experience the beauty and spirit of aloha in paradise!',25,'Resort',2,5.00),(26,38,'Beachfront Bungalow Retreat','Escape to paradise at my beachfront bungalow retreat, where white sand beaches and turquoise waters await. Whether you are snorkeling with sea turtles or lounging in a hammock beneath swaying palms, you will find serenity and relaxation in every moment. Welcome to your private slice of paradise!',26,'Bungalow',2,4.98),(27,39,'Beachfront Villa on the Gold Coast','Hey from my beachfront villa on the Gold Coast! Welcome to paradise, where the sun always shines, and the surf is never far away. Whether you are catching waves at Surfers Paradise or exploring the lush hinterland, you will experience the best of Queensland coastal lifestyle right here. Welcome to the Gold Coast!',27,'Villa',1,4.89),(28,40,'Charming Victorian Home in San Francisco','Welcome to my charming Victorian home in San Francisco! Nestled in the heart of the city, my historic house offers a blend of old-world charm and modern amenities. With iconic landmarks like the Golden Gate Bridge and Alcatraz Island just a short drive away, you will experience the best of San Francisco vibrant culture and stunning views. Welcome to the City by the Bay!',28,'House',1,4.76),(29,41,'Cozy Apartment in Barcelona','Hello from my cozy apartment in the heart of Barcelona! Situated in the lively neighborhood of El Born, my flat combines the city historic charm with modern comforts. With iconic landmarks like the Sagrada Familia, Park Güell, and Las Ramblas within walking distance, you will immerse yourself in Barcelona vibrant cultural life. Welcome to Catalonia!',29,'Apartment',1,4.83);
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodationamenity`
--

DROP TABLE IF EXISTS `accommodationamenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodationamenity` (
  `AccommodationAmenityID` int NOT NULL AUTO_INCREMENT,
  `AccommodationID` int NOT NULL,
  `AmenityID` int NOT NULL,
  PRIMARY KEY (`AccommodationAmenityID`),
  KEY `AccommodationID` (`AccommodationID`),
  KEY `AmenityID` (`AmenityID`),
  CONSTRAINT `accommodationamenity_ibfk_1` FOREIGN KEY (`AccommodationID`) REFERENCES `accommodation` (`AccommodationID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accommodationamenity_ibfk_2` FOREIGN KEY (`AmenityID`) REFERENCES `amenity` (`AmenityID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodationamenity`
--

LOCK TABLES `accommodationamenity` WRITE;
/*!40000 ALTER TABLE `accommodationamenity` DISABLE KEYS */;
INSERT INTO `accommodationamenity` VALUES (1,2,1),(2,2,5),(3,2,6),(4,2,7),(5,2,8),(6,2,9),(7,2,11),(8,2,12),(9,2,13),(10,3,2),(11,3,8),(12,3,13),(13,3,15),(14,4,2),(15,4,3),(16,4,5),(17,4,6),(18,4,7),(19,4,8),(20,5,21),(21,5,20),(22,5,8),(23,5,9),(24,6,2),(25,6,3),(26,6,4),(27,6,9);
/*!40000 ALTER TABLE `accommodationamenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodationpreference`
--

DROP TABLE IF EXISTS `accommodationpreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodationpreference` (
  `AccommodationPreferenceID` int NOT NULL AUTO_INCREMENT,
  `AccommodationID` int NOT NULL,
  `PreferenceID` int NOT NULL,
  `DateSaved` date NOT NULL,
  `GuestAccommodationChoiceID` int NOT NULL,
  PRIMARY KEY (`AccommodationPreferenceID`),
  KEY `AccommodationID` (`AccommodationID`),
  KEY `PreferenceID` (`PreferenceID`),
  KEY `GuestAccommodationChoiceID` (`GuestAccommodationChoiceID`),
  CONSTRAINT `accommodationpreference_ibfk_1` FOREIGN KEY (`AccommodationID`) REFERENCES `accommodation` (`AccommodationID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accommodationpreference_ibfk_2` FOREIGN KEY (`PreferenceID`) REFERENCES `preference` (`PreferenceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accommodationpreference_ibfk_3` FOREIGN KEY (`GuestAccommodationChoiceID`) REFERENCES `guestaccommodationchoice` (`GuestAccommodationChoiceID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodationpreference`
--

LOCK TABLES `accommodationpreference` WRITE;
/*!40000 ALTER TABLE `accommodationpreference` DISABLE KEYS */;
INSERT INTO `accommodationpreference` VALUES (1,1,1,'2024-02-01',1),(2,3,3,'2023-04-09',2),(3,3,3,'2022-10-02',3),(4,7,7,'2022-11-09',4),(5,5,5,'2021-05-21',5),(6,6,6,'2023-08-11',6),(7,6,6,'2023-10-18',7),(8,7,7,'2022-08-10',8),(9,12,12,'2021-03-02',9),(10,11,11,'2023-07-03',10),(11,12,12,'2024-01-16',11),(12,14,14,'2023-08-21',12),(13,14,14,'2023-08-06',13),(14,15,15,'2024-02-01',14),(15,16,15,'2023-11-08',15),(16,12,12,'2023-10-09',16),(17,17,17,'2021-11-16',17),(18,18,18,'2022-10-06',18),(19,18,18,'2022-09-24',19),(20,22,22,'2022-02-16',20);
/*!40000 ALTER TABLE `accommodationpreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodationrule`
--

DROP TABLE IF EXISTS `accommodationrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodationrule` (
  `AccommodationRuleID` int NOT NULL AUTO_INCREMENT,
  `AccommodationID` int NOT NULL,
  `RuleID` int NOT NULL,
  PRIMARY KEY (`AccommodationRuleID`),
  KEY `AccommodationID` (`AccommodationID`),
  KEY `RuleID` (`RuleID`),
  CONSTRAINT `accommodationrule_ibfk_1` FOREIGN KEY (`AccommodationID`) REFERENCES `accommodation` (`AccommodationID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `accommodationrule_ibfk_2` FOREIGN KEY (`RuleID`) REFERENCES `rule` (`RuleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodationrule`
--

LOCK TABLES `accommodationrule` WRITE;
/*!40000 ALTER TABLE `accommodationrule` DISABLE KEYS */;
INSERT INTO `accommodationrule` VALUES (1,1,14),(2,1,11),(3,2,1),(4,2,18),(5,2,7),(6,3,3),(7,3,20),(8,4,7),(9,4,13),(10,5,1),(11,5,4),(12,5,5),(13,6,9),(14,6,7),(15,6,16),(16,7,15),(17,7,12),(18,7,6),(19,8,4),(20,8,13),(21,8,7);
/*!40000 ALTER TABLE `accommodationrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `AddressID` int NOT NULL AUTO_INCREMENT,
  `PostCode` varchar(20) NOT NULL,
  `Street` varchar(255) NOT NULL,
  `House` varchar(50) NOT NULL,
  PRIMARY KEY (`AddressID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'10001','Main Street','123'),(2,'90210','Ocean Avenue','456'),(3,'SW1A 1AA','Buckingham Palace Road','1'),(4,'EH1 1RF','Castlehill','Edinburgh Castle'),(5,'LA22 9JU','Cumbria','Lake District Cottage'),(6,'96815','Kalakaua Avenue','1234'),(7,'321-1234','Beachfront Street','5678'),(8,'4217','Beachfront Street','91011'),(9,'94117','Steiner Street','1234'),(10,'08002','El Born','123'),(11,'94550','Main Street','789'),(12,'90210','Mountain View Road','789'),(13,'10001','Main Street','456'),(14,'90210','Bohemian Boulevard','123'),(15,'90210','Urban Oasis Street','456'),(16,'90210','Downtown Penthouse Avenue','789'),(17,'10001','City Homes Boulevard','123'),(18,'90210','Sunny Street','456'),(19,'10001','Lakeside Lane','123'),(20,'GL56 0YG','Cotswold Street','456'),(21,'85001','Desert Oasis Drive','123'),(22,'90210','Coastal Cottage Avenue','456'),(23,'60601','Midwest Farm Road','123'),(24,'10001','Country Cottage Lane','456'),(25,'80331','Bavarian Street','123'),(26,'SW1A 1AA','Elegant Street','1'),(27,'EH1 1RF','Castle Road','Edinburgh Castle'),(28,'LA22 9JU','Lake District Road','456'),(29,'96815','Island Oasis Drive','123'),(30,'321-1234','Beachfront Boulevard','5678'),(31,'4217','Gold Coast Avenue','91011'),(32,'94117','Victorian Street','1234'),(33,'08002','Barcelona Street','123');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenity`
--

DROP TABLE IF EXISTS `amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenity` (
  `AmenityID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`AmenityID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenity`
--

LOCK TABLES `amenity` WRITE;
/*!40000 ALTER TABLE `amenity` DISABLE KEYS */;
INSERT INTO `amenity` VALUES (1,'Nature','Garden view'),(2,'Internet','Fast Wi-Fi'),(3,'Parking','Free parking'),(4,'Electric car','Electric car charger'),(5,'Entertainment','HDTV, 50\"\" + Netflix, Standard cable TV'),(6,'Bathroom','Hairdryer'),(7,'Laundry','Washing machine'),(8,'Room','Iron'),(9,'Room','Strongbox'),(10,'Entertainment','Game console'),(11,'Cooling','Central air conditioning system'),(12,'Home safety','Medical kit'),(13,'Objects','Pool'),(14,'Objects','Sauna'),(15,'Kitchen','Refrigerator'),(16,'Kitchen','Dishes and cutlery'),(17,'Outside','Barbecue area'),(18,'Location','Seafront'),(19,'Heating','Heating'),(20,'Services','Electronic lock'),(21,'Bathroom','Bath'),(22,'Entertainment','Exercise equipment');
/*!40000 ALTER TABLE `amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `BookingID` int NOT NULL AUTO_INCREMENT,
  `GuestID` int NOT NULL,
  `AccommodationID` int NOT NULL,
  `CheckInDate` date NOT NULL,
  `CheckOutDate` date NOT NULL,
  `TotalCost` decimal(10,2) NOT NULL,
  `BookingStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `GuestID` (`GuestID`),
  KEY `AccommodationID` (`AccommodationID`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`GuestID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`AccommodationID`) REFERENCES `accommodation` (`AccommodationID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,1,'2024-08-10','2024-08-15',125.25,'in process'),(2,3,3,'2023-03-03','2023-03-10',560.70,'processed'),(3,4,5,'2021-09-11','2021-09-14',400.32,'processed'),(4,6,6,'2023-11-17','2023-11-21',440.50,'in process'),(5,8,7,'2022-10-06','2022-10-11',1110.25,'processed'),(6,9,12,'2021-05-16','2021-05-25',123.29,'in process'),(7,11,11,'2023-09-01','2023-09-11',1205.20,'processed'),(8,13,12,'2024-04-22','2024-04-24',152.36,'processed'),(9,14,14,'2023-08-22','2023-08-26',284.40,'processed'),(10,15,15,'2024-10-18','2024-10-28',312.24,'in process'),(11,17,16,'2024-02-09','2023-02-14',255.50,'processed'),(12,19,17,'2022-05-20','2022-05-23',153.45,'processed'),(13,20,18,'2022-08-11','2022-08-17',221.38,'processed'),(14,23,22,'2022-06-10','2022-02-18',431.95,'processed'),(15,25,21,'2023-09-15','2023-09-20',755.25,'in process'),(16,27,23,'2020-10-06','2020-10-10',1305.24,'processed'),(17,29,20,'2023-12-27','2024-01-02',720.30,'in process'),(18,31,24,'2020-03-19','2020-03-23',164.24,'processed'),(19,33,25,'2024-06-04','2024-06-14',2230.42,'processed'),(20,35,27,'2021-08-03','2021-08-12',827.32,'processed'),(21,4,28,'2021-07-23','2021-07-27',446.28,'processed'),(22,19,29,'2023-05-17','2023-05-23',368.42,'processed');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connection`
--

DROP TABLE IF EXISTS `connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connection` (
  `ConnectionID` int NOT NULL AUTO_INCREMENT,
  `GuestID` int NOT NULL,
  `HostID` int NOT NULL,
  `ConnectionDate` date NOT NULL,
  PRIMARY KEY (`ConnectionID`),
  KEY `GuestID` (`GuestID`),
  KEY `HostID` (`HostID`),
  CONSTRAINT `connection_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`GuestID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `connection_ibfk_2` FOREIGN KEY (`HostID`) REFERENCES `host` (`HostID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connection`
--

LOCK TABLES `connection` WRITE;
/*!40000 ALTER TABLE `connection` DISABLE KEYS */;
INSERT INTO `connection` VALUES (1,1,2,'2024-02-01'),(2,3,5,'2022-10-03'),(3,4,7,'2021-05-26'),(4,6,7,'2023-08-13'),(5,8,10,'2022-08-21'),(6,9,12,'2021-03-07'),(7,11,16,'2023-07-04'),(8,13,18,'2024-01-20'),(9,14,20,'2023-08-13'),(10,15,22,'2024-02-02'),(11,17,24,'2023-11-12'),(12,19,26,'2021-12-01'),(13,20,28,'2022-11-02'),(14,23,34,'2022-02-18'),(15,25,32,'2023-06-23'),(16,27,36,'2020-04-09'),(17,29,30,'2023-09-22'),(18,31,37,'2019-11-25'),(19,33,38,'2024-01-20'),(20,35,39,'2021-06-22'),(21,4,40,'2020-10-16'),(22,19,41,'2023-01-29');
/*!40000 ALTER TABLE `connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `GuestID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `TotalBookings` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`GuestID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `guest_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,1,3),(2,3,1),(3,4,4),(4,6,6),(5,8,2),(6,9,7),(7,11,3),(8,13,10),(9,14,6),(10,15,7),(11,17,5),(12,19,9),(13,21,11),(14,23,12),(15,25,7),(16,27,8),(17,29,12),(18,31,8),(19,33,5),(20,35,4);
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestaccommodationchoice`
--

DROP TABLE IF EXISTS `guestaccommodationchoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestaccommodationchoice` (
  `GuestAccommodationChoiceID` int NOT NULL AUTO_INCREMENT,
  `GuestID` int NOT NULL,
  `AccommodationID` int NOT NULL,
  `DateChosen` date NOT NULL,
  PRIMARY KEY (`GuestAccommodationChoiceID`),
  KEY `GuestID` (`GuestID`),
  KEY `AccommodationID` (`AccommodationID`),
  CONSTRAINT `guestaccommodationchoice_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`GuestID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `guestaccommodationchoice_ibfk_2` FOREIGN KEY (`AccommodationID`) REFERENCES `accommodation` (`AccommodationID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestaccommodationchoice`
--

LOCK TABLES `guestaccommodationchoice` WRITE;
/*!40000 ALTER TABLE `guestaccommodationchoice` DISABLE KEYS */;
INSERT INTO `guestaccommodationchoice` VALUES (1,1,1,'2024-01-30'),(2,1,3,'2023-04-08'),(3,3,3,'2022-10-01'),(4,3,7,'2022-11-08'),(5,4,5,'2021-05-20'),(6,6,6,'2023-08-10'),(7,8,6,'2023-10-17'),(8,8,7,'2022-08-09'),(9,9,12,'2021-03-01'),(10,11,11,'2023-07-02'),(11,13,12,'2024-01-15'),(12,13,14,'2023-08-20'),(13,14,14,'2023-08-05'),(14,15,15,'2024-01-30'),(15,17,16,'2023-11-07'),(16,17,12,'2023-10-08'),(17,19,17,'2021-11-15'),(18,20,18,'2022-10-05'),(19,19,18,'2022-09-23'),(20,23,22,'2022-02-15');
/*!40000 ALTER TABLE `guestaccommodationchoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host` (
  `HostID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `AccommodationsCount` int NOT NULL,
  `SuperhostStatus` tinyint(1) NOT NULL,
  `Verification` tinyint(1) NOT NULL,
  `SelfDescription` text,
  `Languages` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HostID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `host_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,2,2,1,1,'Attention nature lovers! If you are craving adventure and outdoor exploration, look no further. My rustic cabin is the perfect basecamp for your wilderness adventures. Surrounded by towering trees and wildlife, you will experience the beauty of nature up close. From hiking trails to starlit nights by the firepit, get ready for an unforgettable outdoor experience!','German, English, Dutch'),(2,5,2,1,1,'Hola amigos! Iam a proud resident of this vibrant neighborhood, and I can not wait to share its rich culture and heritage with you. My charming guesthouses are a hidden gem, filled with colorful decor and authentic charm. From sipping coffee on the patio to exploring local markets, I will show you the true essence of our community. ¡Bienvenidos a casa!','Spanish, Italian, English'),(3,7,4,1,1,'Welcome to my urban oasis! As a seasoned host, I take pride in providing a comfortable and stylish space for travelers seeking a home away from home. Nestled in the heart of the city, my apartments offer modern amenities and breathtaking views. Whether you are here for business or pleasure, I will ensure your stay is nothing short of exceptional.','German, English'),(4,10,3,1,1,'Hi there! I am a passionate traveler who loves meeting new people and sharing stories. Hosting guests from all over the world is not just a hobby for me; it is a way of life. My cozy homes are always open to fellow adventurers looking to explore the beauty of our city. From local tips to warm hospitality, I will make sure your stay is unforgettable!','English, Italian, Spanish'),(5,12,1,0,1,'Escape to tranquility at my countryside retreat! Tucked away from the hustle and bustle, my farmhouse offers peace, serenity, and panoramic views of rolling hills. Whether you are seeking a romantic getaway or a family adventure, you will find solace in nature is embrace. Come unwind, recharge, and create lasting memories in this idyllic setting.','English, French'),(6,16,2,1,1,'Greetings from my sunny seaside villa! As a beach lover and hospitality aficionado, I take pride in offering guests a slice of paradise just steps from the shore. Whether you are lounging by the pool or soaking up the sun on the sand, my beachfront retreat promises relaxation, rejuvenation, and endless ocean views. Pack your swimsuit and leave your worries behind!','Engliish, Spanish, Portuguese'),(7,2,2,1,1,'Attention nature lovers! If you are craving adventure and outdoor exploration, look no further. My rustic cabin is the perfect basecamp for your wilderness adventures. Surrounded by towering trees and wildlife, you will experience the beauty of nature up close. From hiking trails to starlit nights by the firepit, get ready for an unforgettable outdoor experience!','German, English, Dutch'),(8,5,2,1,1,'Hola amigos! Iam a proud resident of this vibrant neighborhood, and I can not wait to share its rich culture and heritage with you. My charming guesthouses are a hidden gem, filled with colorful decor and authentic charm. From sipping coffee on the patio to exploring local markets, I will show you the true essence of our community. ¡Bienvenidos a casa!','Spanish, Italian, English'),(9,7,4,1,1,'Welcome to my urban oasis! As a seasoned host, I take pride in providing a comfortable and stylish space for travelers seeking a home away from home. Nestled in the heart of the city, my apartments offer modern amenities and breathtaking views. Whether you are here for business or pleasure, I will ensure your stay is nothing short of exceptional.','German, English'),(10,10,3,1,1,'Hi there! I am a passionate traveler who loves meeting new people and sharing stories. Hosting guests from all over the world is not just a hobby for me; it is a way of life. My cozy homes are always open to fellow adventurers looking to explore the beauty of our city. From local tips to warm hospitality, I will make sure your stay is unforgettable!','English, Italian, Spanish'),(11,12,1,0,1,'Escape to tranquility at my countryside retreat! Tucked away from the hustle and bustle, my farmhouse offers peace, serenity, and panoramic views of rolling hills. Whether you are seeking a romantic getaway or a family adventure, you will find solace in nature is embrace. Come unwind, recharge, and create lasting memories in this idyllic setting.','English, French'),(12,16,2,1,1,'Greetings from my sunny seaside villa! As a beach lover and hospitality aficionado, I take pride in offering guests a slice of paradise just steps from the shore. Whether you are lounging by the pool or soaking up the sun on the sand, my beachfront retreat promises relaxation, rejuvenation, and endless ocean views. Pack your swimsuit and leave your worries behind!','Engliish, Spanish, Portuguese'),(13,2,2,1,1,'Attention nature lovers! If you are craving adventure and outdoor exploration, look no further. My rustic cabin is the perfect basecamp for your wilderness adventures. Surrounded by towering trees and wildlife, you will experience the beauty of nature up close. From hiking trails to starlit nights by the firepit, get ready for an unforgettable outdoor experience!','German, English, Dutch'),(14,5,2,1,1,'Hola amigos! Iam a proud resident of this vibrant neighborhood, and I can not wait to share its rich culture and heritage with you. My charming guesthouses are a hidden gem, filled with colorful decor and authentic charm. From sipping coffee on the patio to exploring local markets, I will show you the true essence of our community. ¡Bienvenidos a casa!','Spanish, Italian, English'),(15,7,4,1,1,'Welcome to my urban oasis! As a seasoned host, I take pride in providing a comfortable and stylish space for travelers seeking a home away from home. Nestled in the heart of the city, my apartments offer modern amenities and breathtaking views. Whether you are here for business or pleasure, I will ensure your stay is nothing short of exceptional.','German, English'),(16,10,3,1,1,'Hi there! I am a passionate traveler who loves meeting new people and sharing stories. Hosting guests from all over the world is not just a hobby for me; it is a way of life. My cozy homes are always open to fellow adventurers looking to explore the beauty of our city. From local tips to warm hospitality, I will make sure your stay is unforgettable!','English, Italian, Spanish'),(17,12,1,0,1,'Escape to tranquility at my countryside retreat! Tucked away from the hustle and bustle, my farmhouse offers peace, serenity, and panoramic views of rolling hills. Whether you are seeking a romantic getaway or a family adventure, you will find solace in nature is embrace. Come unwind, recharge, and create lasting memories in this idyllic setting.','English, French'),(18,16,2,1,1,'Greetings from my sunny seaside villa! As a beach lover and hospitality aficionado, I take pride in offering guests a slice of paradise just steps from the shore. Whether you are lounging by the pool or soaking up the sun on the sand, my beachfront retreat promises relaxation, rejuvenation, and endless ocean views. Pack your swimsuit and leave your worries behind!','Engliish, Spanish, Portuguese'),(19,18,2,1,1,'Welcome to my historic townhouse in the heart of the Old Quarter! Steeped in charm and character, my homes offer a glimpse into the rich tapestry of past of our city. From cobblestone streets to hidden courtyards, every corner tells a story waiting to be discovered. Let me be your guide as we explore the secrets of this enchanting neighborhood together.','English, French'),(20,20,1,0,1,'Hola from my vibrant casita in the heart of the pueblo! As a proud local and cultural ambassador, I am excited to share the rhythms and flavors of our lively community with you. From salsa dancing in the town square to savoring homemade tamales, every moment here is a celebration of life and tradition. Bienvenidos a mi hogar!','English, Spanish'),(21,22,1,0,1,'Hello from my lakeside cabin in the Great Lakes region! Perched on the shores of one of America largest freshwater lakes, my cozy retreat offers the perfect blend of natural beauty and outdoor adventure. Whether you are fishing off the dock or watching the sunset from the porch swing, you will find peace and tranquility in every moment. Welcome to the lake life!','English'),(22,24,1,0,1,'Greetings from my charming cottage in the Cotswolds! Nestled in the heart of the English countryside, my cozy retreat offers a quintessentially British experience. Whether you are strolling through quaint villages or enjoying a traditional cream tea in the garden, you will find warmth and hospitality around every corner. Welcome to the Cotswolds!','English'),(23,26,1,0,1,'Greetings from my desert oasis in Arizona! Nestled amidst rugged canyons and towering saguaros, my adobe hacienda offers a peaceful retreat in the heart of the Sonoran Desert. Whether you are exploring ancient petroglyphs or stargazing by the fire pit, you will find wonder and adventure in the desert landscape. Come experience the magic of the Southwest!','English, French'),(24,28,1,0,1,'Welcome to my coastal cottage in sunny California! Perched on the cliffs overlooking the Pacific Ocean, my home offers breathtaking views and endless opportunities for adventure. Whether you are catching waves at the nearby surf break or sipping wine in the garden at sunset, you will find bliss and relaxation in every moment. Come experience the magic of California living!','English'),(25,30,2,1,1,'Howdy from my sprawling farm in the Midwest! As a proud farmer and dedicated host, I am excited to share the beauty and bounty of rural America with guests from around the world. From harvesting fresh produce in the fields to gathering around the bonfire under the stars, every moment here is a celebration of simple living and heartfelt hospitality. Welcome to the farm!','English'),(26,32,1,0,1,'Herzlich willkommen from my charming Bavarian chalet! Nestled in the foothills of the Alps, my cozy retreat offers the perfect blend of tradition and comfort. Whether you are exploring fairytale castles or sampling hearty Bavarian cuisine, you will experience Gemütlichkeit at its finest. Willkommen in Bayern!','German, English'),(27,34,1,0,1,'Welcome to my elegant townhouse in the heart of London! Situated in one of the city most prestigious neighborhoods, my home offers luxury and sophistication at every turn. From exploring world-class museums to dining at Michelin-starred restaurants, London is a treasure trove of culture and excitement. Make your stay in the capital truly unforgettable!','English, French'),(28,36,1,0,1,'Hello from my historic castle in Scotland! Steeped in centuries of history and surrounded by breathtaking landscapes, my majestic estate offers a truly regal experience. Whether you are exploring ancient ruins or sampling single malt whiskies in the drawing room, you will feel like royalty during your stay. Come and experience the magic of Scotland castles!','English'),(29,37,1,0,1,'Howdy from my picturesque farmhouse in the Lake District! Surrounded by rolling hills and sparkling lakes, my rustic retreat offers a peaceful escape from the hustle and bustle of modern life. Whether you are exploring quaint villages or hiking through the fells, you will find solace and serenity inthe beauty of the Lake District. Make memories in the countryside!','English, Italian'),(30,38,2,1,1,'Aloha from my island oasis in Hawaii! Set amidst lush tropical gardens and swaying palms, my Hawaiian hideaway offers the perfect blend of luxury and tranquility. From snorkeling in crystal-clear waters to savoring farm-to-table cuisine, every moment here is a celebration of island life. Come experience the beauty and spirit of aloha in paradise!','English, Spanish, Hawaiian'),(31,39,1,0,1,'Hey from my beachfront villa on the Gold Coast! Welcome to paradise, where the sun always shines, and the surf is never far away. Whether you are catching waves at Surfers Paradise or exploring the lush hinterland, you will experience the best of Queensland coastal lifestyle right here. Welcome to the Gold Coast!','English, French'),(32,40,1,0,1,'Welcome to my charming Victorian home in San Francisco! Nestled in the heart of the city, my historic house offers a blend of old-world charm and modern amenities. With iconic landmarks like the Golden Gate Bridge and Alcatraz Island just a short drive away, you will experience the best of San Francisco vibrant culture and stunning views. Welcome to the City by the Bay!','English'),(33,41,1,0,1,'Hello from my cozy apartment in the heart of Barcelona! Situated in the lively neighborhood of El Born, my flat combines the city historic charm with modern comforts. With iconic landmarks like the Sagrada Familia, Park Güell, and Las Ramblas within walking distance, you will immerse yourself in Barcelona vibrant cultural life. Welcome to Catalonia!','English, Spanish');
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LocationID` int NOT NULL AUTO_INCREMENT,
  `City` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Continent` varchar(30) NOT NULL,
  `Latitude` float NOT NULL,
  `Longitude` float NOT NULL,
  `AddressID` int NOT NULL,
  PRIMARY KEY (`LocationID`),
  KEY `AddressID` (`AddressID`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Great Lakes Region','United States','North America',43.1032,-88.3955,1),(2,'Mountains','Canada','North America',51.2964,-116.963,2),(3,'Old Quarter','Vietnam','Asia',21.0305,105.85,3),(4,'Arts District','United States','North America',34.043,-118.237,4),(5,'City Center','United States','North America',40.7128,-74.006,5),(6,'Downtown','United States','North America',34.0522,-118.244,6),(7,'City','United States','North America',40.7128,-74.006,7),(8,'Downtown','United States','North America',40.7128,-74.006,8),(9,'Countryside','United States','North America',39.8097,-98.5556,9),(10,'Seaside','United States','North America',34.0522,-118.244,10),(11,'Beach','United States','North America',21.3069,-157.858,11),(12,'Old Quarter','United Kingdom','Europe',51.5074,-0.127758,12),(13,'Cobblestone Alley','United Kingdom','Europe',51.5074,-0.127758,13),(14,'Pueblo','Mexico','North America',19.4326,-99.1332,14),(15,'Great Lakes Region','United States','North America',43.1032,-88.3955,15),(16,'Cotswolds','United Kingdom','Europe',51.9282,-1.72693,16),(17,'Sonoran Desert','United States','North America',32.0027,-111.342,17),(18,'Pacific Coast','United States','North America',34.0522,-118.244,18),(19,'Midwest','United States','North America',41.878,-93.0977,19),(20,'Countryside','United States','North America',38.4747,-122.89,20),(21,'Bavaria','Germany','Europe',48.7904,11.4979,21),(22,'London','United Kingdom','Europe',51.5074,-0.127758,22),(23,'Scotland','United Kingdom','Europe',56.4907,-4.2026,23),(24,'Lake District','United Kingdom','Europe',54.4609,-3.0886,24),(25,'Hawaii','United States','North America',20.7984,-156.332,25),(26,'Beach','United States','North America',21.3069,-157.858,26),(27,'Gold Coast','Australia','Oceania',-28.0167,153.4,27),(28,'San Francisco','United States','North America',37.7749,-122.419,28),(29,'Barcelona','Spain','Europe',41.3851,2.1734,29);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `MessageID` int NOT NULL AUTO_INCREMENT,
  `ConnectionID` int DEFAULT NULL,
  `BookingID` int NOT NULL,
  `Content` text NOT NULL,
  `Timestamp` timestamp NOT NULL,
  PRIMARY KEY (`MessageID`),
  KEY `ConnectionID` (`ConnectionID`),
  KEY `BookingID` (`BookingID`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`ConnectionID`) REFERENCES `connection` (`ConnectionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,1,1,'Hello Alice! Hope you will like your stay. For any questions I am here.','2024-02-01 11:30:00'),(2,1,1,'Hello Josh! Thank you so much. I have some questions about accessing the housing.','2024-02-01 11:35:15'),(3,1,1,'Dear Alice, Keys will be under the carpet near the right door.','2024-02-01 11:36:11'),(4,2,2,'Ola amigo! Wish you great holiday and I am always in touch. Keys I will leave in box, code is 5978.','2022-10-03 07:10:54'),(5,2,2,'Thank you so much.','2022-10-03 07:14:22'),(6,3,3,'Hello, Juan! Welcome to the apartment, hope your stay will be pleasant.','2021-05-26 14:55:21'),(7,3,3,'Hello, Maximilian! Thank you for information, could you, please, tell me how i will get keys and about area here. ','2021-05-26 15:10:37'),(8,3,3,'Sure. Keys will be in neighbour hous, just txt me when you will be here.','2021-05-26 15:12:16'),(9,4,4,'Good mornin Ricardo. How are you? I will guide you in your journey.','2023-08-13 02:17:33'),(10,4,4,'Good mornin Maximilian! Thank you I am fine, I will ask some question later.','2023-08-13 02:22:35'),(11,4,4,'Sure. I will answer all your questions.','2023-08-13 02:25:22'),(12,5,5,'Hey Jack, I wish you good stay and keys I will give you when you come to the housing.','2022-08-21 04:15:16'),(13,5,5,'Thank you so much. I will come late, is this a problem?','2022-08-21 04:16:18'),(14,5,5,'I am living in the hose near, so it is not a problem.','2022-08-21 04:15:16'),(15,6,6,'Dear Olga, I m greeting you. My name is Noag and will guide you through all questions about accommodation.','2021-03-07 16:32:02'),(16,6,6,'Thank, you Noah! Could ypu tell me something more about location?','2021-03-07 17:27:10'),(17,6,6,'Location is very beautiful, so you can enjoy landscapes. There are no much supermarkets here, but still one good 500 m away. One more thing, keys are under the carpet.','2021-03-07 17:33:24'),(18,6,6,'Thank you for information, have a great day!','2021-03-07 17:35:45'),(19,7,6,'Good afternoon, Ava! Glad to help you. Your keys will be in box near the entrance door. For any further questions I am here.','2023-07-04 07:35:42'),(20,7,6,'Thank you, William!','2023-07-04 07:35:42');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `BookingID` int NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `PaymentDate` date NOT NULL,
  `PaymentMethod` varchar(50) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `BookingID` (`BookingID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,125.25,'2024-02-01','PayPal'),(2,2,560.70,'2022-10-03','ApplePay'),(3,3,400.32,'2021-05-26','Bank Transfer'),(4,4,440.50,'2023-08-13','ApplePay'),(5,5,1110.25,'2022-08-21','PayPal'),(6,6,123.29,'2021-03-07','Bank Transfer'),(7,7,1205.20,'2023-07-04','Credit Card'),(8,8,152.36,'2024-01-20','PayPal'),(9,9,284.40,'2023-08-13','ApplePay'),(10,10,312.24,'2024-02-02','Bank Transfer'),(11,11,255.50,'2023-11-12','Digital Wallet'),(12,12,153.45,'2021-12-01','ApplePay'),(13,13,221.38,'2022-11-02','Credit Card'),(14,14,431.95,'2022-02-18','Bank Transfer'),(15,15,755.25,'2023-06-23','Digital Wallet'),(16,16,1305.24,'2020-04-09','PayPal'),(17,17,720.30,'2023-09-22','Credit Card'),(18,18,164.24,'2019-11-25','Bank Transfer'),(19,19,2230.42,'2024-01-20','ApplePay'),(20,20,827.32,'2021-06-22','PayPal'),(21,21,446.28,'2020-10-16','Credit Card'),(22,22,368.42,'2023-01-29','PayPal'),(23,1,125.25,'2024-02-01','PayPal'),(24,2,560.70,'2022-10-03','ApplePay'),(25,3,400.32,'2021-05-26','Bank Transfer'),(26,4,440.50,'2023-08-13','ApplePay'),(27,5,1110.25,'2022-08-21','PayPal'),(28,6,123.29,'2021-03-07','Bank Transfer'),(29,7,1205.20,'2023-07-04','Credit Card'),(30,8,152.36,'2024-01-20','PayPal'),(31,9,284.40,'2023-08-13','ApplePay'),(32,10,312.24,'2024-02-02','Bank Transfer'),(33,11,255.50,'2023-11-12','Digital Wallet'),(34,12,153.45,'2021-12-01','ApplePay'),(35,13,221.38,'2022-11-02','Credit Card'),(36,14,431.95,'2022-02-18','Bank Transfer'),(37,15,755.25,'2023-06-23','Digital Wallet'),(38,16,1305.24,'2020-04-09','PayPal'),(39,17,720.30,'2023-09-22','Credit Card'),(40,18,164.24,'2019-11-25','Bank Transfer'),(41,19,2230.42,'2024-01-20','ApplePay'),(42,20,827.32,'2021-06-22','PayPal'),(43,21,446.28,'2020-10-16','Credit Card'),(44,22,368.42,'2023-01-29','PayPal');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo` (
  `PhotoID` int NOT NULL AUTO_INCREMENT,
  `AccommodationID` int NOT NULL,
  `Caption` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`PhotoID`),
  KEY `AccommodationID` (`AccommodationID`),
  CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`AccommodationID`) REFERENCES `accommodation` (`AccommodationID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,1,'Cabin housing inside','https://photocabinin/213'),(2,1,'Cabin housing outside','https://photocabinout/125'),(3,1,'Cabin housing inside 2','https://photocabin2/218'),(4,2,'Mountain Lodge','https://photolodge/114'),(5,2,'Mountain Lodge inside','https://photolodgein/173'),(6,2,'Mountain Lodge outside','https://photolodgeout/125'),(7,2,'Mountain Lodge inside 2','https://photolodgein2/324'),(8,3,'Guesthouse','https://photoguesthose/239'),(9,3,'Guesthouse inside','https://photoguesthousein/230'),(10,3,'Guesthouse outside','https://photoguesthouseout/230'),(11,3,'Guesthouse inside 2','https://photoguesthousein2/231'),(12,4,'Loft','https://photoloft/335'),(13,4,'Loft inside','https://photoloftin/337'),(14,4,'Loft inside 2','https://photoloftin2/257'),(15,4,'Loft outside','https://photoloftout/258'),(16,5,'Apartments','https://photoloft/587'),(17,5,'Apartments inside','https://photolofin/574'),(18,5,'Apartments inside 2','https://photoloftin2/575'),(19,5,'Apartments outside','https://photoloftout/576'),(20,6,'Penthouse Suite','https://photopenthouse/576'),(21,6,'Penthouse Suite inside','https://photopenthousein/644'),(22,6,'Penthouse Suite inside 2','https://photopenthousein2/645'),(23,6,'Penthouse Suite outside','https://photopenthouseout/646');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preference`
--

DROP TABLE IF EXISTS `preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preference` (
  `PreferenceID` int NOT NULL AUTO_INCREMENT,
  `HostID` int NOT NULL,
  `AccommodationID` int NOT NULL,
  `DateAdded` date NOT NULL,
  PRIMARY KEY (`PreferenceID`),
  KEY `HostID` (`HostID`),
  KEY `AccommodationID` (`AccommodationID`),
  CONSTRAINT `preference_ibfk_1` FOREIGN KEY (`HostID`) REFERENCES `host` (`HostID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `preference_ibfk_2` FOREIGN KEY (`AccommodationID`) REFERENCES `accommodation` (`AccommodationID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preference`
--

LOCK TABLES `preference` WRITE;
/*!40000 ALTER TABLE `preference` DISABLE KEYS */;
INSERT INTO `preference` VALUES (1,2,1,'2022-10-17'),(2,2,2,'2021-06-14'),(3,5,3,'2018-09-13'),(4,5,4,'2016-09-22'),(5,7,5,'2020-06-25'),(6,7,6,'2021-04-05'),(7,10,7,'2017-06-14'),(8,10,8,'2018-09-08'),(9,12,9,'2015-07-10'),(10,16,10,'2019-12-03'),(11,16,11,'2020-01-20'),(12,18,12,'2018-03-10'),(13,18,13,'2018-05-15'),(14,20,14,'2023-05-20'),(15,22,15,'2024-01-25'),(16,24,16,'2023-09-01'),(17,26,17,'2019-09-30'),(18,28,18,'2019-02-16'),(19,30,19,'2023-04-10'),(20,30,20,'2023-06-12'),(21,32,21,'2023-05-30'),(22,34,22,'2023-10-20');
/*!40000 ALTER TABLE `preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `ReviewID` int NOT NULL AUTO_INCREMENT,
  `BookingID` int NOT NULL,
  `Ranking` decimal(3,1) DEFAULT NULL,
  `CommentToReview` text,
  `ReviewDate` date NOT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `BookingID` (`BookingID`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,4.5,'Nice place with good accommodations','2024-08-15'),(2,2,4.7,'I liked ris place really good','2023-03-11'),(3,3,5.0,'Was glad to be here','2021-09-14'),(4,4,4.8,'Nice place with good facilities','2023-11-22'),(5,5,4.8,'I had great experience here','2022-10-11'),(6,6,4.9,'I had really great holidays and awesome emotions','2021-05-26'),(7,7,4.9,'Housing was amazing and are as well. Only one problem is broken iron','2024-08-15'),(8,8,5.0,'My family and I were so amazed to visit this accommodation','2024-08-16'),(9,9,5.0,'I am so happy that I was here','2023-08-26'),(10,10,4.7,'I am excited about my trip and stay here','2024-10-30'),(11,11,5.0,'Nice place and good host','2024-08-15'),(12,12,4.9,'Time here is rwlly memorable','2022-05-23'),(13,13,4.7,'My family relly liked this journey','2022-08-18'),(14,14,4.8,'Beautiful housing','2022-02-18'),(15,15,4.9,'Thank you for great experience here','2023-09-21'),(16,16,5.0,'Housing was really pretty and the host was so responsive','2020-10-11'),(17,17,4.9,'Thank you for your hospitality','2024-01-03'),(18,18,4.7,'I am delighted!','2020-03-23'),(19,19,5.0,'Only best memories','2024-06-14'),(20,20,4.5,'Great experience!','2021-08-12');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rule` (
  `RuleID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`RuleID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
INSERT INTO `rule` VALUES (1,'Check-in and check-out','Dear guests, please, notice than arriving is possible from 1 pm. and leving must be till 10 am.'),(2,'Check-in and check-out','Dear guests, please, notice than arriving is possible from 3 pm. and leving must be till 12 am.'),(3,'Check-in and check-out','Dear guests, check-in in any time but check-out before 11 pm.'),(4,'Cancellation Policy','Partial Refund: 50% of all nights upon return. If canceled after 12:00 local time, payment for that night will not be refunded. Night stays and service fees are non-refundable.'),(5,'During your stay','Not allowed with pets'),(6,'During your stay','No parties or events'),(7,'During your stay','No smoking'),(8,'Additional rules','Please provide your expected arrival time at least 2 days in advance and telephone if there are any changes. This is important as we are a family rental and do not have fixed admission.\nArrival from 14:00 to 21:00 (early arrival on request)\nCheck out at 11:00 (late check out on request)\nUpon arrival we will ask for a security deposit of EUR 300 to be paid in CASH.\nAnimals are prohibited.\nThe communal pool, garden and self-service pool are only available in summer.'),(9,'Additional rules','I would like to ask you not to use real candles'),(10,'Cancellation Policy','Free cancellation within 48 hours.\nPlease review our cancellation policy. They will apply even if you cancel your booking due to coronavirus.'),(11,'Precautionary measures','The apartment is rather unsuitable for small children. The stone floor is cold and there is an oven that cannot be separated.'),(12,'During your stay','Hours of silence 21:00 – 10:00'),(13,'Check-in and check-out','Self-arrival (numeric code)'),(14,'Cancellation Policy','This booking is non-refundable.'),(15,'Additional rules','Please note that we do not allow parties or events. This is a residential area and we ask that you stay for a few hours after 9:00 pm. No smoking, no smoking, no hookah. We live upstairs. Violators will be immediately expelled without refund.'),(16,'During your stay','Commercial photography is prohibited'),(17,'During your stay','Hours of silence 22:00 – 08:00'),(18,'Additional rules','Minimum Age - The minimum age of the Lead Guest is 25 years old and must remain on the property for the entire duration of your stay.'),(19,'Additional rules','Accommodation Rates - Your stay is based on the number of guests stated on your booking. We charge £50 per additional guest per night for all additional guests on your overnight booking.'),(20,'Additional rules','Electric car fee. Vehicle charging is available and if used at the rate stated on our online arrival form at the time of booking (kWh) or part thereof.');
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `SecondName` varchar(255) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `RegistrationDate` date NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Alice','Carter','+4915296431257','2024-01-30','Alice555Carter','Guest','1995-03-28','alice.carter77@gmail.com'),(2,'Josh','Readly','+4915134697524','2020-03-14','JoshRead341','Host','1980-11-02','josh.readly@gmail.com'),(3,'Emly','Luis','+33748976543','2021-11-17','EmilyOneTwo','Guest','2000-05-13','emily.luis8@gmail.com'),(4,'Juan','Lopez','+34932769435','2019-01-17','EmilyOneTwo','Guest','2000-01-19','juan.lo67@gmail.com'),(5,'Francesca','Agosti','+390279643021','2014-09-04','Fran5Agosti8','Host','1989-10-21','fran.agosti1@gmail.com'),(6,'Ricardo','Braga','+351219634568','2023-06-21','Braga4braga','Guest','1995-07-07','braga.ric5@gmail.com'),(7,'Maximilian','Fischer','+491527865431','2019-12-03','MaxFisch52','Host','1985-08-19','max.fischer@gmail.com'),(8,'Jack','Day','+14987249864','2022-01-22','DayofJack','Guest','2001-04-27','jack.day33@gmail.com'),(9,'Olga','Shevchenko','+380509896654','2020-04-23','ShevaOlga3','Guest','1988-03-16','olga.shevchenko23@gmail.com'),(10,'Lora','Sunny','+61495643487','2017-05-08','Loralora88','Host','1980-07-15','loralora2@gmail.com'),(11,'Ava','Robinson','+4402039643158','2019-04-15','AvaRobi2020','Guest','2000-02-18','ava.robinson@example.com'),(12,'Noah','Taylor','+4402036543980','2015-07-02','Noah101Taylor','Host','1978-11-30','noah.taylor5@example.com'),(13,'Liam','Garcia','+349366345872','2024-01-01','LiamGar456','Guest','1989-08-15','liam.garcia@example.com'),(14,'Mark','Johnson','+14996458723','2018-10-12','Johnson543Mark','Guest','2000-09-02','johnson999@example.com'),(15,'Yegor','Kowalski','+380669573216','2020-12-18','Kowal7712534','Guest','1997-08-25','yegor.kowalski9@example.com'),(16,'William','Martinez','+351215546932','2019-10-25','William456','Host','1985-09-10','william.martinez@example.com'),(17,'Sophia','Brown','+61495996345','2022-06-30','Sophia78Brown','Guest','1997-07-15','sophia.brown@example.com'),(18,'James','Anderson','+149963020169','2018-03-04','James101gg','Host','1976-04-22','james.anderson11@example.com'),(19,'Isabella','Wilson','+4402036492578','2021-03-17','Isabella2020Wil','Guest','1998-10-28','isabella.wilson@example.com'),(20,'Benjamin','Lopez','+351216793420','2023-05-17','Benjamin123Lo','Host','1983-12-07','benjamin.lopez4@example.com'),(21,'Sophie','Clark','+14967923461','2020-10-22','SophieClar555','Guest','1990-07-12','sophie.clark@example.com'),(22,'Alexander','Adams','+14778956432','2024-01-22','Alex4563214','Host','1982-04-28','alexander.adams@example.com'),(23,'Charlotte','Evans','+390233649552','2022-05-08','Charlotte78ev9','Guest','1995-11-03','charlotte.evans@example.com'),(24,'Daniel','Wright','+44020564998732','2023-08-30','Daniel101here','Host','1974-09-20','daniel.wright@example.com'),(25,'Emily','Scott','+44590231578','2021-03-17','Emily2020Scott','Guest','1993-12-05','emily.scott@example.com'),(26,'Michael','King','+19645231087','2019-09-25','Michael4kk56','Host','1987-06-18','michael.king@example.com'),(27,'Mia','Baker','+390633279554','2017-07-11','Mia7bak89','Guest','1998-02-14','mia.baker@example.com'),(28,'Ethan','Morris','+15632245988','2019-02-03','Ethan106541','Host','1979-03-30','ethan.morris@example.com'),(29,'Amelia','Hill','+4915266493200','2022-11-20','Amelia202022','Guest','1996-08-22','amelia.hill@example.com'),(30,'Henry','Young','+1420132289','2023-04-05','Henrystyle123','Host','1981-01-15','henry.young@example.com'),(31,'Oliver','Turner','+12301659877','2019-03-12','Oliver1tur23','Guest','1994-09-10','oliver.turner@example.com'),(32,'Ella','White','+49152323265987','2023-05-25','Ella78888','Host','1988-12-18','ella.white@example.com'),(33,'James','Jackson','+146598742','2022-01-01','Jamespol99','Guest','1991-10-28','james.jackson@example.com'),(34,'Avery','Campbell','+44020656498732','2017-06-14','Avery45camb','Host','1986-07-02','avery.campbell@example.com'),(35,'Luna','Parker','+61493326894','2020-09-07','Lunaluno','Guest','1997-04-15','luna.parker@example.com'),(36,'Jacob','Miller','+4402125698732','2021-07-18','Jacobmill54','Host','1977-03-08','jacob.miller@example.com'),(37,'Liam','Wilson','+440223659964','2018-10-12','Liamwilwil2','Host','1990-07-12','liam.wilson@example.com'),(38,'Olivia','Moore','+14689574390','2024-01-07','Olivia45mormor','Host','1982-04-28','olivia.moore@example.com'),(39,'Noah','Roberts','+61456789432','2021-05-08','Noahrobb3','Host','1995-11-03','noah.roberts@example.com'),(40,'Emma','Hall','+19863216549','2019-08-30','Emma101333','Host','1974-09-20','emma.hall@example.com'),(41,'Ava','Palo','+3512156554897','2022-03-17','Avapalolo77','Host','1993-12-05','ava.johnson@example.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpreference`
--

DROP TABLE IF EXISTS `userpreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userpreference` (
  `UserPreferenceID` int NOT NULL AUTO_INCREMENT,
  `GuestID` int NOT NULL,
  `PreferenceID` int NOT NULL,
  `DateAdded` date NOT NULL,
  `AccommodationPreferenceID` int NOT NULL,
  PRIMARY KEY (`UserPreferenceID`),
  KEY `GuestID` (`GuestID`),
  KEY `PreferenceID` (`PreferenceID`),
  KEY `AccommodationPreferenceID` (`AccommodationPreferenceID`),
  CONSTRAINT `userpreference_ibfk_1` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`GuestID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userpreference_ibfk_2` FOREIGN KEY (`PreferenceID`) REFERENCES `preference` (`PreferenceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userpreference_ibfk_3` FOREIGN KEY (`AccommodationPreferenceID`) REFERENCES `accommodationpreference` (`AccommodationPreferenceID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpreference`
--

LOCK TABLES `userpreference` WRITE;
/*!40000 ALTER TABLE `userpreference` DISABLE KEYS */;
INSERT INTO `userpreference` VALUES (1,1,1,'2024-02-02',1),(2,1,3,'2023-04-10',2),(3,3,3,'2022-10-03',3),(4,3,7,'2022-11-10',4),(5,4,5,'2021-05-22',5),(6,6,6,'2023-08-12',6),(7,8,6,'2023-10-19',7),(8,8,7,'2022-08-11',8),(9,9,12,'2021-03-03',9),(10,11,11,'2023-07-04',10),(11,13,12,'2024-01-17',11),(12,13,14,'2023-08-22',12),(13,14,14,'2023-08-07',13),(14,15,15,'2024-02-02',14),(15,17,15,'2023-11-09',15),(16,17,12,'2023-10-10',16),(17,19,17,'2021-11-17',17),(18,20,18,'2022-10-07',18),(19,19,18,'2022-09-25',19),(20,23,22,'2022-02-17',20);
/*!40000 ALTER TABLE `userpreference` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-13 17:45:37
