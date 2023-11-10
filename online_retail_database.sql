-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: online_retail_database
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
-- Table structure for table `kategori_product`
--

DROP TABLE IF EXISTS `kategori_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_product`
--

LOCK TABLES `kategori_product` WRITE;
/*!40000 ALTER TABLE `kategori_product` DISABLE KEYS */;
INSERT INTO `kategori_product` VALUES (1,'Elektronik'),(2,'Fashion'),(3,'Otomotif'),(4,'Buku'),(5,'Kesehatan'),(6,'Olahraga'),(7,'Perhiasan'),(8,'Alat Rumah Tangga'),(9,'Mainan'),(10,'Hobi'),(11,'Makanan'),(12,'Minuman'),(13,'Kecantikan');
/*!40000 ALTER TABLE `kategori_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelanggan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` VALUES (1,'Ajeng','081234567890','Bandung Raya'),(2,'Dodo','082345678901','Cikarang Pusat'),(3,'Bagas','083456789012','Madiun'),(4,'Eva','084567890123','Surabaya Timur'),(5,'Fika','085678901234','Semarang Utara'),(6,'Gilang','086789012345','Yogyakarta Selatan'),(7,'Hana','087890123456','Malang Tengah'),(8,'Irfan','088901234567','Denpasar Barat'),(9,'Joko','089012345678','Solo Timur'),(10,'Kiki','081123456789','Medan Pusat'),(11,'Lina','082234567890','Pekanbaru Utara'),(12,'Mika','083345678901','Bandar Lampung Selatan'),(13,'Nina','084456789012','Makassar Baru'),(14,'Oscar','085567890123','Manado Utara'),(15,'Pandu','086678901234','Palembang Selatan');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_product` varchar(25) NOT NULL,
  `kategori_id` int DEFAULT NULL,
  `harga` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kategori_id` (`kategori_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Laptop',1,8000000),(2,'Dress',2,350000),(3,'Mobil',3,300000000),(4,'Buku_pemrograman',4,150000),(5,'Vitamin',5,50000),(6,'Sepatu',6,200000),(7,'Anting',7,750000),(8,'Blender',8,300000),(9,'ActionFigure',9,100000),(10,'Cat',10,25000),(11,'Snack',11,20000),(13,'Lipstik',13,75000),(14,'Smartphone',1,12000000),(15,'T-shirt',2,150000),(16,'Motor',3,25000000),(17,'Novel',4,80000),(18,'Masker',5,10000),(19,'SepatuFutsal',6,180000),(20,'Gelang',7,500000),(21,'Blender',8,350000),(22,'ActionFigure',9,120000),(23,'CatAkrilik',10,30000),(24,'Coklat',11,25000),(25,'Jus',12,10000),(26,'Perfume',13,200000),(27,'LaptopHP',1,7000000),(28,'Hoodie',2,200000),(29,'MotorYamaha',3,20000000),(30,'Powerbank',1,200000),(31,'Sound',1,350000),(32,'Tv',1,3000000);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tanggal_transaksi` date NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `pelanggan_id` int NOT NULL,
  `nominal_transaksi` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pelanggan_id` (`pelanggan_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`),
  CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (1,'2021-03-15',1,2,1,16000000),(2,'2021-06-22',3,1,2,300000000),(3,'2021-09-10',5,3,3,150000),(4,'2021-11-05',7,1,4,750000),(5,'2022-02-18',9,2,5,200000),(6,'2022-05-30',11,1,6,20000),(7,'2022-08-11',13,4,7,300000),(8,'2022-10-29',15,2,8,300000),(9,'2022-01-14',17,3,9,240000),(10,'2022-04-08',19,1,10,180000),(11,'2022-07-03',21,2,11,700000),(12,'2022-12-19',23,1,12,30000),(13,'2023-02-27',25,3,13,30000),(14,'2023-04-14',27,1,14,7000000),(15,'2023-06-09',29,2,15,40000000),(16,'2021-01-05',2,2,1,700000),(17,'2021-04-10',4,1,2,150000),(18,'2021-07-22',6,3,3,600000),(19,'2021-10-15',8,1,4,300000),(20,'2022-01-28',10,2,5,50000),(21,'2021-03-15',1,2,1,16000000),(22,'2021-06-22',3,1,2,300000000),(23,'2021-09-10',5,3,3,150000),(24,'2021-11-05',7,1,4,750000),(25,'2022-02-18',9,2,5,200000),(26,'2022-05-30',11,1,6,20000),(27,'2022-08-11',13,4,7,300000),(28,'2022-10-29',15,2,8,300000),(29,'2022-01-14',17,3,9,240000),(30,'2022-04-08',19,1,10,180000),(31,'2022-07-03',21,2,11,700000),(32,'2022-12-19',23,1,12,30000),(33,'2023-02-27',25,3,13,30000),(34,'2023-04-14',27,1,14,7000000),(35,'2023-06-09',29,2,15,40000000),(36,'2021-01-05',2,2,1,700000),(37,'2021-04-10',4,1,2,150000),(38,'2021-07-22',6,3,3,600000),(39,'2021-10-15',8,1,4,300000),(40,'2022-01-28',10,2,5,50000),(41,'2023-11-15',1,3,1,24000000),(42,'2023-11-15',2,10,1,3500000),(43,'2023-11-15',3,6,1,1800000000),(44,'2023-11-15',3,6,1,1800000000),(45,'2023-11-10',1,1,2,8000000),(46,'2023-11-10',1,1,2,8000000),(47,'2023-11-10',1,1,2,8000000),(48,'2023-11-01',7,1,6,750000),(49,'2023-11-30',7,1,6,750000);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 13:42:31
