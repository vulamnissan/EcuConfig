-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	9.0.1

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add department',6,'add_department'),(22,'Can change department',6,'change_department'),(23,'Can delete department',6,'delete_department'),(24,'Can view department',6,'view_department'),(25,'Can add ecu',7,'add_ecu'),(26,'Can change ecu',7,'change_ecu'),(27,'Can delete ecu',7,'delete_ecu'),(28,'Can view ecu',7,'view_ecu'),(29,'Can add event_infor',8,'add_event_infor'),(30,'Can change event_infor',8,'change_event_infor'),(31,'Can delete event_infor',8,'delete_event_infor'),(32,'Can view event_infor',8,'view_event_infor'),(33,'Can add unit',9,'add_unit'),(34,'Can change unit',9,'change_unit'),(35,'Can delete unit',9,'delete_unit'),(36,'Can view unit',9,'view_unit'),(37,'Can add user',10,'add_custom_user'),(38,'Can change user',10,'change_custom_user'),(39,'Can delete user',10,'delete_custom_user'),(40,'Can view user',10,'view_custom_user'),(41,'Can add department_unit',11,'add_department_unit'),(42,'Can change department_unit',11,'change_department_unit'),(43,'Can delete department_unit',11,'delete_department_unit'),(44,'Can view department_unit',11,'view_department_unit'),(45,'Can add config',12,'add_config'),(46,'Can change config',12,'change_config'),(47,'Can delete config',12,'delete_config'),(48,'Can view config',12,'view_config'),(49,'Can add group_infor',13,'add_group_infor'),(50,'Can change group_infor',13,'change_group_infor'),(51,'Can delete group_infor',13,'delete_group_infor'),(52,'Can view group_infor',13,'view_group_infor'),(53,'Can add manage_project',14,'add_manage_project'),(54,'Can change manage_project',14,'change_manage_project'),(55,'Can delete manage_project',14,'delete_manage_project'),(56,'Can view manage_project',14,'view_manage_project'),(57,'Can add project_info',15,'add_project_info'),(58,'Can change project_info',15,'change_project_info'),(59,'Can delete project_info',15,'delete_project_info'),(60,'Can view project_info',15,'view_project_info'),(61,'Can add issue',16,'add_issue'),(62,'Can change issue',16,'change_issue'),(63,'Can delete issue',16,'delete_issue'),(64,'Can view issue',16,'view_issue');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_main_process_custom_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_main_process_custom_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_process_custom_user` (`id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(12,'main_process','config'),(10,'main_process','custom_user'),(6,'main_process','department'),(11,'main_process','department_unit'),(7,'main_process','ecu'),(8,'main_process','event_infor'),(13,'main_process','group_infor'),(16,'main_process','issue'),(14,'main_process','manage_project'),(15,'main_process','project_info'),(9,'main_process','unit'),(5,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-23 06:38:03.071038'),(2,'contenttypes','0002_remove_content_type_name','2024-09-23 06:38:03.085368'),(3,'auth','0001_initial','2024-09-23 06:38:03.134603'),(4,'auth','0002_alter_permission_name_max_length','2024-09-23 06:38:03.146698'),(5,'auth','0003_alter_user_email_max_length','2024-09-23 06:38:03.149113'),(6,'auth','0004_alter_user_username_opts','2024-09-23 06:38:03.151460'),(7,'auth','0005_alter_user_last_login_null','2024-09-23 06:38:03.153623'),(8,'auth','0006_require_contenttypes_0002','2024-09-23 06:38:03.154950'),(9,'auth','0007_alter_validators_add_error_messages','2024-09-23 06:38:03.158810'),(10,'auth','0008_alter_user_username_max_length','2024-09-23 06:38:03.161707'),(11,'auth','0009_alter_user_last_name_max_length','2024-09-23 06:38:03.163480'),(12,'auth','0010_alter_group_name_max_length','2024-09-23 06:38:03.168275'),(13,'auth','0011_update_proxy_permissions','2024-09-23 06:38:03.171639'),(14,'auth','0012_alter_user_first_name_max_length','2024-09-23 06:38:03.173582'),(15,'main_process','0001_initial','2024-09-23 06:38:03.395582'),(16,'admin','0001_initial','2024-09-23 06:38:03.421701'),(17,'admin','0002_logentry_remove_auto_add','2024-09-23 06:38:03.424400'),(18,'admin','0003_logentry_add_action_flag_choices','2024-09-23 06:38:03.427277'),(19,'sessions','0001_initial','2024-09-23 06:38:03.433404'),(20,'main_process','0002_alter_issue_can_name_alter_issue_comment_des_and_more','2024-09-23 07:23:11.906314'),(21,'main_process','0003_alter_event_infor_base_event_and_more','2024-09-23 07:58:51.429780');
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
-- Table structure for table `main_process_config`
--

DROP TABLE IF EXISTS `main_process_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Config_infor` json NOT NULL,
  `ecu_id_id` bigint NOT NULL,
  `event_infor_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_process_config_ecu_id_id_fde927bc_fk_main_process_ecu_id` (`ecu_id_id`),
  KEY `main_process_config_event_infor_id_id_b41884f2_fk_main_proc` (`event_infor_id_id`),
  CONSTRAINT `main_process_config_ecu_id_id_fde927bc_fk_main_process_ecu_id` FOREIGN KEY (`ecu_id_id`) REFERENCES `main_process_ecu` (`id`),
  CONSTRAINT `main_process_config_event_infor_id_id_b41884f2_fk_main_proc` FOREIGN KEY (`event_infor_id_id`) REFERENCES `main_process_event_infor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_config`
--

LOCK TABLES `main_process_config` WRITE;
/*!40000 ALTER TABLE `main_process_config` DISABLE KEYS */;
INSERT INTO `main_process_config` VALUES (1,'{\"0\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"UNIT\\nユニット\", \"8\": \"ATMT\", \"9\": \"CVTCU\", \"10\": \"ABS/VDC\", \"11\": \"ABS/VDC\", \"12\": \"ABS/VDC\", \"13\": \"PKB\"}, \"1\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"Department\\n部署\", \"8\": \"UZ1/EK1(ICE分)\\nUM1(e-Power分)\", \"9\": \"UZ1/EK1(ICE分)\\nUM1(e-Power分)\", \"10\": \"2C3\\n2VC\", \"11\": \"2C3\\n2VC\", \"12\": \"2C3\\n2VC\", \"13\": \"XJB\"}, \"2\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"\", \"8\": \"1.0\", \"9\": \"2.0\", \"10\": \"3.0\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"3\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"担当者 / Name\", \"8\": \"\", \"9\": \"\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"4\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"Configuration item\\nコンフィグ名\", \"8\": \"TransmissionType_CF\", \"9\": \"TransmissionType_CF\", \"10\": \"ABS_CF\", \"11\": \"VDC_CF\", \"12\": \"VDC_CF\", \"13\": \"ParkingBrakeType_CF\"}, \"5\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"DREC (HEX)\", \"8\": \"0 = AT/CVT\\n1 = MT\", \"9\": \"0 = AT/CVT\\n1 = MT\", \"10\": \"0 = without\\n1 = with\", \"11\": \"0 = without\\n1 = with\", \"12\": \"0 = without\\n1 = with\", \"13\": \"0 = with Hard PKB\\n1 =  with E-PKB\"}, \"6\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"Default value\", \"8\": \"0b\", \"9\": \"\", \"10\": \"0b\", \"11\": \"0b\", \"12\": \"\", \"13\": \"0b\"}, \"7\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"担当部品のメータ仕様詳細は下記リンクにご参照願います。\", \"5\": \"\\\\\\\\jp-nml-fs-a01\\\\XM0\\\\公開\\\\他部署公開\\\\XM3_技連(毎月仕様)\\\\CONFIG技連\\\\33AB METER Spec\", \"6\": \"\", \"7\": \"Behavior\", \"8\": \"0: Apply E-5, Not Apply  E-23-6\\n1 : Apply E-23-6, Not Apply E-5\\n(PHEV not used)\", \"9\": \"0: Apply E-5, Not Apply  E-23-6\\n1 : Apply E-23-6, Not Apply E-5\\n(PHEV not used)\", \"10\": \"0: Not Apply D-1-4\\n1 :  Apply D-1-4\", \"11\": \"0 : Not Apply D-2-5/D-4-5 applied\\n1 : Apply D-2-5/D-4-5\", \"12\": \"0 : Not Apply D-2-5/D-4-5 applied\\n1 : Apply D-2-5/D-4-5\", \"13\": \"0:Not apply D-86-* & D-87-* &  F- 23-5\\n1:Aply D-86-* & D-87-* &  F- 23-5\"}, \"8\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"記号\", \"5\": \"※注意\\nXNP：車両コード(ALL APP適用)\\nKA:適用無し\", \"6\": \"P33A GSR2, JPN 24MY,GOM 25MY\", \"7\": \"二モニック\\nMnemonic\", \"8\": \"CVTH\", \"9\": \"1EVGB\", \"10\": \"00ABS\", \"11\": \"ESCHD\", \"12\": \"ESCHS,ESCTS,ESCDT\", \"13\": \"FPASS\"}, \"9\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A GSR2, JPN 24MY,GOM 25MY\", \"7\": \"設定値\\nSetting Value\", \"8\": \"0\", \"9\": \"0\", \"10\": \"1\", \"11\": \"1\", \"12\": \"1\", \"13\": \"1\"}, \"10\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"今回イベントの変更有無\\nNeed to change from simple event\", \"8\": \"変更あり/Need to change\", \"9\": \"\", \"10\": \"変更あり/Need to change\", \"11\": \"\", \"12\": \"担当外/Not in charge\", \"13\": \"\"}, \"11\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"Behavior(G列)の修正要否\\nNeed for correction of Behavior (column G)?\", \"8\": \"\", \"9\": \"\", \"10\": \"変更なし/Not Need to change\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"12\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"K列で要を選択した場合は、変更仕様を記載\\nChange specifications\", \"8\": \"\", \"9\": \"\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"13\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"オブジェクト名\\nObject Name\", \"8\": \"\", \"9\": \"\", \"10\": \"042\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"14\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"二モニック\\nMnemonic\", \"8\": \"CVTH\", \"9\": \"1EVGB\", \"10\": \"00ABS\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"15\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"設定値\\nSetting Value\", \"8\": \"0\", \"9\": \"0\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"16\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"変更がある場合は変更の理由を入力してください\\n例: Ptype更新、仕様変更など\\n If there is a change, please enter the reason for the change\", \"8\": \"\", \"9\": \"\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"17\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"回答者\\nAnswer person\", \"8\": \"\", \"9\": \"\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"18\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"備考 \\n Memo\", \"8\": \"\", \"9\": \"\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}}',1,1),(2,'{\"0\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"UNIT\\nユニット\", \"8\": \"ATMT\", \"9\": \"CVTCU\", \"10\": \"ABS/VDC\", \"11\": \"ABS/VDC\", \"12\": \"ABS/VDC\", \"13\": \"PKB\"}, \"1\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"Department\\n部署\", \"8\": \"UZ1/EK1(ICE分)\\nUM1(e-Power分)\", \"9\": \"UZ1/EK1(ICE分)\\nUM1(e-Power分)\", \"10\": \"2C3\\n2VC\", \"11\": \"2C3\\n2VC\", \"12\": \"2C3\\n2VC\", \"13\": \"XJB\"}, \"2\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"\", \"8\": \"1.0\", \"9\": \"2.0\", \"10\": \"3.0\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"3\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"担当者 / Name\", \"8\": \"\", \"9\": \"\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"4\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"Configuration item\\nコンフィグ名\", \"8\": \"TransmissionType_CF\", \"9\": \"TransmissionType_CF\", \"10\": \"ABS_CF\", \"11\": \"VDC_CF\", \"12\": \"VDC_CF\", \"13\": \"ParkingBrakeType_CF\"}, \"5\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"DREC (HEX)\", \"8\": \"0 = AT/CVT\\n1 = MT\", \"9\": \"0 = AT/CVT\\n1 = MT\", \"10\": \"0 = without\\n1 = with\", \"11\": \"0 = without\\n1 = with\", \"12\": \"0 = without\\n1 = with\", \"13\": \"0 = with Hard PKB\\n1 =  with E-PKB\"}, \"6\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"\", \"7\": \"Default value\", \"8\": \"0b\", \"9\": \"\", \"10\": \"0b\", \"11\": \"0b\", \"12\": \"\", \"13\": \"0b\"}, \"7\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"担当部品のメータ仕様詳細は下記リンクにご参照願います。\", \"5\": \"\\\\\\\\jp-nml-fs-a01\\\\XM0\\\\公開\\\\他部署公開\\\\XM3_技連(毎月仕様)\\\\CONFIG技連\\\\33AB METER Spec\", \"6\": \"\", \"7\": \"Behavior\", \"8\": \"0: Apply E-5, Not Apply  E-23-6\\n1 : Apply E-23-6, Not Apply E-5\\n(PHEV not used)\", \"9\": \"0: Apply E-5, Not Apply  E-23-6\\n1 : Apply E-23-6, Not Apply E-5\\n(PHEV not used)\", \"10\": \"0: Not Apply D-1-4\\n1 :  Apply D-1-4\", \"11\": \"0 : Not Apply D-2-5/D-4-5 applied\\n1 : Apply D-2-5/D-4-5\", \"12\": \"0 : Not Apply D-2-5/D-4-5 applied\\n1 : Apply D-2-5/D-4-5\", \"13\": \"0:Not apply D-86-* & D-87-* &  F- 23-5\\n1:Aply D-86-* & D-87-* &  F- 23-5\"}, \"8\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"記号\", \"5\": \"※注意\\nXNP：車両コード(ALL APP適用)\\nKA:適用無し\", \"6\": \"P33A GSR2, JPN 24MY,GOM 25MY\", \"7\": \"二モニック\\nMnemonic\", \"8\": \"CVTH\", \"9\": \"1EVGB\", \"10\": \"00ABS\", \"11\": \"ESCHD\", \"12\": \"ESCHS,ESCTS,ESCDT\", \"13\": \"FPASS\"}, \"9\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A GSR2, JPN 24MY,GOM 25MY\", \"7\": \"設定値\\nSetting Value\", \"8\": \"0\", \"9\": \"0\", \"10\": \"1\", \"11\": \"1\", \"12\": \"1\", \"13\": \"1\"}, \"10\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"今回イベントの変更有無\\nNeed to change from simple event\", \"8\": \"変更あり/Need to change\", \"9\": \"\", \"10\": \"変更あり/Need to change\", \"11\": \"\", \"12\": \"担当外/Not in charge\", \"13\": \"\"}, \"11\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"Behavior(G列)の修正要否\\nNeed for correction of Behavior (column G)?\", \"8\": \"\", \"9\": \"\", \"10\": \"変更なし/Not Need to change\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"12\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"K列で要を選択した場合は、変更仕様を記載\\nChange specifications\", \"8\": \"\", \"9\": \"\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"13\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"オブジェクト名\\nObject Name\", \"8\": \"\", \"9\": \"\", \"10\": \"042\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"14\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"二モニック\\nMnemonic\", \"8\": \"CVTH\", \"9\": \"1EVGB\", \"10\": \"00ABS\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"15\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"設定値\\nSetting Value\", \"8\": \"0\", \"9\": \"0\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"16\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"変更がある場合は変更の理由を入力してください\\n例: Ptype更新、仕様変更など\\n If there is a change, please enter the reason for the change\", \"8\": \"\", \"9\": \"\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"17\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"回答者\\nAnswer person\", \"8\": \"\", \"9\": \"\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}, \"18\": {\"0\": \"\", \"1\": \"\", \"2\": \"\", \"3\": \"\", \"4\": \"\", \"5\": \"\", \"6\": \"P33A NMK Plant JPN/EUR/GOM 26MY VC-Lot~ \", \"7\": \"備考 \\n Memo\", \"8\": \"\", \"9\": \"\", \"10\": \"\", \"11\": \"\", \"12\": \"\", \"13\": \"\"}}',2,2);
/*!40000 ALTER TABLE `main_process_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_custom_user`
--

DROP TABLE IF EXISTS `main_process_custom_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_custom_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `knt` varchar(10) NOT NULL,
  `name_jp` varchar(50) NOT NULL,
  `position` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_custom_user`
--

LOCK TABLES `main_process_custom_user` WRITE;
/*!40000 ALTER TABLE `main_process_custom_user` DISABLE KEYS */;
INSERT INTO `main_process_custom_user` VALUES (1,'pbkdf2_sha256$870000$5Td0M76JNevgKpT4AUE023$xCtYrIO6iCAXT3UTM6YRZ+OPCtbWF6AC6POABKeA8D4=',NULL,1,'davidnam','','','Nam@gmail.com',1,1,'2024-09-23 07:37:25.645812','KNT19862','','Dev'),(2,'pbkdf2_sha256$870000$5Td0M76JNevgKpT4AUE023$xCtYrIO6iCAXT3UTM6YRZ+OPCtbWF6AC6POABKeA8D4=',NULL,0,'test_01','NAKAMURA','HIDEAKI','Nam1@gmail.com',1,1,'2024-09-23 07:37:25.645812','KNT18835','中村‐3','M'),(3,'pbkdf2_sha256$870000$5Td0M76JNevgKpT4AUE023$xCtYrIO6iCAXT3UTM6YRZ+OPCtbWF6AC6POABKeA8D4=',NULL,0,'test_02','HOSAKA','MOTOAKI','Nam2@gmail.com',1,1,'2024-09-23 07:37:25.645812','KNT18722','保坂元明','Dev'),(4,'pbkdf2_sha256$870000$5Td0M76JNevgKpT4AUE023$xCtYrIO6iCAXT3UTM6YRZ+OPCtbWF6AC6POABKeA8D4=',NULL,0,'test_03','NAKAMURA','HIDEAKI','Nam4@gmail.com',1,1,'2024-09-23 07:37:25.645812','KNT12455','中村英明','AM'),(5,'pbkdf2_sha256$870000$5Td0M76JNevgKpT4AUE023$xCtYrIO6iCAXT3UTM6YRZ+OPCtbWF6AC6POABKeA8D4=',NULL,0,'test_04','VU','THITAM','Nam3@gmail.com',1,1,'2024-09-23 07:37:25.645812','KNT31313','VU, THITAM','Dev');
/*!40000 ALTER TABLE `main_process_custom_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_custom_user_groups`
--

DROP TABLE IF EXISTS `main_process_custom_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_custom_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `custom_user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_process_custom_user_custom_user_id_group_id_4d9e6a9e_uniq` (`custom_user_id`,`group_id`),
  KEY `main_process_custom__group_id_1fd56544_fk_auth_grou` (`group_id`),
  CONSTRAINT `main_process_custom__custom_user_id_392312be_fk_main_proc` FOREIGN KEY (`custom_user_id`) REFERENCES `main_process_custom_user` (`id`),
  CONSTRAINT `main_process_custom__group_id_1fd56544_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_custom_user_groups`
--

LOCK TABLES `main_process_custom_user_groups` WRITE;
/*!40000 ALTER TABLE `main_process_custom_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_process_custom_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_custom_user_user_permissions`
--

DROP TABLE IF EXISTS `main_process_custom_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_custom_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `custom_user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_process_custom_user_custom_user_id_permissio_50f78abc_uniq` (`custom_user_id`,`permission_id`),
  KEY `main_process_custom__permission_id_1edefbf0_fk_auth_perm` (`permission_id`),
  CONSTRAINT `main_process_custom__custom_user_id_2b029b4f_fk_main_proc` FOREIGN KEY (`custom_user_id`) REFERENCES `main_process_custom_user` (`id`),
  CONSTRAINT `main_process_custom__permission_id_1edefbf0_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_custom_user_user_permissions`
--

LOCK TABLES `main_process_custom_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `main_process_custom_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_process_custom_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_department`
--

DROP TABLE IF EXISTS `main_process_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `department_name` (`department_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_department`
--

LOCK TABLES `main_process_department` WRITE;
/*!40000 ALTER TABLE `main_process_department` DISABLE KEYS */;
INSERT INTO `main_process_department` VALUES (1,'2F1'),(3,'2R3/2VR'),(2,'XF2');
/*!40000 ALTER TABLE `main_process_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_department_unit`
--

DROP TABLE IF EXISTS `main_process_department_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_department_unit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department_id_id` bigint NOT NULL,
  `unit_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `d_u` (`unit_id_id`,`department_id_id`),
  KEY `main_process_departm_department_id_id_ffd1aa64_fk_main_proc` (`department_id_id`),
  CONSTRAINT `main_process_departm_department_id_id_ffd1aa64_fk_main_proc` FOREIGN KEY (`department_id_id`) REFERENCES `main_process_department` (`id`),
  CONSTRAINT `main_process_departm_unit_id_id_fdde0fd2_fk_main_proc` FOREIGN KEY (`unit_id_id`) REFERENCES `main_process_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_department_unit`
--

LOCK TABLES `main_process_department_unit` WRITE;
/*!40000 ALTER TABLE `main_process_department_unit` DISABLE KEYS */;
INSERT INTO `main_process_department_unit` VALUES (1,1,1),(2,2,2),(3,3,3),(4,3,4);
/*!40000 ALTER TABLE `main_process_department_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_ecu`
--

DROP TABLE IF EXISTS `main_process_ecu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_ecu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ecu_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecu_name` (`ecu_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_ecu`
--

LOCK TABLES `main_process_ecu` WRITE;
/*!40000 ALTER TABLE `main_process_ecu` DISABLE KEYS */;
INSERT INTO `main_process_ecu` VALUES (1,'BCM'),(2,'Meter');
/*!40000 ALTER TABLE `main_process_ecu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_event_infor`
--

DROP TABLE IF EXISTS `main_process_event_infor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_event_infor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `gdr` varchar(255) DEFAULT NULL,
  `storage_period` varchar(255) DEFAULT NULL,
  `trim_mrd` varchar(255) DEFAULT NULL,
  `event_coordinator` varchar(255) DEFAULT NULL,
  `base_event` varchar(255) DEFAULT NULL,
  `spec_link` longtext,
  `mnemoic_link` longtext,
  `spec_cate_link` longtext,
  `project_info_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `e_i` (`project_info_id_id`,`event_name`),
  CONSTRAINT `main_process_event_i_project_info_id_id_3c88fa2c_fk_main_proc` FOREIGN KEY (`project_info_id_id`) REFERENCES `main_process_project_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_event_infor`
--

LOCK TABLES `main_process_event_infor` WRITE;
/*!40000 ALTER TABLE `main_process_event_infor` DISABLE KEYS */;
INSERT INTO `main_process_event_infor` VALUES (1,'event_name_test_1','x','a','c','e','g','i','https://spec_link_test_01','https://mnemonic_link_test_01','https://spec_link_test_01',2),(2,'event_name_test_2','y','b','d','f','h','k','https://spec_link_test_02','https://mnemonic_link_test_02','https://spec_link_test_02',1);
/*!40000 ALTER TABLE `main_process_event_infor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_group_infor`
--

DROP TABLE IF EXISTS `main_process_group_infor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_group_infor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `group_id_id` bigint NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `g_i` (`group_id_id`,`user_id_id`),
  KEY `main_process_group_i_user_id_id_d70c69ee_fk_main_proc` (`user_id_id`),
  CONSTRAINT `main_process_group_i_group_id_id_216097dd_fk_main_proc` FOREIGN KEY (`group_id_id`) REFERENCES `main_process_department_unit` (`id`),
  CONSTRAINT `main_process_group_i_user_id_id_d70c69ee_fk_main_proc` FOREIGN KEY (`user_id_id`) REFERENCES `main_process_custom_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_group_infor`
--

LOCK TABLES `main_process_group_infor` WRITE;
/*!40000 ALTER TABLE `main_process_group_infor` DISABLE KEYS */;
INSERT INTO `main_process_group_infor` VALUES (1,'ABC',1,1),(2,NULL,2,3),(3,NULL,4,4),(4,'CEF',3,2);
/*!40000 ALTER TABLE `main_process_group_infor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_issue`
--

DROP TABLE IF EXISTS `main_process_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `can_name` varchar(100) DEFAULT NULL,
  `past_issue_error` varchar(255) DEFAULT NULL,
  `issue` varchar(255) NOT NULL,
  `reason_mistake` longtext,
  `incorrect_value` varchar(255) DEFAULT NULL,
  `correct_value` varchar(255) DEFAULT NULL,
  `comment_des` longtext,
  `updated_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `condition_apply` longtext,
  `project_info_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i` (`project_info_id_id`,`issue`),
  CONSTRAINT `main_process_issue_project_info_id_id_07ca9a44_fk_main_proc` FOREIGN KEY (`project_info_id_id`) REFERENCES `main_process_project_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_issue`
--

LOCK TABLES `main_process_issue` WRITE;
/*!40000 ALTER TABLE `main_process_issue` DISABLE KEYS */;
INSERT INTO `main_process_issue` VALUES (1,'C1A-Hsevo','事前検出ミス','REMOTE_LIGHTING_CF','Lamp設計回答間違い','ALL=1','ALL=0(483 TELEMATIC 有がJPN向けはRemote Horn＆Light設定無し。)','Lamp設計へFB済み、修正済み。','27/02/2024',NULL,NULL,1),(2,'-','過去ミス','ICC_CF','FY24現行車ミス','ACC02,ACC03/LSS00,LDW00,LDP00,NOLK0=1\r\nACC02,ACC03/LKA02,LKA00=0\r\nACC00, ACCLM＝0','ACC02, ACC03=1\r\nACC00, ACCLM＝0','現行車はACC02,ACC03/LKA02,LKA00仕はICCが有るのにMeter内に表示されない。→ITS設計にFB済み。','13/03/2024',NULL,NULL,2);
/*!40000 ALTER TABLE `main_process_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_manage_project`
--

DROP TABLE IF EXISTS `main_process_manage_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_manage_project` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_infor_id_id` bigint NOT NULL,
  `group_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `m_p` (`event_infor_id_id`,`group_id_id`),
  KEY `main_process_manage__group_id_id_9105b1df_fk_main_proc` (`group_id_id`),
  CONSTRAINT `main_process_manage__event_infor_id_id_891a629b_fk_main_proc` FOREIGN KEY (`event_infor_id_id`) REFERENCES `main_process_event_infor` (`id`),
  CONSTRAINT `main_process_manage__group_id_id_9105b1df_fk_main_proc` FOREIGN KEY (`group_id_id`) REFERENCES `main_process_group_infor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_manage_project`
--

LOCK TABLES `main_process_manage_project` WRITE;
/*!40000 ALTER TABLE `main_process_manage_project` DISABLE KEYS */;
INSERT INTO `main_process_manage_project` VALUES (1,1,4),(2,2,1);
/*!40000 ALTER TABLE `main_process_manage_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_project_info`
--

DROP TABLE IF EXISTS `main_process_project_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_project_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `model_name` varchar(50) NOT NULL,
  `fy_name` varchar(10) NOT NULL,
  `plant_name` varchar(50) NOT NULL,
  `des_name` varchar(255) NOT NULL,
  `lot_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p_i` (`model_name`,`fy_name`,`plant_name`,`des_name`,`lot_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_project_info`
--

LOCK TABLES `main_process_project_info` WRITE;
/*!40000 ALTER TABLE `main_process_project_info` DISABLE KEYS */;
INSERT INTO `main_process_project_info` VALUES (2,'P33A','24MY','NMK','GOM','VC'),(1,'PZ1D','25MY','NML-T','JPN','PT');
/*!40000 ALTER TABLE `main_process_project_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_process_unit`
--

DROP TABLE IF EXISTS `main_process_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_process_unit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unit_name` (`unit_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_process_unit`
--

LOCK TABLES `main_process_unit` WRITE;
/*!40000 ALTER TABLE `main_process_unit` DISABLE KEYS */;
INSERT INTO `main_process_unit` VALUES (3,'ACU'),(4,'ADP'),(2,'E-PEDAL'),(1,'VSP');
/*!40000 ALTER TABLE `main_process_unit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-07 13:42:52
