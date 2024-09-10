-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add error_dim',7,'add_error_dim'),(26,'Can change error_dim',7,'change_error_dim'),(27,'Can delete error_dim',7,'delete_error_dim'),(28,'Can view error_dim',7,'view_error_dim'),(29,'Can add specerror_dim',8,'add_specerror_dim'),(30,'Can change specerror_dim',8,'change_specerror_dim'),(31,'Can delete specerror_dim',8,'delete_specerror_dim'),(32,'Can view specerror_dim',8,'view_specerror_dim'),(33,'Can add lot_dim',9,'add_lot_dim'),(34,'Can change lot_dim',9,'change_lot_dim'),(35,'Can delete lot_dim',9,'delete_lot_dim'),(36,'Can view lot_dim',9,'view_lot_dim'),(37,'Can add can_dim',10,'add_can_dim'),(38,'Can change can_dim',10,'change_can_dim'),(39,'Can delete can_dim',10,'delete_can_dim'),(40,'Can view can_dim',10,'view_can_dim'),(41,'Can add model_dim',11,'add_model_dim'),(42,'Can change model_dim',11,'change_model_dim'),(43,'Can delete model_dim',11,'delete_model_dim'),(44,'Can view model_dim',11,'view_model_dim'),(45,'Can add category_dim',12,'add_category_dim'),(46,'Can change category_dim',12,'change_category_dim'),(47,'Can delete category_dim',12,'delete_category_dim'),(48,'Can view category_dim',12,'view_category_dim'),(49,'Can add lot_ can_info',13,'add_lot_can_info'),(50,'Can change lot_ can_info',13,'change_lot_can_info'),(51,'Can delete lot_ can_info',13,'delete_lot_can_info'),(52,'Can view lot_ can_info',13,'view_lot_can_info'),(53,'Can add spec_info',14,'add_spec_info'),(54,'Can change spec_info',14,'change_spec_info'),(55,'Can delete spec_info',14,'delete_spec_info'),(56,'Can view spec_info',14,'view_spec_info'),(57,'Can add error_info',15,'add_error_info'),(58,'Can change error_info',15,'change_error_info'),(59,'Can delete error_info',15,'delete_error_info'),(60,'Can view error_info',15,'view_error_info'),(61,'Can add model_lc',16,'add_model_lc'),(62,'Can change model_lc',16,'change_model_lc'),(63,'Can delete model_lc',16,'delete_model_lc'),(64,'Can view model_lc',16,'view_model_lc'),(65,'Can add cate_model',17,'add_cate_model'),(66,'Can change cate_model',17,'change_cate_model'),(67,'Can delete cate_model',17,'delete_cate_model'),(68,'Can view cate_model',17,'view_cate_model');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$qq2FD2f1capwNslNpcPf1k$ogoMlmLmJfQ3Xp0iGfsd3cUVnZMJtCHXBjJBfWPsZFg=',NULL,1,'davidnam','','','nam@gmail.com',1,1,'2024-09-09 08:03:33.362311'),(2,'pbkdf2_sha256$390000$36fozoiZMsLkzmIMEnjQNc$lf5k2b5zJAsbW0IPon7Wid1VQDJf7HSBnqvTUX15zgg=',NULL,1,'trong','','','KNT21617@local.nmcorp.nissan.biz',1,1,'2024-09-10 07:04:09.010799');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'main_process','can_dim'),(17,'main_process','cate_model'),(12,'main_process','category_dim'),(7,'main_process','error_dim'),(15,'main_process','error_info'),(13,'main_process','lot_can_info'),(9,'main_process','lot_dim'),(11,'main_process','model_dim'),(16,'main_process','model_lc'),(14,'main_process','spec_info'),(8,'main_process','specerror_dim'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-09 07:59:58.894898'),(2,'auth','0001_initial','2024-09-09 07:59:59.099569'),(3,'admin','0001_initial','2024-09-09 07:59:59.158411'),(4,'admin','0002_logentry_remove_auto_add','2024-09-09 07:59:59.164197'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-09 07:59:59.169864'),(6,'contenttypes','0002_remove_content_type_name','2024-09-09 07:59:59.205163'),(7,'auth','0002_alter_permission_name_max_length','2024-09-09 07:59:59.223268'),(8,'auth','0003_alter_user_email_max_length','2024-09-09 07:59:59.238794'),(9,'auth','0004_alter_user_username_opts','2024-09-09 07:59:59.243425'),(10,'auth','0005_alter_user_last_login_null','2024-09-09 07:59:59.262047'),(11,'auth','0006_require_contenttypes_0002','2024-09-09 07:59:59.263282'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-09 07:59:59.270104'),(13,'auth','0008_alter_user_username_max_length','2024-09-09 07:59:59.288174'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-09 07:59:59.334589'),(15,'auth','0010_alter_group_name_max_length','2024-09-09 07:59:59.352343'),(16,'auth','0011_update_proxy_permissions','2024-09-09 07:59:59.359019'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-09 07:59:59.376987'),(18,'sessions','0001_initial','2024-09-09 07:59:59.387090'),(19,'main_process','0001_initial','2024-09-09 08:01:39.906054');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_can_dim`
--

DROP TABLE IF EXISTS `main_process_can_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_can_dim` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Can_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_can_dim`
--

LOCK TABLES `main_process_can_dim` WRITE;
/*!40000 ALTER TABLE `main_process_can_dim` DISABLE KEYS */;
INSERT INTO `main_process_can_dim` VALUES (1,'C1A-HSevo'),(2,'C1A-HS'),(3,'C1A-HS(Sweet200)');
/*!40000 ALTER TABLE `main_process_can_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_cate_model`
--

DROP TABLE IF EXISTS `main_process_cate_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_cate_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Category_ID_id` bigint NOT NULL,
  `Model_lc_ID_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_process_cate_mo_Category_ID_id_8de86fa2_fk_main_proc` (`Category_ID_id`),
  KEY `main_process_cate_mo_Model_lc_ID_id_b300ebf7_fk_main_proc` (`Model_lc_ID_id`),
  CONSTRAINT `main_process_cate_mo_Category_ID_id_8de86fa2_fk_main_proc` FOREIGN KEY (`Category_ID_id`) REFERENCES `main_process_category_dim` (`id`),
  CONSTRAINT `main_process_cate_mo_Model_lc_ID_id_b300ebf7_fk_main_proc` FOREIGN KEY (`Model_lc_ID_id`) REFERENCES `main_process_model_lc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_cate_model`
--

LOCK TABLES `main_process_cate_model` WRITE;
/*!40000 ALTER TABLE `main_process_cate_model` DISABLE KEYS */;
INSERT INTO `main_process_cate_model` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `main_process_cate_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_category_dim`
--

DROP TABLE IF EXISTS `main_process_category_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_category_dim` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Category_name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_category_dim`
--

LOCK TABLES `main_process_category_dim` WRITE;
/*!40000 ALTER TABLE `main_process_category_dim` DISABLE KEYS */;
INSERT INTO `main_process_category_dim` VALUES (1,'BCM'),(2,'METER'),(3,'IVI');
/*!40000 ALTER TABLE `main_process_category_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_error_dim`
--

DROP TABLE IF EXISTS `main_process_error_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_error_dim` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Error_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_error_dim`
--

LOCK TABLES `main_process_error_dim` WRITE;
/*!40000 ALTER TABLE `main_process_error_dim` DISABLE KEYS */;
INSERT INTO `main_process_error_dim` VALUES (1,'事前検出ミス'),(2,'過去不具合');
/*!40000 ALTER TABLE `main_process_error_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_error_info`
--

DROP TABLE IF EXISTS `main_process_error_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_error_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Error_portfolio` longtext NOT NULL,
  `Error_reason` longtext NOT NULL,
  `Error_case_ID_id` bigint NOT NULL,
  `Spec_ID_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_process_error_i_Spec_ID_id_50abf38a_fk_main_proc` (`Spec_ID_id`),
  KEY `main_process_error_i_Error_case_ID_id_4461e5d0_fk_main_proc` (`Error_case_ID_id`),
  CONSTRAINT `main_process_error_i_Error_case_ID_id_4461e5d0_fk_main_proc` FOREIGN KEY (`Error_case_ID_id`) REFERENCES `main_process_error_dim` (`id`),
  CONSTRAINT `main_process_error_i_Spec_ID_id_50abf38a_fk_main_proc` FOREIGN KEY (`Spec_ID_id`) REFERENCES `main_process_spec_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_error_info`
--

LOCK TABLES `main_process_error_info` WRITE;
/*!40000 ALTER TABLE `main_process_error_info` DISABLE KEYS */;
INSERT INTO `main_process_error_info` VALUES (1,'LOCK_RESERVATION_ACCEPT_COND_CF','BCM設計纏めミス',1,1),(2,'GO_TO_SERVICE_POSITION_TM_CF','Wiping',1,2),(3,'E_B_REAR_FOG_WITHOUT_PWM_1_CF','Lamp設計回答間違い',1,3);
/*!40000 ALTER TABLE `main_process_error_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_lot_can_info`
--

DROP TABLE IF EXISTS `main_process_lot_can_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_lot_can_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Can_ID_id` bigint NOT NULL,
  `Lot_ID_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_process_lot_can_Lot_ID_id_4fe3665d_fk_main_proc` (`Lot_ID_id`),
  KEY `main_process_lot_can_Can_ID_id_52a76f19_fk_main_proc` (`Can_ID_id`),
  CONSTRAINT `main_process_lot_can_Can_ID_id_52a76f19_fk_main_proc` FOREIGN KEY (`Can_ID_id`) REFERENCES `main_process_can_dim` (`id`),
  CONSTRAINT `main_process_lot_can_Lot_ID_id_4fe3665d_fk_main_proc` FOREIGN KEY (`Lot_ID_id`) REFERENCES `main_process_lot_dim` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_lot_can_info`
--

LOCK TABLES `main_process_lot_can_info` WRITE;
/*!40000 ALTER TABLE `main_process_lot_can_info` DISABLE KEYS */;
INSERT INTO `main_process_lot_can_info` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `main_process_lot_can_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_lot_dim`
--

DROP TABLE IF EXISTS `main_process_lot_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_lot_dim` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Lot_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_lot_dim`
--

LOCK TABLES `main_process_lot_dim` WRITE;
/*!40000 ALTER TABLE `main_process_lot_dim` DISABLE KEYS */;
INSERT INTO `main_process_lot_dim` VALUES (1,'VC'),(2,'EIPF＃１');
/*!40000 ALTER TABLE `main_process_lot_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_model_dim`
--

DROP TABLE IF EXISTS `main_process_model_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_model_dim` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Model_name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_model_dim`
--

LOCK TABLES `main_process_model_dim` WRITE;
/*!40000 ALTER TABLE `main_process_model_dim` DISABLE KEYS */;
INSERT INTO `main_process_model_dim` VALUES (1,'PZ1D'),(2,'PZ1H');
/*!40000 ALTER TABLE `main_process_model_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_model_lc`
--

DROP TABLE IF EXISTS `main_process_model_lc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_model_lc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Error_info_ID_id` bigint NOT NULL,
  `Lot_Can_ID_id` bigint NOT NULL,
  `Model_ID_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_process_model_l_Error_info_ID_id_95c259a7_fk_main_proc` (`Error_info_ID_id`),
  KEY `main_process_model_l_Lot_Can_ID_id_1503d5a3_fk_main_proc` (`Lot_Can_ID_id`),
  KEY `main_process_model_l_Model_ID_id_1b3914e8_fk_main_proc` (`Model_ID_id`),
  CONSTRAINT `main_process_model_l_Error_info_ID_id_95c259a7_fk_main_proc` FOREIGN KEY (`Error_info_ID_id`) REFERENCES `main_process_error_info` (`id`),
  CONSTRAINT `main_process_model_l_Lot_Can_ID_id_1503d5a3_fk_main_proc` FOREIGN KEY (`Lot_Can_ID_id`) REFERENCES `main_process_lot_can_info` (`id`),
  CONSTRAINT `main_process_model_l_Model_ID_id_1b3914e8_fk_main_proc` FOREIGN KEY (`Model_ID_id`) REFERENCES `main_process_model_dim` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_model_lc`
--

LOCK TABLES `main_process_model_lc` WRITE;
/*!40000 ALTER TABLE `main_process_model_lc` DISABLE KEYS */;
INSERT INTO `main_process_model_lc` VALUES (1,1,1,1),(2,3,2,2);
/*!40000 ALTER TABLE `main_process_model_lc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_spec_info`
--

DROP TABLE IF EXISTS `main_process_spec_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_spec_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Spec_correct` varchar(50) NOT NULL,
  `update_at` varchar(50) NOT NULL,
  `Spec_error_ID_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_process_spec_in_Spec_error_ID_id_2be1f8ad_fk_main_proc` (`Spec_error_ID_id`),
  CONSTRAINT `main_process_spec_in_Spec_error_ID_id_2be1f8ad_fk_main_proc` FOREIGN KEY (`Spec_error_ID_id`) REFERENCES `main_process_specerror_dim` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_spec_info`
--

LOCK TABLES `main_process_spec_info` WRITE;
/*!40000 ALTER TABLE `main_process_spec_info` DISABLE KEYS */;
INSERT INTO `main_process_spec_info` VALUES (1,'ALL=0(PSD無し）','27/02/2024',1),(2,'750s','27/02/2024',2),(3,'ALL=1','16/04/2024',3);
/*!40000 ALTER TABLE `main_process_spec_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_specerror_dim`
--

DROP TABLE IF EXISTS `main_process_specerror_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_specerror_dim` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Spec_error` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_specerror_dim`
--

LOCK TABLES `main_process_specerror_dim` WRITE;
/*!40000 ALTER TABLE `main_process_specerror_dim` DISABLE KEYS */;
INSERT INTO `main_process_specerror_dim` VALUES (1,'ALL=1'),(2,'0s'),(3,'ALL=0');
/*!40000 ALTER TABLE `main_process_specerror_dim` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-10 17:04:40
