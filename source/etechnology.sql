/* SQL Manager for MySQL                              5.7.0.50799 */
/* -------------------------------------------------------------- */
/* Host     : localhost                                           */
/* Port     : 3306                                                */
/* Database : etechnology                                         */


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'utf8' */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `etechnology`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `etechnology`;

/* Structure for the `userlevelpermissions` table : */

CREATE TABLE `userlevelpermissions` (
  `userlevelid` INTEGER(11) NOT NULL,
  `tablename` VARCHAR(191) COLLATE utf8_general_ci NOT NULL,
  `permission` INTEGER(11) NOT NULL,
  PRIMARY KEY USING BTREE (`userlevelid`, `tablename`)
) ENGINE=MyISAM
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
;

/* Structure for the `userlevels` table : */

CREATE TABLE `userlevels` (
  `userlevelid` INTEGER(11) NOT NULL,
  `userlevelname` VARCHAR(80) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`userlevelid`)
) ENGINE=MyISAM
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
;

/* Structure for the `users` table : */

CREATE TABLE `users` (
  `idusuario` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `userlevelid` INTEGER(11) NOT NULL,
  `user` VARCHAR(20) COLLATE utf8_general_ci NOT NULL,
  `password` VARCHAR(255) COLLATE utf8_general_ci DEFAULT NULL,
  `nombre` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `email` VARCHAR(150) COLLATE utf8_general_ci DEFAULT NULL,
  `perfil` TEXT COLLATE utf8_general_ci NOT NULL,
  `activo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY USING BTREE (`idusuario`),
  UNIQUE KEY `user` USING BTREE (`user`)
) ENGINE=InnoDB
AUTO_INCREMENT=3 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
;

/* Data for the `userlevelpermissions` table  (LIMIT 0,500) */

INSERT INTO `userlevelpermissions` (`userlevelid`, `tablename`, `permission`) VALUES
  (-2,'{0454C05E-FD3A-40A4-9972-81EF3E76D7ED}userlevelpermissions',0),
  (-2,'{0454C05E-FD3A-40A4-9972-81EF3E76D7ED}userlevels',0),
  (-2,'{0454C05E-FD3A-40A4-9972-81EF3E76D7ED}users',0);
COMMIT;

/* Data for the `userlevels` table  (LIMIT 0,500) */

INSERT INTO `userlevels` (`userlevelid`, `userlevelname`) VALUES
  (-2,'Anonymous'),
  (-1,'Administrator'),
  (0,'Default');
COMMIT;

/* Data for the `users` table  (LIMIT 0,500) */

INSERT INTO `users` (`idusuario`, `userlevelid`, `user`, `password`, `nombre`, `email`, `perfil`, `activo`) VALUES
  (2,-1,'admin','$2y$10$cx0OqboXnVZEymjcAFJnVOpqj0upav09Qp4ixW2tleH.go09AzCJO','Administrador del Sistema','admin@','default',1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;