-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.14-MariaDB

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
-- Table structure for table `ca_cost_direction_info`
--

DROP TABLE IF EXISTS `ca_cost_direction_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_cost_direction_info` (
  `direction_id` varchar(66) DEFAULT NULL,
  `direction_desc` varchar(200) DEFAULT NULL,
  `code_number` varchar(30) DEFAULT NULL,
  `create_user` varchar(30) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_user` varchar(30) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `domain_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_cost_direction_info`
--

LOCK TABLES `ca_cost_direction_info` WRITE;
/*!40000 ALTER TABLE `ca_cost_direction_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_cost_direction_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_cost_pool_info`
--

DROP TABLE IF EXISTS `ca_cost_pool_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_cost_pool_info` (
  `cost_id` varchar(66) NOT NULL,
  `cost_desc` varchar(200) NOT NULL,
  `cost_up_id` varchar(66) NOT NULL,
  `gl_account_id` varchar(30) NOT NULL,
  `create_user` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `modify_user` varchar(30) NOT NULL,
  `modify_date` date NOT NULL,
  `code_number` varchar(30) NOT NULL,
  `domain_id` varchar(30) NOT NULL,
  PRIMARY KEY (`cost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_cost_pool_info`
--

LOCK TABLES `ca_cost_pool_info` WRITE;
/*!40000 ALTER TABLE `ca_cost_pool_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_cost_pool_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_driver_info`
--

DROP TABLE IF EXISTS `ca_driver_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_driver_info` (
  `driver_id` varchar(66) DEFAULT NULL,
  `driver_desc` varchar(200) DEFAULT NULL,
  `code_number` varchar(30) DEFAULT NULL,
  `create_user` varchar(30) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_user` varchar(30) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `domain_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_driver_info`
--

LOCK TABLES `ca_driver_info` WRITE;
/*!40000 ALTER TABLE `ca_driver_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_driver_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_responsibility_info`
--

DROP TABLE IF EXISTS `ca_responsibility_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_responsibility_info` (
  `Org_unit_id` varchar(66) NOT NULL,
  `Org_unit_desc` varchar(200) DEFAULT NULL,
  `Org_up_id` varchar(66) DEFAULT NULL,
  `Cost_type_cd` varchar(1) DEFAULT NULL,
  `Org_attr_cd` varchar(1) DEFAULT NULL,
  `Create_user` varchar(30) DEFAULT NULL,
  `Create_date` date DEFAULT NULL,
  `Modify_user` varchar(30) DEFAULT NULL,
  `Modify_date` date DEFAULT NULL,
  `Domain_id` varchar(30) DEFAULT NULL,
  `Org_code_number` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Org_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_responsibility_info`
--

LOCK TABLES `ca_responsibility_info` WRITE;
/*!40000 ALTER TABLE `ca_responsibility_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_responsibility_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_responsibility_info_attr`
--

DROP TABLE IF EXISTS `ca_responsibility_info_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_responsibility_info_attr` (
  `Org_attr_cd` char(1) NOT NULL,
  `Org_attr_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`Org_attr_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_responsibility_info_attr`
--

LOCK TABLES `ca_responsibility_info_attr` WRITE;
/*!40000 ALTER TABLE `ca_responsibility_info_attr` DISABLE KEYS */;
INSERT INTO `ca_responsibility_info_attr` VALUES ('0','叶子'),('1','节点');
/*!40000 ALTER TABLE `ca_responsibility_info_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_responsibility_info_type`
--

DROP TABLE IF EXISTS `ca_responsibility_info_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_responsibility_info_type` (
  `Cost_type_cd` char(1) NOT NULL,
  `Cost_type_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`Cost_type_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_responsibility_info_type`
--

LOCK TABLES `ca_responsibility_info_type` WRITE;
/*!40000 ALTER TABLE `ca_responsibility_info_type` DISABLE KEYS */;
INSERT INTO `ca_responsibility_info_type` VALUES ('0','成本中心'),('1','利润中心');
/*!40000 ALTER TABLE `ca_responsibility_info_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_subject_info`
--

DROP TABLE IF EXISTS `common_subject_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_subject_info` (
  `gl_account_id` varchar(66) DEFAULT NULL,
  `gl_account_desc` varchar(200) DEFAULT NULL,
  `gl_account_up_id` varchar(66) DEFAULT NULL,
  `code_number` varchar(30) DEFAULT NULL,
  `create_user` varchar(30) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_user` varchar(30) DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `domain_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_subject_info`
--

LOCK TABLES `common_subject_info` WRITE;
/*!40000 ALTER TABLE `common_subject_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_subject_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain_info`
--

DROP TABLE IF EXISTS `sys_domain_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain_info` (
  `domain_id` varchar(30) NOT NULL,
  `domain_name` varchar(300) NOT NULL,
  `domain_status_id` char(1) NOT NULL,
  `domain_create_date` datetime NOT NULL,
  `domain_owner` varchar(30) NOT NULL,
  `domain_maintance_date` datetime DEFAULT NULL,
  `domain_maintance_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`domain_id`),
  KEY `fk_sys_idx_05` (`domain_status_id`),
  CONSTRAINT `fk_sys_idx_05` FOREIGN KEY (`domain_status_id`) REFERENCES `sys_domain_status_attr` (`domain_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='域管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain_info`
--

LOCK TABLES `sys_domain_info` WRITE;
/*!40000 ALTER TABLE `sys_domain_info` DISABLE KEYS */;
INSERT INTO `sys_domain_info` VALUES ('mas','管理会计','0','2017-03-01 10:58:18','admin','2017-03-13 19:58:27','demo'),('test','测试','1','2017-03-14 13:48:06','demo','2017-03-14 14:31:09','demo'),('vertex_root','系统顶级域空间','0','2016-12-26 16:43:19','sys','2017-03-13 19:44:37','demo');
/*!40000 ALTER TABLE `sys_domain_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain_share_info`
--

DROP TABLE IF EXISTS `sys_domain_share_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain_share_info` (
  `uuid` varchar(66) NOT NULL,
  `domain_id` varchar(30) NOT NULL,
  `target_domain_id` varchar(30) NOT NULL,
  `Authorization_level` char(1) NOT NULL,
  `create_user` varchar(30) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `modify_date` date DEFAULT NULL,
  `modify_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `fk_sys_domain_share_info_01_idx` (`domain_id`),
  CONSTRAINT `fk_sys_domain_share_info_01` FOREIGN KEY (`domain_id`) REFERENCES `sys_domain_info` (`domain_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sys_domain_share_info_02` FOREIGN KEY (`domain_id`) REFERENCES `sys_domain_info` (`domain_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain_share_info`
--

LOCK TABLES `sys_domain_share_info` WRITE;
/*!40000 ALTER TABLE `sys_domain_share_info` DISABLE KEYS */;
INSERT INTO `sys_domain_share_info` VALUES ('b642fdaa-0866-11e7-952f-a0c58951c8d5','mas','vertex_root','2','admin','2017-03-14','2017-03-14','admin'),('cf509506-0879-11e7-952f-a0c58951c8d5','test','mas','2','demo','2017-03-14','2017-03-14','demo');
/*!40000 ALTER TABLE `sys_domain_share_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain_status_attr`
--

DROP TABLE IF EXISTS `sys_domain_status_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain_status_attr` (
  `domain_status_id` char(1) NOT NULL,
  `domain_status_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`domain_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain_status_attr`
--

LOCK TABLES `sys_domain_status_attr` WRITE;
/*!40000 ALTER TABLE `sys_domain_status_attr` DISABLE KEYS */;
INSERT INTO `sys_domain_status_attr` VALUES ('0','正常'),('1','锁定'),('2','失效');
/*!40000 ALTER TABLE `sys_domain_status_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_handle_logs`
--

DROP TABLE IF EXISTS `sys_handle_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_handle_logs` (
  `uuid` varchar(60) NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `handle_time` datetime DEFAULT NULL,
  `client_ip` varchar(30) DEFAULT NULL,
  `status_code` varchar(10) DEFAULT NULL,
  `method` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `data` varchar(3000) DEFAULT NULL,
  `domain_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_handle_logs`
--

LOCK TABLES `sys_handle_logs` WRITE;
/*!40000 ALTER TABLE `sys_handle_logs` DISABLE KEYS */;
INSERT INTO `sys_handle_logs` VALUES ('f737c0e5-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:00','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488789360650','vertex_root'),('f749f2aa-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:44','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489542704714','mas'),('f75041c0-0979-11e7-952f-a0c58951c8d5','demo','2017-03-15 20:21:38','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489580498443','mas'),('f7686156-07fe-11e7-952f-a0c58951c8d5','demo','2017-03-13 23:08:47','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489417727263','mas'),('f76b94ab-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:38','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0101010200','mas'),('f76bd6c0-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:38','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0101010200&theme_id=1001','mas'),('f7810cbe-02d9-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:01:03','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488852062141','mas'),('f781e2e5-02df-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:44:00','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0101010000','mas'),('f7829bfa-02df-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:44:00','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0101010000&theme_id=1001','mas'),('f783f598-02d5-11e7-9b60-a0c58951c8d5','demo','2017-03-07 09:32:25','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','mas'),('f784252e-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:53:48','127.0.0.1','200','GET','/v1/auth/batch/page','','vertex_root'),('f785c2d8-02d9-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:01:03','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488852062142','mas'),('f79371f0-0892-11e7-952f-a0c58951c8d5','demo','2017-03-14 16:48:11','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0103020300','mas'),('f793d44a-0892-11e7-952f-a0c58951c8d5','demo','2017-03-14 16:48:11','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0103020300&theme_id=1001','mas'),('f796140e-0223-11e7-9b60-a0c58951c8d5','admin','2017-03-06 12:18:19','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('f7974878-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:20','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0202010000','vertex_root'),('f7974e85-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:20','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0202010000&theme_id=1001','vertex_root'),('f7975218-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:38','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0101010300','mas'),('f7978e76-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:38','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0101010300&theme_id=1001','mas'),('f79cfa6c-094b-11e7-952f-a0c58951c8d5','admin','2017-03-15 14:52:24','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0203020000','vertex_root'),('f79d0646-094b-11e7-952f-a0c58951c8d5','admin','2017-03-15 14:52:24','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0203020000&theme_id=1001','vertex_root'),('f79eddbe-0863-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:11:45','127.0.0.1','200','POST','/v1/auth/resource/org/insert','Domain_id=mas&Org_unit_desc=%E8%B4%B5%E5%B7%9E%E7%9C%81%E5%88%86%E8%A1%8C&Org_unit_id=fdafdg&Up_org_id=mas_join_34124','vertex_root'),('f7a0d27e-0863-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:11:45','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','vertex_root'),('f7a0fd36-0863-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:11:45','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas&limit=10&offset=0&order=asc','vertex_root'),('f7a286cc-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:53:48','127.0.0.1','200','GET','/v1/auth/domain/owner','','vertex_root'),('f7a6d765-0863-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:11:45','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas&limit=10&offset=0&order=asc','vertex_root'),('f7afb964-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:01','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488789360651','vertex_root'),('f7b3f44f-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:01','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488789360652','vertex_root'),('f7b7ba60-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:23','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489048763113','vertex_root'),('f7bba4f0-08ca-11e7-952f-a0c58951c8d5','demo','2017-03-14 23:29:01','127.0.0.1','200','GET','/v1/auth/user/query','','mas'),('f7c1af13-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:39','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0101010200','mas'),('f7c1ec13-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:39','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0101010200&theme_id=1001','mas'),('f7c27063-0939-11e7-952f-a0c58951c8d5','admin','2017-03-15 12:43:33','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489553013447','vertex_root'),('f7c38c20-07d8-11e7-952f-a0c58951c8d5','demo','2017-03-13 18:36:49','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0104010400','mas'),('f7c3c528-07d8-11e7-952f-a0c58951c8d5','demo','2017-03-13 18:36:49','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0104010400&theme_id=1001','mas'),('f7c6f2d0-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:53:48','127.0.0.1','200','GET','/v1/auth/user/roles/get','limit=10&offset=0&order=asc','vertex_root'),('f7c7ed5e-02d9-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:01:03','127.0.0.1','200','GET','/v1/auth/user/page','','mas'),('f7cafce3-02d9-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:01:03','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('f7cc2e66-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:53:48','127.0.0.1','200','GET','/v1/auth/domain/id','','vertex_root'),('f7cd1652-02d9-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:01:03','127.0.0.1','200','GET','/v1/auth/domain/id','','mas'),('f7cfb778-02d9-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:01:03','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','mas'),('f7d00b8d-01ad-11e7-9b60-a0c58951c8d5','demo','2017-03-05 22:13:43','127.0.0.1','418','POST','/v1/auth/resource/org/delete','JSON=%5B%7B%22org_id%22%3A%22134323re_join_200000%22%2C%22org_desc%22%3A%22%E5%8C%97%E4%BA%AC%E5%B8%82%E5%88%86%E8%A1%8C%22%2C%22up_org_id%22%3A%22134323re_join_1000000%22%2C%22status_id%22%3A%220%22%2C%22status_desc%22%3A%22%E6%AD%A3%E5%B8%B8%22%2C%22domain_id%22%3A%22134323re%22%2C%22domain_desc%22%3A%22%E6%B5%8B%E8%AF%95%E5%9F%9F%E5%90%8D%22%2C%22create_date%22%3A%222017-03-05%22%2C%22modify_date%22%3A%222017-03-05%22%2C%22create_user%22%3A%22yangpanhong%22%2C%22modify_user%22%3A%22yangpanhong%22%2C%22code_number%22%3A%22200000%22%2C%22state%22%3Atrue%7D%5D','mas'),('f7d54138-02d9-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:01:03','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('f7d89d38-02d9-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:01:03','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('f7da0668-07fe-11e7-952f-a0c58951c8d5','demo','2017-03-13 23:08:48','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489417727264','mas'),('f7db4a9a-02db-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:15:22','127.0.0.1','403','PUT','/v1/auth/user/modify/status','userDesc=%E6%BC%94%E7%A4%BA%E7%94%A8%E6%88%B7&userId=demo&userStatus=0','mas'),('f7e1d808-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:45','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489542704715','mas'),('f7e26cd3-07fe-11e7-952f-a0c58951c8d5','demo','2017-03-13 23:08:48','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489417727265','mas'),('f7e5e22a-0245-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:21:42','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488788502819','vertex_root'),('f7e9842a-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:45','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489542704716','mas'),('f7ebe438-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:39','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0101010100','mas'),('f7ec3441-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:39','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0101010100&theme_id=1001','mas'),('f7eceb37-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:53:49','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=vertex_root','vertex_root'),('f7f9659d-094b-11e7-952f-a0c58951c8d5','admin','2017-03-15 14:52:24','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0203010000','vertex_root'),('f7f9d2bf-094b-11e7-952f-a0c58951c8d5','admin','2017-03-15 14:52:24','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0203010000&theme_id=1001','vertex_root'),('f7fc82e6-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:53:49','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=vertex_root&limit=10&offset=0&order=asc','vertex_root'),('f8001fec-08b7-11e7-952f-a0c58951c8d5','admin','2017-03-14 21:13:01','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489497181265','vertex_root'),('f80b4415-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:02','127.0.0.1','200','GET','/v1/auth/resource/page','','vertex_root'),('f80d3129-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:27','127.0.0.1','200','POST','/v1/auth/role/resource/rights','res_id=0105020100&role_id=mas_join_masadmin&type_id=0','mas'),('f80fee95-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:02','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('f81123f1-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:27','127.0.0.1','200','GET','/v1/auth/role/resource/get','_=1489411270650&role_id=mas_join_masadmin&type_id=0','mas'),('f811308c-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:53:49','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=vertex_root&limit=10&offset=0&order=asc','vertex_root'),('f816d9a4-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:27','127.0.0.1','200','GET','/v1/auth/role/resource/get','_=1489411270651&role_id=mas_join_masadmin&type_id=1','mas'),('f8237522-07ee-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:14:18','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489410858449','mas'),('f8277499-0873-11e7-952f-a0c58951c8d5','demo','2017-03-14 13:06:17','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489467977723','mas'),('f8308543-0863-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:11:45','127.0.0.1','200','GET','/v1/auth/domain/owner','','vertex_root'),('f8336ac7-0863-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:11:45','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=','vertex_root'),('f84ab75b-0979-11e7-952f-a0c58951c8d5','demo','2017-03-15 20:21:40','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489580500141','mas'),('f85579c2-01a6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 21:23:37','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=ecif','mas'),('f860c48f-0245-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:21:43','127.0.0.1','200','GET','/v1/auth/index/entry','Id=09000000&_=1488788502820','vertex_root'),('f862eaa9-0245-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:21:43','127.0.0.1','200','GET','/v1/auth/main/menu','Id=09000000&TypeId=1&_=1488788502821','vertex_root'),('f86dd2d5-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:46','127.0.0.1','200','GET','/v1/auth/domain/page','','mas'),('f8761019-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:46','127.0.0.1','200','GET','/v1/auth/domain/get','limit=40&offset=0&order=asc','mas'),('f8763f62-094b-11e7-952f-a0c58951c8d5','admin','2017-03-15 14:52:25','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0203000000&theme_id=1001','vertex_root'),('f8764f37-094b-11e7-952f-a0c58951c8d5','admin','2017-03-15 14:52:25','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0203000000','vertex_root'),('f87807e7-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:40','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489466260304','mas'),('f87bc4a7-0991-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:13:25','127.0.0.1','200','POST','/v1/auth/resource/post','group_id=1&res_bg_color=%23339999&res_class=tile+tile-large&res_id=1101010000&res_img=%2Fstatic%2Ftheme%2Fdefault%2Fimg%2Forg.png&res_name=%E7%B3%BB%E7%BB%9F%E7%BB%B4%E6%8A%A4%E5%B8%AE%E5%8A%A9%E4%BF%A1%E6%81%AF&res_type=1&res_up_id=1101000000&res_url=%2Fv1%2Fauth%2Fresource%2Forg%2Fpage&sort_id=1&theme_id=1001','vertex_root'),('f87e427c-0991-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:13:25','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('f8830712-04a2-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:32:15','127.0.0.1','200','GET','/v1/auth/domain/owner','','vertex_root'),('f885f2c6-04a2-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:32:15','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=','vertex_root'),('f89eb8fb-024b-11e7-9b60-a0c58951c8d5','admin','2017-03-06 17:04:41','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('f8ada15e-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:41','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489409141358','mas'),('f8b60dc5-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:22','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0201010000','vertex_root'),('f8b6c31e-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:22','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0201010000&theme_id=1001','vertex_root'),('f8b96186-0284-11e7-9b60-a0c58951c8d5','admin','2017-03-06 23:52:40','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','vertex_root'),('f8bbe335-0284-11e7-9b60-a0c58951c8d5','admin','2017-03-06 23:52:40','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','vertex_root'),('f8c72130-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:25','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0400000000&_=1489048763114','vertex_root'),('f8cca74a-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:25','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0400000000&TypeId=1&_=1489048763115','vertex_root'),('f8e1cb60-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:22','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0201020000','vertex_root'),('f8e1ffe0-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:22','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0201020000&theme_id=1001','vertex_root'),('f8ecf2e0-0873-11e7-952f-a0c58951c8d5','demo','2017-03-14 13:06:19','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489467977724','mas'),('f8f4dcca-0873-11e7-952f-a0c58951c8d5','demo','2017-03-14 13:06:19','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489467977725','mas'),('f8f93038-094b-11e7-952f-a0c58951c8d5','admin','2017-03-15 14:52:26','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0203040000','vertex_root'),('f8f99016-094b-11e7-952f-a0c58951c8d5','admin','2017-03-15 14:52:26','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0203040000&theme_id=1001','vertex_root'),('f9009a3e-01ba-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:46:46','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488728806578','mas'),('f905004a-0991-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:13:26','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=1101010000','vertex_root'),('f9055c63-0991-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:13:26','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=1101010000&theme_id=1001','vertex_root'),('f907ef10-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:22','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0201030000&theme_id=1001','vertex_root'),('f907f24b-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:22','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0201030000','vertex_root'),('f913b99f-07ee-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:14:20','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489410858450','mas'),('f913e81b-024a-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:57:32','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488790652240','vertex_root'),('f9178654-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:03','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0202000000','vertex_root'),('f9184b07-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:03','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0202000000&theme_id=1001','vertex_root'),('f92035d6-07ee-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:14:20','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489410858451','mas'),('f9244f5e-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:41','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489466260305','mas'),('f92d096b-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:41','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489466260306','mas'),('f9421637-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:42','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489409141359','mas'),('f94c73e7-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:23','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0201040000&theme_id=1001','vertex_root'),('f94c7aeb-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:23','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0201040000','vertex_root'),('f94ede88-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:42','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489409141360','mas'),('f9520c15-07de-11e7-952f-a0c58951c8d5','admin','2017-03-13 19:19:48','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489403988502','vertex_root'),('f967eb7d-087c-11e7-952f-a0c58951c8d5','demo','2017-03-14 14:10:45','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','mas'),('f96fcf52-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:23','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0201050000&theme_id=1001','vertex_root'),('f96fdca3-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:23','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0201050000','vertex_root'),('f98deb4e-0861-11e7-952f-a0c58951c8d5','demo','2017-03-14 10:57:29','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489460249143','mas'),('f990aba7-0939-11e7-952f-a0c58951c8d5','admin','2017-03-15 12:43:36','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489553013448','vertex_root'),('f99484ba-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:23','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0201060000','vertex_root'),('f9948a36-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:23','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0201060000&theme_id=1001','vertex_root'),('f99693fe-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:04','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0202010000','vertex_root'),('f996dc8b-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:04','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0202010000&theme_id=1001','vertex_root'),('f996f948-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:43:51','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488807830990','vertex_root'),('f9992777-0939-11e7-952f-a0c58951c8d5','admin','2017-03-15 12:43:36','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489553013449','vertex_root'),('f9a27975-07f0-11e7-952f-a0c58951c8d5','admin','2017-03-13 21:28:40','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('f9b1e375-09e5-11e7-952f-a0c58951c8d5','admin','2017-03-16 09:14:43','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489626883285','vertex_root'),('f9b6f53b-01ba-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:46:47','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488728806579','mas'),('f9ba614c-01ba-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:46:47','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488728806580','mas'),('f9bbfd10-0245-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:21:45','127.0.0.1','404','GET','/v1/auth/ca/org','','vertex_root'),('f9cd9769-091b-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:08:52','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489540131939','mas'),('f9d0461e-0889-11e7-952f-a0c58951c8d5','demo','2017-03-14 15:43:49','127.0.0.1','200','PUT','/v1/auth/resource/update','res_id=0103030400&res_name=%E6%9B%B4%E6%96%B0%E5%85%B1%E4%BA%AB%E5%9F%9F%E4%BF%A1%E6%81%AF%E6%8C%89%E9%92%AE','mas'),('f9d2503c-0889-11e7-952f-a0c58951c8d5','demo','2017-03-14 15:43:49','127.0.0.1','200','GET','/v1/auth/resource/get','','mas'),('f9dd2fc2-07dd-11e7-952f-a0c58951c8d5','admin','2017-03-13 19:12:40','127.0.0.1','200','POST','/v1/auth/domain/delete','JSON=%5B%7B%220%22%3Atrue%2C%22domain_id%22%3A%22demo%22%2C%22domain_desc%22%3A%22%E6%B5%8B%E8%AF%95%E5%9F%9F%E5%90%8D%22%2C%22domain_status%22%3A%22%E6%AD%A3%E5%B8%B8%22%2C%22maintance_date%22%3A%222017-03-13+19%3A11%3A27%22%2C%22create_user_id%22%3A%22demo%22%2C%22domain_modify_date%22%3A%222017-03-13+19%3A11%3A27%22%2C%22domain_modify_user%22%3A%22demo%22%2C%22domain_dept%22%3A%22%22%2C%22domain_up_id%22%3A%22%22%7D%5D','vertex_root'),('f9e2af05-08b5-11e7-952f-a0c58951c8d5','demo','2017-03-14 20:58:45','127.0.0.1','200','GET','/v1/auth/user/query','','mas'),('f9e314d7-0872-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:59:11','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0103010000','mas'),('f9e35056-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:24','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0201000000','vertex_root'),('f9e35b1a-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:24','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0201000000&theme_id=1001','vertex_root'),('f9e36575-0872-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:59:11','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0103010000&theme_id=1001','mas'),('f9f1de0c-07de-11e7-952f-a0c58951c8d5','admin','2017-03-13 19:19:49','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489403988503','vertex_root'),('f9f3fa1b-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:49','127.0.0.1','200','GET','/v1/auth/resource/org/page','_=1489542704718','mas'),('f9f7c901-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:49','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('f9f85c87-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:42','127.0.0.1','200','GET','/v1/auth/domain/page','','mas'),('f9fbc579-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:49','127.0.0.1','200','GET','/v1/auth/domain/id','','mas'),('f9fe54dc-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:43:51','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488807830991','vertex_root'),('f9fe80f0-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:49','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','mas'),('f9ff4501-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:49','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','mas'),('f9ffcb18-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:42','127.0.0.1','200','GET','/v1/auth/domain/get','limit=40&offset=0&order=asc','mas'),('fa01ac03-0997-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:56:25','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489593385214','vertex_root'),('fa02478b-07de-11e7-952f-a0c58951c8d5','admin','2017-03-13 19:19:49','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489403988504','vertex_root'),('fa03a7fd-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:49','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('fa0462c3-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:43:51','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488807830992','vertex_root'),('fa0512e8-02d4-11e7-9b60-a0c58951c8d5','demo','2017-03-07 09:25:19','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488849919648','mas'),('fa067bec-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:49','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('fa07fda3-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:49','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('fa09b994-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:43','127.0.0.1','200','GET','/v1/auth/role/page','','mas'),('fa11c54b-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:43','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('fa156371-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:24','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0201000000&theme_id=1001','vertex_root'),('fa156375-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:24','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0201000000','vertex_root'),('fa17cf31-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:43','127.0.0.1','200','GET','/v1/auth/role/get','domain_id=&limit=10&offset=0&order=asc','mas'),('fa1b19e4-0871-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:52:02','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489467121978','mas'),('fa1c434f-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:43','127.0.0.1','200','GET','/v1/auth/domain/id','','mas'),('fa21b1d8-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:43','127.0.0.1','200','GET','/v1/auth/role/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('fa25609c-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:05','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0202000000','vertex_root'),('fa25ba3a-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:05','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0202000000&theme_id=1001','vertex_root'),('fa2bc546-0271-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:36:42','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0101010000','vertex_root'),('fa2c358a-0271-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:36:42','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0101010000&theme_id=1001','vertex_root'),('fa33c9bb-021b-11e7-9b60-a0c58951c8d5','demo','2017-03-06 11:21:07','127.0.0.1','418','POST','/v1/auth/role/delete','JSON=%5B%7B%22code_number%22%3A%22432143%22%2C%22role_name%22%3A%22431243%22%2C%22create_user%22%3A%22demo%22%2C%22create_date%22%3A%222017-03-06+10%3A31%3A38%22%2C%22role_status_desc%22%3A%22%E6%AD%A3%E5%B8%B8%22%2C%22role_status_code%22%3A%220%22%2C%22domain_id%22%3A%22134323re%22%2C%22domain_desc%22%3A%22%E6%B5%8B%E8%AF%95%E5%9F%9F%E5%90%8D%22%2C%22modify_date%22%3A%222017-03-06+10%3A31%3A38%22%2C%22modify_user%22%3A%22demo%22%2C%22role_id%22%3A%22134323re_join_432143%22%2C%22state%22%3Atrue%7D%5D','mas'),('fa3c246d-01ba-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:46:48','127.0.0.1','200','GET','/v1/auth/HandleLogsPage','','mas'),('fa454abf-01ba-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:46:48','127.0.0.1','200','GET','/v1/auth/handle/logs','limit=80&offset=0&order=asc','mas'),('fa5c5344-02d4-11e7-9b60-a0c58951c8d5','demo','2017-03-07 09:25:20','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488849919649','mas'),('fa5f0f7d-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:43:52','127.0.0.1','200','GET','/v1/auth/resource/page','','vertex_root'),('fa622200-02d4-11e7-9b60-a0c58951c8d5','demo','2017-03-07 09:25:20','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488849919650','mas'),('fa650a6f-0997-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:56:25','127.0.0.1','200','GET','/v1/auth/index/entry','Id=1100000000&_=1489593385215','vertex_root'),('fa66851f-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:43:52','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('fa6a25a2-0997-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:56:26','127.0.0.1','200','GET','/v1/auth/main/menu','Id=1100000000&TypeId=1&_=1489593385216','vertex_root'),('fa6dad17-01b7-11e7-9b60-a0c58951c8d5','admin','2017-03-05 23:25:20','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488727520447','vertex_root'),('fa6ee9dc-07e5-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:09:56','127.0.0.1','419','GET','/v1/auth/domain/share/page','_=1489406976105&domain_id=vertex_root','mas'),('fa7ba36f-01a6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 21:23:41','127.0.0.1','200','POST','/v1/auth/user/post','domainId=ecif&userDesc=43123454&userEmail=hzwy23%40163.com&userId=23432154&userOrgUnitId=ecif_join_4314543&userPasswd=123456&userPasswdConfirm=123456&userPhone=18986110550&userStatus=0','mas'),('fa84e930-01a6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 21:23:41','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('fa8d4a68-091b-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:08:53','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489540131940','mas'),('fa951a05-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:28','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489048767960','vertex_root'),('fa95f89b-091b-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:08:53','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489540131941','mas'),('faa67adc-0991-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:13:29','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489590809310','vertex_root'),('faaac974-0925-11e7-952f-a0c58951c8d5','demo','2017-03-15 10:20:28','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489544428365','mas'),('faac13d4-09e5-11e7-952f-a0c58951c8d5','admin','2017-03-16 09:14:45','127.0.0.1','200','GET','/v1/auth/index/entry','Id=1100000000&_=1489626883286','vertex_root'),('faac1d83-08b7-11e7-952f-a0c58951c8d5','admin','2017-03-14 21:13:05','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489497181266','vertex_root'),('fab17147-09e5-11e7-952f-a0c58951c8d5','admin','2017-03-16 09:14:45','127.0.0.1','200','GET','/v1/auth/main/menu','Id=1100000000&TypeId=1&_=1489626883287','vertex_root'),('fab59fe9-08b7-11e7-952f-a0c58951c8d5','admin','2017-03-14 21:13:05','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489497181267','vertex_root'),('fabb30f9-0861-11e7-952f-a0c58951c8d5','demo','2017-03-14 10:57:31','127.0.0.1','200','GET','/v1/auth/user/query','','mas'),('fac62f67-08b6-11e7-952f-a0c58951c8d5','admin','2017-03-14 21:05:56','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489496756377','vertex_root'),('face1f5a-0939-11e7-952f-a0c58951c8d5','admin','2017-03-15 12:43:38','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489553018583','vertex_root'),('fad22bd9-021b-11e7-9b60-a0c58951c8d5','demo','2017-03-06 11:21:08','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('fad66d6b-024a-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:57:35','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0200000000&_=1488790652241','vertex_root'),('fada6d9d-02d4-11e7-9b60-a0c58951c8d5','demo','2017-03-07 09:25:21','127.0.0.1','200','GET','/v1/auth/user/page','','mas'),('fadc4c38-024a-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:57:35','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0200000000&TypeId=1&_=1488790652242','vertex_root'),('fade2fe1-02d4-11e7-9b60-a0c58951c8d5','demo','2017-03-07 09:25:21','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('fae1732e-02d4-11e7-9b60-a0c58951c8d5','demo','2017-03-07 09:25:21','127.0.0.1','200','GET','/v1/auth/domain/id','','mas'),('fae3499d-02d4-11e7-9b60-a0c58951c8d5','demo','2017-03-07 09:25:21','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','mas'),('fae4ea48-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:28','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489048767961','vertex_root'),('fae56a23-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:44','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489466264397','mas'),('fae7add9-02d4-11e7-9b60-a0c58951c8d5','demo','2017-03-07 09:25:21','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('faeab8dd-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:28','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489048767962','vertex_root'),('faeadf15-02d4-11e7-9b60-a0c58951c8d5','demo','2017-03-07 09:25:21','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('fafd15c6-04a2-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:32:19','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','vertex_root'),('faff493e-0892-11e7-952f-a0c58951c8d5','demo','2017-03-14 16:48:17','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0101010200','mas'),('faff79fc-0997-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:56:26','127.0.0.1','200','GET','/v1/help/system/help','','vertex_root'),('faff7ccb-0892-11e7-952f-a0c58951c8d5','demo','2017-03-14 16:48:17','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0101010200&theme_id=1001','mas'),('faffc07e-085c-11e7-952f-a0c58951c8d5','demo','2017-03-14 10:21:44','127.0.0.1','200','GET','/v1/auth/user/query','','mas'),('fb1c7401-0245-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:21:48','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488788508193','vertex_root'),('fb2258fb-0922-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:59:00','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489543140656','mas'),('fb25bb8e-0925-11e7-952f-a0c58951c8d5','demo','2017-03-15 10:20:29','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489544428366','mas'),('fb2cd8b0-0925-11e7-952f-a0c58951c8d5','demo','2017-03-15 10:20:29','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489544428367','mas'),('fb2e6127-0279-11e7-9b60-a0c58951c8d5','demo','2017-03-06 22:34:00','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488810840147','mas'),('fb33660f-0284-11e7-9b60-a0c58951c8d5','admin','2017-03-06 23:52:44','127.0.0.1','200','PUT','/v1/auth/user/modify/status','userDesc=%E6%BC%94%E7%A4%BA%E7%94%A8%E6%88%B7&userId=demo&userStatus=0','vertex_root'),('fb3a1d10-07ee-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:14:23','127.0.0.1','200','GET','/v1/auth/role/page','_=1489410858452','mas'),('fb3cc214-07de-11e7-952f-a0c58951c8d5','admin','2017-03-13 19:19:51','127.0.0.1','200','GET','/v1/auth/domain/page','','vertex_root'),('fb451f5c-07ee-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:14:23','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('fb4b251c-07ee-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:14:23','127.0.0.1','403','GET','/v1/auth/role/get','domain_id=&limit=10&offset=0&order=asc','mas'),('fb4b4669-07de-11e7-952f-a0c58951c8d5','admin','2017-03-13 19:19:51','127.0.0.1','200','GET','/v1/auth/domain/get','limit=40&offset=0&order=asc','vertex_root'),('fb4d2629-07ee-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:14:23','127.0.0.1','200','GET','/v1/auth/domain/id','','mas'),('fb504e3e-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:29','127.0.0.1','200','GET','/v1/auth/resource/page','','vertex_root'),('fb513068-0991-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:13:30','127.0.0.1','200','GET','/v1/auth/index/entry','Id=1100000000&_=1489590809311','vertex_root'),('fb52ee13-07ee-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:14:23','127.0.0.1','403','GET','/v1/auth/role/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('fb54249c-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:29','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('fb593a39-0991-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:13:30','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489590809312','vertex_root'),('fb5e5502-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:46','127.0.0.1','200','GET','/v1/auth/role/resource/details','_=1489409141362&role_id=mas_join_masadmin','mas'),('fb613a37-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:51','127.0.0.1','200','GET','/v1/auth/resource/page','_=1489542704719','mas'),('fb6687e4-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:46','127.0.0.1','200','GET','/v1/auth/role/resource/get','_=1489409141363&role_id=mas_join_masadmin&type_id=0','mas'),('fb674fea-0921-11e7-952f-a0c58951c8d5','demo','2017-03-15 09:51:51','127.0.0.1','200','GET','/v1/auth/resource/get','','mas'),('fb69ca75-07ea-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:45:46','127.0.0.1','200','GET','/v1/auth/role/resource/get','_=1489409141364&role_id=mas_join_masadmin&type_id=1','mas'),('fb7f425b-01ad-11e7-9b60-a0c58951c8d5','demo','2017-03-05 22:13:49','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('fb81078e-09e5-11e7-952f-a0c58951c8d5','admin','2017-03-16 09:14:46','127.0.0.1','200','GET','/v1/help/system/help','','vertex_root'),('fb843a43-0925-11e7-952f-a0c58951c8d5','demo','2017-03-15 10:20:29','127.0.0.1','200','GET','/v1/auth/domain/page','','mas'),('fb87abc0-0873-11e7-952f-a0c58951c8d5','demo','2017-03-14 13:06:23','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489467983392','mas'),('fb894393-01ad-11e7-9b60-a0c58951c8d5','demo','2017-03-05 22:13:49','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=','mas'),('fb8d08e1-0925-11e7-952f-a0c58951c8d5','demo','2017-03-15 10:20:29','127.0.0.1','200','GET','/v1/auth/domain/get','limit=40&offset=0&order=asc','mas'),('fb903eba-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:33','127.0.0.1','200','POST','/v1/auth/role/resource/rights','res_id=0100000000&role_id=mas_join_masadmin&type_id=1','mas'),('fb94e7e5-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:33','127.0.0.1','200','GET','/v1/auth/role/resource/get','_=1489411270652&role_id=mas_join_masadmin&type_id=0','mas'),('fb95506d-0246-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:28:58','127.0.0.1','200','POST','/v1/auth/resource/post','group_id=1&res_bg_color=%23339999&res_class=tile&res_id=0201010000&res_img=%2Fstatic%2Ftheme%2Fdefault%2Fimg%2Forg.png&res_name=%E8%B4%A3%E4%BB%BB%E4%B8%AD%E5%BF%83&res_type=1&res_up_id=0201000000&res_url=%2Fv1%2Fauth%2Fresource%2Forg%2Fpage&sort_id=1&theme_id=1001','vertex_root'),('fb96e6e8-0246-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:28:58','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('fb994802-07e1-11e7-952f-a0c58951c8d5','demo','2017-03-13 19:41:20','127.0.0.1','200','POST','/v1/auth/resource/post','group_id=&res_bg_color=&res_class=tile&res_id=0103030300&res_img=&res_name=%E5%88%A0%E9%99%A4%E5%85%B1%E4%BA%AB%E5%9F%9F%E4%BF%A1%E6%81%AF&res_type=2&res_up_id=0103030000&res_url=%2Fv1%2Fauth%2Fdomain%2Fshare%2Fdelete&sort_id=&theme_id=1001','mas'),('fb9993e0-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:33','127.0.0.1','200','GET','/v1/auth/role/resource/get','_=1489411270653&role_id=mas_join_masadmin&type_id=1','mas'),('fb9d2e95-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:45','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489466264398','mas'),('fb9fe1ba-07e1-11e7-952f-a0c58951c8d5','demo','2017-03-13 19:41:20','127.0.0.1','200','GET','/v1/auth/resource/get','','mas'),('fba523d5-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:45','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489466264399','mas'),('fba988cb-094b-11e7-952f-a0c58951c8d5','admin','2017-03-15 14:52:31','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('fbb6b657-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:43:54','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0101010000','vertex_root'),('fbb77031-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:43:54','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0101010000&theme_id=1001','vertex_root'),('fbbbc866-088b-11e7-952f-a0c58951c8d5','demo','2017-03-14 15:58:11','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0103020200&theme_id=1001','mas'),('fbbc3d5d-088b-11e7-952f-a0c58951c8d5','demo','2017-03-14 15:58:11','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0103020200','mas'),('fbfde664-0873-11e7-952f-a0c58951c8d5','demo','2017-03-14 13:06:24','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489467983393','mas'),('fc05b6a5-01b6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:18:13','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488727093577','mas'),('fc05c8f9-0873-11e7-952f-a0c58951c8d5','demo','2017-03-14 13:06:24','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489467983394','mas'),('fc1b7bba-0862-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:04:43','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','vertex_root'),('fc3a2ead-094b-11e7-952f-a0c58951c8d5','admin','2017-03-15 14:52:31','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('fc4070ab-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:30','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0404000000','vertex_root'),('fc410191-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:30','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0404000000&theme_id=1001','vertex_root'),('fc4dc8e9-01b7-11e7-9b60-a0c58951c8d5','admin','2017-03-05 23:25:23','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488727520448','vertex_root'),('fc51a31c-01b7-11e7-9b60-a0c58951c8d5','admin','2017-03-05 23:25:23','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488727520449','vertex_root'),('fc5f9d9f-0245-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:21:50','127.0.0.1','200','GET','/v1/auth/index/entry','Id=09000000&_=1488788508194','vertex_root'),('fc6032bd-0872-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:59:15','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0103010100','mas'),('fc608767-0872-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:59:15','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0103010100&theme_id=1001','mas'),('fc62cfdb-0245-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:21:50','127.0.0.1','200','GET','/v1/auth/main/menu','Id=09000000&TypeId=1&_=1488788508195','vertex_root'),('fc6d15a9-0991-11e7-952f-a0c58951c8d5','admin','2017-03-15 23:13:32','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489590812325','vertex_root'),('fc7b6c07-08b5-11e7-952f-a0c58951c8d5','demo','2017-03-14 20:58:49','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489496329816','mas'),('fc98debe-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:28','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0300000000&theme_id=1001','vertex_root'),('fc98e225-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:28','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0300000000','vertex_root'),('fcaaff41-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:47','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489466267376','mas'),('fcabae7f-0872-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:59:15','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0103010000','mas'),('fcabb607-0872-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:59:15','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0103010000&theme_id=1001','mas'),('fcc1cc79-01ad-11e7-9b60-a0c58951c8d5','demo','2017-03-05 22:13:51','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=134323re','mas'),('fcc70a6f-0861-11e7-952f-a0c58951c8d5','demo','2017-03-14 10:57:34','127.0.0.1','421','POST','/v1/auth/passwd/update','newpasswd=123&orapasswd=123&surepasswd=123','mas'),('fce1d8fa-024a-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:57:38','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488790658658','vertex_root'),('fcef3dc7-0246-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:29:00','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488788940744','vertex_root'),('fcfbcde8-0894-11e7-952f-a0c58951c8d5','demo','2017-03-14 17:02:39','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0105010400','mas'),('fcfbcfe3-0894-11e7-952f-a0c58951c8d5','demo','2017-03-14 17:02:39','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0105010400&theme_id=1001','mas'),('fd1b4622-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:36','127.0.0.1','200','POST','/v1/auth/role/resource/rights','res_id=0105020500&role_id=mas_join_masadmin&type_id=0','mas'),('fd1c163a-02de-11e7-9b60-a0c58951c8d5','admin','2017-03-07 10:36:59','127.0.0.1','200','POST','/v1/auth/role/post','domain_id=mas&role_id=ftpdemo&role_name=%E5%86%85%E9%83%A8%E8%B5%84%E9%87%91%E8%BD%AC%E7%A7%BB%E5%AE%9A%E4%BB%B7%E6%BC%94%E7%A4%BA%E8%A7%92%E8%89%B2&role_status=0','vertex_root'),('fd1dc475-02de-11e7-9b60-a0c58951c8d5','admin','2017-03-07 10:36:59','127.0.0.1','200','GET','/v1/auth/role/get','domain_id=mas&limit=10&offset=0&order=asc','vertex_root'),('fd209444-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:36','127.0.0.1','200','GET','/v1/auth/role/resource/get','_=1489411270654&role_id=mas_join_masadmin&type_id=0','mas'),('fd267284-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:36','127.0.0.1','200','GET','/v1/auth/role/resource/get','_=1489411270655&role_id=mas_join_masadmin&type_id=1','mas'),('fd430b0e-01b7-11e7-9b60-a0c58951c8d5','admin','2017-03-05 23:25:25','127.0.0.1','200','GET','/v1/auth/resource/page','','vertex_root'),('fd471a4e-01b7-11e7-9b60-a0c58951c8d5','admin','2017-03-05 23:25:25','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('fd5490b9-06d3-11e7-9e3b-a0c58951c8d5','demo','2017-03-12 11:28:41','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489289321549','mas'),('fd56c749-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:48','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489466267377','mas'),('fd5c3c2f-085d-11e7-952f-a0c58951c8d5','demo','2017-03-14 10:28:57','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489458537547','mas'),('fd5e8cb3-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:48','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489466267378','mas'),('fd686e06-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:43:57','127.0.0.1','200','PUT','/v1/auth/resource/config/theme','res_by_color=%23339999&res_class=tile+tile-wide&res_group_id=3&res_id=0101010000&res_img=%2Fstatic%2Ftheme%2Fdefault%2Fimg%2Flogs_shen.png&res_sort_id=1&res_url=%2Fv1%2Fauth%2FHandleLogsPage&theme_id=1001','vertex_root'),('fd6b2bf5-0246-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:29:01','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0200000000&_=1488788940745','vertex_root'),('fd6d08f5-01ab-11e7-9b60-a0c58951c8d5','admin','2017-03-05 21:59:33','127.0.0.1','200','GET','/v1/auth/domain/share/page','_=1488722347787&domain_id=134323re','vertex_root'),('fd706ac7-0246-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:29:01','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0200000000&TypeId=1&_=1488788940746','vertex_root'),('fd728dab-01b6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:18:16','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488727093578','mas'),('fd76371a-01b6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:18:16','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488727093579','mas'),('fd76a714-01ab-11e7-9b60-a0c58951c8d5','admin','2017-03-05 21:59:33','127.0.0.1','200','GET','/v1/auth/domain/owner','','vertex_root'),('fd7aad21-01ab-11e7-9b60-a0c58951c8d5','admin','2017-03-05 21:59:33','127.0.0.1','200','GET','/v1/auth/domain/share/get','domain_id=134323re&limit=10&offset=0&order=asc','vertex_root'),('fd8cb5c3-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:53:58','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489398837772','vertex_root'),('fd9c0c56-0862-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:04:45','127.0.0.1','200','POST','/v1/auth/user/post','domainId=mas&userDesc=%E6%B5%8B%E8%AF%95%E7%94%A8%E6%88%B7&userEmail=hzwy23%40163.com&userId=test1&userOrgUnitId=mas_join_512345423&userPasswd=123456&userPasswdConfirm=123456&userPhone=18986110550&userStatus=0','vertex_root'),('fd9eef49-0862-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:04:45','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','vertex_root'),('fda21d39-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:11','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0202010000&theme_id=1001','vertex_root'),('fda21d70-0247-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:36:11','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0202010000','vertex_root'),('fda8f4cf-07de-11e7-952f-a0c58951c8d5','admin','2017-03-13 19:19:55','127.0.0.1','200','GET','/v1/auth/resource/page','','vertex_root'),('fdac5735-07de-11e7-952f-a0c58951c8d5','admin','2017-03-13 19:19:55','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('fdb57ec3-06d3-11e7-9e3b-a0c58951c8d5','demo','2017-03-12 11:28:42','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489289321550','mas'),('fdb87b10-06d3-11e7-9e3b-a0c58951c8d5','demo','2017-03-12 11:28:42','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489289321551','mas'),('fdcd5803-01b6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:18:16','127.0.0.1','200','GET','/v1/auth/domain/page','','mas'),('fdd24f83-01b6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:18:16','127.0.0.1','200','GET','/v1/auth/domain/get','limit=40&offset=0&order=asc','mas'),('fddcf7be-0271-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:36:48','127.0.0.1','200','PUT','/v1/auth/resource/config/theme','res_id=0101010000','vertex_root'),('fddda2de-085d-11e7-952f-a0c58951c8d5','demo','2017-03-14 10:28:58','127.0.0.1','200','GET','/v1/auth/user/query','','mas'),('fde2932e-02de-11e7-9b60-a0c58951c8d5','admin','2017-03-07 10:37:01','127.0.0.1','200','GET','/v1/auth/domain/owner','','vertex_root'),('fde4e18b-07e1-11e7-952f-a0c58951c8d5','demo','2017-03-13 19:41:24','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0103030000','mas'),('fde514e1-07e1-11e7-952f-a0c58951c8d5','demo','2017-03-13 19:41:24','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0103030000&theme_id=1001','mas'),('fdf7bb6c-0250-11e7-9b60-a0c58951c8d5','admin','2017-03-06 17:40:37','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488793237396','vertex_root'),('fe3153e1-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:53:59','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489398837773','vertex_root'),('fe3cf6fd-01a6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 21:23:47','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=134323re','mas'),('fe4828d7-01a6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 21:23:47','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=134323re&limit=10&offset=0&order=asc','mas'),('fe517c32-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:53:59','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489398837774','vertex_root'),('fe541f1e-0250-11e7-9b60-a0c58951c8d5','admin','2017-03-06 17:40:38','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488793237397','vertex_root'),('fe575af3-0862-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:04:46','127.0.0.1','200','GET','/v1/auth/domain/owner','','vertex_root'),('fe5999ae-0862-11e7-952f-a0c58951c8d5','admin','2017-03-14 11:04:46','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=','vertex_root'),('fe5addb8-0250-11e7-9b60-a0c58951c8d5','admin','2017-03-06 17:40:38','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488793237398','vertex_root'),('fe5b5c95-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:38','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489411298435','mas'),('fe6988a8-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:50','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489466270299','mas'),('fe6ae42d-08b7-11e7-952f-a0c58951c8d5','admin','2017-03-14 21:13:12','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489497192049','vertex_root'),('fe75251e-085f-11e7-952f-a0c58951c8d5','demo','2017-03-14 10:43:18','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489459398386','mas'),('fe77798e-01ab-11e7-9b60-a0c58951c8d5','admin','2017-03-05 21:59:35','127.0.0.1','200','GET','/v1/auth/domain/share/unauth','domain_id=134323re','vertex_root'),('fe8ee131-02df-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:44:11','127.0.0.1','200','GET','/v1/auth/HandleLogsPage','','mas'),('fe9cdefa-02df-11e7-9b60-a0c58951c8d5','demo','2017-03-07 10:44:11','127.0.0.1','200','GET','/v1/auth/handle/logs','limit=80&offset=0&order=asc','mas'),('fea44507-01b7-11e7-9b60-a0c58951c8d5','admin','2017-03-05 23:25:27','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488727527560','vertex_root'),('fea6cd0a-098e-11e7-952f-a0c58951c8d5','demo','2017-03-15 22:52:07','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489589527511','mas'),('feadf449-06d3-11e7-9e3b-a0c58951c8d5','demo','2017-03-12 11:28:43','127.0.0.1','200','GET','/v1/auth/user/page','','mas'),('feb0e1af-06d3-11e7-9e3b-a0c58951c8d5','demo','2017-03-12 11:28:43','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('feb2c2e7-06d3-11e7-9e3b-a0c58951c8d5','demo','2017-03-12 11:28:43','127.0.0.1','200','GET','/v1/auth/domain/id','','mas'),('feb5c951-06d3-11e7-9e3b-a0c58951c8d5','demo','2017-03-12 11:28:43','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','mas'),('feb95400-06d3-11e7-9e3b-a0c58951c8d5','demo','2017-03-12 11:28:43','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('febb490d-06d3-11e7-9e3b-a0c58951c8d5','demo','2017-03-12 11:28:43','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('febbe569-0250-11e7-9b60-a0c58951c8d5','admin','2017-03-06 17:40:38','127.0.0.1','200','GET','/v1/auth/resource/page','','vertex_root'),('febfcf0b-027a-11e7-9b60-a0c58951c8d5','demo','2017-03-06 22:41:15','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488811275645','mas'),('fec0531d-0250-11e7-9b60-a0c58951c8d5','admin','2017-03-06 17:40:38','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('fec1ae48-088f-11e7-952f-a0c58951c8d5','demo','2017-03-14 16:26:54','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0103010200','mas'),('fec1bcbf-088f-11e7-952f-a0c58951c8d5','demo','2017-03-14 16:26:54','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0103010200&theme_id=1001','mas'),('fec238f1-021b-11e7-9b60-a0c58951c8d5','demo','2017-03-06 11:21:15','127.0.0.1','421','PUT','/v1/auth/role/update','Role_id=134323re_join_432143&Role_name=t654554&Role_status=0','mas'),('fec49392-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:35','127.0.0.1','200','PUT','/v1/auth/resource/config/theme','res_by_color=%23339999&res_class=tile+tile-wide&res_group_id=1&res_id=0404000000&res_img=%2Fstatic%2Ftheme%2Fdefault%2Fimg%2Forg.png&res_sort_id=2&res_url=%2Fv1%2Fauth%2Fresource%2Forg%2Fpage&theme_id=1001','vertex_root'),('fec5ceb6-0284-11e7-9b60-a0c58951c8d5','demo','2017-03-06 23:52:50','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488815570675','mas'),('fed482f6-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:43:59','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488807839771','vertex_root'),('fee153a0-0873-11e7-952f-a0c58951c8d5','demo','2017-03-14 13:06:29','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489467989068','mas'),('feec85da-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:39','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489411298436','mas'),('feeda0a6-01b7-11e7-9b60-a0c58951c8d5','admin','2017-03-05 23:25:28','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488727527561','vertex_root'),('fef11595-01b7-11e7-9b60-a0c58951c8d5','admin','2017-03-05 23:25:28','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488727527562','vertex_root'),('fef35126-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:39','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489411298437','mas'),('fef37013-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:51','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489466270300','mas'),('fef83078-0246-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:29:04','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488788944174','vertex_root'),('fefdb974-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:51','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489466270301','mas'),('ff0c9b7a-01ba-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:46:56','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488728816712','mas'),('ff146b4a-088b-11e7-952f-a0c58951c8d5','demo','2017-03-14 15:58:17','127.0.0.1','200','PUT','/v1/auth/resource/update','res_id=0103020200&res_name=%E6%96%B0%E5%A2%9E%E7%BB%84%E7%BB%87%E6%9E%B6%E6%9E%84%E4%BF%A1%E6%81%AF%E6%8C%89%E9%92%AE','mas'),('ff167e16-088b-11e7-952f-a0c58951c8d5','demo','2017-03-14 15:58:17','127.0.0.1','200','GET','/v1/auth/resource/get','','mas'),('ff2c5e8b-0240-11e7-9b60-a0c58951c8d5','demo','2017-03-06 15:46:07','127.0.0.1','200','GET','/v1/auth/resource/get','','mas'),('ff327a4d-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:35','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0403000000','vertex_root'),('ff331a2f-04a3-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:39:35','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0403000000&theme_id=1001','vertex_root'),('ff3caa1b-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:44:00','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488807839772','vertex_root'),('ff426d79-0272-11e7-9b60-a0c58951c8d5','admin','2017-03-06 21:44:00','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488807839773','vertex_root'),('ff4ddafd-0892-11e7-952f-a0c58951c8d5','demo','2017-03-14 16:48:24','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0101000000','mas'),('ff4dfc71-0892-11e7-952f-a0c58951c8d5','demo','2017-03-14 16:48:24','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0101000000&theme_id=1001','mas'),('ff50aa2a-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:54:01','127.0.0.1','200','GET','/v1/auth/domain/page','','vertex_root'),('ff514957-0284-11e7-9b60-a0c58951c8d5','demo','2017-03-06 23:52:51','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488815570676','mas'),('ff523a40-08b5-11e7-952f-a0c58951c8d5','demo','2017-03-14 20:58:54','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489496329817','mas'),('ff539b24-0284-11e7-9b60-a0c58951c8d5','demo','2017-03-06 23:52:51','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488815570677','mas'),('ff5611ba-027a-11e7-9b60-a0c58951c8d5','demo','2017-03-06 22:41:16','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488811275646','mas'),('ff5803e9-0250-11e7-9b60-a0c58951c8d5','admin','2017-03-06 17:40:39','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0101010000','vertex_root'),('ff58a37a-0250-11e7-9b60-a0c58951c8d5','admin','2017-03-06 17:40:39','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0101010000&theme_id=1001','vertex_root'),('ff58d7ea-08b5-11e7-952f-a0c58951c8d5','demo','2017-03-14 20:58:54','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489496329818','mas'),('ff59ca29-027a-11e7-9b60-a0c58951c8d5','demo','2017-03-06 22:41:16','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488811275647','mas'),('ff5ae530-0249-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:50:33','127.0.0.1','200','GET','/v1/auth/resource/get','','vertex_root'),('ff5fce00-098e-11e7-952f-a0c58951c8d5','demo','2017-03-15 22:52:08','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1489589527512','mas'),('ff691fe7-098e-11e7-952f-a0c58951c8d5','demo','2017-03-15 22:52:08','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1489589527513','mas'),('ff7094ec-0939-11e7-952f-a0c58951c8d5','admin','2017-03-15 12:43:46','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489553026343','vertex_root'),('ff71fb52-08b6-11e7-952f-a0c58951c8d5','admin','2017-03-14 21:06:04','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489496764289','vertex_root'),('ff76f23c-07e5-11e7-952f-a0c58951c8d5','demo','2017-03-13 20:10:05','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1489407005311','mas'),('ff84e8c3-07d2-11e7-95d9-a0c58951c8d5','admin','2017-03-13 17:54:01','127.0.0.1','200','GET','/v1/auth/domain/get','limit=40&offset=0&order=asc','vertex_root'),('ff875b2b-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:40','127.0.0.1','200','GET','/v1/auth/role/page','_=1489411298438','mas'),('ff8a4b6f-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:40','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('ff8a6f78-04a2-11e7-9b60-a0c58951c8d5','admin','2017-03-09 16:32:26','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=vertex_root','vertex_root'),('ff8e6699-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:40','127.0.0.1','200','GET','/v1/auth/role/get','domain_id=&limit=10&offset=0&order=asc','mas'),('ff8f4dd1-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:40','127.0.0.1','200','GET','/v1/auth/domain/id','','mas'),('ff933d01-0246-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:29:05','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488788945198','vertex_root'),('ff951fd1-07ef-11e7-952f-a0c58951c8d5','demo','2017-03-13 21:21:40','127.0.0.1','200','GET','/v1/auth/role/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('ff9f1c77-0284-11e7-9b60-a0c58951c8d5','demo','2017-03-06 23:52:52','127.0.0.1','200','GET','/v1/auth/user/page','','mas'),('ff9f31c3-01a6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 21:23:49','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=ecif','mas'),('ffa2a31a-0284-11e7-9b60-a0c58951c8d5','demo','2017-03-06 23:52:52','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('ffa3703b-01a6-11e7-9b60-a0c58951c8d5','demo','2017-03-05 21:23:50','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=ecif&limit=10&offset=0&order=asc','mas'),('ffa3923d-0873-11e7-952f-a0c58951c8d5','demo','2017-03-14 13:06:30','127.0.0.1','200','GET','/v1/auth/index/entry','Id=1100000000&_=1489467989069','mas'),('ffa618da-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:52','127.0.0.1','200','GET','/v1/auth/domain/page','','mas'),('ffa64abc-0284-11e7-9b60-a0c58951c8d5','demo','2017-03-06 23:52:52','127.0.0.1','200','GET','/v1/auth/domain/id','','mas'),('ffa7777c-027a-11e7-9b60-a0c58951c8d5','demo','2017-03-06 22:41:17','127.0.0.1','200','GET','/v1/auth/user/page','','mas'),('ffa88b5e-0284-11e7-9b60-a0c58951c8d5','demo','2017-03-06 23:52:52','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','mas'),('ffa99885-027a-11e7-9b60-a0c58951c8d5','demo','2017-03-06 22:41:17','127.0.0.1','200','GET','/v1/auth/domain/owner','','mas'),('ffaccd8d-086f-11e7-952f-a0c58951c8d5','demo','2017-03-14 12:37:52','127.0.0.1','200','GET','/v1/auth/domain/get','limit=40&offset=0&order=asc','mas'),('ffacf47c-027a-11e7-9b60-a0c58951c8d5','demo','2017-03-06 22:41:17','127.0.0.1','200','GET','/v1/auth/domain/id','','mas'),('ffadcef8-0284-11e7-9b60-a0c58951c8d5','demo','2017-03-06 23:52:52','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('ffb13c6b-0284-11e7-9b60-a0c58951c8d5','demo','2017-03-06 23:52:52','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('ffb2321a-027a-11e7-9b60-a0c58951c8d5','demo','2017-03-06 22:41:17','127.0.0.1','200','GET','/v1/auth/resource/org/get','domain_id=mas','mas'),('ffb7476b-027a-11e7-9b60-a0c58951c8d5','demo','2017-03-06 22:41:17','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('ffbafcd6-027a-11e7-9b60-a0c58951c8d5','demo','2017-03-06 22:41:17','127.0.0.1','200','GET','/v1/auth/user/get','domain_id=mas&limit=10&offset=0&order=asc','mas'),('ffc5c937-0251-11e7-9b60-a0c58951c8d5','admin','2017-03-06 17:47:50','127.0.0.1','200','GET','/v1/auth/main/menu','Id=-1&TypeId=0&_=1488793669896','vertex_root'),('ffc9a7c7-0888-11e7-952f-a0c58951c8d5','demo','2017-03-14 15:36:50','127.0.0.1','200','GET','/v1/auth/resource/query','res_id=0104010200','mas'),('ffc9afbe-0888-11e7-952f-a0c58951c8d5','demo','2017-03-14 15:36:50','127.0.0.1','200','GET','/v1/auth/resource/queryTheme','res_id=0104010200&theme_id=1001','mas'),('ffd7b011-01ba-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:46:58','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488728816713','mas'),('ffdb795e-01ba-11e7-9b60-a0c58951c8d5','demo','2017-03-05 23:46:58','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488728816714','mas'),('ffee2767-098e-11e7-952f-a0c58951c8d5','demo','2017-03-15 22:52:09','127.0.0.1','200','GET','/v1/auth/domain/page','','mas'),('ffef1407-0246-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:29:05','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0100000000&_=1488788945199','vertex_root'),('fff156a1-0246-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:29:05','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0100000000&TypeId=1&_=1488788945200','vertex_root'),('fff83056-098e-11e7-952f-a0c58951c8d5','demo','2017-03-15 22:52:09','127.0.0.1','200','GET','/v1/auth/domain/get','limit=40&offset=0&order=asc','mas'),('fff8f69d-024a-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:57:43','127.0.0.1','200','GET','/v1/auth/index/entry','Id=0300000000&_=1488790658659','vertex_root'),('fffd6083-024a-11e7-9b60-a0c58951c8d5','admin','2017-03-06 16:57:43','127.0.0.1','200','GET','/v1/auth/main/menu','Id=0300000000&TypeId=1&_=1488790658660','vertex_root');
/*!40000 ALTER TABLE `sys_handle_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_index_page`
--

DROP TABLE IF EXISTS `sys_index_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_index_page` (
  `theme_id` varchar(30) NOT NULL,
  `res_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_index_page`
--

LOCK TABLES `sys_index_page` WRITE;
/*!40000 ALTER TABLE `sys_index_page` DISABLE KEYS */;
INSERT INTO `sys_index_page` VALUES ('1001','./views/hauth/theme/default/index.tpl'),('1004','./views/hauth/theme/tradition/index.tpl');
/*!40000 ALTER TABLE `sys_index_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_org_info`
--

DROP TABLE IF EXISTS `sys_org_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_org_info` (
  `org_unit_id` varchar(66) NOT NULL,
  `org_unit_desc` varchar(300) NOT NULL,
  `up_org_id` varchar(66) NOT NULL,
  `org_status_id` char(1) NOT NULL,
  `domain_id` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `maintance_date` date NOT NULL,
  `create_user` varchar(30) NOT NULL,
  `maintance_user` varchar(30) NOT NULL,
  `code_number` varchar(66) NOT NULL,
  PRIMARY KEY (`org_unit_id`),
  KEY `FK_REFERENCE_15` (`org_status_id`),
  KEY `pk_sys_org_info_03_idx` (`domain_id`),
  CONSTRAINT `FK_REFERENCE_15` FOREIGN KEY (`org_status_id`) REFERENCES `sys_org_status_attr` (`org_status_id`),
  CONSTRAINT `fk_sys_org_info_01` FOREIGN KEY (`domain_id`) REFERENCES `sys_domain_info` (`domain_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_org_info`
--

LOCK TABLES `sys_org_info` WRITE;
/*!40000 ALTER TABLE `sys_org_info` DISABLE KEYS */;
INSERT INTO `sys_org_info` VALUES ('mas_join_234fda','攀枝花市分行','mas_join_5233454','0','mas','2017-03-14','2017-03-14','admin','admin','234fda'),('mas_join_34124','工商银行','root_vertex_system','0','mas','2017-03-01','2017-03-01','admin','admin','34124'),('mas_join_4321643','自贡市分行','mas_join_5233454','0','mas','2017-03-14','2017-03-14','admin','admin','4321643'),('mas_join_45246543','武汉市分行','mas_join_512345423','0','mas','2017-03-01','2017-03-01','admin','admin','45246543'),('mas_join_4542346','孝感市分行','mas_join_512345423','0','mas','2017-03-01','2017-03-01','admin','admin','4542346'),('mas_join_512345423','湖北省分行','mas_join_34124','0','mas','2017-03-01','2017-03-01','admin','admin','512345423'),('mas_join_5233454','四川省分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','5233454'),('mas_join_aefd','欧洲分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','aefd'),('mas_join_fdafdg','贵州省分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','fdafdg'),('mas_join_fdaga','重庆市分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','fdaga'),('mas_join_fdagqe','宁夏省分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','fdagqe'),('mas_join_fdasfd','上海市分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','fdasfd'),('mas_join_fdsagd','泸州市分行','mas_join_5233454','0','mas','2017-03-14','2017-03-14','admin','admin','fdsagd'),('mas_join_feqhda','海南省分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','feqhda'),('mas_join_ffadg','安徽省分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','ffadg'),('mas_join_fgasdbc','台湾省分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','fgasdbc'),('mas_join_fgasdf','成都市分行','mas_join_5233454','0','mas','2017-03-14','2017-03-14','admin','admin','fgasdf'),('mas_join_fgdasdf','南充市分行','mas_join_5233454','0','mas','2017-03-14','2017-03-14','admin','admin','fgdasdf'),('mas_join_fhadf','香港特别行政区分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','fhadf'),('mas_join_gasdh3','雅安市分行','mas_join_5233454','0','mas','2017-03-14','2017-03-14','admin','admin','gasdh3'),('mas_join_gdsafe','甘孜分行','mas_join_5233454','0','mas','2017-03-14','2017-03-14','admin','admin','gdsafe'),('mas_join_reqggfdas','江西省分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','reqggfdas'),('mas_join_rqreg','北京市分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','rqreg'),('mas_join_trwt','湖南省分行','mas_join_34124','0','mas','2017-03-14','2017-03-14','admin','admin','trwt'),('vertex_root_join_vertex_root','终结者','root_vertex_system','0','vertex_root','2016-01-01','2016-01-01','sys','sys','vertex_root');
/*!40000 ALTER TABLE `sys_org_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_org_status_attr`
--

DROP TABLE IF EXISTS `sys_org_status_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_org_status_attr` (
  `org_status_id` char(1) NOT NULL,
  `org_status_desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`org_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_org_status_attr`
--

LOCK TABLES `sys_org_status_attr` WRITE;
/*!40000 ALTER TABLE `sys_org_status_attr` DISABLE KEYS */;
INSERT INTO `sys_org_status_attr` VALUES ('0','正常'),('1','禁用');
/*!40000 ALTER TABLE `sys_org_status_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_resource_info`
--

DROP TABLE IF EXISTS `sys_resource_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_resource_info` (
  `res_id` varchar(30) NOT NULL,
  `res_name` varchar(300) DEFAULT NULL,
  `res_attr` char(1) DEFAULT NULL,
  `res_up_id` varchar(30) DEFAULT NULL,
  `res_type` char(1) DEFAULT NULL,
  `sys_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`res_id`),
  KEY `fk_sys_idx_13` (`res_type`),
  KEY `fk_sys_idx_14` (`res_attr`),
  CONSTRAINT `fk_sys_idx_13` FOREIGN KEY (`res_type`) REFERENCES `sys_resource_type_attr` (`res_type`),
  CONSTRAINT `fk_sys_idx_14` FOREIGN KEY (`res_attr`) REFERENCES `sys_resource_info_attr` (`res_attr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_resource_info`
--

LOCK TABLES `sys_resource_info` WRITE;
/*!40000 ALTER TABLE `sys_resource_info` DISABLE KEYS */;
INSERT INTO `sys_resource_info` VALUES ('0100000000','系统管理','0','-1','0','0'),('0101000000','系统审计','0','0100000000','4','0'),('0101010000','操作查询','1','0101000000','1','0'),('0101010100','查询操作日志','1','0101010000','2',NULL),('0101010200','下载操作日志按钮','1','0101010000','2',NULL),('0101010300','搜索日志信息按钮','1','0101010000','2',NULL),('0103000000','资源管理','0','0100000000','4','0'),('0103010000','菜单','1','0103000000','1','0'),('0103010100','查询资源信息','1','0103010000','2',NULL),('0103010200','新增资源信息按钮','1','0103010000','2',NULL),('0103010300','编辑资源信息按钮','1','0103010000','2',NULL),('0103010400','编辑资源信息按钮','1','0103010000','2',NULL),('0103010500','配置主题信息按钮','1','0103010000','2',NULL),('0103020000','组织','1','0103000000','1','0'),('0103020100','查询组织架构信息','1','0103020000','2',NULL),('0103020200','新增组织架构信息按钮','1','0103020000','2',NULL),('0103020300','更新组织架构信息按钮','1','0103020000','2',NULL),('0103020400','删除组织架构信息按钮','1','0103020000','2',NULL),('0103020500','导出组织架构信息按钮','1','0103020000','2',NULL),('0103030100','查询共享域信息','1','0104010200','2',NULL),('0103030200','新增共享域信息按钮','1','0104010200','2',NULL),('0103030300','删除共享域信息按钮','1','0104010200','2',NULL),('0103030400','更新共享域信息按钮','1','0104010200','2',NULL),('0104010000','域定义','1','0103000000','1','0'),('0104010100','查询域信息','1','0104010000','2',NULL),('0104010200','共享域管理','1','0104010000','2',NULL),('0104010300','编辑域信息按钮','1','0104010000','2',NULL),('0104010400','删除域信息按钮','1','0104010000','2',NULL),('0104010500','新增域信息按钮','1','0104010000','2',NULL),('0105000000','用户与安全管理','0','0100000000','4','0'),('0105010000','用户','1','0105000000','1','0'),('0105010100','查询用户信息','1','0105010000','2',NULL),('0105010200','新增用户信息按钮','1','0105010000','2',NULL),('0105010300','编辑用户信息按钮','1','0105010000','2',NULL),('0105010400','删除用户信息按钮','1','0105010000','2',NULL),('0105010500','修改用户密码按钮','1','0105010000','2',NULL),('0105010600','修改用户状态按钮','1','0105010000','2',NULL),('0105020000','角色','1','0105000000','1','0'),('0105020100','查询角色信息','1','0105020000','2',NULL),('0105020200','新增角色信息按钮','1','0105020000','2',NULL),('0105020300','更新角色信息按钮','1','0105020000','2',NULL),('0105020400','删除角色信息按钮','1','0105020000','2',NULL),('0105020500','角色资源管理','1','0105020000','2',NULL),('0105020510','查询角色资源信息','1','0105020500','2',NULL),('0105020520','修改角色资源信息','1','0105020500','2',NULL),('0105040000','授权','1','0105000000','1','0'),('0105040100','授予权限按钮','1','0105040000','2',NULL),('0105040200','移除权限','1','0105040000','2',NULL),('0200000000','成本分摊','0','-1','0',NULL),('0201000000','维度信息管理','0','0200000000','4',NULL),('0201010000','责任中心','1','0201000000','1',NULL),('0201030000','费用方向','1','0201000000','1',NULL),('0201040000','动因信息','1','0201000000','1',NULL),('0201060000','成本池信息','1','0201000000','1',NULL),('0202000000','规则定义管理','0','0200000000','4',NULL),('0202010000','静态规则配置','1','0202000000','1',NULL),('0202020000','分摊规则','1','0202000000','1',NULL),('0202040000','规则组配置','1','0202000000','1',NULL),('0203000000','批次综合管理','0','0200000000','4',NULL),('0203010000','批次管理','1','0203000000','1',NULL),('0203020000','批次历史信息','1','0203000000','1',NULL),('0203030000','分摊追溯','1','0203000000','1',NULL),('0203040000','费用查询','1','0203000000','1',NULL),('0203050000','动因查询','1','0203000000','1',NULL),('0300000000','内部资金转移定价','0','-1','0',NULL),('0301000000','曲线与规则','0','0300000000','4',NULL),('0301010000','曲线定义','1','0301000000','1',NULL),('0301020000','曲线管理','1','0301000000','1',NULL),('0301050000','定价规则','1','0301000000','1',NULL),('0302000000','调节项管理','0','0300000000','4',NULL),('0302010000','内生性调节项','1','0302000000','1',NULL),('0302020000','政策性调节项','1','0302000000','1',NULL),('0302030000','过滤器配置管理','1','0302000000','1',NULL),('0303000000','批次管理','0','0300000000','4',NULL),('0303010000','单笔试算','1','0303000000','1',NULL),('0303020000','批次配置','1','0303000000','1',NULL),('0303030000','批次历史','1','0303000000','1',NULL),('0400000000','公共维度信息','0','-1','0',NULL),('0401000000','条线信息配置管理','1','0400000000','1',NULL),('0402000000','产品信息配置管理','1','0400000000','1',NULL),('0403000000','科目信息配置管理','1','0400000000','1',NULL),('0404000000','币种信息配置管理','1','0400000000','1',NULL),('1100000000','系统帮助','0','-1','0',NULL),('1101000000','系统管理帮助','0','1100000000','4',NULL),('1101010000','系统维护帮助信息','1','1101000000','1',NULL),('1102000000','管理会计帮助文档','0','1100000000','4',NULL),('1103000000','公共信息帮助','0','1100000000','4',NULL);
/*!40000 ALTER TABLE `sys_resource_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_resource_info_attr`
--

DROP TABLE IF EXISTS `sys_resource_info_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_resource_info_attr` (
  `res_attr` char(1) NOT NULL,
  `res_attr_desc` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`res_attr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_resource_info_attr`
--

LOCK TABLES `sys_resource_info_attr` WRITE;
/*!40000 ALTER TABLE `sys_resource_info_attr` DISABLE KEYS */;
INSERT INTO `sys_resource_info_attr` VALUES ('0','目录'),('1','叶子');
/*!40000 ALTER TABLE `sys_resource_info_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_resource_type_attr`
--

DROP TABLE IF EXISTS `sys_resource_type_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_resource_type_attr` (
  `res_type` char(1) NOT NULL,
  `res_type_desc` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`res_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_resource_type_attr`
--

LOCK TABLES `sys_resource_type_attr` WRITE;
/*!40000 ALTER TABLE `sys_resource_type_attr` DISABLE KEYS */;
INSERT INTO `sys_resource_type_attr` VALUES ('0','首页菜单'),('1','子系统菜单'),('2','功能按钮'),('4','虚拟节点');
/*!40000 ALTER TABLE `sys_resource_type_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_info`
--

DROP TABLE IF EXISTS `sys_role_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_info` (
  `role_id` varchar(66) NOT NULL,
  `role_name` varchar(300) NOT NULL,
  `role_owner` varchar(30) NOT NULL,
  `role_create_date` datetime NOT NULL,
  `role_status_id` char(1) NOT NULL,
  `domain_id` varchar(30) NOT NULL,
  `role_maintance_date` datetime NOT NULL,
  `role_maintance_user` varchar(30) NOT NULL,
  `code_number` varchar(66) NOT NULL,
  PRIMARY KEY (`role_id`),
  KEY `fk_sys_idx_11` (`role_status_id`),
  CONSTRAINT `fk_sys_idx_11` FOREIGN KEY (`role_status_id`) REFERENCES `sys_role_status_attr` (`role_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_info`
--

LOCK TABLES `sys_role_info` WRITE;
/*!40000 ALTER TABLE `sys_role_info` DISABLE KEYS */;
INSERT INTO `sys_role_info` VALUES ('mas_join_cademo','成本分摊演示角色','admin','2017-03-07 10:36:45','0','mas','2017-03-07 10:36:45','admin','cademo'),('mas_join_ftpdemo','内部资金转移定价演示角色','admin','2017-03-07 10:36:59','0','mas','2017-03-07 10:36:59','admin','ftpdemo'),('mas_join_masadmin','管理会计管理员','admin','2017-03-14 14:44:34','0','mas','2017-03-14 14:44:34','admin','masadmin'),('vertex_root_join_sysadmin','超级管理员','admin','2016-01-01 00:00:00','0','vertex_root','2016-12-16 00:00:00','admin','sysadmin');
/*!40000 ALTER TABLE `sys_role_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_resource_relat`
--

DROP TABLE IF EXISTS `sys_role_resource_relat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_resource_relat` (
  `uuid` varchar(60) NOT NULL DEFAULT 'uuid()',
  `role_id` varchar(66) DEFAULT NULL,
  `res_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `fk_sys_idx_06` (`res_id`),
  KEY `fk_sys_role_res_01_idx` (`role_id`),
  CONSTRAINT `fk_sys_idx_06` FOREIGN KEY (`res_id`) REFERENCES `sys_resource_info` (`res_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sys_role_res_01` FOREIGN KEY (`role_id`) REFERENCES `sys_role_info` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_resource_relat`
--

LOCK TABLES `sys_role_resource_relat` WRITE;
/*!40000 ALTER TABLE `sys_role_resource_relat` DISABLE KEYS */;
INSERT INTO `sys_role_resource_relat` VALUES ('00716df3-07ed-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105010600'),('0574d053-07e7-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103020300'),('0e9c6d37-094c-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0203050000'),('0f65406b-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0201000000'),('0f655305-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0201040000'),('0f656609-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0203000000'),('0f657dda-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0201030000'),('0f65938e-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0203020000'),('0f65a7da-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0203010000'),('0f65bc56-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0203030000'),('0f65d3c9-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0202000000'),('0f671952-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0202010000'),('0f672d27-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0202020000'),('0f6753eb-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0202040000'),('0f676552-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0203040000'),('0f678912-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0200000000'),('0f679a9f-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0201010000'),('0f67bbf4-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','0201060000'),('0f931a5a-07f2-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105040100'),('0fed7044-024a-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0301000000'),('15498bd1-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0302000000'),('15499deb-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0303000000'),('1549b2c0-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0301020000'),('1549c489-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0302030000'),('1549da33-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0303010000'),('1549ebe7-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0303020000'),('1549ff00-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0301000000'),('154a0c8d-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0302010000'),('154a1a9e-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0303030000'),('154a2a7c-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0300000000'),('154a62a2-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0302020000'),('154a7233-02df-11e7-9b60-a0c58951c8d5','mas_join_ftpdemo','0301050000'),('17994440-024c-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0303030000'),('19c75114-0248-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0202020000'),('1bdeaba6-07e9-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103010100'),('1bf28a08-07e7-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103020400'),('1c3118cc-07e2-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103030400'),('25167037-07f2-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105040200'),('33bb66bb-07e9-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103010200'),('3d23d85e-07e7-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103020500'),('43ad40d2-07f1-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105020510'),('48463b39-07e9-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103010300'),('48fb522e-04a4-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0301010000'),('50482835-0247-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0201030000'),('53c399c4-024c-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0302030000'),('5479d2da-0246-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0200000000'),('5a7db1f7-07f1-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105020520'),('5c60bc08-024b-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0301050000'),('66e57a22-0248-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0202040000'),('6bb7e04d-07e9-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103010400'),('72939327-024b-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0302000000'),('76e8be09-07e5-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0101010100'),('776b1d4b-024c-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','1101000000'),('7929becd-0247-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0201040000'),('7d73294c-07ec-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105010100'),('8024c16b-07d8-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0104010300'),('824c1f28-04a3-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0400000000'),('83794268-024b-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0302010000'),('841c2ccd-0246-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0201000000'),('8a1979e2-0248-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0203010000'),('8ca4f732-07e5-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0101010200'),('9466d2dc-07d5-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0104010200'),('9490d276-024a-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','1100000000'),('970569ee-07d8-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0104010400'),('974d1286-07ec-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105010200'),('9bf2e6b3-0246-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0202000000'),('9e79cb72-024b-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0302020000'),('a2658092-07ed-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105020100'),('a2a01355-07e5-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0101010300'),('a8320586-0248-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0203020000'),('ad3e53ed-07d8-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0104010500'),('ad96ffe8-0992-11e7-952f-a0c58951c8d5','mas_join_masadmin','0101010000'),('ad97168e-0992-11e7-952f-a0c58951c8d5','mas_join_masadmin','0101010100'),('ad972957-0992-11e7-952f-a0c58951c8d5','mas_join_masadmin','0101010300'),('ad973d01-0992-11e7-952f-a0c58951c8d5','mas_join_masadmin','0101000000'),('ad974e5b-0992-11e7-952f-a0c58951c8d5','mas_join_masadmin','0101010200'),('b096b467-024b-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0303000000'),('b142aabf-0246-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0203000000'),('b257854d-04a3-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0401000000'),('b5801636-07ec-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105010300'),('b687b293-024a-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0301020000'),('b6ca0b31-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103010300'),('b6ca200b-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103010400'),('b6ca36e4-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103010500'),('b6ca480f-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105010600'),('b6ca5c0b-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103010000'),('b6ca9a8f-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105020520'),('b6caa8cf-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105040100'),('b6cab506-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103030200'),('b6cac00f-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103000000'),('b6cad202-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103020000'),('b6cae5b5-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103020400'),('b6caf864-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105010200'),('b6cc6dcb-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105010100'),('b6cc8746-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105020400'),('b6cc9c46-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105000000'),('b6ccae31-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103020200'),('b6ccbf4f-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0104010100'),('b6ccd5ad-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0104010200'),('b6ccf9f1-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0104010300'),('b6cd0a06-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105010300'),('b6cd1c82-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105020510'),('b6cd3017-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105010400'),('b6cd4386-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105040200'),('b6cd66f5-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0104010000'),('b6cd7506-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103010100'),('b6cd8439-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103020500'),('b6cd9375-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105020100'),('b6cda1f9-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105020500'),('b6cdb0d7-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103030100'),('b6cdc093-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103030300'),('b6cdccfe-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105010000'),('b6cddc28-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103010200'),('b6cdea17-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103020100'),('b6cdfb93-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0104010500'),('b6ce08d7-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103030400'),('b6ce14f1-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0104010400'),('b6ce228f-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105010500'),('b6ce2ded-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105020200'),('b6ce39b5-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105020300'),('b6ce49b5-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0100000000'),('b6ce568f-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105020000'),('b6ce6475-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0105040000'),('b6ce7217-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','0103020300'),('b8df3b71-07e9-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103010500'),('ba1baad1-0249-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0300000000'),('bd267b0e-07ed-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105020200'),('c1177dbf-07e1-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103030100'),('c35cb2d1-0248-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0203030000'),('c3baf059-07ee-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105020500'),('c8650311-024b-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0303010000'),('c93c6302-0247-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0201060000'),('c988dc67-07ec-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105010400'),('cb4b16fb-04a3-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0402000000'),('cf420a8e-0991-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','1102000000'),('d517d48d-07ed-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105020300'),('d89f256d-0991-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','1103000000'),('d8fd37ed-07e1-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103030200'),('daae0b92-07e6-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103020100'),('dd816233-0248-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0203040000'),('e61931f7-04a3-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0403000000'),('ea23a4e6-07ed-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105020400'),('ec5e6b47-07ec-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0105010500'),('ecfe2317-024b-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0303020000'),('ee768238-07e6-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103020200'),('f02c157f-0247-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0202010000'),('f0766b0d-c597-11e6-9b11-d4bed967cdff','vertex_root_join_sysadmin','0100000000'),('f07680fd-c597-11e6-9b11-d4bed967cdff','vertex_root_join_sysadmin','0101000000'),('f076a4d5-c597-11e6-9b11-d4bed967cdff','vertex_root_join_sysadmin','0103000000'),('f076b2d1-c597-11e6-9b11-d4bed967cdff','vertex_root_join_sysadmin','0103010000'),('f076c09b-c597-11e6-9b11-d4bed967cdff','vertex_root_join_sysadmin','0103020000'),('f076e3ca-c597-11e6-9b11-d4bed967cdff','vertex_root_join_sysadmin','0104010000'),('f076efb4-c597-11e6-9b11-d4bed967cdff','vertex_root_join_sysadmin','0105000000'),('f076fb82-c597-11e6-9b11-d4bed967cdff','vertex_root_join_sysadmin','0105010000'),('f077074b-c597-11e6-9b11-d4bed967cdff','vertex_root_join_sysadmin','0105020000'),('f0771e6b-c597-11e6-9b11-d4bed967cdf1','vertex_root_join_sysadmin','0101010000'),('f0771e6b-c597-11e6-9b11-d4bed967cdff','vertex_root_join_sysadmin','0105040000'),('f2e86103-07d2-11e7-95d9-a0c58951c8d5','vertex_root_join_sysadmin','0104010100'),('f6a653e9-04a3-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0404000000'),('f87aad5f-0991-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','1101010000'),('fb945e39-0246-11e7-9b60-a0c58951c8d5','vertex_root_join_sysadmin','0201010000'),('fb9787a0-07e1-11e7-952f-a0c58951c8d5','vertex_root_join_sysadmin','0103030300');
/*!40000 ALTER TABLE `sys_role_resource_relat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_status_attr`
--

DROP TABLE IF EXISTS `sys_role_status_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_status_attr` (
  `role_status_id` char(1) NOT NULL,
  `role_status_desc` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`role_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_status_attr`
--

LOCK TABLES `sys_role_status_attr` WRITE;
/*!40000 ALTER TABLE `sys_role_status_attr` DISABLE KEYS */;
INSERT INTO `sys_role_status_attr` VALUES ('0','正常'),('1','锁定'),('2','失效');
/*!40000 ALTER TABLE `sys_role_status_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_user_relation`
--

DROP TABLE IF EXISTS `sys_role_user_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_user_relation` (
  `uuid` varchar(60) NOT NULL,
  `role_id` varchar(66) DEFAULT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `maintance_date` date DEFAULT NULL,
  `maintance_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `fk_sys_idx_03` (`user_id`),
  KEY `fk_sys_role_user_01_idx` (`role_id`),
  CONSTRAINT `fk_sys_idx_03` FOREIGN KEY (`user_id`) REFERENCES `sys_user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sys_role_user_01` FOREIGN KEY (`role_id`) REFERENCES `sys_role_info` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_user_relation`
--

LOCK TABLES `sys_role_user_relation` WRITE;
/*!40000 ALTER TABLE `sys_role_user_relation` DISABLE KEYS */;
INSERT INTO `sys_role_user_relation` VALUES ('19890228hzwy23','vertex_root_join_sysadmin','admin','2000-01-01','hzwy23'),('585a0307-02df-11e7-9b60-a0c58951c8d5','mas_join_cademo','yangpanhong','2017-03-07','admin'),('c9261d69-0881-11e7-952f-a0c58951c8d5','mas_join_masadmin','demo','2017-03-14','admin');
/*!40000 ALTER TABLE `sys_role_user_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_sec_user`
--

DROP TABLE IF EXISTS `sys_sec_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_sec_user` (
  `user_id` varchar(30) NOT NULL,
  `user_passwd` varchar(30) DEFAULT NULL,
  `status_id` char(1) DEFAULT NULL,
  `continue_error_cnt` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_sys_idx_02` (`status_id`),
  CONSTRAINT `fk_sys_idx_01` FOREIGN KEY (`user_id`) REFERENCES `sys_user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sys_idx_02` FOREIGN KEY (`status_id`) REFERENCES `sys_user_status_attr` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_sec_user`
--

LOCK TABLES `sys_sec_user` WRITE;
/*!40000 ALTER TABLE `sys_sec_user` DISABLE KEYS */;
INSERT INTO `sys_sec_user` VALUES ('admin','rVbaiQ3XuCj8aCnhIL1KAA==','0',0),('demo','CguSVgQY2Df4LxG0UT/xwA==','0',0),('test1','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test10','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test11','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test12','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test13','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test14','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test2','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test3','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test4','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test5','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test6','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test7','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test8','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('test9','CguSVgQY2Df4LxG0UT/xwA==','0',NULL),('yangpanhong','CguSVgQY2Df4LxG0UT/xwA==','0',0);
/*!40000 ALTER TABLE `sys_sec_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_theme_info`
--

DROP TABLE IF EXISTS `sys_theme_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_theme_info` (
  `theme_id` varchar(30) NOT NULL,
  `theme_desc` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_theme_info`
--

LOCK TABLES `sys_theme_info` WRITE;
/*!40000 ALTER TABLE `sys_theme_info` DISABLE KEYS */;
INSERT INTO `sys_theme_info` VALUES ('1001','活泼型'),('1002','稳重型'),('1003','果粉'),('1004','传统');
/*!40000 ALTER TABLE `sys_theme_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_theme_value`
--

DROP TABLE IF EXISTS `sys_theme_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_theme_value` (
  `uuid` varchar(60) NOT NULL,
  `theme_id` varchar(30) DEFAULT NULL,
  `res_id` varchar(30) DEFAULT NULL,
  `res_url` varchar(120) DEFAULT NULL,
  `res_type` varchar(5) DEFAULT NULL,
  `res_bg_color` varchar(30) DEFAULT NULL,
  `res_class` varchar(90) DEFAULT NULL,
  `group_id` char(1) DEFAULT NULL,
  `res_img` varchar(200) DEFAULT NULL,
  `sort_id` decimal(10,0) DEFAULT NULL,
  KEY `pk_sys_theme_value_01` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_theme_value`
--

LOCK TABLES `sys_theme_value` WRITE;
/*!40000 ALTER TABLE `sys_theme_value` DISABLE KEYS */;
INSERT INTO `sys_theme_value` VALUES ('1001-0101010000','1001','0101010000','/v1/auth/HandleLogsPage','1','#336699','tile tile-large','3','/static/theme/default/img/logs_shen.png',1),('1001-0103010000','1001','0103010000','/v1/auth/resource/page','1','#666699','tile','1','/static/theme/default/img/menus.png',3),('1001-0104010000','1001','0104010000','/v1/auth/domain/page','1','#0099CC','tile tile-wide','1','/static/theme/default/img/domain.png',1),('1001-0105010000','1001','0105010000','/v1/auth/user/page','1','#CC6600','tile tile-wide','2','/static/theme/default/img/user_manager.png',1),('1001-0105020000','1001','0105020000','/v1/auth/role/page','1','#FFCC33','tile','2','/static/theme/default/img/role_manager.png',2),('1004-0100000000','1004','0100000000','./views/hauth/theme/tradition/Model_index.tpl','0',NULL,NULL,NULL,NULL,NULL),('1001-0100000000','1001','0100000000','./views/hauth/theme/default/sysconfig.tpl','0','#339999','tile tile-wide','1','/static/theme/default/img/system.png',1),('1001-0105040000','1001','0105040000','/v1/auth/batch/page','1','#339999','tile','2','/static/theme/default/img/grant.png',4),('1001-0103020000','1001','0103020000','/v1/auth/resource/org/page','1','#FF6666','tile','1','/static/theme/default/img/org.png',2),('54786c62-0246-11e7-9b60-a0c58951c8d5','1001','0200000000','./views/ca/ca.tpl','0','#339999','tile tile-wide','2','/static/theme/default/img/grant.png',1),('fb944b0a-0246-11e7-9b60-a0c58951c8d5','1001','0201010000','/v1/ca/responsibility/page','1','#339999','tile tile-wide','1','/static/theme/default/img/org.png',1),('5046d07a-0247-11e7-9b60-a0c58951c8d5','1001','0201030000','/v1/auth/resource/org/page','1','#339999','tile','1','/static/theme/default/img/org.png',3),('7929aa2b-0247-11e7-9b60-a0c58951c8d5','1001','0201040000','/v1/auth/resource/org/page','1','#339999','tile','1','/static/theme/default/img/org.png',4),('c93c4e93-0247-11e7-9b60-a0c58951c8d5','1001','0201060000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','1','/static/theme/default/img/org.png',6),('f02a3b32-0247-11e7-9b60-a0c58951c8d5','1001','0202010000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','2','/static/theme/default/img/org.png',1),('19c73fba-0248-11e7-9b60-a0c58951c8d5','1001','0202020000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','2','/static/theme/default/img/org.png',2),('66e55e26-0248-11e7-9b60-a0c58951c8d5','1001','0202040000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','2','/static/theme/default/img/org.png',4),('8a180b66-0248-11e7-9b60-a0c58951c8d5','1001','0203010000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','3','/static/theme/default/img/org.png',1),('a831ec58-0248-11e7-9b60-a0c58951c8d5','1001','0203020000','/v1/auth/resource/org/page','1','#339999','tile','3','/static/theme/default/img/org.png',2),('c35ca15a-0248-11e7-9b60-a0c58951c8d5','1001','0203030000','/v1/auth/resource/org/page','1','#339999','tile','3','/static/theme/default/img/org.png',3),('dd815000-0248-11e7-9b60-a0c58951c8d5','1001','0203040000','/v1/auth/resource/org/page','1','#339999','tile','3','/static/theme/default/img/org.png',4),('ba1a252f-0249-11e7-9b60-a0c58951c8d5','1001','0300000000','./views/ftp/ftp.tpl','0','#339999','tile tile-wide','2','/static/theme/default/img/org.png',2),('948f67dc-024a-11e7-9b60-a0c58951c8d5','1001','1100000000','./views/help/syshelp.tpl','0','#339999','tile tile-wide','1','/static/theme/default/img/org.png',2),('b687a0e9-024a-11e7-9b60-a0c58951c8d5','1001','0301020000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','1','/static/theme/default/img/org.png',2),('5c60abdd-024b-11e7-9b60-a0c58951c8d5','1001','0301050000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','1','/static/theme/default/img/org.png',3),('83792fdb-024b-11e7-9b60-a0c58951c8d5','1001','0302010000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','2','/static/theme/default/img/org.png',2),('9e79b725-024b-11e7-9b60-a0c58951c8d5','1001','0302020000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','2','/static/theme/default/img/org.png',3),('c864e93c-024b-11e7-9b60-a0c58951c8d5','1001','0303010000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','3','/static/theme/default/img/org.png',1),('ecfe0b20-024b-11e7-9b60-a0c58951c8d5','1001','0303020000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','3','/static/theme/default/img/org.png',2),('1797ac80-024c-11e7-9b60-a0c58951c8d5','1001','0303030000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','3','/static/theme/default/img/org.png',3),('53c3813f-024c-11e7-9b60-a0c58951c8d5','1001','0302030000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','2','/static/theme/default/img/org.png',1),('624b90c0-0278-11e7-9b60-a0c58951c8d5','1002','0101010000','/v1/auth/HandleLogsPage','1','#339999','tile tile-wide','3','/static/theme/default/img/logs_shen.png',1),('824c0d97-04a3-11e7-9b60-a0c58951c8d5','1001','0400000000','./views/common/dimension.tpl','0','#339999','tile tile-large','3','/static/theme/default/img/system.png',1),('b2561d1e-04a3-11e7-9b60-a0c58951c8d5','1001','0401000000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','1','/static/theme/default/img/org.png',1),('cb4afcc4-04a3-11e7-9b60-a0c58951c8d5','1001','0402000000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','2','/static/theme/default/img/org.png',1),('e6191fef-04a3-11e7-9b60-a0c58951c8d5','1001','0403000000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','3','/static/theme/default/img/org.png',1),('f6a6448b-04a3-11e7-9b60-a0c58951c8d5','1001','0404000000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','1','/static/theme/default/img/org.png',2),('48fb4303-04a4-11e7-9b60-a0c58951c8d5','1001','0301010000','/v1/auth/resource/org/page','1','#339999','tile tile-wide','1','/static/theme/default/img/org.png',1),('f2e81083-07d2-11e7-95d9-a0c58951c8d5','1001','0104010100','/v1/auth/domain/get','2','','','','',0),('946658e9-07d5-11e7-952f-a0c58951c8d5','1001','0104010200','/v1/auth/domain/share/page','2','','','','',0),('8024ac09-07d8-11e7-952f-a0c58951c8d5','1001','0104010300','/v1/auth/domain/update','2','','','','',0),('9705437b-07d8-11e7-952f-a0c58951c8d5','1001','0104010400','/v1/auth/domain/delete','2','','','','',0),('ad3e295c-07d8-11e7-952f-a0c58951c8d5','1001','0104010500','/v1/auth/domain/post','2','','','','',0),('c1174621-07e1-11e7-952f-a0c58951c8d5','1001','0103030100','/v1/auth/domain/share/get','2','','','','',0),('d8fccbcb-07e1-11e7-952f-a0c58951c8d5','1001','0103030200','/v1/auth/domain/share/post','2','','','','',0),('fb975107-07e1-11e7-952f-a0c58951c8d5','1001','0103030300','/v1/auth/domain/share/delete','2','','','','',0),('1c30f988-07e2-11e7-952f-a0c58951c8d5','1001','0103030400','/v1/auth/domain/share/put','2','','','','',0),('76e895cd-07e5-11e7-952f-a0c58951c8d5','1001','0101010100','/v1/auth/handle/logs','2','','','','',0),('8ca386d8-07e5-11e7-952f-a0c58951c8d5','1001','0101010200','/v1/auth/handle/logs/download','2','','','','',0),('a29fba3f-07e5-11e7-952f-a0c58951c8d5','1001','0101010300','/v1/auth/handle/logs/search','2','','','','',0),('daadf91b-07e6-11e7-952f-a0c58951c8d5','1001','0103020100','/v1/auth/resource/org/get','2','','','','',0),('ee765e9a-07e6-11e7-952f-a0c58951c8d5','1001','0103020200','/v1/auth/resource/org/insert','2','','','','',0),('0574add7-07e7-11e7-952f-a0c58951c8d5','1001','0103020300','/v1/auth/resource/org/update','2','','','','',0),('1bf270aa-07e7-11e7-952f-a0c58951c8d5','1001','0103020400','/v1/auth/resource/org/delete','2','','','','',0),('3d237ba7-07e7-11e7-952f-a0c58951c8d5','1001','0103020500','/v1/auth/resource/org/download','2','','','','',0),('1bde8991-07e9-11e7-952f-a0c58951c8d5','1001','0103010100','/v1/auth/resource/get','2','','','','',0),('33b9cb0c-07e9-11e7-952f-a0c58951c8d5','1001','0103010200','/v1/auth/resource/post','2','','','','',0),('48460086-07e9-11e7-952f-a0c58951c8d5','1001','0103010300','/v1/auth/resource/update','2','','','','',0),('6bb7b2c8-07e9-11e7-952f-a0c58951c8d5','1001','0103010400','/v1/auth/resource/delete','2','','','','',0),('b8df0cd7-07e9-11e7-952f-a0c58951c8d5','1001','0103010500','/v1/auth/resource/config/theme','2','','','','',0),('7d73058c-07ec-11e7-952f-a0c58951c8d5','1001','0105010100','/v1/auth/user/get','2','','','','',0),('974ce1fd-07ec-11e7-952f-a0c58951c8d5','1001','0105010200','/v1/auth/user/post','2','','','','',0),('b58002f6-07ec-11e7-952f-a0c58951c8d5','1001','0105010300','/v1/auth/user/put','2','','','','',0),('c988bb89-07ec-11e7-952f-a0c58951c8d5','1001','0105010400','/v1/auth/user/delete','2','','','','',0),('ec5cb33a-07ec-11e7-952f-a0c58951c8d5','1001','0105010500','/v1/auth/user/modify/passwd','2','','','','',0),('00714873-07ed-11e7-952f-a0c58951c8d5','1001','0105010600','/v1/auth/user/modify/status','2','','','','',0),('a265597d-07ed-11e7-952f-a0c58951c8d5','1001','0105020100','/v1/auth/role/get','2','','','','',0),('bd264fd7-07ed-11e7-952f-a0c58951c8d5','1001','0105020200','/v1/auth/role/post','2','','','','',0),('d517aab8-07ed-11e7-952f-a0c58951c8d5','1001','0105020300','/v1/auth/role/update','2','','','','',0),('ea237b6a-07ed-11e7-952f-a0c58951c8d5','1001','0105020400','/v1/auth/role/delete','2','','','','',0),('c3bad47b-07ee-11e7-952f-a0c58951c8d5','1001','0105020500','/v1/auth/role/resource/details','2','','','','',0),('43ad2a9a-07f1-11e7-952f-a0c58951c8d5','1001','0105020510','/v1/auth/role/resource/get','2','','','','',0),('5a7d8dbf-07f1-11e7-952f-a0c58951c8d5','1001','0105020520','/v1/auth/role/resource/rights','2','','','','',0),('0f9303e2-07f2-11e7-952f-a0c58951c8d5','1001','0105040100','/v1/auth/user/roles/auth','2','','','','',0),('25165700-07f2-11e7-952f-a0c58951c8d5','1001','0105040200','/v1/auth/user/roles/revoke','2','','','','',0),('0e9aec3f-094c-11e7-952f-a0c58951c8d5','1001','0203050000','/v1/auth/resource/org/page','1','#339999','tile','3','/static/theme/default/img/org.png',5),('f87a9123-0991-11e7-952f-a0c58951c8d5','1001','1101010000','/v1/help/system/help','1','#339999','tile tile-large','1','/static/theme/default/img/org.png',1);
/*!40000 ALTER TABLE `sys_theme_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_info`
--

DROP TABLE IF EXISTS `sys_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_info` (
  `user_id` varchar(30) NOT NULL,
  `user_name` varchar(300) DEFAULT NULL,
  `user_create_date` datetime DEFAULT NULL,
  `user_owner` varchar(30) DEFAULT NULL,
  `user_email` varchar(30) DEFAULT NULL,
  `user_phone` decimal(15,0) DEFAULT NULL,
  `org_unit_id` varchar(66) DEFAULT NULL,
  `user_maintance_date` datetime DEFAULT NULL,
  `user_maintance_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_sys_user_org_idx` (`org_unit_id`),
  CONSTRAINT `fk_sys_user_org` FOREIGN KEY (`org_unit_id`) REFERENCES `sys_org_info` (`org_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_info`
--

LOCK TABLES `sys_user_info` WRITE;
/*!40000 ALTER TABLE `sys_user_info` DISABLE KEYS */;
INSERT INTO `sys_user_info` VALUES ('admin','超级管理员','2016-01-01 00:00:00','sys','hzwy23@163.com',18986110550,'vertex_root_join_vertex_root','2016-12-19 13:34:32','sys'),('demo','演示用户','2017-03-01 21:21:38','admin','hzwy23@163.com',18986110550,'mas_join_34124','2017-03-07 09:58:54','demo'),('test1','测试用户','2017-03-14 11:04:45','admin','hzwy23@163.com',18986110550,'mas_join_512345423','2017-03-14 11:04:45','admin'),('test10','测试用户','2017-03-14 11:07:14','admin','hzwy23@163.com',18986110550,'mas_join_512345423','2017-03-14 11:07:14','admin'),('test11','测试用户','2017-03-14 11:07:29','admin','hzwy23@163.com',18986110550,'mas_join_512345423','2017-03-14 11:07:29','admin'),('test12','测试用户','2017-03-14 11:07:55','admin','hzwy23@163.com',18986110550,'mas_join_34124','2017-03-14 11:07:55','admin'),('test13','测试用户','2017-03-14 11:08:13','admin','hzwy23@163.com',18986110550,'mas_join_34124','2017-03-14 11:08:13','admin'),('test14','测试用户','2017-03-14 11:08:28','admin','hzwy23@163.com',18986110550,'mas_join_34124','2017-03-14 11:08:28','admin'),('test2','测试用户','2017-03-14 11:05:10','admin','hzwy23@163.com',18986110550,'mas_join_45246543','2017-03-14 11:05:10','admin'),('test3','测试用户','2017-03-14 11:05:26','admin','hzwy23@163.com',18986110550,'mas_join_4542346','2017-03-14 11:05:26','admin'),('test4','测试用户','2017-03-14 11:05:41','admin','hzwy23@163.com',18986110550,'mas_join_4542346','2017-03-14 11:05:41','admin'),('test5','测试用户','2017-03-14 11:05:54','admin','hzwy23@163.com',18986110550,'mas_join_4542346','2017-03-14 11:05:54','admin'),('test6','测试用户','2017-03-14 11:06:12','admin','hzwy23@163.com',18986110550,'mas_join_45246543','2017-03-14 11:06:12','admin'),('test7','测试用户','2017-03-14 11:06:25','admin','hzwy23@163.com',18986110550,'mas_join_45246543','2017-03-14 11:06:25','admin'),('test8','测试用户','2017-03-14 11:06:39','admin','hzwy23@163.com',18986110550,'mas_join_512345423','2017-03-14 11:06:39','admin'),('test9','测试用户','2017-03-14 11:06:58','admin','hzwy23@163.com',18986110550,'mas_join_45246543','2017-03-14 11:06:58','admin'),('yangpanhong','测试','2017-03-07 10:31:35','demo','hzwy23@163.com',18986110550,'mas_join_34124','2017-03-07 10:31:35','demo');
/*!40000 ALTER TABLE `sys_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_status_attr`
--

DROP TABLE IF EXISTS `sys_user_status_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_status_attr` (
  `status_id` char(1) NOT NULL,
  `status_desc` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_status_attr`
--

LOCK TABLES `sys_user_status_attr` WRITE;
/*!40000 ALTER TABLE `sys_user_status_attr` DISABLE KEYS */;
INSERT INTO `sys_user_status_attr` VALUES ('0','正常'),('1','锁定'),('2','失效');
/*!40000 ALTER TABLE `sys_user_status_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_theme`
--

DROP TABLE IF EXISTS `sys_user_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_theme` (
  `user_id` varchar(30) NOT NULL,
  `theme_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `pk_sys_user_theme_01` FOREIGN KEY (`user_id`) REFERENCES `sys_user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_theme`
--

LOCK TABLES `sys_user_theme` WRITE;
/*!40000 ALTER TABLE `sys_user_theme` DISABLE KEYS */;
INSERT INTO `sys_user_theme` VALUES ('admin','1001'),('demo','1001'),('test1','1001'),('test10','1001'),('test11','1001'),('test12','1001'),('test13','1001'),('test14','1001'),('test2','1001'),('test3','1001'),('test4','1001'),('test5','1001'),('test6','1001'),('test7','1001'),('test8','1001'),('test9','1001'),('yangpanhong','1001');
/*!40000 ALTER TABLE `sys_user_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test'
--
/*!50003 DROP FUNCTION IF EXISTS `getChildDomainList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getChildDomainList`(rootId varchar(60)) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = '$';
SET sTempChd = cast(rootId as char);

WHILE sTempChd is not NULL DO
SET sTemp = CONCAT(sTemp,',',sTempChd);
SELECT group_concat(domain_id) INTO sTempChd FROM sys_domain_info where FIND_IN_SET(domain_up_id,sTempChd) > 0;
END WHILE;
return sTemp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getChildList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getChildList`(rootId varchar(60)) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = '$';
SET sTempChd = cast(rootId as char);

WHILE sTempChd is not NULL DO
SET sTemp = CONCAT(sTemp,',',sTempChd);
SELECT group_concat(res_id) INTO sTempChd FROM sys_resource_info where FIND_IN_SET(res_up_id,sTempChd) > 0;
END WHILE;
return sTemp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getChildOrgList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getChildOrgList`(rootId varchar(60)) RETURNS varchar(4000) CHARSET utf8
BEGIN
DECLARE sTemp VARCHAR(4000);
DECLARE sTempChd VARCHAR(4000);

SET sTemp = '$';
SET sTempChd = cast(rootId as char);

WHILE sTempChd is not NULL DO
SET sTemp = CONCAT(sTemp,',',sTempChd);
SELECT group_concat(org_unit_id) INTO sTempChd FROM sys_org_info where FIND_IN_SET(up_org_id,sTempChd) > 0;
END WHILE;
return sTemp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getParentAndChindDomainList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getParentAndChindDomainList`(
	rootId varchar(90)
) RETURNS varchar(4000) CHARSET utf8
BEGIN
	DECLARE sTemp VARCHAR(4000);
	DECLARE sTempChd VARCHAR(4000);
	DECLARE curDomain VARCHAR(90);

	SET sTemp = '$';
	SET curDomain = cast(rootId as char);
	SET sTempChd = curDomain;
	
	WHILE sTempChd <> '-1' DO

		SELECT domain_up_id into sTempChd from sys_domain_info where domain_id = curDomain;
		
        if sTempChd <> '-1' then
			SET sTemp = CONCAT(sTemp,',',sTempChd);
        end if;

		SET curDomain = sTempChd;

	END WHILE;
    
    SET sTempChd = cast(rootId as char);
    
    WHILE sTempChd is not NULL DO
    
		SET sTemp = CONCAT(sTemp,',',sTempChd);
        
		SELECT group_concat(domain_id) INTO sTempChd FROM sys_domain_info where FIND_IN_SET(domain_up_id,sTempChd) > 0;
	
    END WHILE;
    
	return sTemp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getParentDomainList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getParentDomainList`(
	rootId varchar(90)
) RETURNS varchar(4000) CHARSET utf8
BEGIN
	DECLARE sTemp VARCHAR(4000);
	DECLARE sTempChd VARCHAR(4000);
	DECLARE curDomain VARCHAR(90);

	SET sTemp = '$';
	SET curDomain = cast(rootId as char);
	SET sTempChd = curDomain;
	
	WHILE sTempChd <> '-1' DO

		SELECT domain_up_id into sTempChd from sys_domain_info where domain_id = curDomain;
		
        if sTempChd <> '-1' then
			SET sTemp = CONCAT(sTemp,',',sTempChd);
        end if;

		SET curDomain = sTempChd;

	END WHILE;
    
	return sTemp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-16 14:01:41