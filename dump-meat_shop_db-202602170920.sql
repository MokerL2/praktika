-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: meat_shop_db
-- ------------------------------------------------------
-- Server version	11.8.5-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchstatuses`
--

DROP TABLE IF EXISTS `batchstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batchstatuses` (
  `batch_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`batch_status_id`),
  UNIQUE KEY `status_name` (`status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchstatuses`
--

LOCK TABLES `batchstatuses` WRITE;
/*!40000 ALTER TABLE `batchstatuses` DISABLE KEYS */;
INSERT INTO `batchstatuses` VALUES (1,'active','Активная партия, в наличии'),(2,'reserved','Зарезервирована для заказа'),(3,'sold','Продана'),(4,'expired','Просрочена'),(5,'written_off','Списана');
/*!40000 ALTER TABLE `batchstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Говядина','Говяжья продукция высшего сорта',1),(2,'Свинина','Свиная продукция различных категорий',2),(3,'Баранина','Баранина премиум класса',3),(4,'Птица','Куриная и индейка продукция',4),(5,'Колбасные изделия','Вареные и копченые колбасы',5),(6,'Полуфабрикаты','Фарш, котлеты, наггетсы',6),(7,'Деликатесы','Деликатесная мясная продукция',7);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificates` (
  `certificate_id` int(11) NOT NULL AUTO_INCREMENT,
  `certificate_type_id` int(11) NOT NULL,
  `certificate_number` varchar(100) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `issued_by` varchar(255) DEFAULT NULL,
  `document_path` varchar(500) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`certificate_id`),
  KEY `idx_certificate_type_id` (`certificate_type_id`),
  KEY `idx_expiry_date` (`expiry_date`),
  CONSTRAINT `fk_certificates_certificate_type_id` FOREIGN KEY (`certificate_type_id`) REFERENCES `certificatetypes` (`certificate_type_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
INSERT INTO `certificates` VALUES (1,1,'ВС-2026-001','2026-01-15','2026-07-15','ФГБУ «ВГНКИ»','/certs/vs-2026-001.pdf','Ветеринарный сертификат на говядину','2026-02-12 00:28:25'),(2,1,'ВС-2026-002','2026-01-20','2026-07-20','ФГБУ «ВГНКИ»','/certs/vs-2026-002.pdf','Ветеринарный сертификат на свинину','2026-02-12 00:28:25'),(3,2,'СК-2026-001','2026-01-10','2027-01-10','Роскачество','/certs/sk-2026-001.pdf','Сертификат качества на продукцию','2026-02-12 00:28:25'),(4,3,'СП-2026-001','2026-01-05','2026-12-31','Минсельхоз России','/certs/sp-2026-001.pdf','Сертификат происхождения','2026-02-12 00:28:25'),(5,4,'СЭЗ-2026-001','2026-01-25','2026-07-25','Роспотребнадзор','/certs/sez-2026-001.pdf','Санитарно-эпидемиологическое заключение','2026-02-12 00:28:25');
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificatetypes`
--

DROP TABLE IF EXISTS `certificatetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificatetypes` (
  `certificate_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`certificate_type_id`),
  UNIQUE KEY `type_name` (`type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificatetypes`
--

LOCK TABLES `certificatetypes` WRITE;
/*!40000 ALTER TABLE `certificatetypes` DISABLE KEYS */;
INSERT INTO `certificatetypes` VALUES (1,'Ветеринарный сертификат','Подтверждение ветеринарной безопасности'),(2,'Сертификат качества','Подтверждение соответствия стандартам качества'),(3,'Сертификат происхождения','Подтверждение места производства'),(4,'Санитарно-эпидемиологическое заключение','Подтверждение санитарных норм');
/*!40000 ALTER TABLE `certificatetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-02-11 13:54:08.503770'),(2,'auth','0001_initial','2026-02-11 13:54:15.612679'),(3,'admin','0001_initial','2026-02-11 13:54:17.052775'),(4,'admin','0002_logentry_remove_auto_add','2026-02-11 13:54:17.081497'),(5,'admin','0003_logentry_add_action_flag_choices','2026-02-11 13:54:17.099025'),(6,'contenttypes','0002_remove_content_type_name','2026-02-11 13:54:18.141392'),(7,'auth','0002_alter_permission_name_max_length','2026-02-11 13:54:18.868838'),(8,'auth','0003_alter_user_email_max_length','2026-02-11 13:54:19.422749'),(9,'auth','0004_alter_user_username_opts','2026-02-11 13:54:19.449573'),(10,'auth','0005_alter_user_last_login_null','2026-02-11 13:54:20.243951'),(11,'auth','0006_require_contenttypes_0002','2026-02-11 13:54:20.254058'),(12,'auth','0007_alter_validators_add_error_messages','2026-02-11 13:54:20.265293'),(13,'auth','0008_alter_user_username_max_length','2026-02-11 13:54:20.689040'),(14,'auth','0009_alter_user_last_name_max_length','2026-02-11 13:54:21.156611'),(15,'auth','0010_alter_group_name_max_length','2026-02-11 13:54:21.624012'),(16,'auth','0011_update_proxy_permissions','2026-02-11 13:54:21.646105'),(17,'auth','0012_alter_user_first_name_max_length','2026-02-11 13:54:22.068712'),(18,'sessions','0001_initial','2026-02-11 13:54:22.827394');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('l0ijk8m5qhlkl9xjan7r1q4zy44bkddc','.eJxljsEKhSAQRX_lMesWmgbRtwTi04kEMzBnFf37602FizaHy-EOc3egDbMJHgbZcE52QRjA-iUkaGCiGM3tRhJaij-VZjpmz_Q1a8lsmVdfVKPw8p9afZ-prj7Q33NHXiM-M8NmLJUZUwnOFjxlyYTHD3YVPX4:1vre1g:cAm4Ln4PwfCBlSXoA-3PDnWwn5inB8k5vJfA6mXUE1g','2026-03-01 15:27:12.487488');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logstatuses`
--

DROP TABLE IF EXISTS `logstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logstatuses` (
  `log_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `color_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`log_status_id`),
  UNIQUE KEY `status_name` (`status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logstatuses`
--

LOCK TABLES `logstatuses` WRITE;
/*!40000 ALTER TABLE `logstatuses` DISABLE KEYS */;
INSERT INTO `logstatuses` VALUES (1,'normal','Нормальная температура','#28a745'),(2,'warning','Температура в пределах допуска','#ffc107'),(3,'critical','Критическое отклонение температуры','#dc3545'),(4,'maintenance','Техническое обслуживание','#17a2b8');
/*!40000 ALTER TABLE `logstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatuses`
--

DROP TABLE IF EXISTS `orderstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderstatuses` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `color_code` varchar(20) DEFAULT NULL,
  `is_final` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`order_status_id`),
  UNIQUE KEY `status_name` (`status_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatuses`
--

LOCK TABLES `orderstatuses` WRITE;
/*!40000 ALTER TABLE `orderstatuses` DISABLE KEYS */;
INSERT INTO `orderstatuses` VALUES (1,'Новый','Заказ создан, ожидает подтверждения','#17a2b8',0),(2,'Подтвержден','Заказ подтвержден менеджером','#007bff',0),(3,'В обработке','Заказ в процессе комплектации','#ffc107',0),(4,'Собран','Заказ полностью скомплектован','#28a745',0),(5,'Отправлен','Заказ передан на доставку','#17a2b8',0),(6,'Доставлен','Заказ доставлен клиенту','#28a745',1),(7,'Отменен','Заказ отменен','#dc3545',1),(8,'Возврат','Заказ возвращен','#6c757d',1);
/*!40000 ALTER TABLE `orderstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productbatches`
--

DROP TABLE IF EXISTS `productbatches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productbatches` (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `certificate_id` int(11) DEFAULT NULL,
  `mode_id` int(11) NOT NULL,
  `batch_status_id` int(11) NOT NULL,
  `batch_number` varchar(100) DEFAULT NULL,
  `production_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `quantity` decimal(10,3) NOT NULL DEFAULT 0.000,
  `received_at` datetime DEFAULT current_timestamp(),
  `notes` text DEFAULT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_supplier_id` (`supplier_id`),
  KEY `idx_certificate_id` (`certificate_id`),
  KEY `idx_mode_id` (`mode_id`),
  KEY `idx_batch_status_id` (`batch_status_id`),
  KEY `idx_expiration_date` (`expiration_date`),
  CONSTRAINT `fk_batches_batch_status_id` FOREIGN KEY (`batch_status_id`) REFERENCES `batchstatuses` (`batch_status_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_batches_certificate_id` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`certificate_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_batches_mode_id` FOREIGN KEY (`mode_id`) REFERENCES `temperaturemodes` (`mode_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_batches_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_batches_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productbatches`
--

LOCK TABLES `productbatches` WRITE;
/*!40000 ALTER TABLE `productbatches` DISABLE KEYS */;
INSERT INTO `productbatches` VALUES (1,1,1,1,1,1,'BATCH-BEEF-2026-001','2026-02-01','2026-02-15',100.500,'2026-02-12 00:28:31','Партия говядины высшего сорта'),(2,1,2,1,1,1,'BATCH-BEEF-2026-002','2026-02-05','2026-02-19',150.300,'2026-02-12 00:28:31','Партия говядины высшего сорта'),(3,2,1,2,1,1,'BATCH-BEEF-2026-003','2026-02-10','2026-02-24',200.000,'2026-02-12 00:28:31','Партия говядины 1 сорта'),(4,3,3,1,2,1,'BATCH-BEEF-2026-004','2025-08-01','2026-02-28',300.000,'2026-02-12 00:28:31','Замороженная говядина'),(5,4,2,2,1,1,'BATCH-PORK-2026-001','2026-02-03','2026-02-13',120.000,'2026-02-12 00:28:31','Партия свинины высшего сорта'),(6,5,4,2,1,1,'BATCH-PORK-2026-002','2026-02-07','2026-02-17',180.000,'2026-02-12 00:28:31','Партия свинины 1 сорта'),(7,6,5,1,2,1,'BATCH-PORK-2026-003','2025-08-15','2026-02-15',250.000,'2026-02-12 00:28:31','Замороженная свинина'),(8,7,1,1,1,1,'BATCH-LAMB-2026-001','2026-02-02','2026-02-14',50.000,'2026-02-12 00:28:31','Партия баранины высшего сорта'),(9,8,3,1,2,1,'BATCH-LAMB-2026-002','2025-09-01','2026-03-01',80.000,'2026-02-12 00:28:31','Замороженная баранина'),(10,9,2,1,1,1,'BATCH-CHKN-2026-001','2026-02-08','2026-02-15',200.000,'2026-02-12 00:28:31','Куриное филе'),(11,10,4,1,2,1,'BATCH-CHKN-2026-002','2025-08-20','2026-02-20',300.000,'2026-02-12 00:28:31','Замороженная курица'),(12,11,5,1,1,1,'BATCH-TURK-2026-001','2026-02-06','2026-02-16',60.000,'2026-02-12 00:28:31','Индейка'),(13,12,1,3,1,1,'BATCH-SAUS-2026-001','2026-02-01','2026-02-22',40.000,'2026-02-12 00:28:31','Колбаса вареная'),(14,13,2,3,1,1,'BATCH-SAUS-2026-002','2026-01-25','2026-02-24',35.000,'2026-02-12 00:28:31','Колбаса копченая'),(15,14,3,3,1,1,'BATCH-MINC-2026-001','2026-02-10','2026-02-15',90.000,'2026-02-12 00:28:31','Фарш говяжий'),(16,15,4,3,1,1,'BATCH-MINC-2026-002','2026-02-11','2026-02-16',100.000,'2026-02-12 00:28:31','Фарш свиной'),(17,16,5,3,2,1,'BATCH-COTL-2026-001','2025-11-01','2026-02-28',120.000,'2026-02-12 00:28:31','Замороженные котлеты'),(18,17,1,4,1,1,'BATCH-DEL-2026-001','2026-02-05','2026-02-19',25.000,'2026-02-12 00:28:31','Деликатесная нарезка'),(19,18,2,4,1,1,'BATCH-DEL-2026-002','2026-02-07','2026-02-21',20.000,'2026-02-12 00:28:31','Паштет');
/*!40000 ALTER TABLE `productbatches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `mode_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unit` varchar(20) DEFAULT 'кг',
  `default_expiration_days` int(11) DEFAULT 14,
  `min_stock_threshold` decimal(10,3) DEFAULT 10.000,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `idx_category_id` (`category_id`),
  KEY `idx_mode_id` (`mode_id`),
  CONSTRAINT `fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_products_mode_id` FOREIGN KEY (`mode_id`) REFERENCES `temperaturemodes` (`mode_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1,'Говядина высший сорт','BEEF-001',850.00,'кг',14,50.000,'Вырезка говядины высшего сорта',1),(2,1,1,'Говядина 1 сорт','BEEF-002',650.00,'кг',14,80.000,'Лопаточная часть говядины',1),(3,1,2,'Замороженная говядина','BEEF-003',450.00,'кг',180,100.000,'Замороженная говядина в блоках',1),(4,2,1,'Свинина высший сорт','PORK-001',600.00,'кг',10,60.000,'Окорок свиной высшего сорта',1),(5,2,1,'Свинина 1 сорт','PORK-002',480.00,'кг',10,90.000,'Лопатка свиная',1),(6,2,2,'Замороженная свинина','PORK-003',350.00,'кг',180,120.000,'Замороженная свинина в блоках',1),(7,3,1,'Баранина высший сорт','LAMB-001',950.00,'кг',12,30.000,'Корейка баранины высшего сорта',1),(8,3,2,'Замороженная баранина','LAMB-002',650.00,'кг',180,50.000,'Замороженная баранина',1),(9,4,1,'Куриное филе','CHKN-001',320.00,'кг',7,100.000,'Охлажденное куриное филе',1),(10,4,2,'Замороженная курица','CHKN-002',220.00,'кг',180,150.000,'Замороженная курица целиком',1),(11,4,1,'Индейка','TURK-001',450.00,'кг',10,40.000,'Охлажденная индейка',1),(12,5,1,'Колбаса вареная','SAUS-001',580.00,'кг',21,30.000,'Вареная колбаса высшего сорта',1),(13,5,1,'Колбаса копченая','SAUS-002',750.00,'кг',30,25.000,'Копченая колбаса премиум',1),(14,6,1,'Фарш говяжий','MINC-001',420.00,'кг',5,80.000,'Свежий говяжий фарш',1),(15,6,1,'Фарш свиной','MINC-002',350.00,'кг',5,90.000,'Свежий свиной фарш',1),(16,6,2,'Замороженные котлеты','COTL-001',280.00,'кг',90,100.000,'Замороженные котлеты из говядины',1),(17,7,1,'Деликатесная нарезка','DEL-001',1200.00,'кг',14,20.000,'Нарезка из выдержанной говядины',1),(18,7,1,'Паштет','DEL-002',850.00,'кг',14,15.000,'Паштет из печени гуся',1),(19,1,2,'пимер','DDff-1233',123123.00,'кг',14,10.000,'пример',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockhistory`
--

DROP TABLE IF EXISTS `stockhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockhistory` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `type_change_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity_change` decimal(10,3) NOT NULL,
  `old_quantity` decimal(10,3) DEFAULT NULL,
  `new_quantity` decimal(10,3) DEFAULT NULL,
  `changed_at` datetime DEFAULT current_timestamp(),
  `notes` text DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_batch_id` (`batch_id`),
  KEY `idx_type_change_id` (`type_change_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_changed_at` (`changed_at`),
  CONSTRAINT `fk_stock_history_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `productbatches` (`batch_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_stock_history_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_stock_history_type_change_id` FOREIGN KEY (`type_change_id`) REFERENCES `typeofchange` (`type_change_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_stock_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockhistory`
--

LOCK TABLES `stockhistory` WRITE;
/*!40000 ALTER TABLE `stockhistory` DISABLE KEYS */;
INSERT INTO `stockhistory` VALUES (1,1,1,1,3,100.500,0.000,100.500,'2026-02-12 00:28:38','Приход партии говядины'),(2,1,2,1,3,150.300,0.000,150.300,'2026-02-12 00:28:38','Приход партии говядины'),(3,2,3,1,3,200.000,0.000,200.000,'2026-02-12 00:28:38','Приход партии говядины 1 сорта'),(4,4,4,1,3,120.000,0.000,120.000,'2026-02-12 00:28:38','Приход партии свинины'),(5,7,5,1,3,50.000,0.000,50.000,'2026-02-12 00:28:38','Приход партии баранины'),(6,9,6,1,3,200.000,0.000,200.000,'2026-02-12 00:28:38','Приход партии куриного филе'),(7,12,7,1,3,40.000,0.000,40.000,'2026-02-12 00:28:38','Приход партии колбасы'),(8,14,8,1,3,90.000,0.000,90.000,'2026-02-12 00:28:38','Приход партии фарша');
/*!40000 ALTER TABLE `stockhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `inn` varchar(12) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'ООО «Мясокомбинат №1»','Иванов Сергей Петрович','+7 (495) 111-11-11','info@meatcomb1.ru','г. Москва, ул. Мясная, д. 1','7701001001',1,'2026-02-12 00:27:31'),(2,'ООО «Сибирский мясной завод»','Козлов Дмитрий Александрович','+7 (383) 222-22-22','info@sibmeat.ru','г. Новосибирск, ул. Заводская, д. 2','5401001002',1,'2026-02-12 00:27:31'),(3,'ООО «Дальневосточная ферма»','Соколов Андрей Викторович','+7 (423) 333-33-33','info@dvfarm.ru','г. Владивосток, ул. Фермерская, д. 3','2501001003',1,'2026-02-12 00:27:31'),(4,'ООО «Кавказский мясной цех»','Мамедов Руслан Гусейнович','+7 (861) 444-44-44','info@kavmeat.ru','г. Краснодар, ул. Кавказская, д. 4','2301001004',1,'2026-02-12 00:27:31'),(5,'ООО «Уральский мясокомбинат»','Попов Михаил Иванович','+7 (343) 555-55-55','info@urmeat.ru','г. Екатеринбург, ул. Уральская, д. 5','6601001005',1,'2026-02-12 00:27:31');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temperaturelogs`
--

DROP TABLE IF EXISTS `temperaturelogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temperaturelogs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) NOT NULL,
  `log_status_id` int(11) NOT NULL,
  `temperature` decimal(4,1) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `measured_by` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `idx_batch_id` (`batch_id`),
  KEY `idx_log_status_id` (`log_status_id`),
  KEY `idx_measured_by` (`measured_by`),
  CONSTRAINT `fk_temp_logs_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `productbatches` (`batch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_temp_logs_log_status_id` FOREIGN KEY (`log_status_id`) REFERENCES `logstatuses` (`log_status_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_temp_logs_measured_by` FOREIGN KEY (`measured_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temperaturelogs`
--

LOCK TABLES `temperaturelogs` WRITE;
/*!40000 ALTER TABLE `temperaturelogs` DISABLE KEYS */;
INSERT INTO `temperaturelogs` VALUES (1,1,1,2.5,'2026-02-12 00:28:34',3,'Нормальная температура хранения'),(2,1,1,3.0,'2026-02-12 00:28:34',3,'Нормальная температура хранения'),(3,2,1,1.8,'2026-02-12 00:28:34',3,'Нормальная температура хранения'),(4,3,1,2.2,'2026-02-12 00:28:34',3,'Нормальная температура хранения'),(5,4,1,-22.5,'2026-02-12 00:28:34',3,'Нормальная температура заморозки'),(6,5,2,4.5,'2026-02-12 00:28:34',3,'Температура в пределах допуска'),(7,6,1,-20.0,'2026-02-12 00:28:34',3,'Нормальная температура заморозки'),(8,7,1,3.5,'2026-02-12 00:28:34',3,'Нормальная температура хранения'),(9,8,1,-23.0,'2026-02-12 00:28:34',3,'Нормальная температура заморозки'),(10,9,1,2.0,'2026-02-12 00:28:34',3,'Нормальная температура хранения');
/*!40000 ALTER TABLE `temperaturelogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temperaturemodes`
--

DROP TABLE IF EXISTS `temperaturemodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temperaturemodes` (
  `mode_id` int(11) NOT NULL AUTO_INCREMENT,
  `mode_type_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `min_temp` decimal(4,1) NOT NULL,
  `max_temp` decimal(4,1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mode_id`),
  KEY `idx_mode_type` (`mode_type_id`),
  CONSTRAINT `fk_temp_modes_mode_type_id` FOREIGN KEY (`mode_type_id`) REFERENCES `temperaturemodetypes` (`mode_type_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temperaturemodes`
--

LOCK TABLES `temperaturemodes` WRITE;
/*!40000 ALTER TABLE `temperaturemodes` DISABLE KEYS */;
INSERT INTO `temperaturemodes` VALUES (1,1,'Охлаждение',0.0,4.0,'Хранение при температуре 0-4°C'),(2,2,'Заморозка',-25.0,-18.0,'Хранение при температуре -25--18°C'),(3,3,'Свежее хранение',2.0,6.0,'Хранение при температуре 2-6°C');
/*!40000 ALTER TABLE `temperaturemodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temperaturemodetypes`
--

DROP TABLE IF EXISTS `temperaturemodetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temperaturemodetypes` (
  `mode_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mode_type_id`),
  UNIQUE KEY `type_name` (`type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temperaturemodetypes`
--

LOCK TABLES `temperaturemodetypes` WRITE;
/*!40000 ALTER TABLE `temperaturemodetypes` DISABLE KEYS */;
INSERT INTO `temperaturemodetypes` VALUES (1,'Охлаждение','Хранение при низких положительных температурах'),(2,'Замораживание','Хранение при отрицательных температурах'),(3,'Свежее хранение','Хранение при комнатной температуре');
/*!40000 ALTER TABLE `temperaturemodetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeofchange`
--

DROP TABLE IF EXISTS `typeofchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeofchange` (
  `type_change_id` int(11) NOT NULL AUTO_INCREMENT,
  `change_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_incoming` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`type_change_id`),
  UNIQUE KEY `change_name` (`change_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeofchange`
--

LOCK TABLES `typeofchange` WRITE;
/*!40000 ALTER TABLE `typeofchange` DISABLE KEYS */;
INSERT INTO `typeofchange` VALUES (1,'Приход','Поступление товара на склад',1),(2,'Расход','Списание товара со склада',0),(3,'Резервирование','Резервирование товара для заказа',0),(4,'Отмена резерва','Отмена резервирования',1),(5,'Списание','Списание товара по причине порчи',0),(6,'Корректировка','Корректировка остатков',0);
/*!40000 ALTER TABLE `typeofchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES (1,'Администратор','Полный доступ ко всем функциям системы'),(2,'Менеджер','Управление заказами и клиентами'),(3,'Кладовщик','Управление складом и партиями'),(4,'Кассир','Оформление заказов'),(5,'Аналитик','Просмотр отчетов и аналитики');
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `idx_role_id` (`role_id`),
  CONSTRAINT `fk_users_role_id` FOREIGN KEY (`role_id`) REFERENCES `userroles` (`role_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9',1,'Администратор системы','+7 (999) 123-45-67','admin@meatshop.ru','2026-02-12 00:27:26',1),(2,'manager1','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f',2,'Иванов Иван Иванович','+7 (999) 234-56-78','manager@meatshop.ru','2026-02-12 00:27:26',1),(3,'warehouse1','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f',3,'Петров Петр Петрович','+7 (999) 345-67-89','warehouse@meatshop.ru','2026-02-12 00:27:26',1),(4,'cashier1','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f',4,'Сидорова Анна Сергеевна','+7 (999) 456-78-90','cashier@meatshop.ru','2026-02-12 00:27:26',1),(5,'analyst1','ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f',5,'Смирнов Алексей Владимирович','+7 (999) 567-89-01','analyst@meatshop.ru','2026-02-12 00:27:26',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wholesaleorderitems`
--

DROP TABLE IF EXISTS `wholesaleorderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wholesaleorderitems` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `price_per_unit` decimal(10,2) NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `discount_percent` decimal(5,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_batch_id` (`batch_id`),
  CONSTRAINT `fk_order_items_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `productbatches` (`batch_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_order_items_order_id` FOREIGN KEY (`order_id`) REFERENCES `wholesaleorders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_items_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wholesaleorderitems`
--

LOCK TABLES `wholesaleorderitems` WRITE;
/*!40000 ALTER TABLE `wholesaleorderitems` DISABLE KEYS */;
INSERT INTO `wholesaleorderitems` VALUES (1,1,1,1,50.000,850.00,42500.00,5.00,'Говядина высший сорт'),(2,1,4,4,30.000,600.00,18000.00,5.00,'Свинина высший сорт'),(3,1,9,6,100.000,320.00,32000.00,5.00,'Куриное филе'),(4,1,12,7,20.000,580.00,11600.00,5.00,'Колбаса вареная'),(5,1,14,8,45.000,420.00,18900.00,5.00,'Фарш говяжий'),(6,2,2,3,60.000,650.00,39000.00,3.00,'Говядина 1 сорт'),(7,2,5,5,40.000,480.00,19200.00,3.00,'Свинина 1 сорт'),(8,2,10,9,50.000,220.00,11000.00,3.00,'Замороженная курица'),(9,3,1,2,100.000,850.00,85000.00,10.00,'Говядина высший сорт'),(10,3,3,4,80.000,450.00,36000.00,10.00,'Замороженная говядина'),(11,3,7,5,30.000,950.00,28500.00,10.00,'Баранина высший сорт'),(12,3,11,10,40.000,450.00,18000.00,10.00,'Индейка'),(13,3,17,15,15.000,1200.00,18000.00,10.00,'Деликатесная нарезка');
/*!40000 ALTER TABLE `wholesaleorderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wholesaleorders`
--

DROP TABLE IF EXISTS `wholesaleorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wholesaleorders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_type` varchar(20) DEFAULT 'individual',
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `delivery_address` text DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(5,2) DEFAULT 0.00,
  `promo_code` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_order_status_id` (`order_status_id`),
  KEY `idx_created_at` (`created_at`),
  CONSTRAINT `fk_orders_order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `orderstatuses` (`order_status_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wholesaleorders`
--

LOCK TABLES `wholesaleorders` WRITE;
/*!40000 ALTER TABLE `wholesaleorders` DISABLE KEYS */;
INSERT INTO `wholesaleorders` VALUES (1,2,1,'ООО «Ресторан Гурман»','legal','+7 (495) 123-45-67','orders@gourman.ru','г. Москва, ул. Тверская, д. 10',150000.00,5.00,NULL,'2026-02-10 10:00:00',NULL,NULL,NULL,NULL),(2,2,2,'ИП Петров А.С.','individual','+7 (495) 234-56-78','petrov@market.ru','г. Москва, ул. Арбат, д. 15',85000.00,3.00,NULL,'2026-02-11 11:30:00',NULL,NULL,NULL,NULL),(3,2,3,'ООО «Супермаркет ВкусВилл»','legal','+7 (495) 345-67-89','orders@vkusvill.ru','г. Москва, ул. Новослободская, д. 20',250000.00,10.00,NULL,'2026-02-12 09:15:00',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wholesaleorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writeoffreasons`
--

DROP TABLE IF EXISTS `writeoffreasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writeoffreasons` (
  `write_off_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`write_off_reason_id`),
  UNIQUE KEY `reason_name` (`reason_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writeoffreasons`
--

LOCK TABLES `writeoffreasons` WRITE;
/*!40000 ALTER TABLE `writeoffreasons` DISABLE KEYS */;
INSERT INTO `writeoffreasons` VALUES (1,'Истек срок годности','Продукция просрочена'),(2,'Порча товара','Механические повреждения или порча'),(3,'Нарушение температурного режима','Температура вышла за допустимые пределы'),(4,'Инвентаризация','Выявлены расхождения при инвентаризации'),(5,'Возврат поставщику','Возврат некачественной продукции');
/*!40000 ALTER TABLE `writeoffreasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writeoffs`
--

DROP TABLE IF EXISTS `writeoffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writeoffs` (
  `write_off_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `write_off_reason_id` int(11) NOT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `write_off_date` datetime DEFAULT current_timestamp(),
  `document_number` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  PRIMARY KEY (`write_off_id`),
  KEY `idx_batch_id` (`batch_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_write_off_reason_id` (`write_off_reason_id`),
  CONSTRAINT `fk_writeoffs_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `productbatches` (`batch_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_writeoffs_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_writeoffs_write_off_reason_id` FOREIGN KEY (`write_off_reason_id`) REFERENCES `writeoffreasons` (`write_off_reason_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writeoffs`
--

LOCK TABLES `writeoffs` WRITE;
/*!40000 ALTER TABLE `writeoffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `writeoffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'meat_shop_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-17  9:20:21
