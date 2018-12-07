
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`weird` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `compose` */

DROP TABLE IF EXISTS `compose`;

CREATE TABLE `compose` (
  `id_mission` int(11) NOT NULL,
  `id_condition` int(11) NOT NULL,
  PRIMARY KEY (`id_mission`,`id_condition`),
  KEY `fk_condition` (`id_condition`),
  CONSTRAINT `fk_condition` FOREIGN KEY (`id_condition`) REFERENCES `condition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_mission_condition` FOREIGN KEY (`id_mission`) REFERENCES `mission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `condition` */

DROP TABLE IF EXISTS `condition`;

CREATE TABLE `condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(256) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(126) NOT NULL,
  `lastname` varchar(126) NOT NULL,
  `speciality` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `mission` */

DROP TABLE IF EXISTS `mission`;

CREATE TABLE `mission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(126) NOT NULL,
  `goal` varchar(256) NOT NULL,
  `place` varchar(126) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `participation` */

DROP TABLE IF EXISTS `participation`;

CREATE TABLE `participation` (
  `id_member` int(11) NOT NULL,
  `id_mission` int(11) NOT NULL,
  PRIMARY KEY (`id_member`,`id_mission`),
  KEY `fk_mission` (`id_mission`),
  CONSTRAINT `fk_members` FOREIGN KEY (`id_member`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_mission` FOREIGN KEY (`id_mission`) REFERENCES `mission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
