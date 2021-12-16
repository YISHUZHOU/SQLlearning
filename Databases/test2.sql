/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ test2 /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE test2;

DROP TABLE IF EXISTS classes;
CREATE TABLE `classes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS students;
CREATE TABLE `students` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `class_id` bigint NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

INSERT INTO classes(id,name) VALUES(1,'一班'),(2,'二班'),(3,'三班'),(4,'四班');
INSERT INTO students(id,class_id,name,gender,score) VALUES(1,1,'小明','M',90),(2,1,'小红','F',95),(3,1,'小军','M',88),(4,1,'小米','F',73),(5,2,'小白','F',81),(6,2,'小兵','M',55),(7,2,'小林','M',85),(8,3,'小新','F',91),(9,3,'小王','M',89),(10,3,'小丽','F',85);