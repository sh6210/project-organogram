-- Adminer 4.7.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `organogram`;
CREATE DATABASE `organogram` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `organogram`;

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `department` (`id`, `title`) VALUES
(1,	'A'),
(2,	'B'),
(3,	'C'),
(4,	'D'),
(5,	'E');

DROP TABLE IF EXISTS `department_service`;
CREATE TABLE `department_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `department_id` int NOT NULL,
  `service_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `department_service_department_id_fk` (`department_id`),
  KEY `department_service_service_id_fk` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

INSERT INTO `employee` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1,	'emp1',	'emp1@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(2,	'emp2',	'emp2@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(3,	'emp3',	'emp3@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(4,	'emp4',	'emp4@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(5,	'emp5',	'emp5@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(6,	'emp6',	'emp6@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(7,	'emp7',	'emp7@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(8,	'emp8',	'emp8@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(9,	'emp9',	'emp9@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(10,	'emp10',	'emp10@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(11,	'emp11',	'emp11@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(12,	'emp12',	'emp12@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(13,	'emp13',	'emp13@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(14,	'emp14',	'emp14@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(15,	'emp15',	'emp15@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(16,	'emp16',	'emp16@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(17,	'emp17',	'emp17@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(18,	'emp18',	'emp18@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(19,	'emp19',	'emp19@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(20,	'emp20',	'emp20@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(21,	'emp21',	'emp21@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(22,	'emp22',	'emp22@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(23,	'emp23',	'emp23@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(24,	'emp24',	'emp24@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(25,	'emp25',	'emp25@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(26,	'emp26',	'emp26@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(27,	'emp27',	'emp27@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(28,	'emp28',	'emp28@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(29,	'emp29',	'emp29@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(30,	'emp30',	'emp30@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(31,	'emp31',	'emp31@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(32,	'emp32',	'emp32@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(33,	'emp33',	'emp33@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(34,	'emp34',	'emp34@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(35,	'emp35',	'emp35@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(36,	'emp36',	'emp36@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(37,	'emp37',	'emp37@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(38,	'emp38',	'emp38@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(39,	'emp39',	'emp39@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(40,	'emp40',	'emp40@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(41,	'emp41',	'emp41@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(42,	'emp42',	'emp42@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(43,	'emp43',	'emp43@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(44,	'emp44',	'emp44@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(45,	'emp45',	'emp45@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(46,	'emp46',	'emp46@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(47,	'emp47',	'emp47@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(48,	'emp48',	'emp48@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(49,	'emp49',	'emp49@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(50,	'emp50',	'emp50@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(51,	'emp51',	'emp51@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(52,	'emp52',	'emp52@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(53,	'emp53',	'emp53@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(54,	'emp54',	'emp54@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(55,	'emp55',	'emp55@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(56,	'emp56',	'emp56@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(57,	'emp57',	'emp57@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(58,	'emp58',	'emp58@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(59,	'emp59',	'emp59@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(60,	'emp60',	'emp60@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(61,	'emp61',	'emp61@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(62,	'emp62',	'emp62@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(63,	'emp63',	'emp63@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(64,	'emp64',	'emp64@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(65,	'emp65',	'emp65@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(66,	'emp66',	'emp66@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(67,	'emp67',	'emp67@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(68,	'emp68',	'emp68@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(69,	'emp69',	'emp69@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(70,	'emp70',	'emp70@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(71,	'emp71',	'emp71@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(72,	'emp72',	'emp72@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(73,	'emp73',	'emp73@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(74,	'emp74',	'emp74@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(75,	'emp75',	'emp75@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(76,	'emp76',	'emp76@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(77,	'emp77',	'emp77@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(78,	'emp78',	'emp78@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(79,	'emp79',	'emp79@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(80,	'emp80',	'emp80@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(81,	'emp81',	'emp81@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(82,	'emp82',	'emp82@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(83,	'emp83',	'emp83@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(84,	'emp84',	'emp84@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(85,	'emp85',	'emp85@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(86,	'emp86',	'emp86@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(87,	'emp87',	'emp87@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58'),
(88,	'emp88',	'emp88@gmail.com',	'$2y$10$xGjlWQ1dVfb9Z.SbkFARVuqaoK1HAPLTFlOPZR9S3XqksFEok1jwW',	'2020-10-24 08:19:58');

DROP TABLE IF EXISTS `employee_role`;
CREATE TABLE `employee_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `parent_employee_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_employee_department_id_fk` (`department_id`),
  KEY `role_employee_employee_id_fk` (`employee_id`),
  KEY `role_employee_role_id_fk` (`role_id`),
  KEY `employee_role_employee_id_fk` (`parent_employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

INSERT INTO `employee_role` (`id`, `role_id`, `employee_id`, `department_id`, `parent_employee_id`) VALUES
(1,	1,	1,	1,	NULL),
(2,	2,	2,	1,	1),
(3,	2,	3,	1,	1),
(4,	2,	4,	1,	1),
(5,	3,	5,	1,	2),
(6,	3,	6,	1,	2),
(7,	3,	7,	1,	3),
(8,	3,	8,	1,	4),
(9,	3,	9,	1,	4),
(10,	3,	10,	1,	4),
(11,	4,	11,	1,	5),
(12,	4,	12,	1,	5),
(13,	4,	13,	1,	6),
(14,	4,	14,	1,	6),
(15,	4,	15,	1,	6),
(16,	4,	16,	1,	7),
(17,	4,	17,	1,	7),
(18,	4,	18,	1,	8),
(19,	4,	19,	1,	9),
(20,	4,	20,	1,	10),
(21,	4,	21,	1,	10),
(22,	4,	22,	1,	10),
(23,	5,	23,	1,	11),
(24,	5,	24,	1,	11),
(25,	5,	25,	1,	12),
(26,	5,	26,	1,	12),
(27,	5,	27,	1,	12),
(28,	5,	28,	1,	15),
(29,	5,	29,	1,	15),
(30,	5,	30,	1,	16),
(31,	5,	31,	1,	17),
(32,	5,	32,	1,	18),
(33,	5,	33,	1,	18),
(34,	5,	34,	1,	19),
(35,	5,	35,	1,	20),
(36,	5,	36,	1,	21),
(37,	5,	37,	1,	22),
(38,	5,	38,	1,	22),
(39,	5,	39,	1,	22),
(40,	6,	40,	1,	23),
(41,	6,	41,	1,	23),
(42,	6,	42,	1,	25),
(43,	6,	43,	1,	25),
(44,	6,	44,	1,	25),
(45,	6,	45,	1,	26),
(46,	6,	46,	1,	26),
(47,	6,	47,	1,	29),
(48,	6,	48,	1,	30),
(49,	6,	49,	1,	31),
(50,	6,	50,	1,	31),
(51,	6,	51,	1,	33),
(52,	6,	52,	1,	33),
(53,	6,	53,	1,	33),
(54,	6,	54,	1,	36),
(55,	6,	55,	1,	36),
(56,	6,	56,	1,	36),
(57,	6,	57,	1,	38),
(58,	6,	58,	1,	38),
(59,	6,	59,	1,	39),
(60,	6,	60,	1,	39),
(61,	6,	61,	1,	39),
(62,	6,	62,	1,	39),
(63,	7,	63,	1,	40),
(64,	7,	64,	1,	40),
(65,	7,	65,	1,	42),
(66,	7,	66,	1,	42),
(67,	7,	67,	1,	42),
(68,	7,	68,	1,	45),
(69,	7,	69,	1,	48),
(70,	7,	70,	1,	48),
(71,	7,	71,	1,	48),
(72,	7,	72,	1,	48),
(73,	7,	73,	1,	49),
(74,	7,	74,	1,	49),
(75,	7,	75,	1,	49),
(76,	7,	76,	1,	52),
(77,	7,	77,	1,	52),
(78,	7,	78,	1,	52),
(79,	7,	79,	1,	56),
(80,	7,	80,	1,	56),
(81,	7,	81,	1,	58),
(82,	7,	82,	1,	58),
(83,	7,	83,	1,	58),
(84,	7,	84,	1,	58),
(85,	7,	85,	1,	61),
(86,	7,	86,	1,	61),
(87,	7,	87,	1,	61),
(88,	7,	88,	1,	61);

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_title_uindex` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `role` (`id`, `title`) VALUES
(1,	'CEO'),
(2,	'COO'),
(3,	'GENERAL MANAGER'),
(4,	'MANAGER'),
(7,	'STAFF'),
(5,	'SUPERVISOR-1'),
(6,	'SUPERVISOR-2');

DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 2020-10-24 17:32:24
