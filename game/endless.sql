/*
Navicat MySQL Data Transfer

Source Server         : Baza Lokalna
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : endless

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-02-04 17:59:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `endless_czat`
-- ----------------------------
DROP TABLE IF EXISTS `endless_czat`;
CREATE TABLE `endless_czat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kto` varchar(40) NOT NULL,
  `tekst` text NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_czat
-- ----------------------------

-- ----------------------------
-- Table structure for `endless_gracze`
-- ----------------------------
DROP TABLE IF EXISTS `endless_gracze`;
CREATE TABLE `endless_gracze` (
  `gracz` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(40) NOT NULL,
  `haslo` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` tinyint(4) NOT NULL DEFAULT '0',
  `postac` tinyint(4) NOT NULL DEFAULT '1',
  `online` int(11) NOT NULL,
  `vip` int(11) NOT NULL DEFAULT '0',
  `monety` int(11) NOT NULL DEFAULT '0',
  `atak` int(11) NOT NULL,
  `obrona` int(11) NOT NULL,
  `absorpcja` int(11) NOT NULL,
  `zycie` int(11) NOT NULL,
  `zycie_max` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `exp_lvl` int(11) NOT NULL DEFAULT '11',
  `lvl` int(11) NOT NULL DEFAULT '1',
  `um` int(11) NOT NULL,
  `omin` int(11) NOT NULL,
  `omax` int(11) NOT NULL,
  `sila` int(11) NOT NULL,
  `zrecznosc` int(11) NOT NULL,
  `inteligencja` int(11) NOT NULL,
  `exp_suma` int(11) NOT NULL,
  `zbanowany` tinyint(4) NOT NULL DEFAULT '0',
  `klasa` int(11) NOT NULL,
  `helm` int(11) NOT NULL,
  `zbroja` int(11) NOT NULL,
  `bron` int(11) NOT NULL,
  `tarcza` int(11) NOT NULL,
  `buty` int(11) NOT NULL,
  `amulet` int(11) NOT NULL,
  `pierscien` int(11) NOT NULL,
  `regeneracja` int(11) NOT NULL,
  `akcja` int(11) NOT NULL,
  `zloto` int(11) NOT NULL DEFAULT '0',
  `mapa_id` int(11) NOT NULL DEFAULT '1',
  `x` int(11) NOT NULL DEFAULT '3',
  `y` int(11) NOT NULL DEFAULT '3',
  `sa` int(11) NOT NULL DEFAULT '100',
  `mobrona` int(11) NOT NULL DEFAULT '0',
  `pobrona` int(11) NOT NULL DEFAULT '0',
  `mdam` int(11) NOT NULL DEFAULT '0',
  `pdam` int(11) NOT NULL DEFAULT '0',
  `odam` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gracz`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`),
  KEY `regeneracja` (`regeneracja`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_gracze
-- ----------------------------
INSERT INTO `endless_gracze` VALUES ('1', 'gaido', '814a74b21ddbbf86de584309ae3bb2d3', 'admin@genox.cba.pl', '0', '3', '1359756032', '0', '0', '1', '1', '0', '40', '40', '5', '11', '1', '0', '6', '8', '4', '3', '3', '5', '0', '0', '4', '0', '2', '3', '0', '0', '0', '1359058947', '1359756008', '249850', '1', '6', '7', '100', '1', '0', '0', '0', '2');

-- ----------------------------
-- Table structure for `endless_kody`
-- ----------------------------
DROP TABLE IF EXISTS `endless_kody`;
CREATE TABLE `endless_kody` (
  `kod` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `gracz_id` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`kod`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_kody
-- ----------------------------

-- ----------------------------
-- Table structure for `endless_mapa`
-- ----------------------------
DROP TABLE IF EXISTS `endless_mapa`;
CREATE TABLE `endless_mapa` (
  `mapa_id` int(11) NOT NULL DEFAULT '2',
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `typ` varchar(50) NOT NULL DEFAULT 'drzewo',
  KEY `mapa_id` (`mapa_id`,`x`,`y`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_mapa
-- ----------------------------
INSERT INTO `endless_mapa` VALUES ('1', '1', '1', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '6', '5', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '3', '5', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '5', '2', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '3', '3', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '8', '3', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '5', '7', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '3', '9', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '5', '12', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '9', '8', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '9', '8', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '5', '16', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '10', '13', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '14', '16', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '12', '19', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '15', '3', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '14', '4', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '14', '2', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '1', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '1', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '2', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '2', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '3', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '3', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '4', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '4', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '5', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '5', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '6', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '7', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '8', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '8', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '9', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '10', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '11', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '12', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '18', '13', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '18', '14', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '18', '15', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '14', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '13', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '12', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '13', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '14', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '15', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '15', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '17', '17', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '18', '17', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '17', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '17', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '18', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '18', '19', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '20', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '18', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '19', '19', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '19', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '20', '20', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '18', '18', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '18', '20', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '17', '18', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '17', '19', 'drzewo');
INSERT INTO `endless_mapa` VALUES ('1', '17', '20', 'drzewo');

-- ----------------------------
-- Table structure for `endless_mapy`
-- ----------------------------
DROP TABLE IF EXISTS `endless_mapy`;
CREATE TABLE `endless_mapy` (
  `mapa` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  `max_x` int(11) NOT NULL DEFAULT '50',
  `max_y` int(11) NOT NULL DEFAULT '20',
  PRIMARY KEY (`mapa`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_mapy
-- ----------------------------
INSERT INTO `endless_mapy` VALUES ('1', 'Arlineth', '20', '20');

-- ----------------------------
-- Table structure for `endless_misje`
-- ----------------------------
DROP TABLE IF EXISTS `endless_misje`;
CREATE TABLE `endless_misje` (
  `misja` int(11) NOT NULL AUTO_INCREMENT,
  `npc_id` int(11) NOT NULL,
  `nazwa` text NOT NULL,
  `opis` text NOT NULL,
  `typ` tinyint(4) NOT NULL,
  `co` int(11) NOT NULL,
  `ile` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `zloto` int(11) NOT NULL,
  PRIMARY KEY (`misja`),
  KEY `npc_id` (`npc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_misje
-- ----------------------------
INSERT INTO `endless_misje` VALUES ('1', '1', 'Pokonaj Króliki', 'Pokonaj 10 Królików, które zżerają plony.', '0', '1', '10', '25', '100');

-- ----------------------------
-- Table structure for `endless_misje_gracze`
-- ----------------------------
DROP TABLE IF EXISTS `endless_misje_gracze`;
CREATE TABLE `endless_misje_gracze` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `misja_id` int(11) NOT NULL,
  `gracz_id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `zak` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `misja_id` (`misja_id`,`gracz_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_misje_gracze
-- ----------------------------
INSERT INTO `endless_misje_gracze` VALUES ('1', '1', '1', '1359046981', '0');

-- ----------------------------
-- Table structure for `endless_npc`
-- ----------------------------
DROP TABLE IF EXISTS `endless_npc`;
CREATE TABLE `endless_npc` (
  `npc` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  `obrazek` text NOT NULL,
  `sklep` tinyint(4) NOT NULL,
  `medyk` tinyint(4) NOT NULL,
  `misje` tinyint(4) NOT NULL,
  `mapa_id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  PRIMARY KEY (`npc`),
  KEY `mapa_id` (`mapa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_npc
-- ----------------------------
INSERT INTO `endless_npc` VALUES ('1', 'Pandanas', 'www/map/npc1.gif', '1', '0', '1', '1', '6', '7');

-- ----------------------------
-- Table structure for `endless_obiekty`
-- ----------------------------
DROP TABLE IF EXISTS `endless_obiekty`;
CREATE TABLE `endless_obiekty` (
  `css` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- ----------------------------
-- Records of endless_obiekty
-- ----------------------------
INSERT INTO `endless_obiekty` VALUES ('drzewo');

-- ----------------------------
-- Table structure for `endless_poczta`
-- ----------------------------
DROP TABLE IF EXISTS `endless_poczta`;
CREATE TABLE `endless_poczta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `od` int(11) NOT NULL,
  `do` int(11) NOT NULL,
  `typ` tinyint(4) NOT NULL,
  `tresc` text NOT NULL,
  `data` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `od` (`od`,`typ`,`data`),
  KEY `do` (`do`,`typ`,`data`),
  KEY `nowe` (`do`,`typ`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_poczta
-- ----------------------------

-- ----------------------------
-- Table structure for `endless_potwory`
-- ----------------------------
DROP TABLE IF EXISTS `endless_potwory`;
CREATE TABLE `endless_potwory` (
  `potwor` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  `atak` int(11) NOT NULL,
  `obrona` int(11) NOT NULL,
  `absorpcja` int(11) NOT NULL,
  `omin` int(11) NOT NULL,
  `omax` int(11) NOT NULL,
  `zycie` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `zloto` int(11) NOT NULL,
  `agresywny` tinyint(1) NOT NULL DEFAULT '0',
  `sa` int(11) NOT NULL DEFAULT '100',
  `poziom` int(11) NOT NULL DEFAULT '1',
  `mobrona` int(11) NOT NULL DEFAULT '0',
  `pobrona` int(11) NOT NULL DEFAULT '0',
  `mdam` int(11) NOT NULL DEFAULT '0',
  `pdam` int(11) NOT NULL DEFAULT '0',
  `odam` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`potwor`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_potwory
-- ----------------------------
INSERT INTO `endless_potwory` VALUES ('1', 'Krolik', '1', '0', '0', '1', '1', '25', '1', '0', '0', '100', '1', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `endless_potwory_drop`
-- ----------------------------
DROP TABLE IF EXISTS `endless_potwory_drop`;
CREATE TABLE `endless_potwory_drop` (
  `potwor_id` int(11) NOT NULL,
  `przedmiot_id` int(11) NOT NULL,
  `szansa` tinyint(4) NOT NULL,
  KEY `potwor_id` (`potwor_id`),
  KEY `przedmiot_id` (`przedmiot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_potwory_drop
-- ----------------------------
INSERT INTO `endless_potwory_drop` VALUES ('1', '1', '0');

-- ----------------------------
-- Table structure for `endless_potwory_mapa`
-- ----------------------------
DROP TABLE IF EXISTS `endless_potwory_mapa`;
CREATE TABLE `endless_potwory_mapa` (
  `potwor_id` int(11) NOT NULL,
  `resp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `mapa_id` int(11) NOT NULL DEFAULT '2',
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  KEY `potwor_id` (`potwor_id`),
  KEY `resp` (`resp`,`status`),
  KEY `pozycja` (`mapa_id`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_potwory_mapa
-- ----------------------------
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '4', '7');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '2', '4');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '8', '5');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '4', '12');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '6', '15');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '2', '18');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '7', '19');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '11', '15');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '11', '20');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '13', '8');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '14', '3');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '18', '4');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '16', '18');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '15', '11');
INSERT INTO `endless_potwory_mapa` VALUES ('1', '0', '0', '1', '19', '16');

-- ----------------------------
-- Table structure for `endless_przedmioty`
-- ----------------------------
DROP TABLE IF EXISTS `endless_przedmioty`;
CREATE TABLE `endless_przedmioty` (
  `przedmiot` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  `obrazek` text NOT NULL,
  `atak` int(11) NOT NULL,
  `obrona` int(11) NOT NULL,
  `absorpcja` int(11) NOT NULL,
  `omin` int(11) NOT NULL,
  `omax` int(11) NOT NULL,
  `zycie_max` int(11) NOT NULL,
  `typ` tinyint(4) NOT NULL,
  `lvl` int(11) NOT NULL,
  `sa` int(11) NOT NULL DEFAULT '0',
  `p1` tinyint(1) NOT NULL DEFAULT '0',
  `p2` tinyint(1) NOT NULL DEFAULT '0',
  `p3` tinyint(1) NOT NULL DEFAULT '0',
  `p4` tinyint(1) NOT NULL DEFAULT '0',
  `p5` tinyint(1) NOT NULL DEFAULT '0',
  `p6` tinyint(1) NOT NULL DEFAULT '0',
  `mobrona` int(11) NOT NULL DEFAULT '0',
  `pobrona` int(11) NOT NULL DEFAULT '0',
  `mdam` int(11) NOT NULL DEFAULT '0',
  `pdam` int(11) NOT NULL DEFAULT '0',
  `odam` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`przedmiot`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_przedmioty
-- ----------------------------
INSERT INTO `endless_przedmioty` VALUES ('1', 'Mieso', '1.gif', '0', '0', '0', '0', '0', '5', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `endless_przedmioty` VALUES ('2', 'Miecz', '2.png', '0', '0', '0', '2', '2', '0', '1', '1', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `endless_przedmioty` VALUES ('3', 'Miecz Pomocniczy', '2.png', '0', '0', '0', '0', '0', '0', '2', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `endless_przedmioty` VALUES ('4', 'Helm', '22.png', '0', '1', '0', '0', '0', '0', '3', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `endless_przedmioty_gracze`
-- ----------------------------
DROP TABLE IF EXISTS `endless_przedmioty_gracze`;
CREATE TABLE `endless_przedmioty_gracze` (
  `gracz_id` int(11) NOT NULL,
  `przedmiot_id` int(11) NOT NULL,
  KEY `gracz_id` (`gracz_id`,`przedmiot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_przedmioty_gracze
-- ----------------------------

-- ----------------------------
-- Table structure for `endless_sklep`
-- ----------------------------
DROP TABLE IF EXISTS `endless_sklep`;
CREATE TABLE `endless_sklep` (
  `npc_id` int(11) NOT NULL,
  `id_przedmiot` int(11) NOT NULL,
  `cena` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL,
  `dodane` int(11) NOT NULL,
  KEY `npc_id` (`npc_id`),
  KEY `przedmiot_id` (`id_przedmiot`),
  KEY `dodane` (`dodane`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_sklep
-- ----------------------------
INSERT INTO `endless_sklep` VALUES ('1', '2', '50', '1', '0');
INSERT INTO `endless_sklep` VALUES ('1', '3', '50', '1', '0');
INSERT INTO `endless_sklep` VALUES ('1', '4', '50', '1', '0');

-- ----------------------------
-- Table structure for `endless_teleporty`
-- ----------------------------
DROP TABLE IF EXISTS `endless_teleporty`;
CREATE TABLE `endless_teleporty` (
  `teleport` int(11) NOT NULL AUTO_INCREMENT,
  `mapa_id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `cel_mapa_id` int(11) NOT NULL,
  `cel_x` int(11) NOT NULL,
  `cel_y` int(11) NOT NULL,
  PRIMARY KEY (`teleport`),
  KEY `mapa_id` (`mapa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_teleporty
-- ----------------------------

-- ----------------------------
-- Table structure for `endless_walki`
-- ----------------------------
DROP TABLE IF EXISTS `endless_walki`;
CREATE TABLE `endless_walki` (
  `gracz_id` int(11) NOT NULL,
  `potwor_id` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  KEY `gracz_id` (`gracz_id`),
  KEY `potwor_id` (`potwor_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of endless_walki
-- ----------------------------
