-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sicat
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_05_09_035915_create_tb_usuarios_table',1),(5,'2024_05_09_040032_create_tb_encargados_table',1),(6,'2024_05_09_040113_create_tb_horarios_table',1),(7,'2024_05_09_040141_create_tb_actividades_table',1),(8,'2024_05_09_040207_create_tb_encargados_detalle_table',1),(9,'2024_05_09_040240_create_tb_eventos_table',1),(10,'2024_05_09_040327_create_tb_carreras_table',1),(11,'2024_05_09_040350_create_tb_alumnos_table',1),(12,'2024_05_09_040423_create_tb_participa_table',1),(13,'2024_05_09_040454_create_tb_pertenece_table',1),(14,'2024_05_10_035310_usuarios',1),(15,'2024_05_15_043453_sicat',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('DMNN0bl9GiSbYi6xM8pw7XLqnjDyl5FsqBj4MfA6',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV2w2TllXWlp2RkVwbWJFWDBWaGtDZzdranhXU3ZrRzRkdkJRMkNmcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmljaW8iO31zOjI6ImlkIjtpOjY7fQ==',1717967948),('TagKuFO4duax3jkuhKn67Vt1fYPl0rEatWUc8vSs',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNWtVeXVFbHVtcFVXNlZpdWJ6am9nbkRBYUtQUGtUS05uTVl2TGd0RyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmljaW8iO31zOjI6ImlkIjtpOjY7fQ==',1717980440),('XdmgS7B1gaIsCdOv7uNz2kUeU7Jo62aO1ZX5p6ds',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSjFqMVByNHgxdURDdllEUXlKNDlFeE93bE1LZTQxQjhmODU0UGxvSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbmljaW8iO31zOjI6ImlkIjtpOjY7fQ==',1717891927);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_actividades`
--

DROP TABLE IF EXISTS `tb_actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_actividades` (
  `Id_actividad_pk` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(200) NOT NULL,
  `Tipo` char(3) NOT NULL,
  PRIMARY KEY (`Id_actividad_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_actividades`
--

LOCK TABLES `tb_actividades` WRITE;
/*!40000 ALTER TABLE `tb_actividades` DISABLE KEYS */;
INSERT INTO `tb_actividades` VALUES (1,'Actividad1','DEP'),(2,'Actividad2','CUL'),(3,'Actividad3','DEP'),(4,'Actividad4','DEP'),(5,'Actividad5','CUL');
/*!40000 ALTER TABLE `tb_actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_alumnos`
--

DROP TABLE IF EXISTS `tb_alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_alumnos` (
  `Id_alumno_pk` int unsigned NOT NULL AUTO_INCREMENT,
  `Num_control` char(10) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Ap_paterno` varchar(150) NOT NULL,
  `Ap_materno` varchar(150) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Semestre` int NOT NULL,
  `Nivel` int NOT NULL,
  `Foto` text,
  `Telefono` char(12) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Id_carrera_fk` int unsigned NOT NULL,
  PRIMARY KEY (`Id_alumno_pk`),
  KEY `tb_alumnos_id_carrera_fk_foreign` (`Id_carrera_fk`),
  CONSTRAINT `tb_alumnos_id_carrera_fk_foreign` FOREIGN KEY (`Id_carrera_fk`) REFERENCES `tb_carreras` (`Id_carrera_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_alumnos`
--

LOCK TABLES `tb_alumnos` WRITE;
/*!40000 ALTER TABLE `tb_alumnos` DISABLE KEYS */;
INSERT INTO `tb_alumnos` VALUES (1,'123456','GUERECON2','Doe','Smith','M','1990-01-01',1,1,'url/to/photo','1234567890','john.doe@example.com',1),(2,'23456','Alumno2','Apellido2','Apellido2','F','2000-02-02',2,2,'foto2.jpg','2222222222','correo2@gmail.com',2),(3,'34567','Alumno3','Apellido3','Apellido3','M','2000-03-03',3,3,'foto3.jpg','3333333333','correo3@gmail.com',3),(5,'56789','Alumno5','Apellido5','Apellido5','M','2000-05-05',5,5,'foto5.jpg','5555555555','correo5@gmail.com',5),(7,'2020202020','Christopher','Guereca','Hernandez Castañeda','M','2024-05-24',2,1,'foto.jpg','34324','sadasd@asd.com',3),(8,'2020202020','Christopher','Guereca','Hernandez Castañeda','M','2024-05-24',2,2,'foto.jpg','8715081665','sadasd@asd.com',1),(9,'2020202020','Manuel Juan','Guereca','Tijerina','M','2024-05-13',2,2,'foto.jpg','8715081665','sadasd@asd.com',1),(10,'21121212','Peso','Pluma','Doble PP','M','2024-05-16',2,3,'foto.jpg','4324324','doblepp@gmail.com',2),(11,'21121212','Peso','Pluma','Doble PP','M','2024-05-16',2,3,'foto.jpg','4324324','doblepp@gmail.com',2),(12,'21121212','Peso','Pluma','Doble PP','M','2024-05-16',2,3,'foto.jpg','4324324','doblepp@gmail.com',2),(13,'21121212','Peso','Pluma','Doble PP','M','2024-05-16',2,3,'foto.jpg','4324324','doblepp@gmail.com',2),(14,'21121212','Peso','Pluma','Doble PP','M','2024-05-16',2,3,'foto.jpg','4324324','doblepp@gmail.com',2),(15,'21121212','Peso','Pluma','Doble PP','M','2024-05-16',2,3,'foto.jpg','4324324','doblepp@gmail.com',2),(18,'1234567890','John','Doe','Smith','M','2000-01-01',2,1,'url_to_photo','1234567890','john@example.com',1),(20,'1234567890','John','Doe','Smith','M','2000-01-01',2,1,'url_to_photo','1234567890','john@example.com',1),(21,'1234567890','John','Doe','Smith','M','2000-01-01',2,1,'url_to_photo','1234567890','john@example.com',1),(22,'1234567890','John','Doe','Smith','M','2000-01-01',2,1,'url_to_photo','1234567890','john@example.com',1),(23,'1234567890','John','Doe','Smith','M','2000-01-01',2,1,'url_to_photo','1234567890','john@example.com',1),(24,'1234567890','Guereca','Doe','Smith','M','2000-01-01',2,1,'url_to_photo','1234567890','john@example.com',1),(25,'1234567890','Manuel','Guereca','Tijerina','M','2000-01-01',2,1,'url_to_photo','1234567890','john@example.com',1),(26,'1234567890','Manuel','Guereca','Tijerina','M','2000-01-01',2,1,'url_to_photo','1234567890','john@example.com',1),(27,'1234567890','Manuel','Guereca','Tijerina','M','2000-01-01',2,1,'url_to_photo','1234567890','john@example.com',1);
/*!40000 ALTER TABLE `tb_alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_carreras`
--

DROP TABLE IF EXISTS `tb_carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carreras` (
  `Id_carrera_pk` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(300) NOT NULL,
  `Clave` char(20) NOT NULL,
  `Nombre_corto` char(10) NOT NULL,
  PRIMARY KEY (`Id_carrera_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carreras`
--

LOCK TABLES `tb_carreras` WRITE;
/*!40000 ALTER TABLE `tb_carreras` DISABLE KEYS */;
INSERT INTO `tb_carreras` VALUES (1,'Carrera1','CLV1','C1'),(2,'Carrera2','CLV2','C2'),(3,'Carrera3','CLV3','C3'),(4,'Carrera4','CLV4','C4'),(5,'Carrera5','CLV5','C5');
/*!40000 ALTER TABLE `tb_carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_encargados`
--

DROP TABLE IF EXISTS `tb_encargados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_encargados` (
  `Id_encargado_pk` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  `Ap_paterno` varchar(150) NOT NULL,
  `Ap_materno` varchar(150) NOT NULL,
  `Id_usuario_fk` int unsigned NOT NULL,
  PRIMARY KEY (`Id_encargado_pk`),
  KEY `tb_encargados_id_usuario_fk_foreign` (`Id_usuario_fk`),
  CONSTRAINT `tb_encargados_id_usuario_fk_foreign` FOREIGN KEY (`Id_usuario_fk`) REFERENCES `tb_usuarios` (`Id_usuario_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_encargados`
--

LOCK TABLES `tb_encargados` WRITE;
/*!40000 ALTER TABLE `tb_encargados` DISABLE KEYS */;
INSERT INTO `tb_encargados` VALUES (1,'Encargado1','Apellido1','Apellido1',1),(2,'Encargado2','Apellido2','Apellido2',2),(3,'Encargado3','Apellido3','Apellido3',3),(4,'Encargado4','Apellido4','Apellido4',4),(5,'Encargado5','Apellido5','Apellido5',5);
/*!40000 ALTER TABLE `tb_encargados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_encargados_detalle`
--

DROP TABLE IF EXISTS `tb_encargados_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_encargados_detalle` (
  `Id_encargado_fk` int unsigned NOT NULL,
  `Id_horario_fk` int unsigned NOT NULL,
  `Id_actividad_fk` int unsigned NOT NULL,
  KEY `tb_encargados_detalle_id_encargado_fk_foreign` (`Id_encargado_fk`),
  KEY `tb_encargados_detalle_id_horario_fk_foreign` (`Id_horario_fk`),
  KEY `tb_encargados_detalle_id_actividad_fk_foreign` (`Id_actividad_fk`),
  CONSTRAINT `tb_encargados_detalle_id_actividad_fk_foreign` FOREIGN KEY (`Id_actividad_fk`) REFERENCES `tb_actividades` (`Id_actividad_pk`),
  CONSTRAINT `tb_encargados_detalle_id_encargado_fk_foreign` FOREIGN KEY (`Id_encargado_fk`) REFERENCES `tb_encargados` (`Id_encargado_pk`),
  CONSTRAINT `tb_encargados_detalle_id_horario_fk_foreign` FOREIGN KEY (`Id_horario_fk`) REFERENCES `tb_horarios` (`Id_horario_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_encargados_detalle`
--

LOCK TABLES `tb_encargados_detalle` WRITE;
/*!40000 ALTER TABLE `tb_encargados_detalle` DISABLE KEYS */;
INSERT INTO `tb_encargados_detalle` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(1,11,1);
/*!40000 ALTER TABLE `tb_encargados_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_eventos`
--

DROP TABLE IF EXISTS `tb_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_eventos` (
  `Id_evento_pk` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(300) NOT NULL,
  `Lugar` varchar(300) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  PRIMARY KEY (`Id_evento_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_eventos`
--

LOCK TABLES `tb_eventos` WRITE;
/*!40000 ALTER TABLE `tb_eventos` DISABLE KEYS */;
INSERT INTO `tb_eventos` VALUES (1,'Evento1','Lugar1','2024-05-01','08:00:00'),(2,'Evento2','Lugar2','2024-05-02','09:00:00'),(3,'Evento3','Lugar3','2024-05-03','10:00:00'),(4,'Evento4','Lugar4','2024-05-04','11:00:00'),(5,'Evento5','Lugar5','2024-05-05','12:00:00');
/*!40000 ALTER TABLE `tb_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_horarios`
--

DROP TABLE IF EXISTS `tb_horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_horarios` (
  `Id_horario_pk` int unsigned NOT NULL AUTO_INCREMENT,
  `Dia` varchar(15) NOT NULL,
  `Hora_inicio` time NOT NULL,
  `Hora_fin` time NOT NULL,
  PRIMARY KEY (`Id_horario_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_horarios`
--

LOCK TABLES `tb_horarios` WRITE;
/*!40000 ALTER TABLE `tb_horarios` DISABLE KEYS */;
INSERT INTO `tb_horarios` VALUES (1,'Lunes','08:00:00','10:00:00'),(2,'Martes','09:00:00','11:00:00'),(3,'Miércoles','10:00:00','12:00:00'),(4,'Jueves','11:00:00','13:00:00'),(5,'Viernes','12:00:00','14:00:00'),(6,'L-AD-24','08:00:00','10:00:00'),(7,'L-EJ-24','10:00:00','15:00:00'),(8,'L-AD-24','08:00:00','10:00:00'),(9,'L-EJ-24','10:00:00','15:00:00'),(10,'L-EJ-24','10:00:00','15:00:00'),(11,'L-EJ-24','00:00:00','13:00:00');
/*!40000 ALTER TABLE `tb_horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_participa`
--

DROP TABLE IF EXISTS `tb_participa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_participa` (
  `Id_participa_pk` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_alumno_fk` int unsigned NOT NULL,
  `Id_evento_fk` int unsigned NOT NULL,
  PRIMARY KEY (`Id_participa_pk`),
  KEY `tb_participa_id_alumno_fk_foreign` (`Id_alumno_fk`),
  KEY `tb_participa_id_evento_fk_foreign` (`Id_evento_fk`),
  CONSTRAINT `tb_participa_id_alumno_fk_foreign` FOREIGN KEY (`Id_alumno_fk`) REFERENCES `tb_alumnos` (`Id_alumno_pk`),
  CONSTRAINT `tb_participa_id_evento_fk_foreign` FOREIGN KEY (`Id_evento_fk`) REFERENCES `tb_eventos` (`Id_evento_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_participa`
--

LOCK TABLES `tb_participa` WRITE;
/*!40000 ALTER TABLE `tb_participa` DISABLE KEYS */;
INSERT INTO `tb_participa` VALUES (1,1,1),(2,2,2),(3,3,3),(5,5,5);
/*!40000 ALTER TABLE `tb_participa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pertenece`
--

DROP TABLE IF EXISTS `tb_pertenece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pertenece` (
  `Id_pertenece_pk` int unsigned NOT NULL AUTO_INCREMENT,
  `Horas` int NOT NULL,
  `Activo` tinyint(1) NOT NULL,
  `Id_asistencia_nsql` int NOT NULL,
  `Id_actividad_fk` int unsigned NOT NULL,
  `Id_alumnos_fk` int unsigned NOT NULL,
  PRIMARY KEY (`Id_pertenece_pk`),
  KEY `tb_pertenece_id_actividad_fk_foreign` (`Id_actividad_fk`),
  KEY `tb_pertenece_id_alumnos_fk_foreign` (`Id_alumnos_fk`),
  CONSTRAINT `tb_pertenece_id_actividad_fk_foreign` FOREIGN KEY (`Id_actividad_fk`) REFERENCES `tb_actividades` (`Id_actividad_pk`),
  CONSTRAINT `tb_pertenece_id_alumnos_fk_foreign` FOREIGN KEY (`Id_alumnos_fk`) REFERENCES `tb_alumnos` (`Id_alumno_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pertenece`
--

LOCK TABLES `tb_pertenece` WRITE;
/*!40000 ALTER TABLE `tb_pertenece` DISABLE KEYS */;
INSERT INTO `tb_pertenece` VALUES (1,5,1,-1,1,23),(2,0,1,-1,1,24),(3,0,1,-1,2,25),(4,0,1,-1,1,26),(5,0,1,-1,1,27);
/*!40000 ALTER TABLE `tb_pertenece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuarios` (
  `Id_usuario_pk` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Contrasena` varchar(50) NOT NULL,
  `Tipo` int NOT NULL,
  `Cadena_qr` text NOT NULL,
  `Imagen_qr` text NOT NULL,
  `Correo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Id_usuario_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuarios`
--

LOCK TABLES `tb_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` VALUES (1,'Usuario1','contraseña1',1,'cadena_qr_1','imagen_qr_1','202310691@itslerdo.edu.mx'),(2,'Usuario2','contraseña2',2,'cadena_qr_2','imagen_qr_2','202310691@itslerdo.edu.mx'),(3,'Usuario3','contraseña3',1,'cadena_qr_3','imagen_qr_3','202310691@itslerdo.edu.mx'),(4,'Usuario4','contraseña4',2,'cadena_qr_4','imagen_qr_4','202310691@itslerdo.edu.mx'),(5,'Usuario5','contraseña5',1,'cadena_qr_5','imagen_qr_5','202310691@itslerdo.edu.mx'),(6,'admin','9ea8ce0d3c94b608a367f144edb58741ab9c125d',1,'AQUI VA LA CADENA DEL QR','RUTA DEL QR','202310691@itslerdo.edu.mx');
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_activ_cul`
--

DROP TABLE IF EXISTS `v_activ_cul`;
/*!50001 DROP VIEW IF EXISTS `v_activ_cul`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_activ_cul` AS SELECT 
 1 AS `id_actividad`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_activ_dep`
--

DROP TABLE IF EXISTS `v_activ_dep`;
/*!50001 DROP VIEW IF EXISTS `v_activ_dep`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_activ_dep` AS SELECT 
 1 AS `id_actividad`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_todoslosalumnos`
--

DROP TABLE IF EXISTS `v_todoslosalumnos`;
/*!50001 DROP VIEW IF EXISTS `v_todoslosalumnos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_todoslosalumnos` AS SELECT 
 1 AS `Id_alumno_pk`,
 1 AS `Num_control`,
 1 AS `Nombre`,
 1 AS `Ap_paterno`,
 1 AS `Ap_materno`,
 1 AS `Sexo`,
 1 AS `Fecha_nac`,
 1 AS `Semestre`,
 1 AS `Nivel`,
 1 AS `Foto`,
 1 AS `Telefono`,
 1 AS `Correo`,
 1 AS `Id_carrera_fk`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'sicat'
--

--
-- Dumping routines for database 'sicat'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_a` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_a`(
)
BEGIN
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Actualizar_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Actualizar_alumno`(
	IN _Id_alumno_pk int,
	IN _Num_control char(10), 
	IN _Nombre varchar(150),
	IN _Ap_paterno varchar(150),
	IN _Ap_materno varchar(150),
	IN _Sexo char(1),
	IN _Fecha_nac date, 
	IN _Semestre int,
	IN _Nivel int, 
	IN _Foto text,
	IN _Telefono char(12), 
	IN _Correo varchar(100), 
	IN _Id_carrera_fk int
)
BEGIN
	 UPDATE tb_alumnos 
    SET 
        num_control = _num_control,
        nombre = _nombre,
        ap_paterno = _ap_paterno,
        ap_materno = _ap_materno,
        sexo = _sexo,
        fecha_nac = _fecha_nac,
        semestre = _semestre,
        nivel = _nivel,
        foto = _foto,
        telefono = _telefono,
        correo = _correo,
        id_carrera_fk = _id_carrera_fk
    WHERE 
        id_alumno_pk = _id_alumno_pk;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AddAlumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AddAlumno`(
	_Num_control char(10), 
	_Nombre varchar(150),
	_Ap_paterno varchar(150), 
	_Ap_materno varchar(150), 
	_Sexo char(1), 
	_Fecha_nac date, 
	_Semestre int, 
	_Nivel int, 
	_Foto text,
	_Telefono char(12), 
	_Correo varchar(100), 
	_Id_carrera int
)
BEGIN
	IF(_Semestre IS NULL OR _Semestre<1)
		THEN
			SET _Semestre=1;
        END IF;
        
        IF(_Nivel IS NULL OR _Nivel<1)
		THEN
			SET _Nivel=1;
        END IF;
        
	IF EXISTS(SELECT id_carrera_pk FROM tb_carreras WHERE id_carrera_pk=_Id_carrera)
    THEN
        INSERT INTO tb_alumnos (Num_control, Nombre, Ap_paterno, Ap_materno, Sexo, Fecha_nac, Semestre, Nivel, Foto, Id_carrera_fk, Telefono, Correo)
        VALUES (_Num_control, _Nombre, _Ap_paterno, _Ap_materno, _Sexo, _Fecha_nac, _Semestre, _Nivel, _Foto, _Id_carrera, _Telefono, _Correo);
    ELSE
        SELECT  "No se esncontro la carrera" as msg;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminar_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_alumno`(
	IN _Id_alumno_pk int
)
BEGIN
	DELETE FROM tb_participa WHERE Id_alumno_fk = _Id_alumno_pk;
	  -- Eliminar los registros relacionados en la tabla tb_pertenece
    DELETE FROM tb_pertenece WHERE Id_alumnos_fk = _Id_alumno_pk;

    -- Eliminar el alumno en la tabla tb_alumnos
    DELETE FROM tb_alumnos WHERE id_alumno_pk = _Id_alumno_pk;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Insertar_Alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Insertar_Alumno`(
    IN _Id_alumno_pk int,
	IN _Num_control char(10), 
	IN _Nombre varchar(150),
	IN _Ap_paterno varchar(150),
	IN _Ap_materno varchar(150),
	IN _Sexo char(1),
	IN _Fecha_nac date, 
	IN _Semestre int,
	IN _Nivel int, 
	IN _Foto text,
	IN _Telefono char(12), 
	IN _Correo varchar(100), 
	IN _Id_carrera_fk int
)
BEGIN
	INSERT INTO tb_alumnos (id_alumno_pk,num_control,nombre,ap_paterno,ap_materno,sexo,fecha_nac,semestre,nivel,foto,telefono,correo,id_carrera_fk) 
    VALUES (_id_alumno_pk,_num_control,_nombre,_ap_paterno,_ap_materno,_sexo,_fecha_nac,_semestre,_nivel,_foto,_telefono,_correo,_id_carrera_fk);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Insertar_Alumno_Actividad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Insertar_Alumno_Actividad`(
	IN _Id_actividad int,
	IN _Num_control char(10), 
	IN _Nombre varchar(150),
	IN _Ap_paterno varchar(150),
	IN _Ap_materno varchar(150),
	IN _Sexo char(1),
	IN _Fecha_nac date, 
	IN _Semestre int,
	IN _Nivel int, 
	IN _Foto text,
	IN _Telefono char(12), 
	IN _Correo varchar(100), 
	IN _Id_carrera_fk int
)
BEGIN
	DECLARE _id_alumno INT;
    
	IF EXISTS(SELECT Id_actividad_pk FROM tb_actividades WHERE Id_actividad_pk=_Id_actividad) 
    THEN
		INSERT INTO tb_alumnos
		(num_control,nombre,ap_paterno,ap_materno,sexo,fecha_nac,semestre,nivel,foto,telefono,correo,id_carrera_fk) 
		VALUES (_num_control,_nombre,_ap_paterno,_ap_materno,_sexo,_fecha_nac,_semestre,_nivel,_foto,_telefono,_correo,_id_carrera_fk);
        
        SET _id_alumno = LAST_INSERT_ID();
		
		INSERT INTO tb_pertenece (Horas,Activo,Id_actividad_fk,Id_alumnos_fk,id_asistencia_nsql)
		VALUES (0,1,_Id_actividad,_Id_alumno,-1);
        
		SELECT 'Alumno insertado' AS mensaje;
	ELSE
		SELECT 'Error no existe la actividad' AS mensaje;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_login`(
    IN _Nombre_usuario VARCHAR(50),
    IN _Contrasena VARCHAR(50),
    OUT _Tipo VARCHAR(20),
    OUT _IdUsuario INT
)
BEGIN

    IF EXISTS(
        (SELECT us.Id_usuario_pk FROM tb_usuarios as us 
        WHERE (us.nombre = _Nombre_usuario COLLATE utf8mb4_unicode_ci) 
        AND (us.contrasena = _Contrasena COLLATE utf8mb4_unicode_ci))
    )
    THEN
        SET _IdUsuario = (
            SELECT us.Id_usuario_pk FROM tb_usuarios as us 
            WHERE (us.nombre = _Nombre_usuario COLLATE utf8mb4_unicode_ci) 
            AND (us.contrasena = _Contrasena COLLATE utf8mb4_unicode_ci)
        );
        
        SET _Tipo = (
            SELECT us.tipo FROM tb_usuarios as us 
            WHERE (us.nombre = _Nombre_usuario COLLATE utf8mb4_unicode_ci) 
            AND (us.contrasena = _Contrasena COLLATE utf8mb4_unicode_ci)
        );
    ELSE
        SET _IdUsuario = -1;
        SET _Tipo = 'No Existe';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Modificar_Alumno_Actividad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Modificar_Alumno_Actividad`(
    IN _Id_alumno int,
    IN _Id_actividad int,
    IN _Horas int,
    IN _Activo tinyint(1),
    IN _Num_control char(10), 
    IN _Nombre varchar(150),
    IN _Ap_paterno varchar(150),
    IN _Ap_materno varchar(150),
    IN _Sexo char(1),
    IN _Fecha_nac date, 
    IN _Semestre int,
    IN _Nivel int, 
    IN _Foto text,
    IN _Telefono char(12), 
    IN _Correo varchar(100), 
    IN _Id_carrera_fk int
)
BEGIN
    IF EXISTS(SELECT Id_actividad_pk FROM tb_actividades WHERE Id_actividad_pk=_Id_actividad)
    THEN
        IF EXISTS(SELECT id_alumno_pk FROM tb_alumnos WHERE id_alumno_pk = _Id_alumno)
        THEN
            IF EXISTS(SELECT id_pertenece_pk FROM tb_pertenece WHERE Id_actividad_fk = _Id_actividad AND Id_alumnos_fk = _Id_alumno)
            THEN
                UPDATE tb_alumnos
                SET num_control = _Num_control,
                    nombre = _Nombre,
                    ap_paterno = _Ap_paterno,
                    ap_materno = _Ap_materno,
                    sexo = _Sexo,
                    fecha_nac = _Fecha_nac,
                    semestre = _Semestre,
                    nivel = _Nivel,
                    foto = _Foto,
                    telefono = _Telefono,
                    correo = _Correo,
                    id_carrera_fk = _Id_carrera_fk
                WHERE id_alumno_pk = _Id_alumno;
                
                UPDATE tb_pertenece
                SET 
                    Horas = _Horas,
                    Activo = _Activo,
                    id_asistencia_nsql = -1
                WHERE 
                    Id_actividad_fk = _Id_actividad AND Id_alumnos_fk = _Id_alumno;

                SELECT 'Alumno actualizado' AS mensaje;
            ELSE
                SELECT 'El alumno no pertenece a la actividad' AS mensaje;
            END IF;
        ELSE
            SELECT 'No existe el alumno' AS mensaje;
        END IF;
    ELSE
        SELECT 'No existe la actividad' AS mensaje;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Seleccionar_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Seleccionar_alumno`(
   IN _id_alumno INT
)
BEGIN
	SELECT * FROM tb_alumnos WHERE id_alumno_pk = _id_alumno;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ShowAlumnos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ShowAlumnos`(
    _NumControl CHAR(10),
    _Nombre VARCHAR(150),
    _Sexo CHAR(1), 
    _Semestre INT, 
    _Nivel INT, 
    _IdCarrera INT
)
BEGIN
    SELECT 
		a.Id_alumno_pk AS id_alumno,
        a.Num_control AS num_con, 
        a.Nombre AS nom_a, 
        a.Ap_paterno AS ApP, 
        a.Ap_Materno AS ApM, 
        a.Sexo AS sex, 
        c.Nombre AS Carrera, 
        a.Semestre AS sem 
    FROM 
        tb_alumnos AS a
    INNER JOIN 
        tb_carreras AS c ON a.id_carrera_fk = c.id_carrera_pk
    WHERE 
        (a.Num_control LIKE CONCAT(_NumControl, '%') OR _NumControl IS NULL OR _NumControl = 'todos')
        AND (a.Nombre LIKE CONCAT(_Nombre, '%') OR _Nombre IS NULL OR _Nombre = 'todos')
        AND (a.Sexo = _Sexo OR _Sexo = 'X' OR _Sexo IS NULL)
        AND (a.Semestre = _Semestre OR _Semestre IS NULL OR _Semestre = 0)
        AND (a.Nivel = _Nivel OR _Nivel IS NULL OR _Nivel = 0)
        AND (a.id_carrera_fk = _IdCarrera OR _IdCarrera IS NULL OR _IdCarrera = 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ShowCarreras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ShowCarreras`(
	
)
BEGIN
	SELECT id_carrera_pk,Nombre FROM tb_Carreras;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ValidarHorarioProfesor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ValidarHorarioProfesor`(
    IN _id_encargado INT,
    IN _dia_actual VARCHAR(15),
    IN _hora_actual TIME,
    OUT _es_valido BOOLEAN
)
BEGIN
    -- Verificar si la hora actual está dentro del horario del profesor
    IF EXISTS (
        SELECT 1 
        FROM tb_horarios AS h
        INNER JOIN tb_encargados_detalle AS ed ON h.Id_horario_pk = ed.Id_horario_fk
        WHERE ed.Id_encargado_fk = _id_encargado
        AND h.Dia = _dia_actual
        AND _hora_actual BETWEEN h.Hora_inicio AND h.Hora_fin
    )
    THEN
        SET _es_valido = TRUE;
    ELSE
        SET _es_valido = FALSE;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_activ_cul`
--

/*!50001 DROP VIEW IF EXISTS `v_activ_cul`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_activ_cul` AS select `tb_actividades`.`Id_actividad_pk` AS `id_actividad`,`tb_actividades`.`Nombre` AS `Nombre` from `tb_actividades` where (`tb_actividades`.`Tipo` = 'CUL') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_activ_dep`
--

/*!50001 DROP VIEW IF EXISTS `v_activ_dep`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_activ_dep` AS select `tb_actividades`.`Id_actividad_pk` AS `id_actividad`,`tb_actividades`.`Nombre` AS `Nombre` from `tb_actividades` where (`tb_actividades`.`Tipo` = 'DEP') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_todoslosalumnos`
--

/*!50001 DROP VIEW IF EXISTS `v_todoslosalumnos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_todoslosalumnos` AS select `tb_alumnos`.`Id_alumno_pk` AS `Id_alumno_pk`,`tb_alumnos`.`Num_control` AS `Num_control`,`tb_alumnos`.`Nombre` AS `Nombre`,`tb_alumnos`.`Ap_paterno` AS `Ap_paterno`,`tb_alumnos`.`Ap_materno` AS `Ap_materno`,`tb_alumnos`.`Sexo` AS `Sexo`,`tb_alumnos`.`Fecha_nac` AS `Fecha_nac`,`tb_alumnos`.`Semestre` AS `Semestre`,`tb_alumnos`.`Nivel` AS `Nivel`,`tb_alumnos`.`Foto` AS `Foto`,`tb_alumnos`.`Telefono` AS `Telefono`,`tb_alumnos`.`Correo` AS `Correo`,`tb_alumnos`.`Id_carrera_fk` AS `Id_carrera_fk` from `tb_alumnos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-10  3:30:16
